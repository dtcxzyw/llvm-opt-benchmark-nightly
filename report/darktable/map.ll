Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/map?download=true
inline.NumInlined: 154
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_view_map_changed_callback_wait:bb.a
  br label %_not_clustered.exit95.thread.i.i.i

_not_clustered.exit95.thread.i.i.i:               ; preds = %_not_clustered.exit95.i.i.i, %_not_clustered.exit91.thread.i.i.i
  %.6.i.i.i = phi i32 [ %.5.i.i.i, %_not_clustered.exit91.thread.i.i.i ], [ %spec.select139.i.i.i, %_not_clustered.exit95.i.i.i ] ; 3 uses
  br i1 %i.pa, label %bb.ax, label %_can_form_cluster.exit.i.i

bb.ax:                                            ; preds = %_not_clustered.exit95.thread.i.i.i
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %i.qz, i64 %indvars.iv.next165.i.i ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 4
  %i.ry = load i32, ptr %i.rx, align 4, !tbaa !198 ; 2 uses
  %i.rz = icmp eq i32 %i.ry, 0
  br i1 %i.rz, label %_can_form_cluster.exit.i.i, label %_not_clustered.exit99.i.i.i

_not_clustered.exit99.i.i.i:                      ; preds = %bb.ax
  %i.sa = load ptr, ptr @db.0, align 8, !tbaa !190
  %i.sb = load i32, ptr %i.rw, align 4, !tbaa !197
  %i.sc = zext i32 %i.sb to i64
  %i.sd = getelementptr inbounds nuw [40 x i8], ptr %i.sa, i64 %i.sc
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 28
  %i.sf = load i32, ptr %i.se, align 4, !tbaa !156
  %.not71148.i.i.i = icmp slt i32 %i.sf, 0
  %i.sg = select i1 %.not71148.i.i.i, i32 %i.ry, i32 0
  %spec.select140.i.i.i = add i32 %i.sg, %.6.i.i.i
  br label %_can_form_cluster.exit.i.i

_can_form_cluster.exit.i.i:                       ; preds = %_not_clustered.exit99.i.i.i, %bb.ax, %_not_clustered.exit95.thread.i.i.i, %bb.av, %_not_clustered.exit87.thread.i.i.i
  %.7.i.i.i = phi i32 [ %.6.i.i.i, %bb.ax ], [ %spec.select140.i.i.i, %_not_clustered.exit99.i.i.i ], [ %.6.i.i.i, %_not_clustered.exit95.thread.i.i.i ], [ %.4.i.i.i, %bb.av ], [ %.4.i.i.i, %_not_clustered.exit87.thread.i.i.i ]
  %i.sh = load i32, ptr @db.6, align 8, !tbaa !271
  %.not100.i.i = icmp ult i32 %.7.i.i.i, %i.sh
  br i1 %.not100.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %_can_form_cluster.exit.i.i
  %i.si = trunc nuw i64 %indvars.iv164.i.i to i32
  call fastcc void @_add_expand_cluster(i32 noundef %i.lk, i32 noundef %i.si, i32 noundef %i.oh, i32 noundef 250)
  %i.sj = load i32, ptr @db.7, align 8, !tbaa !272
  %i.sk = add i32 %i.sj, 1                        ; 2 uses
  store i32 %i.sk, ptr @db.7, align 8, !tbaa !272
  %.pre197.i.i = load ptr, ptr @db.1, align 8, !tbaa !191 ; 2 uses
  %.pre199.i.i = load i32, ptr @db.4, align 8, !tbaa !192
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %_can_form_cluster.exit.i.i
  %.pre198223.i.i = phi ptr [ %.pre198224.i.i, %_can_form_cluster.exit.i.i ], [ %.pre197.i.i, %bb.ay ] ; 2 uses
  %i.sl = phi i32 [ %i.of, %_can_form_cluster.exit.i.i ], [ %.pre199.i.i, %bb.ay ] ; 5 uses
  %i.sm = phi ptr [ %i.og, %_can_form_cluster.exit.i.i ], [ %.pre197.i.i, %bb.ay ] ; 2 uses
  %i.sn = phi i32 [ %i.oh, %_can_form_cluster.exit.i.i ], [ %i.sk, %bb.ay ] ; 2 uses
  %i.so = zext i32 %i.sl to i64
  %i.sp = icmp samesign ult i64 %indvars.iv.next165.i.i, %i.so
  br i1 %i.sp, label %.peel.next.i.i, label %.loopexit109.loopexit.i.i, !llvm.loop !257

