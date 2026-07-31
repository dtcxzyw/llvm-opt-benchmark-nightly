inline.NumInlined: 4879
inline.NumDeleted: 1465
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 53
begin_hunk_0_@oiio_stbsp_vsprintfcb:bb.a
  store i8 %i.sg, ptr %i.si, align 1, !tbaa !7
  %i.sj = sdiv i32 %i.sa, 10                      ; 2 uses
  %i.sk = srem i32 %i.sj, 10
  %i.sl = trunc nsw i32 %i.sk to i8
  %i.sm = add nsw i8 %i.sl, 48
  %i.sn = getelementptr i8, ptr %i.d, i64 %i.sh
  %i.so = getelementptr i8, ptr %i.sn, i64 -1
  store i8 %i.sm, ptr %i.so, align 1, !tbaa !7
  br i1 %i.sb, label %bb.ck, label %.loopexit1472

bb.ck:                                            ; preds = %bb.cj
  %i.sp = sdiv i32 %i.sa, 100                     ; 2 uses
  %i.sq = srem i32 %i.sp, 10
  %i.sr = trunc nsw i32 %i.sq to i8
  %i.ss = add nsw i8 %i.sr, 48
  %i.st = getelementptr i8, ptr %i.d, i64 %i.sh
  %i.su = getelementptr i8, ptr %i.st, i64 -2
  store i8 %i.ss, ptr %i.su, align 1, !tbaa !7
  br label %.loopexit1472

bb.cl:                                            ; preds = %bb.ai
  %i.sv = load i32, ptr %i.n, align 4             ; 3 uses
  %i.sw = icmp ult i32 %i.sv, 161
  br i1 %i.sw, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.sx = load ptr, ptr %i.i, align 8
  %i.sy = zext nneg i32 %i.sv to i64
  %i.sz = getelementptr i8, ptr %i.sx, i64 %i.sy
  %i.ta = add nuw nsw i32 %i.sv, 16
  store i32 %i.ta, ptr %i.n, align 4
  br label %bb.co

bb.cn:                                            ; preds = %bb.cl
  %i.tb = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.tc = getelementptr i8, ptr %i.tb, i64 8
  store ptr %i.tc, ptr %i.h, align 8
  br label %bb.co

bb.co:                                            ; preds = %bb.cm, %bb.cn
  %i.td = phi ptr [ %i.sz, %bb.cm ], [ %i.tb, %bb.cn ]
  %i.te = load double, ptr %i.td, align 8, !tbaa !20 ; 2 uses
  %.pre2077 = and i32 %.3839, 256
  %i.tf = icmp eq i32 %.pre2077, 0
  br i1 %i.tf, label %.loopexit1481, label %bb.cp

bb.cp:                                            ; preds = %.thread2175, %bb.co
  %.58162182 = phi i32 [ %.10821, %.thread2175 ], [ %.1812, %bb.co ] ; 9 uses
  %.78432181 = phi i32 [ %.16852, %.thread2175 ], [ %.3839, %bb.co ] ; 11 uses
  %.09592180 = phi double [ %i.aeq, %.thread2175 ], [ %i.te, %bb.co ] ; 5 uses
  %i.tg = and i32 %.78432181, 2048
  %.not1105 = icmp eq i32 %i.tg, 0
  %spec.store.select26 = select i1 %.not1105, double 1.000000e+03, double 1.024000e+03 ; 9 uses
  %i.th = icmp ult i32 %.78432181, 67108864
  br i1 %i.th, label %.lr.ph1599, label %.loopexit1481

.lr.ph1599:                                       ; preds = %bb.cp
  %i.ti = fneg double %spec.store.select26        ; 4 uses
  %i.tj = fcmp olt double %.09592180, %spec.store.select26
  %i.tk = fcmp ogt double %.09592180, %i.ti
  %or.cond1190 = and i1 %i.tj, %i.tk
  br i1 %or.cond1190, label %.loopexit1481, label %bb.cq

bb.cq:                                            ; preds = %.lr.ph1599
  %i.tl = fdiv double %.09592180, %spec.store.select26 ; 5 uses
  %i.tm = add nuw nsw i32 %.78432181, 16777216    ; 2 uses
  %i.tn = icmp ult i32 %.78432181, 50331648
  br i1 %i.tn, label %bb.cr, label %.loopexit1481

bb.cr:                                            ; preds = %bb.cq
  %i.to = fcmp olt double %i.tl, %spec.store.select26
  %i.tp = fcmp ogt double %i.tl, %i.ti
  %or.cond1190.1 = and i1 %i.to, %i.tp
  br i1 %or.cond1190.1, label %.loopexit1481, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.tq = fdiv double %i.tl, %spec.store.select26 ; 5 uses
  %i.tr = add nuw nsw i32 %.78432181, 33554432    ; 2 uses
  %i.ts = icmp ult i32 %.78432181, 33554432
  br i1 %i.ts, label %bb.ct, label %.loopexit1481

bb.ct:                                            ; preds = %bb.cs
  %i.tt = fcmp olt double %i.tq, %spec.store.select26
  %i.tu = fcmp ogt double %i.tq, %i.ti
  %or.cond1190.2 = and i1 %i.tt, %i.tu
  br i1 %or.cond1190.2, label %.loopexit1481, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.tv = fdiv double %i.tq, %spec.store.select26 ; 5 uses
  %i.tw = add nuw nsw i32 %.78432181, 50331648    ; 2 uses
  %i.tx = icmp ult i32 %.78432181, 16777216
  br i1 %i.tx, label %bb.cv, label %.loopexit1481

bb.cv:                                            ; preds = %bb.cu
  %i.ty = fcmp olt double %i.tv, %spec.store.select26
  %i.tz = fcmp ogt double %i.tv, %i.ti
  %or.cond1190.3 = and i1 %i.ty, %i.tz
  br i1 %or.cond1190.3, label %.loopexit1481, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.ua = fdiv double %i.tv, %spec.store.select26
  %i.ub = or disjoint i32 %.78432181, 67108864
  br label %.loopexit1481

.loopexit1481:                                    ; preds = %.lr.ph1599, %bb.cq, %bb.cr, %bb.cs, %bb.ct, %bb.cu, %bb.cv, %bb.cw, %bb.cp, %bb.co
  %.58162183 = phi i32 [ %.1812, %bb.co ], [ %.58162182, %bb.cp ], [ %.58162182, %bb.cw ], [ %.58162182, %bb.cv ], [ %.58162182, %bb.cu ], [ %.58162182, %bb.ct ], [ %.58162182, %bb.cs ], [ %.58162182, %bb.cr ], [ %.58162182, %bb.cq ], [ %.58162182, %.lr.ph1599 ] ; 2 uses
  %.2961 = phi double [ %i.te, %bb.co ], [ %.09592180, %bb.cp ], [ %.09592180, %.lr.ph1599 ], [ %i.tl, %bb.cq ], [ %i.tl, %bb.cr ], [ %i.tq, %bb.cs ], [ %i.tq, %bb.ct ], [ %i.tv, %bb.cu ], [ %i.tv, %bb.cv ], [ %i.ua, %bb.cw ]
  %.9845 = phi i32 [ %.3839, %bb.co ], [ %.78432181, %bb.cp ], [ %.78432181, %.lr.ph1599 ], [ %i.tm, %bb.cq ], [ %i.tm, %bb.cr ], [ %i.tr, %bb.cs ], [ %i.tr, %bb.ct ], [ %i.tw, %bb.cu ], [ %i.tw, %bb.cv ], [ %i.ub, %bb.cw ] ; 2 uses
  %i.uc = icmp eq i32 %.58162183, -1
  %spec.store.select27 = select i1 %i.uc, i32 6, i32 %.58162183 ; 2 uses
  %i.ud = call fastcc noundef i32 @_ZL18stbsp__real_to_strPPKcPjPcPidj(ptr noundef %i.g, ptr noundef %i.e, ptr noundef %i.a, ptr noundef %i.f, double noundef %.2961, i32 noundef %spec.store.select27)
  %.not1106 = icmp eq i32 %i.ud, 0
  %i.ue = or i32 %.9845, 128
  %spec.select1191 = select i1 %.not1106, i32 %.9845, i32 %i.ue
  br label %bb.cx

bb.cx:                                            ; preds = %.loopexit1481, %bb.bt, %bb.bu
  %.10846 = phi i32 [ %.5841, %bb.bt ], [ %.5841, %bb.bu ], [ %spec.select1191, %.loopexit1481 ] ; 13 uses
  %.6817 = phi i32 [ %i.on, %bb.bt ], [ %i.op, %bb.bu ], [ %spec.store.select27, %.loopexit1481 ] ; 12 uses
  store i8 0, ptr %i.d, align 1, !tbaa !7
  store i8 0, ptr %i.c, align 1, !tbaa !7
  %i.uf = and i32 %.10846, 128
  %.not.i1239 = icmp eq i32 %i.uf, 0
  br i1 %.not.i1239, label %bb.cy, label %.sink.split.i1240

bb.cy:                                            ; preds = %bb.cx
  %i.ug = and i32 %.10846, 4
  %.not9.i1242 = icmp eq i32 %i.ug, 0
  br i1 %.not9.i1242, label %bb.cz, label %.sink.split.i1240

bb.cz:                                            ; preds = %bb.cy
  %i.uh = and i32 %.10846, 2
  %.not10.i1243 = icmp eq i32 %i.uh, 0
  br i1 %.not10.i1243, label %_ZL16stbsp__lead_signjPc.exit1244, label %.sink.split.i1240

.sink.split.i1240:                                ; preds = %bb.cz, %bb.cy, %bb.cx
  %.sink.i1241 = phi i8 [ 45, %bb.cx ], [ 32, %bb.cy ], [ 43, %bb.cz ]
  store i8 1, ptr %i.c, align 1, !tbaa !7
  store i8 %.sink.i1241, ptr %i.j, align 1, !tbaa !7
  br label %_ZL16stbsp__lead_signjPc.exit1244

_ZL16stbsp__lead_signjPc.exit1244:                ; preds = %bb.cz, %.sink.split.i1240
  %i.ui = load i32, ptr %i.f, align 4, !tbaa !3   ; 5 uses
  %i.uj = icmp eq i32 %i.ui, 28672
  br i1 %i.uj, label %bb.da, label %bb.db

bb.da:                                            ; preds = %_ZL16stbsp__lead_signjPc.exit1244
  %i.uk = load ptr, ptr %i.g, align 8, !tbaa !13
  br label %bb.gg

bb.db:                                            ; preds = %_ZL16stbsp__lead_signjPc.exit1244
  %i.ul = icmp slt i32 %i.ui, 1
  br i1 %i.ul, label %bb.dc, label %bb.dh

bb.dc:                                            ; preds = %bb.db
  store i8 48, ptr %i.o, align 16, !tbaa !7
  %.not1118 = icmp eq i32 %.6817, 0
  br i1 %.not1118, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.um = load i8, ptr @_ZL13stbsp__period, align 1, !tbaa !7
  store i8 %i.um, ptr %i.q, align 1, !tbaa !7
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %.4882 = phi ptr [ %i.r, %bb.dd ], [ %i.q, %bb.dc ]
  %.4882.fr = freeze ptr %.4882                   ; 4 uses
  %i.un = sub nsw i32 0, %i.ui
  %spec.select1192 = call i32 @llvm.smin.i32(i32 %.6817, i32 %i.un) ; 7 uses
  %.not11191643 = icmp eq i32 %spec.select1192, 0
  %i.uo = ptrtoint ptr %.4882.fr to i64           ; 2 uses
  %i.up = and i64 %i.uo, 3
  %i.uq = icmp eq i64 %i.up, 0
  %or.cond11951644 = or i1 %.not11191643, %i.uq
  br i1 %or.cond11951644, label %.preheader1474, label %.lr.ph1648.preheader

.lr.ph1648.preheader:                             ; preds = %bb.de
  %i.ur = trunc i64 %i.uo to i2
  %i.us = xor i2 %i.ur, -1                        ; 2 uses
  %i.ut = zext i2 %i.us to i64
  %i.uu = add i32 %spec.select1192, -1            ; 2 uses
  %i.uv = zext i32 %i.uu to i64
  %umin1999 = call i64 @llvm.umin.i64(i64 %i.ut, i64 %i.uv) ; 2 uses
  %i.uw = add nuw nsw i64 %umin1999, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.4882.fr, i8 48, i64 %i.uw, i1 false), !tbaa !7
  %scevgep2000 = getelementptr i8, ptr %.4882.fr, i64 1
  %scevgep2002 = getelementptr i8, ptr %scevgep2000, i64 %umin1999
  %i.ux = zext i2 %i.us to i32
  %i.uy = call i32 @llvm.usub.sat.i32(i32 %i.uu, i32 %i.ux)
  br label %.preheader1474

.preheader1474:                                   ; preds = %.lr.ph1648.preheader, %bb.de
  %.0962.lcssa = phi i32 [ %spec.select1192, %bb.de ], [ %i.uy, %.lr.ph1648.preheader ] ; 4 uses
  %.5883.lcssa = phi ptr [ %.4882.fr, %bb.de ], [ %scevgep2002, %.lr.ph1648.preheader ] ; 3 uses
  %i.uz = icmp sgt i32 %.0962.lcssa, 3
  br i1 %i.uz, label %.lr.ph1653.preheader, label %.preheader1473

.lr.ph1653.preheader:                             ; preds = %.preheader1474
  %i.va = call i32 @llvm.usub.sat.i32(i32 %.0962.lcssa, i32 7)
  %i.vb = add nuw i32 %i.va, 3                    ; 2 uses
  %i.vc = and i32 %i.vb, -4
  %i.vd = zext nneg i32 %i.vc to i64              ; 2 uses
  %i.ve = add nuw nsw i64 %i.vd, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.5883.lcssa, i8 48, i64 %i.ve, i1 false), !tbaa !3
  %scevgep2004 = getelementptr i8, ptr %.5883.lcssa, i64 4
  %scevgep2006 = getelementptr i8, ptr %scevgep2004, i64 %i.vd
  %i.vf = add nsw i32 %.0962.lcssa, -4
  %i.vg = and i32 %i.vb, -4
  %i.vh = sub nsw i32 %i.vf, %i.vg
  br label %.preheader1473

.preheader1473:                                   ; preds = %.lr.ph1653.preheader, %.preheader1474
  %.1963.lcssa = phi i32 [ %.0962.lcssa, %.preheader1474 ], [ %i.vh, %.lr.ph1653.preheader ] ; 3 uses
  %.6884.lcssa = phi ptr [ %.5883.lcssa, %.preheader1474 ], [ %scevgep2006, %.lr.ph1653.preheader ] ; 3 uses
  %.not11201656 = icmp eq i32 %.1963.lcssa, 0
  br i1 %.not11201656, label %._crit_edge1660, label %.lr.ph1659.preheader

.lr.ph1659.preheader:                             ; preds = %.preheader1473
  %i.vi = zext i32 %.1963.lcssa to i64
  call void @llvm.memset.p0.i64(ptr align 1 %.6884.lcssa, i8 48, i64 %i.vi, i1 false), !tbaa !7
  %scevgep2007 = getelementptr i8, ptr %.6884.lcssa, i64 1
  %i.vj = add i32 %.1963.lcssa, -1
  %i.vk = zext i32 %i.vj to i64
  %scevgep2008 = getelementptr i8, ptr %scevgep2007, i64 %i.vk
  br label %._crit_edge1660

._crit_edge1660:                                  ; preds = %.lr.ph1659.preheader, %.preheader1473
  %.7885.lcssa = phi ptr [ %.6884.lcssa, %.preheader1473 ], [ %scevgep2008, %.lr.ph1659.preheader ] ; 3 uses
  %i.vl = load i32, ptr %i.e, align 4, !tbaa !3   ; 2 uses
  %i.vm = add i32 %i.vl, %spec.select1192         ; 2 uses
  %i.vn = icmp sgt i32 %i.vm, %.6817
  br i1 %i.vn, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %._crit_edge1660
  %i.vo = sub i32 %.6817, %spec.select1192        ; 2 uses
  store i32 %i.vo, ptr %i.e, align 4, !tbaa !3
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %._crit_edge1660
  %i.vp = phi i32 [ %i.vo, %bb.df ], [ %i.vl, %._crit_edge1660 ] ; 5 uses
  %.not11211662 = icmp eq i32 %i.vp, 0
  br i1 %.not11211662, label %._crit_edge1667, label %.lr.ph1666.preheader

