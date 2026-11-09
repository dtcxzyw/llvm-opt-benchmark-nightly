Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/fits_hdecompress?download=true
inline.NumInlined: 45
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 14
begin_hunk_0_@fits_hdecompress:bb.a
  %i.pc = add nsw i32 %i.pb, %i.os
  store i32 %i.pc, ptr %i.or, align 4, !tbaa !9
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %indvars.iv.next433.i.i = add nsw i64 %indvars.iv432.i.i, 2
  %indvars.iv.next437.i.i = add nsw i64 %indvars.iv436.i.i, 2
  %i.pd = add nuw nsw i32 %.0348411.i.i, 2        ; 2 uses
  %i.pe = icmp slt i32 %i.pd, %.1260.i
  br i1 %i.pe, label %bb.ab, label %._crit_edge.i312.i, !llvm.loop !32

._crit_edge.i312.i:                               ; preds = %bb.ad
  %i.pf = add nuw nsw i32 %.0351414.i.i, 2        ; 2 uses
  %i.pg = icmp slt i32 %i.pf, %i.nt
  %indvars.iv.next.i.i30 = add i32 %indvars.iv.i.i29, %i.fj
  %indvars.iv.next435.i.i = add i32 %indvars.iv434.i.i, %i.fj
  br i1 %i.pg, label %.lr.ph.i311.i, label %.preheader410.i.i, !llvm.loop !33

.preheader.i.i:                                   ; preds = %._crit_edge421.i.i
  br i1 %i.nu, label %hsmooth.exit.i, label %.lr.ph428.i.i

.lr.ph420.i.i:                                    ; preds = %.lr.ph423.i.i, %._crit_edge421.i.i
  %indvars.iv441.i.i = phi i32 [ %indvars.iv.next442.i.i, %._crit_edge421.i.i ], [ 2, %.lr.ph423.i.i ] ; 2 uses
  %.1352422.i.i = phi i32 [ %i.qo, %._crit_edge421.i.i ], [ 0, %.lr.ph423.i.i ]
  %i.ph = sext i32 %indvars.iv441.i.i to i64      ; 2 uses
  %.phi.trans.insert.i.i = getelementptr [4 x i8], ptr %2, i64 %i.ph
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !9
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ag, %.lr.ph420.i.i
  %i.pi = phi i32 [ %.pre.i.i, %.lr.ph420.i.i ], [ %i.pn, %bb.ag ] ; 2 uses
  %indvars.iv443.i.i = phi i64 [ %i.ph, %.lr.ph420.i.i ], [ %indvars.iv.next444.i.i, %bb.ag ] ; 2 uses
  %.1349417.i.i = phi i32 [ 2, %.lr.ph420.i.i ], [ %i.qm, %bb.ag ]
  %i.pj = getelementptr [4 x i8], ptr %2, i64 %indvars.iv443.i.i ; 2 uses
  %i.pk = getelementptr i8, ptr %i.pj, i64 -8
  %i.pl = load i32, ptr %i.pk, align 4, !tbaa !9  ; 2 uses
  %indvars.iv.next444.i.i = add nsw i64 %indvars.iv443.i.i, 2 ; 2 uses
  %i.pm = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv.next444.i.i
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !9  ; 3 uses
  %i.po = sub nsw i32 %i.pn, %i.pi                ; 2 uses
  %i.pp = sub nsw i32 %i.pi, %i.pl                ; 2 uses
  %.403.i.i = tail call i32 @llvm.smin.i32(i32 %i.po, i32 %i.pp)
  %i.pq = tail call i32 @llvm.smax.i32(i32 %.403.i.i, i32 0)
  %i.pr = shl i32 %i.pq, 2                        ; 2 uses
  %i.ps = tail call i32 @llvm.smax.i32(i32 %i.po, i32 %i.pp)
  %i.pt = tail call i32 @llvm.smin.i32(i32 %i.ps, i32 0)
  %i.pu = shl i32 %i.pt, 2                        ; 3 uses
  %i.pv = icmp slt i32 %i.pu, %i.pr
  br i1 %i.pv, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.pw = sub nsw i32 %i.pn, %i.pl                ; 2 uses
  %i.px = icmp sgt i32 %i.pw, %i.pu
  %i.py = tail call i32 @llvm.smin.i32(i32 %i.pw, i32 %i.pr)
  %i.pz = select i1 %i.px, i32 %i.py, i32 %i.pu
  %i.qa = getelementptr i8, ptr %i.pj, i64 4      ; 2 uses
  %i.qb = load i32, ptr %i.qa, align 4, !tbaa !9  ; 2 uses
  %i.qc = shl i32 %i.qb, 3
  %i.qd = sub nsw i32 %i.pz, %i.qc                ; 3 uses
  %i.qe = lshr i32 %i.qd, 3
  %i.qf = add nsw i32 %i.qd, 7
  %i.qg = ashr i32 %i.qf, 3
  %i.qh = icmp slt i32 %i.qd, 0
  %i.qi = select i1 %i.qh, i32 %i.qg, i32 %i.qe
  %i.qj = tail call i32 @llvm.smin.i32(i32 %i.qi, i32 %i.fm)
  %i.qk = tail call i32 @llvm.smax.i32(i32 %i.qj, i32 %i.fo)
  %i.ql = add nsw i32 %i.qk, %i.qb
  store i32 %i.ql, ptr %i.qa, align 4, !tbaa !9
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.qm = add nuw nsw i32 %.1349417.i.i, 2        ; 2 uses
  %i.qn = icmp slt i32 %i.qm, %i.nv
  br i1 %i.qn, label %bb.ae, label %._crit_edge421.i.i, !llvm.loop !34

._crit_edge421.i.i:                               ; preds = %bb.ag
  %i.qo = add nuw nsw i32 %.1352422.i.i, 2        ; 2 uses
  %i.qp = icmp slt i32 %i.qo, %.1262.i
  %indvars.iv.next442.i.i = add i32 %indvars.iv441.i.i, %i.fj
  br i1 %i.qp, label %.lr.ph420.i.i, label %.preheader.i.i, !llvm.loop !35

.lr.ph428.i.i:                                    ; preds = %.preheader.i.i, %._crit_edge429.i.i
  %indvars.iv450.i.i = phi i32 [ %indvars.iv.next451.i.i, %._crit_edge429.i.i ], [ %i.fr, %.preheader.i.i ] ; 2 uses
  %indvars.iv446.i.i = phi i32 [ %indvars.iv.next447.i.i, %._crit_edge429.i.i ], [ %i.fq, %.preheader.i.i ] ; 2 uses
  %.2353430.i.i = phi i32 [ %i.tj, %._crit_edge429.i.i ], [ 2, %.preheader.i.i ]
  %i.qq = sext i32 %indvars.iv446.i.i to i64
  %i.qr = sext i32 %indvars.iv450.i.i to i64
  br label %bb.ah

bb.ah:                                            ; preds = %bb.aj, %.lr.ph428.i.i
  %indvars.iv452.i.i = phi i64 [ %i.qr, %.lr.ph428.i.i ], [ %indvars.iv.next453.i.i, %bb.aj ] ; 2 uses
  %indvars.iv448.i.i = phi i64 [ %i.qq, %.lr.ph428.i.i ], [ %indvars.iv.next449.i.i, %bb.aj ] ; 4 uses
  %.2350424.i.i = phi i32 [ 2, %.lr.ph428.i.i ], [ %i.th, %bb.aj ]
  %i.qs = sub nsw i64 %indvars.iv448.i.i, %i.fk
  %i.qt = getelementptr [4 x i8], ptr %2, i64 %i.qs ; 2 uses
  %i.qu = getelementptr i8, ptr %i.qt, i64 -8
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !9  ; 2 uses
  %gep473.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv448.i.i ; 2 uses
  %i.qw = getelementptr i8, ptr %gep473.i.i, i64 -8
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !9  ; 2 uses
  %i.qy = getelementptr i8, ptr %i.qt, i64 8
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !9  ; 2 uses
  %i.ra = getelementptr i8, ptr %gep473.i.i, i64 8
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !9  ; 2 uses
  %i.rc = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv448.i.i ; 2 uses
  %i.rd = load i32, ptr %i.rc, align 4, !tbaa !9  ; 4 uses
  %i.re = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv452.i.i ; 2 uses
  %i.rf = load i32, ptr %i.re, align 4, !tbaa !9
  %i.rg = shl i32 %i.rf, 1                        ; 7 uses
  %i.rh = getelementptr i8, ptr %i.rc, i64 4
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !9
  %i.rj = shl i32 %i.ri, 1                        ; 5 uses
  %i.rk = sub nsw i32 %i.rb, %i.rd                ; 2 uses
  %i.rl = tail call i32 @llvm.smax.i32(i32 %i.rk, i32 0)
  %i.rm = add i32 %i.rj, %i.rg                    ; 2 uses
  %i.rn = sub i32 %i.rl, %i.rm
  %i.ro = sub nsw i32 %i.rd, %i.qx                ; 2 uses
  %i.rp = tail call i32 @llvm.smax.i32(i32 %i.ro, i32 0)
  %i.rq = add nsw i32 %i.rp, %i.rg
  %i.rr = sub i32 %i.rq, %i.rj
  %.406.i.i = tail call i32 @llvm.smin.i32(i32 %i.rn, i32 %i.rr)
  %i.rs = sub nsw i32 %i.rd, %i.qz                ; 2 uses
  %i.rt = tail call i32 @llvm.smax.i32(i32 %i.rs, i32 0)
  %i.ru = sub nsw i32 %i.rt, %i.rg
  %i.rv = sub nsw i32 %i.qv, %i.rd                ; 2 uses
  %i.rw = tail call i32 @llvm.smax.i32(i32 %i.rv, i32 0)
  %i.rx = add nsw i32 %i.rw, %i.rg
  %.pn.i.i = tail call i32 @llvm.smin.i32(i32 %i.ru, i32 %i.rx)
  %i.ry = add nsw i32 %.pn.i.i, %i.rj
  %i.rz = tail call i32 @llvm.smin.i32(i32 %.406.i.i, i32 %i.ry)
  %i.sa = shl i32 %i.rz, 4                        ; 2 uses
  %i.sb = tail call i32 @llvm.smin.i32(i32 %i.rk, i32 0)
  %i.sc = sub i32 %i.sb, %i.rm
  %i.sd = tail call i32 @llvm.smin.i32(i32 %i.ro, i32 0)
  %i.se = add nsw i32 %i.sd, %i.rg
  %i.sf = sub i32 %i.se, %i.rj
  %i.sg = tail call i32 @llvm.smax.i32(i32 %i.sc, i32 %i.sf)
  %i.sh = tail call i32 @llvm.smin.i32(i32 %i.rs, i32 0)
  %i.si = sub nsw i32 %i.sh, %i.rg
  %i.sj = tail call i32 @llvm.smin.i32(i32 %i.rv, i32 0)
  %i.sk = add nsw i32 %i.sj, %i.rg
  %.pn400.i.i = tail call i32 @llvm.smax.i32(i32 %i.si, i32 %i.sk)
  %i.sl = add nsw i32 %.pn400.i.i, %i.rj
  %i.sm = tail call i32 @llvm.smax.i32(i32 %i.sg, i32 %i.sl)
  %i.sn = shl i32 %i.sm, 4                        ; 3 uses
  %i.so = icmp slt i32 %i.sn, %i.sa
  br i1 %i.so, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.sp = add i32 %i.qx, %i.qz
  %i.sq = sub i32 %i.qv, %i.sp
  %i.sr = add i32 %i.sq, %i.rb                    ; 2 uses
  %i.ss = icmp sgt i32 %i.sr, %i.sn
  %i.st = tail call i32 @llvm.smin.i32(i32 %i.sr, i32 %i.sa)
  %i.su = select i1 %i.ss, i32 %i.st, i32 %i.sn
  %i.sv = getelementptr i8, ptr %i.re, i64 4      ; 2 uses
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !9  ; 2 uses
  %i.sx = shl i32 %i.sw, 6
  %i.sy = sub nsw i32 %i.su, %i.sx                ; 3 uses
  %i.sz = lshr i32 %i.sy, 6
  %i.ta = add nsw i32 %i.sy, 63
  %i.tb = ashr i32 %i.ta, 6
  %i.tc = icmp slt i32 %i.sy, 0
  %i.td = select i1 %i.tc, i32 %i.tb, i32 %i.sz
  %i.te = tail call i32 @llvm.smin.i32(i32 %i.td, i32 %i.fm)
  %i.tf = tail call i32 @llvm.smax.i32(i32 %i.te, i32 %i.fo)
  %i.tg = add nsw i32 %i.tf, %i.sw
  store i32 %i.tg, ptr %i.sv, align 4, !tbaa !9
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %indvars.iv.next449.i.i = add nsw i64 %indvars.iv448.i.i, 2
  %indvars.iv.next453.i.i = add nsw i64 %indvars.iv452.i.i, 2
  %i.th = add nuw nsw i32 %.2350424.i.i, 2        ; 2 uses
  %i.ti = icmp slt i32 %i.th, %i.nv
  br i1 %i.ti, label %bb.ah, label %._crit_edge429.i.i, !llvm.loop !36

._crit_edge429.i.i:                               ; preds = %bb.aj
  %i.tj = add nuw nsw i32 %.2353430.i.i, 2        ; 2 uses
  %i.tk = icmp slt i32 %i.tj, %i.nt
  %indvars.iv.next447.i.i = add i32 %indvars.iv446.i.i, %i.fj
  %indvars.iv.next451.i.i = add i32 %indvars.iv450.i.i, %i.fj
  br i1 %i.tk, label %.lr.ph428.i.i, label %hsmooth.exit.i, !llvm.loop !37

hsmooth.exit.i:                                   ; preds = %._crit_edge429.i.i, %.preheader.i.i, %.lr.ph423.i.i, %.preheader410.i.i, %.lr.ph416.i.i, %._crit_edge.i
  %i.tl = srem i32 %.1262.i, 2                    ; 2 uses
  %i.tm = srem i32 %.1260.i, 2                    ; 7 uses
  %i.tn = sub nsw i32 %.1262.i, %i.tl             ; 2 uses
  %i.to = icmp sgt i32 %i.tn, 0
  br i1 %i.to, label %.lr.ph336.i, label %._crit_edge337.i

.lr.ph336.i:                                      ; preds = %hsmooth.exit.i
  %i.tp = sub nsw i32 %.1260.i, %i.tm             ; 2 uses
  %i.tq = icmp sgt i32 %i.tp, 0
  %.not291.i = icmp eq i32 %i.tm, 0
  %i.tr = add i32 %i.fu, -1
  %i.ts = add nsw i32 %i.tr, %i.fx
  %i.tt = sub i32 %i.ts, %i.tm
  %i.tu = lshr i32 %i.tt, 1
  %i.tv = zext nneg i32 %i.tu to i64
  %i.tw = shl nuw nsw i64 %i.tv, 3
  %i.tx = add nuw nsw i64 %i.tw, 8                ; 2 uses
  %i.ty = add i32 %i.fu, %i.fx
  %i.tz = xor i32 %i.tm, -1
  %i.ua = add i32 %i.ty, %i.tz                    ; 2 uses
  %i.ub = lshr i32 %i.ua, 1
  %narrow = add nuw i32 %i.ub, 1
  %i.uc = zext i32 %narrow to i64                 ; 2 uses
  %min.iters.check141 = icmp ult i32 %i.ua, 6
  %i.ud = getelementptr i8, ptr %2, i64 %i.tx
  %i.ue = getelementptr i8, ptr %2, i64 %i.tx
  %n.vec162 = and i64 %i.uc, 4294967292           ; 4 uses
  %i.uf = shl nuw nsw i64 %n.vec162, 1            ; 2 uses
  %i.ug = trunc nuw i64 %n.vec162 to i32
  %i.uh = shl i32 %i.ug, 1
  %broadcast.splatinsert163 = insertelement <4 x i32> poison, i32 %.0243358.i, i64 0
  %broadcast.splat164 = shufflevector <4 x i32> %broadcast.splatinsert163, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert165 = insertelement <4 x i32> poison, i32 %.0246357.i, i64 0
  %broadcast.splat166 = shufflevector <4 x i32> %broadcast.splatinsert165, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert167 = insertelement <4 x i32> poison, i32 %.0248356.i, i64 0
  %broadcast.splat168 = shufflevector <4 x i32> %broadcast.splatinsert167, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert169 = insertelement <4 x i32> poison, i32 %.1245.i, i64 0
  %broadcast.splat170 = shufflevector <4 x i32> %broadcast.splatinsert169, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert171 = insertelement <4 x i32> poison, i32 %.0247359.i, i64 0
  %broadcast.splat172 = shufflevector <4 x i32> %broadcast.splatinsert171, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert173 = insertelement <4 x i32> poison, i32 %.0249355.i, i64 0
  %broadcast.splat174 = shufflevector <4 x i32> %broadcast.splatinsert173, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert175 = insertelement <4 x i32> poison, i32 %.0251353.i, i64 0
  %broadcast.splat176 = shufflevector <4 x i32> %broadcast.splatinsert175, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert177 = insertelement <4 x i32> poison, i32 %.0250354.i, i64 0
  %broadcast.splat178 = shufflevector <4 x i32> %broadcast.splatinsert177, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert179 = insertelement <4 x i32> poison, i32 %.1253.i, i64 0
  %broadcast.splat180 = shufflevector <4 x i32> %broadcast.splatinsert179, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %cmp.n193 = icmp eq i64 %n.vec162, %i.uc
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ap, %.lr.ph336.i
  %indvars.iv376.i = phi i32 [ %i.dz, %.lr.ph336.i ], [ %indvars.iv.next377.i, %bb.ap ] ; 2 uses
  %indvars.iv372.i = phi i32 [ 0, %.lr.ph336.i ], [ %indvars.iv.next373.i, %bb.ap ] ; 2 uses
  %.1267335.i = phi i32 [ 0, %.lr.ph336.i ], [ %i.zg, %bb.ap ] ; 2 uses
  %i.ui = mul nsw i32 %.1267335.i, %i.dz          ; 2 uses
  %i.uj = add nsw i32 %i.ui, %i.dz
  br i1 %i.tq, label %.lr.ph332.preheader.i, label %._crit_edge333.i

.lr.ph332.preheader.i:                            ; preds = %bb.ak
  %i.uk = sext i32 %indvars.iv376.i to i64        ; 5 uses
  %i.ul = sext i32 %indvars.iv372.i to i64        ; 5 uses
  br i1 %min.iters.check141, label %.lr.ph332.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph332.preheader.i
  %i.um = shl nsw i64 %i.uk, 2                    ; 2 uses
  %i.un = getelementptr i8, ptr %2, i64 %i.um
  %i.uo = getelementptr i8, ptr %i.ud, i64 %i.um
  %i.up = shl nsw i64 %i.ul, 2                    ; 2 uses
  %i.uq = getelementptr i8, ptr %2, i64 %i.up
  %i.ur = getelementptr i8, ptr %i.ue, i64 %i.up
  %bound0157 = icmp ult ptr %i.un, %i.ur
  %bound1158 = icmp ult ptr %i.uq, %i.uo
  %found.conflict159 = and i1 %bound0157, %bound1158
  br i1 %found.conflict159, label %.lr.ph332.i.preheader, label %vector.ph161

vector.ph161:                                     ; preds = %vector.memcheck
  %i.us = add nsw i64 %i.uf, %i.uk                ; 2 uses
  %i.ut = add nsw i64 %i.uf, %i.ul                ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %2, i64 %i.ul
  %invariant.gep238 = getelementptr [4 x i8], ptr %2, i64 %i.uk
  br label %vector.body181

vector.body181:                                   ; preds = %vector.body181, %vector.ph161
  %index182 = phi i64 [ 0, %vector.ph161 ], [ %index.next191, %vector.body181 ] ; 2 uses
  %i.uu = shl i64 %index182, 1                    ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.uu ; 2 uses
  %wide.vec183 = load <8 x i32>, ptr %gep, align 4, !tbaa !9, !alias.scope !47 ; 2 uses
  %strided.vec184 = shufflevector <8 x i32> %wide.vec183, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 3 uses
  %strided.vec185 = shufflevector <8 x i32> %wide.vec183, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %gep239 = getelementptr [4 x i8], ptr %invariant.gep238, i64 %i.uu ; 2 uses
  %wide.vec186 = load <8 x i32>, ptr %gep239, align 4, !tbaa !9, !alias.scope !48, !noalias !47 ; 2 uses
  %strided.vec187 = shufflevector <8 x i32> %wide.vec186, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec188 = shufflevector <8 x i32> %wide.vec186, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.uv = icmp slt <4 x i32> %strided.vec187, zeroinitializer
  %i.uw = select <4 x i1> %i.uv, <4 x i32> %broadcast.splat164, <4 x i32> %broadcast.splat166
  %i.ux = add nsw <4 x i32> %i.uw, %strided.vec187
  %i.uy = and <4 x i32> %i.ux, %broadcast.splat168 ; 2 uses
  %i.uz = icmp slt <4 x i32> %strided.vec185, zeroinitializer
  %i.va = select <4 x i1> %i.uz, <4 x i32> %broadcast.splat164, <4 x i32> %broadcast.splat166
  %i.vb = add nsw <4 x i32> %i.va, %strided.vec185
  %i.vc = and <4 x i32> %i.vb, %broadcast.splat168 ; 2 uses
  %i.vd = icmp slt <4 x i32> %strided.vec188, zeroinitializer
  %i.ve = select <4 x i1> %i.vd, <4 x i32> %broadcast.splat170, <4 x i32> %broadcast.splat172
  %i.vf = add nsw <4 x i32> %i.ve, %strided.vec188
  %i.vg = and <4 x i32> %i.vf, %broadcast.splat174 ; 5 uses
  %i.vh = and <4 x i32> %i.vg, %broadcast.splat176 ; 6 uses
  %i.vi = icmp slt <4 x i32> %i.uy, zeroinitializer
  %i.vj = sub <4 x i32> zeroinitializer, %i.vh    ; 2 uses
  %i.vk = select <4 x i1> %i.vi, <4 x i32> %i.vh, <4 x i32> %i.vj
  %i.vl = add <4 x i32> %i.vk, %i.uy              ; 3 uses
  %i.vm = icmp slt <4 x i32> %i.vc, zeroinitializer
  %i.vn = select <4 x i1> %i.vm, <4 x i32> %i.vh, <4 x i32> %i.vj
  %i.vo = add <4 x i32> %i.vn, %i.vc              ; 4 uses
  %i.vp = xor <4 x i32> %i.vl, %i.vg
  %i.vq = xor <4 x i32> %i.vp, %i.vo
  %i.vr = and <4 x i32> %i.vq, %broadcast.splat178 ; 3 uses
  %i.vs = icmp eq <4 x i32> %i.vh, zeroinitializer
  %i.vt = sub nsw <4 x i32> %i.vh, %i.vr
  %i.vu = select <4 x i1> %i.vs, <4 x i32> %i.vr, <4 x i32> %i.vt
  %i.vv = add nsw <4 x i32> %i.vu, %strided.vec184
  %i.vw = add nsw <4 x i32> %i.vh, %strided.vec184
  %i.vx = sub <4 x i32> %i.vw, %i.vr
  %i.vy = icmp slt <4 x i32> %strided.vec184, zeroinitializer
  %predphi = select <4 x i1> %i.vy, <4 x i32> %i.vv, <4 x i32> %i.vx ; 2 uses
  %i.vz = add nsw <4 x i32> %predphi, %i.vl       ; 2 uses
  %i.wa = add <4 x i32> %i.vo, %i.vg              ; 2 uses
  %i.wb = add <4 x i32> %i.vz, %i.wa
  %i.wc = ashr <4 x i32> %i.wb, %broadcast.splat180
  %i.wd = sub <4 x i32> %i.vz, %i.wa
  %i.we = ashr <4 x i32> %i.wd, %broadcast.splat180
  %interleaved.vec189 = shufflevector <4 x i32> %i.we, <4 x i32> %i.wc, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i32> %interleaved.vec189, ptr %gep239, align 4, !tbaa !9, !alias.scope !48, !noalias !47
  %i.wf = sub nsw <4 x i32> %predphi, %i.vl       ; 2 uses
  %i.wg = sub <4 x i32> %i.vo, %i.vg
  %i.wh = add <4 x i32> %i.wg, %i.wf
  %i.wi = ashr <4 x i32> %i.wh, %broadcast.splat180
  %i.wj = sub <4 x i32> %i.vg, %i.vo
  %i.wk = add <4 x i32> %i.wj, %i.wf
  %i.wl = ashr <4 x i32> %i.wk, %broadcast.splat180
  %interleaved.vec190 = shufflevector <4 x i32> %i.wl, <4 x i32> %i.wi, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i32> %interleaved.vec190, ptr %gep, align 4, !tbaa !9, !alias.scope !47
  %index.next191 = add nuw i64 %index182, 4       ; 2 uses
  %i.wm = icmp eq i64 %index.next191, %n.vec162
  br i1 %i.wm, label %middle.block192, label %vector.body181, !llvm.loop !41

middle.block192:                                  ; preds = %vector.body181
  br i1 %cmp.n193, label %._crit_edge333.loopexit.i, label %.lr.ph332.i.preheader

.lr.ph332.i.preheader:                            ; preds = %vector.memcheck, %.lr.ph332.preheader.i, %middle.block192
  %indvars.iv378.i.ph = phi i64 [ %i.uk, %vector.memcheck ], [ %i.uk, %.lr.ph332.preheader.i ], [ %i.us, %middle.block192 ]
  %indvars.iv374.i.ph = phi i64 [ %i.ul, %vector.memcheck ], [ %i.ul, %.lr.ph332.preheader.i ], [ %i.ut, %middle.block192 ]
  %.1265328.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph332.preheader.i ], [ %i.uh, %middle.block192 ]
  br label %.lr.ph332.i

.lr.ph332.i:                                      ; preds = %.lr.ph332.i.preheader, %bb.an
  %indvars.iv378.i = phi i64 [ %indvars.iv.next379.i, %bb.an ], [ %indvars.iv378.i.ph, %.lr.ph332.i.preheader ] ; 2 uses
  %indvars.iv374.i = phi i64 [ %indvars.iv.next375.i, %bb.an ], [ %indvars.iv374.i.ph, %.lr.ph332.i.preheader ] ; 2 uses
  %.1265328.i = phi i32 [ %i.yl, %bb.an ], [ %.1265328.i.ph, %.lr.ph332.i.preheader ]
  %i.wn = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv374.i ; 3 uses
  %i.wo = load i32, ptr %i.wn, align 4, !tbaa !9  ; 3 uses
  %i.wp = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv378.i ; 3 uses
  %i.wq = load i32, ptr %i.wp, align 4, !tbaa !9  ; 2 uses
  %i.wr = getelementptr i8, ptr %i.wn, i64 4      ; 2 uses
  %i.ws = load i32, ptr %i.wr, align 4, !tbaa !9  ; 2 uses
  %i.wt = getelementptr i8, ptr %i.wp, i64 4      ; 2 uses
  %i.wu = load i32, ptr %i.wt, align 4, !tbaa !9  ; 2 uses
  %i.wv = icmp slt i32 %i.wq, 0
  %i.ww = select i1 %i.wv, i32 %.0243358.i, i32 %.0246357.i
  %i.wx = add nsw i32 %i.ww, %i.wq
  %i.wy = and i32 %i.wx, %.0248356.i              ; 2 uses
  %i.wz = icmp slt i32 %i.ws, 0
  %i.xa = select i1 %i.wz, i32 %.0243358.i, i32 %.0246357.i
  %i.xb = add nsw i32 %i.xa, %i.ws
  %i.xc = and i32 %i.xb, %.0248356.i              ; 2 uses
  %i.xd = icmp slt i32 %i.wu, 0
  %i.xe = select i1 %i.xd, i32 %.1245.i, i32 %.0247359.i
  %i.xf = add nsw i32 %i.xe, %i.wu
  %i.xg = and i32 %i.xf, %.0249355.i              ; 5 uses
  %i.xh = and i32 %i.xg, %.0251353.i              ; 6 uses
  %i.xi = icmp slt i32 %i.wy, 0
  %i.xj = sub i32 0, %i.xh                        ; 2 uses
  %.p316.i = select i1 %i.xi, i32 %i.xh, i32 %i.xj
  %i.xk = add i32 %.p316.i, %i.wy                 ; 3 uses
  %i.xl = icmp slt i32 %i.xc, 0
  %.p317.i = select i1 %i.xl, i32 %i.xh, i32 %i.xj
  %i.xm = add i32 %.p317.i, %i.xc                 ; 4 uses
  %i.xn = xor i32 %i.xk, %i.xg
  %i.xo = xor i32 %i.xn, %i.xm
  %i.xp = and i32 %i.xo, %.0250354.i              ; 3 uses
  %i.xq = icmp sgt i32 %i.wo, -1
  br i1 %i.xq, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.lr.ph332.i
  %i.xr = add nsw i32 %i.xh, %i.wo
  %i.xs = sub i32 %i.xr, %i.xp
  br label %bb.an

bb.am:                                            ; preds = %.lr.ph332.i
  %i.xt = icmp eq i32 %i.xh, 0
  %i.xu = sub nsw i32 %i.xh, %i.xp
  %i.xv = select i1 %i.xt, i32 %i.xp, i32 %i.xu
  %i.xw = add nsw i32 %i.xv, %i.wo
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.xx = phi i32 [ %i.xs, %bb.al ], [ %i.xw, %bb.am ] ; 2 uses
  %i.xy = add nsw i32 %i.xx, %i.xk                ; 2 uses
  %i.xz = add i32 %i.xm, %i.xg                    ; 2 uses
  %i.ya = add i32 %i.xy, %i.xz
  %i.yb = ashr i32 %i.ya, %.1253.i
  store i32 %i.yb, ptr %i.wt, align 4, !tbaa !9
  %i.yc = sub i32 %i.xy, %i.xz
  %i.yd = ashr i32 %i.yc, %.1253.i
  store i32 %i.yd, ptr %i.wp, align 4, !tbaa !9
  %i.ye = sub nsw i32 %i.xx, %i.xk                ; 2 uses
  %i.yf = sub i32 %i.xm, %i.xg
  %i.yg = add i32 %i.yf, %i.ye
  %i.yh = ashr i32 %i.yg, %.1253.i
  store i32 %i.yh, ptr %i.wr, align 4, !tbaa !9
  %i.yi = sub i32 %i.xg, %i.xm
  %i.yj = add i32 %i.yi, %i.ye
  %i.yk = ashr i32 %i.yj, %.1253.i
  store i32 %i.yk, ptr %i.wn, align 4, !tbaa !9
  %indvars.iv.next375.i = add nsw i64 %indvars.iv374.i, 2 ; 2 uses
  %indvars.iv.next379.i = add nsw i64 %indvars.iv378.i, 2 ; 2 uses
  %i.yl = add nuw nsw i32 %.1265328.i, 2          ; 2 uses
  %i.ym = icmp slt i32 %i.yl, %i.tp
  br i1 %i.ym, label %.lr.ph332.i, label %._crit_edge333.loopexit.i, !llvm.loop !42

._crit_edge333.loopexit.i:                        ; preds = %bb.an, %middle.block192
  %indvars.iv.next375.i.lcssa = phi i64 [ %i.ut, %middle.block192 ], [ %indvars.iv.next375.i, %bb.an ]
  %indvars.iv.next379.i.lcssa = phi i64 [ %i.us, %middle.block192 ], [ %indvars.iv.next379.i, %bb.an ]
  %i.yn = trunc nsw i64 %indvars.iv.next379.i.lcssa to i32
  %i.yo = trunc nsw i64 %indvars.iv.next375.i.lcssa to i32
  br label %._crit_edge333.i