.loopexit109.loopexit.i.i:                        ; preds = %bb.az, %bb.aq
  %.pre198222.i.i = phi ptr [ %.pre198.i.i, %bb.aq ], [ %.pre198223.i.i, %bb.az ]
  %i.sq = phi ptr [ %i.oa, %bb.aq ], [ %i.sm, %bb.az ]
  %i.sr = phi i32 [ %i.ob, %bb.aq ], [ %i.sl, %bb.az ]
  %i.ss = phi i32 [ %i.oc, %bb.aq ], [ %i.sl, %bb.az ] ; 2 uses
  %i.st = phi i32 [ %i.od, %bb.aq ], [ %i.sn, %bb.az ]
  %.pre200.i.i = load i32, ptr @db.3, align 4, !tbaa !193
  br label %.loopexit109.i.i

.loopexit109.i.i:                                 ; preds = %.loopexit109.loopexit.i.i, %.preheader108.i.i, %.lr.ph123.i.i
  %.pre198221.i.i = phi ptr [ %.pre198222.i.i, %.loopexit109.loopexit.i.i ], [ %.pre198220.i.i, %.preheader108.i.i ], [ %.pre198220.i.i, %.lr.ph123.i.i ] ; 4 uses
  %i.su = phi ptr [ %i.sq, %.loopexit109.loopexit.i.i ], [ %i.lc, %.preheader108.i.i ], [ %i.lc, %.lr.ph123.i.i ]
  %i.sv = phi i32 [ %.pre200.i.i, %.loopexit109.loopexit.i.i ], [ %i.ld, %.preheader108.i.i ], [ %i.ld, %.lr.ph123.i.i ] ; 4 uses
  %i.sw = phi i32 [ %i.sr, %.loopexit109.loopexit.i.i ], [ %i.le, %.preheader108.i.i ], [ %i.le, %.lr.ph123.i.i ] ; 3 uses
  %i.sx = phi i32 [ %i.ss, %.loopexit109.loopexit.i.i ], [ %i.lf, %.preheader108.i.i ], [ %i.lf, %.lr.ph123.i.i ]
  %i.sy = phi i32 [ %i.st, %.loopexit109.loopexit.i.i ], [ %i.lg, %.preheader108.i.i ], [ %i.lg, %.lr.ph123.i.i ]
  %i.sz = phi i32 [ %i.ss, %.loopexit109.loopexit.i.i ], [ 0, %.preheader108.i.i ], [ %i.lh, %.lr.ph123.i.i ]
  %indvars.iv.next169.i.i = add nuw nsw i64 %indvars.iv168.i.i, 1 ; 2 uses
  %i.ta = zext i32 %i.sv to i64
  %i.tb = icmp samesign ult i64 %indvars.iv.next169.i.i, %i.ta
  br i1 %i.tb, label %.lr.ph123.i.i, label %.preheader107.i.i

.preheader106.i.i:                                ; preds = %.preheader107.i.i, %._crit_edge.i.i
  %.pre202226.i.i = phi ptr [ %.pre202227.i.i, %._crit_edge.i.i ], [ %.pre198221.i.i, %.preheader107.i.i ] ; 2 uses
  %i.tc = phi ptr [ %i.us, %._crit_edge.i.i ], [ %.pre198221.i.i, %.preheader107.i.i ] ; 2 uses
  %i.td = phi i32 [ %i.ut, %._crit_edge.i.i ], [ %i.sv, %.preheader107.i.i ] ; 2 uses
  %i.te = phi i32 [ %.fr153.i.i, %._crit_edge.i.i ], [ %i.sw, %.preheader107.i.i ] ; 2 uses
  %i.tf = phi i32 [ %i.uv, %._crit_edge.i.i ], [ %i.sw, %.preheader107.i.i ] ; 2 uses
  %i.tg = phi i32 [ %i.uw, %._crit_edge.i.i ], [ 1, %.preheader107.i.i ]
  %.065129.i.i = phi i32 [ %i.ux, %._crit_edge.i.i ], [ 0, %.preheader107.i.i ]
  %.not151.i.i = icmp eq i32 %i.tg, 0
  br i1 %.not151.i.i, label %._crit_edge.i.i, label %.lr.ph128.i.i

.preheader103.i.i:                                ; preds = %._crit_edge.i.i
  %.not152.i.i = icmp eq i32 %i.ut, 0
  br i1 %.not152.i.i, label %_dbscan.exit.i, label %.lr.ph140.i.i