.lr.ph1666.preheader:                             ; preds = %bb.dg
  %smin = call i32 @llvm.smin.i32(i32 %.6817, i32 %i.vm)
  %xtraiter = and i32 %i.vp, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph1666.prol.loopexit, label %.lr.ph1666.prol

.lr.ph1666.prol:                                  ; preds = %.lr.ph1666.preheader, %.lr.ph1666.prol
  %.88861664.prol = phi ptr [ %i.vt, %.lr.ph1666.prol ], [ %.7885.lcssa, %.lr.ph1666.preheader ] ; 2 uses
  %.39651663.prol = phi i32 [ %i.vu, %.lr.ph1666.prol ], [ %i.vp, %.lr.ph1666.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph1666.prol ], [ 0, %.lr.ph1666.preheader ]
  %i.vq = load ptr, ptr %i.g, align 8, !tbaa !13  ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 1
  store ptr %i.vr, ptr %i.g, align 8, !tbaa !13
  %i.vs = load i8, ptr %i.vq, align 1, !tbaa !7
  %i.vt = getelementptr inbounds nuw i8, ptr %.88861664.prol, i64 1 ; 3 uses
  store i8 %i.vs, ptr %.88861664.prol, align 1, !tbaa !7
  %i.vu = add nsw i32 %.39651663.prol, -1         ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph1666.prol.loopexit, label %.lr.ph1666.prol, !llvm.loop !33

.lr.ph1666.prol.loopexit:                         ; preds = %.lr.ph1666.prol, %.lr.ph1666.preheader
  %.lcssa2484.unr = phi ptr [ poison, %.lr.ph1666.preheader ], [ %i.vt, %.lr.ph1666.prol ]
  %.88861664.unr = phi ptr [ %.7885.lcssa, %.lr.ph1666.preheader ], [ %i.vt, %.lr.ph1666.prol ]
  %.39651663.unr = phi i32 [ %i.vp, %.lr.ph1666.preheader ], [ %i.vu, %.lr.ph1666.prol ]
  %i.vv = sub i32 %spec.select1192, %smin
  %i.vw = icmp ugt i32 %i.vv, -4
  br i1 %i.vw, label %._crit_edge1667, label %.lr.ph1666

.lr.ph1666:                                       ; preds = %.lr.ph1666.prol.loopexit, %.lr.ph1666
  %.88861664 = phi ptr [ %i.wm, %.lr.ph1666 ], [ %.88861664.unr, %.lr.ph1666.prol.loopexit ] ; 5 uses
  %.39651663 = phi i32 [ %i.wn, %.lr.ph1666 ], [ %.39651663.unr, %.lr.ph1666.prol.loopexit ]
  %i.vx = load ptr, ptr %i.g, align 8, !tbaa !13  ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 1
  store ptr %i.vy, ptr %i.g, align 8, !tbaa !13
  %i.vz = load i8, ptr %i.vx, align 1, !tbaa !7
  %i.wa = getelementptr inbounds nuw i8, ptr %.88861664, i64 1
  store i8 %i.vz, ptr %.88861664, align 1, !tbaa !7
  %i.wb = load ptr, ptr %i.g, align 8, !tbaa !13  ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 1
  store ptr %i.wc, ptr %i.g, align 8, !tbaa !13
  %i.wd = load i8, ptr %i.wb, align 1, !tbaa !7
  %i.we = getelementptr inbounds nuw i8, ptr %.88861664, i64 2
  store i8 %i.wd, ptr %i.wa, align 1, !tbaa !7
  %i.wf = load ptr, ptr %i.g, align 8, !tbaa !13  ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 1
  store ptr %i.wg, ptr %i.g, align 8, !tbaa !13
  %i.wh = load i8, ptr %i.wf, align 1, !tbaa !7
  %i.wi = getelementptr inbounds nuw i8, ptr %.88861664, i64 3
  store i8 %i.wh, ptr %i.we, align 1, !tbaa !7
  %i.wj = load ptr, ptr %i.g, align 8, !tbaa !13  ; 2 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 1
  store ptr %i.wk, ptr %i.g, align 8, !tbaa !13
  %i.wl = load i8, ptr %i.wj, align 1, !tbaa !7
  %i.wm = getelementptr inbounds nuw i8, ptr %.88861664, i64 4 ; 2 uses
  store i8 %i.wl, ptr %i.wi, align 1, !tbaa !7
  %i.wn = add nsw i32 %.39651663, -4              ; 2 uses
  %.not1121.3 = icmp eq i32 %i.wn, 0
  br i1 %.not1121.3, label %._crit_edge1667, label %.lr.ph1666, !llvm.loop !34

._crit_edge1667:                                  ; preds = %.lr.ph1666.prol.loopexit, %.lr.ph1666, %bb.dg
  %.8886.lcssa = phi ptr [ %.7885.lcssa, %bb.dg ], [ %.lcssa2484.unr, %.lr.ph1666.prol.loopexit ], [ %i.wm, %.lr.ph1666 ]
  %i.wo = add i32 %spec.select1192, %i.vp
  %i.wp = sub i32 %.6817, %i.wo
  br label %bb.ea

bb.dh:                                            ; preds = %bb.db
  %i.wq = and i32 %.10846, 64
  %.not1109 = icmp eq i32 %i.wq, 0                ; 5 uses
  br i1 %.not1109, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.wr = sub nsw i32 600, %i.ui
  %i.ws = urem i32 %i.wr, 3
  br label %bb.dj

bb.dj:                                            ; preds = %bb.dh, %bb.di
  %i.wt = phi i32 [ %i.ws, %bb.di ], [ 0, %bb.dh ] ; 2 uses
  %i.wu = load i32, ptr %i.e, align 4, !tbaa !3
  %.not1110 = icmp ult i32 %i.ui, %i.wu
  br i1 %.not1110, label %.preheader1475.outer, label %.preheader1480.outer

bb.dk:                                            ; preds = %.preheader1480.peel.next, %bb.dl, %.preheader1480.outer
  %.9887.lcssa = phi ptr [ %.9887.ph, %.preheader1480.outer ], [ %.9887.ph, %bb.dl ], [ %i.xf, %.preheader1480.peel.next ] ; 4 uses
  %.1944 = phi i32 [ %.0943.ph, %.preheader1480.outer ], [ %i.xc, %bb.dl ], [ 1, %.preheader1480.peel.next ] ; 2 uses
  %i.wv = load ptr, ptr %i.g, align 8, !tbaa !13
  %i.ww = zext i32 %.5927.ph to i64
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wv, i64 %i.ww
  %i.wy = load i8, ptr %i.wx, align 1, !tbaa !7
  %i.wz = getelementptr i8, ptr %.9887.lcssa, i64 1 ; 6 uses
  store i8 %i.wy, ptr %.9887.lcssa, align 1, !tbaa !7
  %i.xa = add i32 %.5927.ph, 1                    ; 4 uses
  %i.xb = load i32, ptr %i.e, align 4, !tbaa !3
  %.not1114 = icmp ult i32 %i.xa, %i.xb
  br i1 %.not1114, label %.preheader1480.outer, label %bb.dm, !llvm.loop !35

.preheader1480.outer:                             ; preds = %bb.dj, %bb.dk
  %.0943.ph = phi i32 [ %.1944, %bb.dk ], [ %i.wt, %bb.dj ] ; 2 uses
  %.5927.ph = phi i32 [ %i.xa, %bb.dk ], [ 0, %bb.dj ] ; 3 uses
  %.9887.ph = phi ptr [ %i.wz, %bb.dk ], [ %i.o, %bb.dj ] ; 4 uses
  br i1 %.not1109, label %bb.dk, label %bb.dl

bb.dl:                                            ; preds = %.preheader1480.outer
  %i.xc = add nuw nsw i32 %.0943.ph, 1            ; 2 uses
  %i.xd = icmp eq i32 %i.xc, 4
  br i1 %i.xd, label %.preheader1480.peel.next, label %bb.dk

.preheader1480.peel.next:                         ; preds = %bb.dl
  %i.xe = load i8, ptr @_ZL12stbsp__comma, align 1, !tbaa !7
  %i.xf = getelementptr i8, ptr %.9887.ph, i64 1
  store i8 %i.xe, ptr %.9887.ph, align 1, !tbaa !7
  br label %bb.dk

bb.dm:                                            ; preds = %bb.dk
  %.9887.lcssa19871989 = ptrtoaddr ptr %.9887.lcssa to i64
  %i.xg = load i32, ptr %i.f, align 4, !tbaa !3   ; 3 uses
  %i.xh = icmp ult i32 %i.xa, %i.xg
  br i1 %i.xh, label %bb.dn, label %.loopexit1476

bb.dn:                                            ; preds = %bb.dm
  %i.xi = sub nuw i32 %i.xg, %i.xa                ; 3 uses
  br i1 %.not1109, label %.preheader1479, label %.loopexit1478

.preheader1479:                                   ; preds = %bb.dn
  %.not11151617 = icmp eq i32 %i.xi, 0
  %i.xj = ptrtoint ptr %i.wz to i64
  %i.xk = and i64 %i.xj, 3
  %i.xl = icmp eq i64 %i.xk, 0
  %or.cond11981618 = or i1 %.not11151617, %i.xl
  br i1 %or.cond11981618, label %.preheader1477, label %.lr.ph1621.preheader

.lr.ph1621.preheader:                             ; preds = %.preheader1479
  %i.xm = trunc i64 %.9887.lcssa19871989 to i2
  %i.xn = sub i2 -2, %i.xm                        ; 2 uses
  %i.xo = zext i2 %i.xn to i64
  %i.xp = add i32 %i.xg, -2
  %i.xq = sub i32 %i.xp, %.5927.ph                ; 2 uses
  %i.xr = zext i32 %i.xq to i64
  %umin1986 = call i64 @llvm.umin.i64(i64 %i.xo, i64 %i.xr) ; 2 uses
  %i.xs = add nuw nsw i64 %umin1986, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.wz, i8 48, i64 %i.xs, i1 false), !tbaa !7
  %scevgep1988 = getelementptr i8, ptr %.9887.lcssa, i64 2
  %scevgep1992 = getelementptr i8, ptr %scevgep1988, i64 %umin1986
  %i.xt = zext i2 %i.xn to i32
  %i.xu = call i32 @llvm.usub.sat.i32(i32 %i.xq, i32 %i.xt)
  br label %.preheader1477

.preheader1477:                                   ; preds = %.lr.ph1621.preheader, %.preheader1479
  %.7929.lcssa = phi i32 [ %i.xi, %.preheader1479 ], [ %i.xu, %.lr.ph1621.preheader ] ; 4 uses
  %.11889.lcssa = phi ptr [ %i.wz, %.preheader1479 ], [ %scevgep1992, %.lr.ph1621.preheader ] ; 3 uses
  %i.xv = icmp ugt i32 %.7929.lcssa, 3
  br i1 %i.xv, label %.lr.ph1626.preheader, label %.loopexit1478

.lr.ph1626.preheader:                             ; preds = %.preheader1477
  %i.xw = and i32 %.7929.lcssa, -4
  %i.xx = add i32 %i.xw, -4
  %i.xy = zext i32 %i.xx to i64                   ; 2 uses
  %i.xz = add nuw nsw i64 %i.xy, 4
end_hunk_0
begin_hunk_1_@oiio_stbsp_vsprintfcb:bb.a

._crit_edge:                                      ; preds = %bb.fx, %.preheader1456, %.loopexit1457
  %.lcssa1569 = phi i32 [ %.lcssa15841595, %.loopexit1457 ], [ %.lcssa15841595, %.preheader1456 ], [ %i.afm, %bb.fx ] ; 3 uses
  %.28906.idx.lcssa1568 = phi i64 [ %.25903.idx, %.loopexit1457 ], [ %.26904.add, %.preheader1456 ], [ %.29907.idx, %bb.fx ] ; 6 uses
  %.0981.lcssa = phi ptr [ %i.aeu, %.loopexit1457 ], [ %i.aeu, %.preheader1456 ], [ %.1982, %bb.fx ] ; 3 uses
  %.0981.lcssa1983 = ptrtoaddr ptr %.0981.lcssa to i64 ; 3 uses
  %i.afn = icmp eq i64 %storemerge, 0
  %.28906.ptr.le.le = getelementptr inbounds i8, ptr %i.a, i64 %.28906.idx.lcssa1568 ; 2 uses
  br i1 %i.afn, label %bb.gb, label %.preheader1454

.preheader1454:                                   ; preds = %._crit_edge
  %.not10831586 = icmp eq ptr %.28906.ptr.le.le, %.0981.lcssa
  br i1 %.not10831586, label %.loopexit1455.backedge, label %.lr.ph1589

.lr.ph1589:                                       ; preds = %.preheader1454
  br i1 %i.aes, label %.lr.ph1589.split.us.preheader, label %.lr.ph1589.split

.lr.ph1589.split.us.preheader:                    ; preds = %.lr.ph1589
  %scevgep1984 = getelementptr i8, ptr %scevgep, i64 %.0981.lcssa1983
  %i.afo = add i64 %.28906.idx.lcssa1568, %i.b
  %i.afp = sub i64 %i.afo, %.0981.lcssa1983
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep1984, i8 48, i64 %i.afp, i1 false), !tbaa !7
  %i.afq = sub i64 %.0981.lcssa1983, %i.b
  br label %.loopexit1455.backedge

.loopexit1455.backedge:                           ; preds = %bb.ga, %.lr.ph1589.split.us.preheader, %.preheader1454
  %.lcssa15841595.be = phi i32 [ %.lcssa1569, %.preheader1454 ], [ %.lcssa1569, %.lr.ph1589.split.us.preheader ], [ %i.afv, %bb.ga ]
  %.25903.idx.be = phi i64 [ %.28906.idx.lcssa1568, %.preheader1454 ], [ %i.afq, %.lr.ph1589.split.us.preheader ], [ %.32910.idx, %bb.ga ]
  br label %.loopexit1455

.lr.ph1589.split:                                 ; preds = %.lr.ph1589, %bb.ga
  %.31909.idx1588 = phi i64 [ %.32910.idx, %bb.ga ], [ %.28906.idx.lcssa1568, %.lr.ph1589 ] ; 2 uses
  %.29831587 = phi ptr [ %.3984, %bb.ga ], [ %.0981.lcssa, %.lr.ph1589 ] ; 2 uses
  %i.afr = phi i32 [ %i.afv, %bb.ga ], [ %.lcssa1569, %.lr.ph1589 ] ; 2 uses
  %i.afs = icmp eq i32 %i.afr, 3
  br i1 %i.afs, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %.lr.ph1589.split
  %.31909.add1087 = add nsw i64 %.31909.idx1588, -1 ; 2 uses
  %.ptr1093 = getelementptr inbounds i8, ptr %i.a, i64 %.31909.add1087
  store i8 %i.aet, ptr %.ptr1093, align 1, !tbaa !7
  %i.aft = getelementptr inbounds i8, ptr %.29831587, i64 -1
  br label %bb.ga

bb.fz:                                            ; preds = %.lr.ph1589.split
  %i.afu = add i32 %i.afr, 1
  %.31909.add = add nsw i64 %.31909.idx1588, -1   ; 2 uses
  %.ptr1092 = getelementptr inbounds i8, ptr %i.a, i64 %.31909.add
  store i8 48, ptr %.ptr1092, align 1, !tbaa !7
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.fy
  %i.afv = phi i32 [ 0, %bb.fy ], [ %i.afu, %bb.fz ] ; 2 uses
  %.3984 = phi ptr [ %i.aft, %bb.fy ], [ %.29831587, %bb.fz ] ; 2 uses
  %.32910.idx = phi i64 [ %.31909.add1087, %bb.fy ], [ %.31909.add, %bb.fz ] ; 3 uses
  %.31909.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.32910.idx
  %.not1083 = icmp eq ptr %.31909.ptr, %.3984
  br i1 %.not1083, label %.loopexit1455.backedge, label %.lr.ph1589.split, !llvm.loop !46

