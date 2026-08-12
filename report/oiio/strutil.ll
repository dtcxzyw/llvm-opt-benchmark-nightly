inline.NumInlined: 4879
inline.NumDeleted: 1465
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 53
begin_hunk_0_@oiio_stbsp_vsprintfcb:bb.a
  %i.sa = add nsw i32 %i.pi, -1
  store i8 43, ptr %i.t, align 1, !tbaa !7
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.sb = phi i32 [ %i.sa, %bb.ci ], [ %i.rz, %bb.ch ] ; 4 uses
  %i.sc = icmp samesign ugt i32 %i.sb, 99         ; 2 uses
  %i.sd = select i1 %i.sc, i32 5, i32 4           ; 2 uses
  %i.se = trunc nuw nsw i32 %i.sd to i8
  store i8 %i.se, ptr %i.d, align 1, !tbaa !7
  %i.sf = urem i32 %i.sb, 10
  %i.sg = trunc nuw nsw i32 %i.sf to i8
  %i.sh = or disjoint i8 %i.sg, 48
  %i.si = zext nneg i32 %i.sd to i64              ; 3 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.si
  store i8 %i.sh, ptr %i.sj, align 1, !tbaa !7
  %i.sk = sdiv i32 %i.sb, 10                      ; 2 uses
  %i.sl = srem i32 %i.sk, 10
  %i.sm = trunc nsw i32 %i.sl to i8
  %i.sn = add nsw i8 %i.sm, 48
  %i.so = getelementptr i8, ptr %i.d, i64 %i.si
  %i.sp = getelementptr i8, ptr %i.so, i64 -1
  store i8 %i.sn, ptr %i.sp, align 1, !tbaa !7
  br i1 %i.sc, label %bb.ck, label %.loopexit1472

bb.ck:                                            ; preds = %bb.cj
  %i.sq = sdiv i32 %i.sb, 100                     ; 2 uses
  %i.sr = srem i32 %i.sq, 10
  %i.ss = trunc nsw i32 %i.sr to i8
  %i.st = add nsw i8 %i.ss, 48
  %i.su = getelementptr i8, ptr %i.d, i64 %i.si
  %i.sv = getelementptr i8, ptr %i.su, i64 -2
  store i8 %i.st, ptr %i.sv, align 1, !tbaa !7
  br label %.loopexit1472

bb.cl:                                            ; preds = %bb.ai
  %i.sw = load i32, ptr %i.n, align 4             ; 3 uses
  %i.sx = icmp ult i32 %i.sw, 161
  br i1 %i.sx, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.sy = load ptr, ptr %i.i, align 8
  %i.sz = zext nneg i32 %i.sw to i64
  %i.ta = getelementptr i8, ptr %i.sy, i64 %i.sz
  %i.tb = add nuw nsw i32 %i.sw, 16
  store i32 %i.tb, ptr %i.n, align 4
  br label %bb.co

bb.cn:                                            ; preds = %bb.cl
  %i.tc = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.td = getelementptr i8, ptr %i.tc, i64 8
  store ptr %i.td, ptr %i.h, align 8
  br label %bb.co

bb.co:                                            ; preds = %bb.cm, %bb.cn
  %i.te = phi ptr [ %i.ta, %bb.cm ], [ %i.tc, %bb.cn ]
  %i.tf = load double, ptr %i.te, align 8, !tbaa !20 ; 2 uses
  %.pre2072 = and i32 %.3839, 256
  %i.tg = icmp eq i32 %.pre2072, 0
  br i1 %i.tg, label %.loopexit1481, label %bb.cp

bb.cp:                                            ; preds = %.thread2169, %bb.co
  %.58162176 = phi i32 [ %.10821, %.thread2169 ], [ %.1812, %bb.co ] ; 9 uses
  %.78432175 = phi i32 [ %.16852, %.thread2169 ], [ %.3839, %bb.co ] ; 11 uses
  %.09592174 = phi double [ %i.aer, %.thread2169 ], [ %i.tf, %bb.co ] ; 5 uses
  %i.th = and i32 %.78432175, 2048
  %.not1105 = icmp eq i32 %i.th, 0
  %spec.store.select26 = select i1 %.not1105, double 1.000000e+03, double 1.024000e+03 ; 9 uses
  %i.ti = icmp ult i32 %.78432175, 67108864
  br i1 %i.ti, label %.lr.ph1595, label %.loopexit1481