.lr.ph140.i.i:                                    ; preds = %.preheader103.i.i
  %.not154.i.i = icmp eq i32 %.fr153.i.i, 0
  %i.th = load ptr, ptr @db.0, align 8            ; 6 uses
  br i1 %.not154.i.i, label %.lr.ph140.i..lr.ph142.i_crit_edge.i, label %.lr.ph140.split.us.preheader.i.i

.lr.ph140.i..lr.ph142.i_crit_edge.i:              ; preds = %.lr.ph140.i.i
  %.pre.i = zext i32 %i.ut to i64
  br label %.lr.ph142.i.i

.lr.ph140.split.us.preheader.i.i:                 ; preds = %.lr.ph140.i.i
  %db.7.promoted132.i.i = load i32, ptr @db.7, align 8
  %wide.trip.count184.i.i = zext i32 %i.ut to i64 ; 2 uses
  %wide.trip.count.i.i = zext i32 %.fr153.i.i to i64
  br label %.lr.ph140.split.us.i.i

.lr.ph140.split.us.i.i:                           ; preds = %..loopexit_crit_edge.us.i.i, %.lr.ph140.split.us.preheader.i.i
  %indvars.iv181.i.i = phi i64 [ 0, %.lr.ph140.split.us.preheader.i.i ], [ %indvars.iv.next182.i.i, %..loopexit_crit_edge.us.i.i ] ; 2 uses
  %db.7.promoted137138.us.i.i = phi i32 [ %db.7.promoted132.i.i, %.lr.ph140.split.us.preheader.i.i ], [ %db.7.promoted136.us.i.i, %..loopexit_crit_edge.us.i.i ] ; 3 uses
  %i.ti = getelementptr inbounds nuw [8 x i8], ptr %.pre202227.i.i, i64 %indvars.iv181.i.i
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !195 ; 2 uses
  %.not72.us.i.i = icmp eq ptr %i.tj, null
  br i1 %.not72.us.i.i, label %..loopexit_crit_edge.us.i.i, label %.preheader102.us.i.i

.preheader102.us.i.i:                             ; preds = %.lr.ph140.split.us.i.i, %_add_expand_cluster.exit.us.i.i
  %indvars.iv177.i.i = phi i64 [ %indvars.iv.next178.i.i, %_add_expand_cluster.exit.us.i.i ], [ 0, %.lr.ph140.split.us.i.i ] ; 2 uses
  %db.7.promoted135.us.i.i = phi i32 [ %db.7.promoted134.us.i.i, %_add_expand_cluster.exit.us.i.i ], [ %db.7.promoted137138.us.i.i, %.lr.ph140.split.us.i.i ] ; 4 uses
  %i.tk = phi i32 [ %i.ur, %_add_expand_cluster.exit.us.i.i ], [ %db.7.promoted137138.us.i.i, %.lr.ph140.split.us.i.i ] ; 6 uses
  %i.tl = getelementptr inbounds nuw [8 x i8], ptr %i.tj, i64 %indvars.iv177.i.i ; 3 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 4
  %i.tn = load i32, ptr %i.tm, align 4, !tbaa !198 ; 2 uses
  %i.to = icmp ugt i32 %i.tn, 1
  br i1 %i.to, label %bb.ba, label %_identical_positions.exit.thread.us.i.i

bb.ba:                                            ; preds = %.preheader102.us.i.i
  %i.tp = load i32, ptr %i.tl, align 4, !tbaa !197 ; 3 uses
  %i.tq = zext i32 %i.tp to i64                   ; 2 uses
  %i.tr = getelementptr inbounds nuw [40 x i8], ptr %i.th, i64 %i.tq ; 3 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 28
  %i.tt = load i32, ptr %i.ts, align 4, !tbaa !156
  %i.tu = icmp eq i32 %i.tt, -1
  br i1 %i.tu, label %bb.bb, label %_add_expand_cluster.exit.us.i.i

bb.bb:                                            ; preds = %bb.ba
  %i.tv = load double, ptr %i.tr, align 8, !tbaa !269
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tr, i64 8
  %i.tx = load double, ptr %i.tw, align 8, !tbaa !270
  br label %bb.bc

