inline.NumInlined: 78
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0_@VP8LGetBackwardReferences:bb.a
  %i.os = icmp slt i32 %i.on, 7
  %or.cond3.i.3.i.i = and i1 %i.os, %i.or
  br i1 %or.cond3.i.3.i.i, label %bb.cl, label %VP8LDistanceToPlaneCode.exit.thread.3.i.i

bb.cl:                                            ; preds = %bb.ck
  %i.ot = shl i32 %i.on, 4
  %i.ou = add i32 %i.ot, %i.br
  br label %VP8LDistanceToPlaneCode.exit.3.i.i

bb.cm:                                            ; preds = %bb.cj
  %i.ov = shl nsw i32 %i.on, 4
  %i.ow = or disjoint i32 %i.ov, 8
  br label %VP8LDistanceToPlaneCode.exit.3.i.i

VP8LDistanceToPlaneCode.exit.3.i.i:               ; preds = %bb.cm, %bb.cl
  %.pn216.3.i.i = phi i32 [ %i.ow, %bb.cm ], [ %i.ou, %bb.cl ]
  %.pn215.in.3.i.i = sub i32 %.pn216.3.i.i, %.recomposed283
  %.pn215.3.i.i = sext i32 %.pn215.in.3.i.i to i64
  %.0.i.in.in.in.3.i.i = getelementptr inbounds i8, ptr @plane_to_code_lut, i64 %.pn215.3.i.i
  %.0.i.in.in.3.i.i = load i8, ptr %.0.i.in.in.in.3.i.i, align 1, !tbaa !7 ; 2 uses
  %i.ox = icmp ugt i8 %.0.i.in.in.3.i.i, 31
  br i1 %i.ox, label %VP8LDistanceToPlaneCode.exit.thread.3.i.i, label %bb.cn

bb.cn:                                            ; preds = %VP8LDistanceToPlaneCode.exit.3.i.i
  %i.oy = zext nneg i8 %.0.i.in.in.3.i.i to i64
  %i.oz = getelementptr [4 x i8], ptr %i.c, i64 %i.oy
  store i32 %i.ol, ptr %i.oz, align 4, !tbaa !3
  br label %VP8LDistanceToPlaneCode.exit.thread.3.i.i

VP8LDistanceToPlaneCode.exit.thread.3.i.i:        ; preds = %bb.cn, %VP8LDistanceToPlaneCode.exit.3.i.i, %bb.ck, %.preheader222.3.i.i
  %i.pa = add nsw i32 %.0171230.3.i.i, 1          ; 2 uses
  %exitcond.3.not.i.i = icmp eq i32 %i.pa, 7
  br i1 %exitcond.3.not.i.i, label %.preheader222.4.i.i, label %.preheader222.3.i.i, !llvm.loop !56

.preheader222.4.i.i:                              ; preds = %VP8LDistanceToPlaneCode.exit.thread.3.i.i, %VP8LDistanceToPlaneCode.exit.thread.4.i.i
  %.0171230.4.i.i = phi i32 [ %i.pq, %VP8LDistanceToPlaneCode.exit.thread.4.i.i ], [ -6, %VP8LDistanceToPlaneCode.exit.thread.3.i.i ] ; 2 uses
  %i.pb = add nsw i32 %.0171230.4.i.i, %i.bu      ; 4 uses
  %i.pc = icmp slt i32 %i.pb, 1
  br i1 %i.pc, label %VP8LDistanceToPlaneCode.exit.thread.4.i.i, label %bb.co

bb.co:                                            ; preds = %.preheader222.4.i.i
  %i.pd = sdiv i32 %i.pb, %0                      ; 5 uses
  %i.pe = mul nsw i32 %i.pd, %0                   ; 0 uses
  %.recomposed284 = srem i32 %i.pb, %0            ; 3 uses
  %i.pf = icmp slt i32 %.recomposed284, 9
  %i.pg = icmp slt i32 %i.pd, 8
  %or.cond.i.4.i.i = and i1 %i.pg, %i.pf
  br i1 %or.cond.i.4.i.i, label %bb.cr, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.ph = icmp sgt i32 %.recomposed284, %i.bq
  %i.pi = icmp slt i32 %i.pd, 7
  %or.cond3.i.4.i.i = and i1 %i.pi, %i.ph
  br i1 %or.cond3.i.4.i.i, label %bb.cq, label %VP8LDistanceToPlaneCode.exit.thread.4.i.i

bb.cq:                                            ; preds = %bb.cp
  %i.pj = shl i32 %i.pd, 4
  %i.pk = add i32 %i.pj, %i.br
  br label %VP8LDistanceToPlaneCode.exit.4.i.i

bb.cr:                                            ; preds = %bb.co
  %i.pl = shl nsw i32 %i.pd, 4
  %i.pm = or disjoint i32 %i.pl, 8
  br label %VP8LDistanceToPlaneCode.exit.4.i.i

VP8LDistanceToPlaneCode.exit.4.i.i:               ; preds = %bb.cr, %bb.cq
  %.pn216.4.i.i = phi i32 [ %i.pm, %bb.cr ], [ %i.pk, %bb.cq ]
  %.pn215.in.4.i.i = sub i32 %.pn216.4.i.i, %.recomposed284
  %.pn215.4.i.i = sext i32 %.pn215.in.4.i.i to i64
  %.0.i.in.in.in.4.i.i = getelementptr inbounds i8, ptr @plane_to_code_lut, i64 %.pn215.4.i.i
  %.0.i.in.in.4.i.i = load i8, ptr %.0.i.in.in.in.4.i.i, align 1, !tbaa !7 ; 2 uses
  %i.pn = icmp ugt i8 %.0.i.in.in.4.i.i, 31
  br i1 %i.pn, label %VP8LDistanceToPlaneCode.exit.thread.4.i.i, label %bb.cs

bb.cs:                                            ; preds = %VP8LDistanceToPlaneCode.exit.4.i.i
  %i.po = zext nneg i8 %.0.i.in.in.4.i.i to i64
  %i.pp = getelementptr [4 x i8], ptr %i.c, i64 %i.po
  store i32 %i.pb, ptr %i.pp, align 4, !tbaa !3
  br label %VP8LDistanceToPlaneCode.exit.thread.4.i.i

VP8LDistanceToPlaneCode.exit.thread.4.i.i:        ; preds = %bb.cs, %VP8LDistanceToPlaneCode.exit.4.i.i, %bb.cp, %.preheader222.4.i.i
  %i.pq = add nsw i32 %.0171230.4.i.i, 1          ; 2 uses
  %exitcond.4.not.i.i = icmp eq i32 %i.pq, 7
  br i1 %exitcond.4.not.i.i, label %.preheader222.5.i.i, label %.preheader222.4.i.i, !llvm.loop !56

.preheader222.5.i.i:                              ; preds = %VP8LDistanceToPlaneCode.exit.thread.4.i.i, %VP8LDistanceToPlaneCode.exit.thread.5.i.i
  %.0171230.5.i.i = phi i32 [ %i.qg, %VP8LDistanceToPlaneCode.exit.thread.5.i.i ], [ -6, %VP8LDistanceToPlaneCode.exit.thread.4.i.i ] ; 2 uses
  %i.pr = add nsw i32 %.0171230.5.i.i, %i.bv      ; 4 uses
  %i.ps = icmp slt i32 %i.pr, 1
  br i1 %i.ps, label %VP8LDistanceToPlaneCode.exit.thread.5.i.i, label %bb.ct