.lr.ph1595:                                       ; preds = %bb.cp
  %i.tj = fneg double %spec.store.select26        ; 4 uses
  %i.tk = fcmp olt double %.09592174, %spec.store.select26
  %i.tl = fcmp ogt double %.09592174, %i.tj
  %or.cond1190 = and i1 %i.tk, %i.tl
  br i1 %or.cond1190, label %.loopexit1481, label %bb.cq

bb.cq:                                            ; preds = %.lr.ph1595
  %i.tm = fdiv double %.09592174, %spec.store.select26 ; 5 uses
  %i.tn = add nuw nsw i32 %.78432175, 16777216    ; 2 uses
  %i.to = icmp ult i32 %.78432175, 50331648
  br i1 %i.to, label %bb.cr, label %.loopexit1481

bb.cr:                                            ; preds = %bb.cq
  %i.tp = fcmp olt double %i.tm, %spec.store.select26
  %i.tq = fcmp ogt double %i.tm, %i.tj
  %or.cond1190.1 = and i1 %i.tp, %i.tq
  br i1 %or.cond1190.1, label %.loopexit1481, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.tr = fdiv double %i.tm, %spec.store.select26 ; 5 uses
  %i.ts = add nuw nsw i32 %.78432175, 33554432    ; 2 uses
  %i.tt = icmp ult i32 %.78432175, 33554432
  br i1 %i.tt, label %bb.ct, label %.loopexit1481

bb.ct:                                            ; preds = %bb.cs
  %i.tu = fcmp olt double %i.tr, %spec.store.select26
  %i.tv = fcmp ogt double %i.tr, %i.tj
  %or.cond1190.2 = and i1 %i.tu, %i.tv
  br i1 %or.cond1190.2, label %.loopexit1481, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.tw = fdiv double %i.tr, %spec.store.select26 ; 5 uses
  %i.tx = add nuw nsw i32 %.78432175, 50331648    ; 2 uses
  %i.ty = icmp ult i32 %.78432175, 16777216
  br i1 %i.ty, label %bb.cv, label %.loopexit1481

bb.cv:                                            ; preds = %bb.cu
  %i.tz = fcmp olt double %i.tw, %spec.store.select26
  %i.ua = fcmp ogt double %i.tw, %i.tj
  %or.cond1190.3 = and i1 %i.tz, %i.ua
  br i1 %or.cond1190.3, label %.loopexit1481, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.ub = fdiv double %i.tw, %spec.store.select26
  %i.uc = or disjoint i32 %.78432175, 67108864
  br label %.loopexit1481

.loopexit1481:                                    ; preds = %.lr.ph1595, %bb.cq, %bb.cr, %bb.cs, %bb.ct, %bb.cu, %bb.cv, %bb.cw, %bb.cp, %bb.co
  %.58162177 = phi i32 [ %.1812, %bb.co ], [ %.58162176, %bb.cp ], [ %.58162176, %bb.cw ], [ %.58162176, %bb.cv ], [ %.58162176, %bb.cu ], [ %.58162176, %bb.ct ], [ %.58162176, %bb.cs ], [ %.58162176, %bb.cr ], [ %.58162176, %bb.cq ], [ %.58162176, %.lr.ph1595 ] ; 2 uses
  %.2961 = phi double [ %i.tf, %bb.co ], [ %.09592174, %bb.cp ], [ %.09592174, %.lr.ph1595 ], [ %i.tm, %bb.cq ], [ %i.tm, %bb.cr ], [ %i.tr, %bb.cs ], [ %i.tr, %bb.ct ], [ %i.tw, %bb.cu ], [ %i.tw, %bb.cv ], [ %i.ub, %bb.cw ]
  %.9845 = phi i32 [ %.3839, %bb.co ], [ %.78432175, %bb.cp ], [ %.78432175, %.lr.ph1595 ], [ %i.tn, %bb.cq ], [ %i.tn, %bb.cr ], [ %i.ts, %bb.cs ], [ %i.ts, %bb.ct ], [ %i.tx, %bb.cu ], [ %i.tx, %bb.cv ], [ %i.uc, %bb.cw ] ; 2 uses
  %i.ud = icmp eq i32 %.58162177, -1
  %spec.store.select27 = select i1 %i.ud, i32 6, i32 %.58162177 ; 2 uses
  %i.ue = call fastcc noundef i32 @_ZL18stbsp__real_to_strPPKcPjPcPidj(ptr noundef %i.g, ptr noundef %i.e, ptr noundef %i.a, ptr noundef %i.f, double noundef %.2961, i32 noundef %spec.store.select27)
  %.not1106 = icmp eq i32 %i.ue, 0
  %i.uf = or i32 %.9845, 128
  %spec.select1191 = select i1 %.not1106, i32 %.9845, i32 %i.uf
  br label %bb.cx