._crit_edge333.i:                                 ; preds = %._crit_edge333.loopexit.i, %bb.ak
  %.0242.lcssa.i = phi i32 [ %i.uj, %bb.ak ], [ %i.yn, %._crit_edge333.loopexit.i ]
  %.0.lcssa.i = phi i32 [ %i.ui, %bb.ak ], [ %i.yo, %._crit_edge333.loopexit.i ]
  br i1 %.not291.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge333.i
  %i.yp = sext i32 %.0.lcssa.i to i64
  %i.yq = getelementptr inbounds [4 x i8], ptr %2, i64 %i.yp ; 2 uses
  %i.yr = load i32, ptr %i.yq, align 4, !tbaa !9  ; 2 uses
  %i.ys = sext i32 %.0242.lcssa.i to i64
  %i.yt = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ys ; 2 uses
  %i.yu = load i32, ptr %i.yt, align 4, !tbaa !9  ; 2 uses
  %i.yv = icmp slt i32 %i.yu, 0
  %.0246..0243.i = select i1 %i.yv, i32 %.0243358.i, i32 %.0246357.i
  %i.yw = add nsw i32 %.0246..0243.i, %i.yu
  %i.yx = and i32 %i.yw, %.0248356.i              ; 3 uses
  %i.yy = and i32 %i.yx, %.0250354.i              ; 2 uses
  %i.yz = icmp slt i32 %i.yr, 0
  %i.za = sub i32 0, %i.yy
  %.p315.i = select i1 %i.yz, i32 %i.yy, i32 %i.za
  %i.zb = add i32 %.p315.i, %i.yr                 ; 2 uses
  %i.zc = add nsw i32 %i.zb, %i.yx
  %i.zd = ashr i32 %i.zc, %.1253.i
  store i32 %i.zd, ptr %i.yt, align 4, !tbaa !9
  %i.ze = sub nsw i32 %i.zb, %i.yx
  %i.zf = ashr i32 %i.ze, %.1253.i
  store i32 %i.zf, ptr %i.yq, align 4, !tbaa !9
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %._crit_edge333.i
  %i.zg = add nuw nsw i32 %.1267335.i, 2          ; 3 uses
  %i.zh = icmp slt i32 %i.zg, %i.tn
  %indvars.iv.next373.i = add i32 %indvars.iv372.i, %i.fj
  %indvars.iv.next377.i = add i32 %indvars.iv376.i, %i.fj
  br i1 %i.zh, label %bb.ak, label %._crit_edge337.loopexit.i, !llvm.loop !43

._crit_edge337.loopexit.i:                        ; preds = %bb.ap
  %i.zi = mul i32 %i.zg, %i.dz
  br label %._crit_edge337.i

._crit_edge337.i:                                 ; preds = %._crit_edge337.loopexit.i, %hsmooth.exit.i
  %.1267.lcssa.i = phi i32 [ 0, %hsmooth.exit.i ], [ %i.zi, %._crit_edge337.loopexit.i ] ; 2 uses
  %.not289.i = icmp eq i32 %i.tl, 0
  br i1 %.not289.i, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %._crit_edge337.i
  %i.zj = sub nsw i32 %.1260.i, %i.tm             ; 2 uses
  %i.zk = icmp sgt i32 %i.zj, 0
  br i1 %i.zk, label %.lr.ph342.preheader.i, label %._crit_edge343.i

.lr.ph342.preheader.i:                            ; preds = %bb.aq
  %i.zl = sext i32 %.1267.lcssa.i to i64          ; 3 uses
  %i.zm = add i32 %i.fu, %i.fx
  %i.zn = xor i32 %i.tm, -1
  %i.zo = add i32 %i.zm, %i.zn
  %i.zp = lshr i32 %i.zo, 1                       ; 2 uses
  %narrow197 = add nuw i32 %i.zp, 1
  %i.zq = zext i32 %narrow197 to i64              ; 2 uses
  %min.iters.check83 = icmp eq i32 %i.zp, 0
  br i1 %min.iters.check83, label %.lr.ph342.i.preheader, label %vector.ph84

vector.ph84:                                      ; preds = %.lr.ph342.preheader.i
  %n.vec85 = and i64 %i.zq, 4294967294            ; 4 uses
  %i.zr = shl nuw nsw i64 %n.vec85, 1
  %i.zs = add nsw i64 %i.zr, %i.zl                ; 2 uses
  %i.zt = trunc nuw i64 %n.vec85 to i32
  %i.zu = shl i32 %i.zt, 1
  %broadcast.splatinsert86 = insertelement <2 x i32> poison, i32 %.0243358.i, i64 0
  %broadcast.splat87 = shufflevector <2 x i32> %broadcast.splatinsert86, <2 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert88 = insertelement <2 x i32> poison, i32 %.0246357.i, i64 0
  %broadcast.splat89 = shufflevector <2 x i32> %broadcast.splatinsert88, <2 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert90 = insertelement <2 x i32> poison, i32 %.0248356.i, i64 0
  %broadcast.splat91 = shufflevector <2 x i32> %broadcast.splatinsert90, <2 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert92 = insertelement <2 x i32> poison, i32 %.0250354.i, i64 0
  %broadcast.splat93 = shufflevector <2 x i32> %broadcast.splatinsert92, <2 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert94 = insertelement <2 x i32> poison, i32 %.1253.i, i64 0
  %invariant.gep240 = getelementptr [4 x i8], ptr %2, i64 %i.zl
  %i.zv = shufflevector <2 x i32> %broadcast.splatinsert94, <2 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body96

vector.body96:                                    ; preds = %vector.body96, %vector.ph84
  %index97 = phi i64 [ 0, %vector.ph84 ], [ %index.next99, %vector.body96 ] ; 2 uses
  %.idx = shl i64 %index97, 3
  %gep241 = getelementptr i8, ptr %invariant.gep240, i64 %.idx ; 2 uses
  %wide.vec = load <4 x i32>, ptr %gep241, align 4, !tbaa !9 ; 2 uses
  %strided.vec = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec98 = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.zw = icmp slt <2 x i32> %strided.vec98, zeroinitializer
  %i.zx = select <2 x i1> %i.zw, <2 x i32> %broadcast.splat87, <2 x i32> %broadcast.splat89
  %i.zy = add nsw <2 x i32> %i.zx, %strided.vec98
  %i.zz = and <2 x i32> %i.zy, %broadcast.splat91 ; 3 uses
  %i.aaa = and <2 x i32> %i.zz, %broadcast.splat93 ; 2 uses
  %i.aab = icmp slt <2 x i32> %strided.vec, zeroinitializer
  %i.aac = sub <2 x i32> zeroinitializer, %i.aaa
  %i.aad = select <2 x i1> %i.aab, <2 x i32> %i.aaa, <2 x i32> %i.aac
  %i.aae = add <2 x i32> %i.aad, %strided.vec     ; 2 uses
  %i.aaf = add nsw <2 x i32> %i.aae, %i.zz
  %i.aag = sub nsw <2 x i32> %i.aae, %i.zz
  %i.aah = shufflevector <2 x i32> %i.aag, <2 x i32> %i.aaf, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec = ashr <4 x i32> %i.aah, %i.zv
  store <4 x i32> %interleaved.vec, ptr %gep241, align 4, !tbaa !9
  %index.next99 = add nuw i64 %index97, 2         ; 2 uses
  %i.aai = icmp eq i64 %index.next99, %n.vec85
  br i1 %i.aai, label %middle.block100, label %vector.body96, !llvm.loop !44

middle.block100:                                  ; preds = %vector.body96
  %cmp.n101 = icmp eq i64 %n.vec85, %i.zq
  br i1 %cmp.n101, label %._crit_edge343.loopexit.i, label %.lr.ph342.i.preheader

.lr.ph342.i.preheader:                            ; preds = %.lr.ph342.preheader.i, %middle.block100
  %indvars.iv383.i.ph = phi i64 [ %i.zl, %.lr.ph342.preheader.i ], [ %i.zs, %middle.block100 ]
  %.2339.i.ph = phi i32 [ 0, %.lr.ph342.preheader.i ], [ %i.zu, %middle.block100 ]
  br label %.lr.ph342.i

.lr.ph342.i:                                      ; preds = %.lr.ph342.i.preheader, %.lr.ph342.i
  %indvars.iv383.i = phi i64 [ %indvars.iv.next384.i, %.lr.ph342.i ], [ %indvars.iv383.i.ph, %.lr.ph342.i.preheader ] ; 2 uses
  %.2339.i = phi i32 [ %i.aay, %.lr.ph342.i ], [ %.2339.i.ph, %.lr.ph342.i.preheader ]
  %i.aaj = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv383.i ; 3 uses
  %i.aak = load i32, ptr %i.aaj, align 4, !tbaa !9 ; 2 uses
  %i.aal = getelementptr i8, ptr %i.aaj, i64 4    ; 2 uses
  %i.aam = load i32, ptr %i.aal, align 4, !tbaa !9 ; 2 uses
  %i.aan = icmp slt i32 %i.aam, 0
  %.0246..0243293.i = select i1 %i.aan, i32 %.0243358.i, i32 %.0246357.i
  %i.aao = add nsw i32 %.0246..0243293.i, %i.aam
  %i.aap = and i32 %i.aao, %.0248356.i            ; 3 uses
  %i.aaq = and i32 %i.aap, %.0250354.i            ; 2 uses
  %i.aar = icmp slt i32 %i.aak, 0
  %i.aas = sub i32 0, %i.aaq
  %.p.i = select i1 %i.aar, i32 %i.aaq, i32 %i.aas
  %i.aat = add i32 %.p.i, %i.aak                  ; 2 uses
  %i.aau = add nsw i32 %i.aat, %i.aap
  %i.aav = ashr i32 %i.aau, %.1253.i
  store i32 %i.aav, ptr %i.aal, align 4, !tbaa !9
  %i.aaw = sub nsw i32 %i.aat, %i.aap
  %i.aax = ashr i32 %i.aaw, %.1253.i
  store i32 %i.aax, ptr %i.aaj, align 4, !tbaa !9
  %indvars.iv.next384.i = add nsw i64 %indvars.iv383.i, 2 ; 2 uses
  %i.aay = add nuw nsw i32 %.2339.i, 2            ; 2 uses
  %i.aaz = icmp slt i32 %i.aay, %i.zj
  br i1 %i.aaz, label %.lr.ph342.i, label %._crit_edge343.loopexit.i, !llvm.loop !45

._crit_edge343.loopexit.i:                        ; preds = %.lr.ph342.i, %middle.block100
  %indvars.iv.next384.i.lcssa = phi i64 [ %i.zs, %middle.block100 ], [ %indvars.iv.next384.i, %.lr.ph342.i ]
  %i.aba = trunc nsw i64 %indvars.iv.next384.i.lcssa to i32
  br label %._crit_edge343.i

._crit_edge343.i:                                 ; preds = %._crit_edge343.loopexit.i, %bb.aq
  %.1.lcssa.i = phi i32 [ %.1267.lcssa.i, %bb.aq ], [ %i.aba, %._crit_edge343.loopexit.i ]
  %.not290.i = icmp eq i32 %i.tm, 0
  br i1 %.not290.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge343.i
  %i.abb = sext i32 %.1.lcssa.i to i64
  %i.abc = getelementptr inbounds [4 x i8], ptr %2, i64 %i.abb ; 2 uses
  %i.abd = load i32, ptr %i.abc, align 4, !tbaa !9
  %i.abe = ashr i32 %i.abd, %.1253.i
  store i32 %i.abe, ptr %i.abc, align 4, !tbaa !9
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %._crit_edge343.i, %._crit_edge337.i
  %i.abf = ashr i32 %.0251353.i, 1
  %i.abg = ashr i32 %.0249355.i, 1
  %i.abh = add nsw i32 %.0263346.i, -1
  %i.abi = icmp sgt i32 %.0263346.i, 0
  br i1 %i.abi, label %bb.v, label %._crit_edge362.i, !llvm.loop !46

._crit_edge362.i:                                 ; preds = %bb.as, %bb.u
  tail call void @free(ptr noundef %i.ej) #13
  br label %hinv.exit

hinv.exit:                                        ; preds = %bb.t, %._crit_edge362.i
  %.0269.i = phi i32 [ 414, %bb.t ], [ 0, %._crit_edge362.i ] ; 2 uses
  store i32 %.0269.i, ptr %7, align 4, !tbaa !9
  br label %bb.at

bb.at:                                            ; preds = %decode.exit, %bb.a, %hinv.exit
  %.0 = phi i32 [ %.0269.i, %hinv.exit ], [ %i.c, %bb.a ], [ %.0.i, %decode.exit ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @fits_hdecompress64(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5, ptr nofree noundef captures(none) %6, ptr nofree noundef captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 4 uses
  %i.b = load i32, ptr %7, align 4, !tbaa !9      ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @Fitsio_Lock) #13
  store i32 %i.d, ptr @Fitsio_Pthread_Status, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.e = load i16, ptr %0, align 1
  store i16 %i.e, ptr %i.a, align 2
  store i64 2, ptr @nextchar, align 8, !tbaa !11
  %i.f = load i16, ptr %i.a, align 2
  %i.g = load i16, ptr @code_magic, align 1
  %i.h = icmp ne i16 %i.f, %i.g
  %i.i = zext i1 %i.h to i32
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @ffpmsg(ptr noundef nonnull @.str.2) #13
  br label %decode64.exit

bb.d:                                             ; preds = %bb.b
  %scevgep.i.i = getelementptr i8, ptr %0, i64 2
  %.sroa.0.0.copyload.i.i = load i8, ptr %scevgep.i.i, align 1
  %.sroa.4.0.scevgep.sroa_idx.i.i = getelementptr i8, ptr %0, i64 3
  %.sroa.4.0.copyload.i.i = load i8, ptr %.sroa.4.0.scevgep.sroa_idx.i.i, align 1
  %.sroa.5.0.scevgep.sroa_idx.i.i = getelementptr i8, ptr %0, i64 4
  %.sroa.5.0.copyload.i.i = load i8, ptr %.sroa.5.0.scevgep.sroa_idx.i.i, align 1
  %.sroa.6.0.scevgep.sroa_idx.i.i = getelementptr i8, ptr %0, i64 5
  %.sroa.6.0.copyload.i.i = load i8, ptr %.sroa.6.0.scevgep.sroa_idx.i.i, align 1
  %i.j = zext i8 %.sroa.0.0.copyload.i.i to i32
  %i.k = zext i8 %.sroa.4.0.copyload.i.i to i32
  %i.l = shl nuw nsw i32 %i.j, 16
  %i.m = shl nuw nsw i32 %i.k, 8
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i8 %.sroa.5.0.copyload.i.i to i32
  %i.p = or disjoint i32 %i.n, %i.o
  %i.q = shl nuw i32 %i.p, 8
  %i.r = zext i8 %.sroa.6.0.copyload.i.i to i32
  %i.s = or disjoint i32 %i.q, %i.r
  store i32 %i.s, ptr %5, align 4, !tbaa !9
  %scevgep.i23.i = getelementptr i8, ptr %0, i64 6
  %.sroa.0.0.copyload.i24.i = load i8, ptr %scevgep.i23.i, align 1
  %.sroa.4.0.scevgep.sroa_idx.i25.i = getelementptr i8, ptr %0, i64 7
  %.sroa.4.0.copyload.i26.i = load i8, ptr %.sroa.4.0.scevgep.sroa_idx.i25.i, align 1
  %.sroa.5.0.scevgep.sroa_idx.i27.i = getelementptr i8, ptr %0, i64 8
  %.sroa.5.0.copyload.i28.i = load i8, ptr %.sroa.5.0.scevgep.sroa_idx.i27.i, align 1
  %.sroa.6.0.scevgep.sroa_idx.i29.i = getelementptr i8, ptr %0, i64 9
  %.sroa.6.0.copyload.i30.i = load i8, ptr %.sroa.6.0.scevgep.sroa_idx.i29.i, align 1
  %i.t = zext i8 %.sroa.0.0.copyload.i24.i to i32
  %i.u = zext i8 %.sroa.4.0.copyload.i26.i to i32
  %i.v = shl nuw nsw i32 %i.t, 16
  %i.w = shl nuw nsw i32 %i.u, 8
  %i.x = or disjoint i32 %i.w, %i.v
  %i.y = zext i8 %.sroa.5.0.copyload.i28.i to i32
  %i.z = or disjoint i32 %i.x, %i.y
  %i.aa = shl nuw i32 %i.z, 8
  %i.ab = zext i8 %.sroa.6.0.copyload.i30.i to i32
  %i.ac = or disjoint i32 %i.aa, %i.ab
  store i32 %i.ac, ptr %4, align 4, !tbaa !9
  %scevgep.i32.i = getelementptr i8, ptr %0, i64 10
  %.sroa.0.0.copyload.i33.i = load i8, ptr %scevgep.i32.i, align 1
  %.sroa.4.0.scevgep.sroa_idx.i34.i = getelementptr i8, ptr %0, i64 11
  %.sroa.4.0.copyload.i35.i = load i8, ptr %.sroa.4.0.scevgep.sroa_idx.i34.i, align 1
  %.sroa.5.0.scevgep.sroa_idx.i36.i = getelementptr i8, ptr %0, i64 12
  %.sroa.5.0.copyload.i37.i = load i8, ptr %.sroa.5.0.scevgep.sroa_idx.i36.i, align 1
  %.sroa.6.0.scevgep.sroa_idx.i38.i = getelementptr i8, ptr %0, i64 13
  %.sroa.6.0.copyload.i39.i = load i8, ptr %.sroa.6.0.scevgep.sroa_idx.i38.i, align 1
  store i64 14, ptr @nextchar, align 8, !tbaa !11
  %i.ad = zext i8 %.sroa.0.0.copyload.i33.i to i32
  %i.ae = zext i8 %.sroa.4.0.copyload.i35.i to i32
  %i.af = shl nuw nsw i32 %i.ad, 16
  %i.ag = shl nuw nsw i32 %i.ae, 8
  %i.ah = or disjoint i32 %i.ag, %i.af
  %i.ai = zext i8 %.sroa.5.0.copyload.i37.i to i32
  %i.aj = or disjoint i32 %i.ah, %i.ai
  %i.ak = shl nuw i32 %i.aj, 8
  %i.al = zext i8 %.sroa.6.0.copyload.i39.i to i32
  %i.am = or disjoint i32 %i.ak, %i.al
  store i32 %i.am, ptr %6, align 4, !tbaa !9
  %i.an = load i32, ptr %5, align 4, !tbaa !9     ; 4 uses
  %i.ao = load i32, ptr %4, align 4, !tbaa !9     ; 9 uses
  %i.ap = sdiv i32 2147483647, %i.ao
  %i.aq = icmp sgt i32 %i.an, %i.ap
  br i1 %i.aq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @ffpmsg(ptr noundef nonnull @.str.3) #13
  br label %decode64.exit

bb.f:                                             ; preds = %bb.d
  %i.ar = mul nsw i32 %i.ao, %i.an                ; 4 uses
  %i.as = icmp sgt i32 %i.ar, %3
  br i1 %i.as, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @ffpmsg(ptr noundef nonnull @.str.4) #13
  br label %decode64.exit

bb.h:                                             ; preds = %bb.f
  %scevgep.i41.i = getelementptr i8, ptr %0, i64 14
  %.sroa.0.0.copyload.i42.i = load i8, ptr %scevgep.i41.i, align 1
  %.sroa.4.0.scevgep.sroa_idx.i43.i = getelementptr i8, ptr %0, i64 15
  %.sroa.4.0.copyload.i44.i = load i8, ptr %.sroa.4.0.scevgep.sroa_idx.i43.i, align 1
  %.sroa.5.0.scevgep.sroa_idx.i45.i = getelementptr i8, ptr %0, i64 16
  %.sroa.5.0.copyload.i46.i = load i8, ptr %.sroa.5.0.scevgep.sroa_idx.i45.i, align 1
  %.sroa.6.0.scevgep.sroa_idx.i47.i = getelementptr i8, ptr %0, i64 17
  %.sroa.6.0.copyload.i48.i = load i8, ptr %.sroa.6.0.scevgep.sroa_idx.i47.i, align 1
  %.sroa.7.0.scevgep.sroa_idx.i.i = getelementptr i8, ptr %0, i64 18
  %.sroa.7.0.copyload.i.i = load i8, ptr %.sroa.7.0.scevgep.sroa_idx.i.i, align 1
  %.sroa.8.0.scevgep.sroa_idx.i.i = getelementptr i8, ptr %0, i64 19
  %.sroa.8.0.copyload.i.i = load i8, ptr %.sroa.8.0.scevgep.sroa_idx.i.i, align 1
  %.sroa.9.0.scevgep.sroa_idx.i.i = getelementptr i8, ptr %0, i64 20
  %.sroa.9.0.copyload.i.i = load i8, ptr %.sroa.9.0.scevgep.sroa_idx.i.i, align 1
  %.sroa.10.0.scevgep.sroa_idx.i.i = getelementptr i8, ptr %0, i64 21
  %.sroa.10.0.copyload.i.i = load i8, ptr %.sroa.10.0.scevgep.sroa_idx.i.i, align 1
  %i.at = zext i8 %.sroa.0.0.copyload.i42.i to i64
  %i.au = zext i8 %.sroa.4.0.copyload.i44.i to i64
  %i.av = shl nuw nsw i64 %i.at, 16
  %i.aw = shl nuw nsw i64 %i.au, 8
  %i.ax = or disjoint i64 %i.aw, %i.av
  %i.ay = zext i8 %.sroa.5.0.copyload.i46.i to i64
  %i.az = or disjoint i64 %i.ax, %i.ay
  %i.ba = zext i8 %.sroa.6.0.copyload.i48.i to i64
  %i.bb = zext i8 %.sroa.7.0.copyload.i.i to i64
  %i.bc = zext i8 %.sroa.8.0.copyload.i.i to i64
  %i.bd = shl nuw nsw i64 %i.az, 32
  %i.be = shl nuw nsw i64 %i.ba, 24
  %i.bf = shl nuw nsw i64 %i.bb, 16
  %i.bg = or disjoint i64 %i.bf, %i.be
  %i.bh = or disjoint i64 %i.bg, %i.bd
  %i.bi = zext i8 %.sroa.9.0.copyload.i.i to i64
  %i.bj = or disjoint i64 %i.bh, %i.bi
  %i.bk = shl nuw nsw i64 %i.bc, 16
  %i.bl = shl nuw i64 %i.bj, 8
  %i.bm = or disjoint i64 %i.bk, %i.bl
  %i.bn = zext i8 %.sroa.10.0.copyload.i.i to i64
  %i.bo = or disjoint i64 %i.bm, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 22
  %.sroa.0.0.copyload.i = load i8, ptr %i.bp, align 1
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 23
  %.sroa.4.0.copyload.i = load i8, ptr %.sroa.4.0..sroa_idx.i, align 1
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.6.0.copyload.i = load i8, ptr %.sroa.6.0..sroa_idx.i, align 1
  store i64 25, ptr @nextchar, align 8, !tbaa !11
  %i.bq = add nsw i32 %i.an, 1
  %i.br = sdiv i32 %i.bq, 2                       ; 3 uses
  %i.bs = add nsw i32 %i.ao, 1
  %i.bt = sdiv i32 %i.bs, 2                       ; 4 uses
  %i.bu = icmp sgt i32 %i.ar, 0                   ; 2 uses
  br i1 %i.bu, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.h
  %i.bv = zext nneg i32 %i.ar to i64
  %i.bw = shl nuw nsw i64 %i.bv, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %2, i8 0, i64 %i.bw, i1 false), !tbaa !18
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.preheader.i.i, %bb.h
  store i32 0, ptr @bits_to_go, align 4, !tbaa !9
  %i.bx = zext i8 %.sroa.0.0.copyload.i to i32
  %i.by = tail call fastcc i32 @qtree_decode64(ptr noundef nonnull readonly %0, ptr noundef %2, i32 noundef %i.ao, i32 noundef %i.br, i32 noundef %i.bt, i32 noundef %i.bx) ; 2 uses
  %.not.i.i = icmp eq i32 %i.by, 0
  br i1 %.not.i.i, label %bb.i, label %dodecode64.exit.i

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.bz = sext i32 %i.bt to i64
  %i.ca = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bz
  %i.cb = sdiv i32 %i.ao, 2                       ; 2 uses
  %i.cc = zext i8 %.sroa.4.0.copyload.i to i32    ; 2 uses
  %i.cd = tail call fastcc i32 @qtree_decode64(ptr noundef nonnull readonly %0, ptr noundef %i.ca, i32 noundef %i.ao, i32 noundef %i.br, i32 noundef %i.cb, i32 noundef %i.cc) ; 2 uses
  %.not64.i.i = icmp eq i32 %i.cd, 0
  br i1 %.not64.i.i, label %bb.j, label %dodecode64.exit.i

bb.j:                                             ; preds = %bb.i
  %i.ce = mul nsw i32 %i.br, %i.ao                ; 2 uses
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [8 x i8], ptr %2, i64 %i.cf
  %i.ch = sdiv i32 %i.an, 2                       ; 2 uses
  %i.ci = tail call fastcc i32 @qtree_decode64(ptr noundef nonnull readonly %0, ptr noundef %i.cg, i32 noundef %i.ao, i32 noundef %i.ch, i32 noundef %i.bt, i32 noundef %i.cc) ; 2 uses
  %.not65.i.i = icmp eq i32 %i.ci, 0
  br i1 %.not65.i.i, label %bb.k, label %dodecode64.exit.i

bb.k:                                             ; preds = %bb.j
  %i.cj = add nsw i32 %i.ce, %i.bt
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ck
  %i.cm = zext i8 %.sroa.6.0.copyload.i to i32
  %i.cn = tail call fastcc i32 @qtree_decode64(ptr noundef nonnull readonly %0, ptr noundef %i.cl, i32 noundef %i.ao, i32 noundef %i.ch, i32 noundef %i.cb, i32 noundef %i.cm) ; 2 uses
  %.not66.i.i = icmp eq i32 %i.cn, 0
  br i1 %.not66.i.i, label %bb.l, label %dodecode64.exit.i

bb.l:                                             ; preds = %bb.k
  %i.co = tail call fastcc i32 @input_nybble(ptr noundef nonnull readonly %0)
  %.not67.i.i = icmp eq i32 %i.co, 0
  br i1 %.not67.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @ffpmsg(ptr noundef nonnull @.str.8) #13
  br label %dodecode64.exit.i

bb.n:                                             ; preds = %bb.l
  store i32 0, ptr @bits_to_go, align 4, !tbaa !9
  br i1 %i.bu, label %.lr.ph73.preheader.i.i, label %dodecode64.exit.i

.lr.ph73.preheader.i.i:                           ; preds = %bb.n
  %nextchar.promoted.i49.i = load i64, ptr @nextchar, align 8
  %buffer2.promoted.i.i = load i32, ptr @buffer2, align 4
  %wide.trip.count.i.i = zext nneg i32 %i.ar to i64
  br label %.lr.ph73.i.i

.lr.ph73.i.i:                                     ; preds = %bb.r, %.lr.ph73.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph73.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.r ] ; 2 uses
  %i.cp = phi i32 [ 0, %.lr.ph73.preheader.i.i ], [ %i.di, %bb.r ] ; 3 uses
  %i.cq = phi i32 [ %buffer2.promoted.i.i, %.lr.ph73.preheader.i.i ], [ %i.dh, %bb.r ] ; 2 uses
  %i.cr = phi i64 [ %nextchar.promoted.i49.i, %.lr.ph73.preheader.i.i ], [ %i.dg, %bb.r ] ; 4 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i.i ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !18 ; 2 uses
  %.not68.i.i = icmp eq i64 %i.ct, 0
  br i1 %.not68.i.i, label %bb.r, label %bb.o

bb.o:                                             ; preds = %.lr.ph73.i.i
  %i.cu = icmp eq i32 %i.cp, 0
  br i1 %i.cu, label %bb.p, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.o
  %i.cv = add nsw i32 %i.cp, -1
  br label %input_bit.exit.i.i

bb.p:                                             ; preds = %bb.o
  %i.cw = getelementptr inbounds i8, ptr %0, i64 %i.cr
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !12
  %i.cy = zext i8 %i.cx to i32                    ; 2 uses
  store i32 %i.cy, ptr @buffer2, align 4, !tbaa !9
  %i.cz = add nsw i64 %i.cr, 1                    ; 2 uses
  store i64 %i.cz, ptr @nextchar, align 8, !tbaa !11
  br label %input_bit.exit.i.i

input_bit.exit.i.i:                               ; preds = %bb.p, %._crit_edge.i.i.i
  %i.da = phi i64 [ %i.cz, %bb.p ], [ %i.cr, %._crit_edge.i.i.i ] ; 2 uses
  %i.db = phi i32 [ %i.cy, %bb.p ], [ %i.cq, %._crit_edge.i.i.i ] ; 3 uses
  %i.dc = phi i32 [ 7, %bb.p ], [ %i.cv, %._crit_edge.i.i.i ] ; 4 uses
  store i32 %i.dc, ptr @bits_to_go, align 4, !tbaa !9
  %i.dd = shl nuw nsw i32 1, %i.dc
  %i.de = and i32 %i.dd, %i.db
  %.not69.i.i = icmp eq i32 %i.de, 0
  br i1 %.not69.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %input_bit.exit.i.i
  %i.df = sub nsw i64 0, %i.ct
  store i64 %i.df, ptr %i.cs, align 8, !tbaa !18
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %input_bit.exit.i.i, %.lr.ph73.i.i
  %i.dg = phi i64 [ %i.cr, %.lr.ph73.i.i ], [ %i.da, %bb.q ], [ %i.da, %input_bit.exit.i.i ]
  %i.dh = phi i32 [ %i.cq, %.lr.ph73.i.i ], [ %i.db, %bb.q ], [ %i.db, %input_bit.exit.i.i ]
  %i.di = phi i32 [ %i.cp, %.lr.ph73.i.i ], [ %i.dc, %bb.q ], [ %i.dc, %input_bit.exit.i.i ]
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %dodecode64.exit.i, label %.lr.ph73.i.i, !llvm.loop !49

dodecode64.exit.i:                                ; preds = %bb.r, %bb.n, %bb.m, %bb.k, %bb.j, %bb.i, %._crit_edge.i.i
  %.058.i.i = phi i32 [ %i.cn, %bb.k ], [ %i.by, %._crit_edge.i.i ], [ %i.cd, %bb.i ], [ %i.ci, %bb.j ], [ 414, %bb.m ], [ 0, %bb.n ], [ 0, %bb.r ]
  store i64 %i.bo, ptr %2, align 8, !tbaa !18
  br label %decode64.exit

decode64.exit:                                    ; preds = %bb.c, %bb.e, %bb.g, %dodecode64.exit.i
  %.0.i = phi i32 [ 414, %bb.c ], [ 414, %bb.e ], [ 414, %bb.g ], [ %.058.i.i, %dodecode64.exit.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.dj = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @Fitsio_Lock) #13
  store i32 %i.dj, ptr @Fitsio_Pthread_Status, align 4, !tbaa !9
  store i32 %.0.i, ptr %7, align 4, !tbaa !9
  %.not = icmp eq i32 %.0.i, 0
  br i1 %.not, label %bb.s, label %._crit_edge

bb.s:                                             ; preds = %decode64.exit
  %i.dk = load i32, ptr %5, align 4, !tbaa !9     ; 3 uses
  %i.dl = load i32, ptr %4, align 4, !tbaa !9     ; 13 uses
  %i.dm = load i32, ptr %6, align 4, !tbaa !9     ; 3 uses
  %i.dn = icmp slt i32 %i.dm, 2
  br i1 %i.dn, label %undigitize64.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.do = zext nneg i32 %i.dm to i64
  %i.dp = mul nsw i32 %i.dl, %i.dk
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr [8 x i8], ptr %2, i64 %i.dq
  %i.ds = getelementptr i8, ptr %i.dr, i64 -8     ; 2 uses
  %.not11.i = icmp ugt ptr %2, %i.ds
  br i1 %.not11.i, label %undigitize64.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.t, %.lr.ph.i
  %.012.i = phi ptr [ %i.dv, %.lr.ph.i ], [ %2, %bb.t ] ; 3 uses
  %i.dt = load i64, ptr %.012.i, align 8, !tbaa !18
  %i.du = mul nsw i64 %i.dt, %i.do
  store i64 %i.du, ptr %.012.i, align 8, !tbaa !18
  %i.dv = getelementptr inbounds nuw i8, ptr %.012.i, i64 8 ; 2 uses
  %.not.i37 = icmp ugt ptr %i.dv, %i.ds
  br i1 %.not.i37, label %undigitize64.exit, label %.lr.ph.i, !llvm.loop !50

undigitize64.exit:                                ; preds = %.lr.ph.i, %bb.s, %bb.t
  %i.dw = tail call i32 @llvm.smax.i32(i32 %i.dk, i32 %i.dl) ; 3 uses
  %i.dx = sitofp i32 %i.dw to float
  %i.dy = fpext float %i.dx to double
  %i.dz = tail call double @log(double noundef %i.dy) #13
  %i.ea = add nsw i32 %i.dw, 1
  %i.eb = sdiv i32 %i.ea, 2
  %i.ec = sext i32 %i.eb to i64
  %i.ed = shl nsw i64 %i.ec, 3
  %i.ee = tail call noalias ptr @malloc(i64 noundef %i.ed) #14 ; 9 uses
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %bb.u, label %bb.v

bb.u:                                             ; preds = %undigitize64.exit
  tail call void @ffpmsg(ptr noundef nonnull @.str.1) #13
  br label %hinv64.exit

