inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@inflateBack:bb.a
  %.pre1269 = load ptr, ptr %i.ac, align 8, !tbaa !63
  br label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  store ptr null, ptr %i.a, align 8, !tbaa !31
  br label %.loopexit684

bb.cj:                                            ; preds = %._crit_edge1268, %.lr.ph992
  %i.sw = phi ptr [ %.pre1269, %._crit_edge1268 ], [ %i.ss, %.lr.ph992 ] ; 2 uses
  %.36 = phi i32 [ %i.su, %._crit_edge1268 ], [ %.35989, %.lr.ph992 ]
  %i.sx = add i32 %.36, -1                        ; 2 uses
  %i.sy = load ptr, ptr %i.a, align 8, !tbaa !31  ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 1
  store ptr %i.sz, ptr %i.a, align 8, !tbaa !31
  %i.ta = load i8, ptr %i.sy, align 1, !tbaa !8
  %i.tb = zext i8 %i.ta to i64
  %i.tc = shl i64 %i.tb, %indvars.iv1245
  %i.td = add i64 %i.tc, %.21547990               ; 3 uses
  %indvars.iv.next1246 = add nuw nsw i64 %indvars.iv1245, 8 ; 3 uses
  %i.te = trunc i64 %i.td to i32
  %i.tf = and i32 %i.te, %i.si
  %i.tg = lshr i32 %i.tf, %.lcssa764
  %i.th = add nuw i32 %i.tg, %i.sg
  %i.ti = zext i32 %i.th to i64
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %i.sw, i64 %i.ti ; 2 uses
  %.sroa.18.0..sroa_idx41 = getelementptr inbounds nuw i8, ptr %i.tj, i64 1
  %.sroa.18.0.copyload42 = load i8, ptr %.sroa.18.0..sroa_idx41, align 1, !tbaa !8 ; 2 uses
  %i.tk = zext i8 %.sroa.18.0.copyload42 to i32
  %i.tl = add nuw nsw i32 %.lcssa764, %i.tk
  %i.tm = zext nneg i32 %i.tl to i64
  %.not659 = icmp samesign ult i64 %indvars.iv.next1246, %i.tm
  br i1 %.not659, label %.lr.ph992, label %._crit_edge993.loopexit

._crit_edge993.loopexit:                          ; preds = %bb.cj
  %i.tn = trunc nuw nsw i64 %indvars.iv.next1246 to i32
  br label %._crit_edge993

._crit_edge993:                                   ; preds = %._crit_edge993.loopexit, %.preheader688
  %.35.lcssa = phi i32 [ %.33.lcssa, %.preheader688 ], [ %i.sx, %._crit_edge993.loopexit ]
  %.21547.lcssa = phi i64 [ %.20546.lcssa, %.preheader688 ], [ %i.td, %._crit_edge993.loopexit ]
  %.21.lcssa = phi i32 [ %.20.lcssa, %.preheader688 ], [ %i.tn, %._crit_edge993.loopexit ]
  %.lcssa776 = phi ptr [ %i.so, %.preheader688 ], [ %i.tj, %._crit_edge993.loopexit ] ; 2 uses
  %.sroa.18.0.copyload42.lcssa = phi i8 [ %.sroa.18.0.copyload42987, %.preheader688 ], [ %.sroa.18.0.copyload42, %._crit_edge993.loopexit ]
  %.sroa.40.0..sroa_idx68 = getelementptr inbounds nuw i8, ptr %.lcssa776, i64 2
  %.sroa.40.0.copyload69 = load i16, ptr %.sroa.40.0..sroa_idx68, align 2, !tbaa !45
  %.sroa.022.0.copyload34 = load i8, ptr %.lcssa776, align 2, !tbaa !8
  %i.to = zext nneg i8 %.sroa.18.0.copyload40.lcssa to i64
  %i.tp = lshr i64 %.21547.lcssa, %i.to
  %i.tq = sub nuw i32 %.21.lcssa, %.lcssa764
  br label %bb.ck