bb.cx:                                            ; preds = %.loopexit1481, %bb.bt, %bb.bu
  %.10846 = phi i32 [ %.5841, %bb.bt ], [ %.5841, %bb.bu ], [ %spec.select1191, %.loopexit1481 ] ; 13 uses
  %.6817 = phi i32 [ %i.on, %bb.bt ], [ %i.op, %bb.bu ], [ %spec.store.select27, %.loopexit1481 ] ; 12 uses
  store i8 0, ptr %i.d, align 1, !tbaa !7
  store i8 0, ptr %i.c, align 1, !tbaa !7
  %i.ug = and i32 %.10846, 128
  %.not.i1239 = icmp eq i32 %i.ug, 0
  br i1 %.not.i1239, label %bb.cy, label %.sink.split.i1240

bb.cy:                                            ; preds = %bb.cx
  %i.uh = and i32 %.10846, 4
  %.not9.i1242 = icmp eq i32 %i.uh, 0
  br i1 %.not9.i1242, label %bb.cz, label %.sink.split.i1240

bb.cz:                                            ; preds = %bb.cy
  %i.ui = and i32 %.10846, 2
  %.not10.i1243 = icmp eq i32 %i.ui, 0
  br i1 %.not10.i1243, label %_ZL16stbsp__lead_signjPc.exit1244, label %.sink.split.i1240

.sink.split.i1240:                                ; preds = %bb.cz, %bb.cy, %bb.cx
  %.sink.i1241 = phi i8 [ 45, %bb.cx ], [ 32, %bb.cy ], [ 43, %bb.cz ]
  store i8 1, ptr %i.c, align 1, !tbaa !7
  store i8 %.sink.i1241, ptr %i.j, align 1, !tbaa !7
  br label %_ZL16stbsp__lead_signjPc.exit1244

_ZL16stbsp__lead_signjPc.exit1244:                ; preds = %bb.cz, %.sink.split.i1240
  %i.uj = load i32, ptr %i.f, align 4, !tbaa !3   ; 5 uses
  %i.uk = icmp eq i32 %i.uj, 28672
  br i1 %i.uk, label %bb.da, label %bb.db

bb.da:                                            ; preds = %_ZL16stbsp__lead_signjPc.exit1244
  %i.ul = load ptr, ptr %i.g, align 8, !tbaa !13
  br label %bb.gg

bb.db:                                            ; preds = %_ZL16stbsp__lead_signjPc.exit1244
  %i.um = icmp slt i32 %i.uj, 1
  br i1 %i.um, label %bb.dc, label %bb.dh

