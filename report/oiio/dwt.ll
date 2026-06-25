inline.NumInlined: 158
inline.NumDeleted: 40
begin_hunk_0_@opj_dwt_decode:bb.a
  %.in315.us370.2.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.in315.v.us369.2.i.i
  %i.qz = getelementptr inbounds nuw i8, ptr %.in315.us370.i.i, i64 8
  %i.ra = add i32 %i.qs, -1
  %.in315.v.us369.3.i.i = zext i32 %i.ra to i64
  %.in315.us370.3.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.in315.v.us369.3.i.i
  %i.rb = getelementptr inbounds nuw i8, ptr %.in315.us370.i.i, i64 12
  %i.rc = icmp sgt i32 %.0175296.i, 1
  %or.cond.i213.i = or i1 %i.rc, %.not320.us.i.i
  %i.rd = icmp slt i32 %i.lb, 1
  %..i.i = tail call i32 @llvm.smin.i32(i32 %i.lb, i32 %i.ii)
  %.pn341.in.i.i = shl i32 %..i.i, 3
  %.pn341.i.i = add i32 %.pn341.in.i.i, -4
  %i.re = icmp slt i32 %i.lb, 0
  %.not312.i.i = icmp slt i32 %i.lb, %i.ii
  %i.rf = add i32 %i.qf, -4                       ; 2 uses
  %invariant.op.i.i = or disjoint i32 %i.pt, 4
  %i.rg = zext i32 %i.rf to i64                   ; 2 uses
  %i.rh = zext i32 %.pn341.i.i to i64
  %i.ri = zext i32 %invariant.op.i.i to i64
  %.in311.ph.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.rh ; 4 uses
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.pu ; 7 uses
  %.in311.ph.1.i.i = getelementptr inbounds nuw i8, ptr %.in311.ph.i.i, i64 4
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 4 ; 2 uses
  %.in311.ph.2.i.i = getelementptr inbounds nuw i8, ptr %.in311.ph.i.i, i64 8
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rj, i64 8 ; 4 uses
  %.in311.ph.3.i.i = getelementptr inbounds nuw i8, ptr %.in311.ph.i.i, i64 12
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rj, i64 12 ; 2 uses
  %i.rn = add nuw nsw i32 %i.lb, 1                ; 2 uses
  %spec.select.i218.i = tail call i32 @llvm.smin.i32(i32 %i.ld, i32 %i.ii) ; 8 uses
  %i.ro = add nuw nsw i32 %i.lb, 2                ; 2 uses
  %i.rp = icmp slt i32 %i.ro, %spec.select.i218.i
  %i.rq = sext i32 %i.pt to i64
  %i.rr = getelementptr inbounds [4 x i8], ptr %i.hs, i64 %i.rq
  %i.rs = sext i32 %i.rn to i64
  %i.rt = sext i32 %spec.select.i218.i to i64
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.rg ; 3 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 8
  %i.rw = getelementptr inbounds nuw i8, ptr %i.ru, i64 12
  %i.rx = add i32 %.0175296.i, -1
  %spec.select322.i.i = tail call i32 @llvm.smin.i32(i32 %i.lg, i32 %i.rx) ; 8 uses
  %i.ry = add nuw nsw i32 %i.le, 1                ; 2 uses
  %i.rz = icmp slt i32 %i.ry, %spec.select322.i.i
  %i.sa = sext i32 %i.pz to i64
  %i.sb = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.sa
  %i.sc = sext i32 %i.le to i64
  %i.sd = sext i32 %spec.select322.i.i to i64
  %i.se = add i32 %i.qs, -8                       ; 3 uses
  %.not304.us.i.i = icmp sgt i32 %.0175296.i, 0
  %i.sf = zext i32 %i.se to i64
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.sf
  %i.sh = select i1 %.not304.us.i.i, i32 0, i32 %i.se
  %i.si = zext i32 %i.sh to i64
  %.in305.us.us.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.si ; 3 uses
  %.in305.us.us.1.i.i = getelementptr inbounds nuw i8, ptr %.in305.us.us.i.i, i64 4
  %.in305.us.us.3.i.i = getelementptr inbounds nuw i8, ptr %.in305.us.us.i.i, i64 12
  %i.sj = shl i32 %i.lv, 2
  %i.sk = zext i32 %i.sj to i64
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.sk
  %.301.v.i = select i1 %.not312.i.i, i64 %i.ri, i64 %i.rg
  %.301.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.301.v.i ; 4 uses
  %.302.i = getelementptr inbounds nuw i8, ptr %.301.i, i64 4
  %.303.i = getelementptr inbounds nuw i8, ptr %.301.i, i64 8
  %.304.i = getelementptr inbounds nuw i8, ptr %.301.i, i64 12
  br label %bb.bi

bb.ac:                                            ; preds = %bb.bh, %.lr.ph.i14
  %.0180295.i = phi i32 [ 0, %.lr.ph.i14 ], [ %.pre-phi319.i, %bb.bh ] ; 9 uses
  %.not189.i = icmp uge i32 %.0180295.i, %i.lb
  %i.sm = icmp ult i32 %.0180295.i, %i.ld
  %or.cond.i15 = and i1 %.not189.i, %i.sm
  br i1 %or.cond.i15, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.not190.i = icmp uge i32 %.0180295.i, %.pre315.i
  %i.sn = icmp ult i32 %.0180295.i, %.pre316.i
  %or.cond291.i = and i1 %.not190.i, %i.sn
  br i1 %or.cond291.i, label %bb.ae, label %._crit_edge314.i

._crit_edge314.i:                                 ; preds = %bb.ad
  %.pre318.i = add nuw i32 %.0180295.i, 1
  br label %bb.bh

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  br i1 %i.mb, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 0, ptr %i.me, align 4, !tbaa !3
  store i32 0, ptr %i.mg, align 4, !tbaa !3
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %i.so = add nuw i32 %.0180295.i, 1              ; 4 uses
  %i.sp = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.fe, i32 noundef %i.kv, i32 noundef %.0180295.i, i32 noundef %i.kx, i32 noundef %i.so, ptr noundef nonnull %i.ml, i32 noundef 2, i32 noundef 0, i32 noundef 1) #15 ; 0 uses
  %i.sq = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.fe, i32 noundef %i.mm, i32 noundef %.0180295.i, i32 noundef %i.mn, i32 noundef %i.so, ptr noundef nonnull %i.ms, i32 noundef 2, i32 noundef 0, i32 noundef 1) #15 ; 0 uses
  br i1 %i.lh, label %bb.ah, label %bb.ax

bb.ah:                                            ; preds = %bb.ag
  br i1 %or.cond.i.i, label %bb.ai, label %opj_dwt_decode_partial_1.exit.i

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.mv, label %bb.aj, label %.loopexit208.i.i

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.nj, label %bb.ak, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.aj
  %i.sr = load i32, ptr %.in.ph.i.i, align 4, !tbaa !3
  br label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ss = load i32, ptr %i.hm, align 4, !tbaa !3  ; 3 uses
  br i1 %i.no, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak, %.thread.i.i
  %i.st = phi i32 [ %i.sr, %.thread.i.i ], [ %i.ss, %bb.ak ]
  %.pre.i = load i32, ptr %..i, align 4, !tbaa !3
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.su = phi i32 [ %i.ss, %bb.ak ], [ %.pre.i, %bb.al ]
  %i.sv = phi i32 [ %i.ss, %bb.ak ], [ %i.st, %bb.al ]
  %i.sw = add i32 %i.su, 2
  %i.sx = add i32 %i.sw, %i.sv
  %i.sy = ashr i32 %i.sx, 2
  %i.sz = load i32, ptr %i.nt, align 4, !tbaa !3
  %i.ta = sub nsw i32 %i.sz, %i.sy
  store i32 %i.ta, ptr %i.nt, align 4, !tbaa !3
  br i1 %i.nu, label %.lr.ph219.i.i.preheader, label %.preheader207.i.i

.lr.ph219.i.i.preheader:                          ; preds = %bb.am
  %brmerge = select i1 %min.iters.check114, i1 true, i1 %i.ph
  %brmerge161 = select i1 %brmerge, i1 true, i1 %conflict.rdx
  br i1 %brmerge161, label %.lr.ph219.i.i.preheader131, label %vector.body118

.lr.ph219.i.i.preheader131:                       ; preds = %.lr.ph219.i.i.preheader, %vector.body118
  %indvars.iv233.i.i.ph = phi i64 [ %i.nv, %.lr.ph219.i.i.preheader ], [ %i.pk, %vector.body118 ] ; 5 uses
  %.0150.in217.i.i.ph = phi i32 [ %i.kv, %.lr.ph219.i.i.preheader ], [ %i.pm, %vector.body118 ] ; 2 uses
  %i.tb = trunc i64 %indvars.iv233.i.i.ph to i32  ; 2 uses
  %i.tc = sub i32 %spec.select.i209.i, %i.tb
  %.neg = add i32 %i.tb, 1
  %xtraiter145 = and i32 %i.tc, 1
  %lcmp.mod146.not = icmp eq i32 %xtraiter145, 0
  br i1 %lcmp.mod146.not, label %.lr.ph219.i.i.prol.loopexit, label %.lr.ph219.i.i.prol

.lr.ph219.i.i.prol:                               ; preds = %.lr.ph219.i.i.preheader131
  %i.td = shl nsw i32 %.0150.in217.i.i.ph, 1
  %i.te = sext i32 %i.td to i64
  %i.tf = getelementptr [4 x i8], ptr %i.hg, i64 %i.te
  %i.tg = getelementptr i8, ptr %i.tf, i64 4
  %i.th = load i32, ptr %i.tg, align 4, !tbaa !3
  %.idx256.i.i.prol = shl nsw i64 %indvars.iv233.i.i.ph, 3
  %i.ti = getelementptr i8, ptr %i.hg, i64 %.idx256.i.i.prol ; 3 uses
  %i.tj = getelementptr i8, ptr %i.ti, i64 4
  %i.tk = load i32, ptr %i.tj, align 4, !tbaa !3
  %i.tl = add i32 %i.th, 2
  %i.tm = add i32 %i.tl, %i.tk
  %i.tn = ashr i32 %i.tm, 2
  %i.to = load i32, ptr %i.ti, align 4, !tbaa !3
  %i.tp = sub nsw i32 %i.to, %i.tn
  store i32 %i.tp, ptr %i.ti, align 4, !tbaa !3
  %indvars.iv.next234.i.i.prol = add nsw i64 %indvars.iv233.i.i.ph, 1
  %i.tq = trunc nsw i64 %indvars.iv233.i.i.ph to i32
  br label %.lr.ph219.i.i.prol.loopexit

.lr.ph219.i.i.prol.loopexit:                      ; preds = %.lr.ph219.i.i.prol, %.lr.ph219.i.i.preheader131
  %indvars.iv233.i.i.unr = phi i64 [ %indvars.iv233.i.i.ph, %.lr.ph219.i.i.preheader131 ], [ %indvars.iv.next234.i.i.prol, %.lr.ph219.i.i.prol ]
  %.0150.in217.i.i.unr = phi i32 [ %.0150.in217.i.i.ph, %.lr.ph219.i.i.preheader131 ], [ %i.tq, %.lr.ph219.i.i.prol ]
  %i.tr = icmp eq i32 %spec.select.i209.i, %.neg
  br i1 %i.tr, label %.preheader207.i.i, label %.lr.ph219.i.i

vector.body118:                                   ; preds = %.lr.ph219.i.i.preheader, %vector.body118
  %index119 = phi i64 [ %index.next125, %vector.body118 ], [ 0, %.lr.ph219.i.i.preheader ] ; 3 uses
  %i.ts = add i64 %index119, %i.nv                ; 4 uses
  %i.tt = trunc i64 %index119 to i32
  %i.tu = add i32 %i.kv, %i.tt
  %i.tv = shl nsw i32 %i.tu, 1
  %i.tw = sext i32 %i.tv to i64
  %i.tx = getelementptr [4 x i8], ptr %i.hg, i64 %i.tw
  %i.ty = getelementptr i8, ptr %i.tx, i64 4
  %wide.vec120 = load <8 x i32>, ptr %i.ty, align 4, !tbaa !3, !alias.scope !142
  %strided.vec121 = shufflevector <8 x i32> %wide.vec120, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.tz = shl i64 %i.ts, 3
  %i.ua = shl i64 %i.ts, 3
  %i.ub = shl i64 %i.ts, 3
  %i.uc = shl i64 %i.ts, 3
  %i.ud = getelementptr i8, ptr %i.hg, i64 %i.tz  ; 2 uses
  %i.ue = getelementptr i8, ptr %i.hg, i64 %i.ua
  %i.uf = getelementptr i8, ptr %i.ue, i64 8
  %i.ug = getelementptr i8, ptr %i.hg, i64 %i.ub
  %i.uh = getelementptr i8, ptr %i.ug, i64 16
  %i.ui = getelementptr i8, ptr %i.hg, i64 %i.uc
  %i.uj = getelementptr i8, ptr %i.ui, i64 24
  %wide.vec122 = load <8 x i32>, ptr %i.ud, align 4, !tbaa !3 ; 2 uses
  %strided.vec123 = shufflevector <8 x i32> %wide.vec122, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec124 = shufflevector <8 x i32> %wide.vec122, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.uk = add <4 x i32> %strided.vec121, splat (i32 2)
  %i.ul = add <4 x i32> %i.uk, %strided.vec124
  %i.um = ashr <4 x i32> %i.ul, splat (i32 2)
  %i.un = sub nsw <4 x i32> %strided.vec123, %i.um ; 4 uses
  %i.uo = extractelement <4 x i32> %i.un, i64 0
  %5 = extractelement <4 x i32> %i.un, i64 1
  %i.up = extractelement <4 x i32> %i.un, i64 2
  %6 = extractelement <4 x i32> %i.un, i64 3
  store i32 %i.uo, ptr %i.ud, align 4, !tbaa !3, !alias.scope !145, !noalias !147
  store i32 %5, ptr %i.uf, align 4, !tbaa !3, !alias.scope !145, !noalias !147
  store i32 %i.up, ptr %i.uh, align 4, !tbaa !3, !alias.scope !145, !noalias !147
  store i32 %6, ptr %i.uj, align 4, !tbaa !3, !alias.scope !145, !noalias !147
  %index.next125 = add nuw i64 %index119, 4       ; 2 uses
  %i.uq = icmp eq i64 %index.next125, %n.vec117
  br i1 %i.uq, label %.lr.ph219.i.i.preheader131, label %vector.body118, !llvm.loop !149

.preheader207.i.i:                                ; preds = %.lr.ph219.i.i.prol.loopexit, %.lr.ph219.i.i, %bb.am
  %.0150.lcssa.i.i = phi i32 [ %.0150216.i.i, %bb.am ], [ %spec.select.i209.i, %.lr.ph219.i.i ], [ %spec.select.i209.i, %.lr.ph219.i.i.prol.loopexit ] ; 2 uses
  %i.ur = icmp slt i32 %.0150.lcssa.i.i, %i.kx
  br i1 %i.ur, label %.lr.ph223.i.i, label %.loopexit208.i.i

.lr.ph223.i.i:                                    ; preds = %.preheader207.i.i
  %i.us = sext i32 %.0150.lcssa.i.i to i64
  br label %bb.an

.lr.ph219.i.i:                                    ; preds = %.lr.ph219.i.i.prol.loopexit, %.lr.ph219.i.i
  %indvars.iv233.i.i = phi i64 [ %indvars.iv.next234.i.i.1, %.lr.ph219.i.i ], [ %indvars.iv233.i.i.unr, %.lr.ph219.i.i.prol.loopexit ] ; 4 uses
  %.0150.in217.i.i = phi i32 [ %i.vu, %.lr.ph219.i.i ], [ %.0150.in217.i.i.unr, %.lr.ph219.i.i.prol.loopexit ]
  %i.ut = shl nsw i32 %.0150.in217.i.i, 1
  %i.uu = sext i32 %i.ut to i64
  %i.uv = getelementptr [4 x i8], ptr %i.hg, i64 %i.uu
  %i.uw = getelementptr i8, ptr %i.uv, i64 4
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !3
  %.idx256.i.i = shl i64 %indvars.iv233.i.i, 3
  %i.uy = getelementptr i8, ptr %i.hg, i64 %.idx256.i.i ; 3 uses
  %i.uz = getelementptr i8, ptr %i.uy, i64 4
  %i.va = load i32, ptr %i.uz, align 4, !tbaa !3
  %i.vb = add i32 %i.ux, 2
  %i.vc = add i32 %i.vb, %i.va
  %i.vd = ashr i32 %i.vc, 2
  %i.ve = load i32, ptr %i.uy, align 4, !tbaa !3
  %i.vf = sub nsw i32 %i.ve, %i.vd
  store i32 %i.vf, ptr %i.uy, align 4, !tbaa !3
  %indvars.iv.next234.i.i = add nsw i64 %indvars.iv233.i.i, 1 ; 2 uses
  %i.vg = trunc nsw i64 %indvars.iv233.i.i to i32
  %i.vh = shl nsw i32 %i.vg, 1
  %i.vi = sext i32 %i.vh to i64
  %i.vj = getelementptr [4 x i8], ptr %i.hg, i64 %i.vi
  %i.vk = getelementptr i8, ptr %i.vj, i64 4
  %i.vl = load i32, ptr %i.vk, align 4, !tbaa !3
  %.idx256.i.i.1 = shl i64 %indvars.iv.next234.i.i, 3
  %i.vm = getelementptr i8, ptr %i.hg, i64 %.idx256.i.i.1 ; 3 uses
  %i.vn = getelementptr i8, ptr %i.vm, i64 4
  %i.vo = load i32, ptr %i.vn, align 4, !tbaa !3
  %i.vp = add i32 %i.vl, 2
  %i.vq = add i32 %i.vp, %i.vo
  %i.vr = ashr i32 %i.vq, 2
  %i.vs = load i32, ptr %i.vm, align 4, !tbaa !3
  %i.vt = sub nsw i32 %i.vs, %i.vr
  store i32 %i.vt, ptr %i.vm, align 4, !tbaa !3
  %indvars.iv.next234.i.i.1 = add nsw i64 %indvars.iv233.i.i, 2 ; 2 uses
  %i.vu = trunc nsw i64 %indvars.iv.next234.i.i to i32
  %lftr.wideiv.i.i.1 = trunc i64 %indvars.iv.next234.i.i.1 to i32
  %exitcond236.not.i.i.1 = icmp eq i32 %spec.select.i209.i, %lftr.wideiv.i.i.1
  br i1 %exitcond236.not.i.i.1, label %.preheader207.i.i, label %.lr.ph219.i.i, !llvm.loop !150

bb.an:                                            ; preds = %bb.ar, %.lr.ph223.i.i
  %indvars.iv237.i.i = phi i64 [ %i.us, %.lr.ph223.i.i ], [ %indvars.iv.next238.i.i, %bb.ar ] ; 8 uses
  %i.vv = icmp slt i64 %indvars.iv237.i.i, 1
  br i1 %i.vv, label %bb.ao, label %.thread194.i.i