bb.ck:                                            ; preds = %._crit_edge978, %._crit_edge993
  %.37 = phi i32 [ %.35.lcssa, %._crit_edge993 ], [ %.33.lcssa, %._crit_edge978 ] ; 4 uses
  %.22548 = phi i64 [ %i.tp, %._crit_edge993 ], [ %.20546.lcssa, %._crit_edge978 ]
  %.22 = phi i32 [ %i.tq, %._crit_edge993 ], [ %.20.lcssa, %._crit_edge978 ]
  %.sroa.40.1 = phi i16 [ %.sroa.40.0.copyload69, %._crit_edge993 ], [ %.sroa.40.0.copyload67.lcssa, %._crit_edge978 ]
  %.sroa.18.1 = phi i8 [ %.sroa.18.0.copyload42.lcssa, %._crit_edge993 ], [ %.sroa.18.0.copyload40.lcssa, %._crit_edge978 ] ; 2 uses
  %.sroa.022.1 = phi i8 [ %.sroa.022.0.copyload34, %._crit_edge993 ], [ %.sroa.022.0.copyload33, %._crit_edge978 ]
  %i.tr = zext i8 %.sroa.18.1 to i32
  %i.ts = zext nneg i8 %.sroa.18.1 to i64
  %i.tt = lshr i64 %.22548, %i.ts                 ; 4 uses
  %i.tu = sub i32 %.22, %i.tr                     ; 5 uses
  %i.tv = zext i8 %.sroa.022.1 to i32             ; 2 uses
  %i.tw = and i32 %i.tv, 64
  %.not660 = icmp eq i32 %i.tw, 0
  br i1 %.not660, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  store ptr @.str.10, ptr %i.f, align 8, !tbaa !9
  store i32 16209, ptr %i.g, align 8, !tbaa !28
  br label %.thread

bb.cm:                                            ; preds = %bb.ck
  %i.tx = zext i16 %.sroa.40.1 to i32             ; 3 uses
  store i32 %i.tx, ptr %i.ag, align 8, !tbaa !70
  %i.ty = and i32 %i.tv, 15                       ; 5 uses
  store i32 %i.ty, ptr %i.af, align 4, !tbaa !68
  %.not661 = icmp eq i32 %i.ty, 0
  br i1 %.not661, label %bb.cq, label %.preheader687

.preheader687:                                    ; preds = %bb.cm
  %i.tz = icmp ult i32 %i.tu, %i.ty
  br i1 %i.tz, label %.lr.ph1002, label %._crit_edge1003

.lr.ph1002:                                       ; preds = %.preheader687, %bb.cp
  %i.ua = phi i32 [ %i.ue, %bb.cp ], [ %i.ty, %.preheader687 ]
  %.231001 = phi i32 [ %i.un, %bb.cp ], [ %i.tu, %.preheader687 ] ; 2 uses
  %.235491000 = phi i64 [ %i.um, %bb.cp ], [ %i.tt, %.preheader687 ]
  %.38999 = phi i32 [ %i.uf, %bb.cp ], [ %.37, %.preheader687 ] ; 2 uses
  %i.ub = icmp eq i32 %.38999, 0
  br i1 %i.ub, label %bb.cn, label %bb.cp

bb.cn:                                            ; preds = %.lr.ph1002
  %i.uc = call i32 %1(ptr noundef %2, ptr noundef nonnull %i.a) #4 ; 2 uses
  %i.ud = icmp eq i32 %i.uc, 0
  br i1 %i.ud, label %bb.co, label %._crit_edge1270

._crit_edge1270:                                  ; preds = %bb.cn
  %.pre1271 = load i32, ptr %i.af, align 4, !tbaa !68
  br label %bb.cp

bb.co:                                            ; preds = %bb.cn
  store ptr null, ptr %i.a, align 8, !tbaa !31
  br label %.loopexit684

