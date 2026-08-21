inline.NumInlined: 298
inline.NumDeleted: 99
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@Gia_ManBalance_rec:bb.a
  %.val44.i.i = load ptr, ptr %i.iw, align 8, !tbaa !42 ; 3 uses
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %.val44.i.i, i64 %indvars.iv.next.i.i76
  store i32 %i.lt, ptr %i.ok, align 4, !tbaa !50
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %.val44.i.i, i64 %i.lr
  store i32 %i.lq, ptr %i.ol, align 4, !tbaa !50
  %i.om = icmp samesign ugt i64 %indvars.iv.i.i75, 2
  br i1 %i.om, label %bb.bs, label %Gia_ManBalanceGate.exit, !llvm.loop !114

bb.cs:                                            ; preds = %.critedge
  %i.on = icmp sgt i32 %i.ie, 2
  br i1 %i.on, label %bb.ct, label %Gia_ManBalanceGate.exit

bb.ct:                                            ; preds = %bb.cs
  %i.oo = getelementptr i8, ptr %0, i64 792
  %.val53.i = load ptr, ptr %i.oo, align 8, !tbaa !56 ; 4 uses
  %i.op = getelementptr i8, ptr %i.ic, i64 8      ; 9 uses
  %wide.trip.count.i = zext nneg i32 %i.ie to i64
  br label %bb.cu

bb.cu:                                            ; preds = %Vec_IntPush.exit81.i, %bb.ct
  %indvars.iv.i82 = phi i64 [ 0, %bb.ct ], [ %indvars.iv.next.i83, %Vec_IntPush.exit81.i ] ; 2 uses
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %indvars.iv.i82
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !50
  %i.os = load i32, ptr %i.if, align 4, !tbaa !40 ; 7 uses
  %i.ot = load i32, ptr %i.ic, align 8, !tbaa !41
  %i.ou = icmp eq i32 %i.os, %i.ot
  br i1 %i.ou, label %bb.cv, label %.Vec_IntPush.exit81_crit_edge.i

.Vec_IntPush.exit81_crit_edge.i:                  ; preds = %bb.cu
  %.pre168.i = load ptr, ptr %i.op, align 8, !tbaa !42
  br label %Vec_IntPush.exit81.i

bb.cv:                                            ; preds = %bb.cu
  %i.ov = icmp slt i32 %i.os, 16
  br i1 %i.ov, label %bb.cw, label %bb.cz

bb.cw:                                            ; preds = %bb.cv
  %i.ow = load ptr, ptr %i.op, align 8, !tbaa !42 ; 2 uses
  %.not9.i.i79.i = icmp eq ptr %i.ow, null
  br i1 %.not9.i.i79.i, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.ox = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ow, i64 noundef 64) #24
  br label %Vec_IntGrow.exit11.sink.split.i77.i

bb.cy:                                            ; preds = %bb.cw
  %i.oy = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #23
  br label %Vec_IntGrow.exit11.sink.split.i77.i

bb.cz:                                            ; preds = %bb.cv
  %i.oz = icmp samesign ult i32 %i.os, 1073741823
  %i.pa = shl nuw nsw i32 %i.os, 1
  %spec.select.i74.i = select i1 %i.oz, i32 %i.pa, i32 2147483647 ; 4 uses
  %.not.i9.i75.i = icmp samesign ult i32 %i.os, %spec.select.i74.i
  %.pre169.i = load ptr, ptr %i.op, align 8, !tbaa !42 ; 3 uses
  br i1 %.not.i9.i75.i, label %bb.da, label %Vec_IntPush.exit81.i

bb.da:                                            ; preds = %bb.cz
  %.not9.i10.i76.i = icmp eq ptr %.pre169.i, null
  %i.pb = zext nneg i32 %spec.select.i74.i to i64
  %i.pc = shl nuw nsw i64 %i.pb, 2                ; 2 uses
  br i1 %.not9.i10.i76.i, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.pd = tail call ptr @realloc(ptr noundef nonnull %.pre169.i, i64 noundef %i.pc) #24
  br label %Vec_IntGrow.exit11.sink.split.i77.i

bb.dc:                                            ; preds = %bb.da
  %i.pe = tail call noalias ptr @malloc(i64 noundef %i.pc) #23
  br label %Vec_IntGrow.exit11.sink.split.i77.i

Vec_IntGrow.exit11.sink.split.i77.i:              ; preds = %bb.dc, %bb.db, %bb.cy, %bb.cx
  %i.pf = phi ptr [ %i.oy, %bb.cy ], [ %i.ox, %bb.cx ], [ %i.pd, %bb.db ], [ %i.pe, %bb.dc ] ; 2 uses
  %spec.select.sink.i78.i = phi i32 [ 16, %bb.cy ], [ 16, %bb.cx ], [ %spec.select.i74.i, %bb.db ], [ %spec.select.i74.i, %bb.dc ]
  store ptr %i.pf, ptr %i.op, align 8, !tbaa !42
  store i32 %spec.select.sink.i78.i, ptr %i.ic, align 8, !tbaa !41
  %.pre170.i = load i32, ptr %i.if, align 4, !tbaa !40
  br label %Vec_IntPush.exit81.i

Vec_IntPush.exit81.i:                             ; preds = %Vec_IntGrow.exit11.sink.split.i77.i, %bb.cz, %.Vec_IntPush.exit81_crit_edge.i
  %i.pg = phi i32 [ %i.os, %.Vec_IntPush.exit81_crit_edge.i ], [ %i.os, %bb.cz ], [ %.pre170.i, %Vec_IntGrow.exit11.sink.split.i77.i ] ; 2 uses
  %.val55.i = phi ptr [ %.pre168.i, %.Vec_IntPush.exit81_crit_edge.i ], [ %.pre169.i, %bb.cz ], [ %i.pf, %Vec_IntGrow.exit11.sink.split.i77.i ] ; 7 uses
  %i.ph = add nsw i32 %i.pg, 1
  store i32 %i.ph, ptr %i.if, align 4, !tbaa !40
  %i.pi = sext i32 %i.pg to i64
  %i.pj = getelementptr inbounds [4 x i8], ptr %.val55.i, i64 %i.pi
  store i32 %i.or, ptr %i.pj, align 4, !tbaa !50
  %indvars.iv.next.i83 = add nuw nsw i64 %indvars.iv.i82, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i83, %wide.trip.count.i
  br i1 %exitcond.not.i, label %bb.dd, label %bb.cu, !llvm.loop !115

bb.dd:                                            ; preds = %Vec_IntPush.exit81.i
  %i.pk = getelementptr inbounds nuw i8, ptr %.val53.i, i64 32 ; 8 uses
  %.val54.i = load i32, ptr %i.if, align 4, !tbaa !40 ; 3 uses
  %i.pl = icmp sgt i32 %.val54.i, 1
  br i1 %i.pl, label %.lr.ph5.i.i, label %Gia_ManBalanceGate.exit