.thread194.i.i:                                   ; preds = %bb.an
  %.not179.not.i.i = icmp sgt i64 %indvars.iv237.i.i, %i.nw
  %i.vw = shl nuw i64 %indvars.iv237.i.i, 1
  %i.vx = add i64 %i.vw, 4294967295
  %i.vy = and i64 %i.vx, 4294967295
  %.pn206.i.i = select i1 %.not179.not.i.i, i64 %i.nn, i64 %i.vy
  %.in180.ph.i.i = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %.pn206.i.i
  %i.vz = load i32, ptr %.in180.ph.i.i, align 4, !tbaa !3
  br label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.wa = load i32, ptr %i.hm, align 4, !tbaa !3  ; 2 uses
  %i.wb = icmp slt i64 %indvars.iv237.i.i, 0
  br i1 %i.wb, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.thread194.i.i
  %i.wc = phi i32 [ %i.vz, %.thread194.i.i ], [ %i.wa, %bb.ao ] ; 2 uses
  %.not181.i.i = icmp slt i64 %indvars.iv237.i.i, %i.nw
  br i1 %.not181.i.i, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %.idx257.i.i = shl nuw nsw i64 %indvars.iv237.i.i, 3
  %i.wd = getelementptr inbounds nuw i8, ptr %i.hg, i64 %.idx257.i.i
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 4
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao
  %i.wf = phi i32 [ %i.wc, %bb.aq ], [ %i.wa, %bb.ao ], [ %i.wc, %bb.ap ]
  %.in182.i.i = phi ptr [ %i.we, %bb.aq ], [ %i.hm, %bb.ao ], [ %i.np, %bb.ap ]
  %i.wg = load i32, ptr %.in182.i.i, align 4, !tbaa !3
  %i.wh = add i32 %i.wf, 2
  %i.wi = add i32 %i.wh, %i.wg
  %i.wj = ashr i32 %i.wi, 2
  %.idx258.i.i = shl nsw i64 %indvars.iv237.i.i, 3
  %i.wk = getelementptr inbounds i8, ptr %i.hg, i64 %.idx258.i.i ; 2 uses
  %i.wl = load i32, ptr %i.wk, align 4, !tbaa !3
  %i.wm = sub nsw i32 %i.wl, %i.wj
  store i32 %i.wm, ptr %i.wk, align 4, !tbaa !3
  %indvars.iv.next238.i.i = add nsw i64 %indvars.iv237.i.i, 1 ; 2 uses
  %exitcond241.not.i.i = icmp eq i64 %indvars.iv.next238.i.i, %wide.trip.count240.i.i
  br i1 %exitcond241.not.i.i, label %.loopexit208.i.i, label %bb.an, !llvm.loop !151

.loopexit208.i.i:                                 ; preds = %bb.ar, %.preheader207.i.i, %bb.ai
  br i1 %i.na, label %bb.as, label %opj_dwt_decode_partial_1.exit.i

bb.as:                                            ; preds = %.loopexit208.i.i
  br i1 %i.ny, label %.lr.ph225.i.i.preheader, label %.preheader.i.i

.lr.ph225.i.i.preheader:                          ; preds = %bb.as
  br i1 %min.iters.check, label %.lr.ph225.i.i.preheader130, label %vector.body

.lr.ph225.i.i.preheader130:                       ; preds = %vector.body, %.lr.ph225.i.i.preheader
  %indvars.iv242.i.i.ph = phi i64 [ %i.nf, %.lr.ph225.i.i.preheader ], [ %i.pp, %vector.body ]
  br label %.lr.ph225.i.i

vector.body:                                      ; preds = %.lr.ph225.i.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph225.i.i.preheader ] ; 2 uses
  %i.wn = add i64 %index, %i.nf                   ; 5 uses
  %i.wo = shl nsw i64 %i.wn, 3
  %i.wp = shl i64 %i.wn, 3
  %i.wq = shl i64 %i.wn, 3
  %i.wr = shl i64 %i.wn, 3
  %i.ws = getelementptr inbounds i8, ptr %i.hg, i64 %i.wo ; 2 uses
  %i.wt = getelementptr i8, ptr %i.hg, i64 %i.wp
  %i.wu = getelementptr i8, ptr %i.hg, i64 %i.wq
  %i.wv = getelementptr i8, ptr %i.hg, i64 %i.wr
  %wide.vec = load <8 x i32>, ptr %i.ws, align 4, !tbaa !3
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ww = shl i64 %i.wn, 3
  %i.wx = getelementptr i8, ptr %i.hg, i64 %i.ww
  %i.wy = getelementptr i8, ptr %i.wx, i64 4
  %wide.vec92 = load <8 x i32>, ptr %i.wy, align 4, !tbaa !3 ; 2 uses
  %strided.vec93 = shufflevector <8 x i32> %wide.vec92, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec94 = shufflevector <8 x i32> %wide.vec92, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.wz = add nsw <4 x i32> %strided.vec94, %strided.vec
  %i.xa = ashr <4 x i32> %i.wz, splat (i32 1)
  %i.xb = getelementptr i8, ptr %i.ws, i64 4
  %i.xc = getelementptr i8, ptr %i.wt, i64 12
  %i.xd = getelementptr i8, ptr %i.wu, i64 20
  %i.xe = getelementptr i8, ptr %i.wv, i64 28
  %i.xf = add nsw <4 x i32> %i.xa, %strided.vec93 ; 4 uses
  %i.xg = extractelement <4 x i32> %i.xf, i64 0
  %7 = extractelement <4 x i32> %i.xf, i64 1
  %i.xh = extractelement <4 x i32> %i.xf, i64 2
  %8 = extractelement <4 x i32> %i.xf, i64 3
  store i32 %i.xg, ptr %i.xb, align 4, !tbaa !3
  store i32 %7, ptr %i.xc, align 4, !tbaa !3
  store i32 %i.xh, ptr %i.xd, align 4, !tbaa !3
  store i32 %8, ptr %i.xe, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.xi = icmp eq i64 %index.next, %n.vec
  br i1 %i.xi, label %.lr.ph225.i.i.preheader130, label %vector.body, !llvm.loop !152

.preheader.loopexit.i.i:                          ; preds = %.lr.ph225.i.i
  %i.xj = trunc nsw i64 %indvars.iv.next243.i.i to i32
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.loopexit.i.i, %bb.as
  %.2.lcssa.i.i = phi i32 [ %i.ky, %bb.as ], [ %i.xj, %.preheader.loopexit.i.i ] ; 2 uses
  %i.xk = icmp slt i32 %.2.lcssa.i.i, %i.la
  br i1 %i.xk, label %.lr.ph229.i.i, label %opj_dwt_decode_partial_1.exit.i

.lr.ph225.i.i:                                    ; preds = %.lr.ph225.i.i.preheader130, %.lr.ph225.i.i
  %indvars.iv242.i.i = phi i64 [ %indvars.iv.next243.i.i, %.lr.ph225.i.i ], [ %indvars.iv242.i.i.ph, %.lr.ph225.i.i.preheader130 ] ; 2 uses
  %.idx259.i.i = shl nsw i64 %indvars.iv242.i.i, 3
  %i.xl = getelementptr inbounds i8, ptr %i.hg, i64 %.idx259.i.i ; 2 uses
  %i.xm = load i32, ptr %i.xl, align 4, !tbaa !3
  %indvars.iv.next243.i.i = add nsw i64 %indvars.iv242.i.i, 1 ; 4 uses
  %.idx260.i.i = shl nsw i64 %indvars.iv.next243.i.i, 3
  %i.xn = getelementptr inbounds i8, ptr %i.hg, i64 %.idx260.i.i
  %i.xo = load i32, ptr %i.xn, align 4, !tbaa !3
  %i.xp = add nsw i32 %i.xo, %i.xm
  %i.xq = ashr i32 %i.xp, 1
  %i.xr = getelementptr i8, ptr %i.xl, i64 4      ; 2 uses
  %i.xs = load i32, ptr %i.xr, align 4, !tbaa !3
  %i.xt = add nsw i32 %i.xq, %i.xs
  store i32 %i.xt, ptr %i.xr, align 4, !tbaa !3
  %i.xu = icmp slt i64 %indvars.iv.next243.i.i, %i.nz
  br i1 %i.xu, label %.lr.ph225.i.i, label %.preheader.loopexit.i.i, !llvm.loop !153

.lr.ph229.i.i:                                    ; preds = %.preheader.i.i, %bb.aw
  %.3227.i.i = phi i32 [ %i.yh, %bb.aw ], [ %.2.lcssa.i.i, %.preheader.i.i ] ; 7 uses
  %i.xv = icmp slt i32 %.3227.i.i, 0
  br i1 %i.xv, label %bb.at, label %.thread197.i.i

.thread197.i.i:                                   ; preds = %.lr.ph229.i.i
  %.not175.i.i = icmp slt i32 %.3227.i.i, %.0174297.i
  %i.xw = shl nuw nsw i32 %.3227.i.i, 1
  %i.xx = zext nneg i32 %i.xw to i64
  %.in176.ph.v.i.i = select i1 %.not175.i.i, i64 %i.xx, i64 %i.ob
  %.in176.ph.i.i = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %.in176.ph.v.i.i
  %i.xy = load i32, ptr %.in176.ph.i.i, align 4, !tbaa !3
  %i.xz = add nuw nsw i32 %.3227.i.i, 1
  br label %bb.au

bb.at:                                            ; preds = %.lr.ph229.i.i
  %i.ya = load i32, ptr %i.hg, align 4, !tbaa !3  ; 2 uses
  %i.yb = add nuw nsw i32 %.3227.i.i, 1
  %.not205.i.i = icmp eq i32 %.3227.i.i, -1
  br i1 %.not205.i.i, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at, %.thread197.i.i
  %i.yc = phi i32 [ %i.xz, %.thread197.i.i ], [ 0, %bb.at ] ; 4 uses
  %i.yd = phi i32 [ %i.xy, %.thread197.i.i ], [ %i.ya, %bb.at ] ; 2 uses
  %.not177.i.i = icmp slt i32 %i.yc, %.0174297.i
  br i1 %.not177.i.i, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ye = shl nuw nsw i32 %i.yc, 1
  %i.yf = zext nneg i32 %i.ye to i64
  %i.yg = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.yf
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.at
  %i.yh = phi i32 [ %i.yc, %bb.av ], [ %i.yb, %bb.at ], [ %i.yc, %bb.au ] ; 2 uses
  %i.yi = phi i32 [ %i.yd, %bb.av ], [ %i.ya, %bb.at ], [ %i.yd, %bb.au ]
  %.in178.i.i = phi ptr [ %i.yg, %bb.av ], [ %i.hg, %bb.at ], [ %i.oc, %bb.au ]
  %i.yj = load i32, ptr %.in178.i.i, align 4, !tbaa !3
  %i.yk = add nsw i32 %i.yj, %i.yi
  %i.yl = ashr i32 %i.yk, 1
  %i.ym = shl nsw i32 %.3227.i.i, 1
  %i.yn = sext i32 %i.ym to i64
  %i.yo = getelementptr [4 x i8], ptr %i.hg, i64 %i.yn
  %i.yp = getelementptr i8, ptr %i.yo, i64 4      ; 2 uses
  %i.yq = load i32, ptr %i.yp, align 4, !tbaa !3
  %i.yr = add nsw i32 %i.yl, %i.yq
  store i32 %i.yr, ptr %i.yp, align 4, !tbaa !3
  %i.ys = icmp slt i32 %i.yh, %i.la
  br i1 %i.ys, label %.lr.ph229.i.i, label %opj_dwt_decode_partial_1.exit.i, !llvm.loop !154

bb.ax:                                            ; preds = %bb.ag
  br i1 %or.cond3.i.i, label %bb.ay, label %.preheader211.i.i

.preheader211.i.i:                                ; preds = %bb.ax
  br i1 %i.mv, label %.lr.ph.i208.i, label %.preheader209.i.i

bb.ay:                                            ; preds = %bb.ax
  %i.yt = load i32, ptr %i.hg, align 4, !tbaa !3
  %i.yu = sdiv i32 %i.yt, 2
  store i32 %i.yu, ptr %i.hg, align 4, !tbaa !3
  br label %opj_dwt_decode_partial_1.exit.i

.preheader209.i.i:                                ; preds = %bb.bc, %.preheader211.i.i
  br i1 %i.na, label %.lr.ph215.i.i, label %opj_dwt_decode_partial_1.exit.i

.lr.ph.i208.i:                                    ; preds = %.preheader211.i.i, %bb.bc
  %.4212.i.i = phi i32 [ %i.zl, %bb.bc ], [ %i.kv, %.preheader211.i.i ] ; 6 uses
  %i.yv = shl nsw i32 %.4212.i.i, 1               ; 2 uses
  %i.yw = sext i32 %i.yv to i64
  %i.yx = getelementptr [4 x i8], ptr %i.hg, i64 %i.yw
  %i.yy = getelementptr i8, ptr %i.yx, i64 4      ; 2 uses
  %i.yz = load i32, ptr %i.yy, align 4, !tbaa !3
  %i.za = icmp slt i32 %.4212.i.i, 0
  br i1 %i.za, label %bb.az, label %.thread200.i.i

.thread200.i.i:                                   ; preds = %.lr.ph.i208.i
  %.not187.i.i = icmp slt i32 %.4212.i.i, %i.ig
  %i.zb = zext nneg i32 %i.yv to i64
  %.in188.ph.v.i.i = select i1 %.not187.i.i, i64 %i.zb, i64 %i.my
  %.in188.ph.i.i = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %.in188.ph.v.i.i
  %i.zc = load i32, ptr %.in188.ph.i.i, align 4, !tbaa !3
  %i.zd = add nuw nsw i32 %.4212.i.i, 1
  br label %bb.ba

bb.az:                                            ; preds = %.lr.ph.i208.i
  %i.ze = load i32, ptr %i.hg, align 4, !tbaa !3  ; 2 uses
  %i.zf = add nuw nsw i32 %.4212.i.i, 1
  %.not204.i.i = icmp eq i32 %.4212.i.i, -1
  br i1 %.not204.i.i, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az, %.thread200.i.i
  %i.zg = phi i32 [ %i.zd, %.thread200.i.i ], [ 0, %bb.az ] ; 4 uses
  %i.zh = phi i32 [ %i.zc, %.thread200.i.i ], [ %i.ze, %bb.az ] ; 2 uses
  %.not189.i.i = icmp slt i32 %i.zg, %i.ig
  br i1 %.not189.i.i, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.zi = shl nuw nsw i32 %i.zg, 1
  %i.zj = zext nneg i32 %i.zi to i64
  %i.zk = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.zj
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.az
  %i.zl = phi i32 [ %i.zg, %bb.bb ], [ %i.zf, %bb.az ], [ %i.zg, %bb.ba ] ; 2 uses
  %i.zm = phi i32 [ %i.zh, %bb.bb ], [ %i.ze, %bb.az ], [ %i.zh, %bb.ba ]
  %.in190.i.i = phi ptr [ %i.zk, %bb.bb ], [ %i.hg, %bb.az ], [ %i.mz, %bb.ba ]
  %i.zn = load i32, ptr %.in190.i.i, align 4, !tbaa !3
  %i.zo = add i32 %i.zm, 2
  %i.zp = add i32 %i.zo, %i.zn
  %i.zq = ashr i32 %i.zp, 2
  %i.zr = sub i32 %i.yz, %i.zq
  store i32 %i.zr, ptr %i.yy, align 4, !tbaa !3
  %i.zs = icmp slt i32 %i.zl, %i.kx
  br i1 %i.zs, label %.lr.ph.i208.i, label %.preheader209.i.i, !llvm.loop !155

.lr.ph215.i.i:                                    ; preds = %.preheader209.i.i, %bb.bf
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.bf ], [ %i.nf, %.preheader209.i.i ] ; 6 uses
  %.idx.i.i = shl i64 %indvars.iv.i.i, 3
  %i.zt = getelementptr i8, ptr %i.hg, i64 %.idx.i.i ; 4 uses
  %i.zu = load i32, ptr %i.zt, align 4, !tbaa !3
  %i.zv = icmp slt i64 %indvars.iv.i.i, 0
  br i1 %i.zv, label %.thread202.i.i, label %bb.bd

.thread202.i.i:                                   ; preds = %.lr.ph215.i.i
  %i.zw = load i32, ptr %i.hm, align 4, !tbaa !3
  br label %bb.bf

bb.bd:                                            ; preds = %.lr.ph215.i.i
  %.not183.i.i = icmp slt i64 %indvars.iv.i.i, %i.ng
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zt, i64 4
  %.in184.i.i = select i1 %.not183.i.i, ptr %i.zx, ptr %i.ne
  %i.zy = load i32, ptr %.in184.i.i, align 4, !tbaa !3 ; 2 uses
  %i.zz = icmp eq i64 %indvars.iv.i.i, 0
  br i1 %i.zz, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %.not185.not.i.i = icmp sgt i64 %indvars.iv.i.i, %i.ng
  %i.aaa = getelementptr i8, ptr %i.zt, i64 -4
  %spec.select262.i.i = select i1 %.not185.not.i.i, ptr %i.ne, ptr %i.aaa
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %.thread202.i.i
  %i.aab = phi i32 [ %i.zy, %bb.be ], [ %i.zy, %bb.bd ], [ %i.zw, %.thread202.i.i ]
  %.in186.i.i = phi ptr [ %spec.select262.i.i, %bb.be ], [ %i.hm, %bb.bd ], [ %i.hm, %.thread202.i.i ]
  %i.aac = load i32, ptr %.in186.i.i, align 4, !tbaa !3
  %i.aad = add i32 %i.aac, %i.aab
  %i.aae = ashr i32 %i.aad, 1
  %i.aaf = add i32 %i.aae, %i.zu
  store i32 %i.aaf, ptr %i.zt, align 4, !tbaa !3
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %opj_dwt_decode_partial_1.exit.i, label %.lr.ph215.i.i, !llvm.loop !156

opj_dwt_decode_partial_1.exit.i:                  ; preds = %bb.bf, %bb.aw, %.preheader209.i.i, %bb.ay, %.preheader.i.i, %.loopexit208.i.i, %bb.ah
  %i.aag = tail call i32 @opj_sparse_array_int32_write(ptr noundef nonnull %i.fe, i32 noundef %i.ll, i32 noundef %.0180295.i, i32 noundef %i.lq, i32 noundef %i.so, ptr noundef nonnull %i.oe, i32 noundef 1, i32 noundef 0, i32 noundef 1) #15
  %.not192.i = icmp eq i32 %i.aag, 0
  br i1 %.not192.i, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %opj_dwt_decode_partial_1.exit.i
  tail call void @opj_sparse_array_int32_free(ptr noundef nonnull %i.fe) #15
  tail call void @opj_aligned_free(ptr noundef nonnull %i.hg) #15
  br label %opj_dwt_decode_partial_tile.exit

bb.bh:                                            ; preds = %opj_dwt_decode_partial_1.exit.i, %._crit_edge314.i
  %.pre-phi319.i = phi i32 [ %.pre318.i, %._crit_edge314.i ], [ %i.so, %opj_dwt_decode_partial_1.exit.i ] ; 2 uses
  %exitcond.not.i16 = icmp eq i32 %.pre-phi319.i, %i.if
  br i1 %exitcond.not.i16, label %.preheader.i17, label %bb.ac, !llvm.loop !157

end_hunk_0
begin_hunk_1_@opj_dwt_encode_and_deinterleave_v_real:bb.a
  %i.ps = add nsw i32 %.in.1.i136, -1             ; 2 uses
  switch i32 %5, label %bb.aa [
    i32 8, label %bb.z
    i32 7, label %bb.t
    i32 6, label %bb.u
    i32 5, label %bb.v
    i32 4, label %bb.w
    i32 3, label %bb.x
    i32 2, label %bb.y
  ]