bb.gb:                                            ; preds = %._crit_edge
  %i.afw = load i8, ptr %.28906.ptr.le.le, align 1, !tbaa !7
  %i.afx = icmp eq i8 %i.afw, 48
  %i.afy = icmp ne i64 %.28906.idx.lcssa1568, 512
  %or.cond39 = and i1 %i.afy, %i.afx
  %.28906.add1086 = zext i1 %or.cond39 to i64
  %spec.select1200 = add nsw i64 %.28906.idx.lcssa1568, %.28906.add1086 ; 2 uses
  %.33911.ptr1291 = getelementptr inbounds i8, ptr %i.a, i64 %spec.select1200 ; 2 uses
  store i8 0, ptr %i.d, align 1, !tbaa !7
  store i8 0, ptr %i.c, align 1, !tbaa !7
  %i.afz = and i32 %.16852, 128
  %.not.i1245 = icmp eq i32 %i.afz, 0
  br i1 %.not.i1245, label %bb.gc, label %.sink.split.i1246

bb.gc:                                            ; preds = %bb.gb
  %i.aga = and i32 %.16852, 4
  %.not9.i1248 = icmp eq i32 %i.aga, 0
  br i1 %.not9.i1248, label %bb.gd, label %.sink.split.i1246

bb.gd:                                            ; preds = %bb.gc
  %i.agb = and i32 %.16852, 2
  %.not10.i1249 = icmp eq i32 %i.agb, 0
  br i1 %.not10.i1249, label %_ZL16stbsp__lead_signjPc.exit1250, label %.sink.split.i1246

.sink.split.i1246:                                ; preds = %bb.gd, %bb.gc, %bb.gb
  %.sink.i1247 = phi i8 [ 45, %bb.gb ], [ 32, %bb.gc ], [ 43, %bb.gd ]
  store i8 1, ptr %i.c, align 1, !tbaa !7
  store i8 %.sink.i1247, ptr %i.j, align 1, !tbaa !7
  br label %_ZL16stbsp__lead_signjPc.exit1250

_ZL16stbsp__lead_signjPc.exit1250:                ; preds = %bb.gd, %.sink.split.i1246
  %i.agc = trunc i64 %spec.select1200 to i32      ; 2 uses
  %i.agd = sub i32 512, %i.agc                    ; 2 uses
  store i32 %i.agd, ptr %i.e, align 4, !tbaa !3
  %i.age = icmp eq i32 %i.agc, 512
  br i1 %i.age, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %_ZL16stbsp__lead_signjPc.exit1250
  %i.agf = getelementptr inbounds i8, ptr %.33911.ptr1291, i64 -1 ; 2 uses
  store i8 48, ptr %i.agf, align 1, !tbaa !7
  store i32 1, ptr %i.e, align 4, !tbaa !3
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %_ZL16stbsp__lead_signjPc.exit1250
  %i.agg = phi i32 [ 1, %bb.ge ], [ %i.agd, %_ZL16stbsp__lead_signjPc.exit1250 ]
  %.34912 = phi ptr [ %i.agf, %bb.ge ], [ %.33911.ptr1291, %_ZL16stbsp__lead_signjPc.exit1250 ]
  %i.agh = add i32 %i.agg, 50331648
  %spec.store.select40 = call i32 @llvm.smax.i32(i32 %.1812, i32 0)
  br label %bb.gg

bb.gg:                                            ; preds = %_ZL16stbsp__lead_signjPc.exit1238, %bb.hi, %bb.gf, %._crit_edge2370, %bb.fb, %bb.eg, %bb.da, %._crit_edge1691, %bb.as, %_ZL21stbsp__strlen_limitedPKcj.exit
  %.11954 = phi i32 [ 0, %bb.hi ], [ 0, %_ZL21stbsp__strlen_limitedPKcj.exit ], [ 0, %bb.as ], [ 50331649, %._crit_edge1691 ], [ %i.agh, %bb.gf ], [ %.10953, %bb.eg ], [ 0, %bb.da ], [ 0, %bb.fb ], [ %i.adh, %._crit_edge2370 ], [ 0, %_ZL16stbsp__lead_signjPc.exit1238 ] ; 2 uses
  %.35913 = phi ptr [ %i.u, %bb.hi ], [ %spec.store.select, %_ZL21stbsp__strlen_limitedPKcj.exit ], [ %i.u, %bb.as ], [ %i.o, %._crit_edge1691 ], [ %.34912, %bb.gf ], [ %i.o, %bb.eg ], [ %i.uk, %bb.da ], [ %i.l, %bb.fb ], [ %.lcssa2322, %._crit_edge2370 ], [ %i.pk, %_ZL16stbsp__lead_signjPc.exit1238 ]
  %.17853 = phi i32 [ 0, %bb.hi ], [ %.3839, %_ZL21stbsp__strlen_limitedPKcj.exit ], [ %.3839, %bb.as ], [ %spec.select1184, %._crit_edge1691 ], [ %.16852, %bb.gf ], [ %.11847, %bb.eg ], [ %.10846, %bb.da ], [ %.13849, %bb.fb ], [ %.13849, %._crit_edge2370 ], [ %.6842, %_ZL16stbsp__lead_signjPc.exit1238 ] ; 4 uses
  %.3834 = phi i32 [ 0, %bb.hi ], [ 0, %_ZL21stbsp__strlen_limitedPKcj.exit ], [ 0, %bb.as ], [ %spec.select11852174, %._crit_edge1691 ], [ 0, %bb.gf ], [ %.2833, %bb.eg ], [ 0, %bb.da ], [ 0, %bb.fb ], [ 0, %._crit_edge2370 ], [ 0, %_ZL16stbsp__lead_signjPc.exit1238 ] ; 3 uses
  %.11822 = phi i32 [ 0, %bb.hi ], [ 0, %_ZL21stbsp__strlen_limitedPKcj.exit ], [ 0, %bb.as ], [ 0, %._crit_edge1691 ], [ %spec.store.select40, %bb.gf ], [ 0, %bb.eg ], [ 0, %bb.da ], [ 0, %bb.fb ], [ %.9820, %._crit_edge2370 ], [ 0, %_ZL16stbsp__lead_signjPc.exit1238 ]
  %.2803 = phi i32 [ 0, %bb.hi ], [ %.1802, %_ZL21stbsp__strlen_limitedPKcj.exit ], [ %.1802, %bb.as ], [ %.1802, %._crit_edge1691 ], [ %.1802, %bb.gf ], [ %.1802, %bb.eg ], [ %.1802, %bb.da ], [ %.1802, %bb.fb ], [ %.1802, %._crit_edge2370 ], [ %.1802, %_ZL16stbsp__lead_signjPc.exit1238 ]
  %i.agi = load i32, ptr %i.e, align 4, !tbaa !3  ; 2 uses
  %spec.select1201 = call i32 @llvm.smax.i32(i32 %.11822, i32 %i.agi) ; 2 uses
  %i.agj = load i8, ptr %i.c, align 1, !tbaa !7   ; 3 uses
  %i.agk = sext i8 %i.agj to i32
  %i.agl = load i8, ptr %i.d, align 1, !tbaa !7
  %i.agm = sext i8 %i.agl to i32
  %i.agn = add i32 %spec.select1201, %.3834
  %i.ago = add i32 %i.agn, %i.agk
  %i.agp = add i32 %i.ago, %i.agm                 ; 2 uses
  %.3804 = call i32 @llvm.smax.i32(i32 %.2803, i32 %i.agp)
  %i.agq = sub i32 %.3804, %i.agp                 ; 3 uses
  %i.agr = sub i32 %spec.select1201, %i.agi       ; 3 uses
  %i.ags = and i32 %.17853, 1
  %i.agt = icmp eq i32 %i.ags, 0
  br i1 %i.agt, label %bb.gh, label %bb.gj

bb.gh:                                            ; preds = %bb.gg
  %i.agu = and i32 %.17853, 16
  %.not1135 = icmp eq i32 %i.agu, 0
  br i1 %.not1135, label %bb.gj, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.agv = call i32 @llvm.smax.i32(i32 %i.agq, i32 %i.agr)
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gh, %bb.gi, %bb.gg
  %.18854 = phi i32 [ %.17853, %bb.gi ], [ %.17853, %bb.gg ], [ 0, %bb.gh ] ; 3 uses
  %.13824 = phi i32 [ %i.agv, %bb.gi ], [ %i.agr, %bb.gg ], [ %i.agr, %bb.gh ] ; 4 uses
  %.4805 = phi i32 [ 0, %bb.gi ], [ %i.agq, %bb.gg ], [ %i.agq, %bb.gh ] ; 5 uses
  %i.agw = sub i32 0, %.13824
  %.not1136 = icmp eq i32 %.4805, %i.agw
  br i1 %.not1136, label %.loopexit1466, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.agx = and i32 %.18854, 1
  %i.agy = icmp eq i32 %i.agx, 0
  %i.agz = icmp sgt i32 %.4805, 0
  %or.cond42 = and i1 %i.agy, %i.agz
  br i1 %or.cond42, label %.preheader1469, label %.loopexit1471

.preheader1469:                                   ; preds = %bb.gk, %.thread1295
  %.5806 = phi i32 [ %i.ahd, %.thread1295 ], [ %.4805, %bb.gk ] ; 3 uses
  %.5753 = phi i32 [ %.8756, %.thread1295 ], [ %.1749, %bb.gk ] ; 3 uses
  %.9688 = phi ptr [ %.15694, %.thread1295 ], [ %.2681, %bb.gk ]
  %.5 = phi ptr [ %.8, %.thread1295 ], [ %.1, %bb.gk ] ; 4 uses
  %.9688.fr = freeze ptr %.9688                   ; 4 uses
  %i.aha = ptrtoint ptr %.9688.fr to i64          ; 3 uses
  %i.ahb = ptrtoint ptr %.5 to i64                ; 2 uses
  %.neg1138 = sub i64 %i.ahb, %i.aha
  %.neg1139 = trunc i64 %.neg1138 to i32
  %i.ahc = add i32 %.neg1139, 512
  %spec.select1202 = call i32 @llvm.smin.i32(i32 %.5806, i32 %i.ahc)
  %.1968 = select i1 %.not1074, i32 %.5806, i32 %spec.select1202 ; 4 uses
  %i.ahd = sub nsw i32 %.5806, %.1968             ; 3 uses
  %.not11401699 = icmp eq i32 %.1968, 0
  %i.ahe = and i64 %i.aha, 3
  %i.ahf = icmp eq i64 %i.ahe, 0
  %or.cond12051700 = or i1 %.not11401699, %i.ahf
  br i1 %or.cond12051700, label %.preheader1453, label %.lr.ph1704.preheader

.lr.ph1704.preheader:                             ; preds = %.preheader1469
  %i.ahg = trunc i64 %i.aha to i2
  %i.ahh = xor i2 %i.ahg, -1                      ; 2 uses
  %i.ahi = zext i2 %i.ahh to i64
  %i.ahj = add i32 %.1968, -1                     ; 2 uses
  %i.ahk = zext i32 %i.ahj to i64
  %umin2021 = call i64 @llvm.umin.i64(i64 %i.ahi, i64 %i.ahk) ; 2 uses
  %i.ahl = add nuw nsw i64 %umin2021, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.9688.fr, i8 32, i64 %i.ahl, i1 false), !tbaa !7
  %scevgep2022 = getelementptr i8, ptr %.9688.fr, i64 1
  %scevgep2024 = getelementptr i8, ptr %scevgep2022, i64 %umin2021
  %i.ahm = zext i2 %i.ahh to i32
  %i.ahn = call i32 @llvm.usub.sat.i32(i32 %i.ahj, i32 %i.ahm)
  br label %.preheader1453

.preheader1453:                                   ; preds = %.lr.ph1704.preheader, %.preheader1469
  %.2969.lcssa = phi i32 [ %.1968, %.preheader1469 ], [ %i.ahn, %.lr.ph1704.preheader ] ; 4 uses
  %.10689.lcssa = phi ptr [ %.9688.fr, %.preheader1469 ], [ %scevgep2024, %.lr.ph1704.preheader ] ; 3 uses
  %i.aho = icmp sgt i32 %.2969.lcssa, 3
  br i1 %i.aho, label %.lr.ph1709.preheader, label %.preheader1452

.lr.ph1709.preheader:                             ; preds = %.preheader1453
  %i.ahp = call i32 @llvm.usub.sat.i32(i32 %.2969.lcssa, i32 7)
  %i.ahq = add nuw i32 %i.ahp, 3                  ; 2 uses
  %i.ahr = and i32 %i.ahq, -4
  %i.ahs = zext nneg i32 %i.ahr to i64            ; 2 uses
  %i.aht = add nuw nsw i64 %i.ahs, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.10689.lcssa, i8 32, i64 %i.aht, i1 false), !tbaa !3
  %scevgep2027 = getelementptr i8, ptr %.10689.lcssa, i64 4
  %scevgep2029 = getelementptr i8, ptr %scevgep2027, i64 %i.ahs
  %i.ahu = add nsw i32 %.2969.lcssa, -4
  %i.ahv = and i32 %i.ahq, -4
  %i.ahw = sub nsw i32 %i.ahu, %i.ahv
  br label %.preheader1452

.preheader1452:                                   ; preds = %.lr.ph1709.preheader, %.preheader1453
  %.3970.lcssa = phi i32 [ %.2969.lcssa, %.preheader1453 ], [ %i.ahw, %.lr.ph1709.preheader ] ; 3 uses
  %.11690.lcssa = phi ptr [ %.10689.lcssa, %.preheader1453 ], [ %scevgep2029, %.lr.ph1709.preheader ] ; 3 uses
  %.not11411712 = icmp eq i32 %.3970.lcssa, 0
  br i1 %.not11411712, label %._crit_edge1716, label %.lr.ph1715.preheader

.lr.ph1715.preheader:                             ; preds = %.preheader1452
  %i.ahx = zext i32 %.3970.lcssa to i64
  call void @llvm.memset.p0.i64(ptr align 1 %.11690.lcssa, i8 32, i64 %i.ahx, i1 false), !tbaa !7
  %scevgep2030 = getelementptr i8, ptr %.11690.lcssa, i64 1
  %i.ahy = add i32 %.3970.lcssa, -1
  %i.ahz = zext i32 %i.ahy to i64
  %scevgep2031 = getelementptr i8, ptr %scevgep2030, i64 %i.ahz
  br label %._crit_edge1716

._crit_edge1716:                                  ; preds = %.lr.ph1715.preheader, %.preheader1452
  %.12691.lcssa = phi ptr [ %.11690.lcssa, %.preheader1452 ], [ %scevgep2031, %.lr.ph1715.preheader ] ; 3 uses
  br i1 %.not1074, label %.thread1295, label %bb.gl

bb.gl:                                            ; preds = %._crit_edge1716
  %i.aia = ptrtoint ptr %.12691.lcssa to i64
  %i.aib = sub i64 %i.aia, %i.ahb
  %i.aic = trunc i64 %i.aib to i32                ; 3 uses
  %i.aid = icmp sgt i32 %i.aic, 510
  br i1 %i.aid, label %bb.gm, label %.thread1295

bb.gm:                                            ; preds = %bb.gl
  %i.aie = add nuw nsw i32 %.5753, %i.aic         ; 2 uses
  %i.aif = call noundef ptr %0(ptr noundef %.5, ptr noundef %1, i32 noundef %i.aic) ; 3 uses
  %i.aig = icmp eq ptr %i.aif, null
  br i1 %i.aig, label %.thread1423, label %.thread1295

.thread1295:                                      ; preds = %bb.gm, %bb.gl, %._crit_edge1716
  %.8756 = phi i32 [ %.5753, %._crit_edge1716 ], [ %.5753, %bb.gl ], [ %i.aie, %bb.gm ] ; 2 uses
  %.15694 = phi ptr [ %.12691.lcssa, %._crit_edge1716 ], [ %.12691.lcssa, %bb.gl ], [ %i.aif, %bb.gm ] ; 2 uses
  %.8 = phi ptr [ %.5, %._crit_edge1716 ], [ %.5, %bb.gl ], [ %i.aif, %bb.gm ] ; 2 uses
  %.old41 = icmp sgt i32 %i.ahd, 0
  br i1 %.old41, label %.preheader1469, label %.loopexit1471.loopexit

.loopexit1471.loopexit:                           ; preds = %.thread1295
  %.pre2074 = load i8, ptr %i.c, align 1, !tbaa !7
  br label %.loopexit1471