bb.bc:                                            ; preds = %bb.be, %bb.bb
  %i.ty = phi i64 [ %i.tq, %bb.bb ], [ %i.ua, %bb.be ]
  %i.tz = getelementptr inbounds nuw [40 x i8], ptr %i.th, i64 %i.ty
  %.0.in.i.us.i.i = getelementptr inbounds nuw i8, ptr %i.tz, i64 24
  %.0.i83.us.i.i = load i32, ptr %.0.in.i.us.i.i, align 8, !tbaa !273 ; 2 uses
  %.not.i84.us.i.i = icmp eq i32 %.0.i83.us.i.i, -1
  br i1 %.not.i84.us.i.i, label %_identical_positions.exit.us.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ua = zext i32 %.0.i83.us.i.i to i64          ; 2 uses
  %i.ub = getelementptr inbounds nuw [40 x i8], ptr %i.th, i64 %i.ua ; 2 uses
  %i.uc = load double, ptr %i.ub, align 8, !tbaa !269
  %i.ud = fcmp reassoc nsz arcp contract afn une double %i.uc, %i.tv
  br i1 %i.ud, label %_identical_positions.exit.thread.us.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ub, i64 8
  %i.uf = load double, ptr %i.ue, align 8, !tbaa !270
  %i.ug = fcmp reassoc nsz arcp contract afn une double %i.uf, %i.tx
  br i1 %i.ug, label %_identical_positions.exit.thread.us.i.i, label %bb.bc

_identical_positions.exit.thread.us.i.i:          ; preds = %bb.be, %bb.bd, %.preheader102.us.i.i
  %.not74.us.i.i = icmp eq i32 %i.tn, 0
  br i1 %.not74.us.i.i, label %_add_expand_cluster.exit.us.i.i, label %.thread.us.i.i

.thread.us.i.i:                                   ; preds = %_identical_positions.exit.thread.us.i.i
  %.pre205.i.i = load i32, ptr %i.tl, align 4, !tbaa !197 ; 3 uses
  %.phi.trans.insert.i.i = zext i32 %.pre205.i.i to i64
  %.phi.trans.insert206.i.i = getelementptr inbounds nuw [40 x i8], ptr %i.th, i64 %.phi.trans.insert.i.i
  %.phi.trans.insert207.i.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert206.i.i, i64 28
  %.pre208.i.i = load i32, ptr %.phi.trans.insert207.i.i, align 4, !tbaa !156
  %i.uh = icmp ne i32 %.pre208.i.i, -1
  %.not93.i90.us.i.i = icmp eq i32 %.pre205.i.i, -1
  %or.cond.us.i.i = or i1 %.not93.i90.us.i.i, %i.uh
  br i1 %or.cond.us.i.i, label %_add_expand_cluster.exit.us.i.i, label %.lr.ph.i91.us.i.i

.lr.ph.i91.us.i.i:                                ; preds = %.thread.us.i.i, %.lr.ph.i91.us.i.i
  %.05494.i92.us.i.i = phi i32 [ %.054.i93.us.i.i, %.lr.ph.i91.us.i.i ], [ %.pre205.i.i, %.thread.us.i.i ]
  %i.ui = zext i32 %.05494.i92.us.i.i to i64
  %i.uj = getelementptr inbounds nuw [40 x i8], ptr %i.th, i64 %i.ui ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 28
  store i32 -2, ptr %i.uk, align 4, !tbaa !156
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uj, i64 24
  %.054.i93.us.i.i = load i32, ptr %i.ul, align 4, !tbaa !131 ; 2 uses
  %.not.i94.us.i.i = icmp eq i32 %.054.i93.us.i.i, -1
  br i1 %.not.i94.us.i.i, label %_add_expand_cluster.exit.us.i.i, label %.lr.ph.i91.us.i.i

_identical_positions.exit.us.i.i:                 ; preds = %bb.bc
  %i.um = add i32 %i.tk, 1                        ; 5 uses
  store i32 %i.um, ptr @db.7, align 8, !tbaa !272
  %.not93.i.us.i.i = icmp eq i32 %i.tp, -1
  br i1 %.not93.i.us.i.i, label %_add_expand_cluster.exit.us.i.i, label %.lr.ph.i86.us.i.i

.lr.ph.i86.us.i.i:                                ; preds = %_identical_positions.exit.us.i.i, %.lr.ph.i86.us.i.i
  %.05494.i.us.i.i = phi i32 [ %.054.i.us.i.i, %.lr.ph.i86.us.i.i ], [ %i.tp, %_identical_positions.exit.us.i.i ]
  %i.un = zext i32 %.05494.i.us.i.i to i64
  %i.uo = getelementptr inbounds nuw [40 x i8], ptr %i.th, i64 %i.un ; 2 uses
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 28
  store i32 %i.tk, ptr %i.up, align 4, !tbaa !156
  %i.uq = getelementptr inbounds nuw i8, ptr %i.uo, i64 24
  %.054.i.us.i.i = load i32, ptr %i.uq, align 4, !tbaa !131 ; 2 uses
  %.not.i87.us.i.i = icmp eq i32 %.054.i.us.i.i, -1
  br i1 %.not.i87.us.i.i, label %_add_expand_cluster.exit.us.i.i, label %.lr.ph.i86.us.i.i