bb.ct:                                            ; preds = %.preheader222.5.i.i
  %i.pt = sdiv i32 %i.pr, %0                      ; 5 uses
  %i.pu = mul nsw i32 %i.pt, %0                   ; 0 uses
  %.recomposed285 = srem i32 %i.pr, %0            ; 3 uses
  %i.pv = icmp slt i32 %.recomposed285, 9
  %i.pw = icmp slt i32 %i.pt, 8
  %or.cond.i.5.i.i = and i1 %i.pw, %i.pv
  br i1 %or.cond.i.5.i.i, label %bb.cw, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.px = icmp sgt i32 %.recomposed285, %i.bq
  %i.py = icmp slt i32 %i.pt, 7
  %or.cond3.i.5.i.i = and i1 %i.py, %i.px
  br i1 %or.cond3.i.5.i.i, label %bb.cv, label %VP8LDistanceToPlaneCode.exit.thread.5.i.i

bb.cv:                                            ; preds = %bb.cu
  %i.pz = shl i32 %i.pt, 4
  %i.qa = add i32 %i.pz, %i.br
  br label %VP8LDistanceToPlaneCode.exit.5.i.i

bb.cw:                                            ; preds = %bb.ct
  %i.qb = shl nsw i32 %i.pt, 4
  %i.qc = or disjoint i32 %i.qb, 8
  br label %VP8LDistanceToPlaneCode.exit.5.i.i

VP8LDistanceToPlaneCode.exit.5.i.i:               ; preds = %bb.cw, %bb.cv
  %.pn216.5.i.i = phi i32 [ %i.qc, %bb.cw ], [ %i.qa, %bb.cv ]
  %.pn215.in.5.i.i = sub i32 %.pn216.5.i.i, %.recomposed285
  %.pn215.5.i.i = sext i32 %.pn215.in.5.i.i to i64
  %.0.i.in.in.in.5.i.i = getelementptr inbounds i8, ptr @plane_to_code_lut, i64 %.pn215.5.i.i
  %.0.i.in.in.5.i.i = load i8, ptr %.0.i.in.in.in.5.i.i, align 1, !tbaa !7 ; 2 uses
  %i.qd = icmp ugt i8 %.0.i.in.in.5.i.i, 31
  br i1 %i.qd, label %VP8LDistanceToPlaneCode.exit.thread.5.i.i, label %bb.cx

bb.cx:                                            ; preds = %VP8LDistanceToPlaneCode.exit.5.i.i
  %i.qe = zext nneg i8 %.0.i.in.in.5.i.i to i64
  %i.qf = getelementptr [4 x i8], ptr %i.c, i64 %i.qe
  store i32 %i.pr, ptr %i.qf, align 4, !tbaa !3
  br label %VP8LDistanceToPlaneCode.exit.thread.5.i.i

VP8LDistanceToPlaneCode.exit.thread.5.i.i:        ; preds = %bb.cx, %VP8LDistanceToPlaneCode.exit.5.i.i, %bb.cu, %.preheader222.5.i.i
  %i.qg = add nsw i32 %.0171230.5.i.i, 1          ; 2 uses
  %exitcond.5.not.i.i = icmp eq i32 %i.qg, 7
  br i1 %exitcond.5.not.i.i, label %.preheader222.6.i.i, label %.preheader222.5.i.i, !llvm.loop !56

.preheader222.6.i.i:                              ; preds = %VP8LDistanceToPlaneCode.exit.thread.5.i.i, %VP8LDistanceToPlaneCode.exit.thread.6.i.i
  %.0171230.6.i.i = phi i32 [ %i.qw, %VP8LDistanceToPlaneCode.exit.thread.6.i.i ], [ -6, %VP8LDistanceToPlaneCode.exit.thread.5.i.i ] ; 2 uses
  %i.qh = add nsw i32 %.0171230.6.i.i, %i.bw      ; 4 uses
  %i.qi = icmp slt i32 %i.qh, 1
  br i1 %i.qi, label %VP8LDistanceToPlaneCode.exit.thread.6.i.i, label %bb.cy

bb.cy:                                            ; preds = %.preheader222.6.i.i
  %i.qj = sdiv i32 %i.qh, %0                      ; 5 uses
  %i.qk = mul nsw i32 %i.qj, %0                   ; 0 uses
  %.recomposed286 = srem i32 %i.qh, %0            ; 3 uses
  %i.ql = icmp slt i32 %.recomposed286, 9
  %i.qm = icmp slt i32 %i.qj, 8
  %or.cond.i.6.i.i = and i1 %i.qm, %i.ql
  br i1 %or.cond.i.6.i.i, label %bb.db, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.qn = icmp sgt i32 %.recomposed286, %i.bq
  %i.qo = icmp slt i32 %i.qj, 7
  %or.cond3.i.6.i.i = and i1 %i.qo, %i.qn
  br i1 %or.cond3.i.6.i.i, label %bb.da, label %VP8LDistanceToPlaneCode.exit.thread.6.i.i

bb.da:                                            ; preds = %bb.cz
  %i.qp = shl i32 %i.qj, 4
  %i.qq = add i32 %i.qp, %i.br
  br label %VP8LDistanceToPlaneCode.exit.6.i.i

bb.db:                                            ; preds = %bb.cy
  %i.qr = shl nsw i32 %i.qj, 4
  %i.qs = or disjoint i32 %i.qr, 8
  br label %VP8LDistanceToPlaneCode.exit.6.i.i

VP8LDistanceToPlaneCode.exit.6.i.i:               ; preds = %bb.db, %bb.da
  %.pn216.6.i.i = phi i32 [ %i.qs, %bb.db ], [ %i.qq, %bb.da ]
  %.pn215.in.6.i.i = sub i32 %.pn216.6.i.i, %.recomposed286
  %.pn215.6.i.i = sext i32 %.pn215.in.6.i.i to i64
  %.0.i.in.in.in.6.i.i = getelementptr inbounds i8, ptr @plane_to_code_lut, i64 %.pn215.6.i.i
  %.0.i.in.in.6.i.i = load i8, ptr %.0.i.in.in.in.6.i.i, align 1, !tbaa !7 ; 2 uses
  %i.qt = icmp ugt i8 %.0.i.in.in.6.i.i, 31
  br i1 %i.qt, label %VP8LDistanceToPlaneCode.exit.thread.6.i.i, label %bb.dc

bb.dc:                                            ; preds = %VP8LDistanceToPlaneCode.exit.6.i.i
  %i.qu = zext nneg i8 %.0.i.in.in.6.i.i to i64
  %i.qv = getelementptr [4 x i8], ptr %i.c, i64 %i.qu
  store i32 %i.qh, ptr %i.qv, align 4, !tbaa !3
  br label %VP8LDistanceToPlaneCode.exit.thread.6.i.i

VP8LDistanceToPlaneCode.exit.thread.6.i.i:        ; preds = %bb.dc, %VP8LDistanceToPlaneCode.exit.6.i.i, %bb.cz, %.preheader222.6.i.i
  %i.qw = add nsw i32 %.0171230.6.i.i, 1          ; 2 uses
  %exitcond.6.not.i.i = icmp eq i32 %i.qw, 7
  br i1 %exitcond.6.not.i.i, label %.preheader221.preheader.i.i, label %.preheader222.6.i.i, !llvm.loop !56

.preheader221.preheader.i.i:                      ; preds = %VP8LDistanceToPlaneCode.exit.thread.6.i.i
  %i.qx = load i32, ptr %i.c, align 16, !tbaa !3
  %i.qy = icmp ne i32 %i.qx, 0                    ; 3 uses
  %spec.select.i.i = zext i1 %i.qy to i32
  %i.qz = load i32, ptr %i.bx, align 4, !tbaa !3  ; 2 uses
  %i.ra = icmp eq i32 %i.qz, 0
  br i1 %i.ra, label %.preheader221.2.i.i, label %bb.dg