bb.v:                                             ; preds = %undigitize64.exit
  %i.eg = fdiv double %i.dz, f0x3FE62E42FEFA39EF
  %i.eh = fadd double %i.eg, 5.000000e-01
  %i.ei = fptosi double %i.eh to i32              ; 2 uses
  %i.ej = shl nuw i32 1, %i.ei
  %i.ek = icmp sgt i32 %i.dw, %i.ej
  %i.el = zext i1 %i.ek to i32
  %spec.select.i = add nsw i32 %i.el, %i.ei       ; 3 uses
  %i.em = add nsw i32 %spec.select.i, -1          ; 2 uses
  %i.en = zext nneg i32 %i.em to i64              ; 3 uses
  %i.eo = shl nuw i64 1, %i.en                    ; 3 uses
  %i.ep = shl i64 4, %i.en
  %i.eq = sub nsw i64 0, %i.eo                    ; 3 uses
  %i.er = shl i64 %i.eq, 2
  %i.es = ashr exact i64 %i.ep, 1
  %i.et = load i64, ptr %2, align 8, !tbaa !18    ; 2 uses
  %.lobit.i = ashr i64 %i.et, 63
  %i.eu = add i64 %i.et, %i.es
  %i.ev = add i64 %i.eu, %.lobit.i
  %i.ew = and i64 %i.ev, %i.er
  store i64 %i.ew, ptr %2, align 8, !tbaa !18
  %i.ex = icmp sgt i32 %spec.select.i, 0
  br i1 %i.ex, label %.lr.ph361.i, label %._crit_edge362.i

.lr.ph361.i:                                      ; preds = %bb.v
  %i.ey = shl nuw i32 1, %spec.select.i
  %i.ez = shl i64 2, %i.en                        ; 2 uses
  %i.fa = ashr exact i64 %i.ez, 1                 ; 2 uses
  %i.fb = add nsw i64 %i.fa, -1
  %i.fc = shl i64 %i.eq, 1
  %i.fd = sext i32 %i.dl to i64                   ; 11 uses
  %i.fe = sub nsw i64 0, %i.fd                    ; 9 uses
  %i.ff = shl i32 %i.dl, 1                        ; 10 uses
  %i.fg = sext i32 %i.ff to i64                   ; 13 uses
  %i.fh = sub nsw i64 0, %i.fg                    ; 9 uses
  %.not288.i = icmp eq i32 %1, 0
  %i.fi = ashr i32 %i.dm, 1                       ; 2 uses
  %i.fj = sext i32 %i.fi to i64                   ; 4 uses
  %i.fk = icmp slt i32 %i.fi, 1
  %i.fl = sub nsw i64 0, %i.fj                    ; 3 uses
  %i.fm = mul i32 %i.dl, 3                        ; 2 uses
  %invariant.gep.i.i = getelementptr [8 x i8], ptr %2, i64 %i.fg ; 2 uses
  %i.fn = add i32 %i.ff, 2
  %i.fo = add i32 %i.fm, 2
  %brmerge.i = or i1 %.not288.i, %i.fk
  br label %bb.w

bb.w:                                             ; preds = %bb.au, %.lr.ph361.i
  %.0249359.in.i = phi i64 [ %i.eo, %.lr.ph361.i ], [ %.0249359.i, %bb.au ]
  %.0243358.i = phi i64 [ %i.fb, %.lr.ph361.i ], [ %.1245.i, %bb.au ] ; 4 uses
  %.0246357.i = phi i64 [ %i.ez, %.lr.ph361.i ], [ %.0247356.i, %bb.au ] ; 3 uses
  %.0247356.i = phi i64 [ %i.eo, %.lr.ph361.i ], [ %i.xq, %bb.au ] ; 3 uses
  %.0248355.i = phi i64 [ %i.fa, %.lr.ph361.i ], [ %.0249359.i, %bb.au ] ; 4 uses
  %.0250354.i = phi i64 [ %i.fc, %.lr.ph361.i ], [ %.0251353.i, %bb.au ] ; 4 uses
  %.0251353.i = phi i64 [ %i.eq, %.lr.ph361.i ], [ %i.xr, %bb.au ] ; 3 uses
  %.0252352.i = phi i32 [ 1, %.lr.ph361.i ], [ %.1253.i, %bb.au ]
  %.0254351.i = phi i32 [ %i.ey, %.lr.ph361.i ], [ %i.fp, %bb.au ]
  %.0255350.i = phi i32 [ %i.dl, %.lr.ph361.i ], [ %.1256.i, %bb.au ] ; 2 uses
  %.0257349.i = phi i32 [ %i.dk, %.lr.ph361.i ], [ %.1258.i, %bb.au ] ; 2 uses
  %.0259348.i = phi i32 [ 1, %.lr.ph361.i ], [ %.1260.i, %bb.au ]
  %.0261347.i = phi i32 [ 1, %.lr.ph361.i ], [ %.1262.i, %bb.au ]
  %.0263346.i = phi i32 [ %i.em, %.lr.ph361.i ], [ %i.xs, %bb.au ] ; 3 uses
  %.0249359.i = ashr i64 %.0249359.in.i, 1        ; 4 uses
  %.0244.i = add nsw i64 %.0249359.i, -1
  %i.fp = ashr i32 %.0254351.i, 1                 ; 5 uses
  %i.fq = shl i32 %.0261347.i, 1                  ; 4 uses
  %i.fr = shl i32 %.0259348.i, 1                  ; 2 uses
  %.not.i38 = icmp sle i32 %.0257349.i, %i.fp     ; 2 uses
  %i.fs = sext i1 %.not.i38 to i32                ; 4 uses
  %.1262.i = add nsw i32 %i.fq, %i.fs             ; 12 uses
  %i.ft = select i1 %.not.i38, i32 0, i32 %i.fp
  %.1258.i = sub nsw i32 %.0257349.i, %i.ft
  %.not287.i = icmp sle i32 %.0255350.i, %i.fp    ; 2 uses
  %i.fu = sext i1 %.not287.i to i32               ; 2 uses
  %.1260.i = add i32 %i.fr, %i.fu                 ; 13 uses
  %i.fv = select i1 %.not287.i, i32 0, i32 %i.fp
  %.1256.i = sub nsw i32 %.0255350.i, %i.fv
  %i.fw = icmp eq i32 %.0263346.i, 0              ; 2 uses
  %.1253.i = select i1 %i.fw, i32 2, i32 %.0252352.i ; 4 uses
  %.1245.i = select i1 %i.fw, i64 0, i64 %.0244.i ; 2 uses
  %i.fx = icmp sgt i32 %.1262.i, 0                ; 2 uses
  br i1 %i.fx, label %.lr.ph.i41, label %.preheader.i

.lr.ph.i41:                                       ; preds = %bb.w
  %i.fy = add nsw i32 %.1260.i, 1
  %i.fz = ashr i32 %i.fy, 1                       ; 7 uses
  %i.ga = icmp slt i32 %i.fz, %.1260.i
  %i.gb = sext i32 %i.fz to i64
  %i.gc = icmp sgt i32 %i.fz, 0
  %i.gd = add nsw i32 %i.fz, -1                   ; 4 uses
  %i.ge = shl nuw nsw i32 %i.gd, 1
  %i.gf = zext nneg i32 %i.ge to i64
  %i.gg = zext nneg i32 %i.gd to i64
  %i.gh = icmp sgt i32 %.1260.i, 1
  %i.gi = xor i32 %i.fz, -1
  %i.gj = add i32 %.1260.i, %i.gi
  %i.gk = zext i32 %i.gj to i64
  %i.gl = shl nuw nsw i64 %i.gk, 3
  %i.gm = add nuw nsw i64 %i.gl, 8
  %wide.trip.count.i = zext nneg i32 %.1262.i to i64
  %i.gn = add i32 %i.fr, -2
  %i.go = add i32 %i.gn, %i.fu                    ; 2 uses
  %i.gp = lshr i32 %i.go, 1
  %i.gq = add nuw i32 %i.gp, 1                    ; 2 uses
  %xtraiter = and i32 %i.fz, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %i.gr = icmp ult i32 %i.fz, 8
  %xtraiter89 = and i32 %i.gq, 7                  ; 3 uses
  %i.gs = icmp ult i32 %i.go, 14
  %unroll_iter = and i32 %i.gq, -8
  %lcmp.mod90.not = icmp eq i32 %xtraiter89, 0
  %lcmp.mod91 = icmp ne i32 %xtraiter89, 0
  br label %bb.x

.preheader.i:                                     ; preds = %unshuffle64.exit.i, %bb.w
  %i.gt = icmp sgt i32 %.1260.i, 0                ; 2 uses
  br i1 %i.gt, label %.lr.ph327.i, label %._crit_edge.i

.lr.ph327.i:                                      ; preds = %.preheader.i
  %i.gu = add nsw i32 %.1262.i, 1
  %i.gv = ashr i32 %i.gu, 1                       ; 10 uses
  %i.gw = icmp slt i32 %i.gv, %.1262.i
  %i.gx = mul nsw i32 %i.gv, %i.dl
  %i.gy = sext i32 %i.gx to i64
  %i.gz = icmp sgt i32 %i.gv, 0
  %i.ha = add nsw i32 %i.gv, -1                   ; 3 uses
  %i.hb = mul nsw i32 %i.ha, %i.dl                ; 2 uses
  %i.hc = shl i32 %i.hb, 1
  %i.hd = sext i32 %i.hc to i64
  %i.he = sext i32 %i.hb to i64
  %i.hf = icmp sgt i32 %.1262.i, 1
  %wide.trip.count370.i = zext nneg i32 %.1260.i to i64
  %i.hg = add i32 %i.fq, %i.fs
  %i.hh = sub i32 %i.hg, %i.gv
  %i.hi = add i32 %i.fq, -1
  %i.hj = add nsw i32 %i.hi, %i.fs
  %i.hk = sub i32 %i.hj, %i.gv
  %i.hl = add i32 %i.fq, -2
  %i.hm = add i32 %i.hl, %i.fs                    ; 2 uses
  %i.hn = lshr i32 %i.hm, 1
  %i.ho = add nuw i32 %i.hn, 1                    ; 2 uses
  %xtraiter94 = and i32 %i.hh, 7                  ; 2 uses
  %lcmp.mod95.not = icmp eq i32 %xtraiter94, 0
  %i.hp = icmp ult i32 %i.hk, 7
  %xtraiter99 = and i32 %i.gv, 7                  ; 2 uses
  %lcmp.mod100.not = icmp eq i32 %xtraiter99, 0
  %i.hq = icmp ult i32 %i.gv, 8
  %xtraiter103 = and i32 %i.ho, 7                 ; 3 uses
  %i.hr = icmp ult i32 %i.hm, 14
  %unroll_iter107 = and i32 %i.ho, -8
  %lcmp.mod105.not = icmp eq i32 %xtraiter103, 0
  %lcmp.mod106 = icmp ne i32 %xtraiter103, 0
  br label %bb.z

bb.x:                                             ; preds = %unshuffle64.exit.i, %.lr.ph.i41
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i41 ], [ %indvars.iv.next.i, %unshuffle64.exit.i ] ; 2 uses
  %i.hs = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.ht = mul i32 %i.dl, %i.hs
  %i.hu = sext i32 %i.ht to i64
  %i.hv = getelementptr [8 x i8], ptr %2, i64 %i.hu ; 4 uses
  br i1 %i.ga, label %.lr.ph.i.i, label %._crit_edge.i.i42

.lr.ph.i.i:                                       ; preds = %bb.x
  %i.hw = getelementptr [8 x i8], ptr %i.hv, i64 %i.gb
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ee, ptr noundef nonnull align 8 dereferenceable(1) %i.hw, i64 %i.gm, i1 false), !tbaa !18
  br label %._crit_edge.i.i42

._crit_edge.i.i42:                                ; preds = %.lr.ph.i.i, %bb.x
  br i1 %i.gc, label %.lr.ph55.i.i, label %._crit_edge56.i.i

.lr.ph55.i.i:                                     ; preds = %._crit_edge.i.i42
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %i.gf ; 2 uses
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %i.gg ; 2 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph55.i.i, %.prol.preheader
  %.04153.i.i.prol = phi ptr [ %i.ia, %.prol.preheader ], [ %i.hy, %.lr.ph55.i.i ] ; 2 uses
  %.14352.i.i.prol = phi ptr [ %i.ib, %.prol.preheader ], [ %i.hx, %.lr.ph55.i.i ] ; 2 uses
  %.14551.i.i.prol = phi i32 [ %i.ic, %.prol.preheader ], [ %i.gd, %.lr.ph55.i.i ]
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph55.i.i ]
  %i.hz = load i64, ptr %.04153.i.i.prol, align 8, !tbaa !18
  store i64 %i.hz, ptr %.14352.i.i.prol, align 8, !tbaa !18
  %i.ia = getelementptr inbounds i8, ptr %.04153.i.i.prol, i64 -8 ; 2 uses
  %i.ib = getelementptr inbounds i8, ptr %.14352.i.i.prol, i64 -16 ; 2 uses
  %i.ic = add nsw i32 %.14551.i.i.prol, -1        ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !51

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph55.i.i
  %.04153.i.i.unr = phi ptr [ %i.hy, %.lr.ph55.i.i ], [ %i.ia, %.prol.preheader ]
  %.14352.i.i.unr = phi ptr [ %i.hx, %.lr.ph55.i.i ], [ %i.ib, %.prol.preheader ]
  %.14551.i.i.unr = phi i32 [ %i.gd, %.lr.ph55.i.i ], [ %i.ic, %.prol.preheader ]
  br i1 %i.gr, label %._crit_edge56.i.i, label %.lr.ph55.i.i.new

.lr.ph55.i.i.new:                                 ; preds = %.prol.loopexit, %.lr.ph55.i.i.new
  %.04153.i.i = phi ptr [ %i.iz, %.lr.ph55.i.i.new ], [ %.04153.i.i.unr, %.prol.loopexit ] ; 9 uses
  %.14352.i.i = phi ptr [ %i.ja, %.lr.ph55.i.i.new ], [ %.14352.i.i.unr, %.prol.loopexit ] ; 9 uses
  %.14551.i.i = phi i32 [ %i.jb, %.lr.ph55.i.i.new ], [ %.14551.i.i.unr, %.prol.loopexit ] ; 2 uses
  %i.id = load i64, ptr %.04153.i.i, align 8, !tbaa !18
  store i64 %i.id, ptr %.14352.i.i, align 8, !tbaa !18
  %i.ie = getelementptr inbounds i8, ptr %.04153.i.i, i64 -8
  %i.if = getelementptr inbounds i8, ptr %.14352.i.i, i64 -16
  %i.ig = load i64, ptr %i.ie, align 8, !tbaa !18
  store i64 %i.ig, ptr %i.if, align 8, !tbaa !18
  %i.ih = getelementptr inbounds i8, ptr %.04153.i.i, i64 -16
  %i.ii = getelementptr inbounds i8, ptr %.14352.i.i, i64 -32
  %i.ij = load i64, ptr %i.ih, align 8, !tbaa !18
  store i64 %i.ij, ptr %i.ii, align 8, !tbaa !18
  %i.ik = getelementptr inbounds i8, ptr %.04153.i.i, i64 -24
  %i.il = getelementptr inbounds i8, ptr %.14352.i.i, i64 -48
  %i.im = load i64, ptr %i.ik, align 8, !tbaa !18
  store i64 %i.im, ptr %i.il, align 8, !tbaa !18
  %i.in = getelementptr inbounds i8, ptr %.04153.i.i, i64 -32
  %i.io = getelementptr inbounds i8, ptr %.14352.i.i, i64 -64
  %i.ip = load i64, ptr %i.in, align 8, !tbaa !18
  store i64 %i.ip, ptr %i.io, align 8, !tbaa !18
  %i.iq = getelementptr inbounds i8, ptr %.04153.i.i, i64 -40
  %i.ir = getelementptr inbounds i8, ptr %.14352.i.i, i64 -80
  %i.is = load i64, ptr %i.iq, align 8, !tbaa !18
  store i64 %i.is, ptr %i.ir, align 8, !tbaa !18
  %i.it = getelementptr inbounds i8, ptr %.04153.i.i, i64 -48
  %i.iu = getelementptr inbounds i8, ptr %.14352.i.i, i64 -96
  %i.iv = load i64, ptr %i.it, align 8, !tbaa !18
  store i64 %i.iv, ptr %i.iu, align 8, !tbaa !18
  %i.iw = getelementptr inbounds i8, ptr %.04153.i.i, i64 -56
  %i.ix = getelementptr inbounds i8, ptr %.14352.i.i, i64 -112
  %i.iy = load i64, ptr %i.iw, align 8, !tbaa !18
  store i64 %i.iy, ptr %i.ix, align 8, !tbaa !18
  %i.iz = getelementptr inbounds i8, ptr %.04153.i.i, i64 -64
  %i.ja = getelementptr inbounds i8, ptr %.14352.i.i, i64 -128
  %i.jb = add nsw i32 %.14551.i.i, -8
  %.not.i.i43.7 = icmp eq i32 %.14551.i.i, 7
  br i1 %.not.i.i43.7, label %._crit_edge56.i.i, label %.lr.ph55.i.i.new, !llvm.loop !52

._crit_edge56.i.i:                                ; preds = %.prol.loopexit, %.lr.ph55.i.i.new, %._crit_edge.i.i42
  br i1 %i.gh, label %.lr.ph61.i.i, label %unshuffle64.exit.i

.lr.ph61.i.i:                                     ; preds = %._crit_edge56.i.i
  %i.jc = getelementptr inbounds nuw i8, ptr %i.hv, i64 8 ; 2 uses
  br i1 %i.gs, label %.epil.preheader, label %.lr.ph61.i.i.new

.lr.ph61.i.i.new:                                 ; preds = %.lr.ph61.i.i, %.lr.ph61.i.i.new
  %.159.i.i = phi ptr [ %i.ka, %.lr.ph61.i.i.new ], [ %i.ee, %.lr.ph61.i.i ] ; 9 uses
  %.258.i.i = phi ptr [ %i.jz, %.lr.ph61.i.i.new ], [ %i.jc, %.lr.ph61.i.i ] ; 9 uses
  %niter = phi i32 [ %niter.next.7, %.lr.ph61.i.i.new ], [ 0, %.lr.ph61.i.i ]
  %i.jd = load i64, ptr %.159.i.i, align 8, !tbaa !18
  store i64 %i.jd, ptr %.258.i.i, align 8, !tbaa !18
  %i.je = getelementptr inbounds nuw i8, ptr %.258.i.i, i64 16
  %i.jf = getelementptr inbounds nuw i8, ptr %.159.i.i, i64 8
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !18
  store i64 %i.jg, ptr %i.je, align 8, !tbaa !18
  %i.jh = getelementptr inbounds nuw i8, ptr %.258.i.i, i64 32
  %i.ji = getelementptr inbounds nuw i8, ptr %.159.i.i, i64 16
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !18
  store i64 %i.jj, ptr %i.jh, align 8, !tbaa !18
  %i.jk = getelementptr inbounds nuw i8, ptr %.258.i.i, i64 48
  %i.jl = getelementptr inbounds nuw i8, ptr %.159.i.i, i64 24
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !18
  store i64 %i.jm, ptr %i.jk, align 8, !tbaa !18
  %i.jn = getelementptr inbounds nuw i8, ptr %.258.i.i, i64 64
  %i.jo = getelementptr inbounds nuw i8, ptr %.159.i.i, i64 32
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !18
  store i64 %i.jp, ptr %i.jn, align 8, !tbaa !18
  %i.jq = getelementptr inbounds nuw i8, ptr %.258.i.i, i64 80
  %i.jr = getelementptr inbounds nuw i8, ptr %.159.i.i, i64 40
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !18
  store i64 %i.js, ptr %i.jq, align 8, !tbaa !18
  %i.jt = getelementptr inbounds nuw i8, ptr %.258.i.i, i64 96
  %i.ju = getelementptr inbounds nuw i8, ptr %.159.i.i, i64 48
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !18
  store i64 %i.jv, ptr %i.jt, align 8, !tbaa !18
  %i.jw = getelementptr inbounds nuw i8, ptr %.258.i.i, i64 112
  %i.jx = getelementptr inbounds nuw i8, ptr %.159.i.i, i64 56
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !18
  store i64 %i.jy, ptr %i.jw, align 8, !tbaa !18
  %i.jz = getelementptr inbounds nuw i8, ptr %.258.i.i, i64 128 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.159.i.i, i64 64 ; 2 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7.not = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7.not, label %unshuffle64.exit.i.loopexit.unr-lcssa, label %.lr.ph61.i.i.new, !llvm.loop !53

unshuffle64.exit.i.loopexit.unr-lcssa:            ; preds = %.lr.ph61.i.i.new
  br i1 %lcmp.mod90.not, label %unshuffle64.exit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %unshuffle64.exit.i.loopexit.unr-lcssa, %.lr.ph61.i.i
  %.159.i.i.epil.init = phi ptr [ %i.ee, %.lr.ph61.i.i ], [ %i.ka, %unshuffle64.exit.i.loopexit.unr-lcssa ]
  %.258.i.i.epil.init = phi ptr [ %i.jc, %.lr.ph61.i.i ], [ %i.jz, %unshuffle64.exit.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod91)
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.epil.preheader
  %.159.i.i.epil = phi ptr [ %.159.i.i.epil.init, %.epil.preheader ], [ %i.kd, %bb.y ] ; 2 uses
  %.258.i.i.epil = phi ptr [ %.258.i.i.epil.init, %.epil.preheader ], [ %i.kc, %bb.y ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.y ]
  %i.kb = load i64, ptr %.159.i.i.epil, align 8, !tbaa !18
  store i64 %i.kb, ptr %.258.i.i.epil, align 8, !tbaa !18
  %i.kc = getelementptr inbounds nuw i8, ptr %.258.i.i.epil, i64 16
  %i.kd = getelementptr inbounds nuw i8, ptr %.159.i.i.epil, i64 8
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter89
  br i1 %epil.iter.cmp.not, label %unshuffle64.exit.i, label %bb.y, !llvm.loop !54

unshuffle64.exit.i:                               ; preds = %unshuffle64.exit.i.loopexit.unr-lcssa, %bb.y, %._crit_edge56.i.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader.i, label %bb.x, !llvm.loop !55

bb.z:                                             ; preds = %unshuffle64.exit310.i, %.lr.ph327.i
  %indvars.iv367.i = phi i64 [ 0, %.lr.ph327.i ], [ %indvars.iv.next368.i, %unshuffle64.exit310.i ] ; 2 uses
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv367.i ; 4 uses
  br i1 %i.gw, label %.lr.ph.i305.i, label %._crit_edge.i294.i

.lr.ph.i305.i:                                    ; preds = %bb.z
  %i.kf = getelementptr inbounds [8 x i8], ptr %i.ke, i64 %i.gy ; 2 uses
  br i1 %lcmp.mod95.not, label %.prol.loopexit93, label %.prol.preheader92

.prol.preheader92:                                ; preds = %.lr.ph.i305.i, %.prol.preheader92
  %.050.i306.i.prol = phi ptr [ %i.ki, %.prol.preheader92 ], [ %i.ee, %.lr.ph.i305.i ] ; 2 uses
  %.04249.i307.i.prol = phi ptr [ %i.kh, %.prol.preheader92 ], [ %i.kf, %.lr.ph.i305.i ] ; 2 uses
  %.04448.i308.i.prol = phi i32 [ %i.kj, %.prol.preheader92 ], [ %i.gv, %.lr.ph.i305.i ]
  %prol.iter96 = phi i32 [ %prol.iter96.next, %.prol.preheader92 ], [ 0, %.lr.ph.i305.i ]
  %i.kg = load i64, ptr %.04249.i307.i.prol, align 8, !tbaa !18
  store i64 %i.kg, ptr %.050.i306.i.prol, align 8, !tbaa !18
  %i.kh = getelementptr inbounds [8 x i8], ptr %.04249.i307.i.prol, i64 %i.fd ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.050.i306.i.prol, i64 8 ; 2 uses
  %i.kj = add nsw i32 %.04448.i308.i.prol, 1      ; 2 uses
  %prol.iter96.next = add i32 %prol.iter96, 1     ; 2 uses
  %prol.iter96.cmp.not = icmp eq i32 %prol.iter96.next, %xtraiter94
  br i1 %prol.iter96.cmp.not, label %.prol.loopexit93, label %.prol.preheader92, !llvm.loop !56

.prol.loopexit93:                                 ; preds = %.prol.preheader92, %.lr.ph.i305.i
  %.050.i306.i.unr = phi ptr [ %i.ee, %.lr.ph.i305.i ], [ %i.ki, %.prol.preheader92 ]
  %.04249.i307.i.unr = phi ptr [ %i.kf, %.lr.ph.i305.i ], [ %i.kh, %.prol.preheader92 ]
  %.04448.i308.i.unr = phi i32 [ %i.gv, %.lr.ph.i305.i ], [ %i.kj, %.prol.preheader92 ]
  br i1 %i.hp, label %._crit_edge.i294.i, label %.lr.ph.i305.i.new

.lr.ph.i305.i.new:                                ; preds = %.prol.loopexit93, %.lr.ph.i305.i.new
  %.050.i306.i = phi ptr [ %i.lh, %.lr.ph.i305.i.new ], [ %.050.i306.i.unr, %.prol.loopexit93 ] ; 9 uses
  %.04249.i307.i = phi ptr [ %i.lg, %.lr.ph.i305.i.new ], [ %.04249.i307.i.unr, %.prol.loopexit93 ] ; 2 uses
  %.04448.i308.i = phi i32 [ %i.li, %.lr.ph.i305.i.new ], [ %.04448.i308.i.unr, %.prol.loopexit93 ]
  %i.kk = load i64, ptr %.04249.i307.i, align 8, !tbaa !18
  store i64 %i.kk, ptr %.050.i306.i, align 8, !tbaa !18
  %i.kl = getelementptr inbounds [8 x i8], ptr %.04249.i307.i, i64 %i.fd ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %.050.i306.i, i64 8
  %i.kn = load i64, ptr %i.kl, align 8, !tbaa !18
  store i64 %i.kn, ptr %i.km, align 8, !tbaa !18
  %i.ko = getelementptr inbounds [8 x i8], ptr %i.kl, i64 %i.fd ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.050.i306.i, i64 16
  %i.kq = load i64, ptr %i.ko, align 8, !tbaa !18
  store i64 %i.kq, ptr %i.kp, align 8, !tbaa !18
  %i.kr = getelementptr inbounds [8 x i8], ptr %i.ko, i64 %i.fd ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.050.i306.i, i64 24
  %i.kt = load i64, ptr %i.kr, align 8, !tbaa !18
  store i64 %i.kt, ptr %i.ks, align 8, !tbaa !18
  %i.ku = getelementptr inbounds [8 x i8], ptr %i.kr, i64 %i.fd ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %.050.i306.i, i64 32
  %i.kw = load i64, ptr %i.ku, align 8, !tbaa !18
  store i64 %i.kw, ptr %i.kv, align 8, !tbaa !18
  %i.kx = getelementptr inbounds [8 x i8], ptr %i.ku, i64 %i.fd ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %.050.i306.i, i64 40
  %i.kz = load i64, ptr %i.kx, align 8, !tbaa !18
  store i64 %i.kz, ptr %i.ky, align 8, !tbaa !18
  %i.la = getelementptr inbounds [8 x i8], ptr %i.kx, i64 %i.fd ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.050.i306.i, i64 48
  %i.lc = load i64, ptr %i.la, align 8, !tbaa !18
  store i64 %i.lc, ptr %i.lb, align 8, !tbaa !18
  %i.ld = getelementptr inbounds [8 x i8], ptr %i.la, i64 %i.fd ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %.050.i306.i, i64 56
  %i.lf = load i64, ptr %i.ld, align 8, !tbaa !18
  store i64 %i.lf, ptr %i.le, align 8, !tbaa !18
  %i.lg = getelementptr inbounds [8 x i8], ptr %i.ld, i64 %i.fd
  %i.lh = getelementptr inbounds nuw i8, ptr %.050.i306.i, i64 64
  %i.li = add nsw i32 %.04448.i308.i, 8           ; 2 uses
  %exitcond.not.i309.i.7 = icmp eq i32 %i.li, %.1262.i
  br i1 %exitcond.not.i309.i.7, label %._crit_edge.i294.i, label %.lr.ph.i305.i.new, !llvm.loop !57

._crit_edge.i294.i:                               ; preds = %.prol.loopexit93, %.lr.ph.i305.i.new, %bb.z
  br i1 %i.gz, label %.lr.ph55.i300.i, label %._crit_edge56.i295.i

.lr.ph55.i300.i:                                  ; preds = %._crit_edge.i294.i
  %i.lj = getelementptr inbounds [8 x i8], ptr %i.ke, i64 %i.hd ; 2 uses
  %i.lk = getelementptr inbounds [8 x i8], ptr %i.ke, i64 %i.he ; 2 uses
  br i1 %lcmp.mod100.not, label %.prol.loopexit98, label %.prol.preheader97

.prol.preheader97:                                ; preds = %.lr.ph55.i300.i, %.prol.preheader97
  %.04153.i301.i.prol = phi ptr [ %i.lm, %.prol.preheader97 ], [ %i.lk, %.lr.ph55.i300.i ] ; 2 uses
  %.14352.i302.i.prol = phi ptr [ %i.ln, %.prol.preheader97 ], [ %i.lj, %.lr.ph55.i300.i ] ; 2 uses
  %.14551.i303.i.prol = phi i32 [ %i.lo, %.prol.preheader97 ], [ %i.ha, %.lr.ph55.i300.i ]
  %prol.iter101 = phi i32 [ %prol.iter101.next, %.prol.preheader97 ], [ 0, %.lr.ph55.i300.i ]
  %i.ll = load i64, ptr %.04153.i301.i.prol, align 8, !tbaa !18
  store i64 %i.ll, ptr %.14352.i302.i.prol, align 8, !tbaa !18
  %i.lm = getelementptr inbounds [8 x i8], ptr %.04153.i301.i.prol, i64 %i.fe ; 2 uses
  %i.ln = getelementptr inbounds [8 x i8], ptr %.14352.i302.i.prol, i64 %i.fh ; 2 uses
  %i.lo = add nsw i32 %.14551.i303.i.prol, -1     ; 2 uses
  %prol.iter101.next = add i32 %prol.iter101, 1   ; 2 uses
  %prol.iter101.cmp.not = icmp eq i32 %prol.iter101.next, %xtraiter99
  br i1 %prol.iter101.cmp.not, label %.prol.loopexit98, label %.prol.preheader97, !llvm.loop !58

.prol.loopexit98:                                 ; preds = %.prol.preheader97, %.lr.ph55.i300.i
  %.04153.i301.i.unr = phi ptr [ %i.lk, %.lr.ph55.i300.i ], [ %i.lm, %.prol.preheader97 ]
  %.14352.i302.i.unr = phi ptr [ %i.lj, %.lr.ph55.i300.i ], [ %i.ln, %.prol.preheader97 ]
  %.14551.i303.i.unr = phi i32 [ %i.ha, %.lr.ph55.i300.i ], [ %i.lo, %.prol.preheader97 ]
  br i1 %i.hq, label %._crit_edge56.i295.i, label %.lr.ph55.i300.i.new