_add_expand_cluster.exit.us.i.i:                  ; preds = %.lr.ph.i91.us.i.i, %.lr.ph.i86.us.i.i, %_identical_positions.exit.us.i.i, %.thread.us.i.i, %_identical_positions.exit.thread.us.i.i, %bb.ba
  %db.7.promoted134.us.i.i = phi i32 [ %i.um, %.lr.ph.i86.us.i.i ], [ %db.7.promoted135.us.i.i, %_identical_positions.exit.thread.us.i.i ], [ %i.um, %_identical_positions.exit.us.i.i ], [ %db.7.promoted135.us.i.i, %.thread.us.i.i ], [ %db.7.promoted135.us.i.i, %bb.ba ], [ %db.7.promoted135.us.i.i, %.lr.ph.i91.us.i.i ] ; 2 uses
  %i.ur = phi i32 [ %i.um, %.lr.ph.i86.us.i.i ], [ %i.tk, %_identical_positions.exit.thread.us.i.i ], [ %i.um, %_identical_positions.exit.us.i.i ], [ %i.tk, %.thread.us.i.i ], [ %i.tk, %bb.ba ], [ %i.tk, %.lr.ph.i91.us.i.i ]
  %indvars.iv.next178.i.i = add nuw nsw i64 %indvars.iv177.i.i, 1 ; 2 uses
  %exitcond180.not.i.i = icmp eq i64 %indvars.iv.next178.i.i, %wide.trip.count.i.i
  br i1 %exitcond180.not.i.i, label %..loopexit_crit_edge.us.i.i, label %.preheader102.us.i.i

..loopexit_crit_edge.us.i.i:                      ; preds = %_add_expand_cluster.exit.us.i.i, %.lr.ph140.split.us.i.i
  %db.7.promoted136.us.i.i = phi i32 [ %db.7.promoted137138.us.i.i, %.lr.ph140.split.us.i.i ], [ %db.7.promoted134.us.i.i, %_add_expand_cluster.exit.us.i.i ]
  %indvars.iv.next182.i.i = add nuw nsw i64 %indvars.iv181.i.i, 1 ; 2 uses
  %exitcond185.not.i.i = icmp eq i64 %indvars.iv.next182.i.i, %wide.trip.count184.i.i
  br i1 %exitcond185.not.i.i, label %.lr.ph142.i.i, label %.lr.ph140.split.us.i.i

._crit_edge.i.i:                                  ; preds = %.loopexit105.i.i, %.preheader106.i.i
  %.pre202227.i.i = phi ptr [ %.pre202226.i.i, %.preheader106.i.i ], [ %.pre202229.i.i, %.loopexit105.i.i ] ; 5 uses
  %i.us = phi ptr [ %i.tc, %.preheader106.i.i ], [ %i.vz, %.loopexit105.i.i ]
  %i.ut = phi i32 [ %i.td, %.preheader106.i.i ], [ %i.wa, %.loopexit105.i.i ] ; 4 uses
  %i.uu = phi i32 [ %i.te, %.preheader106.i.i ], [ %i.wb, %.loopexit105.i.i ]
  %i.uv = phi i32 [ %i.tf, %.preheader106.i.i ], [ %i.wc, %.loopexit105.i.i ]
  %i.uw = phi i32 [ 0, %.preheader106.i.i ], [ %i.wa, %.loopexit105.i.i ]
  %.fr153.i.i = freeze i32 %i.uu                  ; 3 uses
  %i.ux = add nuw nsw i32 %.065129.i.i, 1         ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.ux, 20
  br i1 %exitcond.not.i.i, label %.preheader103.i.i, label %.preheader106.i.i, !llvm.loop !258