.preheader219.us.preheader.i.i:                   ; preds = %.preheader220.i.i, %.preheader220.thread.i.i
  %.1151.31443.i.i = phi i32 [ %i.wy, %.preheader220.thread.i.i ], [ %.1151.30.i.i, %.preheader220.i.i ] ; 2 uses
  %i.rb = zext nneg i32 %.1151.31443.i.i to i64   ; 2 uses
  br label %.preheader219.us.i.i

.preheader219.us.i.i:                             ; preds = %bb.df, %.preheader219.us.preheader.i.i
  %indvars.iv340.i.i = phi i64 [ 0, %.preheader219.us.preheader.i.i ], [ %indvars.iv.next338.i.i.a, %bb.df ] ; 2 uses
  %.0166236.us.i.i = phi i32 [ 0, %.preheader219.us.preheader.i.i ], [ %.1167.us.i.i, %bb.df ] ; 3 uses
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv340.i.i
  %i.rd = load i32, ptr %i.rc, align 4, !tbaa !3  ; 2 uses
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dd, %.preheader219.us.i.i
  %indvars.iv337.i.i = phi i64 [ 0, %.preheader219.us.i.i ], [ %indvars.iv.next338.i.i, %bb.dd ] ; 2 uses
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv337.i.i
  %19 = load i32, ptr %i.re, align 4, !tbaa !3
  %i.rf = add nsw i32 %19, 1
  %20 = icmp ne i32 %i.rd, %i.rf                  ; 2 uses
  %indvars.iv.next338.i.i = add nuw nsw i64 %indvars.iv337.i.i, 1 ; 2 uses
  %21 = icmp samesign ult i64 %indvars.iv.next338.i.i, %i.rb
  %or.cond.us.i.i = select i1 %21, i1 %20, i1 false
  br i1 %or.cond.us.i.i, label %bb.dd, label %..critedge_crit_edge.us.i.i, !llvm.loop !57

bb.de:                                            ; preds = %..critedge_crit_edge.us.i.i
  %22 = sext i32 %.0166236.us.i.i to i64
  %23 = getelementptr inbounds [4 x i8], ptr %i.d, i64 %22
  store i32 %i.rd, ptr %23, align 4, !tbaa !3
  %24 = add nsw i32 %.0166236.us.i.i, 1
  br label %bb.df

bb.df:                                            ; preds = %..critedge_crit_edge.us.i.i, %bb.de
  %.1167.us.i.i = phi i32 [ %.0166236.us.i.i, %..critedge_crit_edge.us.i.i ], [ %24, %bb.de ] ; 2 uses
  %indvars.iv.next338.i.i.a = add nuw nsw i64 %indvars.iv340.i.i, 1 ; 2 uses
  %exitcond343.not.i.i = icmp eq i64 %indvars.iv.next338.i.i.a, %i.rb
  br i1 %exitcond343.not.i.i, label %._crit_edge.i.i, label %.preheader219.us.i.i, !llvm.loop !58

..critedge_crit_edge.us.i.i:                      ; preds = %bb.dd
  br i1 %20, label %bb.de, label %bb.df

bb.dg:                                            ; preds = %.preheader221.preheader.i.i
  %i.rg = select i1 %i.qy, i32 2, i32 1
  %.sroa.sel.i = select i1 %i.qy, ptr %i.bx, ptr %i.c
  store i32 %i.qz, ptr %.sroa.sel.i, align 4, !tbaa !3
  br label %.preheader221.2.i.i

.preheader221.2.i.i:                              ; preds = %bb.dg, %.preheader221.preheader.i.i
  %.1151.1.i.i = phi i32 [ %spec.select.i.i, %.preheader221.preheader.i.i ], [ %i.rg, %bb.dg ] ; 3 uses
  %i.rh = load i32, ptr %i.by, align 8, !tbaa !3  ; 2 uses
  %i.ri = icmp eq i32 %i.rh, 0
  br i1 %i.ri, label %.preheader221.3.i.i, label %bb.dh

bb.dh:                                            ; preds = %.preheader221.2.i.i
  %i.rj = add nuw nsw i32 %.1151.1.i.i, 1
  %i.rk = zext nneg i32 %.1151.1.i.i to i64
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.rk
  store i32 %i.rh, ptr %i.rl, align 4, !tbaa !3
  br label %.preheader221.3.i.i

.preheader221.3.i.i:                              ; preds = %bb.dh, %.preheader221.2.i.i
  %.1151.2.i.i = phi i32 [ %.1151.1.i.i, %.preheader221.2.i.i ], [ %i.rj, %bb.dh ] ; 3 uses
  %i.rm = load i32, ptr %i.bz, align 4, !tbaa !3  ; 2 uses
  %i.rn = icmp eq i32 %i.rm, 0
  br i1 %i.rn, label %.preheader221.4.i.i, label %bb.di

bb.di:                                            ; preds = %.preheader221.3.i.i
  %i.ro = add nuw nsw i32 %.1151.2.i.i, 1
  %i.rp = zext nneg i32 %.1151.2.i.i to i64
  %i.rq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.rp
  store i32 %i.rm, ptr %i.rq, align 4, !tbaa !3
  br label %.preheader221.4.i.i

.preheader221.4.i.i:                              ; preds = %bb.di, %.preheader221.3.i.i
  %.1151.3.i.i = phi i32 [ %.1151.2.i.i, %.preheader221.3.i.i ], [ %i.ro, %bb.di ] ; 3 uses
  %i.rr = load i32, ptr %i.ca, align 16, !tbaa !3 ; 2 uses
  %i.rs = icmp eq i32 %i.rr, 0
  br i1 %i.rs, label %.preheader221.5.i.i, label %bb.dj

bb.dj:                                            ; preds = %.preheader221.4.i.i
  %i.rt = add nuw nsw i32 %.1151.3.i.i, 1
  %i.ru = zext nneg i32 %.1151.3.i.i to i64
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ru
  store i32 %i.rr, ptr %i.rv, align 4, !tbaa !3
  br label %.preheader221.5.i.i

.preheader221.5.i.i:                              ; preds = %bb.dj, %.preheader221.4.i.i
  %.1151.4.i.i = phi i32 [ %.1151.3.i.i, %.preheader221.4.i.i ], [ %i.rt, %bb.dj ] ; 3 uses
  %i.rw = load i32, ptr %i.cb, align 4, !tbaa !3  ; 2 uses
  %i.rx = icmp eq i32 %i.rw, 0
  br i1 %i.rx, label %.preheader221.6.i.i, label %bb.dk

bb.dk:                                            ; preds = %.preheader221.5.i.i
  %i.ry = add nuw nsw i32 %.1151.4.i.i, 1
  %i.rz = zext nneg i32 %.1151.4.i.i to i64
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.rz
  store i32 %i.rw, ptr %i.sa, align 4, !tbaa !3
  br label %.preheader221.6.i.i

.preheader221.6.i.i:                              ; preds = %bb.dk, %.preheader221.5.i.i
  %.1151.5.i.i = phi i32 [ %.1151.4.i.i, %.preheader221.5.i.i ], [ %i.ry, %bb.dk ] ; 3 uses
  %i.sb = load i32, ptr %i.cc, align 8, !tbaa !3  ; 2 uses
  %i.sc = icmp eq i32 %i.sb, 0
  br i1 %i.sc, label %.preheader221.7.i.i, label %bb.dl