.lr.ph5.i.i:                                      ; preds = %bb.dd
  %i.pm = load ptr, ptr %i.pk, align 8, !tbaa !43
  %i.pn = add nsw i32 %.val54.i, -1
  %i.po = getelementptr i8, ptr %i.pm, i64 8
  %wide.trip.count13.i.i = zext nneg i32 %i.pn to i64
  %.val27.i.i84 = load ptr, ptr %i.po, align 8, !tbaa !42 ; 6 uses
  %wide.trip.count.i.i = zext nneg i32 %.val54.i to i64 ; 3 uses
  %i.pp = add nsw i64 %wide.trip.count.i.i, -2
  br label %.lr.ph.i82.i

.lr.ph.i82.i:                                     ; preds = %._crit_edge.i.i, %.lr.ph5.i.i
  %indvars.iv10.i.i = phi i64 [ 0, %.lr.ph5.i.i ], [ %indvars.iv.next11.i.i, %._crit_edge.i.i ] ; 5 uses
  %indvars.iv.i83.i = phi i64 [ 1, %.lr.ph5.i.i ], [ %indvars.iv.next.i87.i, %._crit_edge.i.i ] ; 5 uses
  %i.pq = trunc nuw nsw i64 %indvars.iv10.i.i to i32 ; 2 uses
  %.phi.trans.insert.i84.i = getelementptr inbounds nuw [4 x i8], ptr %.val55.i, i64 %indvars.iv10.i.i ; 2 uses
  %.pre.i85.i = load i32, ptr %.phi.trans.insert.i84.i, align 4, !tbaa !50 ; 4 uses
  %i.pr = sub nsw i64 %indvars.iv10.i.i, %wide.trip.count.i.i
  %i.ps = and i64 %i.pr, 1
  %lcmp.mod.not.not = icmp eq i64 %i.ps, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i82.i
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %.val55.i, i64 %indvars.iv.i83.i
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !50 ; 2 uses
  %i.pv = ashr i32 %i.pu, 1
  %i.pw = sext i32 %i.pv to i64
  %i.px = getelementptr inbounds [4 x i8], ptr %.val27.i.i84, i64 %i.pw
  %i.py = load i32, ptr %i.px, align 4, !tbaa !50
  %i.pz = ashr i32 %.pre.i85.i, 1
  %i.qa = sext i32 %i.pz to i64
  %i.qb = getelementptr inbounds [4 x i8], ptr %.val27.i.i84, i64 %i.qa
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !50
  %i.qd = icmp sgt i32 %i.py, %i.qc               ; 2 uses
  %i.qe = trunc nuw nsw i64 %indvars.iv.i83.i to i32
  %spec.select.i86.i.prol = select i1 %i.qd, i32 %i.qe, i32 %i.pq ; 2 uses
  %indvars.iv.next8.i.i.prol = add nuw nsw i64 %indvars.iv.i83.i, 1
  %i.qf = select i1 %i.qd, i32 %i.pu, i32 %.pre.i85.i
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i82.i
  %spec.select.i86.i.lcssa.unr = phi i32 [ poison, %.lr.ph.i82.i ], [ %spec.select.i86.i.prol, %.prol.loopexit.unr-lcssa ]
  %.unr = phi i32 [ %.pre.i85.i, %.lr.ph.i82.i ], [ %i.qf, %.prol.loopexit.unr-lcssa ]
  %indvars.iv7.i.i.unr = phi i64 [ %indvars.iv.i83.i, %.lr.ph.i82.i ], [ %indvars.iv.next8.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.02.i.i.unr = phi i32 [ %i.pq, %.lr.ph.i82.i ], [ %spec.select.i86.i.prol, %.prol.loopexit.unr-lcssa ]
  %i.qg = icmp eq i64 %i.pp, %indvars.iv10.i.i
  br i1 %i.qg, label %._crit_edge.i.i, label %.lr.ph.i82.i.new

.lr.ph.i82.i.new:                                 ; preds = %.prol.loopexit, %.lr.ph.i82.i.new
  %i.qh = phi i32 [ %i.rh, %.lr.ph.i82.i.new ], [ %.unr, %.prol.loopexit ] ; 2 uses
  %indvars.iv7.i.i = phi i64 [ %indvars.iv.next8.i.i.1, %.lr.ph.i82.i.new ], [ %indvars.iv7.i.i.unr, %.prol.loopexit ] ; 4 uses
  %.02.i.i = phi i32 [ %spec.select.i86.i.1, %.lr.ph.i82.i.new ], [ %.02.i.i.unr, %.prol.loopexit ]
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %.val55.i, i64 %indvars.iv7.i.i
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !50 ; 2 uses
  %i.qk = ashr i32 %i.qj, 1
  %i.ql = sext i32 %i.qk to i64
  %i.qm = getelementptr inbounds [4 x i8], ptr %.val27.i.i84, i64 %i.ql
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !50
  %i.qo = ashr i32 %i.qh, 1
  %i.qp = sext i32 %i.qo to i64
  %i.qq = getelementptr inbounds [4 x i8], ptr %.val27.i.i84, i64 %i.qp
  %i.qr = load i32, ptr %i.qq, align 4, !tbaa !50
  %i.qs = icmp sgt i32 %i.qn, %i.qr               ; 2 uses
  %i.qt = trunc nuw nsw i64 %indvars.iv7.i.i to i32
  %spec.select.i86.i = select i1 %i.qs, i32 %i.qt, i32 %.02.i.i
  %indvars.iv.next8.i.i = add nuw nsw i64 %indvars.iv7.i.i, 1 ; 2 uses
  %i.qu = select i1 %i.qs, i32 %i.qj, i32 %i.qh   ; 2 uses
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %.val55.i, i64 %indvars.iv.next8.i.i
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !50 ; 2 uses
  %i.qx = ashr i32 %i.qw, 1
  %i.qy = sext i32 %i.qx to i64
  %i.qz = getelementptr inbounds [4 x i8], ptr %.val27.i.i84, i64 %i.qy
  %i.ra = load i32, ptr %i.qz, align 4, !tbaa !50
  %i.rb = ashr i32 %i.qu, 1
  %i.rc = sext i32 %i.rb to i64
  %i.rd = getelementptr inbounds [4 x i8], ptr %.val27.i.i84, i64 %i.rc
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !50
  %i.rf = icmp sgt i32 %i.ra, %i.re               ; 2 uses
  %i.rg = trunc nuw nsw i64 %indvars.iv.next8.i.i to i32
  %spec.select.i86.i.1 = select i1 %i.rf, i32 %i.rg, i32 %spec.select.i86.i ; 2 uses
  %indvars.iv.next8.i.i.1 = add nuw nsw i64 %indvars.iv7.i.i, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next8.i.i.1, %wide.trip.count.i.i
  %i.rh = select i1 %i.rf, i32 %i.qw, i32 %i.qu
  br i1 %exitcond.not.i.i.1, label %._crit_edge.i.i, label %.lr.ph.i82.i.new, !llvm.loop !116

._crit_edge.i.i:                                  ; preds = %.lr.ph.i82.i.new, %.prol.loopexit
  %spec.select.i86.i.lcssa = phi i32 [ %spec.select.i86.i.lcssa.unr, %.prol.loopexit ], [ %spec.select.i86.i.1, %.lr.ph.i82.i.new ]
  %indvars.iv.next11.i.i = add nuw nsw i64 %indvars.iv10.i.i, 1 ; 2 uses
  %i.ri = sext i32 %spec.select.i86.i.lcssa to i64
  %i.rj = getelementptr inbounds [4 x i8], ptr %.val55.i, i64 %i.ri ; 2 uses
  %i.rk = load i32, ptr %i.rj, align 4, !tbaa !50
  store i32 %i.rk, ptr %.phi.trans.insert.i84.i, align 4, !tbaa !50
  store i32 %.pre.i85.i, ptr %i.rj, align 4, !tbaa !50
  %indvars.iv.next.i87.i = add nuw nsw i64 %indvars.iv.i83.i, 1
  %exitcond14.not.i.i = icmp eq i64 %indvars.iv.next11.i.i, %wide.trip.count13.i.i
  br i1 %exitcond14.not.i.i, label %Vec_IntSelectSortCostLit.exit.i, label %.lr.ph.i82.i, !llvm.loop !117

Vec_IntSelectSortCostLit.exit.i:                  ; preds = %._crit_edge.i.i
  %.val52147.pre.i = load i32, ptr %i.if, align 4, !tbaa !40 ; 2 uses
  %i.rl = icmp sgt i32 %.val52147.pre.i, 1
  br i1 %i.rl, label %.lr.ph.i85, label %Gia_ManBalanceGate.exit

.lr.ph.i85:                                       ; preds = %Vec_IntSelectSortCostLit.exit.i, %Vec_IntPushOrderCost2.exit.i
  %.val57.i = phi ptr [ %i.zc, %Vec_IntPushOrderCost2.exit.i ], [ %.val55.i, %Vec_IntSelectSortCostLit.exit.i ] ; 7 uses
  %.val52148.i = phi i32 [ %.val52.pre.i, %Vec_IntPushOrderCost2.exit.i ], [ %.val52147.pre.i, %Vec_IntSelectSortCostLit.exit.i ] ; 6 uses
  %.val99.i.i = load ptr, ptr %i.pk, align 8, !tbaa !43
  %i.rm = getelementptr i8, ptr %.val99.i.i, i64 8
  %.val99.val.i.i = load ptr, ptr %i.rm, align 8, !tbaa !42 ; 2 uses
  %i.rn = zext nneg i32 %.val52148.i to i64       ; 4 uses
  %i.ro = getelementptr [4 x i8], ptr %.val57.i, i64 %i.rn
  %i.rp = getelementptr i8, ptr %i.ro, i64 -4
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !50
  %i.rr = ashr i32 %i.rq, 1
  %i.rs = sext i32 %i.rr to i64
  %i.rt = getelementptr inbounds [4 x i8], ptr %.val99.val.i.i, i64 %i.rs
  %i.ru = load i32, ptr %i.rt, align 4, !tbaa !50
  %i.rv = ashr i32 %i.ru, 4
  %i.rw = icmp samesign ugt i32 %.val52148.i, 1
  br i1 %i.rw, label %.lr.ph192, label %.lr.ph52.i.i.preheader

bb.de:                                            ; preds = %.lr.ph192
  %i.rx = icmp sgt i32 %.0.in.i.i.i191, 2
  br i1 %i.rx, label %.lr.ph192, label %.lr.ph52.i.i.preheader, !llvm.loop !118

.lr.ph192:                                        ; preds = %.lr.ph.i85, %bb.de
  %.0.in.i.i.i191 = phi i32 [ %.0.i.i.i, %bb.de ], [ %.val52148.i, %.lr.ph.i85 ] ; 4 uses
  %.0.i.i.i = add nsw i32 %.0.in.i.i.i191, -1     ; 4 uses
  %i.ry = zext nneg i32 %.0.in.i.i.i191 to i64
  %i.rz = getelementptr [4 x i8], ptr %.val57.i, i64 %i.ry
  %i.sa = getelementptr i8, ptr %i.rz, i64 -8
  %i.sb = load i32, ptr %i.sa, align 4, !tbaa !50
  %i.sc = ashr i32 %i.sb, 1
  %i.sd = sext i32 %i.sc to i64
  %i.se = getelementptr inbounds [4 x i8], ptr %.val99.val.i.i, i64 %i.sd
  %i.sf = load i32, ptr %i.se, align 4, !tbaa !50
  %i.sg = ashr i32 %i.sf, 4
  %i.sh = icmp sgt i32 %i.sg, %i.rv
  br i1 %i.sh, label %.preheader.preheader.i.i, label %bb.de, !llvm.loop !118

.preheader.preheader.i.i:                         ; preds = %.lr.ph192
  %.08227.i.i = add nsw i32 %.0.in.i.i.i191, -2
  %i.si = zext nneg i32 %.0.i.i.i to i64
  %i.sj = zext nneg i32 %.08227.i.i to i64
  br label %.preheader.i.i

..loopexit3_crit_edge.i.i:                        ; preds = %Bal_ManEvalTwo.exit.thread.i.i
  %indvars.iv.next64.i.i = add nsw i64 %indvars.iv63.i.i, -1
  %i.sk = icmp sgt i64 %indvars.iv63.i.i, 0
  br i1 %i.sk, label %.preheader.i.i, label %._crit_edge.i94.i, !llvm.loop !119

.preheader.i.i:                                   ; preds = %..loopexit3_crit_edge.i.i, %.preheader.preheader.i.i
  %indvars.iv63.i.i = phi i64 [ %i.sj, %.preheader.preheader.i.i ], [ %indvars.iv.next64.i.i, %..loopexit3_crit_edge.i.i ] ; 4 uses
  %.030.i.i = phi i32 [ 1000000000, %.preheader.preheader.i.i ], [ %.2.i.i, %..loopexit3_crit_edge.i.i ]
  %.07029.i.i = phi i32 [ -1, %.preheader.preheader.i.i ], [ %.272.i.i, %..loopexit3_crit_edge.i.i ]
  %.07628.i.i = phi i32 [ -1, %.preheader.preheader.i.i ], [ %.278.i.i, %..loopexit3_crit_edge.i.i ]
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %.val57.i, i64 %indvars.iv63.i.i ; 2 uses
  %i.sm = trunc nuw nsw i64 %indvars.iv63.i.i to i32 ; 2 uses
  br label %Gia_ObjIsXor.exit.i93.i

Gia_ObjIsXor.exit.i93.i:                          ; preds = %Bal_ManEvalTwo.exit.thread.i.i, %.preheader.i.i
  %indvars.iv.in.i.i = phi i64 [ %i.rn, %.preheader.i.i ], [ %indvars.iv.i90.i, %Bal_ManEvalTwo.exit.thread.i.i ]
  %.124.i.i = phi i32 [ %.030.i.i, %.preheader.i.i ], [ %.2.i.i, %Bal_ManEvalTwo.exit.thread.i.i ] ; 4 uses
  %.17123.i.i = phi i32 [ %.07029.i.i, %.preheader.i.i ], [ %.272.i.i, %Bal_ManEvalTwo.exit.thread.i.i ] ; 3 uses
  %.17722.i.i = phi i32 [ %.07628.i.i, %.preheader.i.i ], [ %.278.i.i, %Bal_ManEvalTwo.exit.thread.i.i ] ; 3 uses
  %indvars.iv.i90.i = add nsw i64 %indvars.iv.in.i.i, -1 ; 5 uses
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %.val57.i, i64 %indvars.iv.i90.i
  %i.so = load i32, ptr %i.sn, align 4, !tbaa !50
  %i.sp = load i32, ptr %i.sl, align 4, !tbaa !50
  %i.sq = ashr i32 %i.so, 1                       ; 2 uses
  %i.sr = ashr i32 %i.sp, 1                       ; 2 uses
  %.val36.i.i.i = load ptr, ptr %i.pk, align 8, !tbaa !43
  %i.ss = getelementptr i8, ptr %.val36.i.i.i, i64 8
  %.val36.val.i.i.i = load ptr, ptr %i.ss, align 8, !tbaa !42 ; 3 uses
  %i.st = sext i32 %i.sq to i64
  %i.su = getelementptr inbounds [4 x i8], ptr %.val36.val.i.i.i, i64 %i.st
  %i.sv = load i32, ptr %i.su, align 4, !tbaa !50
  %i.sw = ashr i32 %i.sv, 4                       ; 2 uses
  %i.sx = sext i32 %i.sr to i64
  %i.sy = getelementptr inbounds [4 x i8], ptr %.val36.val.i.i.i, i64 %i.sx
  %i.sz = load i32, ptr %i.sy, align 4, !tbaa !50
  %i.ta = ashr i32 %i.sz, 4                       ; 2 uses
  %i.tb = load i32, ptr %.val36.val.i.i.i, align 4, !tbaa !50
  %i.tc = ashr i32 %i.tb, 4                       ; 2 uses
  %i.td = tail call noundef i32 @llvm.smax.i32(i32 %i.ta, i32 %i.tc) ; 2 uses
  %i.te = tail call noundef i32 @llvm.smax.i32(i32 %i.sw, i32 %i.td) ; 3 uses
  %i.tf = icmp eq i32 %i.te, 0
  br i1 %i.tf, label %Bal_ManEvalTwo.exit.thread.i.i, label %Bal_ManEvalTwo.exit.i.i

Bal_ManEvalTwo.exit.i.i:                          ; preds = %Gia_ObjIsXor.exit.i93.i
  %i.tg = icmp ne i32 %i.tc, %i.te
  %i.th = zext i1 %i.tg to i32
  %i.ti = icmp ne i32 %i.ta, %i.te
  %i.tj = zext i1 %i.ti to i32
  %i.tk = icmp slt i32 %i.sw, %i.td
  %i.tl = zext i1 %i.tk to i32
  %i.tm = tail call i32 @Bal_ManDeriveCuts(ptr noundef nonnull readonly %.val53.i, i32 noundef %i.sq, i32 noundef %i.sr, i32 noundef 0, i32 poison, i32 poison, i32 poison, i32 noundef %i.tl, i32 noundef %i.tj, i32 noundef %i.th, i32 poison, i32 poison, i32 noundef 0) ; 4 uses
  %i.tn = icmp eq i32 %i.tm, -1
  br i1 %i.tn, label %Bal_ManEvalTwo.exit.thread.i.i, label %bb.df

bb.df:                                            ; preds = %Bal_ManEvalTwo.exit.i.i
  %i.to = load i32, ptr %i.sl, align 4, !tbaa !50
  %.val104.i.i = load ptr, ptr %i.pk, align 8, !tbaa !43
  %i.tp = getelementptr i8, ptr %.val104.i.i, i64 8
  %.val104.val.i.i = load ptr, ptr %i.tp, align 8, !tbaa !42
  %i.tq = ashr i32 %i.to, 1
  %i.tr = sext i32 %i.tq to i64
  %i.ts = getelementptr inbounds [4 x i8], ptr %.val104.val.i.i, i64 %i.tr
  %i.tt = load i32, ptr %i.ts, align 4, !tbaa !50
  %i.tu = icmp eq i32 %i.tm, %i.tt
  br i1 %i.tu, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.tv = trunc nuw nsw i64 %indvars.iv.i90.i to i32
  %i.tw = shl i32 %i.sm, 16
  %i.tx = or i32 %i.tw, %i.tv
  br label %Bal_ManFindBestPair.exit.i

bb.dh:                                            ; preds = %bb.df
  %i.ty = icmp sgt i32 %.124.i.i, %i.tm
  br i1 %i.ty, label %bb.di, label %Bal_ManEvalTwo.exit.thread.i.i

bb.di:                                            ; preds = %bb.dh
  %i.tz = trunc nuw nsw i64 %indvars.iv.i90.i to i32
  br label %Bal_ManEvalTwo.exit.thread.i.i

Bal_ManEvalTwo.exit.thread.i.i:                   ; preds = %bb.di, %bb.dh, %Bal_ManEvalTwo.exit.i.i, %Gia_ObjIsXor.exit.i93.i
  %.278.i.i = phi i32 [ %.17722.i.i, %Bal_ManEvalTwo.exit.i.i ], [ %i.tz, %bb.di ], [ %.17722.i.i, %bb.dh ], [ %.17722.i.i, %Gia_ObjIsXor.exit.i93.i ] ; 5 uses
  %.272.i.i = phi i32 [ %.17123.i.i, %Bal_ManEvalTwo.exit.i.i ], [ %i.sm, %bb.di ], [ %.17123.i.i, %bb.dh ], [ %.17123.i.i, %Gia_ObjIsXor.exit.i93.i ] ; 6 uses
  %.2.i.i = phi i32 [ %.124.i.i, %Bal_ManEvalTwo.exit.i.i ], [ %i.tm, %bb.di ], [ %.124.i.i, %bb.dh ], [ %.124.i.i, %Gia_ObjIsXor.exit.i93.i ] ; 4 uses
  %.not94.not.i.i = icmp sgt i64 %indvars.iv.i90.i, %i.si
  br i1 %.not94.not.i.i, label %Gia_ObjIsXor.exit.i93.i, label %..loopexit3_crit_edge.i.i, !llvm.loop !120

._crit_edge.i94.i:                                ; preds = %..loopexit3_crit_edge.i.i
  %.not.i95.i = icmp eq i32 %.2.i.i, 1000000000
  br i1 %.not.i95.i, label %.lr.ph52.i.i.preheader, label %bb.dj

bb.dj:                                            ; preds = %._crit_edge.i94.i
  %i.ua = sext i32 %.272.i.i to i64
  %i.ub = getelementptr inbounds [4 x i8], ptr %.val57.i, i64 %i.ua
  %i.uc = load i32, ptr %i.ub, align 4, !tbaa !50
  %.val98.i.i = load ptr, ptr %i.pk, align 8, !tbaa !43
  %i.ud = getelementptr i8, ptr %.val98.i.i, i64 8
  %.val98.val.i.i = load ptr, ptr %i.ud, align 8, !tbaa !42
  %i.ue = ashr i32 %i.uc, 1
  %i.uf = sext i32 %i.ue to i64
  %i.ug = getelementptr inbounds [4 x i8], ptr %.val98.val.i.i, i64 %i.uf
  %i.uh = load i32, ptr %i.ug, align 4, !tbaa !50
  %.unshifted.i.i = xor i32 %i.uh, %.2.i.i
  %i.ui = icmp ult i32 %.unshifted.i.i, 16
  br i1 %i.ui, label %bb.dk, label %.lr.ph52.i.i.preheader

bb.dk:                                            ; preds = %bb.dj
  %i.uj = shl i32 %.272.i.i, 16
  %i.uk = or i32 %i.uj, %.278.i.i
  br label %Bal_ManFindBestPair.exit.i

.lr.ph52.i.i.preheader:                           ; preds = %bb.de, %.lr.ph.i85, %._crit_edge.i94.i, %bb.dj
  %.0.lcssa.i7986.i.i98 = phi i32 [ %.0.i.i.i, %._crit_edge.i94.i ], [ %.0.i.i.i, %bb.dj ], [ 0, %.lr.ph.i85 ], [ 0, %bb.de ]
  %.076.lcssa87.i.i97 = phi i32 [ %.278.i.i, %._crit_edge.i94.i ], [ %.278.i.i, %bb.dj ], [ -1, %.lr.ph.i85 ], [ -1, %bb.de ]
  %.070.lcssa88.i.i96 = phi i32 [ %.272.i.i, %._crit_edge.i94.i ], [ %.272.i.i, %bb.dj ], [ -1, %.lr.ph.i85 ], [ -1, %bb.de ]
  %3 = zext nneg i32 %.0.lcssa.i7986.i.i98 to i64
  br label %.lr.ph52.i.i

.loopexit.i.i:                                    ; preds = %Bal_ManEvalTwo.exit112.thread.i.i, %.lr.ph52.i.i
  %.480.lcssa.i.i = phi i32 [ %.37948.i.i, %.lr.ph52.i.i ], [ %.581.i.i, %Bal_ManEvalTwo.exit112.thread.i.i ] ; 2 uses
  %.474.lcssa.i.i = phi i32 [ %.37349.i.i, %.lr.ph52.i.i ], [ %.575.i.i, %Bal_ManEvalTwo.exit112.thread.i.i ] ; 2 uses
  %.4.lcssa.i.i = phi i32 [ %.350.i.i, %.lr.ph52.i.i ], [ %.5.i.i, %Bal_ManEvalTwo.exit112.thread.i.i ] ; 2 uses
  %exitcond74.not.i.i = icmp eq i64 %indvars.iv.next72.i.i, %i.rn
  br i1 %exitcond74.not.i.i, label %._crit_edge53.i.i, label %.lr.ph52.i.i, !llvm.loop !121

.lr.ph52.i.i:                                     ; preds = %.loopexit.i.i, %.lr.ph52.i.i.preheader
  %indvars.iv71.i.i = phi i64 [ %3, %.lr.ph52.i.i.preheader ], [ %indvars.iv.next72.i.i, %.loopexit.i.i ] ; 3 uses
  %.350.i.i = phi i32 [ 1000000000, %.lr.ph52.i.i.preheader ], [ %.4.lcssa.i.i, %.loopexit.i.i ] ; 2 uses
  %.37349.i.i = phi i32 [ %.070.lcssa88.i.i96, %.lr.ph52.i.i.preheader ], [ %.474.lcssa.i.i, %.loopexit.i.i ] ; 2 uses
  %.37948.i.i = phi i32 [ %.076.lcssa87.i.i97, %.lr.ph52.i.i.preheader ], [ %.480.lcssa.i.i, %.loopexit.i.i ] ; 2 uses
  %indvars.iv.next72.i.i = add nuw nsw i64 %indvars.iv71.i.i, 1 ; 4 uses
  %.not93.not37.i.i = icmp samesign ult i64 %indvars.iv.next72.i.i, %i.rn
  br i1 %.not93.not37.i.i, label %.lr.ph.i88.i, label %.loopexit.i.i

.lr.ph.i88.i:                                     ; preds = %.lr.ph52.i.i
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr %.val57.i, i64 %indvars.iv71.i.i ; 2 uses
  %i.um = trunc nsw i64 %indvars.iv71.i.i to i32  ; 2 uses
  br label %Gia_ObjIsXor.exit108.i.i

Gia_ObjIsXor.exit108.i.i:                         ; preds = %Bal_ManEvalTwo.exit112.thread.i.i, %.lr.ph.i88.i
  %indvars.iv68.i.i = phi i64 [ %indvars.iv.next72.i.i, %.lr.ph.i88.i ], [ %indvars.iv.next69.i.i, %Bal_ManEvalTwo.exit112.thread.i.i ] ; 4 uses
  %.441.i.i = phi i32 [ %.350.i.i, %.lr.ph.i88.i ], [ %.5.i.i, %Bal_ManEvalTwo.exit112.thread.i.i ] ; 4 uses
  %.47440.i.i = phi i32 [ %.37349.i.i, %.lr.ph.i88.i ], [ %.575.i.i, %Bal_ManEvalTwo.exit112.thread.i.i ] ; 3 uses
  %.48039.i.i = phi i32 [ %.37948.i.i, %.lr.ph.i88.i ], [ %.581.i.i, %Bal_ManEvalTwo.exit112.thread.i.i ] ; 3 uses
  %i.un = load i32, ptr %i.ul, align 4, !tbaa !50
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %.val57.i, i64 %indvars.iv68.i.i ; 2 uses
  %i.up = load i32, ptr %i.uo, align 4, !tbaa !50
  %i.uq = ashr i32 %i.un, 1                       ; 2 uses
  %i.ur = ashr i32 %i.up, 1                       ; 2 uses
  %.val36.i109.i.i = load ptr, ptr %i.pk, align 8, !tbaa !43
  %i.us = getelementptr i8, ptr %.val36.i109.i.i, i64 8
  %.val36.val.i110.i.i = load ptr, ptr %i.us, align 8, !tbaa !42 ; 3 uses
  %i.ut = sext i32 %i.uq to i64
  %i.uu = getelementptr inbounds [4 x i8], ptr %.val36.val.i110.i.i, i64 %i.ut
  %i.uv = load i32, ptr %i.uu, align 4, !tbaa !50
  %i.uw = ashr i32 %i.uv, 4                       ; 2 uses
  %i.ux = sext i32 %i.ur to i64
  %i.uy = getelementptr inbounds [4 x i8], ptr %.val36.val.i110.i.i, i64 %i.ux
  %i.uz = load i32, ptr %i.uy, align 4, !tbaa !50
  %i.va = ashr i32 %i.uz, 4                       ; 2 uses
  %i.vb = load i32, ptr %.val36.val.i110.i.i, align 4, !tbaa !50
  %i.vc = ashr i32 %i.vb, 4                       ; 2 uses
  %i.vd = tail call noundef i32 @llvm.smax.i32(i32 %i.va, i32 %i.vc) ; 2 uses
  %i.ve = tail call noundef i32 @llvm.smax.i32(i32 %i.uw, i32 %i.vd) ; 3 uses
  %i.vf = icmp eq i32 %i.ve, 0
  br i1 %i.vf, label %Bal_ManEvalTwo.exit112.thread.i.i, label %Bal_ManEvalTwo.exit112.i.i

Bal_ManEvalTwo.exit112.i.i:                       ; preds = %Gia_ObjIsXor.exit108.i.i
  %i.vg = icmp ne i32 %i.vc, %i.ve
  %i.vh = zext i1 %i.vg to i32
  %i.vi = icmp ne i32 %i.va, %i.ve
  %i.vj = zext i1 %i.vi to i32
  %i.vk = icmp slt i32 %i.uw, %i.vd
  %i.vl = zext i1 %i.vk to i32
  %i.vm = tail call i32 @Bal_ManDeriveCuts(ptr noundef nonnull readonly %.val53.i, i32 noundef %i.uq, i32 noundef %i.ur, i32 noundef 0, i32 poison, i32 poison, i32 poison, i32 noundef %i.vl, i32 noundef %i.vj, i32 noundef %i.vh, i32 poison, i32 poison, i32 noundef 0) ; 4 uses
  %i.vn = icmp eq i32 %i.vm, -1
  br i1 %i.vn, label %Bal_ManEvalTwo.exit112.thread.i.i, label %bb.dl

bb.dl:                                            ; preds = %Bal_ManEvalTwo.exit112.i.i
  %i.vo = load i32, ptr %i.ul, align 4, !tbaa !50
  %.val103.i.i = load ptr, ptr %i.pk, align 8, !tbaa !43
  %i.vp = getelementptr i8, ptr %.val103.i.i, i64 8
  %.val103.val.i.i = load ptr, ptr %i.vp, align 8, !tbaa !42 ; 2 uses
  %i.vq = ashr i32 %i.vo, 1
  %i.vr = sext i32 %i.vq to i64
  %i.vs = getelementptr inbounds [4 x i8], ptr %.val103.val.i.i, i64 %i.vr
  %i.vt = load i32, ptr %i.vs, align 4, !tbaa !50
  %i.vu = load i32, ptr %i.uo, align 4, !tbaa !50
  %i.vv = ashr i32 %i.vu, 1
  %i.vw = sext i32 %i.vv to i64
  %i.vx = getelementptr inbounds [4 x i8], ptr %.val103.val.i.i, i64 %i.vw
  %i.vy = load i32, ptr %i.vx, align 4, !tbaa !50
  %i.vz = tail call noundef i32 @llvm.smax.i32(i32 %i.vt, i32 %i.vy)
  %i.wa = icmp eq i32 %i.vm, %i.vz
  br i1 %i.wa, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.wb = trunc nsw i64 %indvars.iv68.i.i to i32
  %i.wc = shl i32 %i.wb, 16
  %i.wd = or i32 %i.wc, %i.um
  br label %Bal_ManFindBestPair.exit.i

bb.dn:                                            ; preds = %bb.dl
  %i.we = icmp sgt i32 %.441.i.i, %i.vm
  br i1 %i.we, label %bb.do, label %Bal_ManEvalTwo.exit112.thread.i.i

bb.do:                                            ; preds = %bb.dn
  %i.wf = trunc nsw i64 %indvars.iv68.i.i to i32
  br label %Bal_ManEvalTwo.exit112.thread.i.i

Bal_ManEvalTwo.exit112.thread.i.i:                ; preds = %bb.do, %bb.dn, %Bal_ManEvalTwo.exit112.i.i, %Gia_ObjIsXor.exit108.i.i
  %.581.i.i = phi i32 [ %.48039.i.i, %Bal_ManEvalTwo.exit112.i.i ], [ %i.um, %bb.do ], [ %.48039.i.i, %bb.dn ], [ %.48039.i.i, %Gia_ObjIsXor.exit108.i.i ] ; 2 uses
  %.575.i.i = phi i32 [ %.47440.i.i, %Bal_ManEvalTwo.exit112.i.i ], [ %i.wf, %bb.do ], [ %.47440.i.i, %bb.dn ], [ %.47440.i.i, %Gia_ObjIsXor.exit108.i.i ] ; 2 uses
  %.5.i.i = phi i32 [ %.441.i.i, %Bal_ManEvalTwo.exit112.i.i ], [ %i.vm, %bb.do ], [ %.441.i.i, %bb.dn ], [ %.441.i.i, %Gia_ObjIsXor.exit108.i.i ] ; 2 uses
  %indvars.iv.next69.i.i = add nuw nsw i64 %indvars.iv68.i.i, 1 ; 2 uses
  %lftr.wideiv.i.i = trunc i64 %indvars.iv.next69.i.i to i32
  %exitcond.not.i89.i = icmp eq i32 %.val52148.i, %lftr.wideiv.i.i
  br i1 %exitcond.not.i89.i, label %.loopexit.i.i, label %Gia_ObjIsXor.exit108.i.i, !llvm.loop !122

._crit_edge53.i.i:                                ; preds = %.loopexit.i.i
  %i.wg = icmp eq i32 %.4.lcssa.i.i, 1000000000
  br i1 %i.wg, label %._crit_edge53.thread.i.i, label %bb.dp

bb.dp:                                            ; preds = %._crit_edge53.i.i
  %i.wh = shl i32 %.474.lcssa.i.i, 16
  %i.wi = or i32 %i.wh, %.480.lcssa.i.i
  br label %Bal_ManFindBestPair.exit.i

._crit_edge53.thread.i.i:                         ; preds = %._crit_edge53.i.i
  %i.wj = shl i32 %.val52148.i, 16
  %i.wk = add i32 %i.wj, -65536
  %i.wl = add nsw i32 %.val52148.i, -2
  %i.wm = or i32 %i.wk, %i.wl
  br label %Bal_ManFindBestPair.exit.i

Bal_ManFindBestPair.exit.i:                       ; preds = %._crit_edge53.thread.i.i, %bb.dp, %bb.dm, %bb.dk, %bb.dg
  %.086.i.i = phi i32 [ %i.tx, %bb.dg ], [ %i.uk, %bb.dk ], [ %i.wd, %bb.dm ], [ %i.wi, %bb.dp ], [ %i.wm, %._crit_edge53.thread.i.i ] ; 2 uses
  %i.wn = ashr i32 %.086.i.i, 16
  %.val50.i = load ptr, ptr %i.op, align 8, !tbaa !42 ; 8 uses
  %i.wo = sext i32 %i.wn to i64
  %i.wp = getelementptr inbounds [4 x i8], ptr %.val50.i, i64 %i.wo
  %i.wq = load i32, ptr %i.wp, align 4, !tbaa !50 ; 3 uses
  %i.wr = and i32 %.086.i.i, 65535
  %i.ws = zext nneg i32 %i.wr to i64
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr %.val50.i, i64 %i.ws
  %i.wu = load i32, ptr %i.wt, align 4, !tbaa !50 ; 3 uses
  %i.wv = load i32, ptr %i.if, align 4, !tbaa !40 ; 8 uses
  %i.ww = icmp sgt i32 %i.wv, 0
  br i1 %i.ww, label %.lr.ph.i100.i, label %._crit_edge.i96.i

.lr.ph.i100.i:                                    ; preds = %Bal_ManFindBestPair.exit.i
  %wide.trip.count.i101.i = zext nneg i32 %i.wv to i64
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dr, %.lr.ph.i100.i
  %indvars.iv.i102.i = phi i64 [ 0, %.lr.ph.i100.i ], [ %indvars.iv.next.i103.i, %bb.dr ] ; 3 uses
  %i.wx = getelementptr inbounds nuw [4 x i8], ptr %.val50.i, i64 %indvars.iv.i102.i
  %i.wy = load i32, ptr %i.wx, align 4, !tbaa !50
  %i.wz = icmp eq i32 %i.wy, %i.wq
  br i1 %i.wz, label %._crit_edge.loopexit.i.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %indvars.iv.next.i103.i = add nuw nsw i64 %indvars.iv.i102.i, 1 ; 2 uses
  %exitcond.not.i104.i = icmp eq i64 %indvars.iv.next.i103.i, %wide.trip.count.i101.i
  br i1 %exitcond.not.i104.i, label %Vec_IntRemove.exit.i, label %bb.dq, !llvm.loop !123

._crit_edge.loopexit.i.i:                         ; preds = %bb.dq
  %i.xa = trunc nuw nsw i64 %indvars.iv.i102.i to i32
  br label %._crit_edge.i96.i

._crit_edge.i96.i:                                ; preds = %._crit_edge.loopexit.i.i, %Bal_ManFindBestPair.exit.i
  %.0.lcssa.i.i = phi i32 [ 0, %Bal_ManFindBestPair.exit.i ], [ %i.xa, %._crit_edge.loopexit.i.i ] ; 4 uses
  %i.xb = icmp eq i32 %.0.lcssa.i.i, %i.wv
  br i1 %i.xb, label %Vec_IntRemove.exit.i, label %.preheader.i97.i

.preheader.i97.i:                                 ; preds = %._crit_edge.i96.i
  %.123.i.i86 = add nuw nsw i32 %.0.lcssa.i.i, 1
  %i.xc = icmp slt i32 %.123.i.i86, %i.wv
  br i1 %i.xc, label %.lr.ph26.i.i, label %._crit_edge27.i.i

.lr.ph26.i.i:                                     ; preds = %.preheader.i97.i
  %i.xd = zext i32 %.0.lcssa.i.i to i64
  %i.xe = shl nuw nsw i64 %i.xd, 2                ; 2 uses
  %scevgep.i = getelementptr i8, ptr %.val50.i, i64 %i.xe
  %scevgep158.i = getelementptr i8, ptr %.val50.i, i64 4
  %scevgep159.i = getelementptr i8, ptr %scevgep158.i, i64 %i.xe
  %i.xf = add i32 %i.wv, -2
  %i.xg = sub i32 %i.xf, %.0.lcssa.i.i
  %i.xh = zext i32 %i.xg to i64
  %i.xi = shl nuw nsw i64 %i.xh, 2
  %i.xj = add nuw nsw i64 %i.xi, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 4 dereferenceable(1) %scevgep159.i, i64 %i.xj, i1 false), !tbaa !50
  %.pre.i99.i = load i32, ptr %i.if, align 4, !tbaa !40
  br label %._crit_edge27.i.i