.loopexit1471:                                    ; preds = %.loopexit1471.loopexit, %bb.gk
  %i.aih = phi i8 [ %i.agj, %bb.gk ], [ %.pre2074, %.loopexit1471.loopexit ] ; 2 uses
  %.6807 = phi i32 [ %.4805, %bb.gk ], [ %i.ahd, %.loopexit1471.loopexit ] ; 2 uses
  %.9757 = phi i32 [ %.1749, %bb.gk ], [ %.8756, %.loopexit1471.loopexit ] ; 2 uses
  %.16695 = phi ptr [ %.2681, %bb.gk ], [ %.15694, %.loopexit1471.loopexit ] ; 2 uses
  %.9 = phi ptr [ %.1, %bb.gk ], [ %.8, %.loopexit1471.loopexit ] ; 2 uses
  store ptr %i.j, ptr %i.g, align 8, !tbaa !13
  %.not11421725 = icmp eq i8 %i.aih, 0
  br i1 %.not11421725, label %._crit_edge1731, label %.lr.ph1730

.lr.ph1730:                                       ; preds = %.loopexit1471, %.thread1302
  %i.aii = phi i8 [ %i.ajt, %.thread1302 ], [ %i.aih, %.loopexit1471 ] ; 2 uses
  %.101728 = phi ptr [ %.13, %.thread1302 ], [ %.9, %.loopexit1471 ] ; 4 uses
  %.176961727 = phi ptr [ %.21700, %.thread1302 ], [ %.16695, %.loopexit1471 ] ; 4 uses
  %.107581726 = phi i32 [ %.13761, %.thread1302 ], [ %.9757, %.loopexit1471 ] ; 3 uses
  %i.aij = sext i8 %i.aii to i32                  ; 2 uses
  %i.aik = ptrtoint ptr %.176961727 to i64
  %i.ail = ptrtoint ptr %.101728 to i64           ; 2 uses
  %.neg1151 = sub i64 %i.ail, %i.aik
  %.neg1152 = trunc i64 %.neg1151 to i32
  %i.aim = add i32 %.neg1152, 512
  %spec.select1206 = call i32 @llvm.smin.i32(i32 %i.aim, i32 %i.aij)
  %.6973 = select i1 %.not1074, i32 %i.aij, i32 %spec.select1206 ; 6 uses
  %i.ain = trunc i32 %.6973 to i8
  %i.aio = sub i8 %i.aii, %i.ain
  store i8 %i.aio, ptr %i.c, align 1, !tbaa !7
  %.not11531718 = icmp eq i32 %.6973, 0
  br i1 %.not11531718, label %._crit_edge1723, label %.lr.ph1722.preheader

.lr.ph1722.preheader:                             ; preds = %.lr.ph1730
  %xtraiter2549 = and i32 %.6973, 3               ; 2 uses
  %lcmp.mod2550.not = icmp eq i32 %xtraiter2549, 0
  br i1 %lcmp.mod2550.not, label %.lr.ph1722.prol.loopexit, label %.lr.ph1722.prol

.lr.ph1722.prol:                                  ; preds = %.lr.ph1722.preheader, %.lr.ph1722.prol
  %.186971720.prol = phi ptr [ %i.ais, %.lr.ph1722.prol ], [ %.176961727, %.lr.ph1722.preheader ] ; 2 uses
  %.79741719.prol = phi i32 [ %i.ait, %.lr.ph1722.prol ], [ %.6973, %.lr.ph1722.preheader ]
  %prol.iter2551 = phi i32 [ %prol.iter2551.next, %.lr.ph1722.prol ], [ 0, %.lr.ph1722.preheader ]
  %i.aip = load ptr, ptr %i.g, align 8, !tbaa !13 ; 2 uses
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.aip, i64 1
  store ptr %i.aiq, ptr %i.g, align 8, !tbaa !13
  %i.air = load i8, ptr %i.aip, align 1, !tbaa !7
  %i.ais = getelementptr inbounds nuw i8, ptr %.186971720.prol, i64 1 ; 3 uses
  store i8 %i.air, ptr %.186971720.prol, align 1, !tbaa !7
  %i.ait = add nsw i32 %.79741719.prol, -1        ; 2 uses
  %prol.iter2551.next = add i32 %prol.iter2551, 1 ; 2 uses
  %prol.iter2551.cmp.not = icmp eq i32 %prol.iter2551.next, %xtraiter2549
  br i1 %prol.iter2551.cmp.not, label %.lr.ph1722.prol.loopexit, label %.lr.ph1722.prol, !llvm.loop !47

.lr.ph1722.prol.loopexit:                         ; preds = %.lr.ph1722.prol, %.lr.ph1722.preheader
  %.lcssa2504.unr = phi ptr [ poison, %.lr.ph1722.preheader ], [ %i.ais, %.lr.ph1722.prol ]
  %.186971720.unr = phi ptr [ %.176961727, %.lr.ph1722.preheader ], [ %i.ais, %.lr.ph1722.prol ]
  %.79741719.unr = phi i32 [ %.6973, %.lr.ph1722.preheader ], [ %i.ait, %.lr.ph1722.prol ]
  %i.aiu = icmp ult i32 %.6973, 4
  br i1 %i.aiu, label %._crit_edge1723, label %.lr.ph1722

.lr.ph1722:                                       ; preds = %.lr.ph1722.prol.loopexit, %.lr.ph1722
  %.186971720 = phi ptr [ %i.ajk, %.lr.ph1722 ], [ %.186971720.unr, %.lr.ph1722.prol.loopexit ] ; 5 uses
  %.79741719 = phi i32 [ %i.ajl, %.lr.ph1722 ], [ %.79741719.unr, %.lr.ph1722.prol.loopexit ]
  %i.aiv = load ptr, ptr %i.g, align 8, !tbaa !13 ; 2 uses
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aiv, i64 1
  store ptr %i.aiw, ptr %i.g, align 8, !tbaa !13
  %i.aix = load i8, ptr %i.aiv, align 1, !tbaa !7
  %i.aiy = getelementptr inbounds nuw i8, ptr %.186971720, i64 1
  store i8 %i.aix, ptr %.186971720, align 1, !tbaa !7
  %i.aiz = load ptr, ptr %i.g, align 8, !tbaa !13 ; 2 uses
  %i.aja = getelementptr inbounds nuw i8, ptr %i.aiz, i64 1
  store ptr %i.aja, ptr %i.g, align 8, !tbaa !13
  %i.ajb = load i8, ptr %i.aiz, align 1, !tbaa !7
  %i.ajc = getelementptr inbounds nuw i8, ptr %.186971720, i64 2
  store i8 %i.ajb, ptr %i.aiy, align 1, !tbaa !7
  %i.ajd = load ptr, ptr %i.g, align 8, !tbaa !13 ; 2 uses
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ajd, i64 1
  store ptr %i.aje, ptr %i.g, align 8, !tbaa !13
  %i.ajf = load i8, ptr %i.ajd, align 1, !tbaa !7
  %i.ajg = getelementptr inbounds nuw i8, ptr %.186971720, i64 3
  store i8 %i.ajf, ptr %i.ajc, align 1, !tbaa !7
  %i.ajh = load ptr, ptr %i.g, align 8, !tbaa !13 ; 2 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajh, i64 1
  store ptr %i.aji, ptr %i.g, align 8, !tbaa !13
  %i.ajj = load i8, ptr %i.ajh, align 1, !tbaa !7
  %i.ajk = getelementptr inbounds nuw i8, ptr %.186971720, i64 4 ; 2 uses
  store i8 %i.ajj, ptr %i.ajg, align 1, !tbaa !7
  %i.ajl = add nsw i32 %.79741719, -4             ; 2 uses
  %.not1153.3 = icmp eq i32 %i.ajl, 0
  br i1 %.not1153.3, label %._crit_edge1723, label %.lr.ph1722, !llvm.loop !48

._crit_edge1723:                                  ; preds = %.lr.ph1722.prol.loopexit, %.lr.ph1722, %.lr.ph1730
  %.18697.lcssa = phi ptr [ %.176961727, %.lr.ph1730 ], [ %.lcssa2504.unr, %.lr.ph1722.prol.loopexit ], [ %i.ajk, %.lr.ph1722 ] ; 3 uses
  br i1 %.not1074, label %.thread1302, label %bb.gn

bb.gn:                                            ; preds = %._crit_edge1723
  %i.ajm = ptrtoint ptr %.18697.lcssa to i64
  %i.ajn = sub i64 %i.ajm, %i.ail
  %i.ajo = trunc i64 %i.ajn to i32                ; 3 uses
  %i.ajp = icmp sgt i32 %i.ajo, 510
  br i1 %i.ajp, label %bb.go, label %.thread1302

bb.go:                                            ; preds = %bb.gn
  %i.ajq = add nuw nsw i32 %.107581726, %i.ajo    ; 2 uses
  %i.ajr = call noundef ptr %0(ptr noundef %.101728, ptr noundef %1, i32 noundef %i.ajo) ; 3 uses
  %i.ajs = icmp eq ptr %i.ajr, null
  br i1 %i.ajs, label %.thread1423, label %.thread1302

.thread1302:                                      ; preds = %bb.go, %bb.gn, %._crit_edge1723
  %.13761 = phi i32 [ %.107581726, %._crit_edge1723 ], [ %.107581726, %bb.gn ], [ %i.ajq, %bb.go ] ; 2 uses
  %.21700 = phi ptr [ %.18697.lcssa, %._crit_edge1723 ], [ %.18697.lcssa, %bb.gn ], [ %i.ajr, %bb.go ] ; 2 uses
  %.13 = phi ptr [ %.101728, %._crit_edge1723 ], [ %.101728, %bb.gn ], [ %i.ajr, %bb.go ] ; 2 uses
  %i.ajt = load i8, ptr %i.c, align 1, !tbaa !7   ; 2 uses
  %.not1142 = icmp eq i8 %i.ajt, 0
  br i1 %.not1142, label %._crit_edge1731, label %.lr.ph1730, !llvm.loop !49

._crit_edge1731:                                  ; preds = %.thread1302, %.loopexit1471
  %.10758.lcssa = phi i32 [ %.9757, %.loopexit1471 ], [ %.13761, %.thread1302 ] ; 2 uses
  %.17696.lcssa = phi ptr [ %.16695, %.loopexit1471 ], [ %.21700, %.thread1302 ] ; 2 uses
  %.10.lcssa = phi ptr [ %.9, %.loopexit1471 ], [ %.13, %.thread1302 ] ; 2 uses
  %i.aju = lshr i32 %.11954, 24                   ; 5 uses
  %i.ajv = and i32 %.18854, 64
  %.not1143 = icmp eq i32 %i.ajv, 0               ; 2 uses
  br i1 %.not1143, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %._crit_edge1731
  %i.ajw = and i32 %.11954, 16777215
  %i.ajx = add i32 %.13824, %i.ajw
  %i.ajy = add nuw nsw i32 %i.aju, 1
  %i.ajz = urem i32 %i.ajx, %i.ajy
  %i.aka = sub nsw i32 %i.aju, %i.ajz
  br label %bb.gq

bb.gq:                                            ; preds = %._crit_edge1731, %bb.gp
  %i.akb = phi i32 [ %i.aka, %bb.gp ], [ 0, %._crit_edge1731 ]
  %i.akc = icmp sgt i32 %.13824, 0
  br i1 %i.akc, label %.lr.ph1764, label %.loopexit1466.thread

.loopexit1466.thread:                             ; preds = %bb.gq
  store ptr %i.j, ptr %i.g, align 8, !tbaa !13
  br label %._crit_edge1781

.lr.ph1764:                                       ; preds = %bb.gq, %.thread1309
  %.141762 = phi ptr [ %.17, %.thread1309 ], [ %.10.lcssa, %bb.gq ] ; 4 uses
  %.227011761 = phi ptr [ %.30709, %.thread1309 ], [ %.17696.lcssa, %bb.gq ]
  %.147621760 = phi i32 [ %.17765, %.thread1309 ], [ %.10758.lcssa, %bb.gq ] ; 3 uses
  %.148251759 = phi i32 [ %i.akg, %.thread1309 ], [ %.13824, %bb.gq ] ; 3 uses
  %.129551758 = phi i32 [ %.13956.lcssa, %.thread1309 ], [ %i.akb, %bb.gq ] ; 6 uses
  %.227011761.fr = freeze ptr %.227011761         ; 8 uses
  %i.akd = ptrtoint ptr %.227011761.fr to i64     ; 3 uses
  %i.ake = ptrtoint ptr %.141762 to i64           ; 2 uses
  %.neg1145 = sub i64 %i.ake, %i.akd
  %.neg1146 = trunc i64 %.neg1145 to i32
  %i.akf = add i32 %.neg1146, 512
  %spec.select1207 = call i32 @llvm.smin.i32(i32 %.148251759, i32 %i.akf)
  %.9976 = select i1 %.not1074, i32 %.148251759, i32 %spec.select1207 ; 8 uses
  %i.akg = sub nsw i32 %.148251759, %.9976        ; 2 uses
  %.not11471735 = icmp eq i32 %.9976, 0           ; 2 uses
  br i1 %.not1143, label %.preheader1451, label %.loopexit.thread

.preheader1451:                                   ; preds = %.lr.ph1764
  %i.akh = and i64 %i.akd, 3
  %i.aki = icmp eq i64 %i.akh, 0
  %or.cond12101736 = or i1 %.not11471735, %i.aki
  br i1 %or.cond12101736, label %.preheader1450, label %.lr.ph1739.preheader

.lr.ph1739.preheader:                             ; preds = %.preheader1451
  %i.akj = trunc i64 %i.akd to i2
  %i.akk = xor i2 %i.akj, -1                      ; 2 uses
  %i.akl = zext i2 %i.akk to i64
  %i.akm = add i32 %.9976, -1                     ; 2 uses
  %i.akn = zext i32 %i.akm to i64
  %umin2032 = call i64 @llvm.umin.i64(i64 %i.akl, i64 %i.akn) ; 2 uses
  %i.ako = add nuw nsw i64 %umin2032, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.227011761.fr, i8 48, i64 %i.ako, i1 false), !tbaa !7
  %scevgep2033 = getelementptr i8, ptr %.227011761.fr, i64 1
  %scevgep2035 = getelementptr i8, ptr %scevgep2033, i64 %umin2032
  %i.akp = zext i2 %i.akk to i32
  %i.akq = call i32 @llvm.usub.sat.i32(i32 %i.akm, i32 %i.akp)
  br label %.preheader1450

.preheader1450:                                   ; preds = %.lr.ph1739.preheader, %.preheader1451
  %.10977.lcssa = phi i32 [ %.9976, %.preheader1451 ], [ %i.akq, %.lr.ph1739.preheader ] ; 4 uses
  %.23702.lcssa = phi ptr [ %.227011761.fr, %.preheader1451 ], [ %scevgep2035, %.lr.ph1739.preheader ] ; 3 uses
  %i.akr = icmp sgt i32 %.10977.lcssa, 3
  br i1 %i.akr, label %.lr.ph1744.preheader, label %.loopexit

.lr.ph1744.preheader:                             ; preds = %.preheader1450
  %i.aks = call i32 @llvm.usub.sat.i32(i32 %.10977.lcssa, i32 7)
  %i.akt = add nuw i32 %i.aks, 3                  ; 2 uses
  %i.aku = and i32 %i.akt, -4
  %i.akv = zext nneg i32 %i.aku to i64            ; 2 uses
  %i.akw = add nuw nsw i64 %i.akv, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.23702.lcssa, i8 48, i64 %i.akw, i1 false), !tbaa !3
  %scevgep2038 = getelementptr i8, ptr %.23702.lcssa, i64 4
  %scevgep2040 = getelementptr i8, ptr %scevgep2038, i64 %i.akv
  %i.akx = add nsw i32 %.10977.lcssa, -4
  %i.aky = and i32 %i.akt, -4
  %i.akz = sub nsw i32 %i.akx, %i.aky
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph1744.preheader, %.preheader1450
  %.12979 = phi i32 [ %i.akz, %.lr.ph1744.preheader ], [ %.10977.lcssa, %.preheader1450 ] ; 3 uses
  %.25704 = phi ptr [ %scevgep2040, %.lr.ph1744.preheader ], [ %.23702.lcssa, %.preheader1450 ] ; 3 uses
  %.not11481747 = icmp eq i32 %.12979, 0
  br i1 %.not11481747, label %._crit_edge1753, label %.lr.ph1752.split.us.preheader