bb.dl:                                            ; preds = %.preheader221.6.i.i
  %i.sd = add nuw nsw i32 %.1151.5.i.i, 1
  %i.se = zext nneg i32 %.1151.5.i.i to i64
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.se
  store i32 %i.sb, ptr %i.sf, align 4, !tbaa !3
  br label %.preheader221.7.i.i

.preheader221.7.i.i:                              ; preds = %bb.dl, %.preheader221.6.i.i
  %.1151.6.i.i = phi i32 [ %.1151.5.i.i, %.preheader221.6.i.i ], [ %i.sd, %bb.dl ] ; 3 uses
  %i.sg = load i32, ptr %i.cd, align 4, !tbaa !3  ; 2 uses
  %i.sh = icmp eq i32 %i.sg, 0
  br i1 %i.sh, label %.preheader221.8.i.i, label %bb.dm

bb.dm:                                            ; preds = %.preheader221.7.i.i
  %i.si = add nuw nsw i32 %.1151.6.i.i, 1
  %i.sj = zext nneg i32 %.1151.6.i.i to i64
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.sj
  store i32 %i.sg, ptr %i.sk, align 4, !tbaa !3
  br label %.preheader221.8.i.i

.preheader221.8.i.i:                              ; preds = %bb.dm, %.preheader221.7.i.i
  %.1151.7.i.i = phi i32 [ %.1151.6.i.i, %.preheader221.7.i.i ], [ %i.si, %bb.dm ] ; 3 uses
  %i.sl = load i32, ptr %i.ce, align 16, !tbaa !3 ; 2 uses
  %i.sm = icmp eq i32 %i.sl, 0
  br i1 %i.sm, label %.preheader221.9.i.i, label %bb.dn

bb.dn:                                            ; preds = %.preheader221.8.i.i
  %i.sn = add nuw nsw i32 %.1151.7.i.i, 1
  %i.so = zext nneg i32 %.1151.7.i.i to i64
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.so
  store i32 %i.sl, ptr %i.sp, align 4, !tbaa !3
  br label %.preheader221.9.i.i

.preheader221.9.i.i:                              ; preds = %bb.dn, %.preheader221.8.i.i
  %.1151.8.i.i = phi i32 [ %.1151.7.i.i, %.preheader221.8.i.i ], [ %i.sn, %bb.dn ] ; 3 uses
  %i.sq = load i32, ptr %i.cf, align 4, !tbaa !3  ; 2 uses
  %i.sr = icmp eq i32 %i.sq, 0
  br i1 %i.sr, label %.preheader221.10.i.i, label %bb.do

bb.do:                                            ; preds = %.preheader221.9.i.i
  %i.ss = add nuw nsw i32 %.1151.8.i.i, 1
  %i.st = zext nneg i32 %.1151.8.i.i to i64
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.st
  store i32 %i.sq, ptr %i.su, align 4, !tbaa !3
  br label %.preheader221.10.i.i

.preheader221.10.i.i:                             ; preds = %bb.do, %.preheader221.9.i.i
  %.1151.9.i.i = phi i32 [ %.1151.8.i.i, %.preheader221.9.i.i ], [ %i.ss, %bb.do ] ; 3 uses
  %i.sv = load i32, ptr %i.cg, align 8, !tbaa !3  ; 2 uses
  %i.sw = icmp eq i32 %i.sv, 0
  br i1 %i.sw, label %.preheader221.11.i.i, label %bb.dp

bb.dp:                                            ; preds = %.preheader221.10.i.i
  %i.sx = add nuw nsw i32 %.1151.9.i.i, 1
  %i.sy = zext nneg i32 %.1151.9.i.i to i64
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.sy
  store i32 %i.sv, ptr %i.sz, align 4, !tbaa !3
  br label %.preheader221.11.i.i

.preheader221.11.i.i:                             ; preds = %bb.dp, %.preheader221.10.i.i
  %.1151.10.i.i = phi i32 [ %.1151.9.i.i, %.preheader221.10.i.i ], [ %i.sx, %bb.dp ] ; 3 uses
  %i.ta = load i32, ptr %i.ch, align 4, !tbaa !3  ; 2 uses
  %i.tb = icmp eq i32 %i.ta, 0
  br i1 %i.tb, label %.preheader221.12.i.i, label %bb.dq

bb.dq:                                            ; preds = %.preheader221.11.i.i
  %i.tc = add nuw nsw i32 %.1151.10.i.i, 1
  %i.td = zext nneg i32 %.1151.10.i.i to i64
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.td
  store i32 %i.ta, ptr %i.te, align 4, !tbaa !3
  br label %.preheader221.12.i.i

.preheader221.12.i.i:                             ; preds = %bb.dq, %.preheader221.11.i.i
  %.1151.11.i.i = phi i32 [ %.1151.10.i.i, %.preheader221.11.i.i ], [ %i.tc, %bb.dq ] ; 3 uses
  %i.tf = load i32, ptr %i.ci, align 16, !tbaa !3 ; 2 uses
  %i.tg = icmp eq i32 %i.tf, 0
  br i1 %i.tg, label %.preheader221.13.i.i, label %bb.dr

bb.dr:                                            ; preds = %.preheader221.12.i.i
  %i.th = add nuw nsw i32 %.1151.11.i.i, 1
  %i.ti = zext nneg i32 %.1151.11.i.i to i64
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ti
  store i32 %i.tf, ptr %i.tj, align 4, !tbaa !3
  br label %.preheader221.13.i.i

.preheader221.13.i.i:                             ; preds = %bb.dr, %.preheader221.12.i.i
  %.1151.12.i.i = phi i32 [ %.1151.11.i.i, %.preheader221.12.i.i ], [ %i.th, %bb.dr ] ; 3 uses
  %i.tk = load i32, ptr %i.cj, align 4, !tbaa !3  ; 2 uses
  %i.tl = icmp eq i32 %i.tk, 0
  br i1 %i.tl, label %.preheader221.14.i.i, label %bb.ds

bb.ds:                                            ; preds = %.preheader221.13.i.i
  %i.tm = add nuw nsw i32 %.1151.12.i.i, 1
  %i.tn = zext nneg i32 %.1151.12.i.i to i64
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.tn
  store i32 %i.tk, ptr %i.to, align 4, !tbaa !3
  br label %.preheader221.14.i.i

.preheader221.14.i.i:                             ; preds = %bb.ds, %.preheader221.13.i.i
  %.1151.13.i.i = phi i32 [ %.1151.12.i.i, %.preheader221.13.i.i ], [ %i.tm, %bb.ds ] ; 3 uses
  %i.tp = load i32, ptr %i.ck, align 8, !tbaa !3  ; 2 uses
  %i.tq = icmp eq i32 %i.tp, 0
  br i1 %i.tq, label %.preheader221.15.i.i, label %bb.dt

bb.dt:                                            ; preds = %.preheader221.14.i.i
  %i.tr = add nuw nsw i32 %.1151.13.i.i, 1
  %i.ts = zext nneg i32 %.1151.13.i.i to i64
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ts
  store i32 %i.tp, ptr %i.tt, align 4, !tbaa !3
  br label %.preheader221.15.i.i

.preheader221.15.i.i:                             ; preds = %bb.dt, %.preheader221.14.i.i
  %.1151.14.i.i = phi i32 [ %.1151.13.i.i, %.preheader221.14.i.i ], [ %i.tr, %bb.dt ] ; 3 uses
  %i.tu = load i32, ptr %i.cl, align 4, !tbaa !3  ; 2 uses
  %i.tv = icmp eq i32 %i.tu, 0
  br i1 %i.tv, label %.preheader221.16.i.i, label %bb.du