._crit_edge27.i.i:                                ; preds = %.lr.ph26.i.i, %.preheader.i97.i
  %i.xk = phi i32 [ %.pre.i99.i, %.lr.ph26.i.i ], [ %i.wv, %.preheader.i97.i ]
  %i.xl = add nsw i32 %i.xk, -1                   ; 2 uses
  store i32 %i.xl, ptr %i.if, align 4, !tbaa !40
  br label %Vec_IntRemove.exit.i

Vec_IntRemove.exit.i:                             ; preds = %bb.dr, %._crit_edge27.i.i, %._crit_edge.i96.i
  %i.xm = phi i32 [ %i.xl, %._crit_edge27.i.i ], [ %i.wv, %._crit_edge.i96.i ], [ %i.wv, %bb.dr ] ; 6 uses
  %i.xn = icmp sgt i32 %i.xm, 0
  br i1 %i.xn, label %.lr.ph.i118.i, label %._crit_edge.i105.i

.lr.ph.i118.i:                                    ; preds = %Vec_IntRemove.exit.i
  %wide.trip.count.i119.i = zext nneg i32 %i.xm to i64
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dt, %.lr.ph.i118.i
  %indvars.iv.i120.i = phi i64 [ 0, %.lr.ph.i118.i ], [ %indvars.iv.next.i121.i, %bb.dt ] ; 3 uses
  %i.xo = getelementptr inbounds nuw [4 x i8], ptr %.val50.i, i64 %indvars.iv.i120.i
  %i.xp = load i32, ptr %i.xo, align 4, !tbaa !50
  %i.xq = icmp eq i32 %i.xp, %i.wu
  br i1 %i.xq, label %._crit_edge.loopexit.i123.i, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %indvars.iv.next.i121.i = add nuw nsw i64 %indvars.iv.i120.i, 1 ; 2 uses
  %exitcond.not.i122.i = icmp eq i64 %indvars.iv.next.i121.i, %wide.trip.count.i119.i
  br i1 %exitcond.not.i122.i, label %Vec_IntRemove.exit124.i, label %bb.ds, !llvm.loop !123