.loopexit.thread:                                 ; preds = %.lr.ph1764
  br i1 %.not11471735, label %._crit_edge1753, label %.lr.ph1752.split.preheader

.lr.ph1752.split.preheader:                       ; preds = %.loopexit.thread
  %xtraiter2552 = and i32 %.9976, 1
  %lcmp.mod2553.not = icmp eq i32 %xtraiter2552, 0
  br i1 %lcmp.mod2553.not, label %.lr.ph1752.split.prol.loopexit, label %.lr.ph1752.split.prol

.lr.ph1752.split.prol:                            ; preds = %.lr.ph1752.split.preheader
  %i.ala = add i32 %.129551758, 1
  %i.alb = icmp eq i32 %.129551758, %i.aju        ; 2 uses
  %i.alc = load i8, ptr @_ZL12stbsp__comma, align 1
  %spec.select1223.prol = select i1 %i.alb, i8 %i.alc, i8 48
  %spec.select1224.prol = select i1 %i.alb, i32 0, i32 %i.ala ; 2 uses
  %.27706.prol = getelementptr inbounds nuw i8, ptr %.227011761.fr, i64 1 ; 2 uses
  store i8 %spec.select1223.prol, ptr %.227011761.fr, align 1, !tbaa !7
  %i.ald = add nsw i32 %.9976, -1
  br label %.lr.ph1752.split.prol.loopexit

.lr.ph1752.split.prol.loopexit:                   ; preds = %.lr.ph1752.split.prol, %.lr.ph1752.split.preheader
  %spec.select1224.lcssa.unr = phi i32 [ poison, %.lr.ph1752.split.preheader ], [ %spec.select1224.prol, %.lr.ph1752.split.prol ]
  %.27706.lcssa.unr = phi ptr [ poison, %.lr.ph1752.split.preheader ], [ %.27706.prol, %.lr.ph1752.split.prol ]
  %.267051750.unr = phi ptr [ %.227011761.fr, %.lr.ph1752.split.preheader ], [ %.27706.prol, %.lr.ph1752.split.prol ]
  %.139561749.unr = phi i32 [ %.129551758, %.lr.ph1752.split.preheader ], [ %spec.select1224.prol, %.lr.ph1752.split.prol ]
  %.139801748.unr = phi i32 [ %.9976, %.lr.ph1752.split.preheader ], [ %i.ald, %.lr.ph1752.split.prol ]
  %i.ale = icmp eq i32 %.9976, 1
  br i1 %i.ale, label %._crit_edge1753, label %.lr.ph1752.split

.lr.ph1752.split.us.preheader:                    ; preds = %.loopexit
  %i.alf = zext i32 %.12979 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %.25704, i8 48, i64 %i.alf, i1 false), !tbaa !7
  %scevgep2041 = getelementptr i8, ptr %.25704, i64 1
  %i.alg = add i32 %.12979, -1
  %i.alh = zext i32 %i.alg to i64
  %scevgep2042 = getelementptr i8, ptr %scevgep2041, i64 %i.alh
  br label %._crit_edge1753

.lr.ph1752.split:                                 ; preds = %.lr.ph1752.split.prol.loopexit, %.lr.ph1752.split
  %.267051750 = phi ptr [ %.27706.1, %.lr.ph1752.split ], [ %.267051750.unr, %.lr.ph1752.split.prol.loopexit ] ; 3 uses
  %.139561749 = phi i32 [ %spec.select1224.1, %.lr.ph1752.split ], [ %.139561749.unr, %.lr.ph1752.split.prol.loopexit ] ; 2 uses
  %.139801748 = phi i32 [ %i.alo, %.lr.ph1752.split ], [ %.139801748.unr, %.lr.ph1752.split.prol.loopexit ]
  %i.ali = add i32 %.139561749, 1
  %i.alj = icmp eq i32 %.139561749, %i.aju        ; 2 uses
  %i.alk = load i8, ptr @_ZL12stbsp__comma, align 1
  %spec.select1223 = select i1 %i.alj, i8 %i.alk, i8 48
  %spec.select1224 = select i1 %i.alj, i32 0, i32 %i.ali ; 2 uses
  %.27706 = getelementptr inbounds nuw i8, ptr %.267051750, i64 1
  store i8 %spec.select1223, ptr %.267051750, align 1, !tbaa !7
  %i.all = add i32 %spec.select1224, 1
  %i.alm = icmp eq i32 %spec.select1224, %i.aju   ; 2 uses
  %i.aln = load i8, ptr @_ZL12stbsp__comma, align 1
  %spec.select1223.1 = select i1 %i.alm, i8 %i.aln, i8 48
  %spec.select1224.1 = select i1 %i.alm, i32 0, i32 %i.all ; 2 uses
  %.27706.1 = getelementptr inbounds nuw i8, ptr %.267051750, i64 2 ; 2 uses
  store i8 %spec.select1223.1, ptr %.27706, align 1, !tbaa !7
  %i.alo = add nsw i32 %.139801748, -2            ; 2 uses
  %.not1148.1 = icmp eq i32 %i.alo, 0
  br i1 %.not1148.1, label %._crit_edge1753, label %.lr.ph1752.split, !llvm.loop !50

._crit_edge1753:                                  ; preds = %.lr.ph1752.split.prol.loopexit, %.lr.ph1752.split, %.loopexit.thread, %.lr.ph1752.split.us.preheader, %.loopexit
  %.13956.lcssa = phi i32 [ %.129551758, %.loopexit ], [ %.129551758, %.lr.ph1752.split.us.preheader ], [ %.129551758, %.loopexit.thread ], [ %spec.select1224.lcssa.unr, %.lr.ph1752.split.prol.loopexit ], [ %spec.select1224.1, %.lr.ph1752.split ]
  %.26705.lcssa = phi ptr [ %.25704, %.loopexit ], [ %scevgep2042, %.lr.ph1752.split.us.preheader ], [ %.227011761.fr, %.loopexit.thread ], [ %.27706.lcssa.unr, %.lr.ph1752.split.prol.loopexit ], [ %.27706.1, %.lr.ph1752.split ] ; 3 uses
  br i1 %.not1074, label %.thread1309, label %bb.gr

bb.gr:                                            ; preds = %._crit_edge1753
  %i.alp = ptrtoint ptr %.26705.lcssa to i64
  %i.alq = sub i64 %i.alp, %i.ake
  %i.alr = trunc i64 %i.alq to i32                ; 3 uses
  %i.als = icmp sgt i32 %i.alr, 510
  br i1 %i.als, label %bb.gs, label %.thread1309

bb.gs:                                            ; preds = %bb.gr
  %i.alt = add nuw nsw i32 %.147621760, %i.alr    ; 2 uses
  %i.alu = call noundef ptr %0(ptr noundef %.141762, ptr noundef %1, i32 noundef %i.alr) ; 3 uses
  %i.alv = icmp eq ptr %i.alu, null
  br i1 %i.alv, label %.thread1423, label %.thread1309

.thread1309:                                      ; preds = %bb.gs, %bb.gr, %._crit_edge1753
  %.17765 = phi i32 [ %.147621760, %._crit_edge1753 ], [ %.147621760, %bb.gr ], [ %i.alt, %bb.gs ] ; 2 uses
  %.30709 = phi ptr [ %.26705.lcssa, %._crit_edge1753 ], [ %.26705.lcssa, %bb.gr ], [ %i.alu, %bb.gs ] ; 2 uses
  %.17 = phi ptr [ %.141762, %._crit_edge1753 ], [ %.141762, %bb.gr ], [ %i.alu, %bb.gs ] ; 2 uses
  %i.alw = icmp sgt i32 %i.akg, 0
  br i1 %i.alw, label %.lr.ph1764, label %.loopexit1466.loopexit, !llvm.loop !51

.loopexit1466.loopexit:                           ; preds = %.thread1309
  %.pre2075 = load i8, ptr %i.c, align 1, !tbaa !7
  br label %.loopexit1466

.loopexit1466:                                    ; preds = %.loopexit1466.loopexit, %bb.gj
  %i.alx = phi i8 [ %i.agj, %bb.gj ], [ %.pre2075, %.loopexit1466.loopexit ] ; 2 uses
  %.8809 = phi i32 [ %.4805, %bb.gj ], [ %.6807, %.loopexit1466.loopexit ] ; 2 uses
  %.19767 = phi i32 [ %.1749, %bb.gj ], [ %.17765, %.loopexit1466.loopexit ] ; 2 uses
  %.32711 = phi ptr [ %.2681, %bb.gj ], [ %.30709, %.loopexit1466.loopexit ] ; 2 uses
  %.19 = phi ptr [ %.1, %bb.gj ], [ %.17, %.loopexit1466.loopexit ] ; 2 uses
  store ptr %i.j, ptr %i.g, align 8, !tbaa !13
  %.not11541775 = icmp eq i8 %i.alx, 0
  br i1 %.not11541775, label %._crit_edge1781, label %.lr.ph1780

.lr.ph1780:                                       ; preds = %.loopexit1466, %bb.gv
  %i.aly = phi i8 [ %i.anj, %bb.gv ], [ %i.alx, %.loopexit1466 ] ; 2 uses
  %.201778 = phi ptr [ %.24, %bb.gv ], [ %.19, %.loopexit1466 ] ; 4 uses
  %.337121777 = phi ptr [ %.38717, %bb.gv ], [ %.32711, %.loopexit1466 ] ; 4 uses
  %.207681776 = phi i32 [ %.24772, %bb.gv ], [ %.19767, %.loopexit1466 ] ; 3 uses
  %i.alz = sext i8 %i.aly to i32                  ; 2 uses
  %i.ama = ptrtoint ptr %.337121777 to i64
  %i.amb = ptrtoint ptr %.201778 to i64           ; 2 uses
  %.neg1177 = sub i64 %i.amb, %i.ama
  %.neg1178 = trunc i64 %.neg1177 to i32
  %i.amc = add i32 %.neg1178, 512
  %spec.select1211 = call i32 @llvm.smin.i32(i32 %i.amc, i32 %i.alz)
  %.1918 = select i1 %.not1074, i32 %i.alz, i32 %spec.select1211 ; 6 uses
  %i.amd = trunc i32 %.1918 to i8
  %i.ame = sub i8 %i.aly, %i.amd
  store i8 %i.ame, ptr %i.c, align 1, !tbaa !7
  %.not11791768 = icmp eq i32 %.1918, 0
  br i1 %.not11791768, label %._crit_edge1773, label %.lr.ph1772.preheader

.lr.ph1772.preheader:                             ; preds = %.lr.ph1780
  %xtraiter2555 = and i32 %.1918, 3               ; 2 uses
  %lcmp.mod2556.not = icmp eq i32 %xtraiter2555, 0
  br i1 %lcmp.mod2556.not, label %.lr.ph1772.prol.loopexit, label %.lr.ph1772.prol

.lr.ph1772.prol:                                  ; preds = %.lr.ph1772.preheader, %.lr.ph1772.prol
  %.347131770.prol = phi ptr [ %i.ami, %.lr.ph1772.prol ], [ %.337121777, %.lr.ph1772.preheader ] ; 2 uses
  %.29191769.prol = phi i32 [ %i.amj, %.lr.ph1772.prol ], [ %.1918, %.lr.ph1772.preheader ]
  %prol.iter2557 = phi i32 [ %prol.iter2557.next, %.lr.ph1772.prol ], [ 0, %.lr.ph1772.preheader ]
  %i.amf = load ptr, ptr %i.g, align 8, !tbaa !13 ; 2 uses
  %i.amg = getelementptr inbounds nuw i8, ptr %i.amf, i64 1
  store ptr %i.amg, ptr %i.g, align 8, !tbaa !13
  %i.amh = load i8, ptr %i.amf, align 1, !tbaa !7
  %i.ami = getelementptr inbounds nuw i8, ptr %.347131770.prol, i64 1 ; 3 uses
  store i8 %i.amh, ptr %.347131770.prol, align 1, !tbaa !7
  %i.amj = add nsw i32 %.29191769.prol, -1        ; 2 uses
  %prol.iter2557.next = add i32 %prol.iter2557, 1 ; 2 uses
  %prol.iter2557.cmp.not = icmp eq i32 %prol.iter2557.next, %xtraiter2555
  br i1 %prol.iter2557.cmp.not, label %.lr.ph1772.prol.loopexit, label %.lr.ph1772.prol, !llvm.loop !52

.lr.ph1772.prol.loopexit:                         ; preds = %.lr.ph1772.prol, %.lr.ph1772.preheader
  %.lcssa2507.unr = phi ptr [ poison, %.lr.ph1772.preheader ], [ %i.ami, %.lr.ph1772.prol ]
  %.347131770.unr = phi ptr [ %.337121777, %.lr.ph1772.preheader ], [ %i.ami, %.lr.ph1772.prol ]
  %.29191769.unr = phi i32 [ %.1918, %.lr.ph1772.preheader ], [ %i.amj, %.lr.ph1772.prol ]
  %i.amk = icmp ult i32 %.1918, 4
  br i1 %i.amk, label %._crit_edge1773, label %.lr.ph1772

.lr.ph1772:                                       ; preds = %.lr.ph1772.prol.loopexit, %.lr.ph1772
  %.347131770 = phi ptr [ %i.ana, %.lr.ph1772 ], [ %.347131770.unr, %.lr.ph1772.prol.loopexit ] ; 5 uses
  %.29191769 = phi i32 [ %i.anb, %.lr.ph1772 ], [ %.29191769.unr, %.lr.ph1772.prol.loopexit ]
  %i.aml = load ptr, ptr %i.g, align 8, !tbaa !13 ; 2 uses
  %i.amm = getelementptr inbounds nuw i8, ptr %i.aml, i64 1
  store ptr %i.amm, ptr %i.g, align 8, !tbaa !13
  %i.amn = load i8, ptr %i.aml, align 1, !tbaa !7
  %i.amo = getelementptr inbounds nuw i8, ptr %.347131770, i64 1
  store i8 %i.amn, ptr %.347131770, align 1, !tbaa !7
  %i.amp = load ptr, ptr %i.g, align 8, !tbaa !13 ; 2 uses
  %i.amq = getelementptr inbounds nuw i8, ptr %i.amp, i64 1
  store ptr %i.amq, ptr %i.g, align 8, !tbaa !13
  %i.amr = load i8, ptr %i.amp, align 1, !tbaa !7
  %i.ams = getelementptr inbounds nuw i8, ptr %.347131770, i64 2
  store i8 %i.amr, ptr %i.amo, align 1, !tbaa !7
  %i.amt = load ptr, ptr %i.g, align 8, !tbaa !13 ; 2 uses
  %i.amu = getelementptr inbounds nuw i8, ptr %i.amt, i64 1
  store ptr %i.amu, ptr %i.g, align 8, !tbaa !13
  %i.amv = load i8, ptr %i.amt, align 1, !tbaa !7
  %i.amw = getelementptr inbounds nuw i8, ptr %.347131770, i64 3
  store i8 %i.amv, ptr %i.ams, align 1, !tbaa !7
  %i.amx = load ptr, ptr %i.g, align 8, !tbaa !13 ; 2 uses
  %i.amy = getelementptr inbounds nuw i8, ptr %i.amx, i64 1
  store ptr %i.amy, ptr %i.g, align 8, !tbaa !13
  %i.amz = load i8, ptr %i.amx, align 1, !tbaa !7
  %i.ana = getelementptr inbounds nuw i8, ptr %.347131770, i64 4 ; 2 uses
  store i8 %i.amz, ptr %i.amw, align 1, !tbaa !7
  %i.anb = add nsw i32 %.29191769, -4             ; 2 uses
  %.not1179.3 = icmp eq i32 %i.anb, 0
  br i1 %.not1179.3, label %._crit_edge1773, label %.lr.ph1772, !llvm.loop !53

._crit_edge1773:                                  ; preds = %.lr.ph1772.prol.loopexit, %.lr.ph1772, %.lr.ph1780
  %.34713.lcssa = phi ptr [ %.337121777, %.lr.ph1780 ], [ %.lcssa2507.unr, %.lr.ph1772.prol.loopexit ], [ %i.ana, %.lr.ph1772 ] ; 3 uses
  br i1 %.not1074, label %bb.gv, label %bb.gt

