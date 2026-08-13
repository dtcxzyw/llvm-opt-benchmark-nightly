inline.NumInlined: 36
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_changes_tooltip_callback:bb.a

bb.ba:                                            ; preds = %bb.az
  %i.ou = tail call noalias ptr (ptr, ...) @g_strconcat(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.60, ptr noundef null) #15 ; 2 uses
  %i.ov = load ptr, ptr %5, align 8, !tbaa !133
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 768
  %i.ox = load ptr, ptr %i.ow, align 16, !tbaa !160
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 408
  %i.oz = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.61, i32 noundef 5) #15
  %i.pa = load ptr, ptr %5, align 8, !tbaa !133
  %i.pb = load i32, ptr %i.os, align 4, !tbaa !168
  %i.pc = sitofp reassoc nsz arcp contract afn i32 %i.pb to float
  %i.pd = load ptr, ptr %i.al, align 8, !tbaa !147
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 408
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !168
  %i.pg = sitofp reassoc nsz arcp contract afn i32 %i.pf to float
  %i.ph = tail call fastcc ptr @_lib_history_bauhaus_text(ptr noundef nonnull %i.oy, ptr noundef %i.oz, ptr noundef %i.pa, float noundef %i.pc, float noundef %i.pg) ; 2 uses
  %.not529 = icmp eq ptr %i.ph, null
  br i1 %.not529, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.pi = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.61, i32 noundef 5) #15
  %i.pj = load i32, ptr %i.os, align 4, !tbaa !168
  %i.pk = load ptr, ptr %i.al, align 8, !tbaa !147
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 408
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !168
  %i.pn = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef %i.ou, ptr noundef %i.pi, i32 noundef %i.pj, i32 noundef %i.pm) #15
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.bb
  %i.po = phi ptr [ %i.pn, %bb.bb ], [ %i.ph, %bb.ba ]
  %i.pp = add nuw nsw i32 %.11, 1
  %i.pq = zext nneg i32 %.11 to i64
  %i.pr = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.pq
  store ptr %i.po, ptr %i.pr, align 8, !tbaa !145
  tail call void @g_free(ptr noundef %i.ou) #15
  %.pre695 = load ptr, ptr %i.al, align 8, !tbaa !147
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.az
  %i.ps = phi ptr [ %.pre695, %bb.bc ], [ %i.op, %bb.az ] ; 2 uses
  %.12 = phi i32 [ %i.pp, %bb.bc ], [ %.11, %bb.az ] ; 3 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 412
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !169
  %i.pv = getelementptr inbounds nuw i8, ptr %.0423.lcssa, i64 412 ; 3 uses
  %i.pw = load i32, ptr %i.pv, align 4, !tbaa !169
  %.not530 = icmp eq i32 %i.pu, %i.pw
  br i1 %.not530, label %bb.bh, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.px = tail call noalias ptr (ptr, ...) @g_strconcat(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.60, ptr noundef null) #15 ; 2 uses
  %i.py = load ptr, ptr %5, align 8, !tbaa !133
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 768
  %i.qa = load ptr, ptr %i.pz, align 16, !tbaa !160
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 412
  %i.qc = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.62, i32 noundef 5) #15
  %i.qd = load ptr, ptr %5, align 8, !tbaa !133
  %i.qe = load i32, ptr %i.pv, align 4, !tbaa !169
  %i.qf = sitofp reassoc nsz arcp contract afn i32 %i.qe to float
  %i.qg = load ptr, ptr %i.al, align 8, !tbaa !147
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 412
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !169
  %i.qj = sitofp reassoc nsz arcp contract afn i32 %i.qi to float
  %i.qk = tail call fastcc ptr @_lib_history_bauhaus_text(ptr noundef nonnull %i.qb, ptr noundef %i.qc, ptr noundef %i.qd, float noundef %i.qf, float noundef %i.qj) ; 2 uses
  %.not531 = icmp eq ptr %i.qk, null
  br i1 %.not531, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.ql = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.62, i32 noundef 5) #15
  %i.qm = load i32, ptr %i.pv, align 4, !tbaa !169
  %i.qn = load ptr, ptr %i.al, align 8, !tbaa !147
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 412
  %i.qp = load i32, ptr %i.qo, align 4, !tbaa !169
  %i.qq = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef %i.px, ptr noundef %i.ql, i32 noundef %i.qm, i32 noundef %i.qp) #15
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf
  %i.qr = phi ptr [ %i.qq, %bb.bf ], [ %i.qk, %bb.be ]
  %i.qs = add nuw nsw i32 %.12, 1
  %i.qt = zext nneg i32 %.12 to i64
  %i.qu = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.qt
  store ptr %i.qr, ptr %i.qu, align 8, !tbaa !145
  tail call void @g_free(ptr noundef %i.px) #15
  %.pre696 = load ptr, ptr %i.al, align 8, !tbaa !147
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bd
  %i.qv = phi ptr [ %.pre696, %bb.bg ], [ %i.ps, %bb.bd ] ; 2 uses
  %.13 = phi i32 [ %i.qs, %bb.bg ], [ %.12, %bb.bd ] ; 3 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 416
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !170 ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %.0423.lcssa, i64 416 ; 2 uses
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !170 ; 2 uses
  %.not532 = icmp eq i32 %i.qx, %i.qz
  br i1 %.not532, label %bb.bk, label %.preheader

.preheader:                                       ; preds = %bb.bh
  %i.ra = load ptr, ptr @dt_develop_invert_mask_names, align 8, !tbaa !154 ; 2 uses
  %.not533643 = icmp eq ptr %i.ra, null
  br i1 %.not533643, label %._crit_edge648.thread, label %.lr.ph647

._crit_edge648:                                   ; preds = %.lr.ph647
  %i.rb = icmp ne ptr %spec.select562, null
  %i.rc = icmp ne ptr %spec.select576, null
  %or.cond13 = select i1 %i.rb, i1 %i.rc, i1 false
  br i1 %or.cond13, label %bb.bi, label %._crit_edge648.thread