._crit_edge.loopexit.i123.i:                      ; preds = %bb.ds
  %i.xr = trunc nuw nsw i64 %indvars.iv.i120.i to i32
  br label %._crit_edge.i105.i

._crit_edge.i105.i:                               ; preds = %._crit_edge.loopexit.i123.i, %Vec_IntRemove.exit.i
  %.0.lcssa.i106.i = phi i32 [ 0, %Vec_IntRemove.exit.i ], [ %i.xr, %._crit_edge.loopexit.i123.i ] ; 4 uses
  %i.xs = icmp eq i32 %.0.lcssa.i106.i, %i.xm
  br i1 %i.xs, label %Vec_IntRemove.exit124.i, label %.preheader.i107.i

.preheader.i107.i:                                ; preds = %._crit_edge.i105.i
  %.123.i108.i = add nuw nsw i32 %.0.lcssa.i106.i, 1
  %i.xt = icmp slt i32 %.123.i108.i, %i.xm
  br i1 %i.xt, label %.lr.ph26.i112.i, label %._crit_edge27.i109.i

.lr.ph26.i112.i:                                  ; preds = %.preheader.i107.i
  %i.xu = zext i32 %.0.lcssa.i106.i to i64
  %i.xv = shl nuw nsw i64 %i.xu, 2                ; 2 uses
  %scevgep160.i = getelementptr i8, ptr %.val50.i, i64 %i.xv
  %scevgep161.i = getelementptr i8, ptr %.val50.i, i64 4
  %scevgep162.i = getelementptr i8, ptr %scevgep161.i, i64 %i.xv
  %i.xw = add i32 %i.xm, -2
  %i.xx = sub i32 %i.xw, %.0.lcssa.i106.i
  %i.xy = zext i32 %i.xx to i64
  %i.xz = shl nuw nsw i64 %i.xy, 2
  %i.ya = add nuw nsw i64 %i.xz, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep160.i, ptr noundef nonnull align 4 dereferenceable(1) %scevgep162.i, i64 %i.ya, i1 false), !tbaa !50
  %.pre.i117.i = load i32, ptr %i.if, align 4, !tbaa !40
  br label %._crit_edge27.i109.i