.lr.ph128.i.i:                                    ; preds = %.preheader106.i.i, %.loopexit105.i.i
  %.pre202.i.i = phi ptr [ %.pre202229.i.i, %.loopexit105.i.i ], [ %.pre202226.i.i, %.preheader106.i.i ] ; 3 uses
  %i.uy = phi ptr [ %i.vz, %.loopexit105.i.i ], [ %i.tc, %.preheader106.i.i ] ; 2 uses
  %i.uz = phi i32 [ %i.wa, %.loopexit105.i.i ], [ %i.td, %.preheader106.i.i ]
  %i.va = phi i32 [ %i.wb, %.loopexit105.i.i ], [ %i.te, %.preheader106.i.i ] ; 2 uses
  %i.vb = phi i32 [ %i.wc, %.loopexit105.i.i ], [ %i.tf, %.preheader106.i.i ] ; 2 uses
  %indvars.iv174.i.i = phi i64 [ %indvars.iv.next175.i.i, %.loopexit105.i.i ], [ 0, %.preheader106.i.i ] ; 4 uses
  %i.vc = getelementptr inbounds nuw [8 x i8], ptr %i.uy, i64 %indvars.iv174.i.i
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !195
  %.not75.i.i = icmp ne ptr %i.vd, null
  %i.ve = icmp ne i32 %i.vb, 0
  %or.cond146.i.i = select i1 %.not75.i.i, i1 %i.ve, i1 false
  br i1 %or.cond146.i.i, label %.lr.ph125.preheader.i.i, label %.loopexit105.i.i

.lr.ph125.preheader.i.i:                          ; preds = %.lr.ph128.i.i
  %i.vf = trunc nuw i64 %indvars.iv174.i.i to i32
  br label %.lr.ph125.i.i

.lr.ph125.i.i:                                    ; preds = %bb.bh, %.lr.ph125.preheader.i.i
  %.pre202230.i.i = phi ptr [ %.pre202.i.i, %.lr.ph125.preheader.i.i ], [ %.pre202231.i.i, %bb.bh ] ; 2 uses
  %i.vg = phi i32 [ %i.va, %.lr.ph125.preheader.i.i ], [ %i.vv, %bb.bh ] ; 2 uses
  %i.vh = phi ptr [ %.pre202.i.i, %.lr.ph125.preheader.i.i ], [ %i.vw, %bb.bh ] ; 3 uses
  %indvars.iv171.i.i = phi i64 [ 0, %.lr.ph125.preheader.i.i ], [ %indvars.iv.next172.i.i, %bb.bh ] ; 3 uses
  %i.vi = getelementptr inbounds nuw [8 x i8], ptr %i.vh, i64 %indvars.iv174.i.i
  %i.vj = load ptr, ptr %i.vi, align 8, !tbaa !195
  %i.vk = getelementptr inbounds nuw [8 x i8], ptr %i.vj, i64 %indvars.iv171.i.i ; 2 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 4
  %i.vm = load i32, ptr %i.vl, align 4, !tbaa !198
  %.not76.i.i = icmp eq i32 %i.vm, 0
  br i1 %.not76.i.i, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph125.i.i
  %i.vn = load ptr, ptr @db.0, align 8, !tbaa !190
  %i.vo = load i32, ptr %i.vk, align 4, !tbaa !197
  %i.vp = zext i32 %i.vo to i64
  %i.vq = getelementptr inbounds nuw [40 x i8], ptr %i.vn, i64 %i.vp
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 28
  %i.vs = load i32, ptr %i.vr, align 4, !tbaa !156 ; 2 uses
  %i.vt = icmp sgt i32 %i.vs, -1
  br i1 %i.vt, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.vu = trunc nuw i64 %indvars.iv171.i.i to i32
  call fastcc void @_add_expand_cluster(i32 noundef %i.vf, i32 noundef %i.vu, i32 noundef %i.vs, i32 noundef -1)
  %.pre201.i.i = load ptr, ptr @db.1, align 8, !tbaa !191 ; 2 uses
  %.pre203.i.i = load i32, ptr @db.4, align 8, !tbaa !192
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %.lr.ph125.i.i
  %.pre202231.i.i = phi ptr [ %.pre201.i.i, %bb.bg ], [ %.pre202230.i.i, %bb.bf ], [ %.pre202230.i.i, %.lr.ph125.i.i ] ; 2 uses
  %i.vv = phi i32 [ %.pre203.i.i, %bb.bg ], [ %i.vg, %bb.bf ], [ %i.vg, %.lr.ph125.i.i ] ; 4 uses
  %i.vw = phi ptr [ %.pre201.i.i, %bb.bg ], [ %i.vh, %bb.bf ], [ %i.vh, %.lr.ph125.i.i ] ; 2 uses
  %indvars.iv.next172.i.i = add nuw nsw i64 %indvars.iv171.i.i, 1 ; 2 uses
  %i.vx = zext i32 %i.vv to i64
  %i.vy = icmp samesign ult i64 %indvars.iv.next172.i.i, %i.vx
  br i1 %i.vy, label %.lr.ph125.i.i, label %.loopexit105.loopexit.i.i