.lr.ph647:                                        ; preds = %.preheader, %.lr.ph647
  %i.rd = phi ptr [ %i.rj, %.lr.ph647 ], [ %i.ra, %.preheader ] ; 2 uses
  %.0467646 = phi ptr [ %spec.select562, %.lr.ph647 ], [ null, %.preheader ]
  %.0469645 = phi ptr [ %spec.select576, %.lr.ph647 ], [ null, %.preheader ]
  %.0471644 = phi ptr [ %i.ri, %.lr.ph647 ], [ @dt_develop_invert_mask_names, %.preheader ] ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %.0471644, i64 8
  %i.rf = load i32, ptr %i.re, align 8, !tbaa !156 ; 2 uses
  %i.rg = icmp eq i32 %i.rf, %i.qz
  %spec.select562 = select i1 %i.rg, ptr %i.rd, ptr %.0467646 ; 3 uses
  %i.rh = icmp eq i32 %i.rf, %i.qx
  %spec.select576 = select i1 %i.rh, ptr %i.rd, ptr %.0469645 ; 3 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %.0471644, i64 24 ; 2 uses
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !154 ; 2 uses
  %.not533 = icmp eq ptr %i.rj, null
  br i1 %.not533, label %._crit_edge648, label %.lr.ph647

._crit_edge648.thread:                            ; preds = %.preheader, %._crit_edge648
  %i.rk = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.63, i32 noundef 5) #15
  %i.rl = load i32, ptr %i.qy, align 4, !tbaa !170
  %i.rm = load ptr, ptr %i.al, align 8, !tbaa !147
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 416
  %i.ro = load i32, ptr %i.rn, align 4, !tbaa !170
  %i.rp = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.42, ptr noundef %i.rk, i32 noundef %i.rl, i32 noundef %i.ro) #15
  br label %bb.bj

bb.bi:                                            ; preds = %._crit_edge648
  %i.rq = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.63, i32 noundef 5) #15
  %i.rr = tail call ptr @g_dpgettext(ptr noundef null, ptr noundef nonnull %spec.select562, i64 noundef 0) #15
  %i.rs = tail call ptr @g_dpgettext(ptr noundef null, ptr noundef nonnull %spec.select576, i64 noundef 0) #15
  %i.rt = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.44, ptr noundef %i.rq, ptr noundef %i.rr, ptr noundef %i.rs) #15
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %._crit_edge648.thread
  %i.ru = phi ptr [ %i.rp, %._crit_edge648.thread ], [ %i.rt, %bb.bi ]
  %i.rv = add nuw nsw i32 %.13, 1
  %i.rw = zext nneg i32 %.13 to i64
  %i.rx = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.rw
  store ptr %i.ru, ptr %i.rx, align 8, !tbaa !145
  %.pre697 = load ptr, ptr %i.al, align 8, !tbaa !147
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bh
  %i.ry = phi ptr [ %.pre697, %bb.bj ], [ %i.qv, %bb.bh ] ; 2 uses
  %.14 = phi i32 [ %i.rv, %bb.bj ], [ %.13, %bb.bh ] ; 3 uses
  %i.rz = load i32, ptr %i.hq, align 4, !tbaa !162
  %i.sa = and i32 %i.rz, 4
  %.not534 = icmp eq i32 %i.sa, 0
  %i.sb = getelementptr inbounds nuw i8, ptr %i.ry, i64 20
  %i.sc = load i32, ptr %i.sb, align 4, !tbaa !162
  %i.sd = and i32 %i.sc, 4
  %.not535 = icmp eq i32 %i.sd, 0
  %i.se = select i1 %.not535, i32 45, i32 43      ; 2 uses
  %i.sf = select i1 %.not534, i32 45, i32 43      ; 2 uses
  %.not536 = icmp eq i32 %i.se, %i.sf
  br i1 %.not536, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.sg = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.65, i32 noundef 5) #15
  %i.sh = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.64, ptr noundef %i.sg, i32 noundef %i.sf, i32 noundef %i.se) #15
  %i.si = add nuw nsw i32 %.14, 1
  %i.sj = zext nneg i32 %.14 to i64
  %i.sk = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.sj
  store ptr %i.sh, ptr %i.sk, align 8, !tbaa !145
  %.pre698 = load ptr, ptr %i.al, align 8, !tbaa !147
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.sl = phi ptr [ %.pre698, %bb.bl ], [ %i.ry, %bb.bk ]
  %.15 = phi i32 [ %i.si, %bb.bl ], [ %.14, %bb.bk ] ; 3 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 24
  %i.sn = load i32, ptr %i.sm, align 4, !tbaa !171 ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %.0423.lcssa, i64 24
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !171 ; 2 uses
  %.not537 = icmp eq i32 %i.sn, %i.sp
  br i1 %.not537, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.sq = icmp eq i32 %i.sp, 0
  %i.sr = icmp eq i32 %i.sn, 0
  %.str.67..str.68 = select i1 %i.sr, ptr @.str.67, ptr @.str.68
  %.str.67.sink = select i1 %i.sq, ptr @.str.66, ptr %.str.67..str.68
  %i.ss = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %.str.67.sink, i32 noundef 5) #15
  %i.st = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef %i.ss) #15
  %i.su = add nuw nsw i32 %.15, 1
  %i.sv = zext nneg i32 %.15 to i64
  %i.sw = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.sv
  store ptr %i.st, ptr %i.sw, align 8, !tbaa !145
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.16 = phi i32 [ %i.su, %bb.bn ], [ %.15, %bb.bm ] ; 3 uses
  %i.sx = load ptr, ptr %5, align 8, !tbaa !133
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 784
  %i.sz = load ptr, ptr %i.sy, align 16, !tbaa !172 ; 2 uses
  %.not548 = icmp eq ptr %i.sz, null
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 384 ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %.0423.lcssa, i64 28 ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %.0423.lcssa, i64 68 ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %.0423.lcssa, i64 324 ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.a, i64 50 ; 4 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %i.a, i64 100 ; 4 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %i.a, i64 150 ; 4 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.a, i64 25 ; 4 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.a, i64 75 ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.a, i64 125 ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %i.a, i64 175 ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.a, i64 75 ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.a, i64 125 ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.a, i64 175 ; 2 uses
  br i1 %.not548, label %.loopexit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.to = load ptr, ptr %i.ta, align 8, !tbaa !173 ; 3 uses
  %.not549652 = icmp eq ptr %i.to, null
  br i1 %.not549652, label %bb.bq, label %.lr.ph657