bb.dc:                                            ; preds = %bb.db
  store i8 48, ptr %i.o, align 16, !tbaa !7
  %.not1118 = icmp eq i32 %.6817, 0
  br i1 %.not1118, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.un = load i8, ptr @_ZL13stbsp__period, align 1, !tbaa !7
  store i8 %i.un, ptr %i.q, align 1, !tbaa !7
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %.4882 = phi ptr [ %i.r, %bb.dd ], [ %i.q, %bb.dc ]
  %.4882.fr = freeze ptr %.4882                   ; 4 uses
  %i.uo = sub nsw i32 0, %i.uj
  %spec.select1192 = call i32 @llvm.smin.i32(i32 %.6817, i32 %i.uo) ; 7 uses
  %.not11191639 = icmp eq i32 %spec.select1192, 0
  %i.up = ptrtoint ptr %.4882.fr to i64           ; 2 uses
  %i.uq = and i64 %i.up, 3
  %i.ur = icmp eq i64 %i.uq, 0
  %or.cond11951640 = or i1 %.not11191639, %i.ur
  br i1 %or.cond11951640, label %.preheader1474, label %.lr.ph1644.preheader

.lr.ph1644.preheader:                             ; preds = %bb.de
  %i.us = trunc i64 %i.up to i2
  %i.ut = xor i2 %i.us, -1                        ; 2 uses
  %i.uu = zext i2 %i.ut to i64
  %i.uv = add i32 %spec.select1192, -1            ; 2 uses
  %i.uw = zext i32 %i.uv to i64
  %umin1994 = call i64 @llvm.umin.i64(i64 %i.uu, i64 %i.uw) ; 2 uses
  %i.ux = add nuw nsw i64 %umin1994, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.4882.fr, i8 48, i64 %i.ux, i1 false), !tbaa !7
  %scevgep1995 = getelementptr i8, ptr %.4882.fr, i64 1
  %scevgep1997 = getelementptr i8, ptr %scevgep1995, i64 %umin1994
  %i.uy = zext i2 %i.ut to i32
  %i.uz = call i32 @llvm.usub.sat.i32(i32 %i.uv, i32 %i.uy)
  br label %.preheader1474

.preheader1474:                                   ; preds = %.lr.ph1644.preheader, %bb.de
  %.0962.lcssa = phi i32 [ %spec.select1192, %bb.de ], [ %i.uz, %.lr.ph1644.preheader ] ; 4 uses
  %.5883.lcssa = phi ptr [ %.4882.fr, %bb.de ], [ %scevgep1997, %.lr.ph1644.preheader ] ; 3 uses
  %i.va = icmp sgt i32 %.0962.lcssa, 3
  br i1 %i.va, label %.lr.ph1649.preheader, label %.preheader1473

.lr.ph1649.preheader:                             ; preds = %.preheader1474
  %i.vb = call i32 @llvm.usub.sat.i32(i32 %.0962.lcssa, i32 7)
  %i.vc = add nuw i32 %i.vb, 3                    ; 2 uses
  %i.vd = and i32 %i.vc, 2147483644
  %i.ve = zext nneg i32 %i.vd to i64              ; 2 uses
  %i.vf = add nuw nsw i64 %i.ve, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.5883.lcssa, i8 48, i64 %i.vf, i1 false), !tbaa !3
  %scevgep1999 = getelementptr i8, ptr %.5883.lcssa, i64 4
  %scevgep2001 = getelementptr i8, ptr %scevgep1999, i64 %i.ve
  %i.vg = add nsw i32 %.0962.lcssa, -4
  %i.vh = and i32 %i.vc, -4
  %i.vi = sub nsw i32 %i.vg, %i.vh
  br label %.preheader1473

.preheader1473:                                   ; preds = %.lr.ph1649.preheader, %.preheader1474
  %.1963.lcssa = phi i32 [ %.0962.lcssa, %.preheader1474 ], [ %i.vi, %.lr.ph1649.preheader ] ; 3 uses
  %.6884.lcssa = phi ptr [ %.5883.lcssa, %.preheader1474 ], [ %scevgep2001, %.lr.ph1649.preheader ] ; 3 uses
  %.not11201652 = icmp eq i32 %.1963.lcssa, 0
  br i1 %.not11201652, label %._crit_edge1656, label %.lr.ph1655.preheader