.loopexit105.loopexit.i.i:                        ; preds = %bb.bh
  %.pre204.i.i = load i32, ptr @db.3, align 4, !tbaa !193
  br label %.loopexit105.i.i

.loopexit105.i.i:                                 ; preds = %.loopexit105.loopexit.i.i, %.lr.ph128.i.i
  %.pre202229.i.i = phi ptr [ %.pre202231.i.i, %.loopexit105.loopexit.i.i ], [ %.pre202.i.i, %.lr.ph128.i.i ] ; 2 uses
  %i.vz = phi ptr [ %i.vw, %.loopexit105.loopexit.i.i ], [ %i.uy, %.lr.ph128.i.i ] ; 2 uses
  %i.wa = phi i32 [ %.pre204.i.i, %.loopexit105.loopexit.i.i ], [ %i.uz, %.lr.ph128.i.i ] ; 4 uses
  %i.wb = phi i32 [ %i.vv, %.loopexit105.loopexit.i.i ], [ %i.va, %.lr.ph128.i.i ] ; 2 uses
  %i.wc = phi i32 [ %i.vv, %.loopexit105.loopexit.i.i ], [ %i.vb, %.lr.ph128.i.i ] ; 2 uses
  %indvars.iv.next175.i.i = add nuw nsw i64 %indvars.iv174.i.i, 1 ; 2 uses
  %i.wd = zext i32 %i.wa to i64
  %i.we = icmp samesign ult i64 %indvars.iv.next175.i.i, %i.wd
  br i1 %i.we, label %.lr.ph128.i.i, label %._crit_edge.i.i

.lr.ph142.i.i:                                    ; preds = %..loopexit_crit_edge.us.i.i, %.lr.ph140.i..lr.ph142.i_crit_edge.i
  %wide.trip.count189.i.pre-phi.i = phi i64 [ %.pre.i, %.lr.ph140.i..lr.ph142.i_crit_edge.i ], [ %wide.trip.count184.i.i, %..loopexit_crit_edge.us.i.i ]
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bk, %.lr.ph142.i.i
  %indvars.iv186.i.i = phi i64 [ 0, %.lr.ph142.i.i ], [ %indvars.iv.next187.i.i, %bb.bk ] ; 2 uses
  %i.wf = getelementptr inbounds nuw [8 x i8], ptr %.pre202227.i.i, i64 %indvars.iv186.i.i
  %i.wg = load ptr, ptr %i.wf, align 8, !tbaa !195 ; 2 uses
  %.not.i214.i = icmp eq ptr %i.wg, null
  br i1 %.not.i214.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @free(ptr noundef nonnull %i.wg) #23
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %indvars.iv.next187.i.i = add nuw nsw i64 %indvars.iv186.i.i, 1 ; 2 uses
  %exitcond190.not.i.i = icmp eq i64 %indvars.iv.next187.i.i, %wide.trip.count189.i.pre-phi.i
  br i1 %exitcond190.not.i.i, label %_dbscan.exit.i, label %bb.bi

_dbscan.exit.i:                                   ; preds = %bb.bk, %.preheader103.i.i, %.preheader107.i.i, %.preheader110.i.i, %_bin_points.exit.i.i
  %.pre209280287.i.i = phi ptr [ %i.hj, %_bin_points.exit.i.i ], [ %.pre191211.i.i, %.preheader110.i.i ], [ %.pre202227.i.i, %.preheader103.i.i ], [ %.pre198221.i.i, %.preheader107.i.i ], [ %.pre202227.i.i, %bb.bk ]
  call void @free(ptr noundef %.pre209280287.i.i) #23
  store ptr null, ptr @db.1, align 8, !tbaa !191
  %i.wh = load i32, ptr @db.7, align 8, !tbaa !272
  call void @dt_show_times(ptr noundef nonnull %7, ptr noundef nonnull @.str.60) #23
  %i.wi = add nsw i32 %i.wh, 1
  %i.wj = sext i32 %i.wi to i64
  %i.wk = call noalias ptr @calloc(i64 noundef %i.wj, i64 noundef 4) #24 ; 2 uses
  %i.wl = call ptr @dt_act_on_get_images(i32 noundef 0, i32 noundef 0, i32 noundef 0) #23 ; 5 uses
  %.not203.i = icmp eq ptr %i.wl, null            ; 2 uses
  %xtraiter = and i64 %i.dh, 1
  %i.wm = icmp eq i32 %.0173.i, 1
  %unroll_iter = and i64 %i.dh, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod229 = trunc i32 %.0173.i to i1
  br label %bb.bl