.lr.ph55.i300.i.new:                              ; preds = %.prol.loopexit98, %.lr.ph55.i300.i.new
  %.04153.i301.i = phi ptr [ %i.ml, %.lr.ph55.i300.i.new ], [ %.04153.i301.i.unr, %.prol.loopexit98 ] ; 2 uses
  %.14352.i302.i = phi ptr [ %i.mm, %.lr.ph55.i300.i.new ], [ %.14352.i302.i.unr, %.prol.loopexit98 ] ; 2 uses
  %.14551.i303.i = phi i32 [ %i.mn, %.lr.ph55.i300.i.new ], [ %.14551.i303.i.unr, %.prol.loopexit98 ] ; 2 uses
  %i.lp = load i64, ptr %.04153.i301.i, align 8, !tbaa !18
  store i64 %i.lp, ptr %.14352.i302.i, align 8, !tbaa !18
  %i.lq = getelementptr inbounds [8 x i8], ptr %.04153.i301.i, i64 %i.fe ; 2 uses
  %i.lr = getelementptr inbounds [8 x i8], ptr %.14352.i302.i, i64 %i.fh ; 2 uses
  %i.ls = load i64, ptr %i.lq, align 8, !tbaa !18
  store i64 %i.ls, ptr %i.lr, align 8, !tbaa !18
  %i.lt = getelementptr inbounds [8 x i8], ptr %i.lq, i64 %i.fe ; 2 uses
  %i.lu = getelementptr inbounds [8 x i8], ptr %i.lr, i64 %i.fh ; 2 uses
  %i.lv = load i64, ptr %i.lt, align 8, !tbaa !18
  store i64 %i.lv, ptr %i.lu, align 8, !tbaa !18
  %i.lw = getelementptr inbounds [8 x i8], ptr %i.lt, i64 %i.fe ; 2 uses
  %i.lx = getelementptr inbounds [8 x i8], ptr %i.lu, i64 %i.fh ; 2 uses
  %i.ly = load i64, ptr %i.lw, align 8, !tbaa !18
  store i64 %i.ly, ptr %i.lx, align 8, !tbaa !18
  %i.lz = getelementptr inbounds [8 x i8], ptr %i.lw, i64 %i.fe ; 2 uses
  %i.ma = getelementptr inbounds [8 x i8], ptr %i.lx, i64 %i.fh ; 2 uses
  %i.mb = load i64, ptr %i.lz, align 8, !tbaa !18
  store i64 %i.mb, ptr %i.ma, align 8, !tbaa !18
  %i.mc = getelementptr inbounds [8 x i8], ptr %i.lz, i64 %i.fe ; 2 uses
  %i.md = getelementptr inbounds [8 x i8], ptr %i.ma, i64 %i.fh ; 2 uses
  %i.me = load i64, ptr %i.mc, align 8, !tbaa !18
  store i64 %i.me, ptr %i.md, align 8, !tbaa !18
  %i.mf = getelementptr inbounds [8 x i8], ptr %i.mc, i64 %i.fe ; 2 uses
  %i.mg = getelementptr inbounds [8 x i8], ptr %i.md, i64 %i.fh ; 2 uses
  %i.mh = load i64, ptr %i.mf, align 8, !tbaa !18
  store i64 %i.mh, ptr %i.mg, align 8, !tbaa !18
  %i.mi = getelementptr inbounds [8 x i8], ptr %i.mf, i64 %i.fe ; 2 uses
  %i.mj = getelementptr inbounds [8 x i8], ptr %i.mg, i64 %i.fh ; 2 uses
  %i.mk = load i64, ptr %i.mi, align 8, !tbaa !18
  store i64 %i.mk, ptr %i.mj, align 8, !tbaa !18
  %i.ml = getelementptr inbounds [8 x i8], ptr %i.mi, i64 %i.fe
  %i.mm = getelementptr inbounds [8 x i8], ptr %i.mj, i64 %i.fh
  %i.mn = add nsw i32 %.14551.i303.i, -8
  %.not.i304.i.7 = icmp eq i32 %.14551.i303.i, 7
  br i1 %.not.i304.i.7, label %._crit_edge56.i295.i, label %.lr.ph55.i300.i.new, !llvm.loop !52

._crit_edge56.i295.i:                             ; preds = %.prol.loopexit98, %.lr.ph55.i300.i.new, %._crit_edge.i294.i
  br i1 %i.hf, label %.lr.ph61.i296.i, label %unshuffle64.exit310.i

.lr.ph61.i296.i:                                  ; preds = %._crit_edge56.i295.i
  %i.mo = getelementptr inbounds [8 x i8], ptr %i.ke, i64 %i.fd ; 2 uses
  br i1 %i.hr, label %.epil.preheader102, label %.lr.ph61.i296.i.new

.lr.ph61.i296.i.new:                              ; preds = %.lr.ph61.i296.i, %.lr.ph61.i296.i.new
  %.159.i297.i = phi ptr [ %i.nm, %.lr.ph61.i296.i.new ], [ %i.ee, %.lr.ph61.i296.i ] ; 9 uses
  %.258.i298.i = phi ptr [ %i.nl, %.lr.ph61.i296.i.new ], [ %i.mo, %.lr.ph61.i296.i ] ; 2 uses
  %niter108 = phi i32 [ %niter108.next.7, %.lr.ph61.i296.i.new ], [ 0, %.lr.ph61.i296.i ]
  %i.mp = load i64, ptr %.159.i297.i, align 8, !tbaa !18
  store i64 %i.mp, ptr %.258.i298.i, align 8, !tbaa !18
  %i.mq = getelementptr inbounds [8 x i8], ptr %.258.i298.i, i64 %i.fg ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %.159.i297.i, i64 8
  %i.ms = load i64, ptr %i.mr, align 8, !tbaa !18
  store i64 %i.ms, ptr %i.mq, align 8, !tbaa !18
  %i.mt = getelementptr inbounds [8 x i8], ptr %i.mq, i64 %i.fg ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %.159.i297.i, i64 16
  %i.mv = load i64, ptr %i.mu, align 8, !tbaa !18
  store i64 %i.mv, ptr %i.mt, align 8, !tbaa !18
  %i.mw = getelementptr inbounds [8 x i8], ptr %i.mt, i64 %i.fg ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %.159.i297.i, i64 24
  %i.my = load i64, ptr %i.mx, align 8, !tbaa !18
  store i64 %i.my, ptr %i.mw, align 8, !tbaa !18
  %i.mz = getelementptr inbounds [8 x i8], ptr %i.mw, i64 %i.fg ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %.159.i297.i, i64 32
  %i.nb = load i64, ptr %i.na, align 8, !tbaa !18
  store i64 %i.nb, ptr %i.mz, align 8, !tbaa !18
  %i.nc = getelementptr inbounds [8 x i8], ptr %i.mz, i64 %i.fg ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %.159.i297.i, i64 40
  %i.ne = load i64, ptr %i.nd, align 8, !tbaa !18
  store i64 %i.ne, ptr %i.nc, align 8, !tbaa !18
  %i.nf = getelementptr inbounds [8 x i8], ptr %i.nc, i64 %i.fg ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %.159.i297.i, i64 48
  %i.nh = load i64, ptr %i.ng, align 8, !tbaa !18
  store i64 %i.nh, ptr %i.nf, align 8, !tbaa !18
  %i.ni = getelementptr inbounds [8 x i8], ptr %i.nf, i64 %i.fg ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %.159.i297.i, i64 56
  %i.nk = load i64, ptr %i.nj, align 8, !tbaa !18
  store i64 %i.nk, ptr %i.ni, align 8, !tbaa !18
  %i.nl = getelementptr inbounds [8 x i8], ptr %i.ni, i64 %i.fg ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %.159.i297.i, i64 64 ; 2 uses
  %niter108.next.7 = add i32 %niter108, 8         ; 2 uses
  %niter108.ncmp.7.not = icmp eq i32 %niter108.next.7, %unroll_iter107
  br i1 %niter108.ncmp.7.not, label %unshuffle64.exit310.i.loopexit.unr-lcssa, label %.lr.ph61.i296.i.new, !llvm.loop !53

unshuffle64.exit310.i.loopexit.unr-lcssa:         ; preds = %.lr.ph61.i296.i.new
  br i1 %lcmp.mod105.not, label %unshuffle64.exit310.i, label %.epil.preheader102

.epil.preheader102:                               ; preds = %unshuffle64.exit310.i.loopexit.unr-lcssa, %.lr.ph61.i296.i
  %.159.i297.i.epil.init = phi ptr [ %i.ee, %.lr.ph61.i296.i ], [ %i.nm, %unshuffle64.exit310.i.loopexit.unr-lcssa ]
  %.258.i298.i.epil.init = phi ptr [ %i.mo, %.lr.ph61.i296.i ], [ %i.nl, %unshuffle64.exit310.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod106)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.epil.preheader102
  %.159.i297.i.epil = phi ptr [ %.159.i297.i.epil.init, %.epil.preheader102 ], [ %i.np, %bb.aa ] ; 2 uses
  %.258.i298.i.epil = phi ptr [ %.258.i298.i.epil.init, %.epil.preheader102 ], [ %i.no, %bb.aa ] ; 2 uses
  %epil.iter104 = phi i32 [ 0, %.epil.preheader102 ], [ %epil.iter104.next, %bb.aa ]
  %i.nn = load i64, ptr %.159.i297.i.epil, align 8, !tbaa !18
  store i64 %i.nn, ptr %.258.i298.i.epil, align 8, !tbaa !18
  %i.no = getelementptr inbounds [8 x i8], ptr %.258.i298.i.epil, i64 %i.fg
  %i.np = getelementptr inbounds nuw i8, ptr %.159.i297.i.epil, i64 8
  %epil.iter104.next = add i32 %epil.iter104, 1   ; 2 uses
  %epil.iter104.cmp.not = icmp eq i32 %epil.iter104.next, %xtraiter103
  br i1 %epil.iter104.cmp.not, label %unshuffle64.exit310.i, label %bb.aa, !llvm.loop !59

unshuffle64.exit310.i:                            ; preds = %unshuffle64.exit310.i.loopexit.unr-lcssa, %bb.aa, %._crit_edge56.i295.i
  %indvars.iv.next368.i = add nuw nsw i64 %indvars.iv367.i, 1 ; 2 uses
  %exitcond371.not.i = icmp eq i64 %indvars.iv.next368.i, %wide.trip.count370.i
  br i1 %exitcond371.not.i, label %._crit_edge.i, label %bb.z, !llvm.loop !60

._crit_edge.i:                                    ; preds = %unshuffle64.exit310.i, %.preheader.i
  br i1 %brmerge.i, label %hsmooth64.exit.i, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge.i
  %i.nq = add nsw i32 %.1262.i, -2                ; 2 uses
  %i.nr = icmp slt i32 %.1262.i, 5                ; 2 uses
  br i1 %i.nr, label %.preheader410.i.i, label %.lr.ph416.i.i

.lr.ph416.i.i:                                    ; preds = %bb.ab
  br i1 %i.gt, label %.lr.ph.i311.i, label %hsmooth64.exit.i

.preheader410.i.i:                                ; preds = %._crit_edge.i312.i, %bb.ab
  br i1 %i.fx, label %.lr.ph423.i.i, label %hsmooth64.exit.i

.lr.ph423.i.i:                                    ; preds = %.preheader410.i.i
  %i.ns = add nsw i32 %.1260.i, -2                ; 2 uses
  %i.nt = icmp sgt i32 %.1260.i, 4
  br i1 %i.nt, label %.lr.ph420.i.i, label %hsmooth64.exit.i

.lr.ph.i311.i:                                    ; preds = %.lr.ph416.i.i, %._crit_edge.i312.i
  %indvars.iv434.i.i = phi i32 [ %indvars.iv.next435.i.i, %._crit_edge.i312.i ], [ %i.fm, %.lr.ph416.i.i ] ; 2 uses
  %indvars.iv.i.i39 = phi i32 [ %indvars.iv.next.i.i40, %._crit_edge.i312.i ], [ %i.ff, %.lr.ph416.i.i ] ; 2 uses
  %.0351414.i.i = phi i32 [ %i.pc, %._crit_edge.i312.i ], [ 2, %.lr.ph416.i.i ]
  %i.nu = sext i32 %indvars.iv.i.i39 to i64
  %i.nv = sext i32 %indvars.iv434.i.i to i64
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ae, %.lr.ph.i311.i
  %indvars.iv436.i.i = phi i64 [ %i.nv, %.lr.ph.i311.i ], [ %indvars.iv.next437.i.i, %bb.ae ] ; 2 uses
  %indvars.iv432.i.i = phi i64 [ %i.nu, %.lr.ph.i311.i ], [ %indvars.iv.next433.i.i, %bb.ae ] ; 4 uses
  %.0348411.i.i = phi i32 [ 0, %.lr.ph.i311.i ], [ %i.pa, %bb.ae ]
  %i.nw = sub nsw i64 %indvars.iv432.i.i, %i.fg
  %i.nx = getelementptr inbounds [8 x i8], ptr %2, i64 %i.nw
  %i.ny = load i64, ptr %i.nx, align 8, !tbaa !18 ; 2 uses
  %i.nz = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv432.i.i
  %i.oa = load i64, ptr %i.nz, align 8, !tbaa !18 ; 2 uses
  %gep.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv432.i.i
  %i.ob = load i64, ptr %gep.i.i, align 8, !tbaa !18 ; 2 uses
  %i.oc = sub nsw i64 %i.ob, %i.oa                ; 2 uses
  %i.od = sub nsw i64 %i.oa, %i.ny                ; 2 uses
  %..i.i = tail call i64 @llvm.smin.i64(i64 %i.oc, i64 %i.od)
  %i.oe = tail call i64 @llvm.smax.i64(i64 %..i.i, i64 0)
  %i.of = shl i64 %i.oe, 2                        ; 2 uses
  %i.og = tail call i64 @llvm.smax.i64(i64 %i.oc, i64 %i.od)
  %i.oh = tail call i64 @llvm.smin.i64(i64 %i.og, i64 0)
  %i.oi = shl i64 %i.oh, 2                        ; 3 uses
  %i.oj = icmp slt i64 %i.oi, %i.of
  br i1 %i.oj, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ok = sub nsw i64 %i.ob, %i.ny                ; 2 uses
  %i.ol = icmp sgt i64 %i.ok, %i.oi
  %i.om = tail call i64 @llvm.smin.i64(i64 %i.ok, i64 %i.of)
  %i.on = select i1 %i.ol, i64 %i.om, i64 %i.oi
  %i.oo = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv436.i.i ; 2 uses
  %i.op = load i64, ptr %i.oo, align 8, !tbaa !18 ; 2 uses
  %i.oq = shl i64 %i.op, 3
  %i.or = sub nsw i64 %i.on, %i.oq                ; 3 uses
  %i.os = lshr i64 %i.or, 3
  %i.ot = add nsw i64 %i.or, 7
  %i.ou = ashr i64 %i.ot, 3
  %i.ov = icmp slt i64 %i.or, 0
  %i.ow = select i1 %i.ov, i64 %i.ou, i64 %i.os
  %i.ox = tail call i64 @llvm.smin.i64(i64 %i.ow, i64 %i.fj)
  %i.oy = tail call i64 @llvm.smax.i64(i64 %i.ox, i64 %i.fl)
  %i.oz = add nsw i64 %i.oy, %i.op
  store i64 %i.oz, ptr %i.oo, align 8, !tbaa !18
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %indvars.iv.next433.i.i = add nsw i64 %indvars.iv432.i.i, 2
  %indvars.iv.next437.i.i = add nsw i64 %indvars.iv436.i.i, 2
  %i.pa = add nuw nsw i32 %.0348411.i.i, 2        ; 2 uses
  %i.pb = icmp slt i32 %i.pa, %.1260.i
  br i1 %i.pb, label %bb.ac, label %._crit_edge.i312.i, !llvm.loop !61

._crit_edge.i312.i:                               ; preds = %bb.ae
  %i.pc = add nuw nsw i32 %.0351414.i.i, 2        ; 2 uses
  %i.pd = icmp slt i32 %i.pc, %i.nq
  %indvars.iv.next.i.i40 = add i32 %indvars.iv.i.i39, %i.ff
  %indvars.iv.next435.i.i = add i32 %indvars.iv434.i.i, %i.ff
  br i1 %i.pd, label %.lr.ph.i311.i, label %.preheader410.i.i, !llvm.loop !62

.preheader.i.i:                                   ; preds = %._crit_edge421.i.i
  br i1 %i.nr, label %hsmooth64.exit.i, label %.lr.ph428.i.i

.lr.ph420.i.i:                                    ; preds = %.lr.ph423.i.i, %._crit_edge421.i.i
  %indvars.iv441.i.i = phi i32 [ %indvars.iv.next442.i.i, %._crit_edge421.i.i ], [ 2, %.lr.ph423.i.i ] ; 2 uses
  %.1352422.i.i = phi i32 [ %i.ql, %._crit_edge421.i.i ], [ 0, %.lr.ph423.i.i ]
  %i.pe = sext i32 %indvars.iv441.i.i to i64      ; 2 uses
  %.phi.trans.insert.i.i = getelementptr [8 x i8], ptr %2, i64 %i.pe
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !18
  br label %bb.af

bb.af:                                            ; preds = %bb.ah, %.lr.ph420.i.i
  %i.pf = phi i64 [ %.pre.i.i, %.lr.ph420.i.i ], [ %i.pk, %bb.ah ] ; 2 uses
  %indvars.iv443.i.i = phi i64 [ %i.pe, %.lr.ph420.i.i ], [ %indvars.iv.next444.i.i, %bb.ah ] ; 2 uses
  %.1349417.i.i = phi i32 [ 2, %.lr.ph420.i.i ], [ %i.qj, %bb.ah ]
  %i.pg = getelementptr [8 x i8], ptr %2, i64 %indvars.iv443.i.i ; 2 uses
  %i.ph = getelementptr i8, ptr %i.pg, i64 -16
  %i.pi = load i64, ptr %i.ph, align 8, !tbaa !18 ; 2 uses
  %indvars.iv.next444.i.i = add nsw i64 %indvars.iv443.i.i, 2 ; 2 uses
  %i.pj = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv.next444.i.i
  %i.pk = load i64, ptr %i.pj, align 8, !tbaa !18 ; 3 uses
  %i.pl = sub nsw i64 %i.pk, %i.pf                ; 2 uses
  %i.pm = sub nsw i64 %i.pf, %i.pi                ; 2 uses
  %.403.i.i = tail call i64 @llvm.smin.i64(i64 %i.pl, i64 %i.pm)
  %i.pn = tail call i64 @llvm.smax.i64(i64 %.403.i.i, i64 0)
  %i.po = shl i64 %i.pn, 2                        ; 2 uses
  %i.pp = tail call i64 @llvm.smax.i64(i64 %i.pl, i64 %i.pm)
  %i.pq = tail call i64 @llvm.smin.i64(i64 %i.pp, i64 0)
  %i.pr = shl i64 %i.pq, 2                        ; 3 uses
  %i.ps = icmp slt i64 %i.pr, %i.po
  br i1 %i.ps, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.pt = sub nsw i64 %i.pk, %i.pi                ; 2 uses
  %i.pu = icmp sgt i64 %i.pt, %i.pr
  %i.pv = tail call i64 @llvm.smin.i64(i64 %i.pt, i64 %i.po)
  %i.pw = select i1 %i.pu, i64 %i.pv, i64 %i.pr
  %i.px = getelementptr i8, ptr %i.pg, i64 8      ; 2 uses
  %i.py = load i64, ptr %i.px, align 8, !tbaa !18 ; 2 uses
  %i.pz = shl i64 %i.py, 3
  %i.qa = sub nsw i64 %i.pw, %i.pz                ; 3 uses
  %i.qb = lshr i64 %i.qa, 3
  %i.qc = add nsw i64 %i.qa, 7
  %i.qd = ashr i64 %i.qc, 3
  %i.qe = icmp slt i64 %i.qa, 0
  %i.qf = select i1 %i.qe, i64 %i.qd, i64 %i.qb
  %i.qg = tail call i64 @llvm.smin.i64(i64 %i.qf, i64 %i.fj)
  %i.qh = tail call i64 @llvm.smax.i64(i64 %i.qg, i64 %i.fl)
  %i.qi = add nsw i64 %i.qh, %i.py
  store i64 %i.qi, ptr %i.px, align 8, !tbaa !18
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.qj = add nuw nsw i32 %.1349417.i.i, 2        ; 2 uses
  %i.qk = icmp slt i32 %i.qj, %i.ns
  br i1 %i.qk, label %bb.af, label %._crit_edge421.i.i, !llvm.loop !63

._crit_edge421.i.i:                               ; preds = %bb.ah
  %i.ql = add nuw nsw i32 %.1352422.i.i, 2        ; 2 uses
  %i.qm = icmp slt i32 %i.ql, %.1262.i
  %indvars.iv.next442.i.i = add i32 %indvars.iv441.i.i, %i.ff
  br i1 %i.qm, label %.lr.ph420.i.i, label %.preheader.i.i, !llvm.loop !64

.lr.ph428.i.i:                                    ; preds = %.preheader.i.i, %._crit_edge429.i.i
  %indvars.iv450.i.i = phi i32 [ %indvars.iv.next451.i.i, %._crit_edge429.i.i ], [ %i.fo, %.preheader.i.i ] ; 2 uses
  %indvars.iv446.i.i = phi i32 [ %indvars.iv.next447.i.i, %._crit_edge429.i.i ], [ %i.fn, %.preheader.i.i ] ; 2 uses
  %.2353430.i.i = phi i32 [ %i.tg, %._crit_edge429.i.i ], [ 2, %.preheader.i.i ]
  %i.qn = sext i32 %indvars.iv446.i.i to i64
  %i.qo = sext i32 %indvars.iv450.i.i to i64
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ak, %.lr.ph428.i.i
  %indvars.iv452.i.i = phi i64 [ %i.qo, %.lr.ph428.i.i ], [ %indvars.iv.next453.i.i, %bb.ak ] ; 2 uses
  %indvars.iv448.i.i = phi i64 [ %i.qn, %.lr.ph428.i.i ], [ %indvars.iv.next449.i.i, %bb.ak ] ; 4 uses
  %.2350424.i.i = phi i32 [ 2, %.lr.ph428.i.i ], [ %i.te, %bb.ak ]
  %i.qp = sub nsw i64 %indvars.iv448.i.i, %i.fg
  %i.qq = getelementptr [8 x i8], ptr %2, i64 %i.qp ; 2 uses
  %i.qr = getelementptr i8, ptr %i.qq, i64 -16
  %i.qs = load i64, ptr %i.qr, align 8, !tbaa !18 ; 2 uses
  %gep472.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv448.i.i ; 2 uses
  %i.qt = getelementptr i8, ptr %gep472.i.i, i64 -16
  %i.qu = load i64, ptr %i.qt, align 8, !tbaa !18 ; 2 uses
  %i.qv = getelementptr i8, ptr %i.qq, i64 16
  %i.qw = load i64, ptr %i.qv, align 8, !tbaa !18 ; 2 uses
  %i.qx = getelementptr i8, ptr %gep472.i.i, i64 16
  %i.qy = load i64, ptr %i.qx, align 8, !tbaa !18 ; 2 uses
  %i.qz = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv448.i.i ; 2 uses
  %i.ra = load i64, ptr %i.qz, align 8, !tbaa !18 ; 4 uses
  %i.rb = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv452.i.i ; 2 uses
  %i.rc = load i64, ptr %i.rb, align 8, !tbaa !18
  %i.rd = shl i64 %i.rc, 1                        ; 7 uses
  %i.re = getelementptr i8, ptr %i.qz, i64 8
  %i.rf = load i64, ptr %i.re, align 8, !tbaa !18
  %i.rg = shl i64 %i.rf, 1                        ; 5 uses
  %i.rh = sub nsw i64 %i.qy, %i.ra                ; 2 uses
  %i.ri = tail call i64 @llvm.smax.i64(i64 %i.rh, i64 0)
  %i.rj = add i64 %i.rg, %i.rd                    ; 2 uses
  %i.rk = sub i64 %i.ri, %i.rj
  %i.rl = sub nsw i64 %i.ra, %i.qu                ; 2 uses
  %i.rm = tail call i64 @llvm.smax.i64(i64 %i.rl, i64 0)
  %i.rn = add nsw i64 %i.rm, %i.rd
  %i.ro = sub i64 %i.rn, %i.rg
  %.406.i.i = tail call i64 @llvm.smin.i64(i64 %i.rk, i64 %i.ro)
  %i.rp = sub nsw i64 %i.ra, %i.qw                ; 2 uses
  %i.rq = tail call i64 @llvm.smax.i64(i64 %i.rp, i64 0)
  %i.rr = sub nsw i64 %i.rq, %i.rd
  %i.rs = sub nsw i64 %i.qs, %i.ra                ; 2 uses
  %i.rt = tail call i64 @llvm.smax.i64(i64 %i.rs, i64 0)
  %i.ru = add nsw i64 %i.rt, %i.rd
  %.pn.i.i = tail call i64 @llvm.smin.i64(i64 %i.rr, i64 %i.ru)
  %i.rv = add nsw i64 %.pn.i.i, %i.rg
  %i.rw = tail call i64 @llvm.smin.i64(i64 %.406.i.i, i64 %i.rv)
  %i.rx = shl i64 %i.rw, 4                        ; 2 uses
  %i.ry = tail call i64 @llvm.smin.i64(i64 %i.rh, i64 0)
  %i.rz = sub i64 %i.ry, %i.rj
  %i.sa = tail call i64 @llvm.smin.i64(i64 %i.rl, i64 0)
  %i.sb = add nsw i64 %i.sa, %i.rd
  %i.sc = sub i64 %i.sb, %i.rg
  %i.sd = tail call i64 @llvm.smax.i64(i64 %i.rz, i64 %i.sc)
  %i.se = tail call i64 @llvm.smin.i64(i64 %i.rp, i64 0)
  %i.sf = sub nsw i64 %i.se, %i.rd
  %i.sg = tail call i64 @llvm.smin.i64(i64 %i.rs, i64 0)
  %i.sh = add nsw i64 %i.sg, %i.rd
  %.pn400.i.i = tail call i64 @llvm.smax.i64(i64 %i.sf, i64 %i.sh)
  %i.si = add nsw i64 %.pn400.i.i, %i.rg
  %i.sj = tail call i64 @llvm.smax.i64(i64 %i.sd, i64 %i.si)
  %i.sk = shl i64 %i.sj, 4                        ; 3 uses
  %i.sl = icmp slt i64 %i.sk, %i.rx
  br i1 %i.sl, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.sm = add i64 %i.qu, %i.qw
  %i.sn = sub i64 %i.qs, %i.sm
  %i.so = add i64 %i.sn, %i.qy                    ; 2 uses
  %i.sp = icmp sgt i64 %i.so, %i.sk
  %i.sq = tail call i64 @llvm.smin.i64(i64 %i.so, i64 %i.rx)
  %i.sr = select i1 %i.sp, i64 %i.sq, i64 %i.sk
  %i.ss = getelementptr i8, ptr %i.rb, i64 8      ; 2 uses
  %i.st = load i64, ptr %i.ss, align 8, !tbaa !18 ; 2 uses
  %i.su = shl i64 %i.st, 6
  %i.sv = sub nsw i64 %i.sr, %i.su                ; 3 uses
  %i.sw = lshr i64 %i.sv, 6
  %i.sx = add nsw i64 %i.sv, 63
  %i.sy = ashr i64 %i.sx, 6
  %i.sz = icmp slt i64 %i.sv, 0
  %i.ta = select i1 %i.sz, i64 %i.sy, i64 %i.sw
  %i.tb = tail call i64 @llvm.smin.i64(i64 %i.ta, i64 %i.fj)
  %i.tc = tail call i64 @llvm.smax.i64(i64 %i.tb, i64 %i.fl)
  %i.td = add nsw i64 %i.tc, %i.st
  store i64 %i.td, ptr %i.ss, align 8, !tbaa !18
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %indvars.iv.next449.i.i = add nsw i64 %indvars.iv448.i.i, 2
  %indvars.iv.next453.i.i = add nsw i64 %indvars.iv452.i.i, 2
  %i.te = add nuw nsw i32 %.2350424.i.i, 2        ; 2 uses
  %i.tf = icmp slt i32 %i.te, %i.ns
  br i1 %i.tf, label %bb.ai, label %._crit_edge429.i.i, !llvm.loop !65

._crit_edge429.i.i:                               ; preds = %bb.ak
  %i.tg = add nuw nsw i32 %.2353430.i.i, 2        ; 2 uses
  %i.th = icmp slt i32 %i.tg, %i.nq
  %indvars.iv.next447.i.i = add i32 %indvars.iv446.i.i, %i.ff
  %indvars.iv.next451.i.i = add i32 %indvars.iv450.i.i, %i.ff
  br i1 %i.th, label %.lr.ph428.i.i, label %hsmooth64.exit.i, !llvm.loop !66

hsmooth64.exit.i:                                 ; preds = %._crit_edge429.i.i, %.preheader.i.i, %.lr.ph423.i.i, %.preheader410.i.i, %.lr.ph416.i.i, %._crit_edge.i
  %i.ti = srem i32 %.1262.i, 2                    ; 2 uses
  %i.tj = srem i32 %.1260.i, 2                    ; 4 uses
  %i.tk = sub nsw i32 %.1262.i, %i.ti             ; 2 uses
  %i.tl = icmp sgt i32 %i.tk, 0
  br i1 %i.tl, label %.lr.ph336.i, label %._crit_edge337.i

.lr.ph336.i:                                      ; preds = %hsmooth64.exit.i
  %i.tm = sub nsw i32 %.1260.i, %i.tj             ; 2 uses
  %i.tn = icmp sgt i32 %i.tm, 0
  %i.to = zext nneg i32 %.1253.i to i64           ; 6 uses
  %.not291.i = icmp eq i32 %i.tj, 0
  br label %bb.al

bb.al:                                            ; preds = %bb.aq, %.lr.ph336.i
  %indvars.iv376.i = phi i32 [ %i.dl, %.lr.ph336.i ], [ %indvars.iv.next377.i, %bb.aq ] ; 2 uses
  %indvars.iv372.i = phi i32 [ 0, %.lr.ph336.i ], [ %indvars.iv.next373.i, %bb.aq ] ; 2 uses
  %.1267335.i = phi i32 [ 0, %.lr.ph336.i ], [ %i.wm, %bb.aq ] ; 2 uses
  %i.tp = mul nsw i32 %.1267335.i, %i.dl          ; 2 uses
  %i.tq = add nsw i32 %i.tp, %i.dl
  br i1 %i.tn, label %.lr.ph332.preheader.i, label %._crit_edge333.i

.lr.ph332.preheader.i:                            ; preds = %bb.al
  %i.tr = sext i32 %indvars.iv376.i to i64
  %i.ts = sext i32 %indvars.iv372.i to i64
  br label %.lr.ph332.i

.lr.ph332.i:                                      ; preds = %bb.ao, %.lr.ph332.preheader.i
  %indvars.iv378.i = phi i64 [ %i.tr, %.lr.ph332.preheader.i ], [ %indvars.iv.next379.i, %bb.ao ] ; 2 uses
  %indvars.iv374.i = phi i64 [ %i.ts, %.lr.ph332.preheader.i ], [ %indvars.iv.next375.i, %bb.ao ] ; 2 uses
  %.1265328.i = phi i32 [ 0, %.lr.ph332.preheader.i ], [ %i.vr, %bb.ao ]
  %i.tt = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv374.i ; 3 uses
  %i.tu = load i64, ptr %i.tt, align 8, !tbaa !18 ; 3 uses
  %i.tv = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv378.i ; 3 uses
  %i.tw = load i64, ptr %i.tv, align 8, !tbaa !18 ; 2 uses
  %i.tx = getelementptr i8, ptr %i.tt, i64 8      ; 2 uses
  %i.ty = load i64, ptr %i.tx, align 8, !tbaa !18 ; 2 uses
  %i.tz = getelementptr i8, ptr %i.tv, i64 8      ; 2 uses
  %i.ua = load i64, ptr %i.tz, align 8, !tbaa !18 ; 2 uses
  %i.ub = icmp slt i64 %i.tw, 0
  %i.uc = select i1 %i.ub, i64 %.0243358.i, i64 %.0248355.i
  %i.ud = add nsw i64 %i.uc, %i.tw
  %i.ue = and i64 %i.ud, %.0250354.i              ; 2 uses
  %i.uf = icmp slt i64 %i.ty, 0
  %i.ug = select i1 %i.uf, i64 %.0243358.i, i64 %.0248355.i
  %i.uh = add nsw i64 %i.ug, %i.ty
  %i.ui = and i64 %i.uh, %.0250354.i              ; 2 uses
  %i.uj = icmp slt i64 %i.ua, 0
  %i.uk = select i1 %i.uj, i64 %.1245.i, i64 %.0249359.i
  %i.ul = add nsw i64 %i.uk, %i.ua
  %i.um = and i64 %i.ul, %.0251353.i              ; 5 uses
  %i.un = and i64 %i.um, %.0247356.i              ; 6 uses
  %i.uo = icmp slt i64 %i.ue, 0
  %i.up = sub i64 0, %i.un                        ; 2 uses
  %.p316.i = select i1 %i.uo, i64 %i.un, i64 %i.up
  %i.uq = add i64 %.p316.i, %i.ue                 ; 3 uses
  %i.ur = icmp slt i64 %i.ui, 0
  %.p317.i = select i1 %i.ur, i64 %i.un, i64 %i.up
  %i.us = add i64 %.p317.i, %i.ui                 ; 4 uses
  %i.ut = xor i64 %i.uq, %i.um
  %i.uu = xor i64 %i.ut, %i.us
  %i.uv = and i64 %i.uu, %.0246357.i              ; 3 uses
  %i.uw = icmp sgt i64 %i.tu, -1
  br i1 %i.uw, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.lr.ph332.i
  %i.ux = add nsw i64 %i.un, %i.tu
  %i.uy = sub i64 %i.ux, %i.uv
  br label %bb.ao