bb.t:                                             ; preds = %.lr.ph.1.i135
  %i.pt = load i32, ptr %.15469.1.i137, align 4, !tbaa !3, !alias.scope !182, !noalias !185
  store i32 %i.pt, ptr %.15662.1.i138, align 4, !tbaa !3, !alias.scope !185, !noalias !182
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.1.i135
  %.0.1.i = phi i32 [ 1, %bb.t ], [ 0, %.lr.ph.1.i135 ] ; 2 uses
  %i.pu = zext nneg i32 %.0.1.i to i64            ; 2 uses
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %.15469.1.i137, i64 %i.pu
  %i.pw = load i32, ptr %i.pv, align 4, !tbaa !3, !alias.scope !182, !noalias !185
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %.15662.1.i138, i64 %i.pu
  store i32 %i.pw, ptr %i.px, align 4, !tbaa !3, !alias.scope !185, !noalias !182
  %i.py = add nuw nsw i32 %.0.1.i, 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.1.i135
  %.1.1.i = phi i32 [ %i.py, %bb.u ], [ 0, %.lr.ph.1.i135 ] ; 2 uses
  %i.pz = zext nneg i32 %.1.1.i to i64            ; 2 uses
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %.15469.1.i137, i64 %i.pz
  %i.qb = load i32, ptr %i.qa, align 4, !tbaa !3, !alias.scope !182, !noalias !185
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %.15662.1.i138, i64 %i.pz
  store i32 %i.qb, ptr %i.qc, align 4, !tbaa !3, !alias.scope !185, !noalias !182
  %i.qd = add nuw nsw i32 %.1.1.i, 1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph.1.i135
  %.2.1.i = phi i32 [ %i.qd, %bb.v ], [ 0, %.lr.ph.1.i135 ] ; 2 uses
  %i.qe = zext nneg i32 %.2.1.i to i64            ; 2 uses
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %.15469.1.i137, i64 %i.qe
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !3, !alias.scope !182, !noalias !185
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %.15662.1.i138, i64 %i.qe
  store i32 %i.qg, ptr %i.qh, align 4, !tbaa !3, !alias.scope !185, !noalias !182
  %i.qi = add nuw nsw i32 %.2.1.i, 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph.1.i135
  %.3.1.i = phi i32 [ %i.qi, %bb.w ], [ 0, %.lr.ph.1.i135 ] ; 2 uses
  %i.qj = zext nneg i32 %.3.1.i to i64            ; 2 uses
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %.15469.1.i137, i64 %i.qj
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !3, !alias.scope !182, !noalias !185
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %.15662.1.i138, i64 %i.qj
  store i32 %i.ql, ptr %i.qm, align 4, !tbaa !3, !alias.scope !185, !noalias !182
  %i.qn = add nuw nsw i32 %.3.1.i, 1
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph.1.i135
  %.4.1.i = phi i32 [ %i.qn, %bb.x ], [ 0, %.lr.ph.1.i135 ] ; 2 uses
  %i.qo = zext nneg i32 %.4.1.i to i64            ; 2 uses
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %.15469.1.i137, i64 %i.qo
  %i.qq = load i32, ptr %i.qp, align 4, !tbaa !3, !alias.scope !182, !noalias !185
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %.15662.1.i138, i64 %i.qo
  store i32 %i.qq, ptr %i.qr, align 4, !tbaa !3, !alias.scope !185, !noalias !182
  %i.qs = add nuw nsw i32 %.4.1.i, 1
  %i.qt = zext nneg i32 %i.qs to i64
  br label %bb.aa

bb.z:                                             ; preds = %.lr.ph.1.i135
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.15662.1.i138, ptr noundef nonnull align 4 dereferenceable(32) %.15469.1.i137, i64 32, i1 false), !alias.scope !187
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y, %.lr.ph.1.i135
  %.5.1.i = phi i64 [ 0, %.lr.ph.1.i135 ], [ %i.qt, %bb.y ] ; 2 uses
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %.15469.1.i137, i64 %.5.1.i
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !3, !alias.scope !182, !noalias !185
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %.15662.1.i138, i64 %.5.1.i
  store i32 %i.qv, ptr %i.qw, align 4, !tbaa !3, !alias.scope !185, !noalias !182
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %.15662.1.i138, i64 %i.pq
  %i.qy = getelementptr inbounds nuw i8, ptr %.15469.1.i137, i64 64
  %.not.1.i139 = icmp eq i32 %i.ps, 0
  br i1 %.not.1.i139, label %opj_dwt_deinterleave_v_cols.exit, label %.lr.ph.1.i135, !llvm.loop !72

opj_dwt_deinterleave_v_cols.exit:                 ; preds = %bb.ab, %.lr.ph.1.i.prol.loopexit, %.lr.ph.1.i, %._crit_edge.i130, %._crit_edge.i, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @opj_dwt_encode_and_deinterleave_h_one_row_real(ptr nofree noundef captures(none) %0, ptr nofree noundef %1, i32 noundef %2, i32 noundef %3) #2 {
bb.a:
  %i.a = icmp eq i32 %2, 1
  br i1 %i.a, label %opj_dwt_deinterleave_h.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp ne i32 %3, 0                       ; 3 uses
  %i.b = zext i1 %.not to i32
  %i.c = add i32 %2, %i.b
  %i.d = lshr i32 %i.c, 1                         ; 12 uses
  %i.e = sub i32 %2, %i.d                         ; 11 uses
  %i.f = zext i32 %2 to i64
  %i.g = shl nuw nsw i64 %i.f, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr align 4 %0, i64 %i.g, i1 false)
  %not..not = xor i1 %.not, true                  ; 3 uses
  %i.h = zext i1 %not..not to i32                 ; 2 uses
  %.41.i = xor i32 %i.h, 1                        ; 2 uses
  %.neg = sext i1 %not..not to i64
  %i.i = zext i1 %not..not to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.i ; 13 uses
  %i.k = zext nneg i32 %.41.i to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.k ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 4 uses
  %i.n = sub nsw i32 %i.d, %.41.i
  %i.o = tail call noundef i32 @llvm.smin.i32(i32 %i.e, i32 %i.n) ; 2 uses
  %i.p = tail call noundef i32 @llvm.umin.i32(i32 %i.e, i32 %i.o) ; 15 uses
  %.not.i.i = icmp eq i32 %i.p, 0                 ; 2 uses
  br i1 %.not.i.i, label %.loopexit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load float, ptr %i.j, align 4, !tbaa !188
  %i.r = load float, ptr %i.m, align 4, !tbaa !188
  %i.s = fadd float %i.q, %i.r
  %i.t = load float, ptr %i.l, align 4, !tbaa !188
  %i.u = tail call float @llvm.fmuladd.f32(float %i.s, float f0xBFCB0673, float %i.t)
  store float %i.u, ptr %i.l, align 4, !tbaa !188
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 12 ; 7 uses
  %i.w = icmp ugt i32 %i.p, 4
  br i1 %i.w, label %.lr.ph.i.i.preheader, label %.preheader.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.c
  %i.x = add i32 %i.p, -5                         ; 2 uses
  %min.iters.check = icmp ult i32 %i.x, 16
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader288, label %vector.ph

.lr.ph.i.i.preheader288:                          ; preds = %vector.body, %.lr.ph.i.i.preheader
  %.044.i.i.ph = phi ptr [ %i.v, %.lr.ph.i.i.preheader ], [ %i.ad, %vector.body ]
  %.04043.i.i.ph = phi i32 [ 1, %.lr.ph.i.i.preheader ], [ %i.ag, %vector.body ]
  br label %.lr.ph.i.i

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %i.y = lshr i32 %i.x, 2
  %narrow = add nuw nsw i32 %i.y, 1
  %i.z = zext nneg i32 %narrow to i64             ; 2 uses
  %n.mod.vf = and i64 %i.z, 3                     ; 2 uses
  %i.aa = icmp eq i64 %n.mod.vf, 0
  %i.ab = select i1 %i.aa, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.z, %i.ab                ; 3 uses
  %i.ac = shl nsw i64 %n.vec, 5
  %i.ad = getelementptr i8, ptr %i.v, i64 %i.ac
  %i.ae = trunc i64 %n.vec to i32
  %i.af = shl i32 %i.ae, 2
  %i.ag = or disjoint i32 %i.af, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = shl i64 %index, 5                       ; 4 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.ah ; 9 uses
  %i.ai = getelementptr i8, ptr %i.v, i64 %i.ah   ; 9 uses
  %next.gep69 = getelementptr i8, ptr %i.ai, i64 32
  %i.aj = getelementptr i8, ptr %i.v, i64 %i.ah   ; 9 uses
  %next.gep70 = getelementptr i8, ptr %i.aj, i64 64
  %i.ak = getelementptr i8, ptr %i.v, i64 %i.ah   ; 9 uses
  %next.gep71 = getelementptr i8, ptr %i.ak, i64 96
  %i.al = getelementptr inbounds i8, ptr %next.gep, i64 -8
  %i.am = getelementptr i8, ptr %i.ai, i64 24
  %i.an = getelementptr i8, ptr %i.aj, i64 56
  %i.ao = getelementptr i8, ptr %i.ak, i64 88
  %i.ap = load float, ptr %i.al, align 4, !tbaa !188
  %i.aq = load float, ptr %i.am, align 4, !tbaa !188
  %i.ar = load float, ptr %i.an, align 4, !tbaa !188
  %i.as = load float, ptr %i.ao, align 4, !tbaa !188
  %i.at = insertelement <4 x float> poison, float %i.ap, i64 0
  %i.au = insertelement <4 x float> %i.at, float %i.aq, i64 1
  %i.av = insertelement <4 x float> %i.au, float %i.ar, i64 2
  %i.aw = insertelement <4 x float> %i.av, float %i.as, i64 3
  %i.ax = load float, ptr %next.gep, align 4, !tbaa !188
  %i.ay = load float, ptr %next.gep69, align 4, !tbaa !188
  %i.az = load float, ptr %next.gep70, align 4, !tbaa !188
  %i.ba = load float, ptr %next.gep71, align 4, !tbaa !188
  %i.bb = insertelement <4 x float> poison, float %i.ax, i64 0
  %i.bc = insertelement <4 x float> %i.bb, float %i.ay, i64 1
  %i.bd = insertelement <4 x float> %i.bc, float %i.az, i64 2
  %i.be = insertelement <4 x float> %i.bd, float %i.ba, i64 3 ; 2 uses
  %i.bf = fadd <4 x float> %i.aw, %i.be
  %i.bg = getelementptr inbounds i8, ptr %next.gep, i64 -4 ; 2 uses
  %i.bh = getelementptr i8, ptr %i.ai, i64 28     ; 2 uses
  %i.bi = getelementptr i8, ptr %i.aj, i64 60     ; 2 uses
  %i.bj = getelementptr i8, ptr %i.ak, i64 92     ; 2 uses
  %i.bk = load float, ptr %i.bg, align 4, !tbaa !188
  %i.bl = load float, ptr %i.bh, align 4, !tbaa !188
  %i.bm = load float, ptr %i.bi, align 4, !tbaa !188
  %i.bn = load float, ptr %i.bj, align 4, !tbaa !188
  %i.bo = insertelement <4 x float> poison, float %i.bk, i64 0
  %i.bp = insertelement <4 x float> %i.bo, float %i.bl, i64 1
  %i.bq = insertelement <4 x float> %i.bp, float %i.bm, i64 2
  %i.br = insertelement <4 x float> %i.bq, float %i.bn, i64 3
  %i.bs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bf, <4 x float> splat (float f0xBFCB0673), <4 x float> %i.br) ; 4 uses
  %i.bt = extractelement <4 x float> %i.bs, i64 0
  %4 = extractelement <4 x float> %i.bs, i64 1
  %i.bu = extractelement <4 x float> %i.bs, i64 2
  %5 = extractelement <4 x float> %i.bs, i64 3
  store float %i.bt, ptr %i.bg, align 4, !tbaa !188
  store float %4, ptr %i.bh, align 4, !tbaa !188
  store float %i.bu, ptr %i.bi, align 4, !tbaa !188
  store float %5, ptr %i.bj, align 4, !tbaa !188
  %i.bv = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.bw = getelementptr i8, ptr %i.ai, i64 40
  %i.bx = getelementptr i8, ptr %i.aj, i64 72
  %i.by = getelementptr i8, ptr %i.ak, i64 104
  %i.bz = load float, ptr %i.bv, align 4, !tbaa !188
  %i.ca = load float, ptr %i.bw, align 4, !tbaa !188
  %i.cb = load float, ptr %i.bx, align 4, !tbaa !188
  %i.cc = load float, ptr %i.by, align 4, !tbaa !188
  %i.cd = insertelement <4 x float> poison, float %i.bz, i64 0
  %i.ce = insertelement <4 x float> %i.cd, float %i.ca, i64 1
  %i.cf = insertelement <4 x float> %i.ce, float %i.cb, i64 2
  %i.cg = insertelement <4 x float> %i.cf, float %i.cc, i64 3 ; 2 uses
  %i.ch = fadd <4 x float> %i.be, %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %next.gep, i64 4 ; 2 uses
  %i.cj = getelementptr i8, ptr %i.ai, i64 36     ; 2 uses
  %i.ck = getelementptr i8, ptr %i.aj, i64 68     ; 2 uses
  %i.cl = getelementptr i8, ptr %i.ak, i64 100    ; 2 uses
  %i.cm = load float, ptr %i.ci, align 4, !tbaa !188
  %i.cn = load float, ptr %i.cj, align 4, !tbaa !188
  %i.co = load float, ptr %i.ck, align 4, !tbaa !188
  %i.cp = load float, ptr %i.cl, align 4, !tbaa !188
  %i.cq = insertelement <4 x float> poison, float %i.cm, i64 0
  %i.cr = insertelement <4 x float> %i.cq, float %i.cn, i64 1
  %i.cs = insertelement <4 x float> %i.cr, float %i.co, i64 2
  %i.ct = insertelement <4 x float> %i.cs, float %i.cp, i64 3
  %i.cu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ch, <4 x float> splat (float f0xBFCB0673), <4 x float> %i.ct) ; 4 uses
  %i.cv = extractelement <4 x float> %i.cu, i64 0
  %6 = extractelement <4 x float> %i.cu, i64 1
  %i.cw = extractelement <4 x float> %i.cu, i64 2
  %7 = extractelement <4 x float> %i.cu, i64 3
  store float %i.cv, ptr %i.ci, align 4, !tbaa !188
  store float %6, ptr %i.cj, align 4, !tbaa !188
  store float %i.cw, ptr %i.ck, align 4, !tbaa !188
  store float %7, ptr %i.cl, align 4, !tbaa !188
  %i.cx = getelementptr inbounds nuw i8, ptr %next.gep, i64 16
  %i.cy = getelementptr i8, ptr %i.ai, i64 48
  %i.cz = getelementptr i8, ptr %i.aj, i64 80
  %i.da = getelementptr i8, ptr %i.ak, i64 112
  %i.db = load float, ptr %i.cx, align 4, !tbaa !188
  %i.dc = load float, ptr %i.cy, align 4, !tbaa !188
  %i.dd = load float, ptr %i.cz, align 4, !tbaa !188
  %i.de = load float, ptr %i.da, align 4, !tbaa !188
  %i.df = insertelement <4 x float> poison, float %i.db, i64 0
  %i.dg = insertelement <4 x float> %i.df, float %i.dc, i64 1
  %i.dh = insertelement <4 x float> %i.dg, float %i.dd, i64 2
  %i.di = insertelement <4 x float> %i.dh, float %i.de, i64 3 ; 2 uses
  %i.dj = fadd <4 x float> %i.cg, %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %next.gep, i64 12 ; 2 uses
  %i.dl = getelementptr i8, ptr %i.ai, i64 44     ; 2 uses
  %i.dm = getelementptr i8, ptr %i.aj, i64 76     ; 2 uses
  %i.dn = getelementptr i8, ptr %i.ak, i64 108    ; 2 uses
  %i.do = load float, ptr %i.dk, align 4, !tbaa !188
  %i.dp = load float, ptr %i.dl, align 4, !tbaa !188
  %i.dq = load float, ptr %i.dm, align 4, !tbaa !188
  %i.dr = load float, ptr %i.dn, align 4, !tbaa !188
  %i.ds = insertelement <4 x float> poison, float %i.do, i64 0
  %i.dt = insertelement <4 x float> %i.ds, float %i.dp, i64 1
  %i.du = insertelement <4 x float> %i.dt, float %i.dq, i64 2
  %i.dv = insertelement <4 x float> %i.du, float %i.dr, i64 3
  %i.dw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dj, <4 x float> splat (float f0xBFCB0673), <4 x float> %i.dv) ; 4 uses
  %i.dx = extractelement <4 x float> %i.dw, i64 0
  %8 = extractelement <4 x float> %i.dw, i64 1
  %i.dy = extractelement <4 x float> %i.dw, i64 2
  %9 = extractelement <4 x float> %i.dw, i64 3
  store float %i.dx, ptr %i.dk, align 4, !tbaa !188
  store float %8, ptr %i.dl, align 4, !tbaa !188
  store float %i.dy, ptr %i.dm, align 4, !tbaa !188
  store float %9, ptr %i.dn, align 4, !tbaa !188
  %i.dz = getelementptr inbounds nuw i8, ptr %next.gep, i64 24
  %i.ea = getelementptr i8, ptr %i.ai, i64 56
  %i.eb = getelementptr i8, ptr %i.aj, i64 88
  %i.ec = getelementptr i8, ptr %i.ak, i64 120
  %i.ed = load float, ptr %i.dz, align 4, !tbaa !188
  %i.ee = load float, ptr %i.ea, align 4, !tbaa !188
  %i.ef = load float, ptr %i.eb, align 4, !tbaa !188
  %i.eg = load float, ptr %i.ec, align 4, !tbaa !188
  %i.eh = insertelement <4 x float> poison, float %i.ed, i64 0
  %i.ei = insertelement <4 x float> %i.eh, float %i.ee, i64 1
  %i.ej = insertelement <4 x float> %i.ei, float %i.ef, i64 2
  %i.ek = insertelement <4 x float> %i.ej, float %i.eg, i64 3
  %i.el = fadd <4 x float> %i.di, %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %next.gep, i64 20 ; 2 uses
  %i.en = getelementptr i8, ptr %i.ai, i64 52     ; 2 uses
  %i.eo = getelementptr i8, ptr %i.aj, i64 84     ; 2 uses
  %i.ep = getelementptr i8, ptr %i.ak, i64 116    ; 2 uses
  %i.eq = load float, ptr %i.em, align 4, !tbaa !188
  %i.er = load float, ptr %i.en, align 4, !tbaa !188
  %i.es = load float, ptr %i.eo, align 4, !tbaa !188
  %i.et = load float, ptr %i.ep, align 4, !tbaa !188
  %i.eu = insertelement <4 x float> poison, float %i.eq, i64 0
  %i.ev = insertelement <4 x float> %i.eu, float %i.er, i64 1
  %i.ew = insertelement <4 x float> %i.ev, float %i.es, i64 2
  %i.ex = insertelement <4 x float> %i.ew, float %i.et, i64 3
  %i.ey = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.el, <4 x float> splat (float f0xBFCB0673), <4 x float> %i.ex) ; 4 uses
  %i.ez = extractelement <4 x float> %i.ey, i64 0
  %10 = extractelement <4 x float> %i.ey, i64 1
  %i.fa = extractelement <4 x float> %i.ey, i64 2
  %11 = extractelement <4 x float> %i.ey, i64 3
  store float %i.ez, ptr %i.em, align 4, !tbaa !188
  store float %10, ptr %i.en, align 4, !tbaa !188
  store float %i.fa, ptr %i.eo, align 4, !tbaa !188
  store float %11, ptr %i.ep, align 4, !tbaa !188
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fb = icmp eq i64 %index.next, %n.vec
  br i1 %i.fb, label %.lr.ph.i.i.preheader288, label %vector.body, !llvm.loop !189

.preheader.loopexit.i.i:                          ; preds = %.lr.ph.i.i
  %i.fc = add i32 %i.p, -5
  %i.fd = and i32 %i.fc, -4
  %i.fe = add nuw i32 %i.fd, 5
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.loopexit.i.i, %bb.c
  %.040.lcssa.i.i = phi i32 [ 1, %bb.c ], [ %i.fe, %.preheader.loopexit.i.i ] ; 4 uses
  %.0.lcssa.i.i = phi ptr [ %i.v, %bb.c ], [ %i.he, %.preheader.loopexit.i.i ] ; 7 uses
  %i.ff = icmp ult i32 %.040.lcssa.i.i, %i.p
  br i1 %i.ff, label %.lr.ph48.i.i.preheader, label %.loopexit.i.i

.lr.ph48.i.i.preheader:                           ; preds = %.preheader.i.i
  %i.fg = xor i32 %.040.lcssa.i.i, -1
  %i.fh = add i32 %i.p, %i.fg                     ; 2 uses
  %min.iters.check74 = icmp ult i32 %i.fh, 4
  br i1 %min.iters.check74, label %.lr.ph48.i.i.preheader286, label %vector.ph75

.lr.ph48.i.i.preheader286:                        ; preds = %vector.body78, %.lr.ph48.i.i.preheader
  %.147.i.i.ph = phi ptr [ %.0.lcssa.i.i, %.lr.ph48.i.i.preheader ], [ %i.fn, %vector.body78 ]
  %.14146.i.i.ph = phi i32 [ %.040.lcssa.i.i, %.lr.ph48.i.i.preheader ], [ %i.fp, %vector.body78 ]
  br label %.lr.ph48.i.i