bb.du:                                            ; preds = %.preheader221.15.i.i
  %i.tw = add nuw nsw i32 %.1151.14.i.i, 1
  %i.tx = zext nneg i32 %.1151.14.i.i to i64
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.tx
  store i32 %i.tu, ptr %i.ty, align 4, !tbaa !3
  br label %.preheader221.16.i.i

.preheader221.16.i.i:                             ; preds = %bb.du, %.preheader221.15.i.i
  %.1151.15.i.i = phi i32 [ %.1151.14.i.i, %.preheader221.15.i.i ], [ %i.tw, %bb.du ] ; 3 uses
  %i.tz = load i32, ptr %i.cm, align 16, !tbaa !3 ; 2 uses
  %i.ua = icmp eq i32 %i.tz, 0
  br i1 %i.ua, label %.preheader221.17.i.i, label %bb.dv

bb.dv:                                            ; preds = %.preheader221.16.i.i
  %i.ub = add nuw nsw i32 %.1151.15.i.i, 1
  %i.uc = zext nneg i32 %.1151.15.i.i to i64
  %i.ud = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.uc
  store i32 %i.tz, ptr %i.ud, align 4, !tbaa !3
end_hunk_0
begin_hunk_1_@VP8LGetBackwardReferences:bb.a

.preheader221.17.i.i:                             ; preds = %bb.dv, %.preheader221.16.i.i
  %.1151.16.i.i = phi i32 [ %.1151.15.i.i, %.preheader221.16.i.i ], [ %i.ub, %bb.dv ] ; 3 uses
  %i.ue = load i32, ptr %i.cn, align 4, !tbaa !3  ; 2 uses
  %i.uf = icmp eq i32 %i.ue, 0
  br i1 %i.uf, label %.preheader221.18.i.i, label %bb.dw

bb.dw:                                            ; preds = %.preheader221.17.i.i
  %i.ug = add nuw nsw i32 %.1151.16.i.i, 1
  %i.uh = zext nneg i32 %.1151.16.i.i to i64
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.uh
  store i32 %i.ue, ptr %i.ui, align 4, !tbaa !3
  br label %.preheader221.18.i.i

.preheader221.18.i.i:                             ; preds = %bb.dw, %.preheader221.17.i.i
  %.1151.17.i.i = phi i32 [ %.1151.16.i.i, %.preheader221.17.i.i ], [ %i.ug, %bb.dw ] ; 3 uses
  %i.uj = load i32, ptr %i.co, align 8, !tbaa !3  ; 2 uses
  %i.uk = icmp eq i32 %i.uj, 0
  br i1 %i.uk, label %.preheader221.19.i.i, label %bb.dx

bb.dx:                                            ; preds = %.preheader221.18.i.i
  %i.ul = add nuw nsw i32 %.1151.17.i.i, 1
  %i.um = zext nneg i32 %.1151.17.i.i to i64
  %i.un = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.um
  store i32 %i.uj, ptr %i.un, align 4, !tbaa !3
  br label %.preheader221.19.i.i

.preheader221.19.i.i:                             ; preds = %bb.dx, %.preheader221.18.i.i
  %.1151.18.i.i = phi i32 [ %.1151.17.i.i, %.preheader221.18.i.i ], [ %i.ul, %bb.dx ] ; 3 uses
  %i.uo = load i32, ptr %i.cp, align 4, !tbaa !3  ; 2 uses
  %i.up = icmp eq i32 %i.uo, 0
  br i1 %i.up, label %.preheader221.20.i.i, label %bb.dy

bb.dy:                                            ; preds = %.preheader221.19.i.i
  %i.uq = add nuw nsw i32 %.1151.18.i.i, 1
  %i.ur = zext nneg i32 %.1151.18.i.i to i64
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ur
  store i32 %i.uo, ptr %i.us, align 4, !tbaa !3
  br label %.preheader221.20.i.i

.preheader221.20.i.i:                             ; preds = %bb.dy, %.preheader221.19.i.i
  %.1151.19.i.i = phi i32 [ %.1151.18.i.i, %.preheader221.19.i.i ], [ %i.uq, %bb.dy ] ; 3 uses
  %i.ut = load i32, ptr %i.cq, align 16, !tbaa !3 ; 2 uses
  %i.uu = icmp eq i32 %i.ut, 0
  br i1 %i.uu, label %.preheader221.21.i.i, label %bb.dz

bb.dz:                                            ; preds = %.preheader221.20.i.i
  %i.uv = add nuw nsw i32 %.1151.19.i.i, 1
  %i.uw = zext nneg i32 %.1151.19.i.i to i64
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.uw
  store i32 %i.ut, ptr %i.ux, align 4, !tbaa !3
  br label %.preheader221.21.i.i

.preheader221.21.i.i:                             ; preds = %bb.dz, %.preheader221.20.i.i
  %.1151.20.i.i = phi i32 [ %.1151.19.i.i, %.preheader221.20.i.i ], [ %i.uv, %bb.dz ] ; 3 uses
  %i.uy = load i32, ptr %i.cr, align 4, !tbaa !3  ; 2 uses
  %i.uz = icmp eq i32 %i.uy, 0
  br i1 %i.uz, label %.preheader221.22.i.i, label %bb.ea

bb.ea:                                            ; preds = %.preheader221.21.i.i
  %i.va = add nuw nsw i32 %.1151.20.i.i, 1
  %i.vb = zext nneg i32 %.1151.20.i.i to i64
  %i.vc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.vb
  store i32 %i.uy, ptr %i.vc, align 4, !tbaa !3
  br label %.preheader221.22.i.i

.preheader221.22.i.i:                             ; preds = %bb.ea, %.preheader221.21.i.i
  %.1151.21.i.i = phi i32 [ %.1151.20.i.i, %.preheader221.21.i.i ], [ %i.va, %bb.ea ] ; 3 uses
  %i.vd = load i32, ptr %i.cs, align 8, !tbaa !3  ; 2 uses
  %i.ve = icmp eq i32 %i.vd, 0
  br i1 %i.ve, label %.preheader221.23.i.i, label %bb.eb

bb.eb:                                            ; preds = %.preheader221.22.i.i
  %i.vf = add nuw nsw i32 %.1151.21.i.i, 1
  %i.vg = zext nneg i32 %.1151.21.i.i to i64
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.vg
  store i32 %i.vd, ptr %i.vh, align 4, !tbaa !3
  br label %.preheader221.23.i.i

.preheader221.23.i.i:                             ; preds = %bb.eb, %.preheader221.22.i.i
  %.1151.22.i.i = phi i32 [ %.1151.21.i.i, %.preheader221.22.i.i ], [ %i.vf, %bb.eb ] ; 3 uses
  %i.vi = load i32, ptr %i.ct, align 4, !tbaa !3  ; 2 uses
  %i.vj = icmp eq i32 %i.vi, 0
  br i1 %i.vj, label %.preheader221.24.i.i, label %bb.ec

bb.ec:                                            ; preds = %.preheader221.23.i.i
  %i.vk = add nuw nsw i32 %.1151.22.i.i, 1
  %i.vl = zext nneg i32 %.1151.22.i.i to i64
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.vl
  store i32 %i.vi, ptr %i.vm, align 4, !tbaa !3
  br label %.preheader221.24.i.i

.preheader221.24.i.i:                             ; preds = %bb.ec, %.preheader221.23.i.i
  %.1151.23.i.i = phi i32 [ %.1151.22.i.i, %.preheader221.23.i.i ], [ %i.vk, %bb.ec ] ; 3 uses
  %i.vn = load i32, ptr %i.cu, align 16, !tbaa !3 ; 2 uses
  %i.vo = icmp eq i32 %i.vn, 0
  br i1 %i.vo, label %.preheader221.25.i.i, label %bb.ed