.lr.ph657:                                        ; preds = %bb.bp
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !178
  %.not550756 = icmp eq ptr %i.tp, null
  br i1 %.not550756, label %bb.bq, label %.lr.ph760

bb.bq:                                            ; preds = %bb.by, %.lr.ph657, %bb.bp
  %.18.lcssa = phi i32 [ %.16, %bb.bp ], [ %.16, %.lr.ph657 ], [ %.20, %bb.by ]
  %i.tq = load ptr, ptr %i.ta, align 8, !tbaa !173 ; 3 uses
  %.not549652.1 = icmp eq ptr %i.tq, null
  br i1 %.not549652.1, label %.loopexit, label %.lr.ph657.1

.lr.ph657.1:                                      ; preds = %bb.bq
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !178
  %.not550756.1 = icmp eq ptr %i.tr, null
  br i1 %.not550756.1, label %.loopexit, label %.lr.ph760.1

.lr.ph760.1:                                      ; preds = %.lr.ph657.1, %bb.bu
  %.0462653759.1 = phi i32 [ %.2464.1, %bb.bu ], [ 1, %.lr.ph657.1 ] ; 3 uses
  %.0461654758.1 = phi ptr [ %i.wl, %bb.bu ], [ %i.tq, %.lr.ph657.1 ] ; 4 uses
  %.18655757.1 = phi i32 [ %.20.1, %bb.bu ], [ %.18.lcssa, %.lr.ph657.1 ] ; 5 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %.0461654758.1, i64 40
  %i.tt = load i32, ptr %i.ts, align 4, !tbaa !78 ; 4 uses
  %i.tu = load i32, ptr %i.tb, align 4, !tbaa !181 ; 2 uses
  %i.tv = shl nuw i32 1, %i.tt                    ; 2 uses
  %i.tw = and i32 %i.tu, %i.tv
  %i.tx = load ptr, ptr %i.al, align 8, !tbaa !147 ; 3 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 28
  %i.tz = load i32, ptr %i.ty, align 4, !tbaa !181 ; 2 uses
  %i.ua = and i32 %i.tz, %i.tv
  %i.ub = add i32 %i.tt, 16
  %i.uc = shl nuw i32 1, %i.ub                    ; 2 uses
  %i.ud = and i32 %i.uc, %i.tu                    ; 2 uses
  %i.ue = and i32 %i.tz, %i.uc                    ; 2 uses
  %i.uf = shl i32 %i.tt, 2
  %i.ug = zext i32 %i.uf to i64                   ; 2 uses
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %i.tc, i64 %i.ug ; 5 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %i.tx, i64 68
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %i.ui, i64 %i.ug ; 5 uses
  %i.uk = zext i32 %i.tt to i64                   ; 2 uses
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr %i.td, i64 %i.uk
  %i.um = load float, ptr %i.ul, align 4, !tbaa !182
  %i.un = call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.um) ; 4 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %i.tx, i64 324
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %i.uo, i64 %i.uk
  %i.uq = load float, ptr %i.up, align 4, !tbaa !182
  %i.ur = call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.uq) ; 4 uses
  %i.us = icmp ne i32 %i.tw, 0                    ; 2 uses
  %i.ut = icmp ne i32 %i.ua, 0                    ; 2 uses
  %or.cond17.1 = select i1 %i.us, i1 true, i1 %i.ut
  br i1 %or.cond17.1, label %bb.br, label %bb.bu

bb.br:                                            ; preds = %.lr.ph760.1
  %i.uu = load i128, ptr %i.uh, align 1
  %i.uv = load i128, ptr %i.uj, align 1
  %i.uw = icmp ne i128 %i.uu, %i.uv
  %i.ux = zext i1 %i.uw to i32
  %.not551.1 = icmp eq i32 %i.ux, 0
  %.not552.1 = icmp eq i32 %i.ud, %i.ue
  %or.cond563.1 = select i1 %.not551.1, i1 %.not552.1, i1 false
  br i1 %or.cond563.1, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %.not553.1 = icmp eq i32 %.0462653759.1, 0
  br i1 %.not553.1, label %bb.bt, label %g_strdup_inline.exit.1

g_strdup_inline.exit.1:                           ; preds = %bb.bs
  %i.uy = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.70, i32 noundef 5) #15
  %i.uz = call noalias ptr @g_strdup(ptr noundef %i.uy) #15
  %i.va = add nsw i32 %.18655757.1, 1
  %i.vb = sext i32 %.18655757.1 to i64
  %i.vc = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.vb
  store ptr %i.uz, ptr %i.vc, align 8, !tbaa !145
  br label %bb.bt