._crit_edge27.i109.i:                             ; preds = %.lr.ph26.i112.i, %.preheader.i107.i
  %i.yb = phi i32 [ %.pre.i117.i, %.lr.ph26.i112.i ], [ %i.xm, %.preheader.i107.i ]
  %i.yc = add nsw i32 %i.yb, -1
  store i32 %i.yc, ptr %i.if, align 4, !tbaa !40
  br label %Vec_IntRemove.exit124.i

Vec_IntRemove.exit124.i:                          ; preds = %bb.dt, %._crit_edge27.i109.i, %._crit_edge.i105.i
  %.val51.i = load i64, ptr %2, align 4           ; 4 uses
  %i.yd = and i64 %.val51.i, 2147483648
  %.not.i.i.i87 = icmp ne i64 %i.yd, 0
  %i.ye = and i64 %.val51.i, 536870911
  %i.yf = icmp eq i64 %i.ye, 536870911
  %narrow.i.not.i.i88 = or i1 %.not.i.i.i87, %i.yf
  br i1 %narrow.i.not.i.i88, label %Gia_ObjIsXor.exit.thread.i, label %Gia_ObjIsXor.exit.i89

Gia_ObjIsXor.exit.i89:                            ; preds = %Vec_IntRemove.exit124.i
  %i.yg = trunc i64 %.val51.i to i32
  %i.yh = and i32 %i.yg, 536870911
  %i.yi = lshr i64 %.val51.i, 32
  %i.yj = trunc nuw i64 %i.yi to i32
  %i.yk = and i32 %i.yj, 536870911
  %.not.i90 = icmp samesign ult i32 %i.yh, %i.yk
  br i1 %.not.i90, label %bb.du, label %Gia_ObjIsXor.exit.thread.i