bb.bl:                                            ; preds = %bb.cj, %_dbscan.exit.i
  %indvars.iv282.i = phi i64 [ 0, %_dbscan.exit.i ], [ %indvars.iv.next283.i, %bb.cj ] ; 2 uses
  %i.wn = getelementptr inbounds nuw [40 x i8], ptr %i.di, i64 %indvars.iv282.i ; 8 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 28
  %i.wp = load i32, ptr %i.wo, align 4, !tbaa !156 ; 7 uses
  %i.wq = icmp eq i32 %i.wp, -2
  br i1 %i.wq, label %bb.bm, label %bb.bp

bb.bm:                                            ; preds = %bb.bl
  %i.wr = call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 1, i64 noundef 64) #24 ; 9 uses
  %.not207.i = icmp eq ptr %i.wr, null
  br i1 %.not207.i, label %bb.cj, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wn, i64 32
  %i.wt = load i32, ptr %i.ws, align 8, !tbaa !158 ; 2 uses
  store i32 %i.wt, ptr %i.wr, align 8, !tbaa !151
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wr, i64 24
  store i32 -2, ptr %i.wu, align 8, !tbaa !157
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wr, i64 28
  store i32 1, ptr %i.wv, align 4, !tbaa !152
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wr, i64 8
  %i.wx = load <2 x double>, ptr %i.wn, align 8, !tbaa !135
  %i.wy = fmul reassoc nsz arcp contract afn <2 x double> %i.wx, splat (double f0x404CA5DC1A63C1F8)
  %i.wz = shufflevector <2 x double> %i.wy, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.wz, ptr %i.ww, align 8, !tbaa !135
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wr, i64 32
  store i32 1, ptr %i.xa, align 8, !tbaa !200
  br i1 %.not203.i, label %.sink.split.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.xb = sext i32 %i.wt to i64
  %i.xc = inttoptr i64 %i.xb to ptr
  %i.xd = call ptr @g_list_find(ptr noundef nonnull %i.wl, ptr noundef %i.xc) #23
  %.not209.i = icmp ne ptr %i.xd, null
  %i.xe = zext i1 %.not209.i to i32
  %i.xf = getelementptr inbounds nuw i8, ptr %i.wr, i64 36
  store i32 %i.xe, ptr %i.xf, align 4, !tbaa !201
  br label %.sink.split.i

bb.bp:                                            ; preds = %bb.bl
  %i.xg = sext i32 %i.wp to i64
  %i.xh = getelementptr inbounds [4 x i8], ptr %i.wk, i64 %i.xg ; 2 uses
  %i.xi = load i32, ptr %i.xh, align 4, !tbaa !131
  %.not201.i = icmp eq i32 %i.xi, 0
  br i1 %.not201.i, label %bb.bq, label %bb.cj

bb.bq:                                            ; preds = %bb.bp
  store i32 1, ptr %i.xh, align 4, !tbaa !131
  %i.xj = call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 1, i64 noundef 64) #24 ; 12 uses
  %.not202.i = icmp eq ptr %i.xj, null
  br i1 %.not202.i, label %bb.cj, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.xk = getelementptr inbounds nuw i8, ptr %i.wn, i64 32
  %i.xl = load i32, ptr %i.xk, align 8, !tbaa !158 ; 2 uses
  store i32 %i.xl, ptr %i.xj, align 8, !tbaa !151
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xj, i64 24
  store i32 %i.wp, ptr %i.xm, align 8, !tbaa !157
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xj, i64 32 ; 6 uses
  store i32 1, ptr %i.xn, align 8, !tbaa !200
  br i1 %.not203.i, label %.split.us.preheader.i, label %.split.preheader.i

.split.preheader.i:                               ; preds = %bb.br
  %i.xo = sext i32 %i.xl to i64
  %i.xp = inttoptr i64 %i.xo to ptr
  %i.xq = call ptr @g_list_find(ptr noundef nonnull %i.wl, ptr noundef %i.xp) #23
  %i.xr = icmp ne ptr %i.xq, null
end_hunk_0