vector.ph75:                                      ; preds = %.lr.ph48.i.i.preheader
  %i.fi = zext i32 %i.fh to i64
  %i.fj = add nuw nsw i64 %i.fi, 1                ; 2 uses
  %n.mod.vf76 = and i64 %i.fj, 3                  ; 2 uses
  %i.fk = icmp eq i64 %n.mod.vf76, 0
  %i.fl = select i1 %i.fk, i64 4, i64 %n.mod.vf76
  %n.vec77 = sub nsw i64 %i.fj, %i.fl             ; 3 uses
  %i.fm = shl nsw i64 %n.vec77, 3
  %i.fn = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.fm
  %i.fo = trunc i64 %n.vec77 to i32
  %i.fp = add i32 %.040.lcssa.i.i, %i.fo
  br label %vector.body78

vector.body78:                                    ; preds = %vector.body78, %vector.ph75
  %index79 = phi i64 [ 0, %vector.ph75 ], [ %index.next87, %vector.body78 ] ; 2 uses
  %i.fq = shl i64 %index79, 3                     ; 4 uses
  %next.gep80 = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.fq ; 3 uses
  %i.fr = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.fq
  %i.fs = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.fq
  %i.ft = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.fq
  %i.fu = getelementptr inbounds i8, ptr %next.gep80, i64 -8
  %wide.vec = load <8 x float>, ptr %i.fu, align 4, !tbaa !188
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.fv = getelementptr i8, ptr %next.gep80, i64 -4
  %wide.vec84 = load <8 x float>, ptr %i.fv, align 4, !tbaa !188 ; 2 uses
  %strided.vec85 = shufflevector <8 x float> %wide.vec84, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec86 = shufflevector <8 x float> %wide.vec84, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.fw = fadd <4 x float> %strided.vec, %strided.vec86
  %i.fx = getelementptr inbounds i8, ptr %next.gep80, i64 -4
  %i.fy = getelementptr i8, ptr %i.fr, i64 4
  %i.fz = getelementptr i8, ptr %i.fs, i64 12
  %i.ga = getelementptr i8, ptr %i.ft, i64 20
  %i.gb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fw, <4 x float> splat (float f0xBFCB0673), <4 x float> %strided.vec85) ; 4 uses
  %i.gc = extractelement <4 x float> %i.gb, i64 0
  %12 = extractelement <4 x float> %i.gb, i64 1
  %i.gd = extractelement <4 x float> %i.gb, i64 2
  %13 = extractelement <4 x float> %i.gb, i64 3
  store float %i.gc, ptr %i.fx, align 4, !tbaa !188
  store float %12, ptr %i.fy, align 4, !tbaa !188
  store float %i.gd, ptr %i.fz, align 4, !tbaa !188
  store float %13, ptr %i.ga, align 4, !tbaa !188
  %index.next87 = add nuw i64 %index79, 4         ; 2 uses
  %i.ge = icmp eq i64 %index.next87, %n.vec77
  br i1 %i.ge, label %.lr.ph48.i.i.preheader286, label %vector.body78, !llvm.loop !190

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader288, %.lr.ph.i.i
  %.044.i.i = phi ptr [ %i.he, %.lr.ph.i.i ], [ %.044.i.i.ph, %.lr.ph.i.i.preheader288 ] ; 10 uses
  %.04043.i.i = phi i32 [ %i.hf, %.lr.ph.i.i ], [ %.04043.i.i.ph, %.lr.ph.i.i.preheader288 ] ; 2 uses
  %i.gf = getelementptr inbounds i8, ptr %.044.i.i, i64 -8
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !188
  %i.gh = load float, ptr %.044.i.i, align 4, !tbaa !188 ; 2 uses
  %i.gi = fadd float %i.gg, %i.gh
  %i.gj = getelementptr inbounds i8, ptr %.044.i.i, i64 -4 ; 2 uses
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !188
  %i.gl = tail call float @llvm.fmuladd.f32(float %i.gi, float f0xBFCB0673, float %i.gk)
  store float %i.gl, ptr %i.gj, align 4, !tbaa !188
  %i.gm = getelementptr inbounds nuw i8, ptr %.044.i.i, i64 8
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !188 ; 2 uses
  %i.go = fadd float %i.gh, %i.gn
  %i.gp = getelementptr inbounds nuw i8, ptr %.044.i.i, i64 4 ; 2 uses
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !188
  %i.gr = tail call float @llvm.fmuladd.f32(float %i.go, float f0xBFCB0673, float %i.gq)
  store float %i.gr, ptr %i.gp, align 4, !tbaa !188
  %i.gs = getelementptr inbounds nuw i8, ptr %.044.i.i, i64 16
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !188 ; 2 uses
  %i.gu = fadd float %i.gn, %i.gt
  %i.gv = getelementptr inbounds nuw i8, ptr %.044.i.i, i64 12 ; 2 uses
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !188
  %i.gx = tail call float @llvm.fmuladd.f32(float %i.gu, float f0xBFCB0673, float %i.gw)
  store float %i.gx, ptr %i.gv, align 4, !tbaa !188
  %i.gy = getelementptr inbounds nuw i8, ptr %.044.i.i, i64 24
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !188
  %i.ha = fadd float %i.gt, %i.gz
  %i.hb = getelementptr inbounds nuw i8, ptr %.044.i.i, i64 20 ; 2 uses
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !188
  %i.hd = tail call float @llvm.fmuladd.f32(float %i.ha, float f0xBFCB0673, float %i.hc)
  store float %i.hd, ptr %i.hb, align 4, !tbaa !188
  %i.he = getelementptr inbounds nuw i8, ptr %.044.i.i, i64 32 ; 2 uses
  %i.hf = add nuw i32 %.04043.i.i, 4
  %i.hg = add nuw i32 %.04043.i.i, 7
  %i.hh = icmp ult i32 %i.hg, %i.p
  br i1 %i.hh, label %.lr.ph.i.i, label %.preheader.loopexit.i.i, !llvm.loop !191

.lr.ph48.i.i:                                     ; preds = %.lr.ph48.i.i.preheader286, %.lr.ph48.i.i
  %.147.i.i = phi ptr [ %i.hp, %.lr.ph48.i.i ], [ %.147.i.i.ph, %.lr.ph48.i.i.preheader286 ] ; 4 uses
  %.14146.i.i = phi i32 [ %i.hq, %.lr.ph48.i.i ], [ %.14146.i.i.ph, %.lr.ph48.i.i.preheader286 ]
  %i.hi = getelementptr inbounds i8, ptr %.147.i.i, i64 -8
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !188
  %i.hk = load float, ptr %.147.i.i, align 4, !tbaa !188
  %i.hl = fadd float %i.hj, %i.hk
  %i.hm = getelementptr inbounds i8, ptr %.147.i.i, i64 -4 ; 2 uses
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !188
  %i.ho = tail call float @llvm.fmuladd.f32(float %i.hl, float f0xBFCB0673, float %i.hn)
  store float %i.ho, ptr %i.hm, align 4, !tbaa !188
  %i.hp = getelementptr inbounds nuw i8, ptr %.147.i.i, i64 8 ; 2 uses
  %i.hq = add nuw i32 %.14146.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.hq, %i.p
  br i1 %exitcond.not.i.i, label %.loopexit.i.i, label %.lr.ph48.i.i, !llvm.loop !192

.loopexit.i.i:                                    ; preds = %.lr.ph48.i.i, %.preheader.i.i, %bb.b
  %.2.i.i = phi ptr [ %i.m, %bb.b ], [ %.0.lcssa.i.i, %.preheader.i.i ], [ %i.hp, %.lr.ph48.i.i ] ; 2 uses
  %i.hr = icmp ult i32 %i.o, %i.e                 ; 2 uses
  br i1 %i.hr, label %bb.d, label %opj_dwt_encode_step2.exit.i

bb.d:                                             ; preds = %.loopexit.i.i
  %i.hs = getelementptr inbounds i8, ptr %.2.i.i, i64 -8
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !188
  %i.hu = fmul float %i.ht, 2.000000e+00
  %i.hv = getelementptr inbounds i8, ptr %.2.i.i, i64 -4 ; 2 uses
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !188
  %i.hx = tail call float @llvm.fmuladd.f32(float %i.hu, float f0xBFCB0673, float %i.hw)
  store float %i.hx, ptr %i.hv, align 4, !tbaa !188
  br label %opj_dwt_encode_step2.exit.i

opj_dwt_encode_step2.exit.i:                      ; preds = %bb.d, %.loopexit.i.i
  %i.hy = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 4 uses
  %i.hz = sub nsw i32 %i.e, %i.h
  %i.ia = tail call noundef i32 @llvm.smin.i32(i32 range(i32 0, -2147483648) %i.d, i32 %i.hz) ; 2 uses
  %i.ib = tail call noundef i32 @llvm.umin.i32(i32 range(i32 0, -2147483648) %i.d, i32 %i.ia) ; 15 uses
  %.not.i42.i = icmp eq i32 %i.ib, 0              ; 2 uses
  br i1 %.not.i42.i, label %.loopexit.i46.i, label %bb.e

bb.e:                                             ; preds = %opj_dwt_encode_step2.exit.i
  %i.ic = load float, ptr %i.l, align 4, !tbaa !188
  %i.id = load float, ptr %i.hy, align 4, !tbaa !188
  %i.ie = fadd float %i.ic, %i.id
  %i.if = load float, ptr %i.j, align 4, !tbaa !188
  %i.ig = tail call float @llvm.fmuladd.f32(float %i.ie, float f0xBD5901AE, float %i.if)
  store float %i.ig, ptr %i.j, align 4, !tbaa !188
  %i.ih = getelementptr inbounds nuw i8, ptr %i.j, i64 12 ; 7 uses
  %i.ii = icmp samesign ugt i32 %i.ib, 4
  br i1 %i.ii, label %.lr.ph.i52.i.preheader, label %.preheader.i43.i

.lr.ph.i52.i.preheader:                           ; preds = %bb.e
  %i.ij = add nsw i32 %i.ib, -5                   ; 2 uses
  %min.iters.check92 = icmp ult i32 %i.ij, 16
  br i1 %min.iters.check92, label %.lr.ph.i52.i.preheader284, label %vector.ph93

.lr.ph.i52.i.preheader284:                        ; preds = %vector.body96, %.lr.ph.i52.i.preheader
  %.044.i53.i.ph = phi ptr [ %i.ih, %.lr.ph.i52.i.preheader ], [ %i.ip, %vector.body96 ]
  %.04043.i54.i.ph = phi i32 [ 1, %.lr.ph.i52.i.preheader ], [ %i.is, %vector.body96 ]
  br label %.lr.ph.i52.i

vector.ph93:                                      ; preds = %.lr.ph.i52.i.preheader
  %i.ik = lshr i32 %i.ij, 2
  %narrow266 = add nuw nsw i32 %i.ik, 1
  %i.il = zext nneg i32 %narrow266 to i64         ; 2 uses
  %n.mod.vf94 = and i64 %i.il, 3                  ; 2 uses
  %i.im = icmp eq i64 %n.mod.vf94, 0
  %i.in = select i1 %i.im, i64 4, i64 %n.mod.vf94
  %n.vec95 = sub nsw i64 %i.il, %i.in             ; 3 uses
  %i.io = shl nsw i64 %n.vec95, 5
  %i.ip = getelementptr i8, ptr %i.ih, i64 %i.io
  %i.iq = trunc i64 %n.vec95 to i32
  %i.ir = shl i32 %i.iq, 2
  %i.is = or disjoint i32 %i.ir, 1
  br label %vector.body96

vector.body96:                                    ; preds = %vector.body96, %vector.ph93
  %index97 = phi i64 [ 0, %vector.ph93 ], [ %index.next102, %vector.body96 ] ; 2 uses
  %i.it = shl i64 %index97, 5                     ; 4 uses
  %next.gep98 = getelementptr i8, ptr %i.ih, i64 %i.it ; 9 uses
  %i.iu = getelementptr i8, ptr %i.ih, i64 %i.it  ; 9 uses
  %next.gep99 = getelementptr i8, ptr %i.iu, i64 32
  %i.iv = getelementptr i8, ptr %i.ih, i64 %i.it  ; 9 uses
  %next.gep100 = getelementptr i8, ptr %i.iv, i64 64
  %i.iw = getelementptr i8, ptr %i.ih, i64 %i.it  ; 9 uses
  %next.gep101 = getelementptr i8, ptr %i.iw, i64 96
  %i.ix = getelementptr inbounds i8, ptr %next.gep98, i64 -8
  %i.iy = getelementptr i8, ptr %i.iu, i64 24
  %i.iz = getelementptr i8, ptr %i.iv, i64 56
  %i.ja = getelementptr i8, ptr %i.iw, i64 88
  %i.jb = load float, ptr %i.ix, align 4, !tbaa !188
  %i.jc = load float, ptr %i.iy, align 4, !tbaa !188
  %i.jd = load float, ptr %i.iz, align 4, !tbaa !188
  %i.je = load float, ptr %i.ja, align 4, !tbaa !188
  %i.jf = insertelement <4 x float> poison, float %i.jb, i64 0
  %i.jg = insertelement <4 x float> %i.jf, float %i.jc, i64 1
  %i.jh = insertelement <4 x float> %i.jg, float %i.jd, i64 2
  %i.ji = insertelement <4 x float> %i.jh, float %i.je, i64 3
  %i.jj = load float, ptr %next.gep98, align 4, !tbaa !188
  %i.jk = load float, ptr %next.gep99, align 4, !tbaa !188
  %i.jl = load float, ptr %next.gep100, align 4, !tbaa !188
  %i.jm = load float, ptr %next.gep101, align 4, !tbaa !188
  %i.jn = insertelement <4 x float> poison, float %i.jj, i64 0
  %i.jo = insertelement <4 x float> %i.jn, float %i.jk, i64 1
  %i.jp = insertelement <4 x float> %i.jo, float %i.jl, i64 2
  %i.jq = insertelement <4 x float> %i.jp, float %i.jm, i64 3 ; 2 uses
  %i.jr = fadd <4 x float> %i.ji, %i.jq
  %i.js = getelementptr inbounds i8, ptr %next.gep98, i64 -4 ; 2 uses
  %i.jt = getelementptr i8, ptr %i.iu, i64 28     ; 2 uses
  %i.ju = getelementptr i8, ptr %i.iv, i64 60     ; 2 uses
  %i.jv = getelementptr i8, ptr %i.iw, i64 92     ; 2 uses
  %i.jw = load float, ptr %i.js, align 4, !tbaa !188
  %i.jx = load float, ptr %i.jt, align 4, !tbaa !188
  %i.jy = load float, ptr %i.ju, align 4, !tbaa !188
  %i.jz = load float, ptr %i.jv, align 4, !tbaa !188
  %i.ka = insertelement <4 x float> poison, float %i.jw, i64 0
  %i.kb = insertelement <4 x float> %i.ka, float %i.jx, i64 1
  %i.kc = insertelement <4 x float> %i.kb, float %i.jy, i64 2
  %i.kd = insertelement <4 x float> %i.kc, float %i.jz, i64 3
  %i.ke = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jr, <4 x float> splat (float f0xBD5901AE), <4 x float> %i.kd) ; 4 uses
  %i.kf = extractelement <4 x float> %i.ke, i64 0
  %14 = extractelement <4 x float> %i.ke, i64 1
  %i.kg = extractelement <4 x float> %i.ke, i64 2
  %15 = extractelement <4 x float> %i.ke, i64 3
  store float %i.kf, ptr %i.js, align 4, !tbaa !188
  store float %14, ptr %i.jt, align 4, !tbaa !188
  store float %i.kg, ptr %i.ju, align 4, !tbaa !188
  store float %15, ptr %i.jv, align 4, !tbaa !188
  %i.kh = getelementptr inbounds nuw i8, ptr %next.gep98, i64 8
  %i.ki = getelementptr i8, ptr %i.iu, i64 40
  %i.kj = getelementptr i8, ptr %i.iv, i64 72
  %i.kk = getelementptr i8, ptr %i.iw, i64 104
  %i.kl = load float, ptr %i.kh, align 4, !tbaa !188
  %i.km = load float, ptr %i.ki, align 4, !tbaa !188
  %i.kn = load float, ptr %i.kj, align 4, !tbaa !188
  %i.ko = load float, ptr %i.kk, align 4, !tbaa !188
  %i.kp = insertelement <4 x float> poison, float %i.kl, i64 0
  %i.kq = insertelement <4 x float> %i.kp, float %i.km, i64 1
  %i.kr = insertelement <4 x float> %i.kq, float %i.kn, i64 2
  %i.ks = insertelement <4 x float> %i.kr, float %i.ko, i64 3 ; 2 uses
  %i.kt = fadd <4 x float> %i.jq, %i.ks
  %i.ku = getelementptr inbounds nuw i8, ptr %next.gep98, i64 4 ; 2 uses
  %i.kv = getelementptr i8, ptr %i.iu, i64 36     ; 2 uses
  %i.kw = getelementptr i8, ptr %i.iv, i64 68     ; 2 uses
  %i.kx = getelementptr i8, ptr %i.iw, i64 100    ; 2 uses
  %i.ky = load float, ptr %i.ku, align 4, !tbaa !188
  %i.kz = load float, ptr %i.kv, align 4, !tbaa !188
  %i.la = load float, ptr %i.kw, align 4, !tbaa !188
  %i.lb = load float, ptr %i.kx, align 4, !tbaa !188
  %i.lc = insertelement <4 x float> poison, float %i.ky, i64 0
  %i.ld = insertelement <4 x float> %i.lc, float %i.kz, i64 1
  %i.le = insertelement <4 x float> %i.ld, float %i.la, i64 2
  %i.lf = insertelement <4 x float> %i.le, float %i.lb, i64 3
  %i.lg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.kt, <4 x float> splat (float f0xBD5901AE), <4 x float> %i.lf) ; 4 uses
  %i.lh = extractelement <4 x float> %i.lg, i64 0
  %16 = extractelement <4 x float> %i.lg, i64 1
  %i.li = extractelement <4 x float> %i.lg, i64 2
  %17 = extractelement <4 x float> %i.lg, i64 3
  store float %i.lh, ptr %i.ku, align 4, !tbaa !188
  store float %16, ptr %i.kv, align 4, !tbaa !188
  store float %i.li, ptr %i.kw, align 4, !tbaa !188
  store float %17, ptr %i.kx, align 4, !tbaa !188
  %i.lj = getelementptr inbounds nuw i8, ptr %next.gep98, i64 16
  %i.lk = getelementptr i8, ptr %i.iu, i64 48
  %i.ll = getelementptr i8, ptr %i.iv, i64 80
  %i.lm = getelementptr i8, ptr %i.iw, i64 112
  %i.ln = load float, ptr %i.lj, align 4, !tbaa !188
  %i.lo = load float, ptr %i.lk, align 4, !tbaa !188
  %i.lp = load float, ptr %i.ll, align 4, !tbaa !188
  %i.lq = load float, ptr %i.lm, align 4, !tbaa !188
  %i.lr = insertelement <4 x float> poison, float %i.ln, i64 0
  %i.ls = insertelement <4 x float> %i.lr, float %i.lo, i64 1
  %i.lt = insertelement <4 x float> %i.ls, float %i.lp, i64 2
  %i.lu = insertelement <4 x float> %i.lt, float %i.lq, i64 3 ; 2 uses
  %i.lv = fadd <4 x float> %i.ks, %i.lu
  %i.lw = getelementptr inbounds nuw i8, ptr %next.gep98, i64 12 ; 2 uses
  %i.lx = getelementptr i8, ptr %i.iu, i64 44     ; 2 uses
  %i.ly = getelementptr i8, ptr %i.iv, i64 76     ; 2 uses
  %i.lz = getelementptr i8, ptr %i.iw, i64 108    ; 2 uses
  %i.ma = load float, ptr %i.lw, align 4, !tbaa !188
  %i.mb = load float, ptr %i.lx, align 4, !tbaa !188
  %i.mc = load float, ptr %i.ly, align 4, !tbaa !188
  %i.md = load float, ptr %i.lz, align 4, !tbaa !188
  %i.me = insertelement <4 x float> poison, float %i.ma, i64 0
  %i.mf = insertelement <4 x float> %i.me, float %i.mb, i64 1
  %i.mg = insertelement <4 x float> %i.mf, float %i.mc, i64 2
  %i.mh = insertelement <4 x float> %i.mg, float %i.md, i64 3
  %i.mi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lv, <4 x float> splat (float f0xBD5901AE), <4 x float> %i.mh) ; 4 uses
  %i.mj = extractelement <4 x float> %i.mi, i64 0
  %18 = extractelement <4 x float> %i.mi, i64 1
  %i.mk = extractelement <4 x float> %i.mi, i64 2
  %19 = extractelement <4 x float> %i.mi, i64 3
  store float %i.mj, ptr %i.lw, align 4, !tbaa !188
  store float %18, ptr %i.lx, align 4, !tbaa !188
  store float %i.mk, ptr %i.ly, align 4, !tbaa !188
  store float %19, ptr %i.lz, align 4, !tbaa !188
  %i.ml = getelementptr inbounds nuw i8, ptr %next.gep98, i64 24
  %i.mm = getelementptr i8, ptr %i.iu, i64 56
  %i.mn = getelementptr i8, ptr %i.iv, i64 88
  %i.mo = getelementptr i8, ptr %i.iw, i64 120
  %i.mp = load float, ptr %i.ml, align 4, !tbaa !188
  %i.mq = load float, ptr %i.mm, align 4, !tbaa !188
  %i.mr = load float, ptr %i.mn, align 4, !tbaa !188
  %i.ms = load float, ptr %i.mo, align 4, !tbaa !188
  %i.mt = insertelement <4 x float> poison, float %i.mp, i64 0
  %i.mu = insertelement <4 x float> %i.mt, float %i.mq, i64 1
  %i.mv = insertelement <4 x float> %i.mu, float %i.mr, i64 2
  %i.mw = insertelement <4 x float> %i.mv, float %i.ms, i64 3
  %i.mx = fadd <4 x float> %i.lu, %i.mw
  %i.my = getelementptr inbounds nuw i8, ptr %next.gep98, i64 20 ; 2 uses
  %i.mz = getelementptr i8, ptr %i.iu, i64 52     ; 2 uses
  %i.na = getelementptr i8, ptr %i.iv, i64 84     ; 2 uses
  %i.nb = getelementptr i8, ptr %i.iw, i64 116    ; 2 uses
  %i.nc = load float, ptr %i.my, align 4, !tbaa !188
  %i.nd = load float, ptr %i.mz, align 4, !tbaa !188
  %i.ne = load float, ptr %i.na, align 4, !tbaa !188
  %i.nf = load float, ptr %i.nb, align 4, !tbaa !188
  %i.ng = insertelement <4 x float> poison, float %i.nc, i64 0
  %i.nh = insertelement <4 x float> %i.ng, float %i.nd, i64 1
  %i.ni = insertelement <4 x float> %i.nh, float %i.ne, i64 2
  %i.nj = insertelement <4 x float> %i.ni, float %i.nf, i64 3
  %i.nk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mx, <4 x float> splat (float f0xBD5901AE), <4 x float> %i.nj) ; 4 uses
  %i.nl = extractelement <4 x float> %i.nk, i64 0
  %20 = extractelement <4 x float> %i.nk, i64 1
  %i.nm = extractelement <4 x float> %i.nk, i64 2
  %21 = extractelement <4 x float> %i.nk, i64 3
  store float %i.nl, ptr %i.my, align 4, !tbaa !188
  store float %20, ptr %i.mz, align 4, !tbaa !188
  store float %i.nm, ptr %i.na, align 4, !tbaa !188
  store float %21, ptr %i.nb, align 4, !tbaa !188
  %index.next102 = add nuw i64 %index97, 4        ; 2 uses
  %i.nn = icmp eq i64 %index.next102, %n.vec95
  br i1 %i.nn, label %.lr.ph.i52.i.preheader284, label %vector.body96, !llvm.loop !193