bb.du:                                            ; preds = %Gia_ObjIsXor.exit.i89
  %i.yl = tail call i32 @Gia_ManHashXorReal(ptr noundef %0, i32 noundef %i.wq, i32 noundef %i.wu) #22
  br label %bb.dv

Gia_ObjIsXor.exit.thread.i:                       ; preds = %Gia_ObjIsXor.exit.i89, %Vec_IntRemove.exit124.i
  %i.ym = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.wq, i32 noundef %i.wu) #22
  br label %bb.dv

bb.dv:                                            ; preds = %Gia_ObjIsXor.exit.thread.i, %bb.du
  %.0.i = phi i32 [ %i.yl, %bb.du ], [ %i.ym, %Gia_ObjIsXor.exit.thread.i ] ; 2 uses
  %i.yn = tail call i32 @Bal_ManSetGateLevel(ptr noundef %.val53.i, ptr nonnull readonly poison, i32 noundef %.0.i) ; 0 uses
  %i.yo = load ptr, ptr %i.pk, align 8, !tbaa !43
  %i.yp = load i32, ptr %i.if, align 4, !tbaa !40 ; 7 uses
  %i.yq = load i32, ptr %i.ic, align 8, !tbaa !41
  %i.yr = icmp eq i32 %i.yp, %i.yq
  br i1 %i.yr, label %bb.dw, label %.Vec_IntPush.exit.i125_crit_edge.i