bb.bt:                                            ; preds = %g_strdup_inline.exit.1, %bb.bs
  %.19.1 = phi i32 [ %i.va, %g_strdup_inline.exit.1 ], [ %.18655757.1, %bb.bs ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.vd = getelementptr inbounds nuw i8, ptr %.0461654758.1, i64 56 ; 8 uses
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !183
  %i.vf = load float, ptr %i.uh, align 4, !tbaa !182
  call void %i.ve(float noundef %i.vf, float noundef %i.un, ptr noundef nonnull %i.a, i32 noundef 25) #15
  %i.vg = load ptr, ptr %i.vd, align 8, !tbaa !183
  %i.vh = load float, ptr %i.uj, align 4, !tbaa !182
  call void %i.vg(float noundef %i.vh, float noundef %i.ur, ptr noundef nonnull %i.th, i32 noundef 25) #15
  %i.vi = load ptr, ptr %i.vd, align 8, !tbaa !183
  %i.vj = getelementptr inbounds nuw i8, ptr %i.uh, i64 4
  %i.vk = load float, ptr %i.vj, align 4, !tbaa !182
  call void %i.vi(float noundef %i.vk, float noundef %i.un, ptr noundef nonnull %i.te, i32 noundef 25) #15
  %i.vl = load ptr, ptr %i.vd, align 8, !tbaa !183
  %i.vm = getelementptr inbounds nuw i8, ptr %i.uj, i64 4
  %i.vn = load float, ptr %i.vm, align 4, !tbaa !182
  call void %i.vl(float noundef %i.vn, float noundef %i.ur, ptr noundef nonnull %i.tl, i32 noundef 25) #15
  %i.vo = load ptr, ptr %i.vd, align 8, !tbaa !183
  %i.vp = getelementptr inbounds nuw i8, ptr %i.uh, i64 8
  %i.vq = load float, ptr %i.vp, align 4, !tbaa !182
  call void %i.vo(float noundef %i.vq, float noundef %i.un, ptr noundef nonnull %i.tf, i32 noundef 25) #15
  %i.vr = load ptr, ptr %i.vd, align 8, !tbaa !183
  %i.vs = getelementptr inbounds nuw i8, ptr %i.uj, i64 8
  %i.vt = load float, ptr %i.vs, align 4, !tbaa !182
  call void %i.vr(float noundef %i.vt, float noundef %i.ur, ptr noundef nonnull %i.tm, i32 noundef 25) #15
  %i.vu = load ptr, ptr %i.vd, align 8, !tbaa !183
  %i.vv = getelementptr inbounds nuw i8, ptr %i.uh, i64 12
  %i.vw = load float, ptr %i.vv, align 4, !tbaa !182
  call void %i.vu(float noundef %i.vw, float noundef %i.un, ptr noundef nonnull %i.tg, i32 noundef 25) #15
  %i.vx = load ptr, ptr %i.vd, align 8, !tbaa !183
  %i.vy = getelementptr inbounds nuw i8, ptr %i.uj, i64 12
  %i.vz = load float, ptr %i.vy, align 4, !tbaa !182
  call void %i.vx(float noundef %i.vz, float noundef %i.ur, ptr noundef nonnull %i.tn, i32 noundef 25) #15
  %.not555.1 = icmp eq i32 %i.ud, 0
  %i.wa = select i1 %.not555.1, ptr @.str.72, ptr @.str.71
  %i.wb = select i1 %i.us, ptr %i.wa, ptr @.str.24
  %.not556.1 = icmp eq i32 %i.ue, 0
  %i.wc = select i1 %.not556.1, ptr @.str.72, ptr @.str.71
  %i.wd = select i1 %i.ut, ptr %i.wc, ptr @.str.24
  %i.we = getelementptr inbounds nuw i8, ptr %.0461654758.1, i64 72
  %i.wf = load ptr, ptr %i.we, align 8, !tbaa !184
  %i.wg = call ptr @dcgettext(ptr noundef null, ptr noundef %i.wf, i32 noundef 5) #15
  %i.wh = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.73, ptr noundef %i.wg, ptr noundef nonnull %i.a, ptr noundef nonnull %i.te, ptr noundef nonnull %i.tf, ptr noundef nonnull %i.tg, ptr noundef nonnull %i.wb, ptr noundef nonnull %i.th, ptr noundef nonnull %i.ti, ptr noundef nonnull %i.tj, ptr noundef nonnull %i.tk, ptr noundef nonnull %i.wd) #15
  %i.wi = add nsw i32 %.19.1, 1
  %i.wj = sext i32 %.19.1 to i64
  %i.wk = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.wj
  store ptr %i.wh, ptr %i.wk, align 8, !tbaa !145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.br, %.lr.ph760.1
  %.2464.1 = phi i32 [ 0, %bb.bt ], [ %.0462653759.1, %bb.br ], [ %.0462653759.1, %.lr.ph760.1 ]
  %.20.1 = phi i32 [ %i.wi, %bb.bt ], [ %.18655757.1, %bb.br ], [ %.18655757.1, %.lr.ph760.1 ]
  %i.wl = getelementptr inbounds nuw i8, ptr %.0461654758.1, i64 80 ; 2 uses
  %i.wm = load ptr, ptr %i.wl, align 8, !tbaa !178
  %.not550.1 = icmp eq ptr %i.wm, null
  br i1 %.not550.1, label %.loopexit, label %.lr.ph760.1