bb.cp:                                            ; preds = %._crit_edge1270, %.lr.ph1002
  %i.ue = phi i32 [ %.pre1271, %._crit_edge1270 ], [ %i.ua, %.lr.ph1002 ] ; 3 uses
  %.39 = phi i32 [ %i.uc, %._crit_edge1270 ], [ %.38999, %.lr.ph1002 ]
  %i.uf = add i32 %.39, -1                        ; 2 uses
  %i.ug = load ptr, ptr %i.a, align 8, !tbaa !31  ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 1
  store ptr %i.uh, ptr %i.a, align 8, !tbaa !31
  %i.ui = load i8, ptr %i.ug, align 1, !tbaa !8
  %i.uj = zext i8 %i.ui to i64
  %i.uk = zext nneg i32 %.231001 to i64
  %i.ul = shl i64 %i.uj, %i.uk
  %i.um = add i64 %i.ul, %.235491000              ; 2 uses
  %i.un = add i32 %.231001, 8                     ; 3 uses
  %i.uo = icmp ult i32 %i.un, %i.ue
  br i1 %i.uo, label %.lr.ph1002, label %._crit_edge1003.loopexit, !llvm.loop !71

._crit_edge1003.loopexit:                         ; preds = %bb.cp
  %.pre1272 = load i32, ptr %i.ag, align 8, !tbaa !70
  br label %._crit_edge1003

._crit_edge1003:                                  ; preds = %._crit_edge1003.loopexit, %.preheader687
  %i.up = phi i32 [ %i.tx, %.preheader687 ], [ %.pre1272, %._crit_edge1003.loopexit ]
  %.38.lcssa = phi i32 [ %.37, %.preheader687 ], [ %i.uf, %._crit_edge1003.loopexit ]
  %.23549.lcssa = phi i64 [ %i.tt, %.preheader687 ], [ %i.um, %._crit_edge1003.loopexit ] ; 2 uses
  %.23.lcssa = phi i32 [ %i.tu, %.preheader687 ], [ %i.un, %._crit_edge1003.loopexit ]
  %.lcssa781 = phi i32 [ %i.ty, %.preheader687 ], [ %i.ue, %._crit_edge1003.loopexit ] ; 3 uses
  %i.uq = trunc i64 %.23549.lcssa to i32
  %notmask662 = shl nsw i32 -1, %.lcssa781
  %i.ur = xor i32 %notmask662, -1
  %i.us = and i32 %i.ur, %i.uq
  %i.ut = add i32 %i.up, %i.us                    ; 2 uses
  store i32 %i.ut, ptr %i.ag, align 8, !tbaa !70
  %i.uu = zext nneg i32 %.lcssa781 to i64
  %i.uv = lshr i64 %.23549.lcssa, %i.uu
  %i.uw = sub nuw i32 %.23.lcssa, %.lcssa781
  br label %bb.cq

bb.cq:                                            ; preds = %._crit_edge1003, %bb.cm
  %i.ux = phi i32 [ %i.ut, %._crit_edge1003 ], [ %i.tx, %bb.cm ]
  %.40 = phi i32 [ %.38.lcssa, %._crit_edge1003 ], [ %.37, %bb.cm ] ; 3 uses
  %.24550 = phi i64 [ %i.uv, %._crit_edge1003 ], [ %i.tt, %bb.cm ] ; 2 uses
  %.24 = phi i32 [ %i.uw, %._crit_edge1003 ], [ %i.tu, %bb.cm ] ; 2 uses
  %i.uy = load i32, ptr %i.p, align 4, !tbaa !24  ; 2 uses
  %i.uz = load i32, ptr %i.i, align 8, !tbaa !27
  %i.va = icmp ult i32 %i.uz, %i.uy
  %i.vb = select i1 %i.va, i32 %.0552, i32 0
  %i.vc = sub i32 %i.uy, %i.vb
  %i.vd = icmp ugt i32 %i.ux, %i.vc
  br i1 %i.vd, label %bb.cr, label %.preheader685

bb.cr:                                            ; preds = %bb.cq
  store ptr @.str.11, ptr %i.f, align 8, !tbaa !9
  store i32 16209, ptr %i.g, align 8, !tbaa !28
  br label %.thread