bb.gt:                                            ; preds = %._crit_edge1773
  %i.anc = ptrtoint ptr %.34713.lcssa to i64
  %i.and = sub i64 %i.anc, %i.amb
  %i.ane = trunc i64 %i.and to i32                ; 3 uses
  %i.anf = icmp sgt i32 %i.ane, 510
end_hunk_1
begin_hunk_2_@oiio_stbsp_vsprintfcb:bb.a
  %i.aoi = trunc nuw i64 %n.vec2393 to i32
  %i.aoj = sub i32 %.2857.lcssa, %i.aoi
  %i.aok = getelementptr i8, ptr %.37915.lcssa, i64 %n.vec2393 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index2394 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next2398, %vec.epilog.vector.body ] ; 3 uses
  %next.gep2395 = getelementptr i8, ptr %.40719.lcssa, i64 %index2394
  %next.gep2396 = getelementptr i8, ptr %.37915.lcssa, i64 %index2394
  %wide.load2397 = load <4 x i8>, ptr %next.gep2396, align 1, !tbaa !7
  store <4 x i8> %wide.load2397, ptr %next.gep2395, align 1, !tbaa !7
  %index.next2398 = add nuw i64 %index2394, 4     ; 2 uses
  %i.aol = icmp eq i64 %index.next2398, %n.vec2393
  br i1 %i.aol, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !58

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n2399 = icmp eq i64 %n.vec2393, %i.any
  br i1 %cmp.n2399, label %._crit_edge1798, label %.lr.ph1797.preheader

.lr.ph1797.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.417201796.ph = phi ptr [ %.40719.lcssa, %iter.check ], [ %i.aoa, %vec.epilog.iter.check ], [ %i.aoh, %vec.epilog.middle.block ] ; 2 uses
  %.38581795.ph = phi i32 [ %.2857.lcssa, %iter.check ], [ %i.aoc, %vec.epilog.iter.check ], [ %i.aoj, %vec.epilog.middle.block ] ; 4 uses
  %.389161794.ph = phi ptr [ %.37915.lcssa, %iter.check ], [ %i.aod, %vec.epilog.iter.check ], [ %i.aok, %vec.epilog.middle.block ] ; 2 uses
  %i.aom = add nsw i32 %.38581795.ph, -1
  %xtraiter2561 = and i32 %.38581795.ph, 7        ; 2 uses
  %lcmp.mod2562.not = icmp eq i32 %xtraiter2561, 0
  br i1 %lcmp.mod2562.not, label %.lr.ph1797.prol.loopexit, label %.lr.ph1797.prol

.lr.ph1797.prol:                                  ; preds = %.lr.ph1797.preheader, %.lr.ph1797.prol
  %.417201796.prol = phi ptr [ %i.aop, %.lr.ph1797.prol ], [ %.417201796.ph, %.lr.ph1797.preheader ] ; 2 uses
  %.38581795.prol = phi i32 [ %i.aoq, %.lr.ph1797.prol ], [ %.38581795.ph, %.lr.ph1797.preheader ]
  %.389161794.prol = phi ptr [ %i.aon, %.lr.ph1797.prol ], [ %.389161794.ph, %.lr.ph1797.preheader ] ; 2 uses
  %prol.iter2563 = phi i32 [ %prol.iter2563.next, %.lr.ph1797.prol ], [ 0, %.lr.ph1797.preheader ]
  %i.aon = getelementptr inbounds nuw i8, ptr %.389161794.prol, i64 1 ; 3 uses
  %i.aoo = load i8, ptr %.389161794.prol, align 1, !tbaa !7
  %i.aop = getelementptr inbounds nuw i8, ptr %.417201796.prol, i64 1 ; 3 uses
  store i8 %i.aoo, ptr %.417201796.prol, align 1, !tbaa !7
  %i.aoq = add nsw i32 %.38581795.prol, -1        ; 2 uses
  %prol.iter2563.next = add i32 %prol.iter2563, 1 ; 2 uses
  %prol.iter2563.cmp.not = icmp eq i32 %prol.iter2563.next, %xtraiter2561
  br i1 %prol.iter2563.cmp.not, label %.lr.ph1797.prol.loopexit, label %.lr.ph1797.prol, !llvm.loop !59

.lr.ph1797.prol.loopexit:                         ; preds = %.lr.ph1797.prol, %.lr.ph1797.preheader
  %.lcssa2513.unr = phi ptr [ poison, %.lr.ph1797.preheader ], [ %i.aon, %.lr.ph1797.prol ]
  %.lcssa2512.unr = phi ptr [ poison, %.lr.ph1797.preheader ], [ %i.aop, %.lr.ph1797.prol ]
  %.417201796.unr = phi ptr [ %.417201796.ph, %.lr.ph1797.preheader ], [ %i.aop, %.lr.ph1797.prol ]
  %.38581795.unr = phi i32 [ %.38581795.ph, %.lr.ph1797.preheader ], [ %i.aoq, %.lr.ph1797.prol ]
  %.389161794.unr = phi ptr [ %.389161794.ph, %.lr.ph1797.preheader ], [ %i.aon, %.lr.ph1797.prol ]
  %i.aor = icmp ult i32 %i.aom, 7
  br i1 %i.aor, label %._crit_edge1798, label %.lr.ph1797

.lr.ph1789:                                       ; preds = %.lr.ph1789.prol.loopexit, %.lr.ph1789
  %.407191787 = phi ptr [ %i.apo, %.lr.ph1789 ], [ %.407191787.unr, %.lr.ph1789.prol.loopexit ] ; 9 uses
  %.28571786 = phi i32 [ %i.apq, %.lr.ph1789 ], [ %.28571786.unr, %.lr.ph1789.prol.loopexit ] ; 2 uses
  %.379151785 = phi ptr [ %i.app, %.lr.ph1789 ], [ %.379151785.unr, %.lr.ph1789.prol.loopexit ] ; 9 uses
  %i.aos = load volatile i32, ptr %.379151785, align 4, !tbaa !3
  store volatile i32 %i.aos, ptr %.407191787, align 4, !tbaa !3
  %i.aot = getelementptr inbounds nuw i8, ptr %.407191787, i64 4
  %i.aou = getelementptr inbounds nuw i8, ptr %.379151785, i64 4
  %i.aov = load volatile i32, ptr %i.aou, align 4, !tbaa !3
  store volatile i32 %i.aov, ptr %i.aot, align 4, !tbaa !3
  %i.aow = getelementptr inbounds nuw i8, ptr %.407191787, i64 8
  %i.aox = getelementptr inbounds nuw i8, ptr %.379151785, i64 8
  %i.aoy = load volatile i32, ptr %i.aox, align 4, !tbaa !3
  store volatile i32 %i.aoy, ptr %i.aow, align 4, !tbaa !3
  %i.aoz = getelementptr inbounds nuw i8, ptr %.407191787, i64 12
  %i.apa = getelementptr inbounds nuw i8, ptr %.379151785, i64 12
  %i.apb = load volatile i32, ptr %i.apa, align 4, !tbaa !3
  store volatile i32 %i.apb, ptr %i.aoz, align 4, !tbaa !3
  %i.apc = getelementptr inbounds nuw i8, ptr %.407191787, i64 16
  %i.apd = getelementptr inbounds nuw i8, ptr %.379151785, i64 16
  %i.ape = load volatile i32, ptr %i.apd, align 4, !tbaa !3
  store volatile i32 %i.ape, ptr %i.apc, align 4, !tbaa !3
  %i.apf = getelementptr inbounds nuw i8, ptr %.407191787, i64 20
  %i.apg = getelementptr inbounds nuw i8, ptr %.379151785, i64 20
  %i.aph = load volatile i32, ptr %i.apg, align 4, !tbaa !3
  store volatile i32 %i.aph, ptr %i.apf, align 4, !tbaa !3
  %i.api = getelementptr inbounds nuw i8, ptr %.407191787, i64 24
  %i.apj = getelementptr inbounds nuw i8, ptr %.379151785, i64 24
  %i.apk = load volatile i32, ptr %i.apj, align 4, !tbaa !3
  store volatile i32 %i.apk, ptr %i.api, align 4, !tbaa !3
  %i.apl = getelementptr inbounds nuw i8, ptr %.407191787, i64 28
  %i.apm = getelementptr inbounds nuw i8, ptr %.379151785, i64 28
  %i.apn = load volatile i32, ptr %i.apm, align 4, !tbaa !3
  store volatile i32 %i.apn, ptr %i.apl, align 4, !tbaa !3
  %i.apo = getelementptr inbounds nuw i8, ptr %.407191787, i64 32 ; 2 uses
  %i.app = getelementptr inbounds nuw i8, ptr %.379151785, i64 32 ; 2 uses
  %i.apq = add nsw i32 %.28571786, -32            ; 2 uses
  %i.apr = icmp sgt i32 %.28571786, 35
  br i1 %i.apr, label %.lr.ph1789, label %.preheader1449, !llvm.loop !60

.lr.ph1797:                                       ; preds = %.lr.ph1797.prol.loopexit, %.lr.ph1797
  %.417201796 = phi ptr [ %i.aqp, %.lr.ph1797 ], [ %.417201796.unr, %.lr.ph1797.prol.loopexit ] ; 9 uses
  %.38581795 = phi i32 [ %i.aqq, %.lr.ph1797 ], [ %.38581795.unr, %.lr.ph1797.prol.loopexit ]
  %.389161794 = phi ptr [ %i.aqn, %.lr.ph1797 ], [ %.389161794.unr, %.lr.ph1797.prol.loopexit ] ; 9 uses
  %i.aps = getelementptr inbounds nuw i8, ptr %.389161794, i64 1
  %i.apt = load i8, ptr %.389161794, align 1, !tbaa !7
  %i.apu = getelementptr inbounds nuw i8, ptr %.417201796, i64 1
  store i8 %i.apt, ptr %.417201796, align 1, !tbaa !7
  %i.apv = getelementptr inbounds nuw i8, ptr %.389161794, i64 2
  %i.apw = load i8, ptr %i.aps, align 1, !tbaa !7
  %i.apx = getelementptr inbounds nuw i8, ptr %.417201796, i64 2
  store i8 %i.apw, ptr %i.apu, align 1, !tbaa !7
  %i.apy = getelementptr inbounds nuw i8, ptr %.389161794, i64 3
  %i.apz = load i8, ptr %i.apv, align 1, !tbaa !7
  %i.aqa = getelementptr inbounds nuw i8, ptr %.417201796, i64 3
  store i8 %i.apz, ptr %i.apx, align 1, !tbaa !7
  %i.aqb = getelementptr inbounds nuw i8, ptr %.389161794, i64 4
  %i.aqc = load i8, ptr %i.apy, align 1, !tbaa !7
  %i.aqd = getelementptr inbounds nuw i8, ptr %.417201796, i64 4
  store i8 %i.aqc, ptr %i.aqa, align 1, !tbaa !7
  %i.aqe = getelementptr inbounds nuw i8, ptr %.389161794, i64 5
  %i.aqf = load i8, ptr %i.aqb, align 1, !tbaa !7
  %i.aqg = getelementptr inbounds nuw i8, ptr %.417201796, i64 5
  store i8 %i.aqf, ptr %i.aqd, align 1, !tbaa !7
  %i.aqh = getelementptr inbounds nuw i8, ptr %.389161794, i64 6
  %i.aqi = load i8, ptr %i.aqe, align 1, !tbaa !7
  %i.aqj = getelementptr inbounds nuw i8, ptr %.417201796, i64 6
  store i8 %i.aqi, ptr %i.aqg, align 1, !tbaa !7
  %i.aqk = getelementptr inbounds nuw i8, ptr %.389161794, i64 7
  %i.aql = load i8, ptr %i.aqh, align 1, !tbaa !7
  %i.aqm = getelementptr inbounds nuw i8, ptr %.417201796, i64 7
  store i8 %i.aql, ptr %i.aqj, align 1, !tbaa !7
  %i.aqn = getelementptr inbounds nuw i8, ptr %.389161794, i64 8 ; 2 uses
  %i.aqo = load i8, ptr %i.aqk, align 1, !tbaa !7
  %i.aqp = getelementptr inbounds nuw i8, ptr %.417201796, i64 8 ; 2 uses
  store i8 %i.aqo, ptr %i.aqm, align 1, !tbaa !7
  %i.aqq = add nsw i32 %.38581795, -8             ; 2 uses
  %.not1175.7 = icmp eq i32 %i.aqq, 0
  br i1 %.not1175.7, label %._crit_edge1798, label %.lr.ph1797, !llvm.loop !61

._crit_edge1798:                                  ; preds = %.lr.ph1797.prol.loopexit, %.lr.ph1797, %middle.block, %vec.epilog.middle.block, %.preheader1449
  %.38916.lcssa = phi ptr [ %.37915.lcssa, %.preheader1449 ], [ %i.aok, %vec.epilog.middle.block ], [ %i.aod, %middle.block ], [ %.lcssa2513.unr, %.lr.ph1797.prol.loopexit ], [ %i.aqn, %.lr.ph1797 ]
  %.41720.lcssa = phi ptr [ %.40719.lcssa, %.preheader1449 ], [ %i.aoh, %vec.epilog.middle.block ], [ %i.aoa, %middle.block ], [ %.lcssa2512.unr, %.lr.ph1797.prol.loopexit ], [ %i.aqp, %.lr.ph1797 ] ; 3 uses
  br i1 %.not1074, label %bb.gy, label %bb.gw

bb.gw:                                            ; preds = %._crit_edge1798
  %i.aqr = ptrtoint ptr %.41720.lcssa to i64
  %i.aqs = sub i64 %i.aqr, %i.anm
  %i.aqt = trunc i64 %i.aqs to i32                ; 3 uses
  %i.aqu = icmp sgt i32 %i.aqt, 510
  br i1 %i.aqu, label %bb.gx, label %bb.gy

bb.gx:                                            ; preds = %bb.gw
  %i.aqv = add nuw nsw i32 %.257731804, %i.aqt    ; 2 uses
  %i.aqw = call noundef ptr %0(ptr noundef %.251806, ptr noundef %1, i32 noundef %i.aqt) ; 3 uses
  %i.aqx = icmp eq ptr %i.aqw, null
  br i1 %i.aqx, label %.thread1423, label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %bb.gw, %._crit_edge1798
  %.29777 = phi i32 [ %.257731804, %._crit_edge1798 ], [ %.257731804, %bb.gw ], [ %i.aqv, %bb.gx ] ; 2 uses
  %.45724 = phi ptr [ %.41720.lcssa, %._crit_edge1798 ], [ %.41720.lcssa, %bb.gw ], [ %i.aqw, %bb.gx ] ; 2 uses
  %.29 = phi ptr [ %.251806, %._crit_edge1798 ], [ %.251806, %bb.gw ], [ %i.aqw, %bb.gx ] ; 2 uses
  %.not1155 = icmp eq i32 %i.ano, 0
  br i1 %.not1155, label %.preheader1462, label %.lr.ph1808, !llvm.loop !62

.lr.ph1836:                                       ; preds = %.preheader1462, %bb.hb
  %.301835 = phi ptr [ %.34, %bb.hb ], [ %.25.lcssa, %.preheader1462 ] ; 4 uses
  %.467251834 = phi ptr [ %.53, %bb.hb ], [ %.39718.lcssa, %.preheader1462 ]
  %.307781833 = phi i32 [ %.34782, %bb.hb ], [ %.25773.lcssa, %.preheader1462 ] ; 3 uses
  %.48351832 = phi i32 [ %i.arb, %bb.hb ], [ %.3834, %.preheader1462 ] ; 3 uses
  %.467251834.fr = freeze ptr %.467251834         ; 4 uses
  %i.aqy = ptrtoint ptr %.467251834.fr to i64     ; 3 uses
  %i.aqz = ptrtoint ptr %.301835 to i64           ; 2 uses
  %.neg1168 = sub i64 %i.aqz, %i.aqy
  %.neg1169 = trunc i64 %.neg1168 to i32
  %i.ara = add i32 %.neg1169, 512
  %spec.select1213 = call i32 @llvm.smin.i32(i32 %.48351832, i32 %i.ara)
  %.1827 = select i1 %.not1074, i32 %.48351832, i32 %spec.select1213 ; 4 uses
  %i.arb = sub nsw i32 %.48351832, %.1827         ; 2 uses
  %.not11701812 = icmp eq i32 %.1827, 0
  %i.arc = and i64 %i.aqy, 3
  %i.ard = icmp eq i64 %i.arc, 0
  %or.cond12161813 = or i1 %.not11701812, %i.ard
  br i1 %or.cond12161813, label %.preheader1448, label %.lr.ph1817.preheader