.lr.ph760:                                        ; preds = %.lr.ph657, %bb.by
  %.0462653759 = phi i32 [ %.2464, %bb.by ], [ 1, %.lr.ph657 ] ; 3 uses
  %.0461654758 = phi ptr [ %i.zg, %bb.by ], [ %i.to, %.lr.ph657 ] ; 4 uses
  %.18655757 = phi i32 [ %.20, %bb.by ], [ %.16, %.lr.ph657 ] ; 5 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %.0461654758, i64 44
  %i.wo = load i32, ptr %i.wn, align 4, !tbaa !78 ; 4 uses
  %i.wp = load i32, ptr %i.tb, align 4, !tbaa !181 ; 2 uses
  %i.wq = shl nuw i32 1, %i.wo                    ; 2 uses
  %i.wr = and i32 %i.wp, %i.wq
  %i.ws = load ptr, ptr %i.al, align 8, !tbaa !147 ; 3 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 28
  %i.wu = load i32, ptr %i.wt, align 4, !tbaa !181 ; 2 uses
  %i.wv = and i32 %i.wu, %i.wq
  %i.ww = add i32 %i.wo, 16
  %i.wx = shl nuw i32 1, %i.ww                    ; 2 uses
  %i.wy = and i32 %i.wx, %i.wp                    ; 2 uses
  %i.wz = and i32 %i.wu, %i.wx                    ; 2 uses
  %i.xa = shl i32 %i.wo, 2
  %i.xb = zext i32 %i.xa to i64                   ; 2 uses
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr %i.tc, i64 %i.xb ; 5 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %i.ws, i64 68
  %i.xe = getelementptr inbounds nuw [4 x i8], ptr %i.xd, i64 %i.xb ; 5 uses
  %i.xf = zext i32 %i.wo to i64                   ; 2 uses
  %i.xg = getelementptr inbounds nuw [4 x i8], ptr %i.td, i64 %i.xf
  %i.xh = load float, ptr %i.xg, align 4, !tbaa !182
  %i.xi = call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.xh) ; 4 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %i.ws, i64 324
  %i.xk = getelementptr inbounds nuw [4 x i8], ptr %i.xj, i64 %i.xf
  %i.xl = load float, ptr %i.xk, align 4, !tbaa !182
  %i.xm = call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.xl) ; 4 uses
  %i.xn = icmp ne i32 %i.wr, 0                    ; 2 uses
  %i.xo = icmp ne i32 %i.wv, 0                    ; 2 uses
  %or.cond17 = select i1 %i.xn, i1 true, i1 %i.xo
  br i1 %or.cond17, label %bb.bv, label %bb.by

bb.bv:                                            ; preds = %.lr.ph760
  %i.xp = load i128, ptr %i.xc, align 1
  %i.xq = load i128, ptr %i.xe, align 1
  %i.xr = icmp ne i128 %i.xp, %i.xq
  %i.xs = zext i1 %i.xr to i32
  %.not551 = icmp eq i32 %i.xs, 0
  %.not552 = icmp eq i32 %i.wy, %i.wz
  %or.cond563 = select i1 %.not551, i1 %.not552, i1 false
  br i1 %or.cond563, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %.not553 = icmp eq i32 %.0462653759, 0
  br i1 %.not553, label %bb.bx, label %g_strdup_inline.exit

g_strdup_inline.exit:                             ; preds = %bb.bw
  %i.xt = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.69, i32 noundef 5) #15
  %i.xu = call noalias ptr @g_strdup(ptr noundef %i.xt) #15
  %i.xv = add nsw i32 %.18655757, 1
  %i.xw = sext i32 %.18655757 to i64
  %i.xx = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.xw
  store ptr %i.xu, ptr %i.xx, align 8, !tbaa !145
  br label %bb.bx

bb.bx:                                            ; preds = %g_strdup_inline.exit, %bb.bw
  %.19 = phi i32 [ %i.xv, %g_strdup_inline.exit ], [ %.18655757, %bb.bw ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.xy = getelementptr inbounds nuw i8, ptr %.0461654758, i64 56 ; 8 uses
  %i.xz = load ptr, ptr %i.xy, align 8, !tbaa !183
  %i.ya = load float, ptr %i.xc, align 4, !tbaa !182
  call void %i.xz(float noundef %i.ya, float noundef %i.xi, ptr noundef nonnull %i.a, i32 noundef 25) #15
  %i.yb = load ptr, ptr %i.xy, align 8, !tbaa !183
  %i.yc = load float, ptr %i.xe, align 4, !tbaa !182
  call void %i.yb(float noundef %i.yc, float noundef %i.xm, ptr noundef nonnull %i.th, i32 noundef 25) #15
  %i.yd = load ptr, ptr %i.xy, align 8, !tbaa !183
  %i.ye = getelementptr inbounds nuw i8, ptr %i.xc, i64 4
  %i.yf = load float, ptr %i.ye, align 4, !tbaa !182
  call void %i.yd(float noundef %i.yf, float noundef %i.xi, ptr noundef nonnull %i.te, i32 noundef 25) #15
  %i.yg = load ptr, ptr %i.xy, align 8, !tbaa !183
  %i.yh = getelementptr inbounds nuw i8, ptr %i.xe, i64 4
  %i.yi = load float, ptr %i.yh, align 4, !tbaa !182
  call void %i.yg(float noundef %i.yi, float noundef %i.xm, ptr noundef nonnull %i.tl, i32 noundef 25) #15
  %i.yj = load ptr, ptr %i.xy, align 8, !tbaa !183
  %i.yk = getelementptr inbounds nuw i8, ptr %i.xc, i64 8
  %i.yl = load float, ptr %i.yk, align 4, !tbaa !182
  call void %i.yj(float noundef %i.yl, float noundef %i.xi, ptr noundef nonnull %i.tf, i32 noundef 25) #15
  %i.ym = load ptr, ptr %i.xy, align 8, !tbaa !183
  %i.yn = getelementptr inbounds nuw i8, ptr %i.xe, i64 8
  %i.yo = load float, ptr %i.yn, align 4, !tbaa !182
  call void %i.ym(float noundef %i.yo, float noundef %i.xm, ptr noundef nonnull %i.tm, i32 noundef 25) #15
  %i.yp = load ptr, ptr %i.xy, align 8, !tbaa !183
  %i.yq = getelementptr inbounds nuw i8, ptr %i.xc, i64 12
  %i.yr = load float, ptr %i.yq, align 4, !tbaa !182
  call void %i.yp(float noundef %i.yr, float noundef %i.xi, ptr noundef nonnull %i.tg, i32 noundef 25) #15
  %i.ys = load ptr, ptr %i.xy, align 8, !tbaa !183
  %i.yt = getelementptr inbounds nuw i8, ptr %i.xe, i64 12
  %i.yu = load float, ptr %i.yt, align 4, !tbaa !182
  call void %i.ys(float noundef %i.yu, float noundef %i.xm, ptr noundef nonnull %i.tn, i32 noundef 25) #15
  %.not555 = icmp eq i32 %i.wy, 0
  %i.yv = select i1 %.not555, ptr @.str.72, ptr @.str.71
  %i.yw = select i1 %i.xn, ptr %i.yv, ptr @.str.24
  %.not556 = icmp eq i32 %i.wz, 0
  %i.yx = select i1 %.not556, ptr @.str.72, ptr @.str.71
  %i.yy = select i1 %i.xo, ptr %i.yx, ptr @.str.24
  %i.yz = getelementptr inbounds nuw i8, ptr %.0461654758, i64 72
  %i.za = load ptr, ptr %i.yz, align 8, !tbaa !184
  %i.zb = call ptr @dcgettext(ptr noundef null, ptr noundef %i.za, i32 noundef 5) #15
  %i.zc = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.73, ptr noundef %i.zb, ptr noundef nonnull %i.a, ptr noundef nonnull %i.te, ptr noundef nonnull %i.tf, ptr noundef nonnull %i.tg, ptr noundef nonnull %i.yw, ptr noundef nonnull %i.th, ptr noundef nonnull %i.ti, ptr noundef nonnull %i.tj, ptr noundef nonnull %i.tk, ptr noundef nonnull %i.yy) #15
  %i.zd = add nsw i32 %.19, 1
  %i.ze = sext i32 %.19 to i64
  %i.zf = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.ze
  store ptr %i.zc, ptr %i.zf, align 8, !tbaa !145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.by