.lr.ph1655.preheader:                             ; preds = %.preheader1473
  %i.vj = zext i32 %.1963.lcssa to i64
  call void @llvm.memset.p0.i64(ptr align 1 %.6884.lcssa, i8 48, i64 %i.vj, i1 false), !tbaa !7
  %scevgep2002 = getelementptr i8, ptr %.6884.lcssa, i64 1
  %i.vk = add i32 %.1963.lcssa, -1
  %i.vl = zext i32 %i.vk to i64
  %scevgep2003 = getelementptr i8, ptr %scevgep2002, i64 %i.vl
  br label %._crit_edge1656

._crit_edge1656:                                  ; preds = %.lr.ph1655.preheader, %.preheader1473
  %.7885.lcssa = phi ptr [ %.6884.lcssa, %.preheader1473 ], [ %scevgep2003, %.lr.ph1655.preheader ] ; 3 uses
  %i.vm = load i32, ptr %i.e, align 4, !tbaa !3   ; 2 uses
  %i.vn = add i32 %i.vm, %spec.select1192         ; 2 uses
  %i.vo = icmp sgt i32 %i.vn, %.6817
  br i1 %i.vo, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %._crit_edge1656
  %i.vp = sub i32 %.6817, %spec.select1192        ; 2 uses
  store i32 %i.vp, ptr %i.e, align 4, !tbaa !3
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %._crit_edge1656
  %i.vq = phi i32 [ %i.vp, %bb.df ], [ %i.vm, %._crit_edge1656 ] ; 5 uses
  %.not11211658 = icmp eq i32 %i.vq, 0
  br i1 %.not11211658, label %._crit_edge1663, label %.lr.ph1662.preheader

.lr.ph1662.preheader:                             ; preds = %bb.dg
  %smin = call i32 @llvm.smin.i32(i32 %.6817, i32 %i.vn)
  %xtraiter = and i32 %i.vq, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph1662.prol.loopexit, label %.lr.ph1662.prol

.lr.ph1662.prol:                                  ; preds = %.lr.ph1662.preheader, %.lr.ph1662.prol
  %.88861660.prol = phi ptr [ %i.vu, %.lr.ph1662.prol ], [ %.7885.lcssa, %.lr.ph1662.preheader ] ; 2 uses
  %.39651659.prol = phi i32 [ %i.vv, %.lr.ph1662.prol ], [ %i.vq, %.lr.ph1662.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph1662.prol ], [ 0, %.lr.ph1662.preheader ]
  %i.vr = load ptr, ptr %i.g, align 8, !tbaa !13  ; 2 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 1
  store ptr %i.vs, ptr %i.g, align 8, !tbaa !13
  %i.vt = load i8, ptr %i.vr, align 1, !tbaa !7
  %i.vu = getelementptr inbounds nuw i8, ptr %.88861660.prol, i64 1 ; 3 uses
  store i8 %i.vt, ptr %.88861660.prol, align 1, !tbaa !7
  %i.vv = add nsw i32 %.39651659.prol, -1         ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph1662.prol.loopexit, label %.lr.ph1662.prol, !llvm.loop !33

.lr.ph1662.prol.loopexit:                         ; preds = %.lr.ph1662.prol, %.lr.ph1662.preheader
  %.lcssa2475.unr = phi ptr [ poison, %.lr.ph1662.preheader ], [ %i.vu, %.lr.ph1662.prol ]
  %.88861660.unr = phi ptr [ %.7885.lcssa, %.lr.ph1662.preheader ], [ %i.vu, %.lr.ph1662.prol ]
  %.39651659.unr = phi i32 [ %i.vq, %.lr.ph1662.preheader ], [ %i.vv, %.lr.ph1662.prol ]
  %i.vw = sub i32 %spec.select1192, %smin
  %i.vx = icmp ugt i32 %i.vw, -4
  br i1 %i.vx, label %._crit_edge1663, label %.lr.ph1662