bb.ed:                                            ; preds = %.preheader221.24.i.i
  %i.vp = add nuw nsw i32 %.1151.23.i.i, 1
  %i.vq = zext nneg i32 %.1151.23.i.i to i64
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.vq
  store i32 %i.vn, ptr %i.vr, align 4, !tbaa !3
  br label %.preheader221.25.i.i

.preheader221.25.i.i:                             ; preds = %bb.ed, %.preheader221.24.i.i
  %.1151.24.i.i = phi i32 [ %.1151.23.i.i, %.preheader221.24.i.i ], [ %i.vp, %bb.ed ] ; 3 uses
  %i.vs = load i32, ptr %i.cv, align 4, !tbaa !3  ; 2 uses
  %i.vt = icmp eq i32 %i.vs, 0
  br i1 %i.vt, label %.preheader221.26.i.i, label %bb.ee

bb.ee:                                            ; preds = %.preheader221.25.i.i
  %i.vu = add nuw nsw i32 %.1151.24.i.i, 1
  %i.vv = zext nneg i32 %.1151.24.i.i to i64
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.vv
  store i32 %i.vs, ptr %i.vw, align 4, !tbaa !3
  br label %.preheader221.26.i.i

.preheader221.26.i.i:                             ; preds = %bb.ee, %.preheader221.25.i.i
  %.1151.25.i.i = phi i32 [ %.1151.24.i.i, %.preheader221.25.i.i ], [ %i.vu, %bb.ee ] ; 3 uses
  %i.vx = load i32, ptr %i.cw, align 8, !tbaa !3  ; 2 uses
  %i.vy = icmp eq i32 %i.vx, 0
  br i1 %i.vy, label %.preheader221.27.i.i, label %bb.ef

bb.ef:                                            ; preds = %.preheader221.26.i.i
  %i.vz = add nuw nsw i32 %.1151.25.i.i, 1
  %i.wa = zext nneg i32 %.1151.25.i.i to i64
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.wa
  store i32 %i.vx, ptr %i.wb, align 4, !tbaa !3
  br label %.preheader221.27.i.i

.preheader221.27.i.i:                             ; preds = %bb.ef, %.preheader221.26.i.i
  %.1151.26.i.i = phi i32 [ %.1151.25.i.i, %.preheader221.26.i.i ], [ %i.vz, %bb.ef ] ; 3 uses
  %i.wc = load i32, ptr %i.cx, align 4, !tbaa !3  ; 2 uses
  %i.wd = icmp eq i32 %i.wc, 0
  br i1 %i.wd, label %.preheader221.28.i.i, label %bb.eg

bb.eg:                                            ; preds = %.preheader221.27.i.i
  %i.we = add nuw nsw i32 %.1151.26.i.i, 1
  %i.wf = zext nneg i32 %.1151.26.i.i to i64
  %i.wg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.wf
  store i32 %i.wc, ptr %i.wg, align 4, !tbaa !3
  br label %.preheader221.28.i.i

.preheader221.28.i.i:                             ; preds = %bb.eg, %.preheader221.27.i.i
  %.1151.27.i.i = phi i32 [ %.1151.26.i.i, %.preheader221.27.i.i ], [ %i.we, %bb.eg ] ; 3 uses
  %i.wh = load i32, ptr %i.cy, align 16, !tbaa !3 ; 2 uses
  %i.wi = icmp eq i32 %i.wh, 0
  br i1 %i.wi, label %.preheader221.29.i.i, label %bb.eh

bb.eh:                                            ; preds = %.preheader221.28.i.i
  %i.wj = add nuw nsw i32 %.1151.27.i.i, 1
  %i.wk = zext nneg i32 %.1151.27.i.i to i64
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.wk
  store i32 %i.wh, ptr %i.wl, align 4, !tbaa !3
  br label %.preheader221.29.i.i

.preheader221.29.i.i:                             ; preds = %bb.eh, %.preheader221.28.i.i
  %.1151.28.i.i = phi i32 [ %.1151.27.i.i, %.preheader221.28.i.i ], [ %i.wj, %bb.eh ] ; 3 uses
  %i.wm = load i32, ptr %i.cz, align 4, !tbaa !3  ; 2 uses
  %i.wn = icmp eq i32 %i.wm, 0
  br i1 %i.wn, label %.preheader221.30.i.i, label %bb.ei

bb.ei:                                            ; preds = %.preheader221.29.i.i
  %i.wo = add nuw nsw i32 %.1151.28.i.i, 1
  %i.wp = zext nneg i32 %.1151.28.i.i to i64
  %i.wq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.wp
  store i32 %i.wm, ptr %i.wq, align 4, !tbaa !3
  br label %.preheader221.30.i.i

.preheader221.30.i.i:                             ; preds = %bb.ei, %.preheader221.29.i.i
  %.1151.29.i.i = phi i32 [ %.1151.28.i.i, %.preheader221.29.i.i ], [ %i.wo, %bb.ei ] ; 3 uses
  %i.wr = load i32, ptr %i.da, align 8, !tbaa !3  ; 2 uses
  %i.ws = icmp eq i32 %i.wr, 0
  br i1 %i.ws, label %.preheader221.31.i.i, label %bb.ej

bb.ej:                                            ; preds = %.preheader221.30.i.i
  %i.wt = add nuw nsw i32 %.1151.29.i.i, 1
  %i.wu = zext nneg i32 %.1151.29.i.i to i64
  %i.wv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.wu
  store i32 %i.wr, ptr %i.wv, align 4, !tbaa !3
  br label %.preheader221.31.i.i

.preheader221.31.i.i:                             ; preds = %bb.ej, %.preheader221.30.i.i
  %.1151.30.i.i = phi i32 [ %.1151.29.i.i, %.preheader221.30.i.i ], [ %i.wt, %bb.ej ] ; 4 uses
  %i.ww = load i32, ptr %i.db, align 4, !tbaa !3  ; 2 uses
  %i.wx = icmp eq i32 %i.ww, 0
  br i1 %i.wx, label %.preheader220.i.i, label %.preheader220.thread.i.i

.preheader220.thread.i.i:                         ; preds = %.preheader221.31.i.i
  %i.wy = add nuw nsw i32 %.1151.30.i.i, 1
  %i.wz = zext nneg i32 %.1151.30.i.i to i64
  %i.xa = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.wz
  store i32 %i.ww, ptr %i.xa, align 4, !tbaa !3
  br label %.preheader219.us.preheader.i.i

.preheader220.i.i:                                ; preds = %.preheader221.31.i.i
  %.not.i133.i = icmp eq i32 %.1151.30.i.i, 0
  br i1 %.not.i133.i, label %._crit_edge.i.i, label %.preheader219.us.preheader.i.i

._crit_edge.i.i:                                  ; preds = %bb.df, %.preheader220.i.i
  %i.xb = phi i1 [ false, %.preheader220.i.i ], [ true, %bb.df ]
  %.1151.31442.i.i = phi i32 [ 0, %.preheader220.i.i ], [ %.1151.31443.i.i, %bb.df ] ; 2 uses
  %.0166.lcssa.i.i = phi i32 [ 0, %.preheader220.i.i ], [ %.1167.us.i.i, %bb.df ]
  %i.xc = load ptr, ptr %18, align 8, !tbaa !30   ; 3 uses
  store i32 0, ptr %i.xc, align 4, !tbaa !3
  br i1 %i.bo, label %.lr.ph256.i.i, label %._crit_edge257.i.i

.lr.ph256.i.i:                                    ; preds = %._crit_edge.i.i
  %.val195.i.i = load ptr, ptr %8, align 8, !tbaa !30
  %wide.trip.count347.i.i = zext nneg i32 %.1151.31442.i.i to i64
  br label %bb.ek