bb.by:                                            ; preds = %bb.bv, %.lr.ph760, %bb.bx
  %.2464 = phi i32 [ 0, %bb.bx ], [ %.0462653759, %bb.bv ], [ %.0462653759, %.lr.ph760 ]
  %.20 = phi i32 [ %i.zd, %bb.bx ], [ %.18655757, %bb.bv ], [ %.18655757, %.lr.ph760 ] ; 2 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %.0461654758, i64 80 ; 2 uses
  %i.zh = load ptr, ptr %i.zg, align 8, !tbaa !178
  %.not550 = icmp eq ptr %i.zh, null
  br i1 %.not550, label %bb.bq, label %.lr.ph760

.loopexit:                                        ; preds = %bb.bq, %.lr.ph657.1, %bb.bu, %bb.bo, %bb.f
  %i.zi = call noalias ptr @g_strjoinv(ptr noundef nonnull @.str.74, ptr noundef nonnull %i.k) #15 ; 5 uses
  call void @g_strfreev(ptr noundef nonnull %i.k) #15
  %i.zj = load i8, ptr %i.zi, align 1, !tbaa !185 ; 2 uses
  %.not538 = icmp eq i8 %i.zj, 0
  br i1 %.not538, label %bb.ci, label %bb.bz

bb.bz:                                            ; preds = %.loopexit
  %i.zk = load ptr, ptr @_changes_tooltip_callback.view, align 8, !tbaa !186
  %.not539 = icmp eq ptr %i.zk, null
  br i1 %.not539, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.zl = call ptr @gtk_text_view_new() #15       ; 2 uses
  store ptr %i.zl, ptr @_changes_tooltip_callback.view, align 8, !tbaa !186
  call void @dt_gui_add_class(ptr noundef %i.zl, ptr noundef nonnull @.str.33) #15
  %i.zm = load ptr, ptr @_changes_tooltip_callback.view, align 8, !tbaa !186
  call void @dt_gui_add_class(ptr noundef %i.zm, ptr noundef nonnull @.str.32) #15
  %i.zn = load ptr, ptr @_changes_tooltip_callback.view, align 8, !tbaa !186
  %i.zo = call i64 @g_signal_connect_data(ptr noundef %i.zn, ptr noundef nonnull @.str.75, ptr noundef nonnull @gtk_widget_destroyed, ptr noundef nonnull @_changes_tooltip_callback.view, ptr noundef null, i32 noundef 0) #15 ; 0 uses
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.zp = call ptr @localeconv() #15              ; 2 uses
  %i.zq = load i8, ptr %i.zi, align 1, !tbaa !185
  %.not540663 = icmp eq i8 %i.zq, 0
  br i1 %.not540663, label %._crit_edge672, label %.lr.ph671

._crit_edge672.loopexit:                          ; preds = %bb.ch
  %i.zr = add i32 %.sroa.26.3, 4
  br label %._crit_edge672