.preheader.loopexit.i55.i:                        ; preds = %.lr.ph.i52.i
  %i.no = add nsw i32 %i.ib, -5
  %i.np = and i32 %i.no, -4
  %i.nq = add nuw nsw i32 %i.np, 5
  br label %.preheader.i43.i

.preheader.i43.i:                                 ; preds = %.preheader.loopexit.i55.i, %bb.e
  %.040.lcssa.i44.i = phi i32 [ 1, %bb.e ], [ %i.nq, %.preheader.loopexit.i55.i ] ; 4 uses
  %.0.lcssa.i45.i = phi ptr [ %i.ih, %bb.e ], [ %i.pq, %.preheader.loopexit.i55.i ] ; 7 uses
  %i.nr = icmp samesign ult i32 %.040.lcssa.i44.i, %i.ib
  br i1 %i.nr, label %.lr.ph48.i48.i.preheader, label %.loopexit.i46.i

.lr.ph48.i48.i.preheader:                         ; preds = %.preheader.i43.i
  %i.ns = xor i32 %.040.lcssa.i44.i, -1
  %i.nt = add i32 %i.ib, %i.ns                    ; 2 uses
  %min.iters.check107 = icmp ult i32 %i.nt, 4
  br i1 %min.iters.check107, label %.lr.ph48.i48.i.preheader282, label %vector.ph108

.lr.ph48.i48.i.preheader282:                      ; preds = %vector.body111, %.lr.ph48.i48.i.preheader
  %.147.i49.i.ph = phi ptr [ %.0.lcssa.i45.i, %.lr.ph48.i48.i.preheader ], [ %i.nz, %vector.body111 ]
  %.14146.i50.i.ph = phi i32 [ %.040.lcssa.i44.i, %.lr.ph48.i48.i.preheader ], [ %i.ob, %vector.body111 ]
  br label %.lr.ph48.i48.i

vector.ph108:                                     ; preds = %.lr.ph48.i48.i.preheader
  %i.nu = zext i32 %i.nt to i64
  %i.nv = add nuw nsw i64 %i.nu, 1                ; 2 uses
  %n.mod.vf109 = and i64 %i.nv, 3                 ; 2 uses
  %i.nw = icmp eq i64 %n.mod.vf109, 0
  %i.nx = select i1 %i.nw, i64 4, i64 %n.mod.vf109
  %n.vec110 = sub nsw i64 %i.nv, %i.nx            ; 3 uses
  %i.ny = shl nsw i64 %n.vec110, 3
  %i.nz = getelementptr i8, ptr %.0.lcssa.i45.i, i64 %i.ny
  %i.oa = trunc i64 %n.vec110 to i32
  %i.ob = add i32 %.040.lcssa.i44.i, %i.oa
  br label %vector.body111

vector.body111:                                   ; preds = %vector.body111, %vector.ph108
  %index112 = phi i64 [ 0, %vector.ph108 ], [ %index.next122, %vector.body111 ] ; 2 uses
  %i.oc = shl i64 %index112, 3                    ; 4 uses
  %next.gep113 = getelementptr i8, ptr %.0.lcssa.i45.i, i64 %i.oc ; 3 uses
  %i.od = getelementptr i8, ptr %.0.lcssa.i45.i, i64 %i.oc
  %i.oe = getelementptr i8, ptr %.0.lcssa.i45.i, i64 %i.oc
  %i.of = getelementptr i8, ptr %.0.lcssa.i45.i, i64 %i.oc
  %i.og = getelementptr inbounds i8, ptr %next.gep113, i64 -8
  %wide.vec117 = load <8 x float>, ptr %i.og, align 4, !tbaa !188
  %strided.vec118 = shufflevector <8 x float> %wide.vec117, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.oh = getelementptr i8, ptr %next.gep113, i64 -4
  %wide.vec119 = load <8 x float>, ptr %i.oh, align 4, !tbaa !188 ; 2 uses
  %strided.vec120 = shufflevector <8 x float> %wide.vec119, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec121 = shufflevector <8 x float> %wide.vec119, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.oi = fadd <4 x float> %strided.vec118, %strided.vec121
  %i.oj = getelementptr inbounds i8, ptr %next.gep113, i64 -4
  %i.ok = getelementptr i8, ptr %i.od, i64 4
  %i.ol = getelementptr i8, ptr %i.oe, i64 12
  %i.om = getelementptr i8, ptr %i.of, i64 20
  %i.on = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.oi, <4 x float> splat (float f0xBD5901AE), <4 x float> %strided.vec120) ; 4 uses
  %i.oo = extractelement <4 x float> %i.on, i64 0
  %22 = extractelement <4 x float> %i.on, i64 1
  %i.op = extractelement <4 x float> %i.on, i64 2
  %23 = extractelement <4 x float> %i.on, i64 3
  store float %i.oo, ptr %i.oj, align 4, !tbaa !188
  store float %22, ptr %i.ok, align 4, !tbaa !188
  store float %i.op, ptr %i.ol, align 4, !tbaa !188
  store float %23, ptr %i.om, align 4, !tbaa !188
  %index.next122 = add nuw i64 %index112, 4       ; 2 uses
  %i.oq = icmp eq i64 %index.next122, %n.vec110
  br i1 %i.oq, label %.lr.ph48.i48.i.preheader282, label %vector.body111, !llvm.loop !194

.lr.ph.i52.i:                                     ; preds = %.lr.ph.i52.i.preheader284, %.lr.ph.i52.i
  %.044.i53.i = phi ptr [ %i.pq, %.lr.ph.i52.i ], [ %.044.i53.i.ph, %.lr.ph.i52.i.preheader284 ] ; 10 uses
  %.04043.i54.i = phi i32 [ %i.pr, %.lr.ph.i52.i ], [ %.04043.i54.i.ph, %.lr.ph.i52.i.preheader284 ] ; 2 uses
  %i.or = getelementptr inbounds i8, ptr %.044.i53.i, i64 -8
  %i.os = load float, ptr %i.or, align 4, !tbaa !188
  %i.ot = load float, ptr %.044.i53.i, align 4, !tbaa !188 ; 2 uses
  %i.ou = fadd float %i.os, %i.ot
  %i.ov = getelementptr inbounds i8, ptr %.044.i53.i, i64 -4 ; 2 uses
  %i.ow = load float, ptr %i.ov, align 4, !tbaa !188
  %i.ox = tail call float @llvm.fmuladd.f32(float %i.ou, float f0xBD5901AE, float %i.ow)
  store float %i.ox, ptr %i.ov, align 4, !tbaa !188
  %i.oy = getelementptr inbounds nuw i8, ptr %.044.i53.i, i64 8
  %i.oz = load float, ptr %i.oy, align 4, !tbaa !188 ; 2 uses
  %i.pa = fadd float %i.ot, %i.oz
  %i.pb = getelementptr inbounds nuw i8, ptr %.044.i53.i, i64 4 ; 2 uses
  %i.pc = load float, ptr %i.pb, align 4, !tbaa !188
  %i.pd = tail call float @llvm.fmuladd.f32(float %i.pa, float f0xBD5901AE, float %i.pc)
  store float %i.pd, ptr %i.pb, align 4, !tbaa !188
  %i.pe = getelementptr inbounds nuw i8, ptr %.044.i53.i, i64 16
  %i.pf = load float, ptr %i.pe, align 4, !tbaa !188 ; 2 uses
  %i.pg = fadd float %i.oz, %i.pf
  %i.ph = getelementptr inbounds nuw i8, ptr %.044.i53.i, i64 12 ; 2 uses
  %i.pi = load float, ptr %i.ph, align 4, !tbaa !188
  %i.pj = tail call float @llvm.fmuladd.f32(float %i.pg, float f0xBD5901AE, float %i.pi)
  store float %i.pj, ptr %i.ph, align 4, !tbaa !188
  %i.pk = getelementptr inbounds nuw i8, ptr %.044.i53.i, i64 24
  %i.pl = load float, ptr %i.pk, align 4, !tbaa !188
  %i.pm = fadd float %i.pf, %i.pl
  %i.pn = getelementptr inbounds nuw i8, ptr %.044.i53.i, i64 20 ; 2 uses
  %i.po = load float, ptr %i.pn, align 4, !tbaa !188
  %i.pp = tail call float @llvm.fmuladd.f32(float %i.pm, float f0xBD5901AE, float %i.po)
  store float %i.pp, ptr %i.pn, align 4, !tbaa !188
  %i.pq = getelementptr inbounds nuw i8, ptr %.044.i53.i, i64 32 ; 2 uses
  %i.pr = add nuw nsw i32 %.04043.i54.i, 4
  %i.ps = add nuw i32 %.04043.i54.i, 7
  %i.pt = icmp ult i32 %i.ps, %i.ib
  br i1 %i.pt, label %.lr.ph.i52.i, label %.preheader.loopexit.i55.i, !llvm.loop !195

.lr.ph48.i48.i:                                   ; preds = %.lr.ph48.i48.i.preheader282, %.lr.ph48.i48.i
  %.147.i49.i = phi ptr [ %i.qb, %.lr.ph48.i48.i ], [ %.147.i49.i.ph, %.lr.ph48.i48.i.preheader282 ] ; 4 uses
  %.14146.i50.i = phi i32 [ %i.qc, %.lr.ph48.i48.i ], [ %.14146.i50.i.ph, %.lr.ph48.i48.i.preheader282 ]
  %i.pu = getelementptr inbounds i8, ptr %.147.i49.i, i64 -8
  %i.pv = load float, ptr %i.pu, align 4, !tbaa !188
  %i.pw = load float, ptr %.147.i49.i, align 4, !tbaa !188
  %i.px = fadd float %i.pv, %i.pw
  %i.py = getelementptr inbounds i8, ptr %.147.i49.i, i64 -4 ; 2 uses
  %i.pz = load float, ptr %i.py, align 4, !tbaa !188
  %i.qa = tail call float @llvm.fmuladd.f32(float %i.px, float f0xBD5901AE, float %i.pz)
  store float %i.qa, ptr %i.py, align 4, !tbaa !188
  %i.qb = getelementptr inbounds nuw i8, ptr %.147.i49.i, i64 8 ; 2 uses
  %i.qc = add nuw i32 %.14146.i50.i, 1            ; 2 uses
  %exitcond.not.i51.i = icmp eq i32 %i.qc, %i.ib
  br i1 %exitcond.not.i51.i, label %.loopexit.i46.i, label %.lr.ph48.i48.i, !llvm.loop !196

.loopexit.i46.i:                                  ; preds = %.lr.ph48.i48.i, %.preheader.i43.i, %opj_dwt_encode_step2.exit.i
  %.2.i47.i = phi ptr [ %i.hy, %opj_dwt_encode_step2.exit.i ], [ %.0.lcssa.i45.i, %.preheader.i43.i ], [ %i.qb, %.lr.ph48.i48.i ] ; 2 uses
  %i.qd = icmp ult i32 %i.ia, %i.d                ; 2 uses
  br i1 %i.qd, label %bb.f, label %opj_dwt_encode_step2.exit56.i

bb.f:                                             ; preds = %.loopexit.i46.i
  %i.qe = getelementptr inbounds i8, ptr %.2.i47.i, i64 -8
  %i.qf = load float, ptr %i.qe, align 4, !tbaa !188
  %i.qg = fmul float %i.qf, 2.000000e+00
  %i.qh = getelementptr inbounds i8, ptr %.2.i47.i, i64 -4 ; 2 uses
  %i.qi = load float, ptr %i.qh, align 4, !tbaa !188
  %i.qj = tail call float @llvm.fmuladd.f32(float %i.qg, float f0xBD5901AE, float %i.qi)
  store float %i.qj, ptr %i.qh, align 4, !tbaa !188
  br label %opj_dwt_encode_step2.exit56.i

opj_dwt_encode_step2.exit56.i:                    ; preds = %bb.f, %.loopexit.i46.i
  br i1 %.not.i.i, label %.loopexit.i61.i, label %bb.g

bb.g:                                             ; preds = %opj_dwt_encode_step2.exit56.i
  %i.qk = load float, ptr %i.j, align 4, !tbaa !188
  %i.ql = load float, ptr %i.m, align 4, !tbaa !188
  %i.qm = fadd float %i.qk, %i.ql
  %i.qn = load float, ptr %i.l, align 4, !tbaa !188
  %i.qo = tail call float @llvm.fmuladd.f32(float %i.qm, float f0x3F620676, float %i.qn)
  store float %i.qo, ptr %i.l, align 4, !tbaa !188
  %i.qp = getelementptr inbounds nuw i8, ptr %i.l, i64 12 ; 7 uses
  %i.qq = icmp ugt i32 %i.p, 4
  br i1 %i.qq, label %.lr.ph.i67.i.preheader, label %.preheader.i58.i

.lr.ph.i67.i.preheader:                           ; preds = %bb.g
  %i.qr = add i32 %i.p, -5                        ; 2 uses
  %min.iters.check127 = icmp ult i32 %i.qr, 16
  br i1 %min.iters.check127, label %.lr.ph.i67.i.preheader280, label %vector.ph128

.lr.ph.i67.i.preheader280:                        ; preds = %vector.body131, %.lr.ph.i67.i.preheader
  %.044.i68.i.ph = phi ptr [ %i.qp, %.lr.ph.i67.i.preheader ], [ %i.qx, %vector.body131 ]
  %.04043.i69.i.ph = phi i32 [ 1, %.lr.ph.i67.i.preheader ], [ %i.ra, %vector.body131 ]
  br label %.lr.ph.i67.i