.lr.ph1662:                                       ; preds = %.lr.ph1662.prol.loopexit, %.lr.ph1662
  %.88861660 = phi ptr [ %i.wn, %.lr.ph1662 ], [ %.88861660.unr, %.lr.ph1662.prol.loopexit ] ; 5 uses
  %.39651659 = phi i32 [ %i.wo, %.lr.ph1662 ], [ %.39651659.unr, %.lr.ph1662.prol.loopexit ]
  %i.vy = load ptr, ptr %i.g, align 8, !tbaa !13  ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 1
  store ptr %i.vz, ptr %i.g, align 8, !tbaa !13
  %i.wa = load i8, ptr %i.vy, align 1, !tbaa !7
  %i.wb = getelementptr inbounds nuw i8, ptr %.88861660, i64 1
  store i8 %i.wa, ptr %.88861660, align 1, !tbaa !7
  %i.wc = load ptr, ptr %i.g, align 8, !tbaa !13  ; 2 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 1
  store ptr %i.wd, ptr %i.g, align 8, !tbaa !13
  %i.we = load i8, ptr %i.wc, align 1, !tbaa !7
  %i.wf = getelementptr inbounds nuw i8, ptr %.88861660, i64 2
  store i8 %i.we, ptr %i.wb, align 1, !tbaa !7
  %i.wg = load ptr, ptr %i.g, align 8, !tbaa !13  ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 1
  store ptr %i.wh, ptr %i.g, align 8, !tbaa !13
  %i.wi = load i8, ptr %i.wg, align 1, !tbaa !7
  %i.wj = getelementptr inbounds nuw i8, ptr %.88861660, i64 3
  store i8 %i.wi, ptr %i.wf, align 1, !tbaa !7
  %i.wk = load ptr, ptr %i.g, align 8, !tbaa !13  ; 2 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 1
  store ptr %i.wl, ptr %i.g, align 8, !tbaa !13
  %i.wm = load i8, ptr %i.wk, align 1, !tbaa !7
  %i.wn = getelementptr inbounds nuw i8, ptr %.88861660, i64 4 ; 2 uses
  store i8 %i.wm, ptr %i.wj, align 1, !tbaa !7
  %i.wo = add nsw i32 %.39651659, -4              ; 2 uses
  %.not1121.3 = icmp eq i32 %i.wo, 0
  br i1 %.not1121.3, label %._crit_edge1663, label %.lr.ph1662, !llvm.loop !34

._crit_edge1663:                                  ; preds = %.lr.ph1662.prol.loopexit, %.lr.ph1662, %bb.dg
  %.8886.lcssa = phi ptr [ %.7885.lcssa, %bb.dg ], [ %.lcssa2475.unr, %.lr.ph1662.prol.loopexit ], [ %i.wn, %.lr.ph1662 ]
  %i.wp = add i32 %spec.select1192, %i.vq
  %i.wq = sub i32 %.6817, %i.wp
  br label %bb.ea

bb.dh:                                            ; preds = %bb.db
  %i.wr = and i32 %.10846, 64
  %.not1109 = icmp eq i32 %i.wr, 0                ; 5 uses
  br i1 %.not1109, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.ws = sub nsw i32 600, %i.uj
  %i.wt = urem i32 %i.ws, 3
  br label %bb.dj

bb.dj:                                            ; preds = %bb.dh, %bb.di
  %i.wu = phi i32 [ %i.wt, %bb.di ], [ 0, %bb.dh ] ; 2 uses
  %i.wv = load i32, ptr %i.e, align 4, !tbaa !3
  %.not1110 = icmp ult i32 %i.uj, %i.wv
  br i1 %.not1110, label %.preheader1475.outer, label %.preheader1480.outer