.lr.ph1817.preheader:                             ; preds = %.lr.ph1836
  %i.are = trunc i64 %i.aqy to i2
  %i.arf = xor i2 %i.are, -1                      ; 2 uses
  %i.arg = zext i2 %i.arf to i64
  %i.arh = add i32 %.1827, -1                     ; 2 uses
  %i.ari = zext i32 %i.arh to i64
  %umin2043 = call i64 @llvm.umin.i64(i64 %i.arg, i64 %i.ari) ; 2 uses
  %i.arj = add nuw nsw i64 %umin2043, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.467251834.fr, i8 48, i64 %i.arj, i1 false), !tbaa !7
  %scevgep2044 = getelementptr i8, ptr %.467251834.fr, i64 1
  %scevgep2046 = getelementptr i8, ptr %scevgep2044, i64 %umin2043
  %i.ark = zext i2 %i.arf to i32
  %i.arl = call i32 @llvm.usub.sat.i32(i32 %i.arh, i32 %i.ark)
  br label %.preheader1448

.preheader1448:                                   ; preds = %.lr.ph1817.preheader, %.lr.ph1836
  %.2828.lcssa = phi i32 [ %.1827, %.lr.ph1836 ], [ %i.arl, %.lr.ph1817.preheader ] ; 4 uses
  %.47726.lcssa = phi ptr [ %.467251834.fr, %.lr.ph1836 ], [ %scevgep2046, %.lr.ph1817.preheader ] ; 3 uses
  %i.arm = icmp sgt i32 %.2828.lcssa, 3
  br i1 %i.arm, label %.lr.ph1822.preheader, label %.preheader1447

.lr.ph1822.preheader:                             ; preds = %.preheader1448
  %i.arn = call i32 @llvm.usub.sat.i32(i32 %.2828.lcssa, i32 7)
  %i.aro = add nuw i32 %i.arn, 3                  ; 2 uses
  %i.arp = and i32 %i.aro, -4
  %i.arq = zext nneg i32 %i.arp to i64            ; 2 uses
  %i.arr = add nuw nsw i64 %i.arq, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.47726.lcssa, i8 48, i64 %i.arr, i1 false), !tbaa !3
  %scevgep2049 = getelementptr i8, ptr %.47726.lcssa, i64 4
  %scevgep2051 = getelementptr i8, ptr %scevgep2049, i64 %i.arq
  %i.ars = add nsw i32 %.2828.lcssa, -4
  %i.art = and i32 %i.aro, -4
  %i.aru = sub nsw i32 %i.ars, %i.art
  br label %.preheader1447

.preheader1447:                                   ; preds = %.lr.ph1822.preheader, %.preheader1448
  %.3829.lcssa = phi i32 [ %.2828.lcssa, %.preheader1448 ], [ %i.aru, %.lr.ph1822.preheader ] ; 3 uses
  %.48727.lcssa = phi ptr [ %.47726.lcssa, %.preheader1448 ], [ %scevgep2051, %.lr.ph1822.preheader ] ; 3 uses
  %.not11711825 = icmp eq i32 %.3829.lcssa, 0
  br i1 %.not11711825, label %._crit_edge1829, label %.lr.ph1828.preheader

.lr.ph1828.preheader:                             ; preds = %.preheader1447
  %i.arv = zext i32 %.3829.lcssa to i64
  call void @llvm.memset.p0.i64(ptr align 1 %.48727.lcssa, i8 48, i64 %i.arv, i1 false), !tbaa !7
  %scevgep2052 = getelementptr i8, ptr %.48727.lcssa, i64 1
  %i.arw = add i32 %.3829.lcssa, -1
  %i.arx = zext i32 %i.arw to i64
  %scevgep2053 = getelementptr i8, ptr %scevgep2052, i64 %i.arx
  br label %._crit_edge1829

._crit_edge1829:                                  ; preds = %.lr.ph1828.preheader, %.preheader1447
  %.49728.lcssa = phi ptr [ %.48727.lcssa, %.preheader1447 ], [ %scevgep2053, %.lr.ph1828.preheader ] ; 3 uses
  br i1 %.not1074, label %bb.hb, label %bb.gz

bb.gz:                                            ; preds = %._crit_edge1829
  %i.ary = ptrtoint ptr %.49728.lcssa to i64
  %i.arz = sub i64 %i.ary, %i.aqz
  %i.asa = trunc i64 %i.arz to i32                ; 3 uses
  %i.asb = icmp sgt i32 %i.asa, 510
  br i1 %i.asb, label %bb.ha, label %bb.hb

bb.ha:                                            ; preds = %bb.gz
  %i.asc = add nuw nsw i32 %.307781833, %i.asa    ; 2 uses
  %i.asd = call noundef ptr %0(ptr noundef %.301835, ptr noundef %1, i32 noundef %i.asa) ; 3 uses
  %i.ase = icmp eq ptr %i.asd, null
  br i1 %i.ase, label %.thread1423, label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %bb.gz, %._crit_edge1829
  %.34782 = phi i32 [ %.307781833, %._crit_edge1829 ], [ %.307781833, %bb.gz ], [ %i.asc, %bb.ha ] ; 2 uses
  %.53 = phi ptr [ %.49728.lcssa, %._crit_edge1829 ], [ %.49728.lcssa, %bb.gz ], [ %i.asd, %bb.ha ] ; 2 uses
  %.34 = phi ptr [ %.301835, %._crit_edge1829 ], [ %.301835, %bb.gz ], [ %i.asd, %bb.ha ] ; 2 uses
  %.not1156 = icmp eq i32 %i.arb, 0
  br i1 %.not1156, label %._crit_edge1837, label %.lr.ph1836, !llvm.loop !63

._crit_edge1837:                                  ; preds = %bb.hb, %.preheader1462
  %.30778.lcssa = phi i32 [ %.25773.lcssa, %.preheader1462 ], [ %.34782, %bb.hb ] ; 2 uses
  %.46725.lcssa = phi ptr [ %.39718.lcssa, %.preheader1462 ], [ %.53, %bb.hb ] ; 2 uses
  %.30.lcssa = phi ptr [ %.25.lcssa, %.preheader1462 ], [ %.34, %bb.hb ] ; 2 uses
  store ptr %i.s, ptr %i.g, align 8, !tbaa !13
  %i.asf = load i8, ptr %i.d, align 1, !tbaa !7   ; 2 uses
  %.not11571848 = icmp eq i8 %i.asf, 0
  br i1 %.not11571848, label %._crit_edge1854, label %.lr.ph1853

.lr.ph1853:                                       ; preds = %._crit_edge1837, %bb.he
  %i.asg = phi i8 [ %i.atr, %bb.he ], [ %i.asf, %._crit_edge1837 ] ; 2 uses
  %.351851 = phi ptr [ %.39, %bb.he ], [ %.30.lcssa, %._crit_edge1837 ] ; 4 uses
  %.541850 = phi ptr [ %.59, %bb.he ], [ %.46725.lcssa, %._crit_edge1837 ] ; 4 uses
  %.357831849 = phi i32 [ %.39787, %bb.he ], [ %.30778.lcssa, %._crit_edge1837 ] ; 3 uses
  %i.ash = sext i8 %i.asg to i32                  ; 2 uses
  %i.asi = ptrtoint ptr %.541850 to i64
  %i.asj = ptrtoint ptr %.351851 to i64           ; 2 uses
  %.neg1164 = sub i64 %i.asj, %i.asi
  %.neg1165 = trunc i64 %.neg1164 to i32
  %i.ask = add i32 %.neg1165, 512
  %spec.select1217 = call i32 @llvm.smin.i32(i32 %i.ask, i32 %i.ash)
  %.1799 = select i1 %.not1074, i32 %i.ash, i32 %spec.select1217 ; 6 uses
  %i.asl = trunc i32 %.1799 to i8
  %i.asm = sub i8 %i.asg, %i.asl
  store i8 %i.asm, ptr %i.d, align 1, !tbaa !7
  %.not11661841 = icmp eq i32 %.1799, 0
  br i1 %.not11661841, label %._crit_edge1846, label %.lr.ph1845.preheader

.lr.ph1845.preheader:                             ; preds = %.lr.ph1853
  %xtraiter2564 = and i32 %.1799, 3               ; 2 uses
  %lcmp.mod2565.not = icmp eq i32 %xtraiter2564, 0
  br i1 %lcmp.mod2565.not, label %.lr.ph1845.prol.loopexit, label %.lr.ph1845.prol

.lr.ph1845.prol:                                  ; preds = %.lr.ph1845.preheader, %.lr.ph1845.prol
  %.551843.prol = phi ptr [ %i.asq, %.lr.ph1845.prol ], [ %.541850, %.lr.ph1845.preheader ] ; 2 uses
  %.28001842.prol = phi i32 [ %i.asr, %.lr.ph1845.prol ], [ %.1799, %.lr.ph1845.preheader ]
  %prol.iter2566 = phi i32 [ %prol.iter2566.next, %.lr.ph1845.prol ], [ 0, %.lr.ph1845.preheader ]
  %i.asn = load ptr, ptr %i.g, align 8, !tbaa !13 ; 2 uses
  %i.aso = getelementptr inbounds nuw i8, ptr %i.asn, i64 1
  store ptr %i.aso, ptr %i.g, align 8, !tbaa !13
  %i.asp = load i8, ptr %i.asn, align 1, !tbaa !7
  %i.asq = getelementptr inbounds nuw i8, ptr %.551843.prol, i64 1 ; 3 uses
  store i8 %i.asp, ptr %.551843.prol, align 1, !tbaa !7
  %i.asr = add nsw i32 %.28001842.prol, -1        ; 2 uses
  %prol.iter2566.next = add i32 %prol.iter2566, 1 ; 2 uses
  %prol.iter2566.cmp.not = icmp eq i32 %prol.iter2566.next, %xtraiter2564
  br i1 %prol.iter2566.cmp.not, label %.lr.ph1845.prol.loopexit, label %.lr.ph1845.prol, !llvm.loop !64

.lr.ph1845.prol.loopexit:                         ; preds = %.lr.ph1845.prol, %.lr.ph1845.preheader
  %.lcssa2516.unr = phi ptr [ poison, %.lr.ph1845.preheader ], [ %i.asq, %.lr.ph1845.prol ]
  %.551843.unr = phi ptr [ %.541850, %.lr.ph1845.preheader ], [ %i.asq, %.lr.ph1845.prol ]
  %.28001842.unr = phi i32 [ %.1799, %.lr.ph1845.preheader ], [ %i.asr, %.lr.ph1845.prol ]
  %i.ass = icmp ult i32 %.1799, 4
  br i1 %i.ass, label %._crit_edge1846, label %.lr.ph1845

.lr.ph1845:                                       ; preds = %.lr.ph1845.prol.loopexit, %.lr.ph1845
  %.551843 = phi ptr [ %i.ati, %.lr.ph1845 ], [ %.551843.unr, %.lr.ph1845.prol.loopexit ] ; 5 uses
  %.28001842 = phi i32 [ %i.atj, %.lr.ph1845 ], [ %.28001842.unr, %.lr.ph1845.prol.loopexit ]
  %i.ast = load ptr, ptr %i.g, align 8, !tbaa !13 ; 2 uses
  %i.asu = getelementptr inbounds nuw i8, ptr %i.ast, i64 1
  store ptr %i.asu, ptr %i.g, align 8, !tbaa !13
  %i.asv = load i8, ptr %i.ast, align 1, !tbaa !7
  %i.asw = getelementptr inbounds nuw i8, ptr %.551843, i64 1
  store i8 %i.asv, ptr %.551843, align 1, !tbaa !7
  %i.asx = load ptr, ptr %i.g, align 8, !tbaa !13 ; 2 uses
  %i.asy = getelementptr inbounds nuw i8, ptr %i.asx, i64 1
  store ptr %i.asy, ptr %i.g, align 8, !tbaa !13
  %i.asz = load i8, ptr %i.asx, align 1, !tbaa !7
  %i.ata = getelementptr inbounds nuw i8, ptr %.551843, i64 2
  store i8 %i.asz, ptr %i.asw, align 1, !tbaa !7
  %i.atb = load ptr, ptr %i.g, align 8, !tbaa !13 ; 2 uses
  %i.atc = getelementptr inbounds nuw i8, ptr %i.atb, i64 1
  store ptr %i.atc, ptr %i.g, align 8, !tbaa !13
  %i.atd = load i8, ptr %i.atb, align 1, !tbaa !7
  %i.ate = getelementptr inbounds nuw i8, ptr %.551843, i64 3
  store i8 %i.atd, ptr %i.ata, align 1, !tbaa !7
  %i.atf = load ptr, ptr %i.g, align 8, !tbaa !13 ; 2 uses
  %i.atg = getelementptr inbounds nuw i8, ptr %i.atf, i64 1
  store ptr %i.atg, ptr %i.g, align 8, !tbaa !13
  %i.ath = load i8, ptr %i.atf, align 1, !tbaa !7
  %i.ati = getelementptr inbounds nuw i8, ptr %.551843, i64 4 ; 2 uses
  store i8 %i.ath, ptr %i.ate, align 1, !tbaa !7
  %i.atj = add nsw i32 %.28001842, -4             ; 2 uses
  %.not1166.3 = icmp eq i32 %i.atj, 0
  br i1 %.not1166.3, label %._crit_edge1846, label %.lr.ph1845, !llvm.loop !65

._crit_edge1846:                                  ; preds = %.lr.ph1845.prol.loopexit, %.lr.ph1845, %.lr.ph1853
  %.55.lcssa = phi ptr [ %.541850, %.lr.ph1853 ], [ %.lcssa2516.unr, %.lr.ph1845.prol.loopexit ], [ %i.ati, %.lr.ph1845 ] ; 3 uses
  br i1 %.not1074, label %bb.he, label %bb.hc

bb.hc:                                            ; preds = %._crit_edge1846
  %i.atk = ptrtoint ptr %.55.lcssa to i64
  %i.atl = sub i64 %i.atk, %i.asj
  %i.atm = trunc i64 %i.atl to i32                ; 3 uses
  %i.atn = icmp sgt i32 %i.atm, 510
  br i1 %i.atn, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %bb.hc
  %i.ato = add nuw nsw i32 %.357831849, %i.atm    ; 2 uses
  %i.atp = call noundef ptr %0(ptr noundef %.351851, ptr noundef %1, i32 noundef %i.atm) ; 3 uses
  %i.atq = icmp eq ptr %i.atp, null
  br i1 %i.atq, label %.thread1423, label %bb.he

bb.he:                                            ; preds = %bb.hd, %bb.hc, %._crit_edge1846
  %.39787 = phi i32 [ %.357831849, %._crit_edge1846 ], [ %.357831849, %bb.hc ], [ %i.ato, %bb.hd ] ; 2 uses
  %.59 = phi ptr [ %.55.lcssa, %._crit_edge1846 ], [ %.55.lcssa, %bb.hc ], [ %i.atp, %bb.hd ] ; 2 uses
  %.39 = phi ptr [ %.351851, %._crit_edge1846 ], [ %.351851, %bb.hc ], [ %i.atp, %bb.hd ] ; 2 uses
  %i.atr = load i8, ptr %i.d, align 1, !tbaa !7   ; 2 uses
  %.not1157 = icmp eq i8 %i.atr, 0
  br i1 %.not1157, label %._crit_edge1854, label %.lr.ph1853, !llvm.loop !66

._crit_edge1854:                                  ; preds = %bb.he, %._crit_edge1837
  %.35783.lcssa = phi i32 [ %.30778.lcssa, %._crit_edge1837 ], [ %.39787, %bb.he ] ; 2 uses
  %.54.lcssa = phi ptr [ %.46725.lcssa, %._crit_edge1837 ], [ %.59, %bb.he ] ; 2 uses
  %.35.lcssa = phi ptr [ %.30.lcssa, %._crit_edge1837 ], [ %.39, %bb.he ] ; 2 uses
  %i.ats = trunc i32 %.18854 to i1
  %i.att = icmp sgt i32 %.88092201, 0
  %or.cond48 = select i1 %i.ats, i1 %i.att, i1 false
  br i1 %or.cond48, label %.preheader1459, label %.backedge2451