vector.ph128:                                     ; preds = %.lr.ph.i67.i.preheader
  %i.qs = lshr i32 %i.qr, 2
  %narrow267 = add nuw nsw i32 %i.qs, 1
  %i.qt = zext nneg i32 %narrow267 to i64         ; 2 uses
  %n.mod.vf129 = and i64 %i.qt, 3                 ; 2 uses
  %i.qu = icmp eq i64 %n.mod.vf129, 0
  %i.qv = select i1 %i.qu, i64 4, i64 %n.mod.vf129
  %n.vec130 = sub nsw i64 %i.qt, %i.qv            ; 3 uses
  %i.qw = shl nsw i64 %n.vec130, 5
  %i.qx = getelementptr i8, ptr %i.qp, i64 %i.qw
  %i.qy = trunc i64 %n.vec130 to i32
  %i.qz = shl i32 %i.qy, 2
  %i.ra = or disjoint i32 %i.qz, 1
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %vector.ph128
  %index132 = phi i64 [ 0, %vector.ph128 ], [ %index.next137, %vector.body131 ] ; 2 uses
  %i.rb = shl i64 %index132, 5                    ; 4 uses
  %next.gep133 = getelementptr i8, ptr %i.qp, i64 %i.rb ; 9 uses
  %i.rc = getelementptr i8, ptr %i.qp, i64 %i.rb  ; 9 uses
  %next.gep134 = getelementptr i8, ptr %i.rc, i64 32
  %i.rd = getelementptr i8, ptr %i.qp, i64 %i.rb  ; 9 uses
  %next.gep135 = getelementptr i8, ptr %i.rd, i64 64
  %i.re = getelementptr i8, ptr %i.qp, i64 %i.rb  ; 9 uses
  %next.gep136 = getelementptr i8, ptr %i.re, i64 96
  %i.rf = getelementptr inbounds i8, ptr %next.gep133, i64 -8
  %i.rg = getelementptr i8, ptr %i.rc, i64 24
  %i.rh = getelementptr i8, ptr %i.rd, i64 56
  %i.ri = getelementptr i8, ptr %i.re, i64 88
  %i.rj = load float, ptr %i.rf, align 4, !tbaa !188
  %i.rk = load float, ptr %i.rg, align 4, !tbaa !188
  %i.rl = load float, ptr %i.rh, align 4, !tbaa !188
  %i.rm = load float, ptr %i.ri, align 4, !tbaa !188
  %i.rn = insertelement <4 x float> poison, float %i.rj, i64 0
  %i.ro = insertelement <4 x float> %i.rn, float %i.rk, i64 1
  %i.rp = insertelement <4 x float> %i.ro, float %i.rl, i64 2
  %i.rq = insertelement <4 x float> %i.rp, float %i.rm, i64 3
  %i.rr = load float, ptr %next.gep133, align 4, !tbaa !188
  %i.rs = load float, ptr %next.gep134, align 4, !tbaa !188
  %i.rt = load float, ptr %next.gep135, align 4, !tbaa !188
  %i.ru = load float, ptr %next.gep136, align 4, !tbaa !188
  %i.rv = insertelement <4 x float> poison, float %i.rr, i64 0
  %i.rw = insertelement <4 x float> %i.rv, float %i.rs, i64 1
  %i.rx = insertelement <4 x float> %i.rw, float %i.rt, i64 2
  %i.ry = insertelement <4 x float> %i.rx, float %i.ru, i64 3 ; 2 uses
  %i.rz = fadd <4 x float> %i.rq, %i.ry
  %i.sa = getelementptr inbounds i8, ptr %next.gep133, i64 -4 ; 2 uses
  %i.sb = getelementptr i8, ptr %i.rc, i64 28     ; 2 uses
  %i.sc = getelementptr i8, ptr %i.rd, i64 60     ; 2 uses
  %i.sd = getelementptr i8, ptr %i.re, i64 92     ; 2 uses
  %i.se = load float, ptr %i.sa, align 4, !tbaa !188
  %i.sf = load float, ptr %i.sb, align 4, !tbaa !188
  %i.sg = load float, ptr %i.sc, align 4, !tbaa !188
  %i.sh = load float, ptr %i.sd, align 4, !tbaa !188
  %i.si = insertelement <4 x float> poison, float %i.se, i64 0
  %i.sj = insertelement <4 x float> %i.si, float %i.sf, i64 1
  %i.sk = insertelement <4 x float> %i.sj, float %i.sg, i64 2
  %i.sl = insertelement <4 x float> %i.sk, float %i.sh, i64 3
  %i.sm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.rz, <4 x float> splat (float f0x3F620676), <4 x float> %i.sl) ; 4 uses
  %i.sn = extractelement <4 x float> %i.sm, i64 0
  %24 = extractelement <4 x float> %i.sm, i64 1
  %i.so = extractelement <4 x float> %i.sm, i64 2
  %25 = extractelement <4 x float> %i.sm, i64 3
  store float %i.sn, ptr %i.sa, align 4, !tbaa !188
  store float %24, ptr %i.sb, align 4, !tbaa !188
  store float %i.so, ptr %i.sc, align 4, !tbaa !188
  store float %25, ptr %i.sd, align 4, !tbaa !188
  %i.sp = getelementptr inbounds nuw i8, ptr %next.gep133, i64 8
  %i.sq = getelementptr i8, ptr %i.rc, i64 40
  %i.sr = getelementptr i8, ptr %i.rd, i64 72
  %i.ss = getelementptr i8, ptr %i.re, i64 104
  %i.st = load float, ptr %i.sp, align 4, !tbaa !188
  %i.su = load float, ptr %i.sq, align 4, !tbaa !188
  %i.sv = load float, ptr %i.sr, align 4, !tbaa !188
  %i.sw = load float, ptr %i.ss, align 4, !tbaa !188
  %i.sx = insertelement <4 x float> poison, float %i.st, i64 0
  %i.sy = insertelement <4 x float> %i.sx, float %i.su, i64 1
  %i.sz = insertelement <4 x float> %i.sy, float %i.sv, i64 2
  %i.ta = insertelement <4 x float> %i.sz, float %i.sw, i64 3 ; 2 uses
  %i.tb = fadd <4 x float> %i.ry, %i.ta
  %i.tc = getelementptr inbounds nuw i8, ptr %next.gep133, i64 4 ; 2 uses
  %i.td = getelementptr i8, ptr %i.rc, i64 36     ; 2 uses
  %i.te = getelementptr i8, ptr %i.rd, i64 68     ; 2 uses
  %i.tf = getelementptr i8, ptr %i.re, i64 100    ; 2 uses
  %i.tg = load float, ptr %i.tc, align 4, !tbaa !188
  %i.th = load float, ptr %i.td, align 4, !tbaa !188
  %i.ti = load float, ptr %i.te, align 4, !tbaa !188
  %i.tj = load float, ptr %i.tf, align 4, !tbaa !188
  %i.tk = insertelement <4 x float> poison, float %i.tg, i64 0
  %i.tl = insertelement <4 x float> %i.tk, float %i.th, i64 1
  %i.tm = insertelement <4 x float> %i.tl, float %i.ti, i64 2
  %i.tn = insertelement <4 x float> %i.tm, float %i.tj, i64 3
  %i.to = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.tb, <4 x float> splat (float f0x3F620676), <4 x float> %i.tn) ; 4 uses
  %i.tp = extractelement <4 x float> %i.to, i64 0
  %26 = extractelement <4 x float> %i.to, i64 1
  %i.tq = extractelement <4 x float> %i.to, i64 2
  %27 = extractelement <4 x float> %i.to, i64 3
  store float %i.tp, ptr %i.tc, align 4, !tbaa !188
  store float %26, ptr %i.td, align 4, !tbaa !188
  store float %i.tq, ptr %i.te, align 4, !tbaa !188
  store float %27, ptr %i.tf, align 4, !tbaa !188
  %i.tr = getelementptr inbounds nuw i8, ptr %next.gep133, i64 16
  %i.ts = getelementptr i8, ptr %i.rc, i64 48
  %i.tt = getelementptr i8, ptr %i.rd, i64 80
  %i.tu = getelementptr i8, ptr %i.re, i64 112
  %i.tv = load float, ptr %i.tr, align 4, !tbaa !188
  %i.tw = load float, ptr %i.ts, align 4, !tbaa !188
  %i.tx = load float, ptr %i.tt, align 4, !tbaa !188
  %i.ty = load float, ptr %i.tu, align 4, !tbaa !188
  %i.tz = insertelement <4 x float> poison, float %i.tv, i64 0
  %i.ua = insertelement <4 x float> %i.tz, float %i.tw, i64 1
  %i.ub = insertelement <4 x float> %i.ua, float %i.tx, i64 2
  %i.uc = insertelement <4 x float> %i.ub, float %i.ty, i64 3 ; 2 uses
  %i.ud = fadd <4 x float> %i.ta, %i.uc
  %i.ue = getelementptr inbounds nuw i8, ptr %next.gep133, i64 12 ; 2 uses
  %i.uf = getelementptr i8, ptr %i.rc, i64 44     ; 2 uses
  %i.ug = getelementptr i8, ptr %i.rd, i64 76     ; 2 uses
  %i.uh = getelementptr i8, ptr %i.re, i64 108    ; 2 uses
  %i.ui = load float, ptr %i.ue, align 4, !tbaa !188
  %i.uj = load float, ptr %i.uf, align 4, !tbaa !188
  %i.uk = load float, ptr %i.ug, align 4, !tbaa !188
  %i.ul = load float, ptr %i.uh, align 4, !tbaa !188
  %i.um = insertelement <4 x float> poison, float %i.ui, i64 0
  %i.un = insertelement <4 x float> %i.um, float %i.uj, i64 1
  %i.uo = insertelement <4 x float> %i.un, float %i.uk, i64 2
  %i.up = insertelement <4 x float> %i.uo, float %i.ul, i64 3
  %i.uq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ud, <4 x float> splat (float f0x3F620676), <4 x float> %i.up) ; 4 uses
  %i.ur = extractelement <4 x float> %i.uq, i64 0
  %28 = extractelement <4 x float> %i.uq, i64 1
  %i.us = extractelement <4 x float> %i.uq, i64 2
  %29 = extractelement <4 x float> %i.uq, i64 3
  store float %i.ur, ptr %i.ue, align 4, !tbaa !188
  store float %28, ptr %i.uf, align 4, !tbaa !188
  store float %i.us, ptr %i.ug, align 4, !tbaa !188
  store float %29, ptr %i.uh, align 4, !tbaa !188
  %i.ut = getelementptr inbounds nuw i8, ptr %next.gep133, i64 24
  %i.uu = getelementptr i8, ptr %i.rc, i64 56
  %i.uv = getelementptr i8, ptr %i.rd, i64 88
  %i.uw = getelementptr i8, ptr %i.re, i64 120
  %i.ux = load float, ptr %i.ut, align 4, !tbaa !188
  %i.uy = load float, ptr %i.uu, align 4, !tbaa !188
  %i.uz = load float, ptr %i.uv, align 4, !tbaa !188
  %i.va = load float, ptr %i.uw, align 4, !tbaa !188
  %i.vb = insertelement <4 x float> poison, float %i.ux, i64 0
  %i.vc = insertelement <4 x float> %i.vb, float %i.uy, i64 1
  %i.vd = insertelement <4 x float> %i.vc, float %i.uz, i64 2
  %i.ve = insertelement <4 x float> %i.vd, float %i.va, i64 3
  %i.vf = fadd <4 x float> %i.uc, %i.ve
  %i.vg = getelementptr inbounds nuw i8, ptr %next.gep133, i64 20 ; 2 uses
  %i.vh = getelementptr i8, ptr %i.rc, i64 52     ; 2 uses
  %i.vi = getelementptr i8, ptr %i.rd, i64 84     ; 2 uses
  %i.vj = getelementptr i8, ptr %i.re, i64 116    ; 2 uses
  %i.vk = load float, ptr %i.vg, align 4, !tbaa !188
  %i.vl = load float, ptr %i.vh, align 4, !tbaa !188
  %i.vm = load float, ptr %i.vi, align 4, !tbaa !188
  %i.vn = load float, ptr %i.vj, align 4, !tbaa !188
  %i.vo = insertelement <4 x float> poison, float %i.vk, i64 0
  %i.vp = insertelement <4 x float> %i.vo, float %i.vl, i64 1
  %i.vq = insertelement <4 x float> %i.vp, float %i.vm, i64 2
  %i.vr = insertelement <4 x float> %i.vq, float %i.vn, i64 3
  %i.vs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.vf, <4 x float> splat (float f0x3F620676), <4 x float> %i.vr) ; 4 uses
  %i.vt = extractelement <4 x float> %i.vs, i64 0
  %30 = extractelement <4 x float> %i.vs, i64 1
  %i.vu = extractelement <4 x float> %i.vs, i64 2
  %31 = extractelement <4 x float> %i.vs, i64 3
  store float %i.vt, ptr %i.vg, align 4, !tbaa !188
  store float %30, ptr %i.vh, align 4, !tbaa !188
  store float %i.vu, ptr %i.vi, align 4, !tbaa !188
  store float %31, ptr %i.vj, align 4, !tbaa !188
  %index.next137 = add nuw i64 %index132, 4       ; 2 uses
  %i.vv = icmp eq i64 %index.next137, %n.vec130
  br i1 %i.vv, label %.lr.ph.i67.i.preheader280, label %vector.body131, !llvm.loop !197

.preheader.loopexit.i70.i:                        ; preds = %.lr.ph.i67.i
  %i.vw = add i32 %i.p, -5
  %i.vx = and i32 %i.vw, -4
  %i.vy = add nuw i32 %i.vx, 5
  br label %.preheader.i58.i

.preheader.i58.i:                                 ; preds = %.preheader.loopexit.i70.i, %bb.g
  %.040.lcssa.i59.i = phi i32 [ 1, %bb.g ], [ %i.vy, %.preheader.loopexit.i70.i ] ; 4 uses
  %.0.lcssa.i60.i = phi ptr [ %i.qp, %bb.g ], [ %i.xy, %.preheader.loopexit.i70.i ] ; 7 uses
  %i.vz = icmp ult i32 %.040.lcssa.i59.i, %i.p
  br i1 %i.vz, label %.lr.ph48.i63.i.preheader, label %.loopexit.i61.i

.lr.ph48.i63.i.preheader:                         ; preds = %.preheader.i58.i
  %i.wa = xor i32 %.040.lcssa.i59.i, -1
  %i.wb = add i32 %i.p, %i.wa                     ; 2 uses
  %min.iters.check142 = icmp ult i32 %i.wb, 4
  br i1 %min.iters.check142, label %.lr.ph48.i63.i.preheader278, label %vector.ph143

.lr.ph48.i63.i.preheader278:                      ; preds = %vector.body146, %.lr.ph48.i63.i.preheader
  %.147.i64.i.ph = phi ptr [ %.0.lcssa.i60.i, %.lr.ph48.i63.i.preheader ], [ %i.wh, %vector.body146 ]
  %.14146.i65.i.ph = phi i32 [ %.040.lcssa.i59.i, %.lr.ph48.i63.i.preheader ], [ %i.wj, %vector.body146 ]
  br label %.lr.ph48.i63.i

vector.ph143:                                     ; preds = %.lr.ph48.i63.i.preheader
  %i.wc = zext i32 %i.wb to i64
  %i.wd = add nuw nsw i64 %i.wc, 1                ; 2 uses
  %n.mod.vf144 = and i64 %i.wd, 3                 ; 2 uses
  %i.we = icmp eq i64 %n.mod.vf144, 0
  %i.wf = select i1 %i.we, i64 4, i64 %n.mod.vf144
  %n.vec145 = sub nsw i64 %i.wd, %i.wf            ; 3 uses
  %i.wg = shl nsw i64 %n.vec145, 3
  %i.wh = getelementptr i8, ptr %.0.lcssa.i60.i, i64 %i.wg
  %i.wi = trunc i64 %n.vec145 to i32
  %i.wj = add i32 %.040.lcssa.i59.i, %i.wi
  br label %vector.body146

vector.body146:                                   ; preds = %vector.body146, %vector.ph143
  %index147 = phi i64 [ 0, %vector.ph143 ], [ %index.next157, %vector.body146 ] ; 2 uses
  %i.wk = shl i64 %index147, 3                    ; 4 uses
  %next.gep148 = getelementptr i8, ptr %.0.lcssa.i60.i, i64 %i.wk ; 3 uses
  %i.wl = getelementptr i8, ptr %.0.lcssa.i60.i, i64 %i.wk
  %i.wm = getelementptr i8, ptr %.0.lcssa.i60.i, i64 %i.wk
  %i.wn = getelementptr i8, ptr %.0.lcssa.i60.i, i64 %i.wk
  %i.wo = getelementptr inbounds i8, ptr %next.gep148, i64 -8
  %wide.vec152 = load <8 x float>, ptr %i.wo, align 4, !tbaa !188
  %strided.vec153 = shufflevector <8 x float> %wide.vec152, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.wp = getelementptr i8, ptr %next.gep148, i64 -4
  %wide.vec154 = load <8 x float>, ptr %i.wp, align 4, !tbaa !188 ; 2 uses
  %strided.vec155 = shufflevector <8 x float> %wide.vec154, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec156 = shufflevector <8 x float> %wide.vec154, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.wq = fadd <4 x float> %strided.vec153, %strided.vec156
  %i.wr = getelementptr inbounds i8, ptr %next.gep148, i64 -4
  %i.ws = getelementptr i8, ptr %i.wl, i64 4
  %i.wt = getelementptr i8, ptr %i.wm, i64 12
  %i.wu = getelementptr i8, ptr %i.wn, i64 20
  %i.wv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.wq, <4 x float> splat (float f0x3F620676), <4 x float> %strided.vec155) ; 4 uses
  %i.ww = extractelement <4 x float> %i.wv, i64 0
  %32 = extractelement <4 x float> %i.wv, i64 1
  %i.wx = extractelement <4 x float> %i.wv, i64 2
  %33 = extractelement <4 x float> %i.wv, i64 3
  store float %i.ww, ptr %i.wr, align 4, !tbaa !188
  store float %32, ptr %i.ws, align 4, !tbaa !188
  store float %i.wx, ptr %i.wt, align 4, !tbaa !188
  store float %33, ptr %i.wu, align 4, !tbaa !188
  %index.next157 = add nuw i64 %index147, 4       ; 2 uses
  %i.wy = icmp eq i64 %index.next157, %n.vec145
  br i1 %i.wy, label %.lr.ph48.i63.i.preheader278, label %vector.body146, !llvm.loop !198

.lr.ph.i67.i:                                     ; preds = %.lr.ph.i67.i.preheader280, %.lr.ph.i67.i
  %.044.i68.i = phi ptr [ %i.xy, %.lr.ph.i67.i ], [ %.044.i68.i.ph, %.lr.ph.i67.i.preheader280 ] ; 10 uses
  %.04043.i69.i = phi i32 [ %i.xz, %.lr.ph.i67.i ], [ %.04043.i69.i.ph, %.lr.ph.i67.i.preheader280 ] ; 2 uses
  %i.wz = getelementptr inbounds i8, ptr %.044.i68.i, i64 -8
  %i.xa = load float, ptr %i.wz, align 4, !tbaa !188
  %i.xb = load float, ptr %.044.i68.i, align 4, !tbaa !188 ; 2 uses
  %i.xc = fadd float %i.xa, %i.xb
  %i.xd = getelementptr inbounds i8, ptr %.044.i68.i, i64 -4 ; 2 uses
  %i.xe = load float, ptr %i.xd, align 4, !tbaa !188
  %i.xf = tail call float @llvm.fmuladd.f32(float %i.xc, float f0x3F620676, float %i.xe)
  store float %i.xf, ptr %i.xd, align 4, !tbaa !188
  %i.xg = getelementptr inbounds nuw i8, ptr %.044.i68.i, i64 8
  %i.xh = load float, ptr %i.xg, align 4, !tbaa !188 ; 2 uses
  %i.xi = fadd float %i.xb, %i.xh
  %i.xj = getelementptr inbounds nuw i8, ptr %.044.i68.i, i64 4 ; 2 uses
  %i.xk = load float, ptr %i.xj, align 4, !tbaa !188
  %i.xl = tail call float @llvm.fmuladd.f32(float %i.xi, float f0x3F620676, float %i.xk)
  store float %i.xl, ptr %i.xj, align 4, !tbaa !188
  %i.xm = getelementptr inbounds nuw i8, ptr %.044.i68.i, i64 16
  %i.xn = load float, ptr %i.xm, align 4, !tbaa !188 ; 2 uses
  %i.xo = fadd float %i.xh, %i.xn
  %i.xp = getelementptr inbounds nuw i8, ptr %.044.i68.i, i64 12 ; 2 uses
  %i.xq = load float, ptr %i.xp, align 4, !tbaa !188
  %i.xr = tail call float @llvm.fmuladd.f32(float %i.xo, float f0x3F620676, float %i.xq)
  store float %i.xr, ptr %i.xp, align 4, !tbaa !188
  %i.xs = getelementptr inbounds nuw i8, ptr %.044.i68.i, i64 24
  %i.xt = load float, ptr %i.xs, align 4, !tbaa !188
  %i.xu = fadd float %i.xn, %i.xt
  %i.xv = getelementptr inbounds nuw i8, ptr %.044.i68.i, i64 20 ; 2 uses
  %i.xw = load float, ptr %i.xv, align 4, !tbaa !188
  %i.xx = tail call float @llvm.fmuladd.f32(float %i.xu, float f0x3F620676, float %i.xw)
  store float %i.xx, ptr %i.xv, align 4, !tbaa !188
  %i.xy = getelementptr inbounds nuw i8, ptr %.044.i68.i, i64 32 ; 2 uses
  %i.xz = add nuw i32 %.04043.i69.i, 4
  %i.ya = add nuw i32 %.04043.i69.i, 7
  %i.yb = icmp ult i32 %i.ya, %i.p
  br i1 %i.yb, label %.lr.ph.i67.i, label %.preheader.loopexit.i70.i, !llvm.loop !199

.lr.ph48.i63.i:                                   ; preds = %.lr.ph48.i63.i.preheader278, %.lr.ph48.i63.i
  %.147.i64.i = phi ptr [ %i.yj, %.lr.ph48.i63.i ], [ %.147.i64.i.ph, %.lr.ph48.i63.i.preheader278 ] ; 4 uses
  %.14146.i65.i = phi i32 [ %i.yk, %.lr.ph48.i63.i ], [ %.14146.i65.i.ph, %.lr.ph48.i63.i.preheader278 ]
  %i.yc = getelementptr inbounds i8, ptr %.147.i64.i, i64 -8
  %i.yd = load float, ptr %i.yc, align 4, !tbaa !188
  %i.ye = load float, ptr %.147.i64.i, align 4, !tbaa !188
  %i.yf = fadd float %i.yd, %i.ye
  %i.yg = getelementptr inbounds i8, ptr %.147.i64.i, i64 -4 ; 2 uses
  %i.yh = load float, ptr %i.yg, align 4, !tbaa !188
  %i.yi = tail call float @llvm.fmuladd.f32(float %i.yf, float f0x3F620676, float %i.yh)
  store float %i.yi, ptr %i.yg, align 4, !tbaa !188
  %i.yj = getelementptr inbounds nuw i8, ptr %.147.i64.i, i64 8 ; 2 uses
  %i.yk = add nuw i32 %.14146.i65.i, 1            ; 2 uses
  %exitcond.not.i66.i = icmp eq i32 %i.yk, %i.p
  br i1 %exitcond.not.i66.i, label %.loopexit.i61.i, label %.lr.ph48.i63.i, !llvm.loop !200