bb.dk:                                            ; preds = %.preheader1480.peel.next, %bb.dl, %.preheader1480.outer
  %.9887.lcssa = phi ptr [ %.9887.ph, %.preheader1480.outer ], [ %.9887.ph, %bb.dl ], [ %i.xg, %.preheader1480.peel.next ] ; 4 uses
  %.1944 = phi i32 [ %.0943.ph, %.preheader1480.outer ], [ %i.xd, %bb.dl ], [ 1, %.preheader1480.peel.next ] ; 2 uses
  %i.ww = load ptr, ptr %i.g, align 8, !tbaa !13
  %i.wx = zext i32 %.5927.ph to i64
  %i.wy = getelementptr inbounds nuw i8, ptr %i.ww, i64 %i.wx
  %i.wz = load i8, ptr %i.wy, align 1, !tbaa !7
  %i.xa = getelementptr i8, ptr %.9887.lcssa, i64 1 ; 6 uses
  store i8 %i.wz, ptr %.9887.lcssa, align 1, !tbaa !7
  %i.xb = add i32 %.5927.ph, 1                    ; 4 uses
  %i.xc = load i32, ptr %i.e, align 4, !tbaa !3
  %.not1114 = icmp ult i32 %i.xb, %i.xc
  br i1 %.not1114, label %.preheader1480.outer, label %bb.dm, !llvm.loop !35

.preheader1480.outer:                             ; preds = %bb.dj, %bb.dk
  %.0943.ph = phi i32 [ %.1944, %bb.dk ], [ %i.wu, %bb.dj ] ; 2 uses
  %.5927.ph = phi i32 [ %i.xb, %bb.dk ], [ 0, %bb.dj ] ; 3 uses
  %.9887.ph = phi ptr [ %i.xa, %bb.dk ], [ %i.o, %bb.dj ] ; 4 uses
  br i1 %.not1109, label %bb.dk, label %bb.dl

bb.dl:                                            ; preds = %.preheader1480.outer
  %i.xd = add nuw nsw i32 %.0943.ph, 1            ; 2 uses
  %i.xe = icmp eq i32 %i.xd, 4
  br i1 %i.xe, label %.preheader1480.peel.next, label %bb.dk

.preheader1480.peel.next:                         ; preds = %bb.dl
  %i.xf = load i8, ptr @_ZL12stbsp__comma, align 1, !tbaa !7
  %i.xg = getelementptr i8, ptr %.9887.ph, i64 1
  store i8 %i.xf, ptr %.9887.ph, align 1, !tbaa !7
  br label %bb.dk

bb.dm:                                            ; preds = %bb.dk
  %.9887.lcssa19821984 = ptrtoaddr ptr %.9887.lcssa to i64
  %i.xh = load i32, ptr %i.f, align 4, !tbaa !3   ; 3 uses
  %i.xi = icmp ult i32 %i.xb, %i.xh
  br i1 %i.xi, label %bb.dn, label %.loopexit1476

bb.dn:                                            ; preds = %bb.dm
  %i.xj = sub nuw i32 %i.xh, %i.xb                ; 3 uses
  br i1 %.not1109, label %.preheader1479, label %.loopexit1478

.preheader1479:                                   ; preds = %bb.dn
  %.not11151613 = icmp eq i32 %i.xj, 0
  %i.xk = ptrtoint ptr %i.xa to i64
  %i.xl = and i64 %i.xk, 3
  %i.xm = icmp eq i64 %i.xl, 0
  %or.cond11981614 = or i1 %.not11151613, %i.xm
  br i1 %or.cond11981614, label %.preheader1477, label %.lr.ph1617.preheader

.lr.ph1617.preheader:                             ; preds = %.preheader1479
  %i.xn = trunc i64 %.9887.lcssa19821984 to i2
  %i.xo = sub i2 -2, %i.xn                        ; 2 uses
  %i.xp = zext i2 %i.xo to i64
  %i.xq = add i32 %i.xh, -2
  %i.xr = sub i32 %i.xq, %.5927.ph                ; 2 uses
  %i.xs = zext i32 %i.xr to i64
  %umin1981 = call i64 @llvm.umin.i64(i64 %i.xp, i64 %i.xs) ; 2 uses
  %i.xt = add nuw nsw i64 %umin1981, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.xa, i8 48, i64 %i.xt, i1 false), !tbaa !7
  %scevgep1983 = getelementptr i8, ptr %.9887.lcssa, i64 2
  %scevgep1987 = getelementptr i8, ptr %scevgep1983, i64 %umin1981
  %i.xu = zext i2 %i.xo to i32
end_hunk_0