bb.an:                                            ; preds = %.lr.ph332.i
  %i.uz = icmp eq i64 %i.un, 0
  %i.va = sub nsw i64 %i.un, %i.uv
  %i.vb = select i1 %i.uz, i64 %i.uv, i64 %i.va
  %i.vc = add nsw i64 %i.vb, %i.tu
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.vd = phi i64 [ %i.uy, %bb.am ], [ %i.vc, %bb.an ] ; 2 uses
  %i.ve = add nsw i64 %i.vd, %i.uq                ; 2 uses
  %i.vf = add i64 %i.us, %i.um                    ; 2 uses
  %i.vg = add i64 %i.ve, %i.vf
  %i.vh = ashr i64 %i.vg, %i.to
  store i64 %i.vh, ptr %i.tz, align 8, !tbaa !18
  %i.vi = sub i64 %i.ve, %i.vf
  %i.vj = ashr i64 %i.vi, %i.to
  store i64 %i.vj, ptr %i.tv, align 8, !tbaa !18
  %i.vk = sub nsw i64 %i.vd, %i.uq                ; 2 uses
  %i.vl = sub i64 %i.us, %i.um
  %i.vm = add i64 %i.vl, %i.vk
  %i.vn = ashr i64 %i.vm, %i.to
  store i64 %i.vn, ptr %i.tx, align 8, !tbaa !18
  %i.vo = sub i64 %i.um, %i.us
  %i.vp = add i64 %i.vo, %i.vk
  %i.vq = ashr i64 %i.vp, %i.to
  store i64 %i.vq, ptr %i.tt, align 8, !tbaa !18
  %indvars.iv.next375.i = add nsw i64 %indvars.iv374.i, 2 ; 2 uses
  %indvars.iv.next379.i = add nsw i64 %indvars.iv378.i, 2 ; 2 uses
  %i.vr = add nuw nsw i32 %.1265328.i, 2          ; 2 uses
  %i.vs = icmp slt i32 %i.vr, %i.tm
  br i1 %i.vs, label %.lr.ph332.i, label %._crit_edge333.loopexit.i, !llvm.loop !67

._crit_edge333.loopexit.i:                        ; preds = %bb.ao
  %i.vt = trunc nsw i64 %indvars.iv.next379.i to i32
  %i.vu = trunc nsw i64 %indvars.iv.next375.i to i32
  br label %._crit_edge333.i

._crit_edge333.i:                                 ; preds = %._crit_edge333.loopexit.i, %bb.al
  %.0242.lcssa.i = phi i32 [ %i.tq, %bb.al ], [ %i.vt, %._crit_edge333.loopexit.i ]
  %.0.lcssa.i = phi i32 [ %i.tp, %bb.al ], [ %i.vu, %._crit_edge333.loopexit.i ]
  br i1 %.not291.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge333.i
  %i.vv = sext i32 %.0.lcssa.i to i64
  %i.vw = getelementptr inbounds [8 x i8], ptr %2, i64 %i.vv ; 2 uses
  %i.vx = load i64, ptr %i.vw, align 8, !tbaa !18 ; 2 uses
  %i.vy = sext i32 %.0242.lcssa.i to i64
  %i.vz = getelementptr inbounds [8 x i8], ptr %2, i64 %i.vy ; 2 uses
  %i.wa = load i64, ptr %i.vz, align 8, !tbaa !18 ; 2 uses
  %i.wb = icmp slt i64 %i.wa, 0
  %.0248..0243.i = select i1 %i.wb, i64 %.0243358.i, i64 %.0248355.i
  %i.wc = add nsw i64 %.0248..0243.i, %i.wa
  %i.wd = and i64 %i.wc, %.0250354.i              ; 3 uses
  %i.we = and i64 %i.wd, %.0246357.i              ; 2 uses
  %i.wf = icmp slt i64 %i.vx, 0
  %i.wg = sub i64 0, %i.we
  %.p315.i = select i1 %i.wf, i64 %i.we, i64 %i.wg
  %i.wh = add i64 %.p315.i, %i.vx                 ; 2 uses
  %i.wi = add nsw i64 %i.wh, %i.wd
  %i.wj = ashr i64 %i.wi, %i.to
  store i64 %i.wj, ptr %i.vz, align 8, !tbaa !18
  %i.wk = sub nsw i64 %i.wh, %i.wd
  %i.wl = ashr i64 %i.wk, %i.to
  store i64 %i.wl, ptr %i.vw, align 8, !tbaa !18
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %._crit_edge333.i
  %i.wm = add nuw nsw i32 %.1267335.i, 2          ; 3 uses
  %i.wn = icmp slt i32 %i.wm, %i.tk
  %indvars.iv.next373.i = add i32 %indvars.iv372.i, %i.ff
  %indvars.iv.next377.i = add i32 %indvars.iv376.i, %i.ff
  br i1 %i.wn, label %bb.al, label %._crit_edge337.loopexit.i, !llvm.loop !68

._crit_edge337.loopexit.i:                        ; preds = %bb.aq
  %i.wo = mul i32 %i.wm, %i.dl
  br label %._crit_edge337.i

._crit_edge337.i:                                 ; preds = %._crit_edge337.loopexit.i, %hsmooth64.exit.i
  %.1267.lcssa.i = phi i32 [ 0, %hsmooth64.exit.i ], [ %i.wo, %._crit_edge337.loopexit.i ] ; 2 uses
  %.not289.i = icmp eq i32 %i.ti, 0
  br i1 %.not289.i, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge337.i
  %i.wp = sub nsw i32 %.1260.i, %i.tj             ; 2 uses
  %i.wq = icmp sgt i32 %i.wp, 0
  br i1 %i.wq, label %.lr.ph342.i, label %._crit_edge343.i

.lr.ph342.i:                                      ; preds = %bb.ar
  %i.wr = zext nneg i32 %.1253.i to i64           ; 2 uses
  %i.ws = sext i32 %.1267.lcssa.i to i64
  br label %bb.as

bb.as:                                            ; preds = %bb.as, %.lr.ph342.i
  %indvars.iv383.i = phi i64 [ %i.ws, %.lr.ph342.i ], [ %indvars.iv.next384.i, %bb.as ] ; 2 uses
  %.2339.i = phi i32 [ 0, %.lr.ph342.i ], [ %i.xi, %bb.as ]
  %i.wt = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv383.i ; 3 uses
  %i.wu = load i64, ptr %i.wt, align 8, !tbaa !18 ; 2 uses
  %i.wv = getelementptr i8, ptr %i.wt, i64 8      ; 2 uses
  %i.ww = load i64, ptr %i.wv, align 8, !tbaa !18 ; 2 uses
  %i.wx = icmp slt i64 %i.ww, 0
  %.0248..0243293.i = select i1 %i.wx, i64 %.0243358.i, i64 %.0248355.i
  %i.wy = add nsw i64 %.0248..0243293.i, %i.ww
  %i.wz = and i64 %i.wy, %.0250354.i              ; 3 uses
  %i.xa = and i64 %i.wz, %.0246357.i              ; 2 uses
  %i.xb = icmp slt i64 %i.wu, 0
  %i.xc = sub i64 0, %i.xa
  %.p.i = select i1 %i.xb, i64 %i.xa, i64 %i.xc
  %i.xd = add i64 %.p.i, %i.wu                    ; 2 uses
  %i.xe = add nsw i64 %i.xd, %i.wz
  %i.xf = ashr i64 %i.xe, %i.wr
  store i64 %i.xf, ptr %i.wv, align 8, !tbaa !18
  %i.xg = sub nsw i64 %i.xd, %i.wz
  %i.xh = ashr i64 %i.xg, %i.wr
  store i64 %i.xh, ptr %i.wt, align 8, !tbaa !18
  %indvars.iv.next384.i = add nsw i64 %indvars.iv383.i, 2 ; 2 uses
  %i.xi = add nuw nsw i32 %.2339.i, 2             ; 2 uses
  %i.xj = icmp slt i32 %i.xi, %i.wp
  br i1 %i.xj, label %bb.as, label %._crit_edge343.loopexit.i, !llvm.loop !69

._crit_edge343.loopexit.i:                        ; preds = %bb.as
  %i.xk = trunc nsw i64 %indvars.iv.next384.i to i32
  br label %._crit_edge343.i

._crit_edge343.i:                                 ; preds = %._crit_edge343.loopexit.i, %bb.ar
  %.1.lcssa.i = phi i32 [ %.1267.lcssa.i, %bb.ar ], [ %i.xk, %._crit_edge343.loopexit.i ]
  %.not290.i = icmp eq i32 %i.tj, 0
  br i1 %.not290.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %._crit_edge343.i
  %i.xl = sext i32 %.1.lcssa.i to i64
  %i.xm = getelementptr inbounds [8 x i8], ptr %2, i64 %i.xl ; 2 uses
  %i.xn = load i64, ptr %i.xm, align 8, !tbaa !18
  %i.xo = zext nneg i32 %.1253.i to i64
  %i.xp = ashr i64 %i.xn, %i.xo
  store i64 %i.xp, ptr %i.xm, align 8, !tbaa !18
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %._crit_edge343.i, %._crit_edge337.i
  %i.xq = ashr i64 %.0247356.i, 1
  %i.xr = ashr i64 %.0251353.i, 1
  %i.xs = add nsw i32 %.0263346.i, -1
  %i.xt = icmp sgt i32 %.0263346.i, 0
  br i1 %i.xt, label %bb.w, label %._crit_edge362.i, !llvm.loop !70

._crit_edge362.i:                                 ; preds = %bb.au, %bb.v
  tail call void @free(ptr noundef %i.ee) #13
  br label %hinv64.exit

hinv64.exit:                                      ; preds = %bb.u, %._crit_edge362.i
  %.0269.i = phi i32 [ 414, %bb.u ], [ 0, %._crit_edge362.i ] ; 2 uses
  store i32 %.0269.i, ptr %7, align 4, !tbaa !9
  %i.xu = load i32, ptr %5, align 4, !tbaa !9
  %i.xv = load i32, ptr %4, align 4, !tbaa !9
  %i.xw = mul nsw i32 %i.xv, %i.xu                ; 3 uses
  %i.xx = icmp sgt i32 %i.xw, 0
  br i1 %i.xx, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %hinv64.exit
  %wide.trip.count = zext nneg i32 %i.xw to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.xw, 4
  br i1 %min.iters.check, label %.lr.ph.preheader88, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.xy = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 16
  %wide.load = load <2 x i64>, ptr %i.xy, align 8, !tbaa !18
  %wide.load87 = load <2 x i64>, ptr %i.xz, align 8, !tbaa !18
  %i.ya = trunc <2 x i64> %wide.load to <2 x i32>
  %i.yb = trunc <2 x i64> %wide.load87 to <2 x i32>
  %i.yc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 8
  store <2 x i32> %i.ya, ptr %i.yc, align 4, !tbaa !9
  store <2 x i32> %i.yb, ptr %i.yd, align 4, !tbaa !9
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ye = icmp eq i64 %index.next, %n.vec
  br i1 %i.ye, label %middle.block, label %vector.body, !llvm.loop !71

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.lr.ph.preheader88

.lr.ph.preheader88:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader88, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader88 ] ; 3 uses
  %i.yf = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.yg = load i64, ptr %i.yf, align 8, !tbaa !18
  %i.yh = trunc i64 %i.yg to i32
  %i.yi = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store i32 %i.yh, ptr %i.yi, align 4, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !72

._crit_edge.loopexit:                             ; preds = %.lr.ph, %middle.block
  %.pre = load i32, ptr %7, align 4, !tbaa !9
  br label %._crit_edge

._crit_edge:                                      ; preds = %hinv64.exit, %._crit_edge.loopexit, %decode64.exit, %bb.a
  %.034 = phi i32 [ %.0.i, %decode64.exit ], [ %i.b, %bb.a ], [ %.pre, %._crit_edge.loopexit ], [ %.0269.i, %hinv64.exit ]
  ret i32 %.034
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

declare void @ffpmsg(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 415) i32 @qtree_decode(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef range(i32 -1073741824, 1073741824) %3, i32 noundef range(i32 -1073741824, 1073741824) %4, i32 noundef range(i32 0, 256) %5) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 2 uses
  %i.b = sitofp i32 %i.a to float
  %i.c = fpext float %i.b to double
  %i.d = tail call double @log(double noundef %i.c) #13
  %i.e = fdiv double %i.d, f0x3FE62E42FEFA39EF
  %i.f = fadd double %i.e, 5.000000e-01
  %i.g = fptosi double %i.f to i32                ; 2 uses
  %i.h = shl nuw i32 1, %i.g
  %i.i = icmp sgt i32 %i.a, %i.h
  %i.j = zext i1 %i.i to i32
  %spec.select = add nsw i32 %i.j, %i.g
  %spec.select.fr = freeze i32 %spec.select       ; 3 uses
  %i.k = add nsw i32 %3, 1
  %i.l = sdiv i32 %i.k, 2                         ; 2 uses
  %i.m = add nsw i32 %4, 1
  %i.n = sdiv i32 %i.m, 2                         ; 2 uses
  %i.o = sext i32 %i.l to i64
  %i.p = sext i32 %i.n to i64
  %i.q = mul nsw i64 %i.p, %i.o
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.q) #14 ; 11 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %._crit_edge86, label %.lr.ph85

.lr.ph85:                                         ; preds = %.preheader
  %.06783 = add nsw i32 %5, -1                    ; 2 uses
  %i.t = shl nuw i32 1, %spec.select.fr
  %i.u = icmp sgt i32 %spec.select.fr, 1
  %i.v = mul nsw i32 %i.n, %i.l                   ; 2 uses
  br i1 %i.u, label %.lr.ph85.split.us, label %.lr.ph85.split

.lr.ph85.split.us:                                ; preds = %.lr.ph85, %._crit_edge.us
  %.06784.us = phi i32 [ %.067.us, %._crit_edge.us ], [ %.06783, %.lr.ph85 ] ; 3 uses
  %i.w = load i32, ptr @bits_to_go, align 4, !tbaa !9 ; 3 uses
  %i.x = icmp slt i32 %i.w, 4
  %.pre.i.us = load i32, ptr @buffer2, align 4, !tbaa !9 ; 2 uses
  br i1 %i.x, label %bb.b, label %input_nybble.exit.us

bb.b:                                             ; preds = %.lr.ph85.split.us
  %i.y = shl i32 %.pre.i.us, 8
  %i.z = load i64, ptr @nextchar, align 8, !tbaa !11 ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %0, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !12
  %i.ac = zext i8 %i.ab to i32
  %i.ad = or disjoint i32 %i.y, %i.ac             ; 2 uses
  store i32 %i.ad, ptr @buffer2, align 4, !tbaa !9
  %i.ae = add nsw i64 %i.z, 1
  store i64 %i.ae, ptr @nextchar, align 8, !tbaa !11
  %i.af = add nsw i32 %i.w, 8
  br label %input_nybble.exit.us

input_nybble.exit.us:                             ; preds = %bb.b, %.lr.ph85.split.us
  %i.ag = phi i32 [ %i.ad, %bb.b ], [ %.pre.i.us, %.lr.ph85.split.us ]
  %i.ah = phi i32 [ %i.af, %bb.b ], [ %i.w, %.lr.ph85.split.us ]
  %i.ai = add nsw i32 %i.ah, -4                   ; 2 uses
  store i32 %i.ai, ptr @bits_to_go, align 4, !tbaa !9
  %i.aj = ashr i32 %i.ag, %i.ai
  %i.ak = and i32 %i.aj, 15
  switch i32 %i.ak, label %.split.us [
    i32 0, label %bb.d
    i32 15, label %.lr.ph.us
  ]

.lr.ph.us:                                        ; preds = %input_nybble.exit.us
  %i.al = tail call fastcc i32 @input_huffman(ptr noundef %0)
  %i.am = trunc nuw nsw i32 %i.al to i8
  store i8 %i.am, ptr %i.r, align 1, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph.us, %bb.c
  %.082.us = phi i32 [ %i.t, %.lr.ph.us ], [ %i.an, %bb.c ]
  %.06081.us = phi i32 [ %4, %.lr.ph.us ], [ %.1.us, %bb.c ] ; 2 uses
  %.06180.us = phi i32 [ %3, %.lr.ph.us ], [ %.162.us, %bb.c ] ; 2 uses
  %.06379.us = phi i32 [ 1, %.lr.ph.us ], [ %.164.us, %bb.c ]
  %.06578.us = phi i32 [ 1, %.lr.ph.us ], [ %.166.us, %bb.c ]
  %.06877.us = phi i32 [ 1, %.lr.ph.us ], [ %i.au, %bb.c ]
  %i.an = ashr i32 %.082.us, 1                    ; 5 uses
  %i.ao = shl i32 %.06578.us, 1
  %i.ap = shl i32 %.06379.us, 1
  %.not75.us = icmp sle i32 %.06180.us, %i.an     ; 2 uses
  %i.aq = sext i1 %.not75.us to i32
  %.166.us = add nsw i32 %i.ao, %i.aq             ; 2 uses
  %i.ar = select i1 %.not75.us, i32 0, i32 %i.an
  %.162.us = sub nsw i32 %.06180.us, %i.ar
  %.not76.us = icmp sle i32 %.06081.us, %i.an     ; 2 uses
  %i.as = sext i1 %.not76.us to i32
  %.164.us = add nsw i32 %i.ap, %i.as             ; 2 uses
  %i.at = select i1 %.not76.us, i32 0, i32 %i.an
  %.1.us = sub nsw i32 %.06081.us, %i.at
  tail call fastcc void @qtree_expand(ptr noundef %0, ptr noundef %i.r, i32 noundef %.166.us, i32 noundef %.164.us, ptr noundef %i.r)
  %i.au = add nuw nsw i32 %.06877.us, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.au, %spec.select.fr
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c, !llvm.loop !73

bb.d:                                             ; preds = %input_nybble.exit.us
  tail call fastcc void @input_nnybble(ptr noundef readonly %0, i32 noundef %i.v, ptr noundef nonnull %i.r)
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.c, %bb.d
  tail call fastcc void @qtree_bitins(ptr noundef %i.r, i32 noundef %3, i32 noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef %.06784.us)
  %.067.us = add nsw i32 %.06784.us, -1
  %i.av = icmp sgt i32 %.06784.us, 0
  br i1 %i.av, label %.lr.ph85.split.us, label %._crit_edge86, !llvm.loop !74

bb.e:                                             ; preds = %bb.a
  tail call void @ffpmsg(ptr noundef nonnull @.str.6) #13
  br label %bb.j

.lr.ph85.split:                                   ; preds = %.lr.ph85, %bb.i
  %.06784 = phi i32 [ %.067, %bb.i ], [ %.06783, %.lr.ph85 ] ; 3 uses
  %i.aw = load i32, ptr @bits_to_go, align 4, !tbaa !9 ; 3 uses
  %i.ax = icmp slt i32 %i.aw, 4
  %.pre.i = load i32, ptr @buffer2, align 4, !tbaa !9 ; 2 uses
  br i1 %i.ax, label %bb.f, label %input_nybble.exit

bb.f:                                             ; preds = %.lr.ph85.split
  %i.ay = shl i32 %.pre.i, 8
  %i.az = load i64, ptr @nextchar, align 8, !tbaa !11 ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %0, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !12
  %i.bc = zext i8 %i.bb to i32
  %i.bd = or disjoint i32 %i.ay, %i.bc            ; 2 uses
  store i32 %i.bd, ptr @buffer2, align 4, !tbaa !9
  %i.be = add nsw i64 %i.az, 1
  store i64 %i.be, ptr @nextchar, align 8, !tbaa !11
  %i.bf = add nsw i32 %i.aw, 8
  br label %input_nybble.exit

input_nybble.exit:                                ; preds = %.lr.ph85.split, %bb.f
  %i.bg = phi i32 [ %i.bd, %bb.f ], [ %.pre.i, %.lr.ph85.split ]
  %i.bh = phi i32 [ %i.bf, %bb.f ], [ %i.aw, %.lr.ph85.split ]
  %i.bi = add nsw i32 %i.bh, -4                   ; 2 uses
  store i32 %i.bi, ptr @bits_to_go, align 4, !tbaa !9
  %i.bj = ashr i32 %i.bg, %i.bi
  %i.bk = and i32 %i.bj, 15
  switch i32 %i.bk, label %.split.us [
    i32 0, label %bb.g
    i32 15, label %bb.h
  ]

bb.g:                                             ; preds = %input_nybble.exit
  tail call fastcc void @input_nnybble(ptr noundef readonly %0, i32 noundef %i.v, ptr noundef nonnull %i.r)
  br label %bb.i

.split.us:                                        ; preds = %input_nybble.exit, %input_nybble.exit.us
  tail call void @free(ptr noundef nonnull %i.r) #13
  tail call void @ffpmsg(ptr noundef nonnull @.str.7) #13
  br label %bb.j

bb.h:                                             ; preds = %input_nybble.exit
  %i.bl = tail call fastcc i32 @input_huffman(ptr noundef %0)
  %i.bm = trunc nuw nsw i32 %i.bl to i8
  store i8 %i.bm, ptr %i.r, align 1, !tbaa !12
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  tail call fastcc void @qtree_bitins(ptr noundef %i.r, i32 noundef %3, i32 noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef %.06784)
  %.067 = add nsw i32 %.06784, -1
  %i.bn = icmp sgt i32 %.06784, 0
  br i1 %i.bn, label %.lr.ph85.split, label %._crit_edge86, !llvm.loop !74