bb.ek:                                            ; preds = %bb.et, %.lr.ph256.i.i
  %indvars.iv354.i.i = phi i64 [ 1, %.lr.ph256.i.i ], [ %indvars.iv.next355.i.i, %bb.et ] ; 5 uses
  %.0168252.i.i = phi i32 [ -1, %.lr.ph256.i.i ], [ %.1169.i.i, %bb.et ]
  %.0174251.i.i = phi i32 [ -1, %.lr.ph256.i.i ], [ %.1175.i.i, %bb.et ] ; 2 uses
  %i.xd = getelementptr inbounds nuw [4 x i8], ptr %.val195.i.i, i64 %indvars.iv354.i.i
  %i.xe = load i32, ptr %i.xd, align 4, !tbaa !3  ; 2 uses
  %i.xf = and i32 %i.xe, 4095
  %i.xg = icmp eq i32 %i.xf, 4095
  br i1 %i.xg, label %bb.el, label %.loopexit217.i.i

bb.el:                                            ; preds = %bb.ek
  %i.xh = lshr i32 %i.xe, 12                      ; 2 uses
  br i1 %i.xb, label %.lr.ph241.i.i, label %.loopexit217.i.i

bb.em:                                            ; preds = %.lr.ph241.i.i
  %indvars.iv.next345.i.i = add nuw nsw i64 %indvars.iv344.i.i, 1 ; 2 uses
  %exitcond348.not.i.i = icmp eq i64 %indvars.iv.next345.i.i, %wide.trip.count347.i.i
  br i1 %exitcond348.not.i.i, label %.loopexit217.i.i, label %.lr.ph241.i.i, !llvm.loop !59

.lr.ph241.i.i:                                    ; preds = %bb.el, %bb.em
  %indvars.iv344.i.i = phi i64 [ %indvars.iv.next345.i.i, %bb.em ], [ 0, %bb.el ] ; 2 uses
  %i.xi = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv344.i.i
  %i.xj = load i32, ptr %i.xi, align 4, !tbaa !3
  %i.xk = icmp eq i32 %i.xh, %i.xj
  br i1 %i.xk, label %.loopexit.thread.i.i, label %bb.em

.loopexit217.i.i:                                 ; preds = %bb.em, %bb.el, %bb.ek
  %i.xl = add nsw i32 %.0174251.i.i, -2
  %i.xm = icmp ult i32 %i.xl, 4093                ; 4 uses
  %i.xn = select i1 %i.xm, i32 %.0166.lcssa.i.i, i32 %.1151.31442.i.i ; 2 uses
  %i.xo = add nsw i32 %.0174251.i.i, -1
  %i.xp = select i1 %i.xm, i32 %i.xo, i32 0       ; 2 uses
  %i.xq = select i1 %i.xm, i32 %.0168252.i.i, i32 0 ; 2 uses
  %i.xr = icmp sgt i32 %i.xn, 0
  br i1 %i.xr, label %.lr.ph246.i.i, label %.loopexit.i.i

.lr.ph246.i.i:                                    ; preds = %.loopexit217.i.i
  %.pn.in.v.i.i = select i1 %i.xm, ptr %i.d, ptr %i.c
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv354.i.i
  %wide.trip.count352.i.i = zext nneg i32 %i.xn to i64
  %i.xt = trunc nuw nsw i64 %indvars.iv354.i.i to i32 ; 2 uses
  br label %bb.en

bb.en:                                            ; preds = %bb.es, %.lr.ph246.i.i
  %indvars.iv349.i.i = phi i64 [ 0, %.lr.ph246.i.i ], [ %indvars.iv.next350.i.i, %bb.es ] ; 2 uses
  %.2155244.i.i = phi i32 [ %i.xq, %.lr.ph246.i.i ], [ %.4.ph.i.i, %bb.es ] ; 3 uses
  %.0157243.i.i = phi i32 [ %i.xp, %.lr.ph246.i.i ], [ %.2159.ph.i.i, %bb.es ] ; 4 uses
  %.pn.in.i.i = getelementptr inbounds nuw [4 x i8], ptr %.pn.in.v.i.i, i64 %indvars.iv349.i.i
  %.pn.i132.i = load i32, ptr %.pn.in.i.i, align 4, !tbaa !3 ; 3 uses
  %i.xu = sub nsw i32 %i.xt, %.pn.i132.i          ; 3 uses
  %i.xv = icmp slt i32 %i.xu, 0
  br i1 %i.xv, label %bb.es, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.xw = zext nneg i32 %i.xu to i64
  %i.xx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.xw
  %i.xy = load i32, ptr %i.xx, align 4, !tbaa !3
  %i.xz = load i32, ptr %i.xs, align 4, !tbaa !3
  %.not186.i.i = icmp eq i32 %i.xy, %i.xz
  br i1 %.not186.i.i, label %.preheader.i.i, label %bb.es

.preheader.i.i:                                   ; preds = %bb.eo, %bb.eq
  %.0147.i.i = phi i32 [ %.1148.i.i, %bb.eq ], [ 0, %bb.eo ] ; 2 uses
  %.0145.i.i = phi i32 [ %i.yj, %bb.eq ], [ %i.xt, %bb.eo ] ; 2 uses
  %.0143.i.i = phi i32 [ %i.ym, %bb.eq ], [ %i.xu, %bb.eo ] ; 2 uses
  %i.ya = zext nneg i32 %.0143.i.i to i64
  %i.yb = getelementptr inbounds nuw [2 x i8], ptr %i.jr, i64 %i.ya
  %i.yc = load i16, ptr %i.yb, align 2, !tbaa !54 ; 3 uses
  %i.yd = zext nneg i32 %.0145.i.i to i64
  %i.ye = getelementptr inbounds nuw [2 x i8], ptr %i.jr, i64 %i.yd
  %i.yf = load i16, ptr %i.ye, align 2, !tbaa !54 ; 2 uses
  %.not187.i.i = icmp eq i16 %i.yc, %i.yf
  br i1 %.not187.i.i, label %bb.ep, label %.thread199.i.i

.thread199.i.i:                                   ; preds = %.preheader.i.i
  %i.yg = call i16 @llvm.umin.i16(i16 %i.yc, i16 %i.yf)
  %i.yh = zext i16 %i.yg to i32
  %.1148204.i.i = add nuw nsw i32 %.0147.i.i, %i.yh
  br label %.critedge2.i.i

bb.ep:                                            ; preds = %.preheader.i.i
  %i.yi = zext i16 %i.yc to i32                   ; 3 uses
  %i.yj = add nuw nsw i32 %.0145.i.i, %i.yi       ; 3 uses
  %.1148.i.i = add nuw nsw i32 %.0147.i.i, %i.yi  ; 4 uses
  %i.yk = icmp samesign ult i32 %.1148.i.i, 4096
  %i.yl = icmp slt i32 %i.yj, %i.bj
  %or.cond192.i.i = select i1 %i.yk, i1 %i.yl, i1 false
  br i1 %or.cond192.i.i, label %bb.eq, label %.critedge2.i.i

bb.eq:                                            ; preds = %bb.ep
  %i.ym = add nuw nsw i32 %.0143.i.i, %i.yi       ; 2 uses
  %i.yn = zext nneg i32 %i.ym to i64
  %i.yo = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.yn
  %i.yp = load i32, ptr %i.yo, align 4, !tbaa !3
  %i.yq = zext nneg i32 %i.yj to i64
  %i.yr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.yq
  %i.ys = load i32, ptr %i.yr, align 4, !tbaa !3
  %i.yt = icmp eq i32 %i.yp, %i.ys
  br i1 %i.yt, label %.preheader.i.i, label %.critedge2.i.i, !llvm.loop !60