.preheader685:                                    ; preds = %bb.cq, %.loopexit1563
  %.4589 = phi ptr [ %.lcssa1470, %.loopexit1563 ], [ %.0585, %bb.cq ]
  %.4556 = phi i32 [ %i.xl, %.loopexit1563 ], [ %.0552, %bb.cq ] ; 2 uses
  %i.ve = icmp eq i32 %.4556, 0
  %.pre1275 = load i32, ptr %i.p, align 4, !tbaa !24 ; 4 uses
  br i1 %i.ve, label %bb.cs, label %iter.check

bb.cs:                                            ; preds = %.preheader685
  %i.vf = load ptr, ptr %i.n, align 8, !tbaa !25  ; 2 uses
  store i32 %.pre1275, ptr %i.i, align 8, !tbaa !27
  %i.vg = call i32 %3(ptr noundef %4, ptr noundef %i.vf, i32 noundef %.pre1275) #4
  %.not663 = icmp eq i32 %i.vg, 0
  br i1 %.not663, label %._crit_edge1273, label %.loopexit684

._crit_edge1273:                                  ; preds = %bb.cs
  %.pre1274 = load i32, ptr %i.p, align 4, !tbaa !24
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge1273, %.preheader685
  %i.vh = phi i32 [ %.pre1274, %._crit_edge1273 ], [ %.pre1275, %.preheader685 ]
  %.5590 = phi ptr [ %i.vf, %._crit_edge1273 ], [ %.4589, %.preheader685 ] ; 6 uses
  %.5557 = phi i32 [ %.pre1275, %._crit_edge1273 ], [ %.4556, %.preheader685 ] ; 3 uses
  %i.vi = load i32, ptr %i.ag, align 8, !tbaa !70 ; 2 uses
  %i.vj = sub i32 %i.vh, %i.vi                    ; 3 uses
  %i.vk = icmp ult i32 %i.vj, %.5557              ; 2 uses
  %i.vl = zext i32 %i.vj to i64
  %i.vm = zext i32 %i.vi to i64
  %i.vn = sub nsw i64 0, %i.vm
  %i.vo = select i1 %i.vk, i32 %i.vj, i32 0
  %.4 = sub i32 %.5557, %i.vo
  %.pn = select i1 %i.vk, i64 %i.vl, i64 %i.vn    ; 2 uses
  %.0516 = getelementptr inbounds i8, ptr %.5590, i64 %.pn ; 5 uses
  %i.vp = load i32, ptr %i.ae, align 4, !tbaa !38 ; 2 uses
  %.5 = call i32 @llvm.umin.i32(i32 %.4, i32 %i.vp) ; 6 uses
  %i.vq = sub i32 %i.vp, %.5
  store i32 %i.vq, ptr %i.ae, align 4, !tbaa !38
  %i.vr = add i32 %.5, -1                         ; 3 uses
  %i.vs = zext i32 %i.vr to i64
  %i.vt = add nuw nsw i64 %i.vs, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.vr, 3
  %5 = add nsw i64 %.pn, 31
  %diff.check = icmp ult i64 %5, 32
  %or.cond1566 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond1566, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1518 = icmp ult i32 %i.vr, 31
  br i1 %min.iters.check1518, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.vt, 28
  %n.vec = and i64 %i.vt, 8589934560              ; 6 uses
  %i.vu = getelementptr i8, ptr %.5590, i64 %n.vec ; 2 uses
  %i.vv = trunc i64 %n.vec to i32
  %i.vw = sub i32 %.5, %i.vv
  %i.vx = getelementptr i8, ptr %.0516, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.5590, i64 %index ; 2 uses
  %next.gep1519 = getelementptr i8, ptr %.0516, i64 %index ; 2 uses
  %i.vy = getelementptr i8, ptr %next.gep1519, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep1519, align 1, !tbaa !8
  %wide.load1520 = load <16 x i8>, ptr %i.vy, align 1, !tbaa !8
  %i.vz = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !8
  store <16 x i8> %wide.load1520, ptr %i.vz, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.wa = icmp eq i64 %index.next, %n.vec
  br i1 %i.wa, label %middle.block, label %vector.body, !llvm.loop !72

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.vt, %n.vec
  br i1 %cmp.n, label %.loopexit1563, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !73

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1524 = and i64 %i.vt, 8589934588          ; 5 uses
  %i.wb = getelementptr i8, ptr %.5590, i64 %n.vec1524 ; 2 uses
  %i.wc = trunc i64 %n.vec1524 to i32
  %i.wd = sub i32 %.5, %i.wc
  %i.we = getelementptr i8, ptr %.0516, i64 %n.vec1524
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1525 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1529, %vec.epilog.vector.body ] ; 3 uses
  %next.gep1526 = getelementptr i8, ptr %.5590, i64 %index1525
  %next.gep1527 = getelementptr i8, ptr %.0516, i64 %index1525
  %wide.load1528 = load <4 x i8>, ptr %next.gep1527, align 1, !tbaa !8
  store <4 x i8> %wide.load1528, ptr %next.gep1526, align 1, !tbaa !8
  %index.next1529 = add nuw i64 %index1525, 4     ; 2 uses
  %i.wf = icmp eq i64 %index.next1529, %n.vec1524
  br i1 %i.wf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !74

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1530 = icmp eq i64 %i.vt, %n.vec1524
  br i1 %cmp.n1530, label %.loopexit1563, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.6591.ph = phi ptr [ %.5590, %iter.check ], [ %i.vu, %vec.epilog.iter.check ], [ %i.wb, %vec.epilog.middle.block ] ; 2 uses
  %.6.ph = phi i32 [ %.5, %iter.check ], [ %i.vw, %vec.epilog.iter.check ], [ %i.wd, %vec.epilog.middle.block ] ; 4 uses
  %.1.ph = phi ptr [ %.0516, %iter.check ], [ %i.vx, %vec.epilog.iter.check ], [ %i.we, %vec.epilog.middle.block ] ; 2 uses
  %i.wg = add i32 %.6.ph, -1
  %xtraiter1661 = and i32 %.6.ph, 7               ; 2 uses
  %lcmp.mod1662.not = icmp eq i32 %xtraiter1661, 0
  br i1 %lcmp.mod1662.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.6591.prol = phi ptr [ %i.wj, %vec.epilog.scalar.ph.prol ], [ %.6591.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.6.prol = phi i32 [ %i.wk, %vec.epilog.scalar.ph.prol ], [ %.6.ph, %vec.epilog.scalar.ph.preheader ]
  %.1.prol = phi ptr [ %i.wh, %vec.epilog.scalar.ph.prol ], [ %.1.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter1663 = phi i32 [ %prol.iter1663.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.wh = getelementptr inbounds nuw i8, ptr %.1.prol, i64 1 ; 2 uses
  %i.wi = load i8, ptr %.1.prol, align 1, !tbaa !8
  %i.wj = getelementptr inbounds nuw i8, ptr %.6591.prol, i64 1 ; 3 uses
  store i8 %i.wi, ptr %.6591.prol, align 1, !tbaa !8
  %i.wk = add i32 %.6.prol, -1                    ; 2 uses
  %prol.iter1663.next = add i32 %prol.iter1663, 1 ; 2 uses
  %prol.iter1663.cmp.not = icmp eq i32 %prol.iter1663.next, %xtraiter1661
  br i1 %prol.iter1663.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !75

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa1613.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.wj, %vec.epilog.scalar.ph.prol ]
  %.6591.unr = phi ptr [ %.6591.ph, %vec.epilog.scalar.ph.preheader ], [ %i.wj, %vec.epilog.scalar.ph.prol ]
  %.6.unr = phi i32 [ %.6.ph, %vec.epilog.scalar.ph.preheader ], [ %i.wk, %vec.epilog.scalar.ph.prol ]
  %.1.unr = phi ptr [ %.1.ph, %vec.epilog.scalar.ph.preheader ], [ %i.wh, %vec.epilog.scalar.ph.prol ]
  %i.wl = icmp ult i32 %i.wg, 7
  br i1 %i.wl, label %.loopexit1563, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.6591 = phi ptr [ %i.xj, %vec.epilog.scalar.ph ], [ %.6591.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %.6 = phi i32 [ %i.xk, %vec.epilog.scalar.ph ], [ %.6.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %.1 = phi ptr [ %i.xh, %vec.epilog.scalar.ph ], [ %.1.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %.1, i64 1
  %i.wn = load i8, ptr %.1, align 1, !tbaa !8
  %i.wo = getelementptr inbounds nuw i8, ptr %.6591, i64 1
  store i8 %i.wn, ptr %.6591, align 1, !tbaa !8
  %i.wp = getelementptr inbounds nuw i8, ptr %.1, i64 2
  %i.wq = load i8, ptr %i.wm, align 1, !tbaa !8
  %i.wr = getelementptr inbounds nuw i8, ptr %.6591, i64 2
  store i8 %i.wq, ptr %i.wo, align 1, !tbaa !8
  %i.ws = getelementptr inbounds nuw i8, ptr %.1, i64 3
  %i.wt = load i8, ptr %i.wp, align 1, !tbaa !8
  %i.wu = getelementptr inbounds nuw i8, ptr %.6591, i64 3
  store i8 %i.wt, ptr %i.wr, align 1, !tbaa !8
  %i.wv = getelementptr inbounds nuw i8, ptr %.1, i64 4
  %i.ww = load i8, ptr %i.ws, align 1, !tbaa !8
  %i.wx = getelementptr inbounds nuw i8, ptr %.6591, i64 4
  store i8 %i.ww, ptr %i.wu, align 1, !tbaa !8
  %i.wy = getelementptr inbounds nuw i8, ptr %.1, i64 5
  %i.wz = load i8, ptr %i.wv, align 1, !tbaa !8
  %i.xa = getelementptr inbounds nuw i8, ptr %.6591, i64 5
  store i8 %i.wz, ptr %i.wx, align 1, !tbaa !8
  %i.xb = getelementptr inbounds nuw i8, ptr %.1, i64 6
  %i.xc = load i8, ptr %i.wy, align 1, !tbaa !8
  %i.xd = getelementptr inbounds nuw i8, ptr %.6591, i64 6
  store i8 %i.xc, ptr %i.xa, align 1, !tbaa !8
  %i.xe = getelementptr inbounds nuw i8, ptr %.1, i64 7
  %i.xf = load i8, ptr %i.xb, align 1, !tbaa !8
  %i.xg = getelementptr inbounds nuw i8, ptr %.6591, i64 7
  store i8 %i.xf, ptr %i.xd, align 1, !tbaa !8
  %i.xh = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.xi = load i8, ptr %i.xe, align 1, !tbaa !8
  %i.xj = getelementptr inbounds nuw i8, ptr %.6591, i64 8 ; 2 uses
  store i8 %i.xi, ptr %i.xg, align 1, !tbaa !8
  %i.xk = add i32 %.6, -8                         ; 2 uses
  %.not664.7 = icmp eq i32 %i.xk, 0
  br i1 %.not664.7, label %.loopexit1563, label %vec.epilog.scalar.ph, !llvm.loop !76

.loopexit1563:                                    ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa1470 = phi ptr [ %i.wb, %vec.epilog.middle.block ], [ %i.vu, %middle.block ], [ %.lcssa1613.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.xj, %vec.epilog.scalar.ph ] ; 2 uses
  %i.xl = sub i32 %.5557, %.5                     ; 2 uses
  %i.xm = load i32, ptr %i.ae, align 4, !tbaa !38
  %.not665 = icmp eq i32 %i.xm, 0
  br i1 %.not665, label %.thread, label %.preheader685, !llvm.loop !77

bb.ct:                                            ; preds = %bb.e
  %i.xn = load i32, ptr %i.p, align 4, !tbaa !24  ; 2 uses
  %i.xo = icmp ult i32 %.0552, %i.xn
  br i1 %i.xo, label %bb.cu, label %.loopexit684

bb.cu:                                            ; preds = %bb.ct
  %i.xp = load ptr, ptr %i.n, align 8, !tbaa !25
  %i.xq = sub nuw i32 %i.xn, %.0552
  %i.xr = call i32 %3(ptr noundef %4, ptr noundef %i.xp, i32 noundef %i.xq) #4
  %.not641 = icmp eq i32 %i.xr, 0
  %spec.select672 = select i1 %.not641, i32 1, i32 -5
  br label %.loopexit684

.thread:                                          ; preds = %.loopexit1563, %bb.ap, %bb.ay, %._crit_edge923, %bb.cr, %bb.cl, %bb.by, %bb.bw, %bb.bu, %bb.bk, %bb.bf, %bb.bd, %bb.bb, %bb.af, %bb.ab, %._crit_edge1024, %bb.r, %bb.m, %bb.g
  %.7592 = phi ptr [ %.0585, %bb.g ], [ %.0585, %bb.m ], [ %.0585, %bb.r ], [ %.1586.lcssa, %._crit_edge1024 ], [ %.0585, %bb.ab ], [ %.0585, %bb.af ], [ %.0585, %._crit_edge923 ], [ %.0585, %bb.bb ], [ %.0585, %bb.bd ], [ %.0585, %bb.bf ], [ %i.ms, %bb.bk ], [ %i.pv, %bb.bu ], [ %.0585, %bb.bw ], [ %.0585, %bb.by ], [ %.0585, %bb.cl ], [ %.0585, %bb.cr ], [ %.0585, %bb.ap ], [ %.0585, %bb.ay ], [ %.lcssa1470, %.loopexit1563 ]
  %.41 = phi i32 [ %.0559, %bb.g ], [ %.1560.lcssa, %bb.m ], [ %.3562.lcssa, %bb.r ], [ %.5564.lcssa, %._crit_edge1024 ], [ %.7566.lcssa, %bb.ab ], [ %.10569.lcssa, %bb.af ], [ %.12571.lcssa, %._crit_edge923 ], [ %.12571.lcssa, %bb.bb ], [ %.12571.lcssa, %bb.bd ], [ %.12571.lcssa, %bb.bf ], [ %i.mv, %bb.bk ], [ %.29, %bb.bu ], [ %.29, %bb.bw ], [ %.29, %bb.by ], [ %.37, %bb.cl ], [ %.40, %bb.cr ], [ %.15574.lcssa, %bb.ap ], [ %.21580, %bb.ay ], [ %.40, %.loopexit1563 ]
  %.6558 = phi i32 [ %.0552, %bb.g ], [ %.0552, %bb.m ], [ %.0552, %bb.r ], [ %.1553.lcssa, %._crit_edge1024 ], [ %.0552, %bb.ab ], [ %.0552, %bb.af ], [ %.0552, %._crit_edge923 ], [ %.0552, %bb.bb ], [ %.0552, %bb.bd ], [ %.0552, %bb.bf ], [ %i.mt, %bb.bk ], [ %i.pw, %bb.bu ], [ %.0552, %bb.bw ], [ %.0552, %bb.by ], [ %.0552, %bb.cl ], [ %.0552, %bb.cr ], [ %.0552, %bb.ap ], [ %.0552, %bb.ay ], [ %i.xl, %.loopexit1563 ]
  %.25551 = phi i64 [ %i.av, %bb.g ], [ %i.bl, %bb.m ], [ %.2528.lcssa, %bb.r ], [ 0, %._crit_edge1024 ], [ %i.dw, %bb.ab ], [ %i.fb, %bb.af ], [ %.6532.lcssa, %._crit_edge923 ], [ %.6532.lcssa, %bb.bb ], [ %.6532.lcssa, %bb.bd ], [ %.6532.lcssa, %bb.bf ], [ %i.mw, %bb.bk ], [ %i.pk, %bb.bu ], [ %i.pk, %bb.bw ], [ %i.pk, %bb.by ], [ %i.tt, %bb.cl ], [ %.24550, %bb.cr ], [ %i.hz, %bb.ap ], [ %.11537, %bb.ay ], [ %.24550, %.loopexit1563 ]
  %.25 = phi i32 [ %i.aw, %bb.g ], [ %i.bm, %bb.m ], [ %.2521.lcssa, %bb.r ], [ 0, %._crit_edge1024 ], [ %i.dx, %bb.ab ], [ %i.fc, %bb.af ], [ %.6525.lcssa, %._crit_edge923 ], [ %.6525.lcssa, %bb.bb ], [ %.6525.lcssa, %bb.bd ], [ %.6525.lcssa, %bb.bf ], [ %i.mx, %bb.bk ], [ %i.pl, %bb.bu ], [ %i.pl, %bb.bw ], [ %i.pl, %bb.by ], [ %i.tu, %bb.cl ], [ %.24, %bb.cr ], [ %i.ia, %bb.ap ], [ %.11, %bb.ay ], [ %.24, %.loopexit1563 ]
  %.pre = load i32, ptr %i.g, align 8, !tbaa !28
  br label %bb.e

.loopexit684.loopexit1568:                        ; preds = %bb.e
  br label %.loopexit684

.loopexit684:                                     ; preds = %bb.bt, %bb.cs, %bb.w, %bb.e, %.loopexit684.loopexit1568, %bb.cu, %bb.ct, %bb.co, %bb.ci, %bb.cf, %bb.cb, %bb.bp, %bb.bm, %bb.av, %bb.as, %bb.an, %bb.ai, %.split, %bb.z, %bb.u, %bb.p, %.split1037
  %.42 = phi i32 [ %.0559, %bb.e ], [ 0, %.split1037 ], [ 0, %bb.p ], [ 0, %bb.u ], [ %.0559, %bb.cu ], [ 0, %bb.z ], [ 0, %.split ], [ 0, %bb.an ], [ %.0559, %bb.ct ], [ 0, %bb.cb ], [ 0, %bb.co ], [ %.40, %bb.cs ], [ 0, %bb.ci ], [ 0, %bb.cf ], [ 0, %bb.bp ], [ 0, %bb.bm ], [ 0, %bb.as ], [ 0, %bb.av ], [ 0, %bb.ai ], [ %.6565, %bb.w ], [ %.29, %bb.bt ], [ %.0559, %.loopexit684.loopexit1568 ]
  %.0 = phi i32 [ -2, %bb.e ], [ -5, %.split1037 ], [ -5, %bb.p ], [ -5, %bb.u ], [ %spec.select672, %bb.cu ], [ -5, %bb.z ], [ -5, %.split ], [ -5, %bb.an ], [ 1, %bb.ct ], [ -5, %bb.cb ], [ -5, %bb.co ], [ -5, %bb.cs ], [ -5, %bb.ci ], [ -5, %bb.cf ], [ -5, %bb.bp ], [ -5, %bb.bm ], [ -5, %bb.as ], [ -5, %bb.av ], [ -5, %bb.ai ], [ -5, %bb.w ], [ -5, %bb.bt ], [ -3, %.loopexit684.loopexit1568 ]
  %i.xs = load ptr, ptr %i.a, align 8, !tbaa !31
  store ptr %i.xs, ptr %0, align 8, !tbaa !30
  store i32 %.42, ptr %i.aj, align 8, !tbaa !32
  br label %bb.cv

bb.cv:                                            ; preds = %bb.a, %bb.b, %.loopexit684
  %.0593 = phi i32 [ %.0, %.loopexit684 ], [ -2, %bb.b ], [ -2, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.0593
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @inflate_table(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @inflate_fast(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @inflateBackEnd(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17   ; 2 uses
end_hunk_0