._crit_edge86:                                    ; preds = %bb.i, %._crit_edge.us, %.preheader
  tail call void @free(ptr noundef nonnull %i.r) #13
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge86, %.split.us, %bb.e
  %.070 = phi i32 [ 414, %bb.e ], [ 414, %.split.us ], [ 0, %._crit_edge86 ]
  ret i32 %.070
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 16) i32 @input_nybble(ptr nofree noundef readonly captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = load i32, ptr @bits_to_go, align 4, !tbaa !9 ; 3 uses
  %i.b = icmp slt i32 %i.a, 4
  %.pre = load i32, ptr @buffer2, align 4, !tbaa !9 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = shl i32 %.pre, 8
  %i.d = load i64, ptr @nextchar, align 8, !tbaa !11 ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !12
  %i.g = zext i8 %i.f to i32
  %i.h = or disjoint i32 %i.c, %i.g               ; 2 uses
  store i32 %i.h, ptr @buffer2, align 4, !tbaa !9
  %i.i = add nsw i64 %i.d, 1
  store i64 %i.i, ptr @nextchar, align 8, !tbaa !11
  %i.j = add nsw i32 %i.a, 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = phi i32 [ %i.h, %bb.b ], [ %.pre, %bb.a ]
  %i.l = phi i32 [ %i.j, %bb.b ], [ %i.a, %bb.a ]
  %i.m = add nsw i32 %i.l, -4                     ; 2 uses
  store i32 %i.m, ptr @bits_to_go, align 4, !tbaa !9
  %i.n = ashr i32 %i.k, %i.m
  %i.o = and i32 %i.n, 15
  ret i32 %i.o
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 16) i32 @input_huffman(ptr nofree noundef readonly captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = load i32, ptr @bits_to_go, align 4, !tbaa !9 ; 3 uses
  %i.b = icmp slt i32 %i.a, 3
  %.pre.i = load i32, ptr @buffer2, align 4, !tbaa !9 ; 2 uses
  br i1 %i.b, label %bb.b, label %input_nbits.exit

bb.b:                                             ; preds = %bb.a
  %i.c = shl i32 %.pre.i, 8
  %i.d = load i64, ptr @nextchar, align 8, !tbaa !11 ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !12
  %i.g = zext i8 %i.f to i32
  %i.h = or disjoint i32 %i.c, %i.g               ; 2 uses
  store i32 %i.h, ptr @buffer2, align 4, !tbaa !9
  %i.i = add nsw i64 %i.d, 1
  store i64 %i.i, ptr @nextchar, align 8, !tbaa !11
  %i.j = add nsw i32 %i.a, 8
  br label %input_nbits.exit

input_nbits.exit:                                 ; preds = %bb.a, %bb.b
  %.pre.i17 = phi i32 [ %i.h, %bb.b ], [ %.pre.i, %bb.a ] ; 2 uses
  %i.k = phi i32 [ %i.j, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %i.l = add nsw i32 %i.k, -3                     ; 3 uses
  store i32 %i.l, ptr @bits_to_go, align 4, !tbaa !9
  %i.m = ashr i32 %.pre.i17, %i.l
  %i.n = and i32 %i.m, 7                          ; 3 uses
  %i.o = icmp samesign ult i32 %i.n, 4
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %input_nbits.exit
  %i.p = shl nuw nsw i32 1, %i.n
  br label %bb.n

bb.d:                                             ; preds = %input_nbits.exit
  %i.q = icmp eq i32 %i.l, 0
  br i1 %i.q, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %i.r = add nsw i32 %i.k, -4
  br label %input_bit.exit

bb.e:                                             ; preds = %bb.d
  %i.s = load i64, ptr @nextchar, align 8, !tbaa !11 ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %0, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !12
  %i.v = zext i8 %i.u to i32                      ; 2 uses
  store i32 %i.v, ptr @buffer2, align 4, !tbaa !9
  %i.w = add nsw i64 %i.s, 1
  store i64 %i.w, ptr @nextchar, align 8, !tbaa !11
  br label %input_bit.exit

input_bit.exit:                                   ; preds = %._crit_edge.i, %bb.e
  %.pre.i19 = phi i32 [ %i.v, %bb.e ], [ %.pre.i17, %._crit_edge.i ] ; 2 uses
  %i.x = phi i32 [ 7, %bb.e ], [ %i.r, %._crit_edge.i ] ; 4 uses
  store i32 %i.x, ptr @bits_to_go, align 4, !tbaa !9
  %i.y = lshr i32 %.pre.i19, %i.x
  %i.z = and i32 %i.y, 1
  %i.aa = shl nuw nsw i32 %i.n, 1
  %i.ab = or disjoint i32 %i.z, %i.aa             ; 3 uses
  %i.ac = icmp samesign ult i32 %i.ab, 13
  br i1 %i.ac, label %switch.lookup, label %bb.f

switch.lookup:                                    ; preds = %input_bit.exit
  %i.ad = zext nneg i32 %i.ab to i64
  %i.ae = getelementptr i8, ptr @switch.table.input_huffman, i64 %i.ad
  %switch.gep = getelementptr i8, ptr %i.ae, i64 -8
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.n

default.unreachable32:                            ; preds = %input_bit.exit20
  unreachable

bb.f:                                             ; preds = %input_bit.exit
  %i.af = icmp eq i32 %i.x, 0
  br i1 %i.af, label %bb.g, label %._crit_edge.i18

._crit_edge.i18:                                  ; preds = %bb.f
  %i.ag = add nsw i32 %i.x, -1
  br label %input_bit.exit20

bb.g:                                             ; preds = %bb.f
  %i.ah = load i64, ptr @nextchar, align 8, !tbaa !11 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %0, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !12
  %i.ak = zext i8 %i.aj to i32                    ; 2 uses
  store i32 %i.ak, ptr @buffer2, align 4, !tbaa !9
  %i.al = add nsw i64 %i.ah, 1
  store i64 %i.al, ptr @nextchar, align 8, !tbaa !11
  br label %input_bit.exit20

input_bit.exit20:                                 ; preds = %._crit_edge.i18, %bb.g
  %.pre.i22 = phi i32 [ %i.ak, %bb.g ], [ %.pre.i19, %._crit_edge.i18 ] ; 2 uses
  %i.am = phi i32 [ 7, %bb.g ], [ %i.ag, %._crit_edge.i18 ] ; 4 uses
  store i32 %i.am, ptr @bits_to_go, align 4, !tbaa !9
  %i.an = lshr i32 %.pre.i22, %i.am
  %i.ao = and i32 %i.an, 1
  %i.ap = shl nuw nsw i32 %i.ab, 1
  %i.aq = or disjoint i32 %i.ao, %i.ap
  switch i32 %i.aq, label %default.unreachable32 [
    i32 31, label %bb.l
    i32 26, label %bb.n
    i32 27, label %bb.h
    i32 28, label %bb.i
    i32 29, label %bb.j
    i32 30, label %bb.k
  ]

bb.h:                                             ; preds = %input_bit.exit20
  br label %bb.n

bb.i:                                             ; preds = %input_bit.exit20
  br label %bb.n

bb.j:                                             ; preds = %input_bit.exit20
  br label %bb.n

bb.k:                                             ; preds = %input_bit.exit20
  br label %bb.n

bb.l:                                             ; preds = %input_bit.exit20
  %i.ar = icmp eq i32 %i.am, 0
  br i1 %i.ar, label %bb.m, label %._crit_edge.i21

._crit_edge.i21:                                  ; preds = %bb.l
  %i.as = add nsw i32 %i.am, -1
  br label %input_bit.exit23

bb.m:                                             ; preds = %bb.l
  %i.at = load i64, ptr @nextchar, align 8, !tbaa !11 ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %0, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !12
  %i.aw = zext i8 %i.av to i32                    ; 2 uses
  store i32 %i.aw, ptr @buffer2, align 4, !tbaa !9
  %i.ax = add nsw i64 %i.at, 1
  store i64 %i.ax, ptr @nextchar, align 8, !tbaa !11
  br label %input_bit.exit23

input_bit.exit23:                                 ; preds = %._crit_edge.i21, %bb.m
  %i.ay = phi i32 [ %i.aw, %bb.m ], [ %.pre.i22, %._crit_edge.i21 ]
  %i.az = phi i32 [ 7, %bb.m ], [ %i.as, %._crit_edge.i21 ] ; 2 uses
  store i32 %i.az, ptr @bits_to_go, align 4, !tbaa !9
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = and i32 %i.ba, %i.ay
  %i.bc = icmp eq i32 %i.bb, 0
  %. = select i1 %i.bc, i32 0, i32 14
  br label %bb.n

bb.n:                                             ; preds = %switch.lookup, %input_bit.exit20, %input_bit.exit23, %bb.k, %bb.j, %bb.i, %bb.h, %bb.c
  %.0 = phi i32 [ %i.p, %bb.c ], [ %., %input_bit.exit23 ], [ 6, %input_bit.exit20 ], [ %switch.ext, %switch.lookup ], [ 7, %bb.h ], [ 9, %bb.i ], [ 11, %bb.j ], [ 13, %bb.k ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @qtree_expand(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef nonnull captures(none) %4) unnamed_addr #8 {
bb.a:
  %i.a = add nsw i32 %3, 1
  %i.b = sdiv i32 %i.a, 2                         ; 3 uses
  %i.c = icmp sgt i32 %2, 0
  %i.d = icmp sgt i32 %3, 0
  %or.cond.i = and i1 %i.c, %i.d
  br i1 %or.cond.i, label %.lr.ph.preheader.i, label %.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.e = add nuw nsw i32 %2, 1
  %i.f = lshr i32 %i.e, 1                         ; 2 uses
  %i.g = mul i32 %i.b, %i.f
  %i.h = add nsw i32 %i.g, -1
  %i.i = sext i32 %i.h to i64
  br label %.lr.ph.i

..loopexit_crit_edge.i:                           ; preds = %bb.f
  %i.j = icmp samesign ugt i32 %.0199206.in.i, 1
  br i1 %i.j, label %.lr.ph.i, label %.preheader.i, !llvm.loop !75

.preheader.i:                                     ; preds = %..loopexit_crit_edge.i, %bb.a
  %i.k = add nsw i32 %2, -1                       ; 2 uses
  %i.l = icmp sgt i32 %2, 1
  br i1 %i.l, label %.lr.ph216.i, label %._crit_edge217.i

.lr.ph216.i:                                      ; preds = %.preheader.i
  %i.m = add nsw i32 %3, -1
  %i.n = icmp sgt i32 %3, 1
  br i1 %i.n, label %.lr.ph211.us.preheader.i, label %.lr.ph216.split.i

.lr.ph211.us.preheader.i:                         ; preds = %.lr.ph216.i
  %i.o = shl nuw i32 %3, 1                        ; 2 uses
  %i.p = and i32 %3, 1
  %.not13 = icmp eq i32 %i.p, 0
  br label %.lr.ph211.us.i

.lr.ph211.us.i:                                   ; preds = %bb.e, %.lr.ph211.us.preheader.i
  %indvars.iv245.i = phi i32 [ 0, %.lr.ph211.us.preheader.i ], [ %indvars.iv.next246.i, %bb.e ] ; 2 uses
  %indvars.iv241.i = phi i32 [ %3, %.lr.ph211.us.preheader.i ], [ %indvars.iv.next242.i, %bb.e ] ; 2 uses
  %.1200215.us.i = phi i32 [ 0, %.lr.ph211.us.preheader.i ], [ %i.am, %bb.e ]
  %i.q = sext i32 %indvars.iv241.i to i64
  %i.r = sext i32 %indvars.iv245.i to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph211.us.i
  %indvars.iv247.i = phi i64 [ %i.r, %.lr.ph211.us.i ], [ %indvars.iv.next248.i, %bb.c ] ; 2 uses
  %indvars.iv243.i = phi i64 [ %i.q, %.lr.ph211.us.i ], [ %indvars.iv.next244.i, %bb.c ] ; 2 uses
  %.1197208.us.i = phi i32 [ 0, %.lr.ph211.us.i ], [ %i.ac, %bb.c ]
  %i.s = getelementptr inbounds i8, ptr %4, i64 %indvars.iv247.i ; 3 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !12    ; 5 uses
  %i.u = icmp ult i8 %i.t, 16
  br i1 %i.u, label %switch.lookup, label %bb.c

switch.lookup:                                    ; preds = %bb.b
  %i.v = zext nneg i8 %i.t to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.qtree_expand, i64 %i.v
  %switch.load = load i8, ptr %switch.gep, align 1
  %i.w = zext nneg i8 %i.t to i64
  %switch.gep34 = getelementptr inbounds nuw i8, ptr @switch.table.qtree_expand.1, i64 %i.w
  %switch.load35 = load i8, ptr %switch.gep34, align 1
  %i.x = zext nneg i8 %i.t to i64
  %switch.gep36 = getelementptr inbounds nuw i8, ptr @switch.table.qtree_expand.2, i64 %i.x
  %switch.load37 = load i8, ptr %switch.gep36, align 1
  %i.y = zext nneg i8 %i.t to i64
  %switch.gep38 = getelementptr inbounds nuw i8, ptr @switch.table.qtree_expand.3, i64 %i.y
  %switch.load39 = load i8, ptr %switch.gep38, align 1
  %i.z = getelementptr i8, ptr %4, i64 %indvars.iv243.i ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 1
  store i8 %switch.load, ptr %i.aa, align 1, !tbaa !12
  store i8 %switch.load35, ptr %i.z, align 1, !tbaa !12
  %i.ab = getelementptr i8, ptr %i.s, i64 1
  store i8 %switch.load37, ptr %i.ab, align 1, !tbaa !12
  store i8 %switch.load39, ptr %i.s, align 1, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %switch.lookup
  %indvars.iv.next248.i = add nsw i64 %indvars.iv247.i, 2 ; 2 uses
  %indvars.iv.next244.i = add nsw i64 %indvars.iv243.i, 2 ; 2 uses
  %i.ac = add nuw nsw i32 %.1197208.us.i, 2       ; 2 uses
  %i.ad = icmp slt i32 %i.ac, %i.m
  br i1 %i.ad, label %bb.b, label %._crit_edge.us.i, !llvm.loop !76

bb.d:                                             ; preds = %._crit_edge.us.i
  %i.ae = getelementptr inbounds i8, ptr %4, i64 %indvars.iv.next248.i ; 3 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !12
  %i.ag = lshr i8 %i.af, 1
  %i.ah = and i8 %i.ag, 1
  %i.ai = getelementptr inbounds i8, ptr %4, i64 %indvars.iv.next244.i
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !12
  %i.aj = load i8, ptr %i.ae, align 1, !tbaa !12
  %i.ak = lshr i8 %i.aj, 3
  %i.al = and i8 %i.ak, 1
  store i8 %i.al, ptr %i.ae, align 1, !tbaa !12
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.us.i, %bb.d
  %i.am = add nuw nsw i32 %.1200215.us.i, 2       ; 2 uses
  %i.an = icmp slt i32 %i.am, %i.k
  %indvars.iv.next242.i = add i32 %indvars.iv241.i, %i.o
  %indvars.iv.next246.i = add i32 %indvars.iv245.i, %i.o
  br i1 %i.an, label %.lr.ph211.us.i, label %._crit_edge217.loopexit.i, !llvm.loop !77

._crit_edge.us.i:                                 ; preds = %bb.c
  br i1 %.not13, label %bb.e, label %bb.d

.lr.ph216.split.i:                                ; preds = %.lr.ph216.i
  %i.ao = icmp eq i32 %3, 1
  br i1 %i.ao, label %.lr.ph216.split.split.us.preheader.i, label %.lr.ph216.split.split.preheader.i

.lr.ph216.split.split.preheader.i:                ; preds = %.lr.ph216.split.i
  %i.ap = and i32 %2, 2147483646
  br label %._crit_edge217.i

.lr.ph216.split.split.us.preheader.i:             ; preds = %.lr.ph216.split.i
  %i.aq = zext nneg i32 %i.k to i64               ; 2 uses
  %invariant.gep.i = getelementptr i8, ptr %4, i64 1
  %min.iters.check = icmp ult i32 %2, 18
  br i1 %min.iters.check, label %.lr.ph216.split.split.us.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph216.split.split.us.preheader.i
  %i.ar = add nsw i64 %i.aq, -1
  %i.as = lshr i64 %i.ar, 1
  %i.at = add nuw nsw i64 %i.as, 1                ; 2 uses
  %i.au = and i64 %i.at, 7                        ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  %i.aw = select i1 %i.av, i64 8, i64 %i.au
  %n.vec = sub nsw i64 %i.at, %i.aw               ; 2 uses
  %i.ax = shl i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ay = shl nuw i64 %index, 1                   ; 8 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 %i.ay ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 %i.ay
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 %i.ay
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 %i.ay
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 6
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 %i.ay
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 %i.ay
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 10
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 %i.ay
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 %i.ay
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 14
  %i.bo = load i8, ptr %i.az, align 1, !tbaa !12
  %i.bp = load i8, ptr %i.bb, align 1, !tbaa !12
  %i.bq = load i8, ptr %i.bd, align 1, !tbaa !12
  %i.br = load i8, ptr %i.bf, align 1, !tbaa !12
  %i.bs = load i8, ptr %i.bh, align 1, !tbaa !12
  %i.bt = load i8, ptr %i.bj, align 1, !tbaa !12
  %i.bu = load i8, ptr %i.bl, align 1, !tbaa !12
  %i.bv = load i8, ptr %i.bn, align 1, !tbaa !12
  %i.bw = insertelement <8 x i8> poison, i8 %i.bo, i64 0
  %i.bx = insertelement <8 x i8> %i.bw, i8 %i.bp, i64 1
  %i.by = insertelement <8 x i8> %i.bx, i8 %i.bq, i64 2
  %i.bz = insertelement <8 x i8> %i.by, i8 %i.br, i64 3
  %i.ca = insertelement <8 x i8> %i.bz, i8 %i.bs, i64 4
  %i.cb = insertelement <8 x i8> %i.ca, i8 %i.bt, i64 5
  %i.cc = insertelement <8 x i8> %i.cb, i8 %i.bu, i64 6
  %i.cd = insertelement <8 x i8> %i.cc, i8 %i.bv, i64 7 ; 2 uses
  %i.ce = lshr <8 x i8> %i.cd, splat (i8 1)
  %i.cf = lshr <8 x i8> %i.cd, splat (i8 3)
  %i.cg = shufflevector <8 x i8> %i.cf, <8 x i8> %i.ce, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %interleaved.vec = and <16 x i8> %i.cg, splat (i8 1)
  store <16 x i8> %interleaved.vec, ptr %i.az, align 1, !tbaa !12
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %.lr.ph216.split.split.us.i.preheader, label %vector.body, !llvm.loop !78

.lr.ph216.split.split.us.i.preheader:             ; preds = %vector.body, %.lr.ph216.split.split.us.preheader.i
  %indvars.iv238.i.ph = phi i64 [ 0, %.lr.ph216.split.split.us.preheader.i ], [ %i.ax, %vector.body ]
  br label %.lr.ph216.split.split.us.i

.lr.ph216.split.split.us.i:                       ; preds = %.lr.ph216.split.split.us.i.preheader, %.lr.ph216.split.split.us.i
  %indvars.iv238.i = phi i64 [ %indvars.iv.next239.i, %.lr.ph216.split.split.us.i ], [ %indvars.iv238.i.ph, %.lr.ph216.split.split.us.i.preheader ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv238.i ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !12  ; 2 uses
  %i.ck = lshr i8 %i.cj, 1
  %i.cl = and i8 %i.ck, 1
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %indvars.iv238.i
  store i8 %i.cl, ptr %gep.i, align 1, !tbaa !12
  %i.cm = lshr i8 %i.cj, 3
  %i.cn = and i8 %i.cm, 1
  store i8 %i.cn, ptr %i.ci, align 1, !tbaa !12
  %indvars.iv.next239.i = add nuw nsw i64 %indvars.iv238.i, 2 ; 3 uses
  %i.co = icmp samesign ult i64 %indvars.iv.next239.i, %i.aq
  br i1 %i.co, label %.lr.ph216.split.split.us.i, label %._crit_edge217.thread.i, !llvm.loop !79

.lr.ph.i:                                         ; preds = %..loopexit_crit_edge.i, %.lr.ph.preheader.i
  %.0199206.in.i = phi i32 [ %.0199206.i, %..loopexit_crit_edge.i ], [ %i.f, %.lr.ph.preheader.i ] ; 2 uses
  %.0194205.i = phi i64 [ %indvars.iv.next.i, %..loopexit_crit_edge.i ], [ %i.i, %.lr.ph.preheader.i ]
  %.0199206.i = add nsw i32 %.0199206.in.i, -1    ; 2 uses
  %i.cp = mul nsw i32 %.0199206.i, %3
  %i.cq = add nsw i32 %i.cp, %i.b
  %i.cr = shl i32 %i.cq, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %.0194205.i, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 2 uses
  %.0193.in203.i = phi i32 [ %i.cr, %.lr.ph.i ], [ %.0193.i, %bb.f ]
  %.0196.in201.i = phi i32 [ %i.b, %.lr.ph.i ], [ %.0196.i, %bb.f ] ; 2 uses
  %.0193.i = add i32 %.0193.in203.i, -2           ; 2 uses
  %.0196.i = add nsw i32 %.0196.in201.i, -1
  %i.cs = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.i
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !12
  %i.cu = sext i32 %.0193.i to i64
  %i.cv = getelementptr inbounds i8, ptr %4, i64 %i.cu
  store i8 %i.ct, ptr %i.cv, align 1, !tbaa !12
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.cw = icmp sgt i32 %.0196.in201.i, 1
  br i1 %i.cw, label %bb.f, label %..loopexit_crit_edge.i, !llvm.loop !80

._crit_edge217.loopexit.i:                        ; preds = %bb.e
  %i.cx = and i32 %2, 2147483646
  br label %._crit_edge217.i

._crit_edge217.i:                                 ; preds = %._crit_edge217.loopexit.i, %.lr.ph216.split.split.preheader.i, %.preheader.i
  %.1200.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %i.ap, %.lr.ph216.split.split.preheader.i ], [ %i.cx, %._crit_edge217.loopexit.i ] ; 2 uses
  %i.cy = icmp slt i32 %.1200.lcssa.i, %2
  br i1 %i.cy, label %bb.g, label %qtree_copy.exit

._crit_edge217.thread.i:                          ; preds = %.lr.ph216.split.split.us.i
  %i.cz = trunc nuw nsw i64 %indvars.iv.next239.i to i32 ; 2 uses
  %i.da = icmp samesign ugt i32 %2, %i.cz
  br i1 %i.da, label %._crit_edge.i, label %qtree_copy.exit

bb.g:                                             ; preds = %._crit_edge217.i
  %i.db = mul i32 %.1200.lcssa.i, %3              ; 2 uses
  %i.dc = add nsw i32 %3, -1
  %i.dd = icmp sgt i32 %3, 1
  br i1 %i.dd, label %.lr.ph224.preheader.i, label %._crit_edge.i

.lr.ph224.preheader.i:                            ; preds = %bb.g
  %i.de = sext i32 %i.db to i64                   ; 3 uses
  %i.df = add nsw i32 %3, -2                      ; 2 uses
  %min.iters.check24 = icmp ult i32 %i.df, 16
  br i1 %min.iters.check24, label %.lr.ph224.i.preheader, label %vector.ph25

vector.ph25:                                      ; preds = %.lr.ph224.preheader.i
  %i.dg = lshr i32 %i.df, 1
  %narrow = add nuw i32 %i.dg, 1
  %i.dh = zext i32 %narrow to i64                 ; 2 uses
  %i.di = and i64 %i.dh, 7                        ; 2 uses
  %i.dj = icmp eq i64 %i.di, 0
  %i.dk = select i1 %i.dj, i64 8, i64 %i.di
  %n.vec26 = sub nsw i64 %i.dh, %i.dk             ; 3 uses
  %i.dl = shl nsw i64 %n.vec26, 1
  %i.dm = add nsw i64 %i.dl, %i.de
  %i.dn = trunc i64 %n.vec26 to i32
  %i.do = shl i32 %i.dn, 1
  br label %vector.body27

vector.body27:                                    ; preds = %vector.body27, %vector.ph25
  %index28 = phi i64 [ 0, %vector.ph25 ], [ %index.next30, %vector.body27 ] ; 2 uses
  %i.dp = shl i64 %index28, 1
  %i.dq = add i64 %i.dp, %i.de                    ; 8 uses
  %i.dr = getelementptr inbounds i8, ptr %4, i64 %i.dq ; 2 uses
  %i.ds = getelementptr i8, ptr %4, i64 %i.dq
  %i.dt = getelementptr i8, ptr %i.ds, i64 2
  %i.du = getelementptr i8, ptr %4, i64 %i.dq
  %i.dv = getelementptr i8, ptr %i.du, i64 4
  %i.dw = getelementptr i8, ptr %4, i64 %i.dq
  %i.dx = getelementptr i8, ptr %i.dw, i64 6
  %i.dy = getelementptr i8, ptr %4, i64 %i.dq
  %i.dz = getelementptr i8, ptr %i.dy, i64 8
  %i.ea = getelementptr i8, ptr %4, i64 %i.dq
  %i.eb = getelementptr i8, ptr %i.ea, i64 10
  %i.ec = getelementptr i8, ptr %4, i64 %i.dq
  %i.ed = getelementptr i8, ptr %i.ec, i64 12
  %i.ee = getelementptr i8, ptr %4, i64 %i.dq
  %i.ef = getelementptr i8, ptr %i.ee, i64 14
  %i.eg = load i8, ptr %i.dr, align 1, !tbaa !12
  %i.eh = load i8, ptr %i.dt, align 1, !tbaa !12
  %i.ei = load i8, ptr %i.dv, align 1, !tbaa !12
  %i.ej = load i8, ptr %i.dx, align 1, !tbaa !12
  %i.ek = load i8, ptr %i.dz, align 1, !tbaa !12
  %i.el = load i8, ptr %i.eb, align 1, !tbaa !12
  %i.em = load i8, ptr %i.ed, align 1, !tbaa !12
  %i.en = load i8, ptr %i.ef, align 1, !tbaa !12
  %i.eo = insertelement <8 x i8> poison, i8 %i.eg, i64 0
  %i.ep = insertelement <8 x i8> %i.eo, i8 %i.eh, i64 1
  %i.eq = insertelement <8 x i8> %i.ep, i8 %i.ei, i64 2
  %i.er = insertelement <8 x i8> %i.eq, i8 %i.ej, i64 3
  %i.es = insertelement <8 x i8> %i.er, i8 %i.ek, i64 4
  %i.et = insertelement <8 x i8> %i.es, i8 %i.el, i64 5
  %i.eu = insertelement <8 x i8> %i.et, i8 %i.em, i64 6
  %i.ev = insertelement <8 x i8> %i.eu, i8 %i.en, i64 7 ; 2 uses
  %i.ew = lshr <8 x i8> %i.ev, splat (i8 2)
  %i.ex = lshr <8 x i8> %i.ev, splat (i8 3)
  %i.ey = shufflevector <8 x i8> %i.ex, <8 x i8> %i.ew, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %interleaved.vec29 = and <16 x i8> %i.ey, splat (i8 1)
  store <16 x i8> %interleaved.vec29, ptr %i.dr, align 1, !tbaa !12
  %index.next30 = add nuw i64 %index28, 8         ; 2 uses
  %i.ez = icmp eq i64 %index.next30, %n.vec26
  br i1 %i.ez, label %.lr.ph224.i.preheader, label %vector.body27, !llvm.loop !81

.lr.ph224.i.preheader:                            ; preds = %vector.body27, %.lr.ph224.preheader.i
  %indvars.iv252.i.ph = phi i64 [ %i.de, %.lr.ph224.preheader.i ], [ %i.dm, %vector.body27 ]
  %.2198222.i.ph = phi i32 [ 0, %.lr.ph224.preheader.i ], [ %i.do, %vector.body27 ]
  br label %.lr.ph224.i

.lr.ph224.i:                                      ; preds = %.lr.ph224.i.preheader, %.lr.ph224.i
  %indvars.iv252.i = phi i64 [ %indvars.iv.next253.i, %.lr.ph224.i ], [ %indvars.iv252.i.ph, %.lr.ph224.i.preheader ] ; 2 uses
  %.2198222.i = phi i32 [ %i.fh, %.lr.ph224.i ], [ %.2198222.i.ph, %.lr.ph224.i.preheader ]
  %i.fa = getelementptr inbounds i8, ptr %4, i64 %indvars.iv252.i ; 3 uses
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !12  ; 2 uses
  %i.fc = lshr i8 %i.fb, 2
  %i.fd = and i8 %i.fc, 1
  %i.fe = getelementptr i8, ptr %i.fa, i64 1
  store i8 %i.fd, ptr %i.fe, align 1, !tbaa !12
  %i.ff = lshr i8 %i.fb, 3
  %i.fg = and i8 %i.ff, 1
  store i8 %i.fg, ptr %i.fa, align 1, !tbaa !12
  %indvars.iv.next253.i = add nsw i64 %indvars.iv252.i, 2 ; 2 uses
  %i.fh = add nuw nsw i32 %.2198222.i, 2          ; 2 uses
  %i.fi = icmp slt i32 %i.fh, %i.dc
  br i1 %i.fi, label %.lr.ph224.i, label %._crit_edge.loopexit.i, !llvm.loop !82

._crit_edge.loopexit.i:                           ; preds = %.lr.ph224.i
  %i.fj = and i32 %3, 2147483646
  %i.fk = trunc nsw i64 %indvars.iv.next253.i to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge217.thread.i, %._crit_edge.loopexit.i, %bb.g
  %.2198.lcssa.i = phi i32 [ 0, %bb.g ], [ %i.fj, %._crit_edge.loopexit.i ], [ 0, %._crit_edge217.thread.i ]
  %.2.lcssa.i = phi i32 [ %i.db, %bb.g ], [ %i.fk, %._crit_edge.loopexit.i ], [ %i.cz, %._crit_edge217.thread.i ]
  %i.fl = icmp slt i32 %.2198.lcssa.i, %3
  br i1 %i.fl, label %bb.h, label %qtree_copy.exit

bb.h:                                             ; preds = %._crit_edge.i
  %i.fm = sext i32 %.2.lcssa.i to i64
  %i.fn = getelementptr inbounds i8, ptr %4, i64 %i.fm ; 2 uses
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !12
  %i.fp = lshr i8 %i.fo, 3
  %i.fq = and i8 %i.fp, 1
  store i8 %i.fq, ptr %i.fn, align 1, !tbaa !12
  br label %qtree_copy.exit

qtree_copy.exit:                                  ; preds = %._crit_edge217.i, %._crit_edge217.thread.i, %._crit_edge.i, %bb.h
  %i.fr = mul nsw i32 %3, %2                      ; 2 uses
  %i.fs = icmp sgt i32 %i.fr, 0
  br i1 %i.fs, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %qtree_copy.exit
  %i.ft = zext nneg i32 %i.fr to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %indvars.iv = phi i64 [ %i.ft, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv.next ; 2 uses
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !12
  %.not = icmp eq i8 %i.fv, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.fw = tail call fastcc i32 @input_huffman(ptr noundef %0)
  %i.fx = trunc nuw nsw i32 %i.fw to i8
  store i8 %i.fx, ptr %i.fu, align 1, !tbaa !12
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.i
  %i.fy = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.fy, label %.lr.ph, label %._crit_edge, !llvm.loop !83

._crit_edge:                                      ; preds = %bb.j, %qtree_copy.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @qtree_bitins(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef range(i32 -1073741824, 1073741824) %1, i32 noundef range(i32 -1073741824, 1073741824) %2, ptr nofree noundef %3, i32 noundef %4, i32 noundef range(i32 0, 255) %5) unnamed_addr #9 {
bb.a:
  %i.a = shl nuw i32 1, %5                        ; 32 uses
  %i.b = add nsw i32 %1, -1
  %i.c = icmp sgt i32 %1, 1
  br i1 %i.c, label %.lr.ph286, label %._crit_edge287

.lr.ph286:                                        ; preds = %bb.a
  %i.d = add nsw i32 %2, -1
  %i.e = icmp sgt i32 %2, 1
  %i.f = shl i32 %4, 1
  %i.g = sext i32 %4 to i64                       ; 12 uses
  %i.h = add nsw i32 %2, -2                       ; 2 uses
  %i.i = lshr i32 %i.h, 1
  %narrow = add nuw i32 %i.i, 1
  %i.j = and i32 %i.h, -2
  %i.k = add nuw i32 %i.j, 2
  %invariant.gep = getelementptr [4 x i8], ptr %3, i64 %i.g
  %invariant.gep322 = getelementptr [4 x i8], ptr %3, i64 %i.g
  %invariant.gep324 = getelementptr [4 x i8], ptr %3, i64 %i.g
  %invariant.gep326 = getelementptr [4 x i8], ptr %3, i64 %i.g
  %invariant.gep328 = getelementptr [4 x i8], ptr %3, i64 %i.g
  %invariant.gep330 = getelementptr [4 x i8], ptr %3, i64 %i.g
  %invariant.gep332 = getelementptr [4 x i8], ptr %3, i64 %i.g
  %invariant.gep334 = getelementptr [4 x i8], ptr %3, i64 %i.g
  %invariant.gep336 = getelementptr [4 x i8], ptr %3, i64 %i.g
  %invariant.gep338 = getelementptr [4 x i8], ptr %3, i64 %i.g
  %invariant.gep340 = getelementptr [4 x i8], ptr %3, i64 %i.g
  %invariant.gep342 = getelementptr [4 x i8], ptr %3, i64 %i.g
  %i.l = insertelement <2 x i32> poison, i32 %i.a, i64 0
  %i.m = shufflevector <2 x i32> %i.l, <2 x i32> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph286, %bb.ac
  %indvars.iv = phi i32 [ 0, %.lr.ph286 ], [ %indvars.iv.next, %bb.ac ] ; 2 uses
  %.0273284 = phi i32 [ 0, %.lr.ph286 ], [ %.2, %bb.ac ] ; 3 uses
  %.0277283 = phi i32 [ 0, %.lr.ph286 ], [ %i.dt, %bb.ac ] ; 2 uses
  %i.n = mul nsw i32 %.0277283, %4
  br i1 %i.e, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.o = sext i32 %indvars.iv to i64
  %i.p = sext i32 %.0273284 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.r
  %indvars.iv307 = phi i64 [ %i.p, %.lr.ph.preheader ], [ %indvars.iv.next308, %bb.r ] ; 2 uses
  %indvars.iv305 = phi i64 [ %i.o, %.lr.ph.preheader ], [ %indvars.iv.next306, %bb.r ] ; 25 uses
  %.0275278 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ci, %bb.r ]
  %i.q = getelementptr inbounds i8, ptr %0, i64 %indvars.iv307
  %i.r = load i8, ptr %i.q, align 1, !tbaa !12
  switch i8 %i.r, label %bb.r [
    i8 15, label %bb.q
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.m
    i8 12, label %bb.n
    i8 13, label %bb.o
    i8 14, label %bb.p
  ]

bb.c:                                             ; preds = %.lr.ph
  %gep341 = getelementptr [4 x i8], ptr %invariant.gep340, i64 %indvars.iv305
  %i.s = getelementptr i8, ptr %gep341, i64 4     ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !9
  %i.u = or i32 %i.t, %i.a
  store i32 %i.u, ptr %i.s, align 4, !tbaa !9
  br label %bb.r

bb.d:                                             ; preds = %.lr.ph
  %gep339 = getelementptr [4 x i8], ptr %invariant.gep338, i64 %indvars.iv305 ; 2 uses
  %i.v = load i32, ptr %gep339, align 4, !tbaa !9
  %i.w = or i32 %i.v, %i.a
  store i32 %i.w, ptr %gep339, align 4, !tbaa !9
  br label %bb.r

bb.e:                                             ; preds = %.lr.ph
  %gep337 = getelementptr [4 x i8], ptr %invariant.gep336, i64 %indvars.iv305 ; 2 uses
  %i.x = load <2 x i32>, ptr %gep337, align 4, !tbaa !9
  %i.y = or <2 x i32> %i.x, %i.m
  store <2 x i32> %i.y, ptr %gep337, align 4, !tbaa !9
  br label %bb.r

bb.f:                                             ; preds = %.lr.ph
  %i.z = getelementptr [4 x i8], ptr %3, i64 %indvars.iv305
  %i.aa = getelementptr i8, ptr %i.z, i64 4       ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !9
  %i.ac = or i32 %i.ab, %i.a
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !9
  br label %bb.r

bb.g:                                             ; preds = %.lr.ph
  %gep335 = getelementptr [4 x i8], ptr %invariant.gep334, i64 %indvars.iv305
  %i.ad = getelementptr i8, ptr %gep335, i64 4    ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !9
  %i.af = or i32 %i.ae, %i.a
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !9
  %i.ag = getelementptr [4 x i8], ptr %3, i64 %indvars.iv305
  %i.ah = getelementptr i8, ptr %i.ag, i64 4      ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !9
  %i.aj = or i32 %i.ai, %i.a
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !9
  br label %bb.r

bb.h:                                             ; preds = %.lr.ph
  %gep333 = getelementptr [4 x i8], ptr %invariant.gep332, i64 %indvars.iv305 ; 2 uses
  %i.ak = load i32, ptr %gep333, align 4, !tbaa !9
  %i.al = or i32 %i.ak, %i.a
  store i32 %i.al, ptr %gep333, align 4, !tbaa !9
  %i.am = getelementptr [4 x i8], ptr %3, i64 %indvars.iv305
  %i.an = getelementptr i8, ptr %i.am, i64 4      ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !9
  %i.ap = or i32 %i.ao, %i.a
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !9
  br label %bb.r

bb.i:                                             ; preds = %.lr.ph
  %gep331 = getelementptr [4 x i8], ptr %invariant.gep330, i64 %indvars.iv305 ; 2 uses
  %i.aq = load <2 x i32>, ptr %gep331, align 4, !tbaa !9
  %i.ar = or <2 x i32> %i.aq, %i.m
  store <2 x i32> %i.ar, ptr %gep331, align 4, !tbaa !9
  %i.as = getelementptr [4 x i8], ptr %3, i64 %indvars.iv305
  %i.at = getelementptr i8, ptr %i.as, i64 4      ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !9
  %i.av = or i32 %i.au, %i.a
  store i32 %i.av, ptr %i.at, align 4, !tbaa !9
  br label %bb.r

bb.j:                                             ; preds = %.lr.ph
  %i.aw = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv305 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !9
  %i.ay = or i32 %i.ax, %i.a
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !9
  br label %bb.r

bb.k:                                             ; preds = %.lr.ph
  %gep329 = getelementptr [4 x i8], ptr %invariant.gep328, i64 %indvars.iv305
  %i.az = getelementptr i8, ptr %gep329, i64 4    ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !9
  %i.bb = or i32 %i.ba, %i.a
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !9
  %i.bc = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv305 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !9
  %i.be = or i32 %i.bd, %i.a
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !9
  br label %bb.r

bb.l:                                             ; preds = %.lr.ph
  %gep327 = getelementptr [4 x i8], ptr %invariant.gep326, i64 %indvars.iv305 ; 2 uses
  %i.bf = load i32, ptr %gep327, align 4, !tbaa !9
  %i.bg = or i32 %i.bf, %i.a
  store i32 %i.bg, ptr %gep327, align 4, !tbaa !9
  %i.bh = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv305 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !9
  %i.bj = or i32 %i.bi, %i.a
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !9
  br label %bb.r

bb.m:                                             ; preds = %.lr.ph
  %gep325 = getelementptr [4 x i8], ptr %invariant.gep324, i64 %indvars.iv305 ; 2 uses
  %i.bk = load <2 x i32>, ptr %gep325, align 4, !tbaa !9
  %i.bl = or <2 x i32> %i.bk, %i.m
  store <2 x i32> %i.bl, ptr %gep325, align 4, !tbaa !9
  %i.bm = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv305 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !9
  %i.bo = or i32 %i.bn, %i.a
  store i32 %i.bo, ptr %i.bm, align 4, !tbaa !9
  br label %bb.r

bb.n:                                             ; preds = %.lr.ph
  %i.bp = getelementptr [4 x i8], ptr %3, i64 %indvars.iv305 ; 2 uses
  %i.bq = load <2 x i32>, ptr %i.bp, align 4, !tbaa !9
  %i.br = or <2 x i32> %i.bq, %i.m
  store <2 x i32> %i.br, ptr %i.bp, align 4, !tbaa !9
  br label %bb.r

bb.o:                                             ; preds = %.lr.ph
  %gep323 = getelementptr [4 x i8], ptr %invariant.gep322, i64 %indvars.iv305
  %i.bs = getelementptr i8, ptr %gep323, i64 4    ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !9
  %i.bu = or i32 %i.bt, %i.a
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !9
  %i.bv = getelementptr [4 x i8], ptr %3, i64 %indvars.iv305 ; 2 uses
  %i.bw = load <2 x i32>, ptr %i.bv, align 4, !tbaa !9
  %i.bx = or <2 x i32> %i.bw, %i.m
  store <2 x i32> %i.bx, ptr %i.bv, align 4, !tbaa !9
  br label %bb.r

bb.p:                                             ; preds = %.lr.ph
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv305 ; 2 uses
  %i.by = load i32, ptr %gep, align 4, !tbaa !9
  %i.bz = or i32 %i.by, %i.a
  store i32 %i.bz, ptr %gep, align 4, !tbaa !9
  %i.ca = getelementptr [4 x i8], ptr %3, i64 %indvars.iv305 ; 2 uses
  %i.cb = load <2 x i32>, ptr %i.ca, align 4, !tbaa !9
  %i.cc = or <2 x i32> %i.cb, %i.m
  store <2 x i32> %i.cc, ptr %i.ca, align 4, !tbaa !9
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph
  %gep343 = getelementptr [4 x i8], ptr %invariant.gep342, i64 %indvars.iv305 ; 2 uses
  %i.cd = load <2 x i32>, ptr %gep343, align 4, !tbaa !9
  %i.ce = or <2 x i32> %i.cd, %i.m
  store <2 x i32> %i.ce, ptr %gep343, align 4, !tbaa !9
  %i.cf = getelementptr [4 x i8], ptr %3, i64 %indvars.iv305 ; 2 uses
  %i.cg = load <2 x i32>, ptr %i.cf, align 4, !tbaa !9
  %i.ch = or <2 x i32> %i.cg, %i.m
  store <2 x i32> %i.ch, ptr %i.cf, align 4, !tbaa !9
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %.lr.ph
  %indvars.iv.next306 = add nsw i64 %indvars.iv305, 2 ; 2 uses
  %indvars.iv.next308 = add nsw i64 %indvars.iv307, 1
  %i.ci = add nuw nsw i32 %.0275278, 2            ; 2 uses
  %i.cj = icmp slt i32 %i.ci, %i.d
  br i1 %i.cj, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !84

._crit_edge.loopexit:                             ; preds = %bb.r
  %i.ck = add i32 %narrow, %.0273284
  %i.cl = trunc nsw i64 %indvars.iv.next306 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.0275.lcssa = phi i32 [ 0, %bb.b ], [ %i.k, %._crit_edge.loopexit ]
  %.1274.lcssa = phi i32 [ %.0273284, %bb.b ], [ %i.ck, %._crit_edge.loopexit ] ; 3 uses
  %.0.lcssa = phi i32 [ %i.n, %bb.b ], [ %i.cl, %._crit_edge.loopexit ] ; 16 uses
  %i.cm = icmp slt i32 %.0275.lcssa, %2
  br i1 %i.cm, label %bb.s, label %bb.ac

bb.s:                                             ; preds = %._crit_edge
  %i.cn = sext i32 %.1274.lcssa to i64
  %i.co = getelementptr inbounds i8, ptr %0, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !12
  switch i8 %i.cp, label %bb.ab [
    i8 15, label %bb.aa
    i8 14, label %bb.z
    i8 2, label %bb.t
    i8 3, label %bb.u
    i8 13, label %.sink.split
    i8 12, label %.sink.split
    i8 6, label %bb.v
    i8 7, label %bb.w
    i8 8, label %.sink.split
    i8 9, label %.sink.split
    i8 10, label %bb.x
    i8 11, label %bb.y
  ]

bb.t:                                             ; preds = %bb.s
  %i.cq = add nsw i32 %.0.lcssa, %4
  br label %.sink.split

bb.u:                                             ; preds = %bb.s
  %i.cr = add nsw i32 %.0.lcssa, %4
  br label %.sink.split

bb.v:                                             ; preds = %bb.s
  %i.cs = add nsw i32 %.0.lcssa, %4
  br label %.sink.split

bb.w:                                             ; preds = %bb.s
  %i.ct = add nsw i32 %.0.lcssa, %4
  br label %.sink.split

bb.x:                                             ; preds = %bb.s
  %i.cu = add nsw i32 %.0.lcssa, %4
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %3, i64 %i.cv ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !9
  %i.cy = or i32 %i.cx, %i.a
  store i32 %i.cy, ptr %i.cw, align 4, !tbaa !9
  br label %.sink.split

bb.y:                                             ; preds = %bb.s
  %i.cz = add nsw i32 %.0.lcssa, %4
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [4 x i8], ptr %3, i64 %i.da ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !9
  %i.dd = or i32 %i.dc, %i.a
  store i32 %i.dd, ptr %i.db, align 4, !tbaa !9
  br label %.sink.split

bb.z:                                             ; preds = %bb.s
  %i.de = add nsw i32 %.0.lcssa, %4
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds [4 x i8], ptr %3, i64 %i.df ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !9
  %i.di = or i32 %i.dh, %i.a
  store i32 %i.di, ptr %i.dg, align 4, !tbaa !9
  br label %.sink.split

bb.aa:                                            ; preds = %bb.s
  %i.dj = add nsw i32 %.0.lcssa, %4
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [4 x i8], ptr %3, i64 %i.dk ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !9
  %i.dn = or i32 %i.dm, %i.a
  store i32 %i.dn, ptr %i.dl, align 4, !tbaa !9
  br label %.sink.split

.sink.split:                                      ; preds = %bb.s, %bb.s, %bb.s, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa
  %.0.lcssa.sink = phi i32 [ %.0.lcssa, %bb.aa ], [ %.0.lcssa, %bb.z ], [ %i.ct, %bb.w ], [ %i.cs, %bb.v ], [ %.0.lcssa, %bb.y ], [ %.0.lcssa, %bb.x ], [ %i.cr, %bb.u ], [ %i.cq, %bb.t ], [ %.0.lcssa, %bb.s ], [ %.0.lcssa, %bb.s ], [ %.0.lcssa, %bb.s ], [ %.0.lcssa, %bb.s ]
  %i.do = sext i32 %.0.lcssa.sink to i64
  %i.dp = getelementptr inbounds [4 x i8], ptr %3, i64 %i.do ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !9
  %i.dr = or i32 %i.dq, %i.a
  store i32 %i.dr, ptr %i.dp, align 4, !tbaa !9
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split, %bb.s
  %i.ds = add nsw i32 %.1274.lcssa, 1
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge, %bb.ab
  %.2 = phi i32 [ %i.ds, %bb.ab ], [ %.1274.lcssa, %._crit_edge ] ; 2 uses
  %i.dt = add nuw nsw i32 %.0277283, 2            ; 3 uses
  %i.du = icmp slt i32 %i.dt, %i.b
  %indvars.iv.next = add i32 %indvars.iv, %i.f
  br i1 %i.du, label %bb.b, label %._crit_edge287, !llvm.loop !85

._crit_edge287:                                   ; preds = %bb.ac, %bb.a
  %.0277.lcssa = phi i32 [ 0, %bb.a ], [ %i.dt, %bb.ac ] ; 2 uses
  %.0273.lcssa = phi i32 [ 0, %bb.a ], [ %.2, %bb.ac ] ; 3 uses
  %i.dv = icmp slt i32 %.0277.lcssa, %1
  br i1 %i.dv, label %bb.ad, label %bb.as

bb.ad:                                            ; preds = %._crit_edge287
  %i.dw = mul i32 %.0277.lcssa, %4                ; 2 uses
  %i.dx = add nsw i32 %2, -1
  %i.dy = icmp sgt i32 %2, 1
  br i1 %i.dy, label %.lr.ph294.preheader, label %._crit_edge295

.lr.ph294.preheader:                              ; preds = %bb.ad
  %i.dz = sext i32 %i.dw to i64
  %i.ea = sext i32 %.0273.lcssa to i64
  %i.eb = insertelement <2 x i32> poison, i32 %i.a, i64 0
  %i.ec = shufflevector <2 x i32> %i.eb, <2 x i32> poison, <2 x i32> zeroinitializer ; 4 uses
  br label %.lr.ph294

.lr.ph294:                                        ; preds = %.lr.ph294.preheader, %bb.aq
  %indvars.iv314 = phi i64 [ %i.ea, %.lr.ph294.preheader ], [ %indvars.iv.next315, %bb.aq ] ; 2 uses
  %indvars.iv312 = phi i64 [ %i.dz, %.lr.ph294.preheader ], [ %indvars.iv.next313, %bb.aq ] ; 13 uses
  %.1276290 = phi i32 [ 0, %.lr.ph294.preheader ], [ %i.ft, %bb.aq ]
  %i.ed = getelementptr inbounds i8, ptr %0, i64 %indvars.iv314
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !12
  switch i8 %i.ee, label %bb.aq [
    i8 15, label %bb.ap
    i8 14, label %bb.ao
    i8 13, label %bb.an
    i8 12, label %bb.am
    i8 4, label %bb.ae
    i8 5, label %bb.af
    i8 6, label %bb.ag
    i8 7, label %bb.ah
    i8 8, label %bb.ai
    i8 9, label %bb.aj
    i8 10, label %bb.ak
    i8 11, label %bb.al
  ]

bb.ae:                                            ; preds = %.lr.ph294
  %i.ef = getelementptr [4 x i8], ptr %3, i64 %indvars.iv312
  %i.eg = getelementptr i8, ptr %i.ef, i64 4      ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !9
  %i.ei = or i32 %i.eh, %i.a
  store i32 %i.ei, ptr %i.eg, align 4, !tbaa !9
  br label %bb.aq

bb.af:                                            ; preds = %.lr.ph294
  %i.ej = getelementptr [4 x i8], ptr %3, i64 %indvars.iv312
  %i.ek = getelementptr i8, ptr %i.ej, i64 4      ; 2 uses
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !9
  %i.em = or i32 %i.el, %i.a
  store i32 %i.em, ptr %i.ek, align 4, !tbaa !9
  br label %bb.aq

bb.ag:                                            ; preds = %.lr.ph294
  %i.en = getelementptr [4 x i8], ptr %3, i64 %indvars.iv312
  %i.eo = getelementptr i8, ptr %i.en, i64 4      ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !9
  %i.eq = or i32 %i.ep, %i.a
  store i32 %i.eq, ptr %i.eo, align 4, !tbaa !9
  br label %bb.aq

bb.ah:                                            ; preds = %.lr.ph294
  %i.er = getelementptr [4 x i8], ptr %3, i64 %indvars.iv312
  %i.es = getelementptr i8, ptr %i.er, i64 4      ; 2 uses
  %i.et = load i32, ptr %i.es, align 4, !tbaa !9
  %i.eu = or i32 %i.et, %i.a
  store i32 %i.eu, ptr %i.es, align 4, !tbaa !9
  br label %bb.aq

bb.ai:                                            ; preds = %.lr.ph294
  %i.ev = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv312 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !9
  %i.ex = or i32 %i.ew, %i.a
  store i32 %i.ex, ptr %i.ev, align 4, !tbaa !9
  br label %bb.aq

bb.aj:                                            ; preds = %.lr.ph294
  %i.ey = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv312 ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !9
  %i.fa = or i32 %i.ez, %i.a
  store i32 %i.fa, ptr %i.ey, align 4, !tbaa !9
  br label %bb.aq

bb.ak:                                            ; preds = %.lr.ph294
  %i.fb = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv312 ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !9
  %i.fd = or i32 %i.fc, %i.a
  store i32 %i.fd, ptr %i.fb, align 4, !tbaa !9
  br label %bb.aq

bb.al:                                            ; preds = %.lr.ph294
  %i.fe = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv312 ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !9
  %i.fg = or i32 %i.ff, %i.a
  store i32 %i.fg, ptr %i.fe, align 4, !tbaa !9
  br label %bb.aq

bb.am:                                            ; preds = %.lr.ph294
  %i.fh = getelementptr [4 x i8], ptr %3, i64 %indvars.iv312 ; 2 uses
  %i.fi = load <2 x i32>, ptr %i.fh, align 4, !tbaa !9
  %i.fj = or <2 x i32> %i.fi, %i.ec
  store <2 x i32> %i.fj, ptr %i.fh, align 4, !tbaa !9
  br label %bb.aq

bb.an:                                            ; preds = %.lr.ph294
  %i.fk = getelementptr [4 x i8], ptr %3, i64 %indvars.iv312 ; 2 uses
  %i.fl = load <2 x i32>, ptr %i.fk, align 4, !tbaa !9
  %i.fm = or <2 x i32> %i.fl, %i.ec
  store <2 x i32> %i.fm, ptr %i.fk, align 4, !tbaa !9
  br label %bb.aq

bb.ao:                                            ; preds = %.lr.ph294
  %i.fn = getelementptr [4 x i8], ptr %3, i64 %indvars.iv312 ; 2 uses
  %i.fo = load <2 x i32>, ptr %i.fn, align 4, !tbaa !9
  %i.fp = or <2 x i32> %i.fo, %i.ec
  store <2 x i32> %i.fp, ptr %i.fn, align 4, !tbaa !9
  br label %bb.aq

bb.ap:                                            ; preds = %.lr.ph294
  %i.fq = getelementptr [4 x i8], ptr %3, i64 %indvars.iv312 ; 2 uses
  %i.fr = load <2 x i32>, ptr %i.fq, align 4, !tbaa !9
  %i.fs = or <2 x i32> %i.fr, %i.ec
  store <2 x i32> %i.fs, ptr %i.fq, align 4, !tbaa !9
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %.lr.ph294
  %indvars.iv.next313 = add nsw i64 %indvars.iv312, 2 ; 2 uses
  %indvars.iv.next315 = add nsw i64 %indvars.iv314, 1
  %i.ft = add nuw nsw i32 %.1276290, 2            ; 2 uses
  %i.fu = icmp slt i32 %i.ft, %i.dx
  br i1 %i.fu, label %.lr.ph294, label %._crit_edge295.loopexit, !llvm.loop !86

._crit_edge295.loopexit:                          ; preds = %bb.aq
  %i.fv = add nsw i32 %2, -2                      ; 2 uses
  %i.fw = lshr i32 %i.fv, 1
  %i.fx = add i32 %i.fw, %.0273.lcssa
  %i.fy = add i32 %i.fx, 1
  %i.fz = and i32 %i.fv, -2
  %i.ga = add nuw nsw i32 %i.fz, 2
  %i.gb = trunc nsw i64 %indvars.iv.next313 to i32
  br label %._crit_edge295

._crit_edge295:                                   ; preds = %._crit_edge295.loopexit, %bb.ad
  %.1276.lcssa = phi i32 [ 0, %bb.ad ], [ %i.ga, %._crit_edge295.loopexit ]
  %.3.lcssa = phi i32 [ %.0273.lcssa, %bb.ad ], [ %i.fy, %._crit_edge295.loopexit ]
  %.1.lcssa = phi i32 [ %i.dw, %bb.ad ], [ %i.gb, %._crit_edge295.loopexit ]
  %i.gc = icmp slt i32 %.1276.lcssa, %2
  br i1 %i.gc, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %._crit_edge295
  %i.gd = sext i32 %.3.lcssa to i64
  %i.ge = getelementptr inbounds i8, ptr %0, i64 %i.gd
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !12
  %i.gg = and i8 %i.gf, -8
  %switch = icmp eq i8 %i.gg, 8
  br i1 %switch, label %.sink.split347, label %bb.as

.sink.split347:                                   ; preds = %bb.ar
  %i.gh = sext i32 %.1.lcssa to i64
  %i.gi = getelementptr inbounds [4 x i8], ptr %3, i64 %i.gh ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !9
  %i.gk = or i32 %i.gj, %i.a
  store i32 %i.gk, ptr %i.gi, align 4, !tbaa !9
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %.sink.split347, %._crit_edge295, %._crit_edge287
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @input_nnybble(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #8 {
bb.a:
  %i.a = icmp eq i32 %1, 1
  %i.b = load i32, ptr @bits_to_go, align 4, !tbaa !9 ; 12 uses
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %i.b, 4
  %.pre.i = load i32, ptr @buffer2, align 4, !tbaa !9 ; 2 uses
  br i1 %i.c, label %bb.c, label %input_nybble.exit

bb.c:                                             ; preds = %bb.b
  %i.d = shl i32 %.pre.i, 8
  %i.e = load i64, ptr @nextchar, align 8, !tbaa !11 ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !12
  %i.h = zext i8 %i.g to i32
  %i.i = or disjoint i32 %i.d, %i.h               ; 2 uses
  store i32 %i.i, ptr @buffer2, align 4, !tbaa !9
  %i.j = add nsw i64 %i.e, 1
  store i64 %i.j, ptr @nextchar, align 8, !tbaa !11
  %i.k = add nsw i32 %i.b, 8
  br label %input_nybble.exit

input_nybble.exit:                                ; preds = %bb.b, %bb.c
  %i.l = phi i32 [ %i.i, %bb.c ], [ %.pre.i, %bb.b ]
  %i.m = phi i32 [ %i.k, %bb.c ], [ %i.b, %bb.b ]
  %i.n = add nsw i32 %i.m, -4                     ; 2 uses
  store i32 %i.n, ptr @bits_to_go, align 4, !tbaa !9
  %i.o = ashr i32 %i.l, %i.n
  %i.p = trunc i32 %i.o to i8
  %i.q = and i8 %i.p, 15
  store i8 %i.q, ptr %2, align 1, !tbaa !12
  br label %.loopexit._crit_edge

bb.d:                                             ; preds = %bb.a
  %i.r = icmp eq i32 %i.b, 8
  br i1 %i.r, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  %i.s = load i64, ptr @nextchar, align 8, !tbaa !11
  %i.t = add nsw i64 %i.s, -1
  store i64 %i.t, ptr @nextchar, align 8, !tbaa !11
  store i32 0, ptr @bits_to_go, align 4, !tbaa !9
  br label %.preheader

bb.e:                                             ; preds = %bb.d
  %i.u = add nsw i32 %i.b, 4                      ; 3 uses
  %i.v = icmp eq i32 %i.b, 0
  br i1 %i.v, label %.preheader, label %.preheader35

.preheader35:                                     ; preds = %bb.e
  %i.w = sdiv i32 %1, 2                           ; 5 uses
  %buffer2.promoted = load i32, ptr @buffer2, align 4 ; 3 uses
  %nextchar.promoted = load i64, ptr @nextchar, align 8 ; 3 uses
  %i.x = icmp sgt i32 %1, 1
  br i1 %i.x, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader35
  %xtraiter = and i32 %i.w, 1
  %i.y = and i32 %1, 2147483646
  %i.z = icmp eq i32 %i.y, 2
  br i1 %i.z, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.w, 1073741822
  br label %.lr.ph

.preheader:                                       ; preds = %.thread, %bb.e
  %i.aa = sdiv i32 %1, 2                          ; 5 uses
  %buffer2.promoted40 = load i32, ptr @buffer2, align 4 ; 3 uses
  %nextchar.promoted41 = load i64, ptr @nextchar, align 8 ; 3 uses
  %i.ab = icmp sgt i32 %1, 1
  br i1 %i.ab, label %.lr.ph44.preheader, label %.loopexit

.lr.ph44.preheader:                               ; preds = %.preheader
  %xtraiter14 = and i32 %i.aa, 1
  %i.ac = and i32 %1, 2147483646
  %i.ad = icmp eq i32 %i.ac, 2
  br i1 %i.ad, label %.lr.ph44.epil.preheader, label %.lr.ph44.preheader.new

.lr.ph44.preheader.new:                           ; preds = %.lr.ph44.preheader
  %unroll_iter23 = and i32 %i.aa, 1073741822
  br label %.lr.ph44

.lr.ph44:                                         ; preds = %.lr.ph44, %.lr.ph44.preheader.new
  %indvars.iv54 = phi i64 [ 0, %.lr.ph44.preheader.new ], [ %indvars.iv.next55.1, %.lr.ph44 ] ; 3 uses
  %i.ae = phi i32 [ %buffer2.promoted40, %.lr.ph44.preheader.new ], [ %i.au, %.lr.ph44 ]
  %i.af = phi i64 [ %nextchar.promoted41, %.lr.ph44.preheader.new ], [ %i.av, %.lr.ph44 ] ; 3 uses
  %niter24 = phi i32 [ 0, %.lr.ph44.preheader.new ], [ %niter24.next.1, %.lr.ph44 ]
  %i.ag = getelementptr inbounds i8, ptr %0, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !12  ; 3 uses
  %i.ai = zext i8 %i.ah to i32
  %i.aj = lshr i8 %i.ah, 4
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv54 ; 2 uses
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !12
  %i.al = and i8 %i.ah, 15
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  store i8 %i.al, ptr %i.am, align 1, !tbaa !12
  %i.an = shl i32 %i.ae, 16
  %i.ao = shl nuw nsw i32 %i.ai, 8
  %i.ap = or disjoint i32 %i.an, %i.ao
  %i.aq = getelementptr i8, ptr %0, i64 %i.af
  %i.ar = getelementptr i8, ptr %i.aq, i64 1
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !12  ; 3 uses
  %i.at = zext i8 %i.as to i32
  %i.au = or disjoint i32 %i.ap, %i.at            ; 3 uses
  %i.av = add nsw i64 %i.af, 2                    ; 3 uses
  %i.aw = lshr i8 %i.as, 4
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv54 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  store i8 %i.aw, ptr %i.ay, align 1, !tbaa !12
  %i.az = and i8 %i.as, 15
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 3
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !12
  %indvars.iv.next55.1 = add nuw nsw i64 %indvars.iv54, 4 ; 2 uses
  %niter24.next.1 = add i32 %niter24, 2           ; 2 uses
  %niter24.ncmp.1 = icmp eq i32 %niter24.next.1, %unroll_iter23
  br i1 %niter24.ncmp.1, label %.loopexit.sink.split.loopexit.unr-lcssa, label %.lr.ph44, !llvm.loop !87

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %i.bb = phi i32 [ %buffer2.promoted, %.lr.ph.preheader.new ], [ %i.bv, %.lr.ph ]
  %i.bc = phi i64 [ %nextchar.promoted, %.lr.ph.preheader.new ], [ %i.bw, %.lr.ph ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.bd = shl i32 %i.bb, 8
  %i.be = getelementptr inbounds i8, ptr %0, i64 %i.bc
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !12
  %i.bg = zext i8 %i.bf to i32
  %i.bh = or disjoint i32 %i.bd, %i.bg            ; 3 uses
  %i.bi = ashr i32 %i.bh, %i.u
  %i.bj = trunc i32 %i.bi to i8
  %i.bk = and i8 %i.bj, 15
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv ; 2 uses
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !12
  %i.bm = ashr i32 %i.bh, %i.b
  %i.bn = trunc i32 %i.bm to i8
  %i.bo = and i8 %i.bn, 15
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !12
  %i.bq = shl i32 %i.bh, 8
  %i.br = getelementptr i8, ptr %0, i64 %i.bc
  %i.bs = getelementptr i8, ptr %i.br, i64 1
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !12
  %i.bu = zext i8 %i.bt to i32
  %i.bv = or disjoint i32 %i.bq, %i.bu            ; 5 uses
  %i.bw = add nsw i64 %i.bc, 2                    ; 3 uses
  %i.bx = ashr i32 %i.bv, %i.u
  %i.by = trunc i32 %i.bx to i8
  %i.bz = and i8 %i.by, 15
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 2
  store i8 %i.bz, ptr %i.cb, align 1, !tbaa !12
  %i.cc = ashr i32 %i.bv, %i.b
  %i.cd = trunc i32 %i.cc to i8
  %i.ce = and i8 %i.cd, 15
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 3
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !12
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.sink.split.loopexit6.unr-lcssa, label %.lr.ph, !llvm.loop !88

.loopexit.sink.split.loopexit.unr-lcssa:          ; preds = %.lr.ph44
  %lcmp.mod19.not = icmp eq i32 %xtraiter14, 0
  br i1 %lcmp.mod19.not, label %.loopexit.sink.split, label %.lr.ph44.epil.preheader

.lr.ph44.epil.preheader:                          ; preds = %.loopexit.sink.split.loopexit.unr-lcssa, %.lr.ph44.preheader
  %indvars.iv54.epil.init = phi i64 [ 0, %.lr.ph44.preheader ], [ %indvars.iv.next55.1, %.loopexit.sink.split.loopexit.unr-lcssa ]
  %.epil.init16 = phi i32 [ %buffer2.promoted40, %.lr.ph44.preheader ], [ %i.au, %.loopexit.sink.split.loopexit.unr-lcssa ]
  %.epil.init18 = phi i64 [ %nextchar.promoted41, %.lr.ph44.preheader ], [ %i.av, %.loopexit.sink.split.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod22 = trunc i32 %i.aa to i1
  tail call void @llvm.assume(i1 %lcmp.mod22)
  %i.cg = shl i32 %.epil.init16, 8
  %i.ch = getelementptr inbounds i8, ptr %0, i64 %.epil.init18
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !12  ; 3 uses
  %i.cj = zext i8 %i.ci to i32
  %i.ck = or disjoint i32 %i.cg, %i.cj
  %i.cl = add nsw i64 %.epil.init18, 1
  %i.cm = lshr i8 %i.ci, 4
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv54.epil.init ; 2 uses
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !12
  %i.co = and i8 %i.ci, 15
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 1
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !12
  br label %.loopexit.sink.split

.loopexit.sink.split.loopexit6.unr-lcssa:         ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.sink.split, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.sink.split.loopexit6.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.loopexit.sink.split.loopexit6.unr-lcssa ]
  %.epil.init = phi i32 [ %buffer2.promoted, %.lr.ph.preheader ], [ %i.bv, %.loopexit.sink.split.loopexit6.unr-lcssa ]
  %.epil.init10 = phi i64 [ %nextchar.promoted, %.lr.ph.preheader ], [ %i.bw, %.loopexit.sink.split.loopexit6.unr-lcssa ] ; 2 uses
  %lcmp.mod13 = trunc i32 %i.w to i1
  tail call void @llvm.assume(i1 %lcmp.mod13)
  %i.cq = shl i32 %.epil.init, 8
  %i.cr = getelementptr inbounds i8, ptr %0, i64 %.epil.init10
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !12
  %i.ct = zext i8 %i.cs to i32
  %i.cu = or disjoint i32 %i.cq, %i.ct            ; 3 uses
  %i.cv = add nsw i64 %.epil.init10, 1
  %i.cw = ashr i32 %i.cu, %i.u
  %i.cx = trunc i32 %i.cw to i8
  %i.cy = and i8 %i.cx, 15
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.epil.init ; 2 uses
  store i8 %i.cy, ptr %i.cz, align 1, !tbaa !12
  %i.da = ashr i32 %i.cu, %i.b
  %i.db = trunc i32 %i.da to i8
  %i.dc = and i8 %i.db, 15
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 1
  store i8 %i.dc, ptr %i.dd, align 1, !tbaa !12
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %.lr.ph.epil.preheader, %.loopexit.sink.split.loopexit6.unr-lcssa, %.lr.ph44.epil.preheader, %.loopexit.sink.split.loopexit.unr-lcssa
  %.lcssa68.sink = phi i32 [ %i.ck, %.lr.ph44.epil.preheader ], [ %i.au, %.loopexit.sink.split.loopexit.unr-lcssa ], [ %i.bv, %.loopexit.sink.split.loopexit6.unr-lcssa ], [ %i.cu, %.lr.ph.epil.preheader ] ; 2 uses
  %.lcssa67.sink = phi i64 [ %i.cl, %.lr.ph44.epil.preheader ], [ %i.av, %.loopexit.sink.split.loopexit.unr-lcssa ], [ %i.bw, %.loopexit.sink.split.loopexit6.unr-lcssa ], [ %i.cv, %.lr.ph.epil.preheader ] ; 2 uses
  %.ph = phi i32 [ 0, %.lr.ph44.epil.preheader ], [ 0, %.loopexit.sink.split.loopexit.unr-lcssa ], [ %i.b, %.loopexit.sink.split.loopexit6.unr-lcssa ], [ %i.b, %.lr.ph.epil.preheader ]
  %.2.ph = phi i32 [ %i.aa, %.lr.ph44.epil.preheader ], [ %i.aa, %.loopexit.sink.split.loopexit.unr-lcssa ], [ %i.w, %.loopexit.sink.split.loopexit6.unr-lcssa ], [ %i.w, %.lr.ph.epil.preheader ]
  store i32 %.lcssa68.sink, ptr @buffer2, align 4, !tbaa !9
  store i64 %.lcssa67.sink, ptr @nextchar, align 8, !tbaa !11
  %i.de = shl nuw nsw i32 %.2.ph, 1
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.sink.split, %.preheader35, %.preheader
  %i.df = phi i32 [ 0, %.preheader ], [ %i.b, %.preheader35 ], [ %.ph, %.loopexit.sink.split ] ; 3 uses
  %i.dg = phi i64 [ %nextchar.promoted41, %.preheader ], [ %nextchar.promoted, %.preheader35 ], [ %.lcssa67.sink, %.loopexit.sink.split ] ; 2 uses
  %.pre.i33 = phi i32 [ %buffer2.promoted40, %.preheader ], [ %buffer2.promoted, %.preheader35 ], [ %.lcssa68.sink, %.loopexit.sink.split ] ; 2 uses
  %.2 = phi i32 [ 0, %.preheader ], [ 0, %.preheader35 ], [ %i.de, %.loopexit.sink.split ]
  %.not = icmp eq i32 %.2, %1
  br i1 %.not, label %.loopexit._crit_edge, label %bb.f

bb.f:                                             ; preds = %.loopexit
  %i.dh = icmp slt i32 %i.df, 4
  br i1 %i.dh, label %bb.g, label %input_nybble.exit34

bb.g:                                             ; preds = %bb.f
  %i.di = shl i32 %.pre.i33, 8
  %i.dj = getelementptr inbounds i8, ptr %0, i64 %i.dg
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !12
  %i.dl = zext i8 %i.dk to i32
  %i.dm = or disjoint i32 %i.di, %i.dl            ; 2 uses
  store i32 %i.dm, ptr @buffer2, align 4, !tbaa !9
  %i.dn = add nsw i64 %i.dg, 1
  store i64 %i.dn, ptr @nextchar, align 8, !tbaa !11
  %i.do = add nsw i32 %i.df, 8
  br label %input_nybble.exit34

input_nybble.exit34:                              ; preds = %bb.f, %bb.g
  %i.dp = phi i32 [ %i.dm, %bb.g ], [ %.pre.i33, %bb.f ]
  %i.dq = phi i32 [ %i.do, %bb.g ], [ %i.df, %bb.f ]
  %i.dr = add nsw i32 %i.dq, -4                   ; 2 uses
  store i32 %i.dr, ptr @bits_to_go, align 4, !tbaa !9
  %i.ds = ashr i32 %i.dp, %i.dr
  %i.dt = trunc i32 %i.ds to i8
  %i.du = and i8 %i.dt, 15
  %i.dv = sext i32 %1 to i64
  %i.dw = getelementptr i8, ptr %2, i64 %i.dv
  %i.dx = getelementptr i8, ptr %i.dw, i64 -1
  store i8 %i.du, ptr %i.dx, align 1, !tbaa !12
  br label %.loopexit._crit_edge

.loopexit._crit_edge:                             ; preds = %input_nybble.exit34, %.loopexit, %input_nybble.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 415) i32 @qtree_decode64(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef range(i32 -1073741824, 1073741824) %3, i32 noundef range(i32 -1073741824, 1073741824) %4, i32 noundef range(i32 0, 256) %5) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 2 uses
  %i.b = sitofp i32 %i.a to float
  %i.c = fpext float %i.b to double
  %i.d = tail call double @log(double noundef %i.c) #13
  %i.e = fdiv double %i.d, f0x3FE62E42FEFA39EF
  %i.f = fadd double %i.e, 5.000000e-01
  %i.g = fptosi double %i.f to i32                ; 2 uses
  %i.h = shl nuw i32 1, %i.g
  %i.i = icmp sgt i32 %i.a, %i.h
  %i.j = zext i1 %i.i to i32
  %spec.select = add nsw i32 %i.j, %i.g
  %spec.select.fr = freeze i32 %spec.select       ; 3 uses
  %i.k = add nsw i32 %3, 1
  %i.l = sdiv i32 %i.k, 2                         ; 2 uses
  %i.m = add nsw i32 %4, 1
  %i.n = sdiv i32 %i.m, 2                         ; 2 uses
  %i.o = sext i32 %i.l to i64
  %i.p = sext i32 %i.n to i64
  %i.q = mul nsw i64 %i.p, %i.o
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.q) #14 ; 11 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %._crit_edge86, label %.lr.ph85

.lr.ph85:                                         ; preds = %.preheader
  %.06783 = add nsw i32 %5, -1                    ; 2 uses
  %i.t = shl nuw i32 1, %spec.select.fr
  %i.u = icmp sgt i32 %spec.select.fr, 1
  %i.v = mul nsw i32 %i.n, %i.l                   ; 2 uses
  br i1 %i.u, label %.lr.ph85.split.us, label %.lr.ph85.split

.lr.ph85.split.us:                                ; preds = %.lr.ph85, %._crit_edge.us
  %.06784.us = phi i32 [ %.067.us, %._crit_edge.us ], [ %.06783, %.lr.ph85 ] ; 3 uses
  %i.w = load i32, ptr @bits_to_go, align 4, !tbaa !9 ; 3 uses
  %i.x = icmp slt i32 %i.w, 4
  %.pre.i.us = load i32, ptr @buffer2, align 4, !tbaa !9 ; 2 uses
  br i1 %i.x, label %bb.b, label %input_nybble.exit.us

bb.b:                                             ; preds = %.lr.ph85.split.us
  %i.y = shl i32 %.pre.i.us, 8
  %i.z = load i64, ptr @nextchar, align 8, !tbaa !11 ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %0, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !12
  %i.ac = zext i8 %i.ab to i32
  %i.ad = or disjoint i32 %i.y, %i.ac             ; 2 uses
  store i32 %i.ad, ptr @buffer2, align 4, !tbaa !9
  %i.ae = add nsw i64 %i.z, 1
  store i64 %i.ae, ptr @nextchar, align 8, !tbaa !11
  %i.af = add nsw i32 %i.w, 8
  br label %input_nybble.exit.us

input_nybble.exit.us:                             ; preds = %bb.b, %.lr.ph85.split.us
  %i.ag = phi i32 [ %i.ad, %bb.b ], [ %.pre.i.us, %.lr.ph85.split.us ]
  %i.ah = phi i32 [ %i.af, %bb.b ], [ %i.w, %.lr.ph85.split.us ]
  %i.ai = add nsw i32 %i.ah, -4                   ; 2 uses
  store i32 %i.ai, ptr @bits_to_go, align 4, !tbaa !9
  %i.aj = ashr i32 %i.ag, %i.ai
  %i.ak = and i32 %i.aj, 15
  switch i32 %i.ak, label %.split.us [
    i32 0, label %bb.d
    i32 15, label %.lr.ph.us
  ]

.lr.ph.us:                                        ; preds = %input_nybble.exit.us
  %i.al = tail call fastcc i32 @input_huffman(ptr noundef %0)
  %i.am = trunc nuw nsw i32 %i.al to i8
  store i8 %i.am, ptr %i.r, align 1, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph.us, %bb.c
  %.082.us = phi i32 [ %i.t, %.lr.ph.us ], [ %i.an, %bb.c ]
  %.06081.us = phi i32 [ %4, %.lr.ph.us ], [ %.1.us, %bb.c ] ; 2 uses
  %.06180.us = phi i32 [ %3, %.lr.ph.us ], [ %.162.us, %bb.c ] ; 2 uses
  %.06379.us = phi i32 [ 1, %.lr.ph.us ], [ %.164.us, %bb.c ]
  %.06578.us = phi i32 [ 1, %.lr.ph.us ], [ %.166.us, %bb.c ]
  %.06877.us = phi i32 [ 1, %.lr.ph.us ], [ %i.au, %bb.c ]
  %i.an = ashr i32 %.082.us, 1                    ; 5 uses
  %i.ao = shl i32 %.06578.us, 1
  %i.ap = shl i32 %.06379.us, 1
  %.not75.us = icmp sle i32 %.06180.us, %i.an     ; 2 uses
  %i.aq = sext i1 %.not75.us to i32
  %.166.us = add nsw i32 %i.ao, %i.aq             ; 2 uses
  %i.ar = select i1 %.not75.us, i32 0, i32 %i.an
  %.162.us = sub nsw i32 %.06180.us, %i.ar
  %.not76.us = icmp sle i32 %.06081.us, %i.an     ; 2 uses
  %i.as = sext i1 %.not76.us to i32
  %.164.us = add nsw i32 %i.ap, %i.as             ; 2 uses
  %i.at = select i1 %.not76.us, i32 0, i32 %i.an
  %.1.us = sub nsw i32 %.06081.us, %i.at
  tail call fastcc void @qtree_expand(ptr noundef %0, ptr noundef %i.r, i32 noundef %.166.us, i32 noundef %.164.us, ptr noundef %i.r)
  %i.au = add nuw nsw i32 %.06877.us, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.au, %spec.select.fr
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c, !llvm.loop !89

bb.d:                                             ; preds = %input_nybble.exit.us
  tail call fastcc void @input_nnybble(ptr noundef readonly %0, i32 noundef %i.v, ptr noundef nonnull %i.r)
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.c, %bb.d
  tail call fastcc void @qtree_bitins64(ptr noundef %i.r, i32 noundef %3, i32 noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef %.06784.us)
  %.067.us = add nsw i32 %.06784.us, -1
  %i.av = icmp sgt i32 %.06784.us, 0
  br i1 %i.av, label %.lr.ph85.split.us, label %._crit_edge86, !llvm.loop !90

bb.e:                                             ; preds = %bb.a
  tail call void @ffpmsg(ptr noundef nonnull @.str.9) #13
  br label %bb.j

.lr.ph85.split:                                   ; preds = %.lr.ph85, %bb.i
  %.06784 = phi i32 [ %.067, %bb.i ], [ %.06783, %.lr.ph85 ] ; 3 uses
  %i.aw = load i32, ptr @bits_to_go, align 4, !tbaa !9 ; 3 uses
  %i.ax = icmp slt i32 %i.aw, 4
  %.pre.i = load i32, ptr @buffer2, align 4, !tbaa !9 ; 2 uses
  br i1 %i.ax, label %bb.f, label %input_nybble.exit

bb.f:                                             ; preds = %.lr.ph85.split
  %i.ay = shl i32 %.pre.i, 8
  %i.az = load i64, ptr @nextchar, align 8, !tbaa !11 ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %0, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !12
  %i.bc = zext i8 %i.bb to i32
  %i.bd = or disjoint i32 %i.ay, %i.bc            ; 2 uses
  store i32 %i.bd, ptr @buffer2, align 4, !tbaa !9
  %i.be = add nsw i64 %i.az, 1
  store i64 %i.be, ptr @nextchar, align 8, !tbaa !11
  %i.bf = add nsw i32 %i.aw, 8
  br label %input_nybble.exit

input_nybble.exit:                                ; preds = %.lr.ph85.split, %bb.f
  %i.bg = phi i32 [ %i.bd, %bb.f ], [ %.pre.i, %.lr.ph85.split ]
  %i.bh = phi i32 [ %i.bf, %bb.f ], [ %i.aw, %.lr.ph85.split ]
  %i.bi = add nsw i32 %i.bh, -4                   ; 2 uses
  store i32 %i.bi, ptr @bits_to_go, align 4, !tbaa !9
  %i.bj = ashr i32 %i.bg, %i.bi
  %i.bk = and i32 %i.bj, 15
  switch i32 %i.bk, label %.split.us [
    i32 0, label %bb.g
    i32 15, label %bb.h
  ]

bb.g:                                             ; preds = %input_nybble.exit
  tail call fastcc void @input_nnybble(ptr noundef readonly %0, i32 noundef %i.v, ptr noundef nonnull %i.r)
  br label %bb.i

.split.us:                                        ; preds = %input_nybble.exit, %input_nybble.exit.us
  tail call void @free(ptr noundef nonnull %i.r) #13
  tail call void @ffpmsg(ptr noundef nonnull @.str.10) #13
  br label %bb.j

bb.h:                                             ; preds = %input_nybble.exit
  %i.bl = tail call fastcc i32 @input_huffman(ptr noundef %0)
  %i.bm = trunc nuw nsw i32 %i.bl to i8
  store i8 %i.bm, ptr %i.r, align 1, !tbaa !12
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  tail call fastcc void @qtree_bitins64(ptr noundef %i.r, i32 noundef %3, i32 noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef %.06784)
  %.067 = add nsw i32 %.06784, -1
  %i.bn = icmp sgt i32 %.06784, 0
  br i1 %i.bn, label %.lr.ph85.split, label %._crit_edge86, !llvm.loop !90

._crit_edge86:                                    ; preds = %bb.i, %._crit_edge.us, %.preheader
  tail call void @free(ptr noundef nonnull %i.r) #13
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge86, %.split.us, %bb.e
  %.070 = phi i32 [ 414, %bb.e ], [ 414, %.split.us ], [ 0, %._crit_edge86 ]
  ret i32 %.070
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @qtree_bitins64(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef range(i32 -1073741824, 1073741824) %1, i32 noundef range(i32 -1073741824, 1073741824) %2, ptr nofree noundef %3, i32 noundef %4, i32 noundef range(i32 0, 255) %5) unnamed_addr #9 {
bb.a:
  %i.a = zext nneg i32 %5 to i64
  %i.b = shl nuw i64 1, %i.a                      ; 32 uses
  %i.c = add nsw i32 %1, -1
  %i.d = icmp sgt i32 %1, 1
  br i1 %i.d, label %.lr.ph286, label %._crit_edge287

.lr.ph286:                                        ; preds = %bb.a
  %i.e = add nsw i32 %2, -1
  %i.f = icmp sgt i32 %2, 1
  %i.g = shl i32 %4, 1
  %i.h = sext i32 %4 to i64                       ; 12 uses
  %i.i = add nsw i32 %2, -2                       ; 2 uses
  %i.j = lshr i32 %i.i, 1
  %narrow = add nuw i32 %i.j, 1
  %i.k = and i32 %i.i, -2
  %i.l = add nuw i32 %i.k, 2
  %invariant.gep = getelementptr [8 x i8], ptr %3, i64 %i.h
  %invariant.gep322 = getelementptr [8 x i8], ptr %3, i64 %i.h
  %invariant.gep324 = getelementptr [8 x i8], ptr %3, i64 %i.h
  %invariant.gep326 = getelementptr [8 x i8], ptr %3, i64 %i.h
  %invariant.gep328 = getelementptr [8 x i8], ptr %3, i64 %i.h
  %invariant.gep330 = getelementptr [8 x i8], ptr %3, i64 %i.h
  %invariant.gep332 = getelementptr [8 x i8], ptr %3, i64 %i.h
  %invariant.gep334 = getelementptr [8 x i8], ptr %3, i64 %i.h
  %invariant.gep336 = getelementptr [8 x i8], ptr %3, i64 %i.h
  %invariant.gep338 = getelementptr [8 x i8], ptr %3, i64 %i.h
  %invariant.gep340 = getelementptr [8 x i8], ptr %3, i64 %i.h
  %invariant.gep342 = getelementptr [8 x i8], ptr %3, i64 %i.h
  %i.m = insertelement <2 x i64> poison, i64 %i.b, i64 0
  %i.n = shufflevector <2 x i64> %i.m, <2 x i64> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph286, %bb.ac
  %indvars.iv = phi i32 [ 0, %.lr.ph286 ], [ %indvars.iv.next, %bb.ac ] ; 2 uses
  %.0273284 = phi i32 [ 0, %.lr.ph286 ], [ %.2, %bb.ac ] ; 3 uses
  %.0277283 = phi i32 [ 0, %.lr.ph286 ], [ %i.du, %bb.ac ] ; 2 uses
  %i.o = mul nsw i32 %.0277283, %4
  br i1 %i.f, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.p = sext i32 %indvars.iv to i64
  %i.q = sext i32 %.0273284 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.r
  %indvars.iv307 = phi i64 [ %i.q, %.lr.ph.preheader ], [ %indvars.iv.next308, %bb.r ] ; 2 uses
  %indvars.iv305 = phi i64 [ %i.p, %.lr.ph.preheader ], [ %indvars.iv.next306, %bb.r ] ; 25 uses
  %.0275278 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.cj, %bb.r ]
  %i.r = getelementptr inbounds i8, ptr %0, i64 %indvars.iv307
  %i.s = load i8, ptr %i.r, align 1, !tbaa !12
  switch i8 %i.s, label %bb.r [
    i8 15, label %bb.q
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.m
    i8 12, label %bb.n
    i8 13, label %bb.o
    i8 14, label %bb.p
  ]

bb.c:                                             ; preds = %.lr.ph
  %gep341 = getelementptr [8 x i8], ptr %invariant.gep340, i64 %indvars.iv305
  %i.t = getelementptr i8, ptr %gep341, i64 8     ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !18
  %i.v = or i64 %i.u, %i.b
  store i64 %i.v, ptr %i.t, align 8, !tbaa !18
  br label %bb.r

bb.d:                                             ; preds = %.lr.ph
  %gep339 = getelementptr [8 x i8], ptr %invariant.gep338, i64 %indvars.iv305 ; 2 uses
  %i.w = load i64, ptr %gep339, align 8, !tbaa !18
  %i.x = or i64 %i.w, %i.b
  store i64 %i.x, ptr %gep339, align 8, !tbaa !18
  br label %bb.r

bb.e:                                             ; preds = %.lr.ph
  %gep337 = getelementptr [8 x i8], ptr %invariant.gep336, i64 %indvars.iv305 ; 2 uses
  %i.y = load <2 x i64>, ptr %gep337, align 8, !tbaa !18
  %i.z = or <2 x i64> %i.y, %i.n
  store <2 x i64> %i.z, ptr %gep337, align 8, !tbaa !18
  br label %bb.r

bb.f:                                             ; preds = %.lr.ph
  %i.aa = getelementptr [8 x i8], ptr %3, i64 %indvars.iv305
  %i.ab = getelementptr i8, ptr %i.aa, i64 8      ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !18
  %i.ad = or i64 %i.ac, %i.b
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !18
  br label %bb.r

bb.g:                                             ; preds = %.lr.ph
  %gep335 = getelementptr [8 x i8], ptr %invariant.gep334, i64 %indvars.iv305
  %i.ae = getelementptr i8, ptr %gep335, i64 8    ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !18
  %i.ag = or i64 %i.af, %i.b
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !18
  %i.ah = getelementptr [8 x i8], ptr %3, i64 %indvars.iv305
  %i.ai = getelementptr i8, ptr %i.ah, i64 8      ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !18
  %i.ak = or i64 %i.aj, %i.b
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !18
  br label %bb.r

bb.h:                                             ; preds = %.lr.ph
  %gep333 = getelementptr [8 x i8], ptr %invariant.gep332, i64 %indvars.iv305 ; 2 uses
  %i.al = load i64, ptr %gep333, align 8, !tbaa !18
  %i.am = or i64 %i.al, %i.b
  store i64 %i.am, ptr %gep333, align 8, !tbaa !18
  %i.an = getelementptr [8 x i8], ptr %3, i64 %indvars.iv305
  %i.ao = getelementptr i8, ptr %i.an, i64 8      ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !18
  %i.aq = or i64 %i.ap, %i.b
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !18
  br label %bb.r

bb.i:                                             ; preds = %.lr.ph
  %gep331 = getelementptr [8 x i8], ptr %invariant.gep330, i64 %indvars.iv305 ; 2 uses
  %i.ar = load <2 x i64>, ptr %gep331, align 8, !tbaa !18
  %i.as = or <2 x i64> %i.ar, %i.n
  store <2 x i64> %i.as, ptr %gep331, align 8, !tbaa !18
  %i.at = getelementptr [8 x i8], ptr %3, i64 %indvars.iv305
  %i.au = getelementptr i8, ptr %i.at, i64 8      ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !18
  %i.aw = or i64 %i.av, %i.b
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !18
  br label %bb.r

bb.j:                                             ; preds = %.lr.ph
  %i.ax = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv305 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !18
  %i.az = or i64 %i.ay, %i.b
  store i64 %i.az, ptr %i.ax, align 8, !tbaa !18
  br label %bb.r

bb.k:                                             ; preds = %.lr.ph
  %gep329 = getelementptr [8 x i8], ptr %invariant.gep328, i64 %indvars.iv305
  %i.ba = getelementptr i8, ptr %gep329, i64 8    ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !18
  %i.bc = or i64 %i.bb, %i.b
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !18
  %i.bd = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv305 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !18
  %i.bf = or i64 %i.be, %i.b
  store i64 %i.bf, ptr %i.bd, align 8, !tbaa !18
  br label %bb.r

bb.l:                                             ; preds = %.lr.ph
  %gep327 = getelementptr [8 x i8], ptr %invariant.gep326, i64 %indvars.iv305 ; 2 uses
  %i.bg = load i64, ptr %gep327, align 8, !tbaa !18
  %i.bh = or i64 %i.bg, %i.b
  store i64 %i.bh, ptr %gep327, align 8, !tbaa !18
  %i.bi = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv305 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !18
  %i.bk = or i64 %i.bj, %i.b
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !18
  br label %bb.r

bb.m:                                             ; preds = %.lr.ph
  %gep325 = getelementptr [8 x i8], ptr %invariant.gep324, i64 %indvars.iv305 ; 2 uses
  %i.bl = load <2 x i64>, ptr %gep325, align 8, !tbaa !18
  %i.bm = or <2 x i64> %i.bl, %i.n
  store <2 x i64> %i.bm, ptr %gep325, align 8, !tbaa !18
  %i.bn = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv305 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !18
  %i.bp = or i64 %i.bo, %i.b
  store i64 %i.bp, ptr %i.bn, align 8, !tbaa !18
  br label %bb.r

bb.n:                                             ; preds = %.lr.ph
  %i.bq = getelementptr [8 x i8], ptr %3, i64 %indvars.iv305 ; 2 uses
  %i.br = load <2 x i64>, ptr %i.bq, align 8, !tbaa !18
  %i.bs = or <2 x i64> %i.br, %i.n
  store <2 x i64> %i.bs, ptr %i.bq, align 8, !tbaa !18
  br label %bb.r

bb.o:                                             ; preds = %.lr.ph
  %gep323 = getelementptr [8 x i8], ptr %invariant.gep322, i64 %indvars.iv305
  %i.bt = getelementptr i8, ptr %gep323, i64 8    ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !18
  %i.bv = or i64 %i.bu, %i.b
  store i64 %i.bv, ptr %i.bt, align 8, !tbaa !18
  %i.bw = getelementptr [8 x i8], ptr %3, i64 %indvars.iv305 ; 2 uses
  %i.bx = load <2 x i64>, ptr %i.bw, align 8, !tbaa !18
  %i.by = or <2 x i64> %i.bx, %i.n
  store <2 x i64> %i.by, ptr %i.bw, align 8, !tbaa !18
  br label %bb.r

bb.p:                                             ; preds = %.lr.ph
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv305 ; 2 uses
  %i.bz = load i64, ptr %gep, align 8, !tbaa !18
  %i.ca = or i64 %i.bz, %i.b
  store i64 %i.ca, ptr %gep, align 8, !tbaa !18
  %i.cb = getelementptr [8 x i8], ptr %3, i64 %indvars.iv305 ; 2 uses
  %i.cc = load <2 x i64>, ptr %i.cb, align 8, !tbaa !18
  %i.cd = or <2 x i64> %i.cc, %i.n
  store <2 x i64> %i.cd, ptr %i.cb, align 8, !tbaa !18
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph
  %gep343 = getelementptr [8 x i8], ptr %invariant.gep342, i64 %indvars.iv305 ; 2 uses
  %i.ce = load <2 x i64>, ptr %gep343, align 8, !tbaa !18
  %i.cf = or <2 x i64> %i.ce, %i.n
  store <2 x i64> %i.cf, ptr %gep343, align 8, !tbaa !18
  %i.cg = getelementptr [8 x i8], ptr %3, i64 %indvars.iv305 ; 2 uses
  %i.ch = load <2 x i64>, ptr %i.cg, align 8, !tbaa !18
  %i.ci = or <2 x i64> %i.ch, %i.n
  store <2 x i64> %i.ci, ptr %i.cg, align 8, !tbaa !18
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %.lr.ph
  %indvars.iv.next306 = add nsw i64 %indvars.iv305, 2 ; 2 uses
  %indvars.iv.next308 = add nsw i64 %indvars.iv307, 1
  %i.cj = add nuw nsw i32 %.0275278, 2            ; 2 uses
  %i.ck = icmp slt i32 %i.cj, %i.e
  br i1 %i.ck, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !91

._crit_edge.loopexit:                             ; preds = %bb.r
  %i.cl = add i32 %narrow, %.0273284
  %i.cm = trunc nsw i64 %indvars.iv.next306 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.0275.lcssa = phi i32 [ 0, %bb.b ], [ %i.l, %._crit_edge.loopexit ]
  %.1274.lcssa = phi i32 [ %.0273284, %bb.b ], [ %i.cl, %._crit_edge.loopexit ] ; 3 uses
  %.0.lcssa = phi i32 [ %i.o, %bb.b ], [ %i.cm, %._crit_edge.loopexit ] ; 16 uses
  %i.cn = icmp slt i32 %.0275.lcssa, %2
  br i1 %i.cn, label %bb.s, label %bb.ac

bb.s:                                             ; preds = %._crit_edge
  %i.co = sext i32 %.1274.lcssa to i64
  %i.cp = getelementptr inbounds i8, ptr %0, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !12
  switch i8 %i.cq, label %bb.ab [
    i8 15, label %bb.aa
    i8 14, label %bb.z
    i8 2, label %bb.t
    i8 3, label %bb.u
    i8 13, label %.sink.split
    i8 12, label %.sink.split
    i8 6, label %bb.v
    i8 7, label %bb.w
    i8 8, label %.sink.split
    i8 9, label %.sink.split
    i8 10, label %bb.x
    i8 11, label %bb.y
  ]

bb.t:                                             ; preds = %bb.s
  %i.cr = add nsw i32 %.0.lcssa, %4
  br label %.sink.split

bb.u:                                             ; preds = %bb.s
  %i.cs = add nsw i32 %.0.lcssa, %4
  br label %.sink.split

bb.v:                                             ; preds = %bb.s
  %i.ct = add nsw i32 %.0.lcssa, %4
  br label %.sink.split

bb.w:                                             ; preds = %bb.s
  %i.cu = add nsw i32 %.0.lcssa, %4
  br label %.sink.split

bb.x:                                             ; preds = %bb.s
  %i.cv = add nsw i32 %.0.lcssa, %4
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [8 x i8], ptr %3, i64 %i.cw ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !18
  %i.cz = or i64 %i.cy, %i.b
  store i64 %i.cz, ptr %i.cx, align 8, !tbaa !18
  br label %.sink.split

bb.y:                                             ; preds = %bb.s
  %i.da = add nsw i32 %.0.lcssa, %4
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [8 x i8], ptr %3, i64 %i.db ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !18
  %i.de = or i64 %i.dd, %i.b
  store i64 %i.de, ptr %i.dc, align 8, !tbaa !18
  br label %.sink.split

bb.z:                                             ; preds = %bb.s
  %i.df = add nsw i32 %.0.lcssa, %4
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds [8 x i8], ptr %3, i64 %i.dg ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !18
  %i.dj = or i64 %i.di, %i.b
  store i64 %i.dj, ptr %i.dh, align 8, !tbaa !18
  br label %.sink.split

bb.aa:                                            ; preds = %bb.s
  %i.dk = add nsw i32 %.0.lcssa, %4
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds [8 x i8], ptr %3, i64 %i.dl ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !18
  %i.do = or i64 %i.dn, %i.b
  store i64 %i.do, ptr %i.dm, align 8, !tbaa !18
  br label %.sink.split

.sink.split:                                      ; preds = %bb.s, %bb.s, %bb.s, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa
  %.0.lcssa.sink = phi i32 [ %.0.lcssa, %bb.aa ], [ %.0.lcssa, %bb.z ], [ %i.cu, %bb.w ], [ %i.ct, %bb.v ], [ %.0.lcssa, %bb.y ], [ %.0.lcssa, %bb.x ], [ %i.cs, %bb.u ], [ %i.cr, %bb.t ], [ %.0.lcssa, %bb.s ], [ %.0.lcssa, %bb.s ], [ %.0.lcssa, %bb.s ], [ %.0.lcssa, %bb.s ]
  %i.dp = sext i32 %.0.lcssa.sink to i64
  %i.dq = getelementptr inbounds [8 x i8], ptr %3, i64 %i.dp ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !18
  %i.ds = or i64 %i.dr, %i.b
  store i64 %i.ds, ptr %i.dq, align 8, !tbaa !18
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split, %bb.s
  %i.dt = add nsw i32 %.1274.lcssa, 1
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge, %bb.ab
  %.2 = phi i32 [ %i.dt, %bb.ab ], [ %.1274.lcssa, %._crit_edge ] ; 2 uses
  %i.du = add nuw nsw i32 %.0277283, 2            ; 3 uses
  %i.dv = icmp slt i32 %i.du, %i.c
  %indvars.iv.next = add i32 %indvars.iv, %i.g
  br i1 %i.dv, label %bb.b, label %._crit_edge287, !llvm.loop !92

._crit_edge287:                                   ; preds = %bb.ac, %bb.a
  %.0277.lcssa = phi i32 [ 0, %bb.a ], [ %i.du, %bb.ac ] ; 2 uses
  %.0273.lcssa = phi i32 [ 0, %bb.a ], [ %.2, %bb.ac ] ; 3 uses
  %i.dw = icmp slt i32 %.0277.lcssa, %1
  br i1 %i.dw, label %bb.ad, label %bb.as

bb.ad:                                            ; preds = %._crit_edge287
  %i.dx = mul i32 %.0277.lcssa, %4                ; 2 uses
  %i.dy = add nsw i32 %2, -1
  %i.dz = icmp sgt i32 %2, 1
  br i1 %i.dz, label %.lr.ph294.preheader, label %._crit_edge295

.lr.ph294.preheader:                              ; preds = %bb.ad
  %i.ea = sext i32 %i.dx to i64
  %i.eb = sext i32 %.0273.lcssa to i64
  %i.ec = insertelement <2 x i64> poison, i64 %i.b, i64 0
  %i.ed = shufflevector <2 x i64> %i.ec, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  br label %.lr.ph294

.lr.ph294:                                        ; preds = %.lr.ph294.preheader, %bb.aq
  %indvars.iv314 = phi i64 [ %i.eb, %.lr.ph294.preheader ], [ %indvars.iv.next315, %bb.aq ] ; 2 uses
  %indvars.iv312 = phi i64 [ %i.ea, %.lr.ph294.preheader ], [ %indvars.iv.next313, %bb.aq ] ; 13 uses
  %.1276290 = phi i32 [ 0, %.lr.ph294.preheader ], [ %i.fu, %bb.aq ]
  %i.ee = getelementptr inbounds i8, ptr %0, i64 %indvars.iv314
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !12
  switch i8 %i.ef, label %bb.aq [
    i8 15, label %bb.ap
    i8 14, label %bb.ao
    i8 13, label %bb.an
    i8 12, label %bb.am
    i8 4, label %bb.ae
    i8 5, label %bb.af
    i8 6, label %bb.ag
    i8 7, label %bb.ah
    i8 8, label %bb.ai
    i8 9, label %bb.aj
    i8 10, label %bb.ak
    i8 11, label %bb.al
  ]

bb.ae:                                            ; preds = %.lr.ph294
  %i.eg = getelementptr [8 x i8], ptr %3, i64 %indvars.iv312
  %i.eh = getelementptr i8, ptr %i.eg, i64 8      ; 2 uses
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !18
  %i.ej = or i64 %i.ei, %i.b
  store i64 %i.ej, ptr %i.eh, align 8, !tbaa !18
  br label %bb.aq

bb.af:                                            ; preds = %.lr.ph294
  %i.ek = getelementptr [8 x i8], ptr %3, i64 %indvars.iv312
  %i.el = getelementptr i8, ptr %i.ek, i64 8      ; 2 uses
  %i.em = load i64, ptr %i.el, align 8, !tbaa !18
  %i.en = or i64 %i.em, %i.b
  store i64 %i.en, ptr %i.el, align 8, !tbaa !18
  br label %bb.aq

bb.ag:                                            ; preds = %.lr.ph294
  %i.eo = getelementptr [8 x i8], ptr %3, i64 %indvars.iv312
  %i.ep = getelementptr i8, ptr %i.eo, i64 8      ; 2 uses
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !18
  %i.er = or i64 %i.eq, %i.b
  store i64 %i.er, ptr %i.ep, align 8, !tbaa !18
  br label %bb.aq

bb.ah:                                            ; preds = %.lr.ph294
  %i.es = getelementptr [8 x i8], ptr %3, i64 %indvars.iv312
  %i.et = getelementptr i8, ptr %i.es, i64 8      ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !18
  %i.ev = or i64 %i.eu, %i.b
  store i64 %i.ev, ptr %i.et, align 8, !tbaa !18
  br label %bb.aq

bb.ai:                                            ; preds = %.lr.ph294
  %i.ew = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv312 ; 2 uses
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !18
  %i.ey = or i64 %i.ex, %i.b
  store i64 %i.ey, ptr %i.ew, align 8, !tbaa !18
  br label %bb.aq

bb.aj:                                            ; preds = %.lr.ph294
  %i.ez = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv312 ; 2 uses
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !18
  %i.fb = or i64 %i.fa, %i.b
  store i64 %i.fb, ptr %i.ez, align 8, !tbaa !18
  br label %bb.aq

bb.ak:                                            ; preds = %.lr.ph294
  %i.fc = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv312 ; 2 uses
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !18
  %i.fe = or i64 %i.fd, %i.b
  store i64 %i.fe, ptr %i.fc, align 8, !tbaa !18
  br label %bb.aq

bb.al:                                            ; preds = %.lr.ph294
  %i.ff = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv312 ; 2 uses
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !18
  %i.fh = or i64 %i.fg, %i.b
  store i64 %i.fh, ptr %i.ff, align 8, !tbaa !18
  br label %bb.aq

bb.am:                                            ; preds = %.lr.ph294
  %i.fi = getelementptr [8 x i8], ptr %3, i64 %indvars.iv312 ; 2 uses
  %i.fj = load <2 x i64>, ptr %i.fi, align 8, !tbaa !18
  %i.fk = or <2 x i64> %i.fj, %i.ed
  store <2 x i64> %i.fk, ptr %i.fi, align 8, !tbaa !18
  br label %bb.aq

bb.an:                                            ; preds = %.lr.ph294
  %i.fl = getelementptr [8 x i8], ptr %3, i64 %indvars.iv312 ; 2 uses
  %i.fm = load <2 x i64>, ptr %i.fl, align 8, !tbaa !18
  %i.fn = or <2 x i64> %i.fm, %i.ed
  store <2 x i64> %i.fn, ptr %i.fl, align 8, !tbaa !18
  br label %bb.aq

bb.ao:                                            ; preds = %.lr.ph294
  %i.fo = getelementptr [8 x i8], ptr %3, i64 %indvars.iv312 ; 2 uses
  %i.fp = load <2 x i64>, ptr %i.fo, align 8, !tbaa !18
  %i.fq = or <2 x i64> %i.fp, %i.ed
  store <2 x i64> %i.fq, ptr %i.fo, align 8, !tbaa !18
  br label %bb.aq

bb.ap:                                            ; preds = %.lr.ph294
  %i.fr = getelementptr [8 x i8], ptr %3, i64 %indvars.iv312 ; 2 uses
  %i.fs = load <2 x i64>, ptr %i.fr, align 8, !tbaa !18
  %i.ft = or <2 x i64> %i.fs, %i.ed
  store <2 x i64> %i.ft, ptr %i.fr, align 8, !tbaa !18
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %.lr.ph294
  %indvars.iv.next313 = add nsw i64 %indvars.iv312, 2 ; 2 uses
  %indvars.iv.next315 = add nsw i64 %indvars.iv314, 1
  %i.fu = add nuw nsw i32 %.1276290, 2            ; 2 uses
  %i.fv = icmp slt i32 %i.fu, %i.dy
  br i1 %i.fv, label %.lr.ph294, label %._crit_edge295.loopexit, !llvm.loop !93

._crit_edge295.loopexit:                          ; preds = %bb.aq
  %i.fw = add nsw i32 %2, -2                      ; 2 uses
  %i.fx = lshr i32 %i.fw, 1
  %i.fy = add i32 %i.fx, %.0273.lcssa
  %i.fz = add i32 %i.fy, 1
  %i.ga = and i32 %i.fw, -2
  %i.gb = add nuw nsw i32 %i.ga, 2
  %i.gc = trunc nsw i64 %indvars.iv.next313 to i32
  br label %._crit_edge295

._crit_edge295:                                   ; preds = %._crit_edge295.loopexit, %bb.ad
  %.1276.lcssa = phi i32 [ 0, %bb.ad ], [ %i.gb, %._crit_edge295.loopexit ]
  %.3.lcssa = phi i32 [ %.0273.lcssa, %bb.ad ], [ %i.fz, %._crit_edge295.loopexit ]
  %.1.lcssa = phi i32 [ %i.dx, %bb.ad ], [ %i.gc, %._crit_edge295.loopexit ]
  %i.gd = icmp slt i32 %.1276.lcssa, %2
  br i1 %i.gd, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %._crit_edge295
  %i.ge = sext i32 %.3.lcssa to i64
  %i.gf = getelementptr inbounds i8, ptr %0, i64 %i.ge
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !12
  %i.gh = and i8 %i.gg, -8
  %switch = icmp eq i8 %i.gh, 8
  br i1 %switch, label %.sink.split347, label %bb.as

.sink.split347:                                   ; preds = %bb.ar
  %i.gi = sext i32 %.1.lcssa to i64
  %i.gj = getelementptr inbounds [8 x i8], ptr %3, i64 %i.gi ; 2 uses
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !18
  %i.gl = or i64 %i.gk, %i.b
  store i64 %i.gl, ptr %i.gj, align 8, !tbaa !18
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %.sink.split347, %._crit_edge295, %._crit_edge287
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!6, !6, i64 0}
!10 = !{!"long", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!5, !5, i64 0}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = !{!"long long", !5, i64 0}
!18 = !{!17, !17, i64 0}
!19 = distinct !{!19, !13}
!20 = distinct !{!20, !13, !14, !15}
!21 = distinct !{!21, !13, !15, !14}
!22 = distinct !{!22, !16}
!23 = distinct !{!23, !13}
!24 = distinct !{!24, !13}
!25 = distinct !{!25, !16}
!26 = distinct !{!26, !13}
!27 = distinct !{!27, !16}
!28 = distinct !{!28, !13}
!29 = distinct !{!29, !16}
!30 = distinct !{!30, !16}
!31 = distinct !{!31, !13}
!32 = distinct !{!32, !13}
!33 = distinct !{!33, !13}
!34 = distinct !{!34, !13}
!35 = distinct !{!35, !13}
!36 = distinct !{!36, !13}
!37 = distinct !{!37, !13}
!38 = distinct !{!38, i1 false, !"LVerDomain"}
!39 = distinct !{!39, !38}
!40 = distinct !{!40, !38}
!41 = distinct !{!41, !13, !14, !15}
!42 = distinct !{!42, !13, !14}
!43 = distinct !{!43, !13}
!44 = distinct !{!44, !13, !14, !15}
!45 = distinct !{!45, !13, !15, !14}
!46 = distinct !{!46, !13}
!47 = !{!39}
!48 = !{!40}
!49 = distinct !{!49, !13}
!50 = distinct !{!50, !13}
!51 = distinct !{!51, !16}
!52 = distinct !{!52, !13}
!53 = distinct !{!53, !13}
!54 = distinct !{!54, !16}
!55 = distinct !{!55, !13}
!56 = distinct !{!56, !16}
!57 = distinct !{!57, !13}
!58 = distinct !{!58, !16}
!59 = distinct !{!59, !16}
!60 = distinct !{!60, !13}
!61 = distinct !{!61, !13}
!62 = distinct !{!62, !13}
!63 = distinct !{!63, !13}
!64 = distinct !{!64, !13}
!65 = distinct !{!65, !13}
!66 = distinct !{!66, !13}
!67 = distinct !{!67, !13}
!68 = distinct !{!68, !13}
!69 = distinct !{!69, !13}
!70 = distinct !{!70, !13}
!71 = distinct !{!71, !13, !14, !15}
!72 = distinct !{!72, !13, !15, !14}
!73 = distinct !{!73, !13}
!74 = distinct !{!74, !13}
!75 = distinct !{!75, !13}
!76 = distinct !{!76, !13}
!77 = distinct !{!77, !13}
!78 = distinct !{!78, !13, !14, !15}
!79 = distinct !{!79, !13, !15, !14}
!80 = distinct !{!80, !13}
!81 = distinct !{!81, !13, !14, !15}
!82 = distinct !{!82, !13, !15, !14}
!83 = distinct !{!83, !13}
!84 = distinct !{!84, !13}
!85 = distinct !{!85, !13}
!86 = distinct !{!86, !13}
!87 = distinct !{!87, !13}
!88 = distinct !{!88, !13}
!89 = distinct !{!89, !13}
!90 = distinct !{!90, !13}
!91 = distinct !{!91, !13}
!92 = distinct !{!92, !13}
!93 = distinct !{!93, !13}
end_hunk_0