.critedge2.i.i:                                   ; preds = %bb.eq, %bb.ep, %.thread199.i.i
  %.1148207.i.i = phi i32 [ %.1148204.i.i, %.thread199.i.i ], [ %.1148.i.i, %bb.ep ], [ %.1148.i.i, %bb.eq ] ; 3 uses
  %i.yu = icmp slt i32 %.0157243.i.i, %.1148207.i.i
  br i1 %i.yu, label %bb.er, label %bb.es

bb.er:                                            ; preds = %.critedge2.i.i
  %i.yv = icmp samesign ugt i32 %.1148207.i.i, 4094
  br i1 %i.yv, label %.loopexit.thread.i.i, label %bb.es

bb.es:                                            ; preds = %bb.er, %.critedge2.i.i, %bb.eo, %bb.en
  %.2159.ph.i.i = phi i32 [ %.0157243.i.i, %.critedge2.i.i ], [ %.0157243.i.i, %bb.eo ], [ %.0157243.i.i, %bb.en ], [ %.1148207.i.i, %bb.er ] ; 2 uses
  %.4.ph.i.i = phi i32 [ %.2155244.i.i, %.critedge2.i.i ], [ %.2155244.i.i, %bb.eo ], [ %.2155244.i.i, %bb.en ], [ %.pn.i132.i, %bb.er ] ; 2 uses
  %indvars.iv.next350.i.i = add nuw nsw i64 %indvars.iv349.i.i, 1 ; 2 uses
  %exitcond353.not.i.i = icmp eq i64 %indvars.iv.next350.i.i, %wide.trip.count352.i.i
  br i1 %exitcond353.not.i.i, label %.loopexit.i.i, label %bb.en, !llvm.loop !61

.loopexit.i.i:                                    ; preds = %bb.es, %.loopexit217.i.i
  %.4161.i.i = phi i32 [ %i.xp, %.loopexit217.i.i ], [ %.2159.ph.i.i, %bb.es ] ; 2 uses
  %.6.i.i = phi i32 [ %i.xq, %.loopexit217.i.i ], [ %.4.ph.i.i, %bb.es ]
  %i.yw = icmp slt i32 %.4161.i.i, 5
  br i1 %i.yw, label %bb.et, label %.loopexit.thread.i.i

.loopexit.thread.i.i:                             ; preds = %.lr.ph241.i.i, %bb.er, %.loopexit.i.i
  %.6447.i.i = phi i32 [ %.6.i.i, %.loopexit.i.i ], [ %.pn.i132.i, %bb.er ], [ %i.xh, %.lr.ph241.i.i ] ; 2 uses
  %.4161446.i.i = phi i32 [ %.4161.i.i, %.loopexit.i.i ], [ 4095, %bb.er ], [ 4095, %.lr.ph241.i.i ] ; 2 uses
  %i.yx = shl i32 %.6447.i.i, 12
  %i.yy = or i32 %i.yx, %.4161446.i.i
  br label %bb.et

bb.et:                                            ; preds = %.loopexit.thread.i.i, %.loopexit.i.i
  %.sink.i.i = phi i32 [ %i.yy, %.loopexit.thread.i.i ], [ 0, %.loopexit.i.i ]
  %.1175.i.i = phi i32 [ %.4161446.i.i, %.loopexit.thread.i.i ], [ 0, %.loopexit.i.i ]
  %.1169.i.i = phi i32 [ %.6447.i.i, %.loopexit.thread.i.i ], [ 0, %.loopexit.i.i ]
  %i.yz = getelementptr inbounds nuw [4 x i8], ptr %i.xc, i64 %indvars.iv354.i.i
  store i32 %.sink.i.i, ptr %i.yz, align 4, !tbaa !3
  %indvars.iv.next355.i.i = add nuw nsw i64 %indvars.iv354.i.i, 1 ; 2 uses
  %exitcond358.not.i.i = icmp eq i64 %indvars.iv.next355.i.i, %wide.trip.count357.i.i
  br i1 %exitcond358.not.i.i, label %._crit_edge257.i.i, label %bb.ek, !llvm.loop !62

._crit_edge257.i.i:                               ; preds = %bb.et, %._crit_edge.i.i
  store i32 0, ptr %i.xc, align 4, !tbaa !3
  call void @WebPSafeFree(ptr noundef nonnull %i.jr) #11
  %i.za = call fastcc i32 @BackwardReferencesLz77(i32 noundef %0, i32 noundef %1, ptr noundef readonly %2, ptr noundef nonnull readonly %18, ptr noundef nonnull %i.bg)
  br label %BackwardReferencesLz77Box.exit.i

BackwardReferencesLz77Box.exit.i:                 ; preds = %._crit_edge257.i.i, %bb.ay
  %.0.i131.i = phi i32 [ %i.za, %._crit_edge257.i.i ], [ 0, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %bb.eu

bb.eu:                                            ; preds = %BackwardReferencesLz77Box.exit.i, %bb.aw, %BackwardReferencesRle.exit.i
  %.0112.i = phi i32 [ %.0.i131.i, %BackwardReferencesLz77Box.exit.i ], [ %i.jn, %BackwardReferencesRle.exit.i ], [ %i.jo, %bb.aw ]
  %.not123.i = icmp eq i32 %.0112.i, 0
  br i1 %.not123.i, label %.critedge, label %.preheader240.i

.preheader240.i:                                  ; preds = %bb.eu, %bb.gj
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.gj ], [ 1, %bb.eu ] ; 7 uses
  %.0109252.i = phi i64 [ %.2111.ph.i, %bb.gj ], [ 0, %bb.eu ] ; 2 uses
  %i.zb = icmp eq i64 %indvars.iv.i, 1            ; 2 uses
  %i.zc = select i1 %i.zb, i32 0, i32 %6          ; 5 uses
  %i.zd = icmp ne i64 %indvars.iv.i, 1
  %or.cond.i = or i1 %i.be, %i.zd
  br i1 %or.cond.i, label %bb.ev, label %bb.gj

bb.ev:                                            ; preds = %.preheader240.i
  %i.ze = icmp eq i64 %indvars.iv.i, 0            ; 2 uses
  br i1 %i.ze, label %bb.ew, label %.thread214.i

bb.ew:                                            ; preds = %bb.ev
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(44) %i.a, i8 0, i64 44, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #11
  %i.zf = load ptr, ptr %i.de, align 8, !tbaa !16, !noalias !63 ; 4 uses
  %.not.i.i135.i = icmp eq ptr %i.zf, null
  br i1 %.not.i.i135.i, label %VP8LRefsCursorInit.exit.i.i43, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 8
  %i.zh = load ptr, ptr %i.zg, align 8, !tbaa !25, !noalias !63 ; 2 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zf, i64 16
  %i.zj = load i32, ptr %i.zi, align 8, !tbaa !26, !noalias !63
  %i.zk = sext i32 %i.zj to i64
  %i.zl = getelementptr inbounds [8 x i8], ptr %i.zh, i64 %i.zk
  br label %VP8LRefsCursorInit.exit.i.i43

VP8LRefsCursorInit.exit.i.i43:                    ; preds = %bb.ex, %bb.ew
  %.sink2.i.i.i = phi ptr [ %i.zh, %bb.ex ], [ null, %bb.ew ] ; 2 uses
  %.sink.i.i.i = phi ptr [ %i.zl, %bb.ex ], [ null, %bb.ew ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(88) %i.b, i8 0, i64 88, i1 false)
end_hunk_1