.Vec_IntPush.exit.i125_crit_edge.i:               ; preds = %bb.dv
  %.pre173.i = load ptr, ptr %i.op, align 8, !tbaa !42
  br label %Vec_IntPush.exit.i125.i

bb.dw:                                            ; preds = %bb.dv
  %i.ys = icmp slt i32 %i.yp, 16
  br i1 %i.ys, label %bb.dx, label %bb.ea

bb.dx:                                            ; preds = %bb.dw
  %i.yt = load ptr, ptr %i.op, align 8, !tbaa !42 ; 2 uses
  %.not9.i.i.i135.i = icmp eq ptr %i.yt, null
  br i1 %.not9.i.i.i135.i, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.yu = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.yt, i64 noundef 64) #24
  br label %Vec_IntGrow.exit11.sink.split.i.i132.i

bb.dz:                                            ; preds = %bb.dx
  %i.yv = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #23
  br label %Vec_IntGrow.exit11.sink.split.i.i132.i

bb.ea:                                            ; preds = %bb.dw
  %i.yw = icmp samesign ult i32 %i.yp, 1073741823
  %i.yx = shl nuw nsw i32 %i.yp, 1
  %spec.select.i.i129.i = select i1 %i.yw, i32 %i.yx, i32 2147483647 ; 4 uses
  %.not.i9.i.i130.i = icmp samesign ult i32 %i.yp, %spec.select.i.i129.i
  %.pre174.i = load ptr, ptr %i.op, align 8, !tbaa !42 ; 3 uses
  br i1 %.not.i9.i.i130.i, label %bb.eb, label %Vec_IntPush.exit.i125.i

bb.eb:                                            ; preds = %bb.ea
  %.not9.i10.i.i131.i = icmp eq ptr %.pre174.i, null
  %i.yy = zext nneg i32 %spec.select.i.i129.i to i64
  %i.yz = shl nuw nsw i64 %i.yy, 2                ; 2 uses
  br i1 %.not9.i10.i.i131.i, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.za = tail call ptr @realloc(ptr noundef nonnull %.pre174.i, i64 noundef %i.yz) #24
end_hunk_0