._crit_edge672:                                   ; preds = %._crit_edge672.loopexit, %bb.cb
  %.sroa.0.0.lcssa = phi i32 [ 0, %bb.cb ], [ %.sroa.0.2, %._crit_edge672.loopexit ] ; 3 uses
  %.sroa.10.0.lcssa = phi i32 [ 0, %bb.cb ], [ %.sroa.10.3, %._crit_edge672.loopexit ] ; 2 uses
  %.sroa.15.0.lcssa = phi i32 [ 0, %bb.cb ], [ %.sroa.15.3, %._crit_edge672.loopexit ]
  %.sroa.19.0.lcssa = phi i32 [ 0, %bb.cb ], [ %.sroa.19.3, %._crit_edge672.loopexit ]
  %.sroa.26.0.lcssa = phi i32 [ 4, %bb.cb ], [ %i.zr, %._crit_edge672.loopexit ]
  %i.zs = add nsw i32 %.sroa.15.0.lcssa, %.sroa.10.0.lcssa
  %spec.select564 = call i32 @llvm.smax.i32(i32 %.sroa.19.0.lcssa, i32 %i.zs)
  %i.zt = load ptr, ptr @_changes_tooltip_callback.view, align 8, !tbaa !186
  %i.zu = call ptr @gtk_widget_create_pango_layout(ptr noundef %i.zt, ptr noundef nonnull @.str.77) #15 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @pango_layout_get_size(ptr noundef %i.zu, ptr noundef nonnull %i.b, ptr noundef null) #15
  call void @g_object_unref(ptr noundef %i.zu) #15
  %i.zv = load i32, ptr %i.b, align 4, !tbaa !78  ; 5 uses
  %i.zw = mul nsw i32 %i.zv, %.sroa.0.0.lcssa
  %i.zx = add i32 %.sroa.0.0.lcssa, 1
  %i.zy = add i32 %i.zx, %.sroa.10.0.lcssa
  %i.zz = mul nsw i32 %i.zv, %i.zy
  %i.aaa = add nsw i32 %spec.select564, %.sroa.0.0.lcssa ; 3 uses
  %i.aab = add nsw i32 %i.aaa, 1
  %i.aac = mul nsw i32 %i.zv, %i.aab
  %i.aad = add nsw i32 %i.aaa, 3
  %i.aae = mul nsw i32 %i.zv, %i.aad
  %i.aaf = add i32 %.sroa.26.0.lcssa, %i.aaa
  %i.aag = mul nsw i32 %i.zv, %i.aaf
  %i.aah = call ptr (i32, i32, i32, i32, ...) @pango_tab_array_new_with_positions(i32 noundef 5, i32 noundef 0, i32 noundef 0, i32 noundef %i.zw, i32 noundef 3, i32 noundef %i.zz, i32 noundef 0, i32 noundef %i.aac, i32 noundef 0, i32 noundef %i.aae, i32 noundef 3, i32 noundef %i.aag) #15 ; 2 uses
  %i.aai = load ptr, ptr @_changes_tooltip_callback.view, align 8, !tbaa !186
  call void @gtk_text_view_set_tabs(ptr noundef %i.aai, ptr noundef %i.aah) #15
  call void @pango_tab_array_free(ptr noundef %i.aah) #15
  %i.aaj = load ptr, ptr @_changes_tooltip_callback.view, align 8, !tbaa !186
  %i.aak = call ptr @gtk_text_view_get_buffer(ptr noundef %i.aaj) #15
  call void @gtk_text_buffer_set_text(ptr noundef %i.aak, ptr noundef nonnull %i.zi, i32 noundef -1) #15
  %i.aal = load ptr, ptr @_changes_tooltip_callback.view, align 8, !tbaa !186
  call void @gtk_tooltip_set_custom(ptr noundef %4, ptr noundef %i.aal) #15
  %i.aam = load ptr, ptr @_changes_tooltip_callback.view, align 8, !tbaa !186
  call void @gtk_widget_map(ptr noundef %i.aam) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %bb.ci