bb.hf:                                            ; preds = %bb.hh, %._crit_edge1875, %bb.hg
  %.44792.ph = phi i32 [ %.40788, %bb.hg ], [ %.40788, %._crit_edge1875 ], [ %i.auy, %bb.hh ] ; 2 uses
  %.67.ph = phi ptr [ %.63.lcssa, %bb.hg ], [ %.63.lcssa, %._crit_edge1875 ], [ %i.auz, %bb.hh ] ; 2 uses
  %.44.ph = phi ptr [ %.40, %bb.hg ], [ %.40, %._crit_edge1875 ], [ %i.auz, %bb.hh ] ; 2 uses
  %.old47.not = icmp eq i32 %i.atx, 0
  br i1 %.old47.not, label %.backedge2451, label %.preheader1459

.preheader1459:                                   ; preds = %._crit_edge1854, %bb.hf
  %.9810 = phi i32 [ %i.atx, %bb.hf ], [ %.88092201, %._crit_edge1854 ] ; 3 uses
  %.40788 = phi i32 [ %.44792.ph, %bb.hf ], [ %.35783.lcssa, %._crit_edge1854 ] ; 3 uses
  %.60 = phi ptr [ %.67.ph, %bb.hf ], [ %.54.lcssa, %._crit_edge1854 ]
  %.40 = phi ptr [ %.44.ph, %bb.hf ], [ %.35.lcssa, %._crit_edge1854 ] ; 4 uses
  %.60.fr = freeze ptr %.60                       ; 4 uses
  %i.atu = ptrtoint ptr %.60.fr to i64            ; 3 uses
  %i.atv = ptrtoint ptr %.40 to i64               ; 2 uses
  %.neg1159 = sub i64 %i.atv, %i.atu
  %.neg1160 = trunc i64 %.neg1159 to i32
  %i.atw = add i32 %.neg1160, 512
  %spec.select1218 = call i32 @llvm.smin.i32(i32 %.9810, i32 %i.atw)
  %.1730 = select i1 %.not1074, i32 %.9810, i32 %spec.select1218 ; 4 uses
  %i.atx = sub nsw i32 %.9810, %.1730             ; 2 uses
  %.not11611858 = icmp eq i32 %.1730, 0
  %i.aty = and i64 %i.atu, 3
  %i.atz = icmp eq i64 %i.aty, 0
  %or.cond12211859 = or i1 %.not11611858, %i.atz
  br i1 %or.cond12211859, label %.preheader1446, label %.lr.ph1863.preheader

.lr.ph1863.preheader:                             ; preds = %.preheader1459
  %i.aua = trunc i64 %i.atu to i2
  %i.aub = xor i2 %i.aua, -1                      ; 2 uses
  %i.auc = zext i2 %i.aub to i64
  %i.aud = add i32 %.1730, -1                     ; 2 uses
  %i.aue = zext i32 %i.aud to i64
  %umin2054 = call i64 @llvm.umin.i64(i64 %i.auc, i64 %i.aue) ; 2 uses
  %i.auf = add nuw nsw i64 %umin2054, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.60.fr, i8 32, i64 %i.auf, i1 false), !tbaa !7
  %scevgep2055 = getelementptr i8, ptr %.60.fr, i64 1
  %scevgep2057 = getelementptr i8, ptr %scevgep2055, i64 %umin2054
  %i.aug = zext i2 %i.aub to i32
  %i.auh = call i32 @llvm.usub.sat.i32(i32 %i.aud, i32 %i.aug)
  br label %.preheader1446

.preheader1446:                                   ; preds = %.lr.ph1863.preheader, %.preheader1459
  %.2731.lcssa = phi i32 [ %.1730, %.preheader1459 ], [ %i.auh, %.lr.ph1863.preheader ] ; 4 uses
  %.61.lcssa = phi ptr [ %.60.fr, %.preheader1459 ], [ %scevgep2057, %.lr.ph1863.preheader ] ; 3 uses
  %i.aui = icmp sgt i32 %.2731.lcssa, 3
  br i1 %i.aui, label %.lr.ph1868.preheader, label %.preheader

.lr.ph1868.preheader:                             ; preds = %.preheader1446
  %i.auj = call i32 @llvm.usub.sat.i32(i32 %.2731.lcssa, i32 7)
  %i.auk = add nuw i32 %i.auj, 3                  ; 2 uses
  %i.aul = and i32 %i.auk, -4
  %i.aum = zext nneg i32 %i.aul to i64            ; 2 uses
  %i.aun = add nuw nsw i64 %i.aum, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.61.lcssa, i8 32, i64 %i.aun, i1 false), !tbaa !3
  %scevgep2060 = getelementptr i8, ptr %.61.lcssa, i64 4
  %scevgep2062 = getelementptr i8, ptr %scevgep2060, i64 %i.aum
  %i.auo = add nsw i32 %.2731.lcssa, -4
  %i.aup = and i32 %i.auk, -4
  %i.auq = sub nsw i32 %i.auo, %i.aup
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph1868.preheader, %.preheader1446
  %.3732.lcssa = phi i32 [ %.2731.lcssa, %.preheader1446 ], [ %i.auq, %.lr.ph1868.preheader ] ; 3 uses
  %.62.lcssa = phi ptr [ %.61.lcssa, %.preheader1446 ], [ %scevgep2062, %.lr.ph1868.preheader ] ; 3 uses
  %.not11621871 = icmp eq i32 %.3732.lcssa, 0
  br i1 %.not11621871, label %._crit_edge1875, label %.lr.ph1874.preheader

.lr.ph1874.preheader:                             ; preds = %.preheader
  %i.aur = zext i32 %.3732.lcssa to i64
  call void @llvm.memset.p0.i64(ptr align 1 %.62.lcssa, i8 32, i64 %i.aur, i1 false), !tbaa !7
  %scevgep2063 = getelementptr i8, ptr %.62.lcssa, i64 1
  %i.aus = add i32 %.3732.lcssa, -1
  %i.aut = zext i32 %i.aus to i64
  %scevgep2064 = getelementptr i8, ptr %scevgep2063, i64 %i.aut
  br label %._crit_edge1875

._crit_edge1875:                                  ; preds = %.lr.ph1874.preheader, %.preheader
  %.63.lcssa = phi ptr [ %.62.lcssa, %.preheader ], [ %scevgep2064, %.lr.ph1874.preheader ] ; 3 uses
  br i1 %.not1074, label %bb.hf, label %bb.hg

bb.hg:                                            ; preds = %._crit_edge1875
  %i.auu = ptrtoint ptr %.63.lcssa to i64
  %i.auv = sub i64 %i.auu, %i.atv
  %i.auw = trunc i64 %i.auv to i32                ; 3 uses
  %i.aux = icmp sgt i32 %i.auw, 510
  br i1 %i.aux, label %bb.hh, label %bb.hf

bb.hh:                                            ; preds = %bb.hg
  %i.auy = add nuw nsw i32 %.40788, %i.auw        ; 2 uses
  %i.auz = call noundef ptr %0(ptr noundef %.40, ptr noundef %1, i32 noundef %i.auw) ; 3 uses
  %i.ava = icmp eq ptr %i.auz, null
  br i1 %i.ava, label %.thread1423, label %bb.hf, !llvm.loop !67

bb.hi:                                            ; preds = %bb.ai
  store i8 %i.ff, ptr %i.u, align 1, !tbaa !7
  store i32 1, ptr %i.e, align 4, !tbaa !3
  store i8 0, ptr %i.c, align 1, !tbaa !7
  store i8 0, ptr %i.d, align 1, !tbaa !7
  store i32 0, ptr %i.f, align 4, !tbaa !3
  br label %bb.gg

bb.hj:                                            ; preds = %thread-pre-split
  br i1 %.not1074, label %bb.hk, label %bb.hl

bb.hk:                                            ; preds = %bb.hj
  store i8 0, ptr %.3682, align 1, !tbaa !7
  br label %.thread1423

bb.hl:                                            ; preds = %bb.hj
  %i.avb = ptrtoint ptr %.3682 to i64
  %i.avc = ptrtoint ptr %.1 to i64
  %i.avd = sub i64 %i.avb, %i.avc
  %i.ave = trunc i64 %i.avd to i32                ; 3 uses
  %i.avf = icmp sgt i32 %i.ave, 0
  br i1 %i.avf, label %bb.hm, label %.thread1423

bb.hm:                                            ; preds = %bb.hl
  %i.avg = add nuw nsw i32 %.1749, %i.ave
  %i.avh = call noundef ptr %0(ptr noundef %.1, ptr noundef %1, i32 noundef %i.ave) ; 2 uses
  br label %.thread1423

.thread1423:                                      ; preds = %bb.e, %bb.gm, %bb.go, %bb.gs, %bb.gu, %bb.gx, %bb.ha, %bb.hd, %bb.hh, %bb.hm, %bb.hl, %bb.hk
  %.49797 = phi i32 [ %.1749, %bb.hl ], [ %.1749, %bb.hk ], [ %i.avg, %bb.hm ], [ %i.aie, %bb.gm ], [ %i.alt, %bb.gs ], [ %i.ajq, %bb.go ], [ %i.auy, %bb.hh ], [ %i.ato, %bb.hd ], [ %i.asc, %bb.ha ], [ %i.aqv, %bb.gx ], [ %i.ang, %bb.gu ], [ %i.bf, %bb.e ]
  %.72 = phi ptr [ %.3682, %bb.hl ], [ %.3682, %bb.hk ], [ %i.avh, %bb.hm ], [ null, %bb.gm ], [ null, %bb.gs ], [ null, %bb.go ], [ null, %bb.hh ], [ null, %bb.hd ], [ null, %bb.ha ], [ null, %bb.gx ], [ null, %bb.gu ], [ null, %bb.e ]
  %.49 = phi ptr [ %.1, %bb.hl ], [ %.1, %bb.hk ], [ %i.avh, %bb.hm ], [ null, %bb.gm ], [ null, %bb.gs ], [ null, %bb.go ], [ null, %bb.hh ], [ null, %bb.hd ], [ null, %bb.ha ], [ null, %bb.gx ], [ null, %bb.gu ], [ null, %bb.e ]
  %i.avi = ptrtoint ptr %.72 to i64
  %i.avj = ptrtoint ptr %.49 to i64
  %i.avk = sub i64 %i.avi, %i.avj
  %i.avl = trunc i64 %i.avk to i32
  %i.avm = add nsw i32 %.49797, %i.avl
  ret i32 %i.avm
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL18stbsp__real_to_strPPKcPjPcPidj(ptr nofree noundef nonnull writeonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr noundef nonnull %2, ptr nofree noundef nonnull writeonly captures(none) %3, double noundef %4, i32 noundef %5) unnamed_addr #3 {
bb.a:
  %i.a = bitcast double %4 to i64                 ; 5 uses
  %i.b = lshr i64 %i.a, 52
  %i.c = trunc nuw nsw i64 %i.b to i32
  %i.d = and i32 %i.c, 2047                       ; 2 uses
  %i.e = tail call double @llvm.fabs.f64(double %4) ; 12 uses
  switch i32 %i.d, label %.loopexit132 [
    i32 2047, label %bb.b
    i32 0, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = and i64 %i.a, 4503599627370495
  %.not119 = icmp eq i64 %i.f, 0
  %.str.41..str.42 = select i1 %.not119, ptr @.str.42, ptr @.str.41
  store ptr %.str.41..str.42, ptr %0, align 8, !tbaa !13
  store i32 28672, ptr %3, align 4, !tbaa !3
  br label %bb.ac

bb.c:                                             ; preds = %bb.a
  %i.g = fcmp oeq double %4, 0.000000e+00
  br i1 %i.g, label %bb.d, label %.preheader131

.preheader131:                                    ; preds = %bb.c
  %i.h = and i64 %i.a, 2251799813685248
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %.loopexit132.thread

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %3, align 4, !tbaa !3
  store ptr %2, ptr %0, align 8, !tbaa !13
  store i8 48, ptr %2, align 1, !tbaa !7
  br label %bb.ac

.lr.ph:                                           ; preds = %.preheader131, %.lr.ph
  %.085139 = phi i32 [ %i.j, %.lr.ph ], [ 0, %.preheader131 ]
  %.097138 = phi i64 [ %i.k, %.lr.ph ], [ 2251799813685248, %.preheader131 ]
  %i.j = add nsw i32 %.085139, -1                 ; 2 uses
  %i.k = lshr i64 %.097138, 1                     ; 2 uses
  %i.l = and i64 %i.k, %i.a
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %.lr.ph, label %.loopexit132, !llvm.loop !68

.loopexit132:                                     ; preds = %.lr.ph, %bb.a
  %.186 = phi i32 [ %i.d, %bb.a ], [ %i.j, %.lr.ph ] ; 2 uses
  %i.n = add nsw i32 %.186, -1023                 ; 2 uses
  %i.o = icmp slt i32 %.186, 1023
  br i1 %i.o, label %.loopexit132.thread, label %bb.e

.loopexit132.thread:                              ; preds = %.preheader131, %.loopexit132
  %i.p = phi i32 [ %i.n, %.loopexit132 ], [ -1023, %.preheader131 ]
  %.neg129 = mul i32 %i.p, -617
  %i.q = lshr i32 %.neg129, 11
  %.neg = sub nsw i32 0, %i.q
  br label %bb.f

bb.e:                                             ; preds = %.loopexit132
  %i.r = mul nsw i32 %i.n, 1233
  %i.s = lshr i32 %i.r, 12
  %i.t = add nuw nsw i32 %i.s, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.loopexit132.thread
  %i.u = phi i32 [ %.neg, %.loopexit132.thread ], [ %i.t, %bb.e ] ; 3 uses
  %i.v = sub nsw i32 18, %i.u                     ; 3 uses
  %or.cond.i = icmp ult i32 %i.v, 23
  br i1 %or.cond.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr @_ZL10stbsp__bot, i64 %i.w
  %i.y = load double, ptr %i.x, align 8           ; 3 uses
  %i.z = fmul double %i.e, %i.y                   ; 2 uses
  %i.aa = bitcast double %i.e to i64
  %i.ab = and i64 %i.aa, 9223372036720558080
  %i.ac = bitcast i64 %i.ab to double             ; 3 uses
  %i.ad = bitcast double %i.y to i64
  %i.ae = and i64 %i.ad, -134217728
  %i.af = bitcast i64 %i.ae to double             ; 3 uses
  %i.ag = fsub double %i.e, %i.ac                 ; 2 uses
  %i.ah = fsub double %i.y, %i.af                 ; 2 uses
  %i.ai = fneg double %i.z
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.ac, double %i.af, double %i.ai)
  %i.ak = tail call double @llvm.fmuladd.f64(double %i.ac, double %i.ah, double %i.aj)
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.af, double %i.ak)
  %i.am = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.ah, double %i.al)
  br label %_ZL23stbsp__raise_to_power10PdS_di.exit

bb.h:                                             ; preds = %bb.f
  %i.an = icmp sgt i32 %i.u, 18
  %spec.select.i = tail call i32 @llvm.abs.i32(i32 range(i32 -524270, 1048595) %i.v, i1 true) ; 2 uses
  %i.ao = mul nuw nsw i32 %spec.select.i, 713
  %i.ap = lshr i32 %i.ao, 14                      ; 3 uses
  %spec.store.select.i = tail call i32 @llvm.umin.i32(i32 %i.ap, i32 13) ; 3 uses
  %.neg.i = mul nsw i32 %spec.store.select.i, -23
  %i.aq = add nsw i32 %.neg.i, %spec.select.i     ; 5 uses
  %.not235.i = icmp eq i32 %i.aq, 0               ; 2 uses
  br i1 %i.an, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  br i1 %.not235.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = add nsw i32 %i.aq, -1
  %i.as = sext i32 %i.ar to i64                   ; 2 uses
  %i.at = getelementptr inbounds [8 x i8], ptr @_ZL13stbsp__negbot, i64 %i.as
  %i.au = load double, ptr %i.at, align 8         ; 3 uses
  %i.av = fmul double %i.e, %i.au                 ; 2 uses
  %i.aw = bitcast double %i.e to i64
  %i.ax = and i64 %i.aw, 9223372036720558080
end_hunk_2