.loopexit.i61.i:                                  ; preds = %.lr.ph48.i63.i, %.preheader.i58.i, %opj_dwt_encode_step2.exit56.i
  %.2.i62.i = phi ptr [ %i.m, %opj_dwt_encode_step2.exit56.i ], [ %.0.lcssa.i60.i, %.preheader.i58.i ], [ %i.yj, %.lr.ph48.i63.i ] ; 2 uses
  br i1 %i.hr, label %bb.h, label %opj_dwt_encode_step2.exit71.i

bb.h:                                             ; preds = %.loopexit.i61.i
  %i.yl = getelementptr inbounds i8, ptr %.2.i62.i, i64 -8
  %i.ym = load float, ptr %i.yl, align 4, !tbaa !188
  %i.yn = fmul float %i.ym, 2.000000e+00
  %i.yo = getelementptr inbounds i8, ptr %.2.i62.i, i64 -4 ; 2 uses
  %i.yp = load float, ptr %i.yo, align 4, !tbaa !188
  %i.yq = tail call float @llvm.fmuladd.f32(float %i.yn, float f0x3F620676, float %i.yp)
  store float %i.yq, ptr %i.yo, align 4, !tbaa !188
  br label %opj_dwt_encode_step2.exit71.i

opj_dwt_encode_step2.exit71.i:                    ; preds = %bb.h, %.loopexit.i61.i
  br i1 %.not.i42.i, label %.loopexit.i76.i, label %bb.i

bb.i:                                             ; preds = %opj_dwt_encode_step2.exit71.i
  %i.yr = load float, ptr %i.l, align 4, !tbaa !188
  %i.ys = load float, ptr %i.hy, align 4, !tbaa !188
  %i.yt = fadd float %i.yr, %i.ys
  %i.yu = load float, ptr %i.j, align 4, !tbaa !188
  %i.yv = tail call float @llvm.fmuladd.f32(float %i.yt, float f0x3EE31355, float %i.yu)
  store float %i.yv, ptr %i.j, align 4, !tbaa !188
  %i.yw = getelementptr inbounds nuw i8, ptr %i.j, i64 12 ; 7 uses
  %i.yx = icmp samesign ugt i32 %i.ib, 4
  br i1 %i.yx, label %.lr.ph.i82.i.preheader, label %.preheader.i73.i

.lr.ph.i82.i.preheader:                           ; preds = %bb.i
  %i.yy = add nsw i32 %i.ib, -5                   ; 2 uses
  %min.iters.check162 = icmp ult i32 %i.yy, 16
  br i1 %min.iters.check162, label %.lr.ph.i82.i.preheader276, label %vector.ph163

.lr.ph.i82.i.preheader276:                        ; preds = %vector.body166, %.lr.ph.i82.i.preheader
  %.044.i83.i.ph = phi ptr [ %i.yw, %.lr.ph.i82.i.preheader ], [ %i.ze, %vector.body166 ]
  %.04043.i84.i.ph = phi i32 [ 1, %.lr.ph.i82.i.preheader ], [ %i.zh, %vector.body166 ]
  br label %.lr.ph.i82.i

vector.ph163:                                     ; preds = %.lr.ph.i82.i.preheader
  %i.yz = lshr i32 %i.yy, 2
  %narrow268 = add nuw nsw i32 %i.yz, 1
  %i.za = zext nneg i32 %narrow268 to i64         ; 2 uses
  %n.mod.vf164 = and i64 %i.za, 3                 ; 2 uses
  %i.zb = icmp eq i64 %n.mod.vf164, 0
  %i.zc = select i1 %i.zb, i64 4, i64 %n.mod.vf164
  %n.vec165 = sub nsw i64 %i.za, %i.zc            ; 3 uses
  %i.zd = shl nsw i64 %n.vec165, 5
  %i.ze = getelementptr i8, ptr %i.yw, i64 %i.zd
  %i.zf = trunc i64 %n.vec165 to i32
  %i.zg = shl i32 %i.zf, 2
  %i.zh = or disjoint i32 %i.zg, 1
  br label %vector.body166

vector.body166:                                   ; preds = %vector.body166, %vector.ph163
  %index167 = phi i64 [ 0, %vector.ph163 ], [ %index.next172, %vector.body166 ] ; 2 uses
  %i.zi = shl i64 %index167, 5                    ; 4 uses
  %next.gep168 = getelementptr i8, ptr %i.yw, i64 %i.zi ; 9 uses
  %i.zj = getelementptr i8, ptr %i.yw, i64 %i.zi  ; 9 uses
  %next.gep169 = getelementptr i8, ptr %i.zj, i64 32
  %i.zk = getelementptr i8, ptr %i.yw, i64 %i.zi  ; 9 uses
  %next.gep170 = getelementptr i8, ptr %i.zk, i64 64
  %i.zl = getelementptr i8, ptr %i.yw, i64 %i.zi  ; 9 uses
  %next.gep171 = getelementptr i8, ptr %i.zl, i64 96
  %i.zm = getelementptr inbounds i8, ptr %next.gep168, i64 -8
  %i.zn = getelementptr i8, ptr %i.zj, i64 24
  %i.zo = getelementptr i8, ptr %i.zk, i64 56
  %i.zp = getelementptr i8, ptr %i.zl, i64 88
  %i.zq = load float, ptr %i.zm, align 4, !tbaa !188
  %i.zr = load float, ptr %i.zn, align 4, !tbaa !188
  %i.zs = load float, ptr %i.zo, align 4, !tbaa !188
  %i.zt = load float, ptr %i.zp, align 4, !tbaa !188
  %i.zu = insertelement <4 x float> poison, float %i.zq, i64 0
  %i.zv = insertelement <4 x float> %i.zu, float %i.zr, i64 1
  %i.zw = insertelement <4 x float> %i.zv, float %i.zs, i64 2
  %i.zx = insertelement <4 x float> %i.zw, float %i.zt, i64 3
  %i.zy = load float, ptr %next.gep168, align 4, !tbaa !188
  %i.zz = load float, ptr %next.gep169, align 4, !tbaa !188
  %i.aaa = load float, ptr %next.gep170, align 4, !tbaa !188
  %i.aab = load float, ptr %next.gep171, align 4, !tbaa !188
  %i.aac = insertelement <4 x float> poison, float %i.zy, i64 0
  %i.aad = insertelement <4 x float> %i.aac, float %i.zz, i64 1
  %i.aae = insertelement <4 x float> %i.aad, float %i.aaa, i64 2
  %i.aaf = insertelement <4 x float> %i.aae, float %i.aab, i64 3 ; 2 uses
  %i.aag = fadd <4 x float> %i.zx, %i.aaf
  %i.aah = getelementptr inbounds i8, ptr %next.gep168, i64 -4 ; 2 uses
  %i.aai = getelementptr i8, ptr %i.zj, i64 28    ; 2 uses
  %i.aaj = getelementptr i8, ptr %i.zk, i64 60    ; 2 uses
  %i.aak = getelementptr i8, ptr %i.zl, i64 92    ; 2 uses
  %i.aal = load float, ptr %i.aah, align 4, !tbaa !188
  %i.aam = load float, ptr %i.aai, align 4, !tbaa !188
  %i.aan = load float, ptr %i.aaj, align 4, !tbaa !188
  %i.aao = load float, ptr %i.aak, align 4, !tbaa !188
  %i.aap = insertelement <4 x float> poison, float %i.aal, i64 0
  %i.aaq = insertelement <4 x float> %i.aap, float %i.aam, i64 1
  %i.aar = insertelement <4 x float> %i.aaq, float %i.aan, i64 2
  %i.aas = insertelement <4 x float> %i.aar, float %i.aao, i64 3
  %i.aat = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aag, <4 x float> splat (float f0x3EE31355), <4 x float> %i.aas) ; 4 uses
  %i.aau = extractelement <4 x float> %i.aat, i64 0
  %34 = extractelement <4 x float> %i.aat, i64 1
  %i.aav = extractelement <4 x float> %i.aat, i64 2
  %35 = extractelement <4 x float> %i.aat, i64 3
  store float %i.aau, ptr %i.aah, align 4, !tbaa !188
  store float %34, ptr %i.aai, align 4, !tbaa !188
  store float %i.aav, ptr %i.aaj, align 4, !tbaa !188
  store float %35, ptr %i.aak, align 4, !tbaa !188
  %i.aaw = getelementptr inbounds nuw i8, ptr %next.gep168, i64 8
  %i.aax = getelementptr i8, ptr %i.zj, i64 40
  %i.aay = getelementptr i8, ptr %i.zk, i64 72
  %i.aaz = getelementptr i8, ptr %i.zl, i64 104
  %i.aba = load float, ptr %i.aaw, align 4, !tbaa !188
  %i.abb = load float, ptr %i.aax, align 4, !tbaa !188
  %i.abc = load float, ptr %i.aay, align 4, !tbaa !188
  %i.abd = load float, ptr %i.aaz, align 4, !tbaa !188
  %i.abe = insertelement <4 x float> poison, float %i.aba, i64 0
  %i.abf = insertelement <4 x float> %i.abe, float %i.abb, i64 1
  %i.abg = insertelement <4 x float> %i.abf, float %i.abc, i64 2
  %i.abh = insertelement <4 x float> %i.abg, float %i.abd, i64 3 ; 2 uses
  %i.abi = fadd <4 x float> %i.aaf, %i.abh
  %i.abj = getelementptr inbounds nuw i8, ptr %next.gep168, i64 4 ; 2 uses
  %i.abk = getelementptr i8, ptr %i.zj, i64 36    ; 2 uses
  %i.abl = getelementptr i8, ptr %i.zk, i64 68    ; 2 uses
  %i.abm = getelementptr i8, ptr %i.zl, i64 100   ; 2 uses
  %i.abn = load float, ptr %i.abj, align 4, !tbaa !188
  %i.abo = load float, ptr %i.abk, align 4, !tbaa !188
  %i.abp = load float, ptr %i.abl, align 4, !tbaa !188
  %i.abq = load float, ptr %i.abm, align 4, !tbaa !188
  %i.abr = insertelement <4 x float> poison, float %i.abn, i64 0
  %i.abs = insertelement <4 x float> %i.abr, float %i.abo, i64 1
  %i.abt = insertelement <4 x float> %i.abs, float %i.abp, i64 2
  %i.abu = insertelement <4 x float> %i.abt, float %i.abq, i64 3
  %i.abv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.abi, <4 x float> splat (float f0x3EE31355), <4 x float> %i.abu) ; 4 uses
  %i.abw = extractelement <4 x float> %i.abv, i64 0
  %36 = extractelement <4 x float> %i.abv, i64 1
  %i.abx = extractelement <4 x float> %i.abv, i64 2
  %37 = extractelement <4 x float> %i.abv, i64 3
  store float %i.abw, ptr %i.abj, align 4, !tbaa !188
  store float %36, ptr %i.abk, align 4, !tbaa !188
  store float %i.abx, ptr %i.abl, align 4, !tbaa !188
  store float %37, ptr %i.abm, align 4, !tbaa !188
  %i.aby = getelementptr inbounds nuw i8, ptr %next.gep168, i64 16
  %i.abz = getelementptr i8, ptr %i.zj, i64 48
  %i.aca = getelementptr i8, ptr %i.zk, i64 80
  %i.acb = getelementptr i8, ptr %i.zl, i64 112
  %i.acc = load float, ptr %i.aby, align 4, !tbaa !188
  %i.acd = load float, ptr %i.abz, align 4, !tbaa !188
  %i.ace = load float, ptr %i.aca, align 4, !tbaa !188
  %i.acf = load float, ptr %i.acb, align 4, !tbaa !188
  %i.acg = insertelement <4 x float> poison, float %i.acc, i64 0
  %i.ach = insertelement <4 x float> %i.acg, float %i.acd, i64 1
  %i.aci = insertelement <4 x float> %i.ach, float %i.ace, i64 2
  %i.acj = insertelement <4 x float> %i.aci, float %i.acf, i64 3 ; 2 uses
  %i.ack = fadd <4 x float> %i.abh, %i.acj
  %i.acl = getelementptr inbounds nuw i8, ptr %next.gep168, i64 12 ; 2 uses
  %i.acm = getelementptr i8, ptr %i.zj, i64 44    ; 2 uses
  %i.acn = getelementptr i8, ptr %i.zk, i64 76    ; 2 uses
  %i.aco = getelementptr i8, ptr %i.zl, i64 108   ; 2 uses
  %i.acp = load float, ptr %i.acl, align 4, !tbaa !188
  %i.acq = load float, ptr %i.acm, align 4, !tbaa !188
  %i.acr = load float, ptr %i.acn, align 4, !tbaa !188
  %i.acs = load float, ptr %i.aco, align 4, !tbaa !188
  %i.act = insertelement <4 x float> poison, float %i.acp, i64 0
  %i.acu = insertelement <4 x float> %i.act, float %i.acq, i64 1
  %i.acv = insertelement <4 x float> %i.acu, float %i.acr, i64 2
  %i.acw = insertelement <4 x float> %i.acv, float %i.acs, i64 3
  %i.acx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ack, <4 x float> splat (float f0x3EE31355), <4 x float> %i.acw) ; 4 uses
  %i.acy = extractelement <4 x float> %i.acx, i64 0
  %38 = extractelement <4 x float> %i.acx, i64 1
  %i.acz = extractelement <4 x float> %i.acx, i64 2
  %39 = extractelement <4 x float> %i.acx, i64 3
  store float %i.acy, ptr %i.acl, align 4, !tbaa !188
  store float %38, ptr %i.acm, align 4, !tbaa !188
  store float %i.acz, ptr %i.acn, align 4, !tbaa !188
  store float %39, ptr %i.aco, align 4, !tbaa !188
  %i.ada = getelementptr inbounds nuw i8, ptr %next.gep168, i64 24
  %i.adb = getelementptr i8, ptr %i.zj, i64 56
  %i.adc = getelementptr i8, ptr %i.zk, i64 88
  %i.add = getelementptr i8, ptr %i.zl, i64 120
  %i.ade = load float, ptr %i.ada, align 4, !tbaa !188
  %i.adf = load float, ptr %i.adb, align 4, !tbaa !188
  %i.adg = load float, ptr %i.adc, align 4, !tbaa !188
  %i.adh = load float, ptr %i.add, align 4, !tbaa !188
  %i.adi = insertelement <4 x float> poison, float %i.ade, i64 0
  %i.adj = insertelement <4 x float> %i.adi, float %i.adf, i64 1
  %i.adk = insertelement <4 x float> %i.adj, float %i.adg, i64 2
  %i.adl = insertelement <4 x float> %i.adk, float %i.adh, i64 3
  %i.adm = fadd <4 x float> %i.acj, %i.adl
  %i.adn = getelementptr inbounds nuw i8, ptr %next.gep168, i64 20 ; 2 uses
  %i.ado = getelementptr i8, ptr %i.zj, i64 52    ; 2 uses
  %i.adp = getelementptr i8, ptr %i.zk, i64 84    ; 2 uses
  %i.adq = getelementptr i8, ptr %i.zl, i64 116   ; 2 uses
  %i.adr = load float, ptr %i.adn, align 4, !tbaa !188
  %i.ads = load float, ptr %i.ado, align 4, !tbaa !188
  %i.adt = load float, ptr %i.adp, align 4, !tbaa !188
  %i.adu = load float, ptr %i.adq, align 4, !tbaa !188
  %i.adv = insertelement <4 x float> poison, float %i.adr, i64 0
  %i.adw = insertelement <4 x float> %i.adv, float %i.ads, i64 1
  %i.adx = insertelement <4 x float> %i.adw, float %i.adt, i64 2
  %i.ady = insertelement <4 x float> %i.adx, float %i.adu, i64 3
  %i.adz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.adm, <4 x float> splat (float f0x3EE31355), <4 x float> %i.ady) ; 4 uses
  %i.aea = extractelement <4 x float> %i.adz, i64 0
  %40 = extractelement <4 x float> %i.adz, i64 1
  %i.aeb = extractelement <4 x float> %i.adz, i64 2
  %41 = extractelement <4 x float> %i.adz, i64 3
  store float %i.aea, ptr %i.adn, align 4, !tbaa !188
  store float %40, ptr %i.ado, align 4, !tbaa !188
  store float %i.aeb, ptr %i.adp, align 4, !tbaa !188
  store float %41, ptr %i.adq, align 4, !tbaa !188
  %index.next172 = add nuw i64 %index167, 4       ; 2 uses
  %i.aec = icmp eq i64 %index.next172, %n.vec165
  br i1 %i.aec, label %.lr.ph.i82.i.preheader276, label %vector.body166, !llvm.loop !201

.preheader.loopexit.i85.i:                        ; preds = %.lr.ph.i82.i
  %i.aed = add nsw i32 %i.ib, -5
  %i.aee = and i32 %i.aed, -4
  %i.aef = add nuw nsw i32 %i.aee, 5
  br label %.preheader.i73.i

.preheader.i73.i:                                 ; preds = %.preheader.loopexit.i85.i, %bb.i
  %.040.lcssa.i74.i = phi i32 [ 1, %bb.i ], [ %i.aef, %.preheader.loopexit.i85.i ] ; 4 uses
  %.0.lcssa.i75.i = phi ptr [ %i.yw, %bb.i ], [ %i.agf, %.preheader.loopexit.i85.i ] ; 7 uses
  %i.aeg = icmp samesign ult i32 %.040.lcssa.i74.i, %i.ib
  br i1 %i.aeg, label %.lr.ph48.i78.i.preheader, label %.loopexit.i76.i

.lr.ph48.i78.i.preheader:                         ; preds = %.preheader.i73.i
  %i.aeh = xor i32 %.040.lcssa.i74.i, -1
  %i.aei = add i32 %i.ib, %i.aeh                  ; 2 uses
  %min.iters.check177 = icmp ult i32 %i.aei, 4
  br i1 %min.iters.check177, label %.lr.ph48.i78.i.preheader274, label %vector.ph178

.lr.ph48.i78.i.preheader274:                      ; preds = %vector.body181, %.lr.ph48.i78.i.preheader
  %.147.i79.i.ph = phi ptr [ %.0.lcssa.i75.i, %.lr.ph48.i78.i.preheader ], [ %i.aeo, %vector.body181 ]
  %.14146.i80.i.ph = phi i32 [ %.040.lcssa.i74.i, %.lr.ph48.i78.i.preheader ], [ %i.aeq, %vector.body181 ]
  br label %.lr.ph48.i78.i

vector.ph178:                                     ; preds = %.lr.ph48.i78.i.preheader
  %i.aej = zext i32 %i.aei to i64
  %i.aek = add nuw nsw i64 %i.aej, 1              ; 2 uses
  %n.mod.vf179 = and i64 %i.aek, 3                ; 2 uses
  %i.ael = icmp eq i64 %n.mod.vf179, 0
  %i.aem = select i1 %i.ael, i64 4, i64 %n.mod.vf179
  %n.vec180 = sub nsw i64 %i.aek, %i.aem          ; 3 uses
  %i.aen = shl nsw i64 %n.vec180, 3
  %i.aeo = getelementptr i8, ptr %.0.lcssa.i75.i, i64 %i.aen
  %i.aep = trunc i64 %n.vec180 to i32
  %i.aeq = add i32 %.040.lcssa.i74.i, %i.aep
  br label %vector.body181