.lr.ph671:                                        ; preds = %bb.cb, %bb.ch
  %.0434669 = phi ptr [ %spec.select569, %bb.ch ], [ %i.zi, %bb.cb ] ; 5 uses
  %.sroa.26.0668 = phi i32 [ %.sroa.26.3, %bb.ch ], [ 0, %bb.cb ] ; 4 uses
  %.sroa.19.0667 = phi i32 [ %.sroa.19.3, %bb.ch ], [ 0, %bb.cb ] ; 3 uses
  %.sroa.15.0666 = phi i32 [ %.sroa.15.3, %bb.ch ], [ 0, %bb.cb ] ; 4 uses
  %.sroa.10.0665 = phi i32 [ %.sroa.10.3, %bb.ch ], [ 0, %bb.cb ] ; 4 uses
  %.sroa.0.0664 = phi i32 [ %.sroa.0.2, %bb.ch ], [ 0, %bb.cb ] ; 3 uses
  %i.aan = call ptr @g_strstr_len(ptr noundef nonnull %.0434669, i64 noundef -1, ptr noundef nonnull @.str.74) #15 ; 2 uses
  %.not541 = icmp eq ptr %i.aan, null
  br i1 %.not541, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %.lr.ph671
  %i.aao = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0434669) #17
  %i.aap = getelementptr inbounds nuw i8, ptr %.0434669, i64 %i.aao
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %.lr.ph671
  %.0433 = phi ptr [ %i.aan, %.lr.ph671 ], [ %i.aap, %bb.cc ] ; 3 uses
  %i.aaq = ptrtoint ptr %.0433 to i64             ; 4 uses
  %i.aar = ptrtoint ptr %.0434669 to i64          ; 2 uses
  %i.aas = sub i64 %i.aaq, %i.aar
  %i.aat = call ptr @g_strstr_len(ptr noundef nonnull %.0434669, i64 noundef %i.aas, ptr noundef nonnull @.str.76) #15 ; 3 uses
  %.not542 = icmp eq ptr %i.aat, null
  br i1 %.not542, label %bb.ch, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.aau = sext i32 %.sroa.0.0664 to i64
  %i.aav = ptrtoint ptr %i.aat to i64
  %i.aaw = sub i64 %i.aav, %i.aar                 ; 2 uses
  %.not543 = icmp slt i64 %i.aaw, %i.aau
  %i.aax = trunc i64 %i.aaw to i32
  %i.aay = add i32 %i.aax, 1
  %.sroa.0.1 = select i1 %.not543, i32 %.sroa.0.0664, i32 %i.aay ; 3 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aat, i64 2 ; 3 uses
  %i.aba = ptrtoint ptr %i.aaz to i64             ; 3 uses
  %i.abb = sub i64 %i.aaq, %i.aba
  %i.abc = call ptr @g_strstr_len(ptr noundef nonnull %i.aaz, i64 noundef %i.abb, ptr noundef nonnull @.str.76) #15 ; 3 uses
  %.not544 = icmp eq ptr %i.abc, null
  br i1 %.not544, label %bb.ch, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.abd = sext i32 %.sroa.19.0667 to i64
  %i.abe = ptrtoint ptr %i.abc to i64             ; 3 uses
  %i.abf = sub i64 %i.abe, %i.aba                 ; 2 uses
  %spec.select565577 = call i64 @llvm.smax.i64(i64 %i.abf, i64 %i.abd)
  %spec.select565 = trunc i64 %spec.select565577 to i32 ; 2 uses
  %i.abg = load ptr, ptr %i.zp, align 8, !tbaa !187
  %i.abh = call ptr @g_strstr_len(ptr noundef nonnull %i.aaz, i64 noundef %i.abf, ptr noundef %i.abg) #15 ; 2 uses
  %.not545 = icmp eq ptr %i.abh, null             ; 2 uses
  %i.abi = sext i32 %.sroa.10.0665 to i64
  %i.abj = ptrtoint ptr %i.abh to i64             ; 2 uses
  %i.abk = sub i64 %i.abj, %i.aba
  %spec.select566578 = call i64 @llvm.smax.i64(i64 %i.abk, i64 %i.abi)
  %spec.select566 = trunc i64 %spec.select566578 to i32
  %.sroa.10.1 = select i1 %.not545, i32 %.sroa.10.0665, i32 %spec.select566 ; 2 uses
  %i.abl = sext i32 %.sroa.15.0666 to i64
  %i.abm = sub i64 %i.abe, %i.abj
  %spec.select567579 = call i64 @llvm.smax.i64(i64 %i.abm, i64 %i.abl)
  %spec.select567 = trunc i64 %spec.select567579 to i32
  %.sroa.15.1 = select i1 %.not545, i32 %.sroa.15.0666, i32 %spec.select567 ; 2 uses
  %i.abn = sub i64 %i.aaq, %i.abe
  %i.abo = call ptr @g_strrstr_len(ptr noundef nonnull %i.abc, i64 noundef %i.abn, ptr noundef nonnull @.str.76) #15
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abo, i64 1 ; 2 uses
  %i.abq = ptrtoint ptr %i.abp to i64             ; 2 uses
  %i.abr = sub i64 %i.aaq, %i.abq
  %i.abs = load ptr, ptr %i.zp, align 8, !tbaa !187
  %i.abt = call ptr @g_strstr_len(ptr noundef nonnull %i.abp, i64 noundef %i.abr, ptr noundef %i.abs) #15 ; 2 uses
  %.not546 = icmp eq ptr %i.abt, null
  br i1 %.not546, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.abu = sext i32 %.sroa.26.0668 to i64
  %i.abv = ptrtoint ptr %i.abt to i64
  %i.abw = sub i64 %i.abv, %i.abq
  %spec.select568580 = call i64 @llvm.smax.i64(i64 %i.abw, i64 %i.abu)
  %spec.select568 = trunc i64 %spec.select568580 to i32
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.ce, %bb.cf, %bb.cd
  %.sroa.0.2 = phi i32 [ %.sroa.0.0664, %bb.cd ], [ %.sroa.0.1, %bb.cf ], [ %.sroa.0.1, %bb.ce ], [ %.sroa.0.1, %bb.cg ] ; 2 uses
  %.sroa.10.3 = phi i32 [ %.sroa.10.0665, %bb.cd ], [ %.sroa.10.1, %bb.cf ], [ %.sroa.10.0665, %bb.ce ], [ %.sroa.10.1, %bb.cg ] ; 2 uses
  %.sroa.15.3 = phi i32 [ %.sroa.15.0666, %bb.cd ], [ %.sroa.15.1, %bb.cf ], [ %.sroa.15.0666, %bb.ce ], [ %.sroa.15.1, %bb.cg ] ; 2 uses
  %.sroa.19.3 = phi i32 [ %.sroa.19.0667, %bb.cd ], [ %spec.select565, %bb.cf ], [ %.sroa.19.0667, %bb.ce ], [ %spec.select565, %bb.cg ] ; 2 uses
  %.sroa.26.3 = phi i32 [ %.sroa.26.0668, %bb.cd ], [ %.sroa.26.0668, %bb.cf ], [ %.sroa.26.0668, %bb.ce ], [ %spec.select568, %bb.cg ] ; 2 uses
  %i.abx = load i8, ptr %.0433, align 1, !tbaa !185
  %.not547 = icmp ne i8 %i.abx, 0
  %spec.select569.idx = zext i1 %.not547 to i64
  %spec.select569 = getelementptr inbounds nuw i8, ptr %.0433, i64 %spec.select569.idx ; 2 uses
  %i.aby = load i8, ptr %spec.select569, align 1, !tbaa !185
  %.not540 = icmp eq i8 %i.aby, 0
  br i1 %.not540, label %._crit_edge672.loopexit, label %.lr.ph671

bb.ci:                                            ; preds = %._crit_edge672, %.loopexit
  %i.abz = sext i8 %i.zj to i32
  call void @g_free(ptr noundef nonnull %i.zi) #15
  ret i32 %i.abz
}

declare void @dt_gui_widget_reallocate_now(ptr noundef) local_unnamed_addr #5

declare ptr @gtk_widget_get_ancestor(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @gtk_scrolled_window_get_type() local_unnamed_addr #7

declare ptr @gtk_scrolled_window_get_vadjustment(ptr noundef) local_unnamed_addr #5

declare void @gtk_adjustment_set_value(ptr noundef, double noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @gui_reset(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !79
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1552
  %i.c = load i32, ptr %i.b, align 16, !tbaa !80  ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @dt_conf_get_bool(ptr noundef nonnull @.str.22) #15
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 5) #15
  %i.g = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef 5) #15
  %i.h = tail call i32 (ptr, ptr, ptr, ...) @dt_gui_show_yes_no_dialog(ptr noundef %i.f, ptr noundef nonnull @.str.24, ptr noundef %i.g) #15
  %.not2 = icmp eq i32 %i.h, 0
  br i1 %.not2, label %bb.e, label %bb.d

end_hunk_0
