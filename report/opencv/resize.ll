Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/resize?download=true
inline.NumInlined: 1363
inline.NumDeleted: 293
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 135
loop-unroll.NumUnrolled: 149
begin_hunk_0_@_ZN12_GLOBAL__N_111hlineResizeIaNS_12fixedpoint32ELi2ELb0EEEvPT_iPiPT0_S6_iii:bb.a
  %i.c = add nsw i32 %5, -1
  %i.d = zext nneg i32 %i.c to i64
  %i.e = shl nuw nsw i64 %i.d, 3
  %i.f = getelementptr i8, ptr %3, i64 %i.e
  %scevgep = getelementptr i8, ptr %i.f, i64 8
  br label %.preheader68

.preheader69.us.preheader:                        ; preds = %.preheader69.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 7 uses
  %i.g = shl nuw nsw i64 %wide.trip.count, 2
  %scevgep140 = getelementptr i8, ptr %0, i64 %wide.trip.count
  %min.iters.check = icmp ult i32 %1, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 4 uses
  %i.h = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader69.us

.preheader69.us:                                  ; preds = %.preheader69.us.preheader, %._crit_edge.us
  %.05874.us = phi i32 [ %i.aw, %._crit_edge.us ], [ 0, %.preheader69.us.preheader ]
  %.06172.us = phi ptr [ %.lcssa138, %._crit_edge.us ], [ %4, %.preheader69.us.preheader ] ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader69.us
  %scevgep139 = getelementptr i8, ptr %.06172.us, i64 %i.g
  %bound0 = icmp ult ptr %.06172.us, %scevgep140
  %bound1 = icmp ult ptr %0, %scevgep139
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.i = getelementptr i8, ptr %.06172.us, i64 %i.h ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.j = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.06172.us, i64 %i.j ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %wide.load = load <4 x i8>, ptr %i.k, align 1, !tbaa !22, !alias.scope !1463
  %wide.load141 = load <4 x i8>, ptr %i.l, align 1, !tbaa !22, !alias.scope !1463
  %i.m = sext <4 x i8> %wide.load to <4 x i32>
  %i.n = sext <4 x i8> %wide.load141 to <4 x i32>
  %i.o = shl nsw <4 x i32> %i.m, splat (i32 16)
  %i.p = shl nsw <4 x i32> %i.n, splat (i32 16)
  %i.q = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %i.o, ptr %next.gep, align 4, !tbaa !405, !alias.scope !1464, !noalias !1463
  store <4 x i32> %i.p, ptr %i.q, align 4, !tbaa !405, !alias.scope !1464, !noalias !1463
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !1446

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader69.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader69.us ], [ %n.vec, %middle.block ] ; 3 uses
  %.16270.us.ph = phi ptr [ %.06172.us, %vector.memcheck ], [ %.06172.us, %.preheader69.us ], [ %i.i, %middle.block ] ; 2 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.16270.us.prol = phi ptr [ %i.w, %scalar.ph.prol ], [ %.16270.us.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.prol
  %i.t = load i8, ptr %i.s, align 1, !tbaa !22
  %i.u = sext i8 %i.t to i32
  %i.v = shl nsw i32 %i.u, 16
  store i32 %i.v, ptr %.16270.us.prol, align 4, !tbaa !405
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.16270.us.prol, i64 4 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1447

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa166.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.w, %scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %.16270.us.unr = phi ptr [ %.16270.us.ph, %scalar.ph.preheader ], [ %i.w, %scalar.ph.prol ]
  %i.x = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.y = icmp ugt i64 %i.x, -4
  br i1 %i.y, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.16270.us = phi ptr [ %i.av, %scalar.ph ], [ %.16270.us.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !22
  %i.ab = sext i8 %i.aa to i32
  %i.ac = shl nsw i32 %i.ab, 16
  store i32 %i.ac, ptr %.16270.us, align 4, !tbaa !405
  %i.ad = getelementptr inbounds nuw i8, ptr %.16270.us, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !22
  %i.ah = sext i8 %i.ag to i32
  %i.ai = shl nsw i32 %i.ah, 16
  store i32 %i.ai, ptr %i.ad, align 4, !tbaa !405
  %i.aj = getelementptr inbounds nuw i8, ptr %.16270.us, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  %i.am = load i8, ptr %i.al, align 1, !tbaa !22
  %i.an = sext i8 %i.am to i32
  %i.ao = shl nsw i32 %i.an, 16
  store i32 %i.ao, ptr %i.aj, align 4, !tbaa !405
  %i.ap = getelementptr inbounds nuw i8, ptr %.16270.us, i64 12
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 3
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !22
  %i.at = sext i8 %i.as to i32
  %i.au = shl nsw i32 %i.at, 16
  store i32 %i.au, ptr %i.ap, align 4, !tbaa !405
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.16270.us, i64 16 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge.us, label %scalar.ph, !llvm.loop !1448

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa138 = phi ptr [ %i.i, %middle.block ], [ %.lcssa166.unr, %scalar.ph.prol.loopexit ], [ %i.av, %scalar.ph ] ; 2 uses
  %i.aw = add nuw nsw i32 %.05874.us, 1           ; 2 uses
  %exitcond110.not = icmp eq i32 %i.aw, %5
  br i1 %exitcond110.not, label %.preheader68.loopexit, label %.preheader69.us, !llvm.loop !1449

.preheader68.loopexit:                            ; preds = %._crit_edge.us
  %i.ax = add nsw i32 %5, -1
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = shl nuw nsw i64 %i.ay, 3
  %i.ba = getelementptr i8, ptr %3, i64 %i.az
  %scevgep109 = getelementptr i8, ptr %i.ba, i64 8
  br label %.preheader68

.preheader68:                                     ; preds = %.preheader69.preheader, %.preheader68.loopexit, %bb.a
  %.061.lcssa = phi ptr [ %4, %bb.a ], [ %.lcssa138, %.preheader68.loopexit ], [ %4, %.preheader69.preheader ] ; 3 uses
  %.059.lcssa = phi ptr [ %3, %bb.a ], [ %scevgep109, %.preheader68.loopexit ], [ %scevgep, %.preheader69.preheader ]
  %.058.lcssa = phi i32 [ 0, %bb.a ], [ %5, %.preheader68.loopexit ], [ %5, %.preheader69.preheader ] ; 3 uses
  %i.bb = icmp slt i32 %.058.lcssa, %6
  br i1 %i.bb, label %.lr.ph86, label %._crit_edge87

.lr.ph86:                                         ; preds = %.preheader68
  %i.bc = icmp sgt i32 %1, 0
  br i1 %i.bc, label %.lr.ph.us.preheader, label %._crit_edge87

.lr.ph.us.preheader:                              ; preds = %.lr.ph86
  %i.bd = zext nneg i32 %1 to i64                 ; 2 uses
  %i.be = zext nneg i32 %.058.lcssa to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us90
  %indvars.iv116 = phi i64 [ %i.be, %.lr.ph.us.preheader ], [ %indvars.iv.next117, %._crit_edge.us90 ] ; 2 uses
  %.16084.us = phi ptr [ %.059.lcssa, %.lr.ph.us.preheader ], [ %i.cm, %._crit_edge.us90 ] ; 3 uses
  %.26383.us = phi ptr [ %.061.lcssa, %.lr.ph.us.preheader ], [ %i.cl, %._crit_edge.us90 ]
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv116
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !26
  %i.bh = mul nsw i32 %i.bg, %1
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds i8, ptr %0, i64 %i.bi ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.16084.us, i64 4
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bd
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %bb.f
  %indvars.iv111 = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next112, %bb.f ] ; 3 uses
  %.381.us = phi ptr [ %.26383.us, %.lr.ph.us ], [ %i.cl, %bb.f ] ; 3 uses
  %i.bl = load i32, ptr %.16084.us, align 4, !tbaa !405 ; 2 uses
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv111
  %i.bo = sext i32 %i.bl to i64
  %i.bp = load i8, ptr %i.bn, align 1, !tbaa !22, !noalias !1465
  %i.bq = sext i8 %i.bp to i64
  %i.br = mul nsw i64 %i.bq, %i.bo
  %i.bs = tail call i64 @llvm.smax.i64(i64 range(i64 -70368744144896, 70368744177665) %i.br, i64 -2147483648)
  %i.bt = tail call i64 @llvm.smin.i64(i64 %i.bs, i64 2147483647)
  %i.bu = trunc nsw i64 %i.bt to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.067.0.us = phi i32 [ %i.bu, %bb.c ], [ 0, %bb.b ] ; 3 uses
  store i32 %.sroa.067.0.us, ptr %.381.us, align 4, !tbaa !405
  %i.bv = load i32, ptr %i.bk, align 4, !tbaa !405 ; 2 uses
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv111
  %i.bx = sext i32 %i.bv to i64
  %i.by = load i8, ptr %gep, align 1, !tbaa !22, !noalias !1466
  %i.bz = sext i8 %i.by to i64
  %i.ca = mul nsw i64 %i.bz, %i.bx
  %i.cb = tail call i64 @llvm.smax.i64(i64 range(i64 -70368744144896, 70368744177665) %i.ca, i64 -2147483648)
  %i.cc = tail call i64 @llvm.smin.i64(i64 %i.cb, i64 2147483647)
  %i.cd = trunc nsw i64 %i.cc to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.0.0.us = phi i32 [ %i.cd, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %i.ce = add nsw i32 %.sroa.0.0.us, %.sroa.067.0.us ; 4 uses
  %i.cf = xor i32 %i.ce, %.sroa.067.0.us
  %i.cg = xor i32 %i.ce, %.sroa.0.0.us
  %i.ch = and i32 %i.cf, %i.cg
  %i.ci = and i32 %i.ce, -2147483648
  %i.cj = xor i32 %i.ci, -1
  %.not6.i.us = icmp slt i32 %i.ch, 0
  %i.ck = select i1 %.not6.i.us, i32 %i.cj, i32 %i.ce
  store i32 %i.ck, ptr %.381.us, align 4, !tbaa !405
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.381.us, i64 4 ; 3 uses
  %exitcond115.not = icmp eq i64 %indvars.iv.next112, %i.bd
  br i1 %exitcond115.not, label %._crit_edge.us90, label %bb.b, !llvm.loop !1454

._crit_edge.us90:                                 ; preds = %bb.f
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.16084.us, i64 8
  %i.cn = trunc nuw i64 %indvars.iv.next117 to i32 ; 2 uses
  %i.co = icmp sgt i32 %6, %i.cn
  br i1 %i.co, label %.lr.ph.us, label %._crit_edge87, !llvm.loop !1455

._crit_edge87:                                    ; preds = %._crit_edge.us90, %.lr.ph86, %.preheader68
  %.263.lcssa = phi ptr [ %.061.lcssa, %.preheader68 ], [ %.061.lcssa, %.lr.ph86 ], [ %i.cl, %._crit_edge.us90 ]
  %.1.lcssa = phi i32 [ %.058.lcssa, %.preheader68 ], [ %6, %.lr.ph86 ], [ %i.cn, %._crit_edge.us90 ] ; 2 uses
  %.not = icmp slt i32 %.1.lcssa, %7
  br i1 %.not, label %bb.g, label %.loopexit.split

bb.g:                                             ; preds = %._crit_edge87
  %i.cp = zext nneg i32 %7 to i64
  %i.cq = getelementptr [4 x i8], ptr %2, i64 %i.cp
  %i.cr = getelementptr i8, ptr %i.cq, i64 -4
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !26
  %i.ct = mul i32 %i.cs, %1
  %i.cu = sext i32 %i.ct to i64                   ; 2 uses
  %i.cv = getelementptr i8, ptr %0, i64 %i.cu     ; 7 uses
  %i.cw = icmp sgt i32 %1, 0
  br i1 %i.cw, label %.preheader.preheader, label %.loopexit.split

.preheader.preheader:                             ; preds = %bb.g
  %wide.trip.count122 = zext nneg i32 %1 to i64   ; 7 uses
  %i.cx = shl nuw nsw i64 %wide.trip.count122, 2
  %i.cy = getelementptr i8, ptr %0, i64 %i.cu
  %scevgep145 = getelementptr i8, ptr %i.cy, i64 %wide.trip.count122
  %min.iters.check150 = icmp ult i32 %1, 8
  %n.vec152 = and i64 %wide.trip.count122, 2147483640 ; 4 uses
  %i.cz = shl nuw nsw i64 %n.vec152, 2
  %cmp.n160 = icmp eq i64 %n.vec152, %wide.trip.count122
  %xtraiter167 = and i64 %wide.trip.count122, 3   ; 2 uses
  %lcmp.mod168.not = icmp eq i64 %xtraiter167, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.297 = phi i32 [ %i.dr, %._crit_edge ], [ %.1.lcssa, %.preheader.preheader ]
  %.496 = phi ptr [ %.lcssa, %._crit_edge ], [ %.263.lcssa, %.preheader.preheader ] ; 6 uses
  br i1 %min.iters.check150, label %scalar.ph149.preheader, label %vector.memcheck143

vector.memcheck143:                               ; preds = %.preheader
  %scevgep144 = getelementptr i8, ptr %.496, i64 %i.cx
  %bound0146 = icmp ult ptr %.496, %scevgep145
  %bound1147 = icmp ult ptr %i.cv, %scevgep144
  %found.conflict148 = and i1 %bound0146, %bound1147
  br i1 %found.conflict148, label %scalar.ph149.preheader, label %vector.ph151

vector.ph151:                                     ; preds = %vector.memcheck143
  %i.da = getelementptr i8, ptr %.496, i64 %i.cz  ; 2 uses
  br label %vector.body153

vector.body153:                                   ; preds = %vector.body153, %vector.ph151
  %index154 = phi i64 [ 0, %vector.ph151 ], [ %index.next158, %vector.body153 ] ; 3 uses
  %i.db = shl i64 %index154, 2
  %next.gep155 = getelementptr i8, ptr %.496, i64 %i.db ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 %index154 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  %wide.load156.a = load <4 x i8>, ptr %i.dc, align 1, !tbaa !22, !alias.scope !1467
  %wide.load157 = load <4 x i8>, ptr %i.dd, align 1, !tbaa !22, !alias.scope !1467
  %i.de = sext <4 x i8> %wide.load156.a to <4 x i32>
  %i.df = sext <4 x i8> %wide.load157 to <4 x i32>
  %i.dg = shl nsw <4 x i32> %i.de, splat (i32 16)
  %i.dh = shl nsw <4 x i32> %i.df, splat (i32 16)
  %i.di = getelementptr i8, ptr %next.gep155, i64 16
  store <4 x i32> %i.dg, ptr %next.gep155, align 4, !tbaa !405, !alias.scope !1468, !noalias !1467
  store <4 x i32> %i.dh, ptr %i.di, align 4, !tbaa !405, !alias.scope !1468, !noalias !1467
  %index.next158 = add nuw i64 %index154, 8       ; 2 uses
  %i.dj = icmp eq i64 %index.next158, %n.vec152
  br i1 %i.dj, label %middle.block159, label %vector.body153, !llvm.loop !1459

middle.block159:                                  ; preds = %vector.body153
  br i1 %cmp.n160, label %._crit_edge, label %scalar.ph149.preheader

scalar.ph149.preheader:                           ; preds = %vector.memcheck143, %.preheader, %middle.block159
  %indvars.iv119.ph = phi i64 [ 0, %vector.memcheck143 ], [ 0, %.preheader ], [ %n.vec152, %middle.block159 ] ; 3 uses
  %.594.ph = phi ptr [ %.496, %vector.memcheck143 ], [ %.496, %.preheader ], [ %i.da, %middle.block159 ] ; 2 uses
  br i1 %lcmp.mod168.not, label %scalar.ph149.prol.loopexit, label %scalar.ph149.prol

scalar.ph149.prol:                                ; preds = %scalar.ph149.preheader, %scalar.ph149.prol
  %indvars.iv119.prol = phi i64 [ %indvars.iv.next120.prol, %scalar.ph149.prol ], [ %indvars.iv119.ph, %scalar.ph149.preheader ] ; 2 uses
  %.594.prol = phi ptr [ %i.do, %scalar.ph149.prol ], [ %.594.ph, %scalar.ph149.preheader ] ; 2 uses
  %prol.iter169 = phi i64 [ %prol.iter169.next, %scalar.ph149.prol ], [ 0, %scalar.ph149.preheader ]
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cv, i64 %indvars.iv119.prol
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !22
  %i.dm = sext i8 %i.dl to i32
  %i.dn = shl nsw i32 %i.dm, 16
  store i32 %i.dn, ptr %.594.prol, align 4, !tbaa !405
  %indvars.iv.next120.prol = add nuw nsw i64 %indvars.iv119.prol, 1 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.594.prol, i64 4 ; 3 uses
  %prol.iter169.next = add i64 %prol.iter169, 1   ; 2 uses
  %prol.iter169.cmp.not = icmp eq i64 %prol.iter169.next, %xtraiter167
  br i1 %prol.iter169.cmp.not, label %scalar.ph149.prol.loopexit, label %scalar.ph149.prol, !llvm.loop !1460

scalar.ph149.prol.loopexit:                       ; preds = %scalar.ph149.prol, %scalar.ph149.preheader
  %.lcssa163.unr = phi ptr [ poison, %scalar.ph149.preheader ], [ %i.do, %scalar.ph149.prol ]
  %indvars.iv119.unr = phi i64 [ %indvars.iv119.ph, %scalar.ph149.preheader ], [ %indvars.iv.next120.prol, %scalar.ph149.prol ]
  %.594.unr = phi ptr [ %.594.ph, %scalar.ph149.preheader ], [ %i.do, %scalar.ph149.prol ]
  %i.dp = sub nsw i64 %indvars.iv119.ph, %wide.trip.count122
  %i.dq = icmp ugt i64 %i.dp, -4
  br i1 %i.dq, label %._crit_edge, label %scalar.ph149

._crit_edge:                                      ; preds = %scalar.ph149.prol.loopexit, %scalar.ph149, %middle.block159
  %.lcssa = phi ptr [ %i.da, %middle.block159 ], [ %.lcssa163.unr, %scalar.ph149.prol.loopexit ], [ %i.eo, %scalar.ph149 ]
  %i.dr = add nuw nsw i32 %.297, 1                ; 2 uses
  %exitcond124.not = icmp eq i32 %i.dr, %7
  br i1 %exitcond124.not, label %.loopexit.split, label %.preheader, !llvm.loop !1461

scalar.ph149:                                     ; preds = %scalar.ph149.prol.loopexit, %scalar.ph149
  %indvars.iv119 = phi i64 [ %indvars.iv.next120.3, %scalar.ph149 ], [ %indvars.iv119.unr, %scalar.ph149.prol.loopexit ] ; 5 uses
  %.594 = phi ptr [ %i.eo, %scalar.ph149 ], [ %.594.unr, %scalar.ph149.prol.loopexit ] ; 5 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cv, i64 %indvars.iv119
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !22
  %i.du = sext i8 %i.dt to i32
  %i.dv = shl nsw i32 %i.du, 16
  store i32 %i.dv, ptr %.594, align 4, !tbaa !405
  %i.dw = getelementptr inbounds nuw i8, ptr %.594, i64 4
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cv, i64 %indvars.iv119
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 1
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !22
  %i.ea = sext i8 %i.dz to i32
  %i.eb = shl nsw i32 %i.ea, 16
  store i32 %i.eb, ptr %i.dw, align 4, !tbaa !405
  %i.ec = getelementptr inbounds nuw i8, ptr %.594, i64 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cv, i64 %indvars.iv119
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 2
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !22
  %i.eg = sext i8 %i.ef to i32
  %i.eh = shl nsw i32 %i.eg, 16
  store i32 %i.eh, ptr %i.ec, align 4, !tbaa !405
  %i.ei = getelementptr inbounds nuw i8, ptr %.594, i64 12
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cv, i64 %indvars.iv119
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 3
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !22
  %i.em = sext i8 %i.el to i32
  %i.en = shl nsw i32 %i.em, 16
  store i32 %i.en, ptr %i.ei, align 4, !tbaa !405
  %indvars.iv.next120.3 = add nuw nsw i64 %indvars.iv119, 4 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.594, i64 16 ; 2 uses
  %exitcond123.not.3 = icmp eq i64 %indvars.iv.next120.3, %wide.trip.count122
  br i1 %exitcond123.not.3, label %._crit_edge, label %scalar.ph149, !llvm.loop !1462

.loopexit.split:                                  ; preds = %._crit_edge, %bb.g, %._crit_edge87
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_119interpolationLinearIaE9getCoeffsEiPiPNS_12fixedpoint32E(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #4 align 2 {
bb.a:
  %4 = alloca %"struct.cv::softdouble", align 8   ; 4 uses
  %5 = alloca %"struct.cv::softdouble", align 8   ; 4 uses
  %6 = alloca %"struct.cv::softdouble", align 8   ; 5 uses
  %7 = alloca %"struct.cv::softdouble", align 8   ; 4 uses
  %8 = alloca %"struct.cv::softdouble", align 8   ; 4 uses
  %9 = alloca %"struct.cv::softdouble", align 8   ; 4 uses
  %10 = alloca %"struct.cv::softdouble", align 8  ; 4 uses
  %11 = alloca %"struct.cv::softdouble", align 8  ; 4 uses
  %12 = alloca %"struct.cv::softdouble", align 8  ; 4 uses
  %13 = alloca %"struct.cv::softdouble", align 8  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @_ZN2cv10softdoubleC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  store double 5.000000e-01, ptr %10, align 8, !tbaa !153
  call void @_ZNK2cv10softdoubleplERKS0_(ptr dead_on_unwind nonnull writable sret(%"struct.cv::softdouble") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %10)
  call void @_ZNK2cv10softdoublemlERKS0_(ptr dead_on_unwind nonnull writable sret(%"struct.cv::softdouble") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  store double 5.000000e-01, ptr %11, align 8, !tbaa !153
  call void @_ZNK2cv10softdoublemiERKS0_(ptr dead_on_unwind nonnull writable sret(%"struct.cv::softdouble") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.a = call noundef i32 @_Z7cvFloorRKN2cv10softdoubleE(ptr noundef nonnull align 8 dereferenceable(8) %6) ; 4 uses
  %i.b = icmp sgt i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !173  ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.f

end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_113hlineResizeCnItNS_13ufixedpoint32ELi2ELb0ELi4EEEvPT_iPiPT0_S6_iii:bb.a
  %i.cd = getelementptr inbounds nuw i8, ptr %.595.i.i, i64 4 ; 2 uses
  %exitcond124.not.i.i = icmp eq i64 %indvars.iv.next121.i.i, %wide.trip.count123.i.i
  br i1 %exitcond124.not.i.i, label %._crit_edge.i.i, label %scalar.ph24, !llvm.loop !1613

_ZN12_GLOBAL__N_15hlineItNS_13ufixedpoint32ELi2ELb0ELi4EE8ResizeCnEPtiPiPS1_S5_iii.exit: ; preds = %._crit_edge.i.i, %._crit_edge88.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZN12_GLOBAL__N_111hlineResizeItNS_13ufixedpoint32ELi2ELb1EEEvPT_iPiPT0_S6_iii(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #19 {
bb.a:
  %i.a = icmp sgt i32 %5, 0
  br i1 %i.a, label %.preheader67.lr.ph, label %.preheader66

.preheader67.lr.ph:                               ; preds = %bb.a
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.preheader67.us.preheader, label %.preheader67.preheader

.preheader67.preheader:                           ; preds = %.preheader67.lr.ph
  %i.c = add nsw i32 %5, -1
  %i.d = zext nneg i32 %i.c to i64
  %i.e = shl nuw nsw i64 %i.d, 3
  %i.f = getelementptr i8, ptr %3, i64 %i.e
  %scevgep = getelementptr i8, ptr %i.f, i64 8
  br label %.preheader66

.preheader67.us.preheader:                        ; preds = %.preheader67.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 4 uses
  %i.g = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader67.us

.preheader67.us:                                  ; preds = %.preheader67.us.preheader, %._crit_edge.us
  %.05572.us = phi i32 [ %i.w, %._crit_edge.us ], [ 0, %.preheader67.us.preheader ]
  %.05870.us = phi ptr [ %.lcssa134, %._crit_edge.us ], [ %4, %.preheader67.us.preheader ] ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader67.us
  %i.h = getelementptr i8, ptr %.05870.us, i64 %i.g ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.i = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.05870.us, i64 %i.i ; 2 uses
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %wide.load = load <4 x i16>, ptr %i.j, align 2, !tbaa !63
  %wide.load135 = load <4 x i16>, ptr %i.k, align 2, !tbaa !63
  %i.l = zext <4 x i16> %wide.load to <4 x i32>
  %i.m = zext <4 x i16> %wide.load135 to <4 x i32>
  %i.n = shl nuw <4 x i32> %i.l, splat (i32 16)
  %i.o = shl nuw <4 x i32> %i.m, splat (i32 16)
  %i.p = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %i.n, ptr %next.gep, align 4, !tbaa !410
  store <4 x i32> %i.o, ptr %i.p, align 4, !tbaa !410
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !1616

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader67.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader67.us ], [ %n.vec, %middle.block ]
  %.15968.us.ph = phi ptr [ %.05870.us, %.preheader67.us ], [ %i.h, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.15968.us = phi ptr [ %i.v, %scalar.ph ], [ %.15968.us.ph, %scalar.ph.preheader ] ; 2 uses
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.s = load i16, ptr %i.r, align 2, !tbaa !63
  %i.t = zext i16 %i.s to i32
  %i.u = shl nuw i32 %i.t, 16
  store i32 %i.u, ptr %.15968.us, align 4, !tbaa !410
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.15968.us, i64 4 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !1617

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %.lcssa134 = phi ptr [ %i.h, %middle.block ], [ %i.v, %scalar.ph ] ; 2 uses
  %i.w = add nuw nsw i32 %.05572.us, 1            ; 2 uses
  %exitcond108.not = icmp eq i32 %i.w, %5
  br i1 %exitcond108.not, label %.preheader66.loopexit, label %.preheader67.us, !llvm.loop !1618

.preheader66.loopexit:                            ; preds = %._crit_edge.us
  %i.x = add nsw i32 %5, -1
  %i.y = zext nneg i32 %i.x to i64
  %i.z = shl nuw nsw i64 %i.y, 3
  %i.aa = getelementptr i8, ptr %3, i64 %i.z
  %scevgep107 = getelementptr i8, ptr %i.aa, i64 8
  br label %.preheader66

.preheader66:                                     ; preds = %.preheader67.preheader, %.preheader66.loopexit, %bb.a
  %.058.lcssa = phi ptr [ %4, %bb.a ], [ %.lcssa134, %.preheader66.loopexit ], [ %4, %.preheader67.preheader ] ; 3 uses
  %.056.lcssa = phi ptr [ %3, %bb.a ], [ %scevgep107, %.preheader66.loopexit ], [ %scevgep, %.preheader67.preheader ] ; 3 uses
  %.055.lcssa = phi i32 [ 0, %bb.a ], [ %5, %.preheader66.loopexit ], [ %5, %.preheader67.preheader ] ; 4 uses
  %i.ab = icmp slt i32 %.055.lcssa, %6
  br i1 %i.ab, label %.lr.ph84, label %._crit_edge85

.lr.ph84:                                         ; preds = %.preheader66
  %i.ac = icmp sgt i32 %1, 0
  br i1 %i.ac, label %.lr.ph.us.preheader, label %._crit_edge85

.lr.ph.us.preheader:                              ; preds = %.lr.ph84
  %i.ad = zext nneg i32 %1 to i64                 ; 5 uses
  %i.ae = zext nneg i32 %.055.lcssa to i64
  %i.af = shl nuw nsw i64 %i.ad, 2
  %i.ag = xor i32 %.055.lcssa, -1
  %i.ah = add i32 %6, %i.ag
  %i.ai = zext i32 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = getelementptr i8, ptr %.056.lcssa, i64 %i.aj
  %scevgep138 = getelementptr i8, ptr %i.ak, i64 8
  %min.iters.check140 = icmp ult i32 %1, 4
  %n.vec142 = and i64 %i.ad, 2147483644           ; 4 uses
  %i.al = shl nuw nsw i64 %n.vec142, 2
  %cmp.n152 = icmp eq i64 %n.vec142, %i.ad
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us88
  %indvars.iv114 = phi i64 [ %i.ae, %.lr.ph.us.preheader ], [ %indvars.iv.next115, %._crit_edge.us88 ] ; 2 uses
  %.15782.us = phi ptr [ %.056.lcssa, %.lr.ph.us.preheader ], [ %i.bx, %._crit_edge.us88 ] ; 4 uses
  %.26081.us = phi ptr [ %.058.lcssa, %.lr.ph.us.preheader ], [ %.lcssa132, %._crit_edge.us88 ] ; 6 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv114
  %i.an = load i32, ptr %i.am, align 4, !tbaa !26
  %i.ao = mul nsw i32 %i.an, %1
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [2 x i8], ptr %0, i64 %i.ap ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.15782.us, i64 4 ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %i.ad ; 2 uses
  br i1 %min.iters.check140, label %scalar.ph139.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.us
  %scevgep137 = getelementptr i8, ptr %.26081.us, i64 %i.af
  %bound0 = icmp ult ptr %.26081.us, %scevgep138
  %bound1 = icmp ult ptr %.056.lcssa, %scevgep137
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph139.preheader, label %vector.ph141

vector.ph141:                                     ; preds = %vector.memcheck
  %i.as = getelementptr i8, ptr %.26081.us, i64 %i.al ; 2 uses
  %i.at = load i32, ptr %.15782.us, align 4, !tbaa !410, !alias.scope !1632, !noalias !1633
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.at, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.au = zext <4 x i32> %broadcast.splat to <4 x i64>
  %i.av = load i32, ptr %i.ar, align 4, !tbaa !410, !alias.scope !1632, !noalias !1634
  %broadcast.splatinsert143 = insertelement <4 x i32> poison, i32 %i.av, i64 0
  %broadcast.splat144 = shufflevector <4 x i32> %broadcast.splatinsert143, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aw = zext <4 x i32> %broadcast.splat144 to <4 x i64>
  br label %vector.body145

vector.body145:                                   ; preds = %vector.body145, %vector.ph141
  %index146 = phi i64 [ 0, %vector.ph141 ], [ %index.next150, %vector.body145 ] ; 4 uses
  %i.ax = shl i64 %index146, 2
  %next.gep147 = getelementptr i8, ptr %.26081.us, i64 %i.ax ; 2 uses
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %index146
  %wide.load148.a = load <4 x i16>, ptr %i.ay, align 2, !tbaa !63, !noalias !1633
  %i.az = zext <4 x i16> %wide.load148.a to <4 x i64>
  %i.ba = mul nuw nsw <4 x i64> %i.az, %i.au
  %i.bb = tail call <4 x i64> @llvm.umin.v4i64(<4 x i64> %i.ba, <4 x i64> splat (i64 4294967295))
  %i.bc = trunc nuw <4 x i64> %i.bb to <4 x i32>  ; 2 uses
  store <4 x i32> %i.bc, ptr %next.gep147, align 4, !tbaa !410, !alias.scope !1635, !noalias !1632
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %index146
  %wide.load149 = load <4 x i16>, ptr %i.bd, align 2, !tbaa !63, !noalias !1634
  %i.be = zext <4 x i16> %wide.load149 to <4 x i64>
  %i.bf = mul nuw nsw <4 x i64> %i.be, %i.aw
  %i.bg = tail call <4 x i64> @llvm.umin.v4i64(<4 x i64> %i.bf, <4 x i64> splat (i64 4294967295))
  %i.bh = trunc nuw <4 x i64> %i.bg to <4 x i32>
  %i.bi = tail call <4 x i32> @llvm.uadd.sat.v4i32(<4 x i32> %i.bc, <4 x i32> %i.bh)
  store <4 x i32> %i.bi, ptr %next.gep147, align 4, !tbaa !410, !alias.scope !1635, !noalias !1632
  %index.next150 = add nuw i64 %index146, 4       ; 2 uses
  %i.bj = icmp eq i64 %index.next150, %n.vec142
  br i1 %i.bj, label %middle.block151, label %vector.body145, !llvm.loop !1626

middle.block151:                                  ; preds = %vector.body145
  br i1 %cmp.n152, label %._crit_edge.us88, label %scalar.ph139.preheader

scalar.ph139.preheader:                           ; preds = %vector.memcheck, %.lr.ph.us, %middle.block151
  %indvars.iv109.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.us ], [ %n.vec142, %middle.block151 ]
  %.379.us.ph = phi ptr [ %.26081.us, %vector.memcheck ], [ %.26081.us, %.lr.ph.us ], [ %i.as, %middle.block151 ]
  br label %scalar.ph139

scalar.ph139:                                     ; preds = %scalar.ph139.preheader, %scalar.ph139
  %indvars.iv109 = phi i64 [ %indvars.iv.next110, %scalar.ph139 ], [ %indvars.iv109.ph, %scalar.ph139.preheader ] ; 3 uses
  %.379.us = phi ptr [ %i.bw, %scalar.ph139 ], [ %.379.us.ph, %scalar.ph139.preheader ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %indvars.iv109
  %i.bl = load i32, ptr %.15782.us, align 4, !tbaa !410, !noalias !1633
  %i.bm = zext i32 %i.bl to i64
  %i.bn = load i16, ptr %i.bk, align 2, !tbaa !63, !noalias !1633
  %i.bo = zext i16 %i.bn to i64
  %i.bp = mul nuw nsw i64 %i.bo, %i.bm
  %.sroa.speculated.i.us = tail call i64 @llvm.umin.i64(i64 range(i64 0, 281470681677826) %i.bp, i64 4294967295)
  %i.bq = trunc nuw i64 %.sroa.speculated.i.us to i32 ; 2 uses
  store i32 %i.bq, ptr %.379.us, align 4, !tbaa !410
  %gep = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %indvars.iv109
  %8 = load i32, ptr %i.ar, align 4, !tbaa !410, !noalias !1634
  %i.br = zext i32 %8 to i64
  %9 = load i16, ptr %gep, align 2, !tbaa !63, !noalias !1634
  %i.bs = zext i16 %9 to i64
  %i.bt = mul nuw nsw i64 %i.bs, %i.br
  %.sroa.speculated.i63.us = tail call i64 @llvm.umin.i64(i64 range(i64 0, 281470681677826) %i.bt, i64 4294967295)
  %i.bu = trunc nuw i64 %.sroa.speculated.i63.us to i32
  %i.bv = tail call i32 @llvm.uadd.sat.i32(i32 %i.bq, i32 %i.bu)
  store i32 %i.bv, ptr %.379.us, align 4, !tbaa !410
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.379.us, i64 4 ; 2 uses
  %exitcond113.not = icmp eq i64 %indvars.iv.next110, %i.ad
  br i1 %exitcond113.not, label %._crit_edge.us88, label %scalar.ph139, !llvm.loop !1627

._crit_edge.us88:                                 ; preds = %scalar.ph139, %middle.block151
  %.lcssa132 = phi ptr [ %i.as, %middle.block151 ], [ %i.bw, %scalar.ph139 ] ; 2 uses
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.15782.us, i64 8
  %i.by = trunc nuw i64 %indvars.iv.next115 to i32 ; 2 uses
  %i.bz = icmp sgt i32 %6, %i.by
  br i1 %i.bz, label %.lr.ph.us, label %._crit_edge85, !llvm.loop !1628

._crit_edge85:                                    ; preds = %._crit_edge.us88, %.lr.ph84, %.preheader66
  %.260.lcssa = phi ptr [ %.058.lcssa, %.preheader66 ], [ %.058.lcssa, %.lr.ph84 ], [ %.lcssa132, %._crit_edge.us88 ]
  %.1.lcssa = phi i32 [ %.055.lcssa, %.preheader66 ], [ %6, %.lr.ph84 ], [ %i.by, %._crit_edge.us88 ] ; 2 uses
  %.not = icmp slt i32 %.1.lcssa, %7
  br i1 %.not, label %bb.b, label %.loopexit.split

bb.b:                                             ; preds = %._crit_edge85
  %i.ca = zext nneg i32 %7 to i64
  %i.cb = getelementptr [4 x i8], ptr %2, i64 %i.ca
  %i.cc = getelementptr i8, ptr %i.cb, i64 -4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !26
  %i.ce = mul nsw i32 %i.cd, %1
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [2 x i8], ptr %0, i64 %i.cf ; 2 uses
  %i.ch = icmp sgt i32 %1, 0
  br i1 %i.ch, label %.preheader.preheader, label %.loopexit.split

.preheader.preheader:                             ; preds = %bb.b
  %wide.trip.count120 = zext nneg i32 %1 to i64   ; 3 uses
  %min.iters.check156 = icmp ult i32 %1, 8
  %n.vec158 = and i64 %wide.trip.count120, 2147483640 ; 4 uses
  %i.ci = shl nuw nsw i64 %n.vec158, 2
  %cmp.n166 = icmp eq i64 %n.vec158, %wide.trip.count120
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.295 = phi i32 [ %i.ct, %._crit_edge ], [ %.1.lcssa, %.preheader.preheader ]
  %.494 = phi ptr [ %.lcssa, %._crit_edge ], [ %.260.lcssa, %.preheader.preheader ] ; 3 uses
  br i1 %min.iters.check156, label %scalar.ph155.preheader, label %vector.ph157

vector.ph157:                                     ; preds = %.preheader
  %i.cj = getelementptr i8, ptr %.494, i64 %i.ci  ; 2 uses
  br label %vector.body159

vector.body159:                                   ; preds = %vector.body159, %vector.ph157
  %index160 = phi i64 [ 0, %vector.ph157 ], [ %index.next164, %vector.body159 ] ; 3 uses
  %i.ck = shl i64 %index160, 2
  %next.gep161 = getelementptr i8, ptr %.494, i64 %i.ck ; 2 uses
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %i.cg, i64 %index160 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %wide.load162.a = load <4 x i16>, ptr %i.cl, align 2, !tbaa !63
  %wide.load163 = load <4 x i16>, ptr %i.cm, align 2, !tbaa !63
  %i.cn = zext <4 x i16> %wide.load162.a to <4 x i32>
  %i.co = zext <4 x i16> %wide.load163 to <4 x i32>
  %i.cp = shl nuw <4 x i32> %i.cn, splat (i32 16)
  %i.cq = shl nuw <4 x i32> %i.co, splat (i32 16)
  %i.cr = getelementptr i8, ptr %next.gep161, i64 16
  store <4 x i32> %i.cp, ptr %next.gep161, align 4, !tbaa !410
  store <4 x i32> %i.cq, ptr %i.cr, align 4, !tbaa !410
  %index.next164 = add nuw i64 %index160, 8       ; 2 uses
  %i.cs = icmp eq i64 %index.next164, %n.vec158
  br i1 %i.cs, label %middle.block165, label %vector.body159, !llvm.loop !1629

middle.block165:                                  ; preds = %vector.body159
  br i1 %cmp.n166, label %._crit_edge, label %scalar.ph155.preheader

scalar.ph155.preheader:                           ; preds = %.preheader, %middle.block165
  %indvars.iv117.ph = phi i64 [ 0, %.preheader ], [ %n.vec158, %middle.block165 ]
  %.592.ph = phi ptr [ %.494, %.preheader ], [ %i.cj, %middle.block165 ]
  br label %scalar.ph155

._crit_edge:                                      ; preds = %scalar.ph155, %middle.block165
  %.lcssa = phi ptr [ %i.cj, %middle.block165 ], [ %i.cy, %scalar.ph155 ]
  %i.ct = add nuw nsw i32 %.295, 1                ; 2 uses
  %exitcond122.not = icmp eq i32 %i.ct, %7
  br i1 %exitcond122.not, label %.loopexit.split, label %.preheader, !llvm.loop !1630

scalar.ph155:                                     ; preds = %scalar.ph155.preheader, %scalar.ph155
  %indvars.iv117 = phi i64 [ %indvars.iv.next118, %scalar.ph155 ], [ %indvars.iv117.ph, %scalar.ph155.preheader ] ; 2 uses
  %.592 = phi ptr [ %i.cy, %scalar.ph155 ], [ %.592.ph, %scalar.ph155.preheader ] ; 2 uses
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.cg, i64 %indvars.iv117
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !63
  %i.cw = zext i16 %i.cv to i32
  %i.cx = shl nuw i32 %i.cw, 16
  store i32 %i.cx, ptr %.592, align 4, !tbaa !410
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.592, i64 4 ; 2 uses
  %exitcond121.not = icmp eq i64 %indvars.iv.next118, %wide.trip.count120
  br i1 %exitcond121.not, label %._crit_edge, label %scalar.ph155, !llvm.loop !1631

.loopexit.split:                                  ; preds = %._crit_edge, %bb.b, %._crit_edge85
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZN12_GLOBAL__N_111hlineResizeItNS_13ufixedpoint32ELi2ELb0EEEvPT_iPiPT0_S6_iii(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #19 {
bb.a:
  %i.a = icmp sgt i32 %5, 0
  br i1 %i.a, label %.preheader70.lr.ph, label %.preheader69

.preheader70.lr.ph:                               ; preds = %bb.a
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.preheader70.us.preheader, label %.preheader70.preheader

.preheader70.preheader:                           ; preds = %.preheader70.lr.ph
  %i.c = add nsw i32 %5, -1
  %i.d = zext nneg i32 %i.c to i64
  %i.e = shl nuw nsw i64 %i.d, 3
  %i.f = getelementptr i8, ptr %3, i64 %i.e
  %scevgep = getelementptr i8, ptr %i.f, i64 8
  br label %.preheader69

.preheader70.us.preheader:                        ; preds = %.preheader70.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 4 uses
  %i.g = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader70.us

.preheader70.us:                                  ; preds = %.preheader70.us.preheader, %._crit_edge.us
  %.05875.us = phi i32 [ %i.w, %._crit_edge.us ], [ 0, %.preheader70.us.preheader ]
  %.06173.us = phi ptr [ %.lcssa139, %._crit_edge.us ], [ %4, %.preheader70.us.preheader ] ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader70.us
  %i.h = getelementptr i8, ptr %.06173.us, i64 %i.g ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.i = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.06173.us, i64 %i.i ; 2 uses
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %wide.load = load <4 x i16>, ptr %i.j, align 2, !tbaa !63
  %wide.load140 = load <4 x i16>, ptr %i.k, align 2, !tbaa !63
  %i.l = zext <4 x i16> %wide.load to <4 x i32>
  %i.m = zext <4 x i16> %wide.load140 to <4 x i32>
  %i.n = shl nuw <4 x i32> %i.l, splat (i32 16)
  %i.o = shl nuw <4 x i32> %i.m, splat (i32 16)
  %i.p = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %i.n, ptr %next.gep, align 4, !tbaa !410
  store <4 x i32> %i.o, ptr %i.p, align 4, !tbaa !410
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !1636

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader70.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader70.us ], [ %n.vec, %middle.block ]
  %.16271.us.ph = phi ptr [ %.06173.us, %.preheader70.us ], [ %i.h, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.16271.us = phi ptr [ %i.v, %scalar.ph ], [ %.16271.us.ph, %scalar.ph.preheader ] ; 2 uses
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.s = load i16, ptr %i.r, align 2, !tbaa !63
  %i.t = zext i16 %i.s to i32
  %i.u = shl nuw i32 %i.t, 16
  store i32 %i.u, ptr %.16271.us, align 4, !tbaa !410
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.16271.us, i64 4 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !1637

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %.lcssa139 = phi ptr [ %i.h, %middle.block ], [ %i.v, %scalar.ph ] ; 2 uses
  %i.w = add nuw nsw i32 %.05875.us, 1            ; 2 uses
  %exitcond111.not = icmp eq i32 %i.w, %5
  br i1 %exitcond111.not, label %.preheader69.loopexit, label %.preheader70.us, !llvm.loop !4

.preheader69.loopexit:                            ; preds = %._crit_edge.us
  %i.x = add nsw i32 %5, -1
  %i.y = zext nneg i32 %i.x to i64
  %i.z = shl nuw nsw i64 %i.y, 3
  %i.aa = getelementptr i8, ptr %3, i64 %i.z
  %scevgep110 = getelementptr i8, ptr %i.aa, i64 8
  br label %.preheader69

.preheader69:                                     ; preds = %.preheader70.preheader, %.preheader69.loopexit, %bb.a
  %.061.lcssa = phi ptr [ %4, %bb.a ], [ %.lcssa139, %.preheader69.loopexit ], [ %4, %.preheader70.preheader ] ; 3 uses
  %.059.lcssa = phi ptr [ %3, %bb.a ], [ %scevgep110, %.preheader69.loopexit ], [ %scevgep, %.preheader70.preheader ]
  %.058.lcssa = phi i32 [ 0, %bb.a ], [ %5, %.preheader69.loopexit ], [ %5, %.preheader70.preheader ] ; 3 uses
  %i.ab = icmp slt i32 %.058.lcssa, %6
  br i1 %i.ab, label %.lr.ph87, label %._crit_edge88

.lr.ph87:                                         ; preds = %.preheader69
  %i.ac = icmp sgt i32 %1, 0
  br i1 %i.ac, label %.lr.ph.us.preheader, label %._crit_edge88
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_111hlineResizeIsNS_12fixedpoint32ELi2ELb1EEEvPT_iPiPT0_S6_iii:bb.a
bb.a:
  %i.a = icmp sgt i32 %5, 0
  br i1 %i.a, label %.preheader66.lr.ph, label %.preheader65

.preheader66.lr.ph:                               ; preds = %bb.a
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.preheader66.us.preheader, label %.preheader66.preheader

.preheader66.preheader:                           ; preds = %.preheader66.lr.ph
  %i.c = add nsw i32 %5, -1
  %i.d = zext nneg i32 %i.c to i64
  %i.e = shl nuw nsw i64 %i.d, 3
  %i.f = getelementptr i8, ptr %3, i64 %i.e
  %scevgep = getelementptr i8, ptr %i.f, i64 8
  br label %.preheader65

.preheader66.us.preheader:                        ; preds = %.preheader66.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 4 uses
  %i.g = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader66.us

.preheader66.us:                                  ; preds = %.preheader66.us.preheader, %._crit_edge.us
  %.05571.us = phi i32 [ %i.w, %._crit_edge.us ], [ 0, %.preheader66.us.preheader ]
  %.05869.us = phi ptr [ %.lcssa133, %._crit_edge.us ], [ %4, %.preheader66.us.preheader ] ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader66.us
  %i.h = getelementptr i8, ptr %.05869.us, i64 %i.g ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.i = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.05869.us, i64 %i.i ; 2 uses
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %wide.load = load <4 x i16>, ptr %i.j, align 2, !tbaa !63
  %wide.load134 = load <4 x i16>, ptr %i.k, align 2, !tbaa !63
  %i.l = sext <4 x i16> %wide.load to <4 x i32>
  %i.m = sext <4 x i16> %wide.load134 to <4 x i32>
  %i.n = shl nsw <4 x i32> %i.l, splat (i32 16)
  %i.o = shl nsw <4 x i32> %i.m, splat (i32 16)
  %i.p = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %i.n, ptr %next.gep, align 4, !tbaa !405
  store <4 x i32> %i.o, ptr %i.p, align 4, !tbaa !405
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !1747

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader66.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader66.us ], [ %n.vec, %middle.block ]
  %.15967.us.ph = phi ptr [ %.05869.us, %.preheader66.us ], [ %i.h, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.15967.us = phi ptr [ %i.v, %scalar.ph ], [ %.15967.us.ph, %scalar.ph.preheader ] ; 2 uses
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.s = load i16, ptr %i.r, align 2, !tbaa !63
  %i.t = sext i16 %i.s to i32
  %i.u = shl nsw i32 %i.t, 16
  store i32 %i.u, ptr %.15967.us, align 4, !tbaa !405
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.15967.us, i64 4 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !1748

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %.lcssa133 = phi ptr [ %i.h, %middle.block ], [ %i.v, %scalar.ph ] ; 2 uses
  %i.w = add nuw nsw i32 %.05571.us, 1            ; 2 uses
  %exitcond107.not = icmp eq i32 %i.w, %5
  br i1 %exitcond107.not, label %.preheader65.loopexit, label %.preheader66.us, !llvm.loop !1749

.preheader65.loopexit:                            ; preds = %._crit_edge.us
  %i.x = add nsw i32 %5, -1
  %i.y = zext nneg i32 %i.x to i64
  %i.z = shl nuw nsw i64 %i.y, 3
  %i.aa = getelementptr i8, ptr %3, i64 %i.z
  %scevgep106 = getelementptr i8, ptr %i.aa, i64 8
  br label %.preheader65

.preheader65:                                     ; preds = %.preheader66.preheader, %.preheader65.loopexit, %bb.a
  %.058.lcssa = phi ptr [ %4, %bb.a ], [ %.lcssa133, %.preheader65.loopexit ], [ %4, %.preheader66.preheader ] ; 3 uses
  %.056.lcssa = phi ptr [ %3, %bb.a ], [ %scevgep106, %.preheader65.loopexit ], [ %scevgep, %.preheader66.preheader ] ; 3 uses
  %.055.lcssa = phi i32 [ 0, %bb.a ], [ %5, %.preheader65.loopexit ], [ %5, %.preheader66.preheader ] ; 4 uses
  %i.ab = icmp slt i32 %.055.lcssa, %6
  br i1 %i.ab, label %.lr.ph83, label %._crit_edge84

.lr.ph83:                                         ; preds = %.preheader65
  %i.ac = icmp sgt i32 %1, 0
  br i1 %i.ac, label %.lr.ph.us.preheader, label %._crit_edge84

.lr.ph.us.preheader:                              ; preds = %.lr.ph83
  %i.ad = zext nneg i32 %1 to i64                 ; 5 uses
  %i.ae = zext nneg i32 %.055.lcssa to i64
  %i.af = shl nuw nsw i64 %i.ad, 2
  %i.ag = xor i32 %.055.lcssa, -1
  %i.ah = add i32 %6, %i.ag
  %i.ai = zext i32 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = getelementptr i8, ptr %.056.lcssa, i64 %i.aj
  %scevgep137 = getelementptr i8, ptr %i.ak, i64 8
  %min.iters.check139 = icmp ult i32 %1, 4
  %n.vec141 = and i64 %i.ad, 2147483644           ; 4 uses
  %i.al = shl nuw nsw i64 %n.vec141, 2
  %cmp.n151 = icmp eq i64 %n.vec141, %i.ad
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us87
  %indvars.iv113 = phi i64 [ %i.ae, %.lr.ph.us.preheader ], [ %indvars.iv.next114, %._crit_edge.us87 ] ; 2 uses
  %.15781.us = phi ptr [ %.056.lcssa, %.lr.ph.us.preheader ], [ %i.cq, %._crit_edge.us87 ] ; 4 uses
  %.26080.us = phi ptr [ %.058.lcssa, %.lr.ph.us.preheader ], [ %.lcssa131, %._crit_edge.us87 ] ; 6 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv113
  %i.an = load i32, ptr %i.am, align 4, !tbaa !26
  %i.ao = mul nsw i32 %i.an, %1
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [2 x i8], ptr %0, i64 %i.ap ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.15781.us, i64 4 ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %i.ad ; 2 uses
  br i1 %min.iters.check139, label %scalar.ph138.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.us
  %scevgep136 = getelementptr i8, ptr %.26080.us, i64 %i.af
  %bound0 = icmp ult ptr %.26080.us, %scevgep137
  %bound1 = icmp ult ptr %.056.lcssa, %scevgep136
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph138.preheader, label %vector.ph140

vector.ph140:                                     ; preds = %vector.memcheck
  %i.as = getelementptr i8, ptr %.26080.us, i64 %i.al ; 2 uses
  %i.at = load i32, ptr %.15781.us, align 4, !tbaa !405, !alias.scope !1763, !noalias !1764
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.at, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.au = sext <4 x i32> %broadcast.splat to <4 x i64>
  %i.av = load i32, ptr %i.ar, align 4, !tbaa !405, !alias.scope !1763, !noalias !1765
  %broadcast.splatinsert142 = insertelement <4 x i32> poison, i32 %i.av, i64 0
  %broadcast.splat143 = shufflevector <4 x i32> %broadcast.splatinsert142, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aw = sext <4 x i32> %broadcast.splat143 to <4 x i64>
  br label %vector.body144

vector.body144:                                   ; preds = %vector.body144, %vector.ph140
  %index145 = phi i64 [ 0, %vector.ph140 ], [ %index.next149, %vector.body144 ] ; 4 uses
  %i.ax = shl i64 %index145, 2
  %next.gep146 = getelementptr i8, ptr %.26080.us, i64 %i.ax ; 2 uses
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %index145
  %wide.load147.a = load <4 x i16>, ptr %i.ay, align 2, !tbaa !63, !noalias !1764
  %i.az = sext <4 x i16> %wide.load147.a to <4 x i64>
  %i.ba = mul nsw <4 x i64> %i.az, %i.au
  %i.bb = tail call <4 x i64> @llvm.smax.v4i64(<4 x i64> %i.ba, <4 x i64> splat (i64 -2147483648))
  %i.bc = tail call <4 x i64> @llvm.smin.v4i64(<4 x i64> %i.bb, <4 x i64> splat (i64 2147483647))
  %i.bd = trunc nsw <4 x i64> %i.bc to <4 x i32>  ; 3 uses
  store <4 x i32> %i.bd, ptr %next.gep146, align 4, !tbaa !405, !alias.scope !1766, !noalias !1763
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %index145
  %wide.load148 = load <4 x i16>, ptr %i.be, align 2, !tbaa !63, !noalias !1765
  %i.bf = sext <4 x i16> %wide.load148 to <4 x i64>
  %i.bg = mul nsw <4 x i64> %i.bf, %i.aw
  %i.bh = tail call <4 x i64> @llvm.smax.v4i64(<4 x i64> %i.bg, <4 x i64> splat (i64 -2147483648))
  %i.bi = tail call <4 x i64> @llvm.smin.v4i64(<4 x i64> %i.bh, <4 x i64> splat (i64 2147483647))
  %i.bj = trunc nsw <4 x i64> %i.bi to <4 x i32>  ; 2 uses
  %i.bk = add nsw <4 x i32> %i.bj, %i.bd          ; 4 uses
  %i.bl = xor <4 x i32> %i.bk, %i.bd
  %i.bm = xor <4 x i32> %i.bk, %i.bj
  %i.bn = and <4 x i32> %i.bl, %i.bm
  %i.bo = and <4 x i32> %i.bk, splat (i32 -2147483648)
  %i.bp = xor <4 x i32> %i.bo, splat (i32 -1)
  %i.bq = icmp slt <4 x i32> %i.bn, zeroinitializer
  %i.br = select <4 x i1> %i.bq, <4 x i32> %i.bp, <4 x i32> %i.bk
  store <4 x i32> %i.br, ptr %next.gep146, align 4, !tbaa !405, !alias.scope !1766, !noalias !1763
  %index.next149 = add nuw i64 %index145, 4       ; 2 uses
  %i.bs = icmp eq i64 %index.next149, %n.vec141
  br i1 %i.bs, label %middle.block150, label %vector.body144, !llvm.loop !1757

middle.block150:                                  ; preds = %vector.body144
  br i1 %cmp.n151, label %._crit_edge.us87, label %scalar.ph138.preheader

scalar.ph138.preheader:                           ; preds = %vector.memcheck, %.lr.ph.us, %middle.block150
  %indvars.iv108.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.us ], [ %n.vec141, %middle.block150 ]
  %.378.us.ph = phi ptr [ %.26080.us, %vector.memcheck ], [ %.26080.us, %.lr.ph.us ], [ %i.as, %middle.block150 ]
  br label %scalar.ph138

scalar.ph138:                                     ; preds = %scalar.ph138.preheader, %scalar.ph138
  %indvars.iv108 = phi i64 [ %indvars.iv.next109, %scalar.ph138 ], [ %indvars.iv108.ph, %scalar.ph138.preheader ] ; 3 uses
  %.378.us = phi ptr [ %i.cp, %scalar.ph138 ], [ %.378.us.ph, %scalar.ph138.preheader ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %indvars.iv108
  %i.bu = load i32, ptr %.15781.us, align 4, !tbaa !405, !noalias !1764
  %i.bv = sext i32 %i.bu to i64
  %i.bw = load i16, ptr %i.bt, align 2, !tbaa !63, !noalias !1764
  %i.bx = sext i16 %i.bw to i64
  %i.by = mul nsw i64 %i.bx, %i.bv
  %i.bz = tail call i64 @llvm.smax.i64(i64 range(i64 -70368744144896, 70368744177665) %i.by, i64 -2147483648)
  %i.ca = tail call i64 @llvm.smin.i64(i64 %i.bz, i64 2147483647)
  %i.cb = trunc nsw i64 %i.ca to i32              ; 3 uses
  store i32 %i.cb, ptr %.378.us, align 4, !tbaa !405
  %gep = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %indvars.iv108
  %8 = load i32, ptr %i.ar, align 4, !tbaa !405, !noalias !1765
  %i.cc = sext i32 %8 to i64
  %9 = load i16, ptr %gep, align 2, !tbaa !63, !noalias !1765
  %i.cd = sext i16 %9 to i64
  %i.ce = mul nsw i64 %i.cd, %i.cc
  %i.cf = tail call i64 @llvm.smax.i64(i64 range(i64 -70368744144896, 70368744177665) %i.ce, i64 -2147483648)
  %i.cg = tail call i64 @llvm.smin.i64(i64 %i.cf, i64 2147483647)
  %i.ch = trunc nsw i64 %i.cg to i32              ; 2 uses
  %i.ci = add nsw i32 %i.ch, %i.cb                ; 4 uses
  %i.cj = xor i32 %i.ci, %i.cb
  %i.ck = xor i32 %i.ci, %i.ch
  %i.cl = and i32 %i.cj, %i.ck
  %i.cm = and i32 %i.ci, -2147483648
  %i.cn = xor i32 %i.cm, -1
  %.not6.i.us = icmp slt i32 %i.cl, 0
  %i.co = select i1 %.not6.i.us, i32 %i.cn, i32 %i.ci
  store i32 %i.co, ptr %.378.us, align 4, !tbaa !405
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.378.us, i64 4 ; 2 uses
  %exitcond112.not = icmp eq i64 %indvars.iv.next109, %i.ad
  br i1 %exitcond112.not, label %._crit_edge.us87, label %scalar.ph138, !llvm.loop !1758

._crit_edge.us87:                                 ; preds = %scalar.ph138, %middle.block150
  %.lcssa131 = phi ptr [ %i.as, %middle.block150 ], [ %i.cp, %scalar.ph138 ] ; 2 uses
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.15781.us, i64 8
  %i.cr = trunc nuw i64 %indvars.iv.next114 to i32 ; 2 uses
  %i.cs = icmp sgt i32 %6, %i.cr
  br i1 %i.cs, label %.lr.ph.us, label %._crit_edge84, !llvm.loop !1759

._crit_edge84:                                    ; preds = %._crit_edge.us87, %.lr.ph83, %.preheader65
  %.260.lcssa = phi ptr [ %.058.lcssa, %.preheader65 ], [ %.058.lcssa, %.lr.ph83 ], [ %.lcssa131, %._crit_edge.us87 ]
  %.1.lcssa = phi i32 [ %.055.lcssa, %.preheader65 ], [ %6, %.lr.ph83 ], [ %i.cr, %._crit_edge.us87 ] ; 2 uses
  %.not = icmp slt i32 %.1.lcssa, %7
  br i1 %.not, label %bb.b, label %.loopexit.split

bb.b:                                             ; preds = %._crit_edge84
  %i.ct = zext nneg i32 %7 to i64
  %i.cu = getelementptr [4 x i8], ptr %2, i64 %i.ct
  %i.cv = getelementptr i8, ptr %i.cu, i64 -4
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !26
  %i.cx = mul nsw i32 %i.cw, %1
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [2 x i8], ptr %0, i64 %i.cy ; 2 uses
  %i.da = icmp sgt i32 %1, 0
  br i1 %i.da, label %.preheader.preheader, label %.loopexit.split

.preheader.preheader:                             ; preds = %bb.b
  %wide.trip.count119 = zext nneg i32 %1 to i64   ; 3 uses
  %min.iters.check155 = icmp ult i32 %1, 8
  %n.vec157 = and i64 %wide.trip.count119, 2147483640 ; 4 uses
  %i.db = shl nuw nsw i64 %n.vec157, 2
  %cmp.n165 = icmp eq i64 %n.vec157, %wide.trip.count119
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.294 = phi i32 [ %i.dm, %._crit_edge ], [ %.1.lcssa, %.preheader.preheader ]
  %.493 = phi ptr [ %.lcssa, %._crit_edge ], [ %.260.lcssa, %.preheader.preheader ] ; 3 uses
  br i1 %min.iters.check155, label %scalar.ph154.preheader, label %vector.ph156

vector.ph156:                                     ; preds = %.preheader
  %i.dc = getelementptr i8, ptr %.493, i64 %i.db  ; 2 uses
  br label %vector.body158

vector.body158:                                   ; preds = %vector.body158, %vector.ph156
  %index159 = phi i64 [ 0, %vector.ph156 ], [ %index.next163, %vector.body158 ] ; 3 uses
  %i.dd = shl i64 %index159, 2
  %next.gep160 = getelementptr i8, ptr %.493, i64 %i.dd ; 2 uses
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %index159 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %wide.load161.a = load <4 x i16>, ptr %i.de, align 2, !tbaa !63
  %wide.load162 = load <4 x i16>, ptr %i.df, align 2, !tbaa !63
  %i.dg = sext <4 x i16> %wide.load161.a to <4 x i32>
  %i.dh = sext <4 x i16> %wide.load162 to <4 x i32>
  %i.di = shl nsw <4 x i32> %i.dg, splat (i32 16)
  %i.dj = shl nsw <4 x i32> %i.dh, splat (i32 16)
  %i.dk = getelementptr i8, ptr %next.gep160, i64 16
  store <4 x i32> %i.di, ptr %next.gep160, align 4, !tbaa !405
  store <4 x i32> %i.dj, ptr %i.dk, align 4, !tbaa !405
  %index.next163 = add nuw i64 %index159, 8       ; 2 uses
  %i.dl = icmp eq i64 %index.next163, %n.vec157
  br i1 %i.dl, label %middle.block164, label %vector.body158, !llvm.loop !1760

middle.block164:                                  ; preds = %vector.body158
  br i1 %cmp.n165, label %._crit_edge, label %scalar.ph154.preheader

scalar.ph154.preheader:                           ; preds = %.preheader, %middle.block164
  %indvars.iv116.ph = phi i64 [ 0, %.preheader ], [ %n.vec157, %middle.block164 ]
  %.591.ph = phi ptr [ %.493, %.preheader ], [ %i.dc, %middle.block164 ]
  br label %scalar.ph154

._crit_edge:                                      ; preds = %scalar.ph154, %middle.block164
  %.lcssa = phi ptr [ %i.dc, %middle.block164 ], [ %i.dr, %scalar.ph154 ]
  %i.dm = add nuw nsw i32 %.294, 1                ; 2 uses
  %exitcond121.not = icmp eq i32 %i.dm, %7
  br i1 %exitcond121.not, label %.loopexit.split, label %.preheader, !llvm.loop !1761

scalar.ph154:                                     ; preds = %scalar.ph154.preheader, %scalar.ph154
  %indvars.iv116 = phi i64 [ %indvars.iv.next117, %scalar.ph154 ], [ %indvars.iv116.ph, %scalar.ph154.preheader ] ; 2 uses
  %.591 = phi ptr [ %i.dr, %scalar.ph154 ], [ %.591.ph, %scalar.ph154.preheader ] ; 2 uses
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %indvars.iv116
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !63
  %i.dp = sext i16 %i.do to i32
  %i.dq = shl nsw i32 %i.dp, 16
  store i32 %i.dq, ptr %.591, align 4, !tbaa !405
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.591, i64 4 ; 2 uses
  %exitcond120.not = icmp eq i64 %indvars.iv.next117, %wide.trip.count119
  br i1 %exitcond120.not, label %._crit_edge, label %scalar.ph154, !llvm.loop !1762

.loopexit.split:                                  ; preds = %._crit_edge, %bb.b, %._crit_edge84
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZN12_GLOBAL__N_111hlineResizeIsNS_12fixedpoint32ELi2ELb0EEEvPT_iPiPT0_S6_iii(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #19 {
bb.a:
  %i.a = icmp sgt i32 %5, 0
  br i1 %i.a, label %.preheader69.lr.ph, label %.preheader68

.preheader69.lr.ph:                               ; preds = %bb.a
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.preheader69.us.preheader, label %.preheader69.preheader

.preheader69.preheader:                           ; preds = %.preheader69.lr.ph
  %i.c = add nsw i32 %5, -1
  %i.d = zext nneg i32 %i.c to i64
  %i.e = shl nuw nsw i64 %i.d, 3
  %i.f = getelementptr i8, ptr %3, i64 %i.e
  %scevgep = getelementptr i8, ptr %i.f, i64 8
  br label %.preheader68

.preheader69.us.preheader:                        ; preds = %.preheader69.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 4 uses
  %i.g = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader69.us

.preheader69.us:                                  ; preds = %.preheader69.us.preheader, %._crit_edge.us
  %.05874.us = phi i32 [ %i.w, %._crit_edge.us ], [ 0, %.preheader69.us.preheader ]
  %.06172.us = phi ptr [ %.lcssa138, %._crit_edge.us ], [ %4, %.preheader69.us.preheader ] ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader69.us
  %i.h = getelementptr i8, ptr %.06172.us, i64 %i.g ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.i = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.06172.us, i64 %i.i ; 2 uses
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %wide.load = load <4 x i16>, ptr %i.j, align 2, !tbaa !63
  %wide.load139 = load <4 x i16>, ptr %i.k, align 2, !tbaa !63
  %i.l = sext <4 x i16> %wide.load to <4 x i32>
  %i.m = sext <4 x i16> %wide.load139 to <4 x i32>
  %i.n = shl nsw <4 x i32> %i.l, splat (i32 16)
  %i.o = shl nsw <4 x i32> %i.m, splat (i32 16)
  %i.p = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %i.n, ptr %next.gep, align 4, !tbaa !405
  store <4 x i32> %i.o, ptr %i.p, align 4, !tbaa !405
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !1767

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader69.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader69.us ], [ %n.vec, %middle.block ]
  %.16270.us.ph = phi ptr [ %.06172.us, %.preheader69.us ], [ %i.h, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.16270.us = phi ptr [ %i.v, %scalar.ph ], [ %.16270.us.ph, %scalar.ph.preheader ] ; 2 uses
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.s = load i16, ptr %i.r, align 2, !tbaa !63
  %i.t = sext i16 %i.s to i32
  %i.u = shl nsw i32 %i.t, 16
  store i32 %i.u, ptr %.16270.us, align 4, !tbaa !405
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.16270.us, i64 4 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !1768

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %.lcssa138 = phi ptr [ %i.h, %middle.block ], [ %i.v, %scalar.ph ] ; 2 uses
  %i.w = add nuw nsw i32 %.05874.us, 1            ; 2 uses
  %exitcond110.not = icmp eq i32 %i.w, %5
  br i1 %exitcond110.not, label %.preheader68.loopexit, label %.preheader69.us, !llvm.loop !1769

.preheader68.loopexit:                            ; preds = %._crit_edge.us
  %i.x = add nsw i32 %5, -1
  %i.y = zext nneg i32 %i.x to i64
  %i.z = shl nuw nsw i64 %i.y, 3
  %i.aa = getelementptr i8, ptr %3, i64 %i.z
  %scevgep109 = getelementptr i8, ptr %i.aa, i64 8
  br label %.preheader68

.preheader68:                                     ; preds = %.preheader69.preheader, %.preheader68.loopexit, %bb.a
  %.061.lcssa = phi ptr [ %4, %bb.a ], [ %.lcssa138, %.preheader68.loopexit ], [ %4, %.preheader69.preheader ] ; 3 uses
  %.059.lcssa = phi ptr [ %3, %bb.a ], [ %scevgep109, %.preheader68.loopexit ], [ %scevgep, %.preheader69.preheader ]
  %.058.lcssa = phi i32 [ 0, %bb.a ], [ %5, %.preheader68.loopexit ], [ %5, %.preheader69.preheader ] ; 3 uses
  %i.ab = icmp slt i32 %.058.lcssa, %6
  br i1 %i.ab, label %.lr.ph86, label %._crit_edge87

.lr.ph86:                                         ; preds = %.preheader68
  %i.ac = icmp sgt i32 %1, 0
  br i1 %i.ac, label %.lr.ph.us.preheader, label %._crit_edge87

.lr.ph.us.preheader:                              ; preds = %.lr.ph86
  %i.ad = zext nneg i32 %1 to i64                 ; 2 uses
  %i.ae = zext nneg i32 %.058.lcssa to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us90
  %indvars.iv116 = phi i64 [ %i.ae, %.lr.ph.us.preheader ], [ %indvars.iv.next117, %._crit_edge.us90 ] ; 2 uses
  %.16084.us = phi ptr [ %.059.lcssa, %.lr.ph.us.preheader ], [ %i.bm, %._crit_edge.us90 ] ; 3 uses
  %.26383.us = phi ptr [ %.061.lcssa, %.lr.ph.us.preheader ], [ %i.bl, %._crit_edge.us90 ]
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv116
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !26
  %i.ah = mul nsw i32 %i.ag, %1
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [2 x i8], ptr %0, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.16084.us, i64 4
  %invariant.gep = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.ad
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %bb.f
  %indvars.iv111 = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next112, %bb.f ] ; 3 uses
  %.381.us = phi ptr [ %.26383.us, %.lr.ph.us ], [ %i.bl, %bb.f ] ; 3 uses
  %i.al = load i32, ptr %.16084.us, align 4, !tbaa !405 ; 2 uses
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %indvars.iv111
  %i.ao = sext i32 %i.al to i64
  %i.ap = load i16, ptr %i.an, align 2, !tbaa !63, !noalias !1779
  %i.aq = sext i16 %i.ap to i64
  %i.ar = mul nsw i64 %i.aq, %i.ao
  %i.as = tail call i64 @llvm.smax.i64(i64 range(i64 -70368744144896, 70368744177665) %i.ar, i64 -2147483648)
  %i.at = tail call i64 @llvm.smin.i64(i64 %i.as, i64 2147483647)
  %i.au = trunc nsw i64 %i.at to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.067.0.us = phi i32 [ %i.au, %bb.c ], [ 0, %bb.b ] ; 3 uses
  store i32 %.sroa.067.0.us, ptr %.381.us, align 4, !tbaa !405
  %i.av = load i32, ptr %i.ak, align 4, !tbaa !405 ; 2 uses
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %gep = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %indvars.iv111
  %i.ax = sext i32 %i.av to i64
  %i.ay = load i16, ptr %gep, align 2, !tbaa !63, !noalias !1780
  %i.az = sext i16 %i.ay to i64
  %i.ba = mul nsw i64 %i.az, %i.ax
  %i.bb = tail call i64 @llvm.smax.i64(i64 range(i64 -70368744144896, 70368744177665) %i.ba, i64 -2147483648)
  %i.bc = tail call i64 @llvm.smin.i64(i64 %i.bb, i64 2147483647)
  %i.bd = trunc nsw i64 %i.bc to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.0.0.us = phi i32 [ %i.bd, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %i.be = add nsw i32 %.sroa.0.0.us, %.sroa.067.0.us ; 4 uses
  %i.bf = xor i32 %i.be, %.sroa.067.0.us
  %i.bg = xor i32 %i.be, %.sroa.0.0.us
  %i.bh = and i32 %i.bf, %i.bg
  %i.bi = and i32 %i.be, -2147483648
  %i.bj = xor i32 %i.bi, -1
  %.not6.i.us = icmp slt i32 %i.bh, 0
  %i.bk = select i1 %.not6.i.us, i32 %i.bj, i32 %i.be
  store i32 %i.bk, ptr %.381.us, align 4, !tbaa !405
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.381.us, i64 4 ; 3 uses
  %exitcond115.not = icmp eq i64 %indvars.iv.next112, %i.ad
  br i1 %exitcond115.not, label %._crit_edge.us90, label %bb.b, !llvm.loop !1774

._crit_edge.us90:                                 ; preds = %bb.f
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.16084.us, i64 8
  %i.bn = trunc nuw i64 %indvars.iv.next117 to i32 ; 2 uses
  %i.bo = icmp sgt i32 %6, %i.bn
  br i1 %i.bo, label %.lr.ph.us, label %._crit_edge87, !llvm.loop !1775

._crit_edge87:                                    ; preds = %._crit_edge.us90, %.lr.ph86, %.preheader68
  %.263.lcssa = phi ptr [ %.061.lcssa, %.preheader68 ], [ %.061.lcssa, %.lr.ph86 ], [ %i.bl, %._crit_edge.us90 ]
  %.1.lcssa = phi i32 [ %.058.lcssa, %.preheader68 ], [ %6, %.lr.ph86 ], [ %i.bn, %._crit_edge.us90 ] ; 2 uses
  %.not = icmp slt i32 %.1.lcssa, %7
  br i1 %.not, label %bb.g, label %.loopexit.split

bb.g:                                             ; preds = %._crit_edge87
  %i.bp = zext nneg i32 %7 to i64
  %i.bq = getelementptr [4 x i8], ptr %2, i64 %i.bp
  %i.br = getelementptr i8, ptr %i.bq, i64 -4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !26
  %i.bt = mul nsw i32 %i.bs, %1
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [2 x i8], ptr %0, i64 %i.bu ; 2 uses
  %i.bw = icmp sgt i32 %1, 0
  br i1 %i.bw, label %.preheader.preheader, label %.loopexit.split

.preheader.preheader:                             ; preds = %bb.g
  %wide.trip.count122 = zext nneg i32 %1 to i64   ; 3 uses
  %min.iters.check142 = icmp ult i32 %1, 8
  %n.vec144 = and i64 %wide.trip.count122, 2147483640 ; 4 uses
  %i.bx = shl nuw nsw i64 %n.vec144, 2
  %cmp.n152 = icmp eq i64 %n.vec144, %wide.trip.count122
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.297 = phi i32 [ %i.ci, %._crit_edge ], [ %.1.lcssa, %.preheader.preheader ]
  %.496 = phi ptr [ %.lcssa, %._crit_edge ], [ %.263.lcssa, %.preheader.preheader ] ; 3 uses
  br i1 %min.iters.check142, label %scalar.ph141.preheader, label %vector.ph143

vector.ph143:                                     ; preds = %.preheader
  %i.by = getelementptr i8, ptr %.496, i64 %i.bx  ; 2 uses
  br label %vector.body145

vector.body145:                                   ; preds = %vector.body145, %vector.ph143
  %index146 = phi i64 [ 0, %vector.ph143 ], [ %index.next150, %vector.body145 ] ; 3 uses
  %i.bz = shl i64 %index146, 2
  %next.gep147 = getelementptr i8, ptr %.496, i64 %i.bz ; 2 uses
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %i.bv, i64 %index146 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %wide.load148.a = load <4 x i16>, ptr %i.ca, align 2, !tbaa !63
  %wide.load149 = load <4 x i16>, ptr %i.cb, align 2, !tbaa !63
  %i.cc = sext <4 x i16> %wide.load148.a to <4 x i32>
  %i.cd = sext <4 x i16> %wide.load149 to <4 x i32>
  %i.ce = shl nsw <4 x i32> %i.cc, splat (i32 16)
  %i.cf = shl nsw <4 x i32> %i.cd, splat (i32 16)
  %i.cg = getelementptr i8, ptr %next.gep147, i64 16
  store <4 x i32> %i.ce, ptr %next.gep147, align 4, !tbaa !405
  store <4 x i32> %i.cf, ptr %i.cg, align 4, !tbaa !405
  %index.next150 = add nuw i64 %index146, 8       ; 2 uses
  %i.ch = icmp eq i64 %index.next150, %n.vec144
  br i1 %i.ch, label %middle.block151, label %vector.body145, !llvm.loop !1776

middle.block151:                                  ; preds = %vector.body145
  br i1 %cmp.n152, label %._crit_edge, label %scalar.ph141.preheader

scalar.ph141.preheader:                           ; preds = %.preheader, %middle.block151
  %indvars.iv119.ph = phi i64 [ 0, %.preheader ], [ %n.vec144, %middle.block151 ]
  %.594.ph = phi ptr [ %.496, %.preheader ], [ %i.by, %middle.block151 ]
  br label %scalar.ph141

._crit_edge:                                      ; preds = %scalar.ph141, %middle.block151
  %.lcssa = phi ptr [ %i.by, %middle.block151 ], [ %i.cn, %scalar.ph141 ]
  %i.ci = add nuw nsw i32 %.297, 1                ; 2 uses
  %exitcond124.not = icmp eq i32 %i.ci, %7
  br i1 %exitcond124.not, label %.loopexit.split, label %.preheader, !llvm.loop !1777

scalar.ph141:                                     ; preds = %scalar.ph141.preheader, %scalar.ph141
  %indvars.iv119 = phi i64 [ %indvars.iv.next120, %scalar.ph141 ], [ %indvars.iv119.ph, %scalar.ph141.preheader ] ; 2 uses
  %.594 = phi ptr [ %i.cn, %scalar.ph141 ], [ %.594.ph, %scalar.ph141.preheader ] ; 2 uses
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.bv, i64 %indvars.iv119
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !63
  %i.cl = sext i16 %i.ck to i32
  %i.cm = shl nsw i32 %i.cl, 16
  store i32 %i.cm, ptr %.594, align 4, !tbaa !405
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.594, i64 4 ; 2 uses
  %exitcond123.not = icmp eq i64 %indvars.iv.next120, %wide.trip.count122
  br i1 %exitcond123.not, label %._crit_edge, label %scalar.ph141, !llvm.loop !1778

.loopexit.split:                                  ; preds = %._crit_edge, %bb.g, %._crit_edge87
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_119interpolationLinearIsE9getCoeffsEiPiPNS_12fixedpoint32E(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #4 align 2 {
bb.a:
  %4 = alloca %"struct.cv::softdouble", align 8   ; 4 uses
  %5 = alloca %"struct.cv::softdouble", align 8   ; 4 uses
  %6 = alloca %"struct.cv::softdouble", align 8   ; 5 uses
  %7 = alloca %"struct.cv::softdouble", align 8   ; 4 uses
  %8 = alloca %"struct.cv::softdouble", align 8   ; 4 uses
  %9 = alloca %"struct.cv::softdouble", align 8   ; 4 uses
  %10 = alloca %"struct.cv::softdouble", align 8  ; 4 uses
  %11 = alloca %"struct.cv::softdouble", align 8  ; 4 uses
  %12 = alloca %"struct.cv::softdouble", align 8  ; 4 uses
  %13 = alloca %"struct.cv::softdouble", align 8  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @_ZN2cv10softdoubleC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  store double 5.000000e-01, ptr %10, align 8, !tbaa !153
  call void @_ZNK2cv10softdoubleplERKS0_(ptr dead_on_unwind nonnull writable sret(%"struct.cv::softdouble") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %10)
  call void @_ZNK2cv10softdoublemlERKS0_(ptr dead_on_unwind nonnull writable sret(%"struct.cv::softdouble") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  store double 5.000000e-01, ptr %11, align 8, !tbaa !153
  call void @_ZNK2cv10softdoublemiERKS0_(ptr dead_on_unwind nonnull writable sret(%"struct.cv::softdouble") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.a = call noundef i32 @_Z7cvFloorRKN2cv10softdoubleE(ptr noundef nonnull align 8 dereferenceable(8) %6) ; 4 uses
  %i.b = icmp sgt i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !209  ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1                     ; 2 uses
  %i.g = icmp samesign ult i32 %i.a, %i.f
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 %i.a, ptr %2, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  call void @_ZN2cv10softdoubleC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef %i.a)
  call void @_ZNK2cv10softdoublemiERKS0_(ptr dead_on_unwind nonnull writable sret(%"struct.cv::softdouble") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %13)
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZN2cv10softdoubleC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 65536)
  call void @_ZNK2cv10softdoublemlERKS0_(ptr dead_on_unwind nonnull writable sret(%"struct.cv::softdouble") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %i.i = call noundef i32 @_Z7cvRoundRKN2cv10softdoubleE(ptr noundef nonnull align 8 dereferenceable(8) %4) ; 3 uses
  store i32 %i.i, ptr %i.h, align 4, !tbaa !405
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  %i.j = sub nsw i32 65536, %i.i                  ; 3 uses
  %i.k = and i32 %i.j, %i.i
  %i.l = and i32 %i.j, -2147483648
  %i.m = xor i32 %i.l, -1
  %.not5.i = icmp slt i32 %i.k, 0
  %i.n = select i1 %.not5.i, i32 %i.m, i32 %i.j
  store i32 %i.n, ptr %3, align 4, !tbaa !405
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  store i32 %i.f, ptr %2, align 4, !tbaa !26
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !26
  %.sroa.speculated16 = call i32 @llvm.smin.i32(i32 %1, i32 %i.p)
  store i32 %.sroa.speculated16, ptr %i.o, align 8, !tbaa !211
  br label %bb.g

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.r = add nsw i32 %1, 1
  %i.s = load i32, ptr %i.q, align 4, !tbaa !26
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.s, i32 %i.r)
  store i32 %.sroa.speculated, ptr %i.q, align 4, !tbaa !210
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_122resize_bitExactInvokerIsNS_12fixedpoint32ELi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %0) #22
end_hunk_2
begin_hunk_3_@_ZN12_GLOBAL__N_113hlineResizeCnIiNS_12fixedpoint64ELi2ELb1ELi4EEEvPT_iPiPT0_S6_iii:bb.a
  store <2 x i64> %i.iw, ptr %i.jj, align 8, !tbaa !412
  %i.jl = getelementptr inbounds nuw i8, ptr %.263168.i, i64 144
  store <2 x i64> %i.is, ptr %i.jk, align 8, !tbaa !412
  %i.jm = getelementptr inbounds nuw i8, ptr %.263168.i, i64 160
  store <2 x i64> %i.iw, ptr %i.jl, align 8, !tbaa !412
  %i.jn = getelementptr inbounds nuw i8, ptr %.263168.i, i64 176
  store <2 x i64> %i.is, ptr %i.jm, align 8, !tbaa !412
  %i.jo = getelementptr inbounds nuw i8, ptr %.263168.i, i64 192
  store <2 x i64> %i.iw, ptr %i.jn, align 8, !tbaa !412
  %i.jp = getelementptr inbounds nuw i8, ptr %.263168.i, i64 208
  store <2 x i64> %i.is, ptr %i.jo, align 8, !tbaa !412
  %i.jq = getelementptr inbounds nuw i8, ptr %.263168.i, i64 224
  store <2 x i64> %i.iw, ptr %i.jp, align 8, !tbaa !412
  %i.jr = getelementptr inbounds nuw i8, ptr %.263168.i, i64 240
  store <2 x i64> %i.is, ptr %i.jq, align 8, !tbaa !412
  %i.js = getelementptr inbounds nuw i8, ptr %.263168.i, i64 256
  store <2 x i64> %i.iw, ptr %i.jr, align 8, !tbaa !412
  %i.jt = add nuw nsw i32 %.2169.i, 8             ; 2 uses
  %exitcond176.not.i.7 = icmp eq i32 %i.jt, %7
  br i1 %exitcond176.not.i.7, label %_ZN12_GLOBAL__N_15hlineIiNS_12fixedpoint64ELi2ELb1ELi4EE8ResizeCnEPiiS3_PS1_S4_iii.exit, label %.new, !llvm.loop !1921

_ZN12_GLOBAL__N_15hlineIiNS_12fixedpoint64ELi2ELb1ELi4EE8ResizeCnEPiiS3_PS1_S4_iii.exit: ; preds = %.prol.loopexit, %.new, %._crit_edge.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZN12_GLOBAL__N_113hlineResizeCnIiNS_12fixedpoint64ELi2ELb0ELi4EEEvPT_iPiPT0_S6_iii(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #19 {
bb.a:
  tail call void @_ZN12_GLOBAL__N_111hlineResizeIiNS_12fixedpoint64ELi2ELb0EEEvPT_iPiPT0_S6_iii(ptr noundef readonly %0, i32 noundef %1, ptr noundef readonly %2, ptr noundef readonly %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZN12_GLOBAL__N_111hlineResizeIiNS_12fixedpoint64ELi2ELb1EEEvPT_iPiPT0_S6_iii(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #19 {
bb.a:
  %i.a = icmp sgt i32 %5, 0
  br i1 %i.a, label %.preheader79.lr.ph, label %.preheader78

.preheader79.lr.ph:                               ; preds = %bb.a
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.preheader79.us.preheader, label %.preheader79.preheader

.preheader79.preheader:                           ; preds = %.preheader79.lr.ph
  %i.c = add nsw i32 %5, -1
  %i.d = zext nneg i32 %i.c to i64
  %i.e = shl nuw nsw i64 %i.d, 4
  %i.f = getelementptr i8, ptr %3, i64 %i.e
  %scevgep = getelementptr i8, ptr %i.f, i64 16
  br label %.preheader78

.preheader79.us.preheader:                        ; preds = %.preheader79.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 4
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 4 uses
  %i.g = shl nuw nsw i64 %n.vec, 3
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader79.us

.preheader79.us:                                  ; preds = %.preheader79.us.preheader, %._crit_edge.us
  %.05584.us = phi i32 [ %i.w, %._crit_edge.us ], [ 0, %.preheader79.us.preheader ]
  %.05882.us = phi ptr [ %.lcssa148, %._crit_edge.us ], [ %4, %.preheader79.us.preheader ] ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader79.us
  %i.h = getelementptr i8, ptr %.05882.us, i64 %i.g ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.i = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.05882.us, i64 %i.i ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %wide.load = load <2 x i32>, ptr %i.j, align 4, !tbaa !26
  %wide.load149 = load <2 x i32>, ptr %i.k, align 4, !tbaa !26
  %i.l = sext <2 x i32> %wide.load to <2 x i64>
  %i.m = sext <2 x i32> %wide.load149 to <2 x i64>
  %i.n = shl nsw <2 x i64> %i.l, splat (i64 32)
  %i.o = shl nsw <2 x i64> %i.m, splat (i64 32)
  %i.p = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %i.n, ptr %next.gep, align 8, !tbaa !412
  store <2 x i64> %i.o, ptr %i.p, align 8, !tbaa !412
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !1938

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader79.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader79.us ], [ %n.vec, %middle.block ]
  %.15980.us.ph = phi ptr [ %.05882.us, %.preheader79.us ], [ %i.h, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.15980.us = phi ptr [ %i.v, %scalar.ph ], [ %.15980.us.ph, %scalar.ph.preheader ] ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.s = load i32, ptr %i.r, align 4, !tbaa !26
  %i.t = sext i32 %i.s to i64
  %i.u = shl nsw i64 %i.t, 32
  store i64 %i.u, ptr %.15980.us, align 8, !tbaa !412
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.15980.us, i64 8 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !1939

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %.lcssa148 = phi ptr [ %i.h, %middle.block ], [ %i.v, %scalar.ph ] ; 2 uses
  %i.w = add nuw nsw i32 %.05584.us, 1            ; 2 uses
  %exitcond120.not = icmp eq i32 %i.w, %5
  br i1 %exitcond120.not, label %.preheader78.loopexit, label %.preheader79.us, !llvm.loop !1940

.preheader78.loopexit:                            ; preds = %._crit_edge.us
  %i.x = add nsw i32 %5, -1
  %i.y = zext nneg i32 %i.x to i64
  %i.z = shl nuw nsw i64 %i.y, 4
  %i.aa = getelementptr i8, ptr %3, i64 %i.z
  %scevgep119 = getelementptr i8, ptr %i.aa, i64 16
  br label %.preheader78

.preheader78:                                     ; preds = %.preheader79.preheader, %.preheader78.loopexit, %bb.a
  %.058.lcssa = phi ptr [ %4, %bb.a ], [ %.lcssa148, %.preheader78.loopexit ], [ %4, %.preheader79.preheader ] ; 3 uses
  %.056.lcssa = phi ptr [ %3, %bb.a ], [ %scevgep119, %.preheader78.loopexit ], [ %scevgep, %.preheader79.preheader ]
  %.055.lcssa = phi i32 [ 0, %bb.a ], [ %5, %.preheader78.loopexit ], [ %5, %.preheader79.preheader ] ; 3 uses
  %i.ab = icmp slt i32 %.055.lcssa, %6
  br i1 %i.ab, label %.lr.ph96, label %._crit_edge97

.lr.ph96:                                         ; preds = %.preheader78
  %i.ac = icmp sgt i32 %1, 0
  br i1 %i.ac, label %.lr.ph.us.preheader, label %._crit_edge97

.lr.ph.us.preheader:                              ; preds = %.lr.ph96
  %i.ad = zext nneg i32 %1 to i64                 ; 2 uses
  %i.ae = zext nneg i32 %.055.lcssa to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us100
  %indvars.iv126 = phi i64 [ %i.ae, %.lr.ph.us.preheader ], [ %indvars.iv.next127, %._crit_edge.us100 ] ; 2 uses
  %.15794.us = phi ptr [ %.056.lcssa, %.lr.ph.us.preheader ], [ %i.cg, %._crit_edge.us100 ] ; 3 uses
  %.26093.us = phi ptr [ %.058.lcssa, %.lr.ph.us.preheader ], [ %i.cf, %._crit_edge.us100 ]
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv126
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !26
  %i.ah = mul nsw i32 %i.ag, %1
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.15794.us, i64 8
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ad
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %_ZNK12_GLOBAL__N_112fixedpoint64mlERKS0_.exit68.us
  %indvars.iv121 = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next122, %_ZNK12_GLOBAL__N_112fixedpoint64mlERKS0_.exit68.us ] ; 3 uses
  %.391.us = phi ptr [ %.26093.us, %.lr.ph.us ], [ %i.cf, %_ZNK12_GLOBAL__N_112fixedpoint64mlERKS0_.exit68.us ] ; 3 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv121
  %i.am = load i32, ptr %i.al, align 4, !tbaa !26, !noalias !1954
  %i.an = sext i32 %i.am to i64
  %i.ao = shl nsw i64 %i.an, 32                   ; 2 uses
  %i.ap = load i64, ptr %.15794.us, align 8, !tbaa !412, !noalias !1955 ; 2 uses
  %i.aq = tail call i64 @llvm.abs.i64(i64 %i.ap, i1 true) ; 2 uses
  %i.ar = tail call i64 @llvm.abs.i64(i64 %i.ao, i1 true)
  %.lobit34.i.us = xor i64 %i.ao, %i.ap
  %.not.i.us = icmp sgt i64 %.lobit34.i.us, -1    ; 2 uses
  %i.as = and i64 %i.aq, 4294967295
  %i.at = lshr i64 %i.aq, 32
  %i.au = lshr exact i64 %i.ar, 32                ; 2 uses
  %i.av = mul nuw nsw i64 %i.au, %i.as            ; 2 uses
  %i.aw = mul nuw nsw i64 %i.au, %i.at            ; 2 uses
  %i.ax = and i64 %i.av, 4294967295               ; 2 uses
  %i.ay = and i64 %i.aw, 4294967295
  %i.az = lshr i64 %i.av, 32
  %i.ba = add nuw nsw i64 %i.ay, %i.az            ; 3 uses
  %i.bb = icmp samesign ugt i64 %i.aw, 2147483647
  %i.bc = icmp samesign ugt i64 %i.ba, 2147483647
  %or.cond.i.us = select i1 %i.bb, i1 true, i1 %i.bc
  br i1 %or.cond.i.us, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %.not.i.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.neg.i.us = mul nsw i64 %i.ba, -4294967296
  %.neg35.i.us = sub nsw i64 %.neg.i.us, %i.ax
  br label %_ZNK12_GLOBAL__N_112fixedpoint64mlERKS0_.exit.us

bb.e:                                             ; preds = %bb.c
  %i.bd = shl nuw nsw i64 %i.ba, 32
  %i.be = or disjoint i64 %i.bd, %i.ax
  br label %_ZNK12_GLOBAL__N_112fixedpoint64mlERKS0_.exit.us

bb.f:                                             ; preds = %bb.b
  %i.bf = select i1 %.not.i.us, i64 9223372036854775807, i64 -9223372036854775808
  br label %_ZNK12_GLOBAL__N_112fixedpoint64mlERKS0_.exit.us

_ZNK12_GLOBAL__N_112fixedpoint64mlERKS0_.exit.us: ; preds = %bb.f, %bb.e, %bb.d
  %.sroa.070.0.us = phi i64 [ %i.bf, %bb.f ], [ %i.be, %bb.e ], [ %.neg35.i.us, %bb.d ] ; 3 uses
  store i64 %.sroa.070.0.us, ptr %.391.us, align 8, !tbaa !412
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv121
  %i.bg = load i32, ptr %gep, align 4, !tbaa !26, !noalias !1956
  %i.bh = sext i32 %i.bg to i64
  %i.bi = shl nsw i64 %i.bh, 32                   ; 2 uses
  %8 = load i64, ptr %i.ak, align 8, !tbaa !412, !noalias !1957 ; 2 uses
  %9 = tail call i64 @llvm.abs.i64(i64 %8, i1 true) ; 2 uses
  %i.bj = tail call i64 @llvm.abs.i64(i64 %i.bi, i1 true)
  %.lobit34.i63.us = xor i64 %i.bi, %8
  %.not.i64.us = icmp sgt i64 %.lobit34.i63.us, -1 ; 2 uses
  %i.bk = and i64 %9, 4294967295
  %10 = lshr i64 %9, 32
  %i.bl = lshr exact i64 %i.bj, 32                ; 2 uses
  %i.bm = mul nuw nsw i64 %i.bl, %i.bk            ; 2 uses
  %i.bn = mul nuw nsw i64 %i.bl, %10              ; 2 uses
  %i.bo = and i64 %i.bm, 4294967295               ; 2 uses
  %i.bp = and i64 %i.bn, 4294967295
  %i.bq = lshr i64 %i.bm, 32
  %i.br = add nuw nsw i64 %i.bp, %i.bq            ; 3 uses
  %i.bs = icmp samesign ugt i64 %i.bn, 2147483647
  %i.bt = icmp samesign ugt i64 %i.br, 2147483647
  %or.cond.i65.us = select i1 %i.bs, i1 true, i1 %i.bt
  br i1 %or.cond.i65.us, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_ZNK12_GLOBAL__N_112fixedpoint64mlERKS0_.exit.us
  br i1 %.not.i64.us, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.neg.i66.us = mul nsw i64 %i.br, -4294967296
  %.neg35.i67.us = sub nsw i64 %.neg.i66.us, %i.bo
  br label %_ZNK12_GLOBAL__N_112fixedpoint64mlERKS0_.exit68.us

bb.i:                                             ; preds = %bb.g
  %i.bu = shl nuw nsw i64 %i.br, 32
  %i.bv = or disjoint i64 %i.bu, %i.bo
  br label %_ZNK12_GLOBAL__N_112fixedpoint64mlERKS0_.exit68.us

bb.j:                                             ; preds = %_ZNK12_GLOBAL__N_112fixedpoint64mlERKS0_.exit.us
  %i.bw = select i1 %.not.i64.us, i64 9223372036854775807, i64 -9223372036854775808
  br label %_ZNK12_GLOBAL__N_112fixedpoint64mlERKS0_.exit68.us

_ZNK12_GLOBAL__N_112fixedpoint64mlERKS0_.exit68.us: ; preds = %bb.j, %bb.i, %bb.h
  %.sroa.0.0.us = phi i64 [ %i.bw, %bb.j ], [ %i.bv, %bb.i ], [ %.neg35.i67.us, %bb.h ] ; 2 uses
  %i.bx = add nsw i64 %.sroa.0.0.us, %.sroa.070.0.us ; 4 uses
  %i.by = xor i64 %i.bx, %.sroa.070.0.us
  %i.bz = xor i64 %i.bx, %.sroa.0.0.us
  %i.ca = and i64 %i.by, %i.bz
  %i.cb = icmp slt i64 %i.ca, 0
  %i.cc = and i64 %i.bx, -9223372036854775808
  %i.cd = xor i64 %i.cc, -1
  %i.ce = select i1 %i.cb, i64 %i.cd, i64 %i.bx
  store i64 %i.ce, ptr %.391.us, align 8, !tbaa !412
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.391.us, i64 8 ; 3 uses
  %exitcond125.not = icmp eq i64 %indvars.iv.next122, %i.ad
  br i1 %exitcond125.not, label %._crit_edge.us100, label %bb.b, !llvm.loop !1949

._crit_edge.us100:                                ; preds = %_ZNK12_GLOBAL__N_112fixedpoint64mlERKS0_.exit68.us
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.15794.us, i64 16
  %i.ch = trunc nuw i64 %indvars.iv.next127 to i32 ; 2 uses
  %i.ci = icmp sgt i32 %6, %i.ch
  br i1 %i.ci, label %.lr.ph.us, label %._crit_edge97, !llvm.loop !1950

._crit_edge97:                                    ; preds = %._crit_edge.us100, %.lr.ph96, %.preheader78
  %.260.lcssa = phi ptr [ %.058.lcssa, %.preheader78 ], [ %.058.lcssa, %.lr.ph96 ], [ %i.cf, %._crit_edge.us100 ]
  %.1.lcssa = phi i32 [ %.055.lcssa, %.preheader78 ], [ %6, %.lr.ph96 ], [ %i.ch, %._crit_edge.us100 ] ; 2 uses
  %.not = icmp slt i32 %.1.lcssa, %7
  br i1 %.not, label %bb.k, label %.loopexit.split

bb.k:                                             ; preds = %._crit_edge97
  %i.cj = zext nneg i32 %7 to i64
  %i.ck = getelementptr [4 x i8], ptr %2, i64 %i.cj
  %i.cl = getelementptr i8, ptr %i.ck, i64 -4
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !26
  %i.cn = mul nsw i32 %i.cm, %1
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %0, i64 %i.co ; 2 uses
  %i.cq = icmp sgt i32 %1, 0
  br i1 %i.cq, label %.preheader.preheader, label %.loopexit.split

.preheader.preheader:                             ; preds = %bb.k
  %wide.trip.count132 = zext nneg i32 %1 to i64   ; 3 uses
  %min.iters.check152 = icmp ult i32 %1, 4
  %n.vec154 = and i64 %wide.trip.count132, 2147483644 ; 4 uses
  %i.cr = shl nuw nsw i64 %n.vec154, 3
  %cmp.n162 = icmp eq i64 %n.vec154, %wide.trip.count132
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.2107 = phi i32 [ %i.dc, %._crit_edge ], [ %.1.lcssa, %.preheader.preheader ]
  %.4106 = phi ptr [ %.lcssa, %._crit_edge ], [ %.260.lcssa, %.preheader.preheader ] ; 3 uses
  br i1 %min.iters.check152, label %scalar.ph151.preheader, label %vector.ph153

vector.ph153:                                     ; preds = %.preheader
  %i.cs = getelementptr i8, ptr %.4106, i64 %i.cr ; 2 uses
  br label %vector.body155

vector.body155:                                   ; preds = %vector.body155, %vector.ph153
  %index156 = phi i64 [ 0, %vector.ph153 ], [ %index.next160, %vector.body155 ] ; 3 uses
  %i.ct = shl i64 %index156, 3
  %next.gep157 = getelementptr i8, ptr %.4106, i64 %i.ct ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %index156 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %wide.load158.a = load <2 x i32>, ptr %i.cu, align 4, !tbaa !26
  %wide.load159 = load <2 x i32>, ptr %i.cv, align 4, !tbaa !26
  %i.cw = sext <2 x i32> %wide.load158.a to <2 x i64>
  %i.cx = sext <2 x i32> %wide.load159 to <2 x i64>
  %i.cy = shl nsw <2 x i64> %i.cw, splat (i64 32)
  %i.cz = shl nsw <2 x i64> %i.cx, splat (i64 32)
  %i.da = getelementptr i8, ptr %next.gep157, i64 16
  store <2 x i64> %i.cy, ptr %next.gep157, align 8, !tbaa !412
  store <2 x i64> %i.cz, ptr %i.da, align 8, !tbaa !412
  %index.next160 = add nuw i64 %index156, 4       ; 2 uses
  %i.db = icmp eq i64 %index.next160, %n.vec154
  br i1 %i.db, label %middle.block161, label %vector.body155, !llvm.loop !1951

middle.block161:                                  ; preds = %vector.body155
  br i1 %cmp.n162, label %._crit_edge, label %scalar.ph151.preheader

scalar.ph151.preheader:                           ; preds = %.preheader, %middle.block161
  %indvars.iv129.ph = phi i64 [ 0, %.preheader ], [ %n.vec154, %middle.block161 ]
  %.5104.ph = phi ptr [ %.4106, %.preheader ], [ %i.cs, %middle.block161 ]
  br label %scalar.ph151

._crit_edge:                                      ; preds = %scalar.ph151, %middle.block161
  %.lcssa = phi ptr [ %i.cs, %middle.block161 ], [ %i.dh, %scalar.ph151 ]
  %i.dc = add nuw nsw i32 %.2107, 1               ; 2 uses
  %exitcond134.not = icmp eq i32 %i.dc, %7
  br i1 %exitcond134.not, label %.loopexit.split, label %.preheader, !llvm.loop !1952

scalar.ph151:                                     ; preds = %scalar.ph151.preheader, %scalar.ph151
  %indvars.iv129 = phi i64 [ %indvars.iv.next130, %scalar.ph151 ], [ %indvars.iv129.ph, %scalar.ph151.preheader ] ; 2 uses
  %.5104 = phi ptr [ %i.dh, %scalar.ph151 ], [ %.5104.ph, %scalar.ph151.preheader ] ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %indvars.iv129
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !26
  %i.df = sext i32 %i.de to i64
  %i.dg = shl nsw i64 %i.df, 32
  store i64 %i.dg, ptr %.5104, align 8, !tbaa !412
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.5104, i64 8 ; 2 uses
  %exitcond133.not = icmp eq i64 %indvars.iv.next130, %wide.trip.count132
  br i1 %exitcond133.not, label %._crit_edge, label %scalar.ph151, !llvm.loop !1953

.loopexit.split:                                  ; preds = %._crit_edge, %bb.k, %._crit_edge97
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZN12_GLOBAL__N_111hlineResizeIiNS_12fixedpoint64ELi2ELb0EEEvPT_iPiPT0_S6_iii(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #19 {
bb.a:
  %i.a = icmp sgt i32 %5, 0
  br i1 %i.a, label %.preheader82.lr.ph, label %.preheader81

.preheader82.lr.ph:                               ; preds = %bb.a
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.preheader82.us.preheader, label %.preheader82.preheader

.preheader82.preheader:                           ; preds = %.preheader82.lr.ph
  %i.c = add nsw i32 %5, -1
  %i.d = zext nneg i32 %i.c to i64
  %i.e = shl nuw nsw i64 %i.d, 4
  %i.f = getelementptr i8, ptr %3, i64 %i.e
  %scevgep = getelementptr i8, ptr %i.f, i64 16
  br label %.preheader81

.preheader82.us.preheader:                        ; preds = %.preheader82.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 4
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 4 uses
  %i.g = shl nuw nsw i64 %n.vec, 3
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader82.us

.preheader82.us:                                  ; preds = %.preheader82.us.preheader, %._crit_edge.us
  %.05887.us = phi i32 [ %i.w, %._crit_edge.us ], [ 0, %.preheader82.us.preheader ]
  %.06185.us = phi ptr [ %.lcssa153, %._crit_edge.us ], [ %4, %.preheader82.us.preheader ] ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader82.us
  %i.h = getelementptr i8, ptr %.06185.us, i64 %i.g ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.i = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.06185.us, i64 %i.i ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %wide.load = load <2 x i32>, ptr %i.j, align 4, !tbaa !26
  %wide.load154 = load <2 x i32>, ptr %i.k, align 4, !tbaa !26
  %i.l = sext <2 x i32> %wide.load to <2 x i64>
  %i.m = sext <2 x i32> %wide.load154 to <2 x i64>
  %i.n = shl nsw <2 x i64> %i.l, splat (i64 32)
  %i.o = shl nsw <2 x i64> %i.m, splat (i64 32)
  %i.p = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %i.n, ptr %next.gep, align 8, !tbaa !412
  store <2 x i64> %i.o, ptr %i.p, align 8, !tbaa !412
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !1958

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader82.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader82.us ], [ %n.vec, %middle.block ]
  %.16283.us.ph = phi ptr [ %.06185.us, %.preheader82.us ], [ %i.h, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.16283.us = phi ptr [ %i.v, %scalar.ph ], [ %.16283.us.ph, %scalar.ph.preheader ] ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.s = load i32, ptr %i.r, align 4, !tbaa !26
  %i.t = sext i32 %i.s to i64
  %i.u = shl nsw i64 %i.t, 32
  store i64 %i.u, ptr %.16283.us, align 8, !tbaa !412
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.16283.us, i64 8 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !1959

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %.lcssa153 = phi ptr [ %i.h, %middle.block ], [ %i.v, %scalar.ph ] ; 2 uses
  %i.w = add nuw nsw i32 %.05887.us, 1            ; 2 uses
  %exitcond123.not = icmp eq i32 %i.w, %5
  br i1 %exitcond123.not, label %.preheader81.loopexit, label %.preheader82.us, !llvm.loop !1960

.preheader81.loopexit:                            ; preds = %._crit_edge.us
  %i.x = add nsw i32 %5, -1
  %i.y = zext nneg i32 %i.x to i64
  %i.z = shl nuw nsw i64 %i.y, 4
  %i.aa = getelementptr i8, ptr %3, i64 %i.z
  %scevgep122 = getelementptr i8, ptr %i.aa, i64 16
  br label %.preheader81

.preheader81:                                     ; preds = %.preheader82.preheader, %.preheader81.loopexit, %bb.a
  %.061.lcssa = phi ptr [ %4, %bb.a ], [ %.lcssa153, %.preheader81.loopexit ], [ %4, %.preheader82.preheader ] ; 3 uses
  %.059.lcssa = phi ptr [ %3, %bb.a ], [ %scevgep122, %.preheader81.loopexit ], [ %scevgep, %.preheader82.preheader ]
  %.058.lcssa = phi i32 [ 0, %bb.a ], [ %5, %.preheader81.loopexit ], [ %5, %.preheader82.preheader ] ; 3 uses
  %i.ab = icmp slt i32 %.058.lcssa, %6
  br i1 %i.ab, label %.lr.ph99, label %._crit_edge100

.lr.ph99:                                         ; preds = %.preheader81
  %i.ac = icmp sgt i32 %1, 0
  br i1 %i.ac, label %.lr.ph.us.preheader, label %._crit_edge100

.lr.ph.us.preheader:                              ; preds = %.lr.ph99
  %i.ad = zext nneg i32 %1 to i64                 ; 2 uses
  %i.ae = zext nneg i32 %.058.lcssa to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us103
  %indvars.iv129 = phi i64 [ %i.ae, %.lr.ph.us.preheader ], [ %indvars.iv.next130, %._crit_edge.us103 ] ; 2 uses
  %.16097.us = phi ptr [ %.059.lcssa, %.lr.ph.us.preheader ], [ %i.cl, %._crit_edge.us103 ] ; 3 uses
  %.26396.us = phi ptr [ %.061.lcssa, %.lr.ph.us.preheader ], [ %i.ck, %._crit_edge.us103 ]
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv129
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !26
  %i.ah = mul nsw i32 %i.ag, %1
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.16097.us, i64 8
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ad
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %_ZNK12_GLOBAL__N_112fixedpoint64mlERKS0_.exit71.us
  %indvars.iv124 = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next125, %_ZNK12_GLOBAL__N_112fixedpoint64mlERKS0_.exit71.us ] ; 3 uses
  %.394.us = phi ptr [ %.26396.us, %.lr.ph.us ], [ %i.ck, %_ZNK12_GLOBAL__N_112fixedpoint64mlERKS0_.exit71.us ] ; 3 uses
  %i.al = load i64, ptr %.16097.us, align 8, !tbaa !412 ; 3 uses
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %_ZNK12_GLOBAL__N_112fixedpoint64mlERKS0_.exit.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv124
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !26, !noalias !1970
  %i.ap = sext i32 %i.ao to i64
  %i.aq = shl nsw i64 %i.ap, 32                   ; 2 uses
  %i.ar = tail call i64 @llvm.abs.i64(i64 %i.al, i1 true) ; 2 uses
  %i.as = tail call i64 @llvm.abs.i64(i64 %i.aq, i1 true)
  %.lobit34.i.us = xor i64 %i.aq, %i.al
  %.not.i.us = icmp sgt i64 %.lobit34.i.us, -1    ; 2 uses
  %i.at = and i64 %i.ar, 4294967295
  %i.au = lshr i64 %i.ar, 32
  %i.av = lshr exact i64 %i.as, 32                ; 2 uses
  %i.aw = mul nuw nsw i64 %i.av, %i.at            ; 2 uses
  %i.ax = mul nuw nsw i64 %i.av, %i.au            ; 2 uses
  %i.ay = and i64 %i.aw, 4294967295               ; 2 uses
  %i.az = and i64 %i.ax, 4294967295
  %i.ba = lshr i64 %i.aw, 32
  %i.bb = add nuw nsw i64 %i.az, %i.ba            ; 3 uses
  %i.bc = icmp samesign ugt i64 %i.ax, 2147483647
  %i.bd = icmp samesign ugt i64 %i.bb, 2147483647
  %or.cond.i.us = select i1 %i.bc, i1 true, i1 %i.bd
  br i1 %or.cond.i.us, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.not.i.us, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.neg.i.us = mul nsw i64 %i.bb, -4294967296
  %.neg35.i.us = sub nsw i64 %.neg.i.us, %i.ay
  br label %_ZNK12_GLOBAL__N_112fixedpoint64mlERKS0_.exit.us

bb.f:                                             ; preds = %bb.d
  %i.be = shl nuw nsw i64 %i.bb, 32
  %i.bf = or disjoint i64 %i.be, %i.ay
  br label %_ZNK12_GLOBAL__N_112fixedpoint64mlERKS0_.exit.us

bb.g:                                             ; preds = %bb.c
  %i.bg = select i1 %.not.i.us, i64 9223372036854775807, i64 -9223372036854775808
  br label %_ZNK12_GLOBAL__N_112fixedpoint64mlERKS0_.exit.us

_ZNK12_GLOBAL__N_112fixedpoint64mlERKS0_.exit.us: ; preds = %bb.g, %bb.f, %bb.e, %bb.b
  %.sroa.073.0.us = phi i64 [ %.neg35.i.us, %bb.e ], [ %i.bg, %bb.g ], [ %i.bf, %bb.f ], [ 0, %bb.b ] ; 3 uses
  store i64 %.sroa.073.0.us, ptr %.394.us, align 8, !tbaa !412
  %i.bh = load i64, ptr %i.ak, align 8, !tbaa !412 ; 3 uses
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %_ZNK12_GLOBAL__N_112fixedpoint64mlERKS0_.exit71.us, label %bb.h

bb.h:                                             ; preds = %_ZNK12_GLOBAL__N_112fixedpoint64mlERKS0_.exit.us
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv124
  %i.bj = load i32, ptr %gep, align 4, !tbaa !26, !noalias !1971
  %i.bk = sext i32 %i.bj to i64
  %i.bl = shl nsw i64 %i.bk, 32                   ; 2 uses
  %i.bm = tail call i64 @llvm.abs.i64(i64 %i.bh, i1 true) ; 2 uses
  %i.bn = tail call i64 @llvm.abs.i64(i64 %i.bl, i1 true)
  %.lobit34.i66.us = xor i64 %i.bl, %i.bh
  %.not.i67.us = icmp sgt i64 %.lobit34.i66.us, -1 ; 2 uses
  %i.bo = and i64 %i.bm, 4294967295
  %i.bp = lshr i64 %i.bm, 32
  %i.bq = lshr exact i64 %i.bn, 32                ; 2 uses
  %i.br = mul nuw nsw i64 %i.bq, %i.bo            ; 2 uses
  %i.bs = mul nuw nsw i64 %i.bq, %i.bp            ; 2 uses
  %i.bt = and i64 %i.br, 4294967295               ; 2 uses
  %i.bu = and i64 %i.bs, 4294967295
  %i.bv = lshr i64 %i.br, 32
  %i.bw = add nuw nsw i64 %i.bu, %i.bv            ; 3 uses
  %i.bx = icmp samesign ugt i64 %i.bs, 2147483647
  %i.by = icmp samesign ugt i64 %i.bw, 2147483647
  %or.cond.i68.us = select i1 %i.bx, i1 true, i1 %i.by
  br i1 %or.cond.i68.us, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %.not.i67.us, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.neg.i69.us = mul nsw i64 %i.bw, -4294967296
  %.neg35.i70.us = sub nsw i64 %.neg.i69.us, %i.bt
  br label %_ZNK12_GLOBAL__N_112fixedpoint64mlERKS0_.exit71.us

bb.k:                                             ; preds = %bb.i
  %i.bz = shl nuw nsw i64 %i.bw, 32
  %i.ca = or disjoint i64 %i.bz, %i.bt
  br label %_ZNK12_GLOBAL__N_112fixedpoint64mlERKS0_.exit71.us

bb.l:                                             ; preds = %bb.h
  %i.cb = select i1 %.not.i67.us, i64 9223372036854775807, i64 -9223372036854775808
  br label %_ZNK12_GLOBAL__N_112fixedpoint64mlERKS0_.exit71.us

_ZNK12_GLOBAL__N_112fixedpoint64mlERKS0_.exit71.us: ; preds = %bb.l, %bb.k, %bb.j, %_ZNK12_GLOBAL__N_112fixedpoint64mlERKS0_.exit.us
  %.sroa.0.0.us = phi i64 [ %.neg35.i70.us, %bb.j ], [ %i.cb, %bb.l ], [ %i.ca, %bb.k ], [ 0, %_ZNK12_GLOBAL__N_112fixedpoint64mlERKS0_.exit.us ] ; 2 uses
  %i.cc = add nsw i64 %.sroa.0.0.us, %.sroa.073.0.us ; 4 uses
  %i.cd = xor i64 %i.cc, %.sroa.073.0.us
  %i.ce = xor i64 %i.cc, %.sroa.0.0.us
  %i.cf = and i64 %i.cd, %i.ce
  %i.cg = icmp slt i64 %i.cf, 0
  %i.ch = and i64 %i.cc, -9223372036854775808
  %i.ci = xor i64 %i.ch, -1
  %i.cj = select i1 %i.cg, i64 %i.ci, i64 %i.cc
  store i64 %i.cj, ptr %.394.us, align 8, !tbaa !412
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.394.us, i64 8 ; 3 uses
  %exitcond128.not = icmp eq i64 %indvars.iv.next125, %i.ad
  br i1 %exitcond128.not, label %._crit_edge.us103, label %bb.b, !llvm.loop !1965

._crit_edge.us103:                                ; preds = %_ZNK12_GLOBAL__N_112fixedpoint64mlERKS0_.exit71.us
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.16097.us, i64 16
  %i.cm = trunc nuw i64 %indvars.iv.next130 to i32 ; 2 uses
  %i.cn = icmp sgt i32 %6, %i.cm
  br i1 %i.cn, label %.lr.ph.us, label %._crit_edge100, !llvm.loop !1966

._crit_edge100:                                   ; preds = %._crit_edge.us103, %.lr.ph99, %.preheader81
  %.263.lcssa = phi ptr [ %.061.lcssa, %.preheader81 ], [ %.061.lcssa, %.lr.ph99 ], [ %i.ck, %._crit_edge.us103 ]
  %.1.lcssa = phi i32 [ %.058.lcssa, %.preheader81 ], [ %6, %.lr.ph99 ], [ %i.cm, %._crit_edge.us103 ] ; 2 uses
  %.not = icmp slt i32 %.1.lcssa, %7
  br i1 %.not, label %bb.m, label %.loopexit.split

bb.m:                                             ; preds = %._crit_edge100
  %i.co = zext nneg i32 %7 to i64
  %i.cp = getelementptr [4 x i8], ptr %2, i64 %i.co
  %i.cq = getelementptr i8, ptr %i.cp, i64 -4
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !26
  %i.cs = mul nsw i32 %i.cr, %1
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ct ; 2 uses
  %i.cv = icmp sgt i32 %1, 0
  br i1 %i.cv, label %.preheader.preheader, label %.loopexit.split

.preheader.preheader:                             ; preds = %bb.m
  %wide.trip.count135 = zext nneg i32 %1 to i64   ; 3 uses
  %min.iters.check157 = icmp ult i32 %1, 4
  %n.vec159 = and i64 %wide.trip.count135, 2147483644 ; 4 uses
  %i.cw = shl nuw nsw i64 %n.vec159, 3
  %cmp.n167 = icmp eq i64 %n.vec159, %wide.trip.count135
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.2110 = phi i32 [ %i.dh, %._crit_edge ], [ %.1.lcssa, %.preheader.preheader ]
  %.4109 = phi ptr [ %.lcssa, %._crit_edge ], [ %.263.lcssa, %.preheader.preheader ] ; 3 uses
  br i1 %min.iters.check157, label %scalar.ph156.preheader, label %vector.ph158

vector.ph158:                                     ; preds = %.preheader
  %i.cx = getelementptr i8, ptr %.4109, i64 %i.cw ; 2 uses
  br label %vector.body160

vector.body160:                                   ; preds = %vector.body160, %vector.ph158
  %index161 = phi i64 [ 0, %vector.ph158 ], [ %index.next165, %vector.body160 ] ; 3 uses
  %i.cy = shl i64 %index161, 3
  %next.gep162 = getelementptr i8, ptr %.4109, i64 %i.cy ; 2 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %index161 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %wide.load163.a = load <2 x i32>, ptr %i.cz, align 4, !tbaa !26
  %wide.load164 = load <2 x i32>, ptr %i.da, align 4, !tbaa !26
  %i.db = sext <2 x i32> %wide.load163.a to <2 x i64>
  %i.dc = sext <2 x i32> %wide.load164 to <2 x i64>
  %i.dd = shl nsw <2 x i64> %i.db, splat (i64 32)
  %i.de = shl nsw <2 x i64> %i.dc, splat (i64 32)
  %i.df = getelementptr i8, ptr %next.gep162, i64 16
  store <2 x i64> %i.dd, ptr %next.gep162, align 8, !tbaa !412
  store <2 x i64> %i.de, ptr %i.df, align 8, !tbaa !412
  %index.next165 = add nuw i64 %index161, 4       ; 2 uses
  %i.dg = icmp eq i64 %index.next165, %n.vec159
  br i1 %i.dg, label %middle.block166, label %vector.body160, !llvm.loop !1967

middle.block166:                                  ; preds = %vector.body160
  br i1 %cmp.n167, label %._crit_edge, label %scalar.ph156.preheader

scalar.ph156.preheader:                           ; preds = %.preheader, %middle.block166
  %indvars.iv132.ph = phi i64 [ 0, %.preheader ], [ %n.vec159, %middle.block166 ]
  %.5107.ph = phi ptr [ %.4109, %.preheader ], [ %i.cx, %middle.block166 ]
  br label %scalar.ph156

._crit_edge:                                      ; preds = %scalar.ph156, %middle.block166
  %.lcssa = phi ptr [ %i.cx, %middle.block166 ], [ %i.dm, %scalar.ph156 ]
  %i.dh = add nuw nsw i32 %.2110, 1               ; 2 uses
  %exitcond137.not = icmp eq i32 %i.dh, %7
  br i1 %exitcond137.not, label %.loopexit.split, label %.preheader, !llvm.loop !1968

scalar.ph156:                                     ; preds = %scalar.ph156.preheader, %scalar.ph156
  %indvars.iv132 = phi i64 [ %indvars.iv.next133, %scalar.ph156 ], [ %indvars.iv132.ph, %scalar.ph156.preheader ] ; 2 uses
  %.5107 = phi ptr [ %i.dm, %scalar.ph156 ], [ %.5107.ph, %scalar.ph156.preheader ] ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv132
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !26
  %i.dk = sext i32 %i.dj to i64
  %i.dl = shl nsw i64 %i.dk, 32
  store i64 %i.dl, ptr %.5107, align 8, !tbaa !412
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.5107, i64 8 ; 2 uses
  %exitcond136.not = icmp eq i64 %indvars.iv.next133, %wide.trip.count135
  br i1 %exitcond136.not, label %._crit_edge, label %scalar.ph156, !llvm.loop !1969

.loopexit.split:                                  ; preds = %._crit_edge, %bb.m, %._crit_edge100
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_119interpolationLinearIiE9getCoeffsEiPiPNS_12fixedpoint64E(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #4 align 2 {
bb.a:
  %4 = alloca %"struct.cv::softdouble", align 8   ; 4 uses
  %5 = alloca %"struct.cv::softdouble", align 8   ; 4 uses
  %6 = alloca %"struct.cv::softdouble", align 8   ; 5 uses
  %7 = alloca %"struct.cv::softdouble", align 8   ; 4 uses
  %8 = alloca %"struct.cv::softdouble", align 8   ; 4 uses
  %9 = alloca %"struct.cv::softdouble", align 8   ; 4 uses
  %10 = alloca %"struct.cv::softdouble", align 8  ; 4 uses
  %11 = alloca %"struct.cv::softdouble", align 8  ; 4 uses
  %12 = alloca %"struct.cv::softdouble", align 8  ; 4 uses
  %13 = alloca %"struct.cv::softdouble", align 8  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @_ZN2cv10softdoubleC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  store double 5.000000e-01, ptr %10, align 8, !tbaa !153
  call void @_ZNK2cv10softdoubleplERKS0_(ptr dead_on_unwind nonnull writable sret(%"struct.cv::softdouble") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %10)
  call void @_ZNK2cv10softdoublemlERKS0_(ptr dead_on_unwind nonnull writable sret(%"struct.cv::softdouble") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  store double 5.000000e-01, ptr %11, align 8, !tbaa !153
  call void @_ZNK2cv10softdoublemiERKS0_(ptr dead_on_unwind nonnull writable sret(%"struct.cv::softdouble") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.a = call noundef i32 @_Z7cvFloorRKN2cv10softdoubleE(ptr noundef nonnull align 8 dereferenceable(8) %6) ; 4 uses
  %i.b = icmp sgt i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !226  ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1                     ; 2 uses
  %i.g = icmp samesign ult i32 %i.a, %i.f
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 %i.a, ptr %2, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  call void @_ZN2cv10softdoubleC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef %i.a)
  call void @_ZNK2cv10softdoublemiERKS0_(ptr dead_on_unwind nonnull writable sret(%"struct.cv::softdouble") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %13)
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZN2cv10softdoubleC1El(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef 4294967296)
  call void @_ZNK2cv10softdoublemlERKS0_(ptr dead_on_unwind nonnull writable sret(%"struct.cv::softdouble") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %i.i = call noundef i64 @_Z9cvRound64RKN2cv10softdoubleE(ptr noundef nonnull align 8 dereferenceable(8) %4) ; 3 uses
  store i64 %i.i, ptr %i.h, align 8, !tbaa !412
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  %i.j = sub nsw i64 4294967296, %i.i             ; 3 uses
  %i.k = and i64 %i.j, %i.i
  %i.l = icmp slt i64 %i.k, 0
  %i.m = and i64 %i.j, -9223372036854775808
  %i.n = xor i64 %i.m, -1
  %i.o = select i1 %i.l, i64 %i.n, i64 %i.j
  store i64 %i.o, ptr %3, align 8, !tbaa !412
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  store i32 %i.f, ptr %2, align 4, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !26
  %.sroa.speculated16 = call i32 @llvm.smin.i32(i32 %1, i32 %i.q)
  store i32 %.sroa.speculated16, ptr %i.p, align 8, !tbaa !228
  br label %bb.g

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.s = add nsw i32 %1, 1
  %i.t = load i32, ptr %i.r, align 4, !tbaa !26
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.t, i32 %i.s)
  store i32 %.sroa.speculated, ptr %i.r, align 4, !tbaa !227
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #8

declare noundef i64 @_Z9cvRound64RKN2cv10softdoubleE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2
end_hunk_3
begin_hunk_4_@_ZNK12_GLOBAL__N_122resize_bitExactInvokerIiNS_12fixedpoint64ELi2EEclERKN2cv5RangeE:bb.a

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %.val67, i64 %indvars.iv.i
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !412
  %i.bz = add i64 %i.by, 2147483648
  %i.ca = lshr i64 %i.bz, 32
  %i.cb = trunc nuw i64 %i.ca to i32
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv.i
  store i32 %i.cb, ptr %i.cc, align 4, !tbaa !26
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN12_GLOBAL__N_18vlineSetIiNS_12fixedpoint64EEEvPT0_PT_i.exit, label %.lr.ph.i, !llvm.loop !1973

_ZN12_GLOBAL__N_18vlineSetIiNS_12fixedpoint64EEEvPT0_PT_i.exit: ; preds = %.lr.ph.i, %middle.block, %bb.f
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader120.split, label %bb.f, !llvm.loop !1974

bb.g:                                             ; preds = %.lr.ph150, %_ZN12_GLOBAL__N_111vlineResizeIiNS_12fixedpoint64ELi2EEEvPT0_mS3_PT_i.exit
  %indvars.iv171 = phi i64 [ %i.bf, %.lr.ph150 ], [ %indvars.iv.next172, %_ZN12_GLOBAL__N_111vlineResizeIiNS_12fixedpoint64ELi2EEEvPT0_mS3_PT_i.exit ] ; 4 uses
  %.157148 = phi i32 [ %.056, %.lr.ph150 ], [ %i.dn, %_ZN12_GLOBAL__N_111vlineResizeIiNS_12fixedpoint64ELi2EEEvPT0_mS3_PT_i.exit ] ; 2 uses
  %.1114147 = phi i32 [ %.0113, %.lr.ph150 ], [ %.lcssa122, %_ZN12_GLOBAL__N_111vlineResizeIiNS_12fixedpoint64ELi2EEEvPT0_mS3_PT_i.exit ] ; 3 uses
  %i.cd = load ptr, ptr %i.at, align 8, !tbaa !239
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %indvars.iv171 ; 2 uses
  %i.cf = add nsw i32 %.1114147, 2
  %i.cg = load i32, ptr %i.ce, align 4, !tbaa !26 ; 4 uses
  %.sroa.speculated106 = call i32 @llvm.smax.i32(i32 %i.cg, i32 %i.cf)
  %i.ch = add nsw i32 %i.cg, 2
  %i.ci = load i32, ptr %i.au, align 4, !tbaa !26 ; 2 uses
  %.sroa.speculated101129 = call i32 @llvm.smin.i32(i32 %i.ci, i32 %i.ch)
  %i.cj = icmp slt i32 %.sroa.speculated106, %.sroa.speculated101129
  br i1 %i.cj, label %.lr.ph132.preheader, label %._crit_edge

.lr.ph132.preheader:                              ; preds = %bb.g
  %i.ck = sext i32 %.1114147 to i64
  %i.cl = add nsw i64 %i.ck, 2
  %i.cm = sext i32 %i.cg to i64
  %smax = call i64 @llvm.smax.i64(i64 %i.cl, i64 %i.cm)
  br label %.lr.ph132

.lr.ph132:                                        ; preds = %.lr.ph132.preheader, %bb.h
  %indvars.iv166 = phi i64 [ %smax, %.lr.ph132.preheader ], [ %indvars.iv.next167, %bb.h ] ; 2 uses
  %.258130 = phi i32 [ %.157148, %.lr.ph132.preheader ], [ %i.dd, %bb.h ] ; 2 uses
  %i.cn = load ptr, ptr %i.av, align 8, !tbaa !242
  %i.co = load ptr, ptr %i.aw, align 8, !tbaa !231
  %i.cp = load i64, ptr %i.ax, align 8, !tbaa !232
  %i.cq = mul i64 %i.cp, %indvars.iv166
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cq
  %i.cs = load i32, ptr %i.d, align 8, !tbaa !237 ; 2 uses
  %i.ct = load ptr, ptr %i.ay, align 8, !tbaa !238
  %i.cu = load ptr, ptr %i.az, align 8, !tbaa !240
  %.val68 = load ptr, ptr %2, align 8, !tbaa !1986
  %i.cv = load i32, ptr %i.a, align 8, !tbaa !236 ; 2 uses
  %i.cw = mul i32 %i.cs, %.258130
  %i.cx = mul i32 %i.cw, %i.cv
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [8 x i8], ptr %.val68, i64 %i.cy
  %i.da = load i32, ptr %i.ba, align 8, !tbaa !1988
  %i.db = load i32, ptr %i.bb, align 4, !tbaa !1989
  invoke void %i.cn(ptr noundef %i.cr, i32 noundef %i.cs, ptr noundef %i.ct, ptr noundef %i.cu, ptr noundef %i.cz, i32 noundef %i.da, i32 noundef %i.db, i32 noundef %i.cv)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %.lr.ph132
  %indvars.iv.next167 = add nsw i64 %indvars.iv166, 1 ; 2 uses
  %i.dc = and i32 %.258130, 1
  %i.dd = xor i32 %i.dc, 1                        ; 2 uses
  %i.de = load i32, ptr %i.ce, align 4, !tbaa !26 ; 2 uses
  %i.df = add nsw i32 %i.de, 2
  %i.dg = load i32, ptr %i.au, align 4, !tbaa !26 ; 2 uses
  %.sroa.speculated101 = call i32 @llvm.smin.i32(i32 %i.dg, i32 %i.df)
  %i.dh = sext i32 %.sroa.speculated101 to i64
  %i.di = icmp slt i64 %indvars.iv.next167, %i.dh
  br i1 %i.di, label %.lr.ph132, label %._crit_edge, !llvm.loop !1975

bb.i:                                             ; preds = %.lr.ph132
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

._crit_edge:                                      ; preds = %bb.h, %bb.g
  %.258.lcssa = phi i32 [ %.157148, %bb.g ], [ %i.dd, %bb.h ]
  %.lcssa122 = phi i32 [ %i.cg, %bb.g ], [ %i.de, %bb.h ] ; 3 uses
  %.lcssa = phi i32 [ %i.ci, %bb.g ], [ %i.dg, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  store i64 0, ptr %.sroa.0, align 16, !tbaa !412
  store i64 0, ptr %.sroa.6, align 8, !tbaa !412
  %i.dk = add nsw i32 %.lcssa, -2                 ; 2 uses
  %.sroa.speculated97 = call i32 @llvm.smax.i32(i32 %.lcssa122, i32 %i.dk)
  %i.dl = add nsw i32 %.sroa.speculated97, %.258.lcssa
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %.1114147, i32 %i.dk)
  %i.dm = sub i32 %i.dl, %.sroa.speculated
  %i.dn = srem i32 %i.dm, 2                       ; 4 uses
  %i.do = icmp slt i32 %i.dn, 1                   ; 2 uses
  %.pre181 = load ptr, ptr %i.bc, align 8, !tbaa !241 ; 2 uses
  %i.dp = shl nsw i64 %indvars.iv171, 1           ; 2 uses
  br i1 %i.do, label %.preheader, label %.lr.ph137

.lr.ph137:                                        ; preds = %._crit_edge
  %i.dq = getelementptr [8 x i8], ptr %.pre181, i64 %i.dp
  %i.dr = getelementptr i8, ptr %i.dq, i64 8
  %.lcssa136.pre = load i64, ptr %i.dr, align 1
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge, %.lr.ph137
  %.lcssa136 = phi i64 [ %.lcssa136.pre, %.lr.ph137 ], [ 0, %._crit_edge ]
  %.1.lcssa.sroa.phi = phi ptr [ %.sroa.6, %.lr.ph137 ], [ %.sroa.0, %._crit_edge ]
  %.1.lcssa = phi i64 [ 1, %.lr.ph137 ], [ 0, %._crit_edge ]
  store i64 %.lcssa136, ptr %.sroa.0, align 16
  %i.ds = trunc nsw i64 %i.dp to i32
  %i.dt = sub i32 %i.ds, %i.dn
  %i.du = sext i32 %i.dt to i64
  %invariant.gep = getelementptr [8 x i8], ptr %.pre181, i64 %i.du ; 2 uses
  %gep.peel = getelementptr [8 x i8], ptr %invariant.gep, i64 %.1.lcssa
  %i.dv = load i64, ptr %gep.peel, align 8, !tbaa !412
  store i64 %i.dv, ptr %.1.lcssa.sroa.phi, align 8, !tbaa !412
  br i1 %i.do, label %.preheader.peel.newph, label %bb.j

.preheader.peel.newph:                            ; preds = %.preheader
  %gep = getelementptr i8, ptr %invariant.gep, i64 8
  %i.dw = load i64, ptr %gep, align 8, !tbaa !412
  store i64 %i.dw, ptr %.sroa.6, align 8, !tbaa !412
  br label %bb.j

bb.j:                                             ; preds = %.preheader.peel.newph, %.preheader
  %.val69 = load ptr, ptr %2, align 8, !tbaa !1986 ; 3 uses
  %i.dx = load i32, ptr %i.a, align 8, !tbaa !236
  %i.dy = load i32, ptr %i.d, align 8, !tbaa !237
  %i.dz = mul nsw i32 %i.dy, %i.dx                ; 2 uses
  %i.ea = load ptr, ptr %i.bd, align 8, !tbaa !234
  %i.eb = load i64, ptr %i.be, align 8, !tbaa !235
  %i.ec = mul i64 %i.eb, %indvars.iv171
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.ec
  %.sroa.0.0..sroa.0.0..val71 = load i64, ptr %.sroa.0, align 16 ; 2 uses
  %.sroa.6.0..sroa.6.8..val72 = load i64, ptr %.sroa.6, align 8 ; 2 uses
  %i.ee = icmp sgt i32 %i.dz, 0
  br i1 %i.ee, label %.lr.ph.i78, label %_ZN12_GLOBAL__N_111vlineResizeIiNS_12fixedpoint64ELi2EEEvPT0_mS3_PT_i.exit

.lr.ph.i78:                                       ; preds = %bb.j
  %i.ef = zext nneg i32 %i.dz to i64              ; 2 uses
  %i.eg = call i64 @llvm.abs.i64(i64 %.sroa.0.0..sroa.0.0..val71, i1 true) ; 2 uses
  %i.eh = and i64 %i.eg, 4294967295               ; 2 uses
  %i.ei = lshr i64 %i.eg, 32                      ; 2 uses
  %i.ej = getelementptr [8 x i8], ptr %.val69, i64 %i.ef
  %i.ek = call i64 @llvm.abs.i64(i64 %.sroa.6.0..sroa.6.8..val72, i1 true) ; 2 uses
  %i.el = and i64 %i.ek, 4294967295               ; 2 uses
  %i.em = lshr i64 %i.ek, 32                      ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %.split.i, %.lr.ph.i78
  %indvars.iv.i80 = phi i64 [ 0, %.lr.ph.i78 ], [ %indvars.iv.next.i82, %.split.i ] ; 4 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %.val69, i64 %indvars.iv.i80
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !412, !noalias !1990 ; 2 uses
  %i.ep = call i64 @llvm.abs.i64(i64 %i.eo, i1 true) ; 2 uses
  %.lobit34.i16.i = xor i64 %i.eo, %.sroa.0.0..sroa.0.0..val71
  %.not.i17.i = icmp sgt i64 %.lobit34.i16.i, -1  ; 2 uses
  %i.eq = and i64 %i.ep, 4294967295               ; 2 uses
  %i.er = mul nuw i64 %i.eq, %i.eh
  %i.es = add nuw i64 %i.er, 2147483648
  %i.et = lshr i64 %i.ep, 32                      ; 2 uses
  %i.eu = mul nuw nsw i64 %i.et, %i.eh            ; 2 uses
  %i.ev = mul nuw nsw i64 %i.eq, %i.ei            ; 2 uses
  %i.ew = mul nuw nsw i64 %i.et, %i.ei            ; 2 uses
  %i.ex = and i64 %i.eu, 4294967295
  %i.ey = and i64 %i.ev, 4294967295
  %i.ez = add nuw nsw i64 %i.ex, %i.ey
  %i.fa = lshr i64 %i.es, 32
  %i.fb = add nuw nsw i64 %i.ez, %i.fa            ; 2 uses
  %i.fc = and i64 %i.ew, 4294967295
  %i.fd = lshr i64 %i.eu, 32
  %i.fe = add nuw nsw i64 %i.fc, %i.fd
  %i.ff = lshr i64 %i.ev, 32
  %i.fg = add nuw nsw i64 %i.fe, %i.ff
  %i.fh = lshr i64 %i.fb, 32
  %i.fi = add nuw nsw i64 %i.fg, %i.fh            ; 3 uses
  %i.fj = and i64 %i.fb, 4294967295               ; 2 uses
  %i.fk = icmp samesign ugt i64 %i.ew, 2147483647
  %i.fl = icmp samesign ugt i64 %i.fi, 2147483647
  %or.cond.i18.i = select i1 %i.fk, i1 true, i1 %i.fl
  br i1 %or.cond.i18.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.fm = select i1 %.not.i17.i, i64 9223372036854775807, i64 -9223372036854775808
  br label %_ZNK12_GLOBAL__N_112fixedpoint64mlERKS0_.exit21.i

bb.m:                                             ; preds = %bb.k
  br i1 %.not.i17.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.neg.i19.i = mul nsw i64 %i.fi, -4294967296
  %.neg35.i20.i = sub nsw i64 %.neg.i19.i, %i.fj
  br label %_ZNK12_GLOBAL__N_112fixedpoint64mlERKS0_.exit21.i

bb.o:                                             ; preds = %bb.m
  %i.fn = shl nuw nsw i64 %i.fi, 32
  %i.fo = or disjoint i64 %i.fn, %i.fj
  br label %_ZNK12_GLOBAL__N_112fixedpoint64mlERKS0_.exit21.i

_ZNK12_GLOBAL__N_112fixedpoint64mlERKS0_.exit21.i: ; preds = %bb.o, %bb.n, %bb.l
  %.sroa.02.0.i = phi i64 [ %i.fm, %bb.l ], [ %i.fo, %bb.o ], [ %.neg35.i20.i, %bb.n ] ; 2 uses
  %i.fp = getelementptr [8 x i8], ptr %i.ej, i64 %indvars.iv.i80
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !412, !noalias !1991 ; 2 uses
  %i.fr = call i64 @llvm.abs.i64(i64 %i.fq, i1 true) ; 2 uses
  %.lobit34.i.i = xor i64 %i.fq, %.sroa.6.0..sroa.6.8..val72
  %.not.i.i81 = icmp sgt i64 %.lobit34.i.i, -1    ; 2 uses
  %i.fs = and i64 %i.fr, 4294967295               ; 2 uses
  %i.ft = mul nuw i64 %i.fs, %i.el
  %i.fu = add nuw i64 %i.ft, 2147483648
  %i.fv = lshr i64 %i.fr, 32                      ; 2 uses
  %i.fw = mul nuw nsw i64 %i.fv, %i.el            ; 2 uses
  %i.fx = mul nuw nsw i64 %i.fs, %i.em            ; 2 uses
  %i.fy = mul nuw nsw i64 %i.fv, %i.em            ; 2 uses
  %i.fz = and i64 %i.fw, 4294967295
  %i.ga = and i64 %i.fx, 4294967295
  %i.gb = add nuw nsw i64 %i.fz, %i.ga
  %i.gc = lshr i64 %i.fu, 32
  %i.gd = add nuw nsw i64 %i.gb, %i.gc            ; 2 uses
  %i.ge = and i64 %i.fy, 4294967295
  %i.gf = lshr i64 %i.fw, 32
  %i.gg = add nuw nsw i64 %i.ge, %i.gf
  %i.gh = lshr i64 %i.fx, 32
  %i.gi = add nuw nsw i64 %i.gg, %i.gh
  %i.gj = lshr i64 %i.gd, 32
  %i.gk = add nuw nsw i64 %i.gi, %i.gj            ; 3 uses
  %i.gl = and i64 %i.gd, 4294967295               ; 2 uses
  %i.gm = icmp samesign ugt i64 %i.fy, 2147483647
  %i.gn = icmp samesign ugt i64 %i.gk, 2147483647
  %or.cond.i.i = select i1 %i.gm, i1 true, i1 %i.gn
  br i1 %or.cond.i.i, label %_ZNK12_GLOBAL__N_112fixedpoint64mlERKS0_.exit.us.i, label %_ZNK12_GLOBAL__N_112fixedpoint64mlERKS0_.exit21.split.i

_ZNK12_GLOBAL__N_112fixedpoint64mlERKS0_.exit.us.i: ; preds = %_ZNK12_GLOBAL__N_112fixedpoint64mlERKS0_.exit21.i
  %i.go = select i1 %.not.i.i81, i64 9223372036854775807, i64 -9223372036854775808
  br label %.split.i

_ZNK12_GLOBAL__N_112fixedpoint64mlERKS0_.exit21.split.i: ; preds = %_ZNK12_GLOBAL__N_112fixedpoint64mlERKS0_.exit21.i
  br i1 %.not.i.i81, label %_ZNK12_GLOBAL__N_112fixedpoint64mlERKS0_.exit.us8.i, label %3

3:                                                ; preds = %_ZNK12_GLOBAL__N_112fixedpoint64mlERKS0_.exit21.split.i
  %.neg.i.i = mul nsw i64 %i.gk, -4294967296
  %.neg35.i.i = sub nsw i64 %.neg.i.i, %i.gl
  br label %.split.i

_ZNK12_GLOBAL__N_112fixedpoint64mlERKS0_.exit.us8.i: ; preds = %_ZNK12_GLOBAL__N_112fixedpoint64mlERKS0_.exit21.split.i
  %4 = shl nuw nsw i64 %i.gk, 32
  %5 = or disjoint i64 %4, %i.gl
  br label %.split.i

.split.i:                                         ; preds = %_ZNK12_GLOBAL__N_112fixedpoint64mlERKS0_.exit.us8.i, %3, %_ZNK12_GLOBAL__N_112fixedpoint64mlERKS0_.exit.us.i
  %.sink19.i = phi i64 [ %i.go, %_ZNK12_GLOBAL__N_112fixedpoint64mlERKS0_.exit.us.i ], [ %5, %_ZNK12_GLOBAL__N_112fixedpoint64mlERKS0_.exit.us8.i ], [ %.neg35.i.i, %3 ] ; 2 uses
  %6 = add nsw i64 %.sink19.i, %.sroa.02.0.i      ; 4 uses
  %7 = xor i64 %6, %.sroa.02.0.i
  %8 = xor i64 %6, %.sink19.i
  %9 = and i64 %7, %8
  %i.gp = icmp slt i64 %9, 0
  %i.gq = and i64 %6, -9223372036854775808
  %i.gr = xor i64 %i.gq, -1
  %i.gs = select i1 %i.gp, i64 %i.gr, i64 %6
  %i.gt = add i64 %i.gs, 2147483648
  %i.gu = lshr i64 %i.gt, 32
  %i.gv = trunc nuw i64 %i.gu to i32
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv.i80
  store i32 %i.gv, ptr %i.gw, align 4, !tbaa !26
  %indvars.iv.next.i82 = add nuw nsw i64 %indvars.iv.i80, 1 ; 2 uses
  %exitcond.not.i83 = icmp eq i64 %indvars.iv.next.i82, %i.ef
  br i1 %exitcond.not.i83, label %_ZN12_GLOBAL__N_111vlineResizeIiNS_12fixedpoint64ELi2EEEvPT0_mS3_PT_i.exit, label %bb.k, !llvm.loop !1980

_ZN12_GLOBAL__N_111vlineResizeIiNS_12fixedpoint64ELi2EEEvPT0_mS3_PT_i.exit: ; preds = %.split.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %indvars.iv.next172 = add nsw i64 %indvars.iv171, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next172 to i32
  %exitcond174.not = icmp eq i32 %i.u, %lftr.wideiv
  br i1 %exitcond174.not, label %._crit_edge151, label %bb.g, !llvm.loop !1981

._crit_edge151:                                   ; preds = %_ZN12_GLOBAL__N_111vlineResizeIiNS_12fixedpoint64ELi2EEEvPT0_mS3_PT_i.exit, %.preheader120.split.._crit_edge151_crit_edge
  %.val70 = phi ptr [ %.val70.pre, %.preheader120.split.._crit_edge151_crit_edge ], [ %.val69, %_ZN12_GLOBAL__N_111vlineResizeIiNS_12fixedpoint64ELi2EEEvPT0_mS3_PT_i.exit ] ; 3 uses
  %.1114.lcssa = phi i32 [ %.0113, %.preheader120.split.._crit_edge151_crit_edge ], [ %.lcssa122, %_ZN12_GLOBAL__N_111vlineResizeIiNS_12fixedpoint64ELi2EEEvPT0_mS3_PT_i.exit ] ; 2 uses
  %.157.lcssa = phi i32 [ %.056, %.preheader120.split.._crit_edge151_crit_edge ], [ %i.dn, %_ZN12_GLOBAL__N_111vlineResizeIiNS_12fixedpoint64ELi2EEEvPT0_mS3_PT_i.exit ]
  %.148.lcssa = phi i32 [ %.047.lcssa, %.preheader120.split.._crit_edge151_crit_edge ], [ %i.u, %_ZN12_GLOBAL__N_111vlineResizeIiNS_12fixedpoint64ELi2EEEvPT0_mS3_PT_i.exit ] ; 2 uses
  %i.gx = add nsw i32 %.1114.lcssa, 2
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !233 ; 3 uses
  %i.ha = icmp sgt i32 %i.gx, %i.gz
  br i1 %i.ha, label %bb.p, label %bb.r

bb.p:                                             ; preds = %._crit_edge151
  %i.hb = load i32, ptr %i.a, align 8, !tbaa !236
  %i.hc = load i32, ptr %i.d, align 8, !tbaa !237
  %i.hd = xor i32 %.1114.lcssa, -1
  %i.he = add i32 %.157.lcssa, %i.hd
  %i.hf = add i32 %i.he, %i.gz
  %i.hg = srem i32 %i.hf, 2
  %i.hh = mul i32 %i.hb, %i.hg
  %i.hi = mul i32 %i.hh, %i.hc
  %i.hj = sext i32 %i.hi to i64
  %i.hk = getelementptr inbounds [8 x i8], ptr %.val70, i64 %i.hj
  br label %bb.s

bb.q:                                             ; preds = %bb.r
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.r:                                             ; preds = %._crit_edge151
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !242
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !231
  %i.hq = add nsw i32 %i.gz, -1
  %i.hr = sext i32 %i.hq to i64
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !232
  %i.hu = mul i64 %i.ht, %i.hr
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.hu
  %i.hw = load i32, ptr %i.d, align 8, !tbaa !237
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !238
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !240
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ic = load i32, ptr %i.ib, align 8, !tbaa !1988
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !1989
  %i.if = load i32, ptr %i.a, align 8, !tbaa !236
  invoke void %i.hn(ptr noundef %i.hv, i32 noundef %i.hw, ptr noundef %i.hy, ptr noundef %i.ia, ptr noundef %.val70, i32 noundef %i.ic, i32 noundef %i.ie, i32 noundef %i.if)
          to label %bb.s unwind label %bb.q

bb.s:                                             ; preds = %bb.r, %bb.p
  %.0 = phi ptr [ %i.hk, %bb.p ], [ %.val70, %bb.r ] ; 2 uses
  %i.ig = load i32, ptr %i.r, align 4, !tbaa !41  ; 2 uses
  %i.ih = icmp slt i32 %.148.lcssa, %i.ig
  br i1 %i.ih, label %.lr.ph157, label %._crit_edge158

.lr.ph157:                                        ; preds = %bb.s
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !234
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !235
  %i.im = sext i32 %.148.lcssa to i64
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph157, %_ZN12_GLOBAL__N_18vlineSetIiNS_12fixedpoint64EEEvPT0_PT_i.exit90
  %i.in = phi i32 [ %i.ig, %.lr.ph157 ], [ %i.jl, %_ZN12_GLOBAL__N_18vlineSetIiNS_12fixedpoint64EEEvPT0_PT_i.exit90 ]
  %indvars.iv175 = phi i64 [ %i.im, %.lr.ph157 ], [ %indvars.iv.next176, %_ZN12_GLOBAL__N_18vlineSetIiNS_12fixedpoint64EEEvPT0_PT_i.exit90 ] ; 2 uses
  %i.io = mul i64 %i.il, %indvars.iv175
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.io ; 2 uses
  %i.iq = load i32, ptr %i.a, align 8, !tbaa !236
  %i.ir = load i32, ptr %i.d, align 8, !tbaa !237
  %i.is = mul nsw i32 %i.ir, %i.iq                ; 3 uses
  %i.it = icmp sgt i32 %i.is, 0
  br i1 %i.it, label %.lr.ph.preheader.i84, label %_ZN12_GLOBAL__N_18vlineSetIiNS_12fixedpoint64EEEvPT0_PT_i.exit90

.lr.ph.preheader.i84:                             ; preds = %bb.t
  %wide.trip.count.i85 = zext nneg i32 %i.is to i64 ; 3 uses
  %min.iters.check209 = icmp ult i32 %i.is, 4
  br i1 %min.iters.check209, label %.lr.ph.i86.preheader, label %vector.ph210

vector.ph210:                                     ; preds = %.lr.ph.preheader.i84
  %n.vec211 = and i64 %wide.trip.count.i85, 2147483644 ; 3 uses
  br label %vector.body212

vector.body212:                                   ; preds = %vector.body212, %vector.ph210
  %index213 = phi i64 [ 0, %vector.ph210 ], [ %index.next216, %vector.body212 ] ; 3 uses
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %index213 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  %wide.load214 = load <2 x i64>, ptr %i.iu, align 8, !tbaa !412
  %wide.load215 = load <2 x i64>, ptr %i.iv, align 8, !tbaa !412
  %i.iw = add <2 x i64> %wide.load214, splat (i64 2147483648)
  %i.ix = add <2 x i64> %wide.load215, splat (i64 2147483648)
  %i.iy = lshr <2 x i64> %i.iw, splat (i64 32)
  %i.iz = lshr <2 x i64> %i.ix, splat (i64 32)
  %i.ja = trunc nuw <2 x i64> %i.iy to <2 x i32>
  %i.jb = trunc nuw <2 x i64> %i.iz to <2 x i32>
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %index213 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  store <2 x i32> %i.ja, ptr %i.jc, align 4, !tbaa !26
  store <2 x i32> %i.jb, ptr %i.jd, align 4, !tbaa !26
  %index.next216 = add nuw i64 %index213, 4       ; 2 uses
  %i.je = icmp eq i64 %index.next216, %n.vec211
  br i1 %i.je, label %middle.block217, label %vector.body212, !llvm.loop !1982

middle.block217:                                  ; preds = %vector.body212
  %cmp.n218 = icmp eq i64 %n.vec211, %wide.trip.count.i85
  br i1 %cmp.n218, label %_ZN12_GLOBAL__N_18vlineSetIiNS_12fixedpoint64EEEvPT0_PT_i.exit90.loopexit, label %.lr.ph.i86.preheader

.lr.ph.i86.preheader:                             ; preds = %.lr.ph.preheader.i84, %middle.block217
  %indvars.iv.i87.ph = phi i64 [ 0, %.lr.ph.preheader.i84 ], [ %n.vec211, %middle.block217 ]
  br label %.lr.ph.i86

.lr.ph.i86:                                       ; preds = %.lr.ph.i86.preheader, %.lr.ph.i86
  %indvars.iv.i87 = phi i64 [ %indvars.iv.next.i88, %.lr.ph.i86 ], [ %indvars.iv.i87.ph, %.lr.ph.i86.preheader ] ; 3 uses
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %indvars.iv.i87
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !412
  %i.jh = add i64 %i.jg, 2147483648
  %i.ji = lshr i64 %i.jh, 32
  %i.jj = trunc nuw i64 %i.ji to i32
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %indvars.iv.i87
  store i32 %i.jj, ptr %i.jk, align 4, !tbaa !26
  %indvars.iv.next.i88 = add nuw nsw i64 %indvars.iv.i87, 1 ; 2 uses
  %exitcond.not.i89 = icmp eq i64 %indvars.iv.next.i88, %wide.trip.count.i85
  br i1 %exitcond.not.i89, label %_ZN12_GLOBAL__N_18vlineSetIiNS_12fixedpoint64EEEvPT0_PT_i.exit90.loopexit, label %.lr.ph.i86, !llvm.loop !1983

_ZN12_GLOBAL__N_18vlineSetIiNS_12fixedpoint64EEEvPT0_PT_i.exit90.loopexit: ; preds = %.lr.ph.i86, %middle.block217
  %.pre183 = load i32, ptr %i.r, align 4, !tbaa !41
  br label %_ZN12_GLOBAL__N_18vlineSetIiNS_12fixedpoint64EEEvPT0_PT_i.exit90

_ZN12_GLOBAL__N_18vlineSetIiNS_12fixedpoint64EEEvPT0_PT_i.exit90: ; preds = %_ZN12_GLOBAL__N_18vlineSetIiNS_12fixedpoint64EEEvPT0_PT_i.exit90.loopexit, %bb.t
  %i.jl = phi i32 [ %.pre183, %_ZN12_GLOBAL__N_18vlineSetIiNS_12fixedpoint64EEEvPT0_PT_i.exit90.loopexit ], [ %i.in, %bb.t ] ; 2 uses
  %indvars.iv.next176 = add nsw i64 %indvars.iv175, 1 ; 2 uses
  %i.jm = sext i32 %i.jl to i64
  %i.jn = icmp slt i64 %indvars.iv.next176, %i.jm
  br i1 %i.jn, label %bb.t, label %._crit_edge158, !llvm.loop !1984

._crit_edge158:                                   ; preds = %_ZN12_GLOBAL__N_18vlineSetIiNS_12fixedpoint64EEEvPT0_PT_i.exit90, %bb.s
  %i.jo = load ptr, ptr %2, align 8, !tbaa !1986  ; 3 uses
  %.not.i.i91.a = icmp eq ptr %i.jo, %scevgep.i
  %i.jp = icmp eq ptr %i.jo, null
  %or.cond.i = or i1 %.not.i.i91.a, %i.jp
  br i1 %or.cond.i, label %_ZN2cv10AutoBufferIN12_GLOBAL__N_112fixedpoint64ELm136EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %._crit_edge158
  call void @_ZdaPv(ptr noundef nonnull %i.jo) #24
  br label %_ZN2cv10AutoBufferIN12_GLOBAL__N_112fixedpoint64ELm136EED2Ev.exit

_ZN2cv10AutoBufferIN12_GLOBAL__N_112fixedpoint64ELm136EED2Ev.exit: ; preds = %._crit_edge158, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void

bb.v:                                             ; preds = %bb.q, %bb.i, %bb.d
  %.pn64.pn = phi { ptr, i32 } [ %i.ak, %bb.d ], [ %i.dj, %bb.i ], [ %i.hl, %bb.q ]
  %i.jq = load ptr, ptr %2, align 8, !tbaa !1986  ; 3 uses
  %.not.i.i92 = icmp eq ptr %i.jq, %scevgep.i
  %i.jr = icmp eq ptr %i.jq, null
  %or.cond.i93 = or i1 %.not.i.i92, %i.jr
  br i1 %or.cond.i93, label %_ZN2cv10AutoBufferIN12_GLOBAL__N_112fixedpoint64ELm136EED2Ev.exit94, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZdaPv(ptr noundef nonnull %i.jq) #24
  br label %_ZN2cv10AutoBufferIN12_GLOBAL__N_112fixedpoint64ELm136EED2Ev.exit94

_ZN2cv10AutoBufferIN12_GLOBAL__N_112fixedpoint64ELm136EED2Ev.exit94: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %.pn64.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.uadd.sat.i16(i16, i16) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.uadd.sat.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

end_hunk_4