vector.body181:                                   ; preds = %vector.body181, %vector.ph178
  %index182 = phi i64 [ 0, %vector.ph178 ], [ %index.next192, %vector.body181 ] ; 2 uses
  %i.aer = shl i64 %index182, 3                   ; 4 uses
  %next.gep183 = getelementptr i8, ptr %.0.lcssa.i75.i, i64 %i.aer ; 3 uses
  %i.aes = getelementptr i8, ptr %.0.lcssa.i75.i, i64 %i.aer
  %i.aet = getelementptr i8, ptr %.0.lcssa.i75.i, i64 %i.aer
  %i.aeu = getelementptr i8, ptr %.0.lcssa.i75.i, i64 %i.aer
  %i.aev = getelementptr inbounds i8, ptr %next.gep183, i64 -8
  %wide.vec187 = load <8 x float>, ptr %i.aev, align 4, !tbaa !188
  %strided.vec188 = shufflevector <8 x float> %wide.vec187, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.aew = getelementptr i8, ptr %next.gep183, i64 -4
  %wide.vec189 = load <8 x float>, ptr %i.aew, align 4, !tbaa !188 ; 2 uses
  %strided.vec190 = shufflevector <8 x float> %wide.vec189, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec191 = shufflevector <8 x float> %wide.vec189, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.aex = fadd <4 x float> %strided.vec188, %strided.vec191
  %i.aey = getelementptr inbounds i8, ptr %next.gep183, i64 -4
  %i.aez = getelementptr i8, ptr %i.aes, i64 4
  %i.afa = getelementptr i8, ptr %i.aet, i64 12
  %i.afb = getelementptr i8, ptr %i.aeu, i64 20
  %i.afc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aex, <4 x float> splat (float f0x3EE31355), <4 x float> %strided.vec190) ; 4 uses
  %i.afd = extractelement <4 x float> %i.afc, i64 0
  %42 = extractelement <4 x float> %i.afc, i64 1
  %i.afe = extractelement <4 x float> %i.afc, i64 2
  %43 = extractelement <4 x float> %i.afc, i64 3
  store float %i.afd, ptr %i.aey, align 4, !tbaa !188
  store float %42, ptr %i.aez, align 4, !tbaa !188
  store float %i.afe, ptr %i.afa, align 4, !tbaa !188
  store float %43, ptr %i.afb, align 4, !tbaa !188
  %index.next192 = add nuw i64 %index182, 4       ; 2 uses
  %i.aff = icmp eq i64 %index.next192, %n.vec180
  br i1 %i.aff, label %.lr.ph48.i78.i.preheader274, label %vector.body181, !llvm.loop !202

.lr.ph.i82.i:                                     ; preds = %.lr.ph.i82.i.preheader276, %.lr.ph.i82.i
  %.044.i83.i = phi ptr [ %i.agf, %.lr.ph.i82.i ], [ %.044.i83.i.ph, %.lr.ph.i82.i.preheader276 ] ; 10 uses
  %.04043.i84.i = phi i32 [ %i.agg, %.lr.ph.i82.i ], [ %.04043.i84.i.ph, %.lr.ph.i82.i.preheader276 ] ; 2 uses
  %i.afg = getelementptr inbounds i8, ptr %.044.i83.i, i64 -8
  %i.afh = load float, ptr %i.afg, align 4, !tbaa !188
  %i.afi = load float, ptr %.044.i83.i, align 4, !tbaa !188 ; 2 uses
  %i.afj = fadd float %i.afh, %i.afi
  %i.afk = getelementptr inbounds i8, ptr %.044.i83.i, i64 -4 ; 2 uses
  %i.afl = load float, ptr %i.afk, align 4, !tbaa !188
  %i.afm = tail call float @llvm.fmuladd.f32(float %i.afj, float f0x3EE31355, float %i.afl)
  store float %i.afm, ptr %i.afk, align 4, !tbaa !188
  %i.afn = getelementptr inbounds nuw i8, ptr %.044.i83.i, i64 8
  %i.afo = load float, ptr %i.afn, align 4, !tbaa !188 ; 2 uses
  %i.afp = fadd float %i.afi, %i.afo
  %i.afq = getelementptr inbounds nuw i8, ptr %.044.i83.i, i64 4 ; 2 uses
  %i.afr = load float, ptr %i.afq, align 4, !tbaa !188
  %i.afs = tail call float @llvm.fmuladd.f32(float %i.afp, float f0x3EE31355, float %i.afr)
  store float %i.afs, ptr %i.afq, align 4, !tbaa !188
  %i.aft = getelementptr inbounds nuw i8, ptr %.044.i83.i, i64 16
  %i.afu = load float, ptr %i.aft, align 4, !tbaa !188 ; 2 uses
  %i.afv = fadd float %i.afo, %i.afu
  %i.afw = getelementptr inbounds nuw i8, ptr %.044.i83.i, i64 12 ; 2 uses
  %i.afx = load float, ptr %i.afw, align 4, !tbaa !188
  %i.afy = tail call float @llvm.fmuladd.f32(float %i.afv, float f0x3EE31355, float %i.afx)
  store float %i.afy, ptr %i.afw, align 4, !tbaa !188
  %i.afz = getelementptr inbounds nuw i8, ptr %.044.i83.i, i64 24
  %i.aga = load float, ptr %i.afz, align 4, !tbaa !188
  %i.agb = fadd float %i.afu, %i.aga
  %i.agc = getelementptr inbounds nuw i8, ptr %.044.i83.i, i64 20 ; 2 uses
  %i.agd = load float, ptr %i.agc, align 4, !tbaa !188
  %i.age = tail call float @llvm.fmuladd.f32(float %i.agb, float f0x3EE31355, float %i.agd)
  store float %i.age, ptr %i.agc, align 4, !tbaa !188
  %i.agf = getelementptr inbounds nuw i8, ptr %.044.i83.i, i64 32 ; 2 uses
  %i.agg = add nuw nsw i32 %.04043.i84.i, 4
  %i.agh = add nuw i32 %.04043.i84.i, 7
  %i.agi = icmp ult i32 %i.agh, %i.ib
  br i1 %i.agi, label %.lr.ph.i82.i, label %.preheader.loopexit.i85.i, !llvm.loop !203

.lr.ph48.i78.i:                                   ; preds = %.lr.ph48.i78.i.preheader274, %.lr.ph48.i78.i
  %.147.i79.i = phi ptr [ %i.agq, %.lr.ph48.i78.i ], [ %.147.i79.i.ph, %.lr.ph48.i78.i.preheader274 ] ; 4 uses
  %.14146.i80.i = phi i32 [ %i.agr, %.lr.ph48.i78.i ], [ %.14146.i80.i.ph, %.lr.ph48.i78.i.preheader274 ]
  %i.agj = getelementptr inbounds i8, ptr %.147.i79.i, i64 -8
  %i.agk = load float, ptr %i.agj, align 4, !tbaa !188
  %i.agl = load float, ptr %.147.i79.i, align 4, !tbaa !188
  %i.agm = fadd float %i.agk, %i.agl
  %i.agn = getelementptr inbounds i8, ptr %.147.i79.i, i64 -4 ; 2 uses
  %i.ago = load float, ptr %i.agn, align 4, !tbaa !188
  %i.agp = tail call float @llvm.fmuladd.f32(float %i.agm, float f0x3EE31355, float %i.ago)
  store float %i.agp, ptr %i.agn, align 4, !tbaa !188
  %i.agq = getelementptr inbounds nuw i8, ptr %.147.i79.i, i64 8 ; 2 uses
  %i.agr = add nuw i32 %.14146.i80.i, 1           ; 2 uses
  %exitcond.not.i81.i = icmp eq i32 %i.agr, %i.ib
  br i1 %exitcond.not.i81.i, label %.loopexit.i76.i, label %.lr.ph48.i78.i, !llvm.loop !204

.loopexit.i76.i:                                  ; preds = %.lr.ph48.i78.i, %.preheader.i73.i, %opj_dwt_encode_step2.exit71.i
  %.2.i77.i = phi ptr [ %i.hy, %opj_dwt_encode_step2.exit71.i ], [ %.0.lcssa.i75.i, %.preheader.i73.i ], [ %i.agq, %.lr.ph48.i78.i ] ; 2 uses
  br i1 %i.qd, label %bb.j, label %opj_dwt_encode_step2.exit86.i

bb.j:                                             ; preds = %.loopexit.i76.i
  %i.ags = getelementptr inbounds i8, ptr %.2.i77.i, i64 -8
  %i.agt = load float, ptr %i.ags, align 4, !tbaa !188
  %i.agu = fmul float %i.agt, 2.000000e+00
  %i.agv = getelementptr inbounds i8, ptr %.2.i77.i, i64 -4 ; 2 uses
  %i.agw = load float, ptr %i.agv, align 4, !tbaa !188
  %i.agx = tail call float @llvm.fmuladd.f32(float %i.agu, float f0x3EE31355, float %i.agw)
  store float %i.agx, ptr %i.agv, align 4, !tbaa !188
  br label %opj_dwt_encode_step2.exit86.i

opj_dwt_encode_step2.exit86.i:                    ; preds = %bb.j, %.loopexit.i76.i
  %i.agy = tail call noundef i32 @llvm.umin.i32(i32 range(i32 0, -2147483648) %i.d, i32 %i.e) ; 15 uses
  %i.agz = icmp samesign ugt i32 %i.agy, 3        ; 2 uses
  br i1 %.not, label %bb.k, label %bb.o

bb.k:                                             ; preds = %opj_dwt_encode_step2.exit86.i
  br i1 %i.agz, label %.lr.ph.i90.i.preheader, label %.preheader.i87.i

.lr.ph.i90.i.preheader:                           ; preds = %bb.k
  %i.aha = add nsw i32 %i.agy, -4                 ; 2 uses
  %i.ahb = lshr i32 %i.aha, 2                     ; 2 uses
  %i.ahc = add nuw nsw i32 %i.ahb, 1              ; 2 uses
  %i.ahd = icmp eq i32 %i.ahb, 0
  br i1 %i.ahd, label %.lr.ph.i90.i.epil.preheader, label %.lr.ph.i90.i.preheader.new

.lr.ph.i90.i.preheader.new:                       ; preds = %.lr.ph.i90.i.preheader
  %unroll_iter296 = and i32 %i.ahc, 2147483646
  br label %.lr.ph.i90.i

.preheader.loopexit.i91.i.unr-lcssa:              ; preds = %.lr.ph.i90.i
  %i.ahe = and i32 %i.aha, 4
  %lcmp.mod293.not.not = icmp eq i32 %i.ahe, 0
  br i1 %lcmp.mod293.not.not, label %.lr.ph.i90.i.epil.preheader, label %.preheader.loopexit.i91.i

.lr.ph.i90.i.epil.preheader:                      ; preds = %.preheader.loopexit.i91.i.unr-lcssa, %.lr.ph.i90.i.preheader
  %.034.i.i.epil.init = phi ptr [ %1, %.lr.ph.i90.i.preheader ], [ %i.aii, %.preheader.loopexit.i91.i.unr-lcssa ] ; 4 uses
  %lcmp.mod295 = trunc i32 %i.ahc to i1
  tail call void @llvm.assume(i1 %lcmp.mod295)
  %i.ahf = load <4 x float>, ptr %.034.i.i.epil.init, align 16, !tbaa !62
  %i.ahg = fmul <4 x float> %i.ahf, <float f0x3F5019C3, float f0x3F9D7658, float f0x3F5019C3, float f0x3F9D7658>
  store <4 x float> %i.ahg, ptr %.034.i.i.epil.init, align 16, !tbaa !62
  %i.ahh = getelementptr inbounds nuw i8, ptr %.034.i.i.epil.init, i64 16 ; 2 uses
  %i.ahi = load <4 x float>, ptr %i.ahh, align 16, !tbaa !62
  %i.ahj = fmul <4 x float> %i.ahi, <float f0x3F5019C3, float f0x3F9D7658, float f0x3F5019C3, float f0x3F9D7658>
  store <4 x float> %i.ahj, ptr %i.ahh, align 16, !tbaa !62
  %i.ahk = getelementptr inbounds nuw i8, ptr %.034.i.i.epil.init, i64 32
  br label %.preheader.loopexit.i91.i

.preheader.loopexit.i91.i:                        ; preds = %.preheader.loopexit.i91.i.unr-lcssa, %.lr.ph.i90.i.epil.preheader
  %.lcssa270 = phi ptr [ %i.aii, %.preheader.loopexit.i91.i.unr-lcssa ], [ %i.ahk, %.lr.ph.i90.i.epil.preheader ]
  %i.ahl = and i32 %i.agy, 2147483644
  br label %.preheader.i87.i

.preheader.i87.i:                                 ; preds = %.preheader.loopexit.i91.i, %bb.k
  %.031.lcssa.i.i = phi i32 [ 0, %bb.k ], [ %i.ahl, %.preheader.loopexit.i91.i ] ; 5 uses
  %.0.lcssa.i88.i = phi ptr [ %1, %bb.k ], [ %.lcssa270, %.preheader.loopexit.i91.i ] ; 4 uses
  %i.ahm = icmp samesign ult i32 %.031.lcssa.i.i, %i.agy
  br i1 %i.ahm, label %.lr.ph38.i.i.preheader, label %._crit_edge.i.i

.lr.ph38.i.i.preheader:                           ; preds = %.preheader.i87.i
  %i.ahn = xor i32 %.031.lcssa.i.i, -1
  %i.aho = add nsw i32 %i.agy, %i.ahn             ; 2 uses
  %i.ahp = zext i32 %i.aho to i64
  %i.ahq = add nuw nsw i64 %i.ahp, 1              ; 2 uses
  %min.iters.check212 = icmp eq i32 %i.aho, 0
  br i1 %min.iters.check212, label %.lr.ph38.i.i.preheader269, label %vector.ph213

vector.ph213:                                     ; preds = %.lr.ph38.i.i.preheader
  %n.vec215 = and i64 %i.ahq, 8589934590          ; 4 uses
  %i.ahr = shl nuw nsw i64 %n.vec215, 3
  %i.ahs = getelementptr i8, ptr %.0.lcssa.i88.i, i64 %i.ahr ; 2 uses
  %i.aht = trunc i64 %n.vec215 to i32
  %i.ahu = add i32 %.031.lcssa.i.i, %i.aht
  br label %vector.body216

vector.body216:                                   ; preds = %vector.body216, %vector.ph213
  %index217 = phi i64 [ 0, %vector.ph213 ], [ %index.next223, %vector.body216 ] ; 2 uses
  %i.ahv = shl i64 %index217, 3
  %next.gep218 = getelementptr i8, ptr %.0.lcssa.i88.i, i64 %i.ahv ; 2 uses
  %wide.vec219 = load <4 x float>, ptr %next.gep218, align 4, !tbaa !188
  %interleaved.vec222 = fmul <4 x float> %wide.vec219, <float f0x3F5019C3, float f0x3F9D7658, float f0x3F5019C3, float f0x3F9D7658>
  store <4 x float> %interleaved.vec222, ptr %next.gep218, align 4, !tbaa !188
  %index.next223 = add nuw i64 %index217, 2       ; 2 uses
  %i.ahw = icmp eq i64 %index.next223, %n.vec215
  br i1 %i.ahw, label %middle.block224, label %vector.body216, !llvm.loop !205

middle.block224:                                  ; preds = %vector.body216
  %cmp.n225 = icmp eq i64 %i.ahq, %n.vec215
  br i1 %cmp.n225, label %._crit_edge.i.i, label %.lr.ph38.i.i.preheader269

.lr.ph38.i.i.preheader269:                        ; preds = %.lr.ph38.i.i.preheader, %middle.block224
  %.137.i.i.ph = phi ptr [ %.0.lcssa.i88.i, %.lr.ph38.i.i.preheader ], [ %i.ahs, %middle.block224 ]
  %.13236.i.i.ph = phi i32 [ %.031.lcssa.i.i, %.lr.ph38.i.i.preheader ], [ %i.ahu, %middle.block224 ]
  br label %.lr.ph38.i.i

.lr.ph.i90.i:                                     ; preds = %.lr.ph.i90.i, %.lr.ph.i90.i.preheader.new
  %.034.i.i = phi ptr [ %1, %.lr.ph.i90.i.preheader.new ], [ %i.aii, %.lr.ph.i90.i ] ; 6 uses
  %niter297 = phi i32 [ 0, %.lr.ph.i90.i.preheader.new ], [ %niter297.next.1, %.lr.ph.i90.i ]
  %i.ahx = load <4 x float>, ptr %.034.i.i, align 16, !tbaa !62
  %i.ahy = fmul <4 x float> %i.ahx, <float f0x3F5019C3, float f0x3F9D7658, float f0x3F5019C3, float f0x3F9D7658>
  store <4 x float> %i.ahy, ptr %.034.i.i, align 16, !tbaa !62
  %i.ahz = getelementptr inbounds nuw i8, ptr %.034.i.i, i64 16 ; 2 uses
  %i.aia = load <4 x float>, ptr %i.ahz, align 16, !tbaa !62
  %i.aib = fmul <4 x float> %i.aia, <float f0x3F5019C3, float f0x3F9D7658, float f0x3F5019C3, float f0x3F9D7658>
  store <4 x float> %i.aib, ptr %i.ahz, align 16, !tbaa !62
  %i.aic = getelementptr inbounds nuw i8, ptr %.034.i.i, i64 32 ; 2 uses
  %i.aid = load <4 x float>, ptr %i.aic, align 16, !tbaa !62
  %i.aie = fmul <4 x float> %i.aid, <float f0x3F5019C3, float f0x3F9D7658, float f0x3F5019C3, float f0x3F9D7658>
  store <4 x float> %i.aie, ptr %i.aic, align 16, !tbaa !62
  %i.aif = getelementptr inbounds nuw i8, ptr %.034.i.i, i64 48 ; 2 uses
  %i.aig = load <4 x float>, ptr %i.aif, align 16, !tbaa !62
  %i.aih = fmul <4 x float> %i.aig, <float f0x3F5019C3, float f0x3F9D7658, float f0x3F5019C3, float f0x3F9D7658>
  store <4 x float> %i.aih, ptr %i.aif, align 16, !tbaa !62
  %i.aii = getelementptr inbounds nuw i8, ptr %.034.i.i, i64 64 ; 3 uses
  %niter297.next.1 = add i32 %niter297, 2         ; 2 uses
  %niter297.ncmp.1.not = icmp eq i32 %niter297.next.1, %unroll_iter296
  br i1 %niter297.ncmp.1.not, label %.preheader.loopexit.i91.i.unr-lcssa, label %.lr.ph.i90.i, !llvm.loop !206

.lr.ph38.i.i:                                     ; preds = %.lr.ph38.i.i.preheader269, %.lr.ph38.i.i
  %.137.i.i = phi ptr [ %i.ail, %.lr.ph38.i.i ], [ %.137.i.i.ph, %.lr.ph38.i.i.preheader269 ] ; 3 uses
  %.13236.i.i = phi i32 [ %i.aim, %.lr.ph38.i.i ], [ %.13236.i.i.ph, %.lr.ph38.i.i.preheader269 ]
  %i.aij = load <2 x float>, ptr %.137.i.i, align 4, !tbaa !188
  %i.aik = fmul <2 x float> %i.aij, <float f0x3F5019C3, float f0x3F9D7658>
  store <2 x float> %i.aik, ptr %.137.i.i, align 4, !tbaa !188
  %i.ail = getelementptr inbounds nuw i8, ptr %.137.i.i, i64 8 ; 2 uses
  %i.aim = add nuw i32 %.13236.i.i, 1             ; 2 uses
  %exitcond.not.i89.i = icmp eq i32 %i.aim, %i.agy
  br i1 %exitcond.not.i89.i, label %._crit_edge.i.i, label %.lr.ph38.i.i, !llvm.loop !207

._crit_edge.i.i:                                  ; preds = %.lr.ph38.i.i, %middle.block224, %.preheader.i87.i
  %.132.lcssa.i.i = phi i32 [ %.031.lcssa.i.i, %.preheader.i87.i ], [ %i.agy, %middle.block224 ], [ %i.agy, %.lr.ph38.i.i ] ; 2 uses
  %.1.lcssa.i.i = phi ptr [ %.0.lcssa.i88.i, %.preheader.i87.i ], [ %i.ahs, %middle.block224 ], [ %i.ail, %.lr.ph38.i.i ] ; 3 uses
  %i.ain = icmp samesign ult i32 %.132.lcssa.i.i, %i.d
  br i1 %i.ain, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.aio = load float, ptr %.1.lcssa.i.i, align 4, !tbaa !188
end_hunk_1
