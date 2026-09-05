Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/grfmt_png?download=true
inline.NumInlined: 1700
inline.NumDeleted: 682
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN2cv10PngEncoder7getRectEjjPhS1_S1_jjijji:bb.a
  %i.f = sub nuw nsw i64 -4, %i.e
  %i.g = zext i32 %1 to i64                       ; 2 uses
  %min.iters.check = icmp ult i32 %1, 4
  %n.vec = and i64 %i.g, 4294967292               ; 4 uses
  %i.h = shl nuw nsw i64 %n.vec, 2                ; 3 uses
  %i.i = trunc nuw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br label %.preheader327.us

.preheader327.us:                                 ; preds = %.preheader327.us.preheader, %._crit_edge.us
  %indvar = phi i64 [ 0, %.preheader327.us.preheader ], [ %indvar.next, %._crit_edge.us ] ; 2 uses
  %.0167357.us = phi ptr [ %5, %.preheader327.us.preheader ], [ %.lcssa706, %._crit_edge.us ] ; 5 uses
  %.0168356.us = phi ptr [ %4, %.preheader327.us.preheader ], [ %.lcssa705, %._crit_edge.us ] ; 5 uses
  %.0170355.us = phi ptr [ %3, %.preheader327.us.preheader ], [ %scevgep, %._crit_edge.us ] ; 5 uses
  %.12354.us = phi i32 [ %spec.store.select, %.preheader327.us.preheader ], [ %.15.us.lcssa, %._crit_edge.us ] ; 3 uses
  %.9204353.us = phi i32 [ 0, %.preheader327.us.preheader ], [ %.11206.us.lcssa, %._crit_edge.us ] ; 3 uses
  %.9217352.us = phi i32 [ 0, %.preheader327.us.preheader ], [ %.11219.us.lcssa, %._crit_edge.us ] ; 3 uses
  %.12233351.us = phi i32 [ 0, %.preheader327.us.preheader ], [ %.15236.us.lcssa, %._crit_edge.us ] ; 3 uses
  %.12250350.us = phi i32 [ %i.c, %.preheader327.us.preheader ], [ %.15253.us.lcssa, %._crit_edge.us ] ; 3 uses
  %.12267349.us = phi i32 [ %i.b, %.preheader327.us.preheader ], [ %.15270.us.lcssa, %._crit_edge.us ] ; 3 uses
  %.3275348.us = phi i32 [ 0, %.preheader327.us.preheader ], [ %i.at, %._crit_edge.us ] ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader327.us
  %.0168356.us708 = ptrtoaddr ptr %.0168356.us to i64
  %i.j = mul i64 %i.f, %indvar
  %i.k = sub i64 %i.j, %i.a
  %.0167357.us707 = ptrtoaddr ptr %.0167357.us to i64 ; 2 uses
  %i.l = add i64 %i.k, %.0167357.us707
  %i.m = add i64 %i.l, -1
  %diff.check = icmp ult i64 %i.m, 15
  %i.n = sub i64 %.0168356.us708, %.0167357.us707
  %diff.check709 = icmp ugt i64 %i.n, -16
  %conflict.rdx = or i1 %diff.check, %diff.check709
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.o = getelementptr i8, ptr %.0167357.us, i64 %i.h ; 2 uses
  %i.p = getelementptr i8, ptr %.0168356.us, i64 %i.h ; 2 uses
  %i.q = getelementptr i8, ptr %.0170355.us, i64 %i.h
  %i.r = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.9204353.us, i64 0
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.9217352.us, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert710 = insertelement <4 x i32> poison, i32 %.12233351.us, i64 0
  %broadcast.splat711 = shufflevector <4 x i32> %broadcast.splatinsert710, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert712 = insertelement <4 x i32> poison, i32 %.12250350.us, i64 0
  %broadcast.splat713 = shufflevector <4 x i32> %broadcast.splatinsert712, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert714 = insertelement <4 x i32> poison, i32 %.12267349.us, i64 0
  %broadcast.splat715 = shufflevector <4 x i32> %broadcast.splatinsert714, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert716 = insertelement <4 x i32> poison, i32 %.3275348.us, i64 0
  %broadcast.splat717 = shufflevector <4 x i32> %broadcast.splatinsert716, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %predphi730, %vector.body ]
  %vec.phi718 = phi <4 x i32> [ %i.r, %vector.ph ], [ %predphi729, %vector.body ]
  %vec.phi719 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %predphi728, %vector.body ] ; 2 uses
  %vec.phi720 = phi <4 x i32> [ %broadcast.splat711, %vector.ph ], [ %predphi727, %vector.body ] ; 2 uses
  %vec.phi721 = phi <4 x i32> [ %broadcast.splat713, %vector.ph ], [ %predphi726, %vector.body ] ; 2 uses
  %vec.phi722 = phi <4 x i32> [ %broadcast.splat715, %vector.ph ], [ %predphi, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.s = shl i64 %index, 2                        ; 3 uses
  %next.gep = getelementptr i8, ptr %.0167357.us, i64 %i.s
  %next.gep723 = getelementptr i8, ptr %.0168356.us, i64 %i.s
  %next.gep724 = getelementptr i8, ptr %.0170355.us, i64 %i.s
  %wide.load = load <4 x i32>, ptr %next.gep724, align 4, !tbaa !14 ; 2 uses
  %wide.load725 = load <4 x i32>, ptr %next.gep723, align 4, !tbaa !14 ; 4 uses
  %i.t = icmp ne <4 x i32> %wide.load, %wide.load725
  %i.u = or <4 x i32> %wide.load725, %wide.load
  %i.v = icmp ugt <4 x i32> %i.u, splat (i32 16777215)
  %.not918 = and <4 x i1> %i.t, %i.v              ; 7 uses
  %i.w = icmp ult <4 x i32> %wide.load725, splat (i32 -16777216)
  %i.x = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %vec.ind, <4 x i32> %vec.phi722)
  %i.y = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.ind, <4 x i32> %vec.phi720)
  %i.z = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %broadcast.splat717, <4 x i32> %vec.phi721)
  %i.aa = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %broadcast.splat717, <4 x i32> %vec.phi719)
  %predphi = select <4 x i1> %.not918, <4 x i32> %i.x, <4 x i32> %vec.phi722 ; 2 uses
  %predphi726 = select <4 x i1> %.not918, <4 x i32> %i.z, <4 x i32> %vec.phi721 ; 2 uses
  %predphi727 = select <4 x i1> %.not918, <4 x i32> %i.y, <4 x i32> %vec.phi720 ; 2 uses
  %predphi728 = select <4 x i1> %.not918, <4 x i32> %i.aa, <4 x i32> %vec.phi719 ; 2 uses
  %i.ab = zext <4 x i1> %.not918 to <4 x i32>
  %predphi729 = add <4 x i32> %vec.phi718, %i.ab  ; 2 uses
  %i.ac = and <4 x i1> %.not918, %i.w
  %.fr = freeze <4 x i1> %i.ac
  %predphi730 = or <4 x i1> %vec.phi, %.fr        ; 2 uses
  %predphi731 = select <4 x i1> %.not918, <4 x i32> %wide.load725, <4 x i32> zeroinitializer
  store <4 x i32> %predphi731, ptr %next.gep, align 4, !tbaa !14
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.ind, splat (i32 4)
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !373

middle.block:                                     ; preds = %vector.body
  %i.ae = bitcast <4 x i1> %predphi730 to i4
  %.not919 = icmp eq i4 %i.ae, 0
  %rdx.select = select i1 %.not919, i32 %.12354.us, i32 0 ; 2 uses
  %i.af = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %predphi729) ; 2 uses
  %i.ag = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %predphi728) ; 2 uses
  %i.ah = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %predphi727) ; 2 uses
  %i.ai = tail call i32 @llvm.vector.reduce.umin.v4i32(<4 x i32> %predphi726) ; 2 uses
  %i.aj = tail call i32 @llvm.vector.reduce.umin.v4i32(<4 x i32> %predphi) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader327.us, %middle.block
  %.1339.us.ph = phi ptr [ %.0167357.us, %vector.memcheck ], [ %.0167357.us, %.preheader327.us ], [ %i.o, %middle.block ]
  %.1169338.us.ph = phi ptr [ %.0168356.us, %vector.memcheck ], [ %.0168356.us, %.preheader327.us ], [ %i.p, %middle.block ]
  %.1171337.us.ph = phi ptr [ %.0170355.us, %vector.memcheck ], [ %.0170355.us, %.preheader327.us ], [ %i.q, %middle.block ]
  %.13336.us.ph = phi i32 [ %.12354.us, %vector.memcheck ], [ %.12354.us, %.preheader327.us ], [ %rdx.select, %middle.block ]
  %.10205335.us.ph = phi i32 [ %.9204353.us, %vector.memcheck ], [ %.9204353.us, %.preheader327.us ], [ %i.af, %middle.block ]
  %.10218334.us.ph = phi i32 [ %.9217352.us, %vector.memcheck ], [ %.9217352.us, %.preheader327.us ], [ %i.ag, %middle.block ]
  %.13234333.us.ph = phi i32 [ %.12233351.us, %vector.memcheck ], [ %.12233351.us, %.preheader327.us ], [ %i.ah, %middle.block ]
  %.13251332.us.ph = phi i32 [ %.12250350.us, %vector.memcheck ], [ %.12250350.us, %.preheader327.us ], [ %i.ai, %middle.block ]
  %.13268331.us.ph = phi i32 [ %.12267349.us, %vector.memcheck ], [ %.12267349.us, %.preheader327.us ], [ %i.aj, %middle.block ]
  %.3279330.us.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.preheader327.us ], [ %i.i, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.c
  %.1339.us = phi ptr [ %i.aq, %bb.c ], [ %.1339.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.1169338.us = phi ptr [ %i.am, %bb.c ], [ %.1169338.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.1171337.us = phi ptr [ %i.ak, %bb.c ], [ %.1171337.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.13336.us = phi i32 [ %.15.us, %bb.c ], [ %.13336.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.10205335.us = phi i32 [ %.11206.us, %bb.c ], [ %.10205335.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.10218334.us = phi i32 [ %.11219.us, %bb.c ], [ %.10218334.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.13234333.us = phi i32 [ %.15236.us, %bb.c ], [ %.13234333.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.13251332.us = phi i32 [ %.15253.us, %bb.c ], [ %.13251332.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.13268331.us = phi i32 [ %.15270.us, %bb.c ], [ %.13268331.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.3279330.us = phi i32 [ %i.ar, %bb.c ], [ %.3279330.us.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.1171337.us, i64 4
  %i.al = load i32, ptr %.1171337.us, align 4, !tbaa !14 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.1169338.us, i64 4 ; 2 uses
  %i.an = load i32, ptr %.1169338.us, align 4, !tbaa !14 ; 4 uses
  %.not289.us = icmp eq i32 %i.al, %i.an
  %i.ao = or i32 %i.an, %i.al
  %or.cond302.us = icmp ult i32 %i.ao, 16777216
  %or.cond319.us = or i1 %.not289.us, %or.cond302.us
  br i1 %or.cond319.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %scalar.ph
  %i.ap = add i32 %.10205335.us, 1
  %.not292.us = icmp ugt i32 %i.an, -16777217
  %spec.select303.us = select i1 %.not292.us, i32 %.13336.us, i32 0
  %.14269.us = tail call i32 @llvm.umin.i32(i32 %.3279330.us, i32 %.13268331.us)
  %.14235.us = tail call i32 @llvm.umax.i32(i32 %.3279330.us, i32 %.13234333.us)
  %.14252.us = tail call i32 @llvm.umin.i32(i32 %.3275348.us, i32 %.13251332.us)
  %spec.select307.us = tail call i32 @llvm.umax.i32(i32 %.3275348.us, i32 %.10218334.us)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %scalar.ph
  %.15270.us = phi i32 [ %.13268331.us, %scalar.ph ], [ %.14269.us, %bb.b ] ; 2 uses
  %.15253.us = phi i32 [ %.13251332.us, %scalar.ph ], [ %.14252.us, %bb.b ] ; 2 uses
  %.15236.us = phi i32 [ %.13234333.us, %scalar.ph ], [ %.14235.us, %bb.b ] ; 2 uses
  %.11219.us = phi i32 [ %.10218334.us, %scalar.ph ], [ %spec.select307.us, %bb.b ] ; 2 uses
  %.11206.us = phi i32 [ %.10205335.us, %scalar.ph ], [ %i.ap, %bb.b ] ; 2 uses
  %.15.us = phi i32 [ %.13336.us, %scalar.ph ], [ %spec.select303.us, %bb.b ] ; 2 uses
  %.0.us = phi i32 [ 0, %scalar.ph ], [ %i.an, %bb.b ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.1339.us, i64 4 ; 2 uses
  store i32 %.0.us, ptr %.1339.us, align 4, !tbaa !14
  %i.ar = add nuw i32 %.3279330.us, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.ar, %1
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !374

._crit_edge.us:                                   ; preds = %bb.c, %middle.block
  %.15270.us.lcssa = phi i32 [ %i.aj, %middle.block ], [ %.15270.us, %bb.c ] ; 2 uses
  %.15253.us.lcssa = phi i32 [ %i.ai, %middle.block ], [ %.15253.us, %bb.c ] ; 2 uses
  %.15236.us.lcssa = phi i32 [ %i.ah, %middle.block ], [ %.15236.us, %bb.c ] ; 2 uses
  %.11219.us.lcssa = phi i32 [ %i.ag, %middle.block ], [ %.11219.us, %bb.c ] ; 2 uses
  %.11206.us.lcssa = phi i32 [ %i.af, %middle.block ], [ %.11206.us, %bb.c ] ; 2 uses
  %.15.us.lcssa = phi i32 [ %rdx.select, %middle.block ], [ %.15.us, %bb.c ] ; 2 uses
  %.lcssa706 = phi ptr [ %i.o, %middle.block ], [ %i.aq, %bb.c ]
  %.lcssa705 = phi ptr [ %i.p, %middle.block ], [ %i.am, %bb.c ]
  %i.as = getelementptr i8, ptr %.0170355.us, i64 %i.e
  %scevgep = getelementptr i8, ptr %i.as, i64 4
  %i.at = add nuw i32 %.3275348.us, 1             ; 2 uses
  %exitcond625.not = icmp eq i32 %i.at, %2
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond625.not, label %.loopexit, label %.preheader327.us, !llvm.loop !375

.preheader325:                                    ; preds = %bb.a
  %.not593 = icmp eq i32 %2, 0
  %.not594 = icmp eq i32 %1, 0
  %or.cond687 = or i1 %.not593, %.not594
  br i1 %or.cond687, label %.thread, label %.preheader324.lr.ph.split.us

.preheader324.lr.ph.split.us:                     ; preds = %.preheader325
  br i1 %.not, label %.preheader324.us.us, label %.preheader324.us

.preheader324.us.us:                              ; preds = %.preheader324.lr.ph.split.us, %._crit_edge.split.us431.us
  %.0173407.us.us = phi ptr [ %i.bm, %._crit_edge.split.us431.us ], [ %5, %.preheader324.lr.ph.split.us ]
  %.0175406.us.us = phi ptr [ %i.bl, %._crit_edge.split.us431.us ], [ %4, %.preheader324.lr.ph.split.us ]
  %.0177405.us.us = phi ptr [ %i.bk, %._crit_edge.split.us431.us ], [ %3, %.preheader324.lr.ph.split.us ]
  %.8404.us.us = phi i32 [ %.11.us.us, %._crit_edge.split.us431.us ], [ 1, %.preheader324.lr.ph.split.us ]
  %.6201403.us.us = phi i32 [ %.8203.us428.us, %._crit_edge.split.us431.us ], [ 0, %.preheader324.lr.ph.split.us ]
  %.6214402.us.us = phi i32 [ %.8216.us427.us, %._crit_edge.split.us431.us ], [ 0, %.preheader324.lr.ph.split.us ]
  %.8229401.us.us = phi i32 [ %.11232.us426.us, %._crit_edge.split.us431.us ], [ 0, %.preheader324.lr.ph.split.us ]
  %.8246400.us.us = phi i32 [ %.11249.us425.us, %._crit_edge.split.us431.us ], [ %i.c, %.preheader324.lr.ph.split.us ]
  %.8263399.us.us = phi i32 [ %.11266.us424.us, %._crit_edge.split.us431.us ], [ %i.b, %.preheader324.lr.ph.split.us ]
  %.2274397.us.us = phi i32 [ %i.bo, %._crit_edge.split.us431.us ], [ 0, %.preheader324.lr.ph.split.us ] ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %.preheader324.us.us, %bb.f
  %.1174378.us414.us = phi ptr [ %.0173407.us.us, %.preheader324.us.us ], [ %i.bm, %bb.f ] ; 2 uses
  %.1176377.us415.us = phi ptr [ %.0175406.us.us, %.preheader324.us.us ], [ %i.bl, %bb.f ] ; 3 uses
  %.1178376.us416.us = phi ptr [ %.0177405.us.us, %.preheader324.us.us ], [ %i.bk, %bb.f ] ; 3 uses
  %.9375.us.us = phi i32 [ %.8404.us.us, %.preheader324.us.us ], [ %.11.us.us, %bb.f ] ; 2 uses
  %.7202374.us417.us = phi i32 [ %.6201403.us.us, %.preheader324.us.us ], [ %.8203.us428.us, %bb.f ] ; 2 uses
  %.7215373.us418.us = phi i32 [ %.6214402.us.us, %.preheader324.us.us ], [ %.8216.us427.us, %bb.f ] ; 2 uses
  %.9230372.us419.us = phi i32 [ %.8229401.us.us, %.preheader324.us.us ], [ %.11232.us426.us, %bb.f ] ; 2 uses
  %.9247371.us420.us = phi i32 [ %.8246400.us.us, %.preheader324.us.us ], [ %.11249.us425.us, %bb.f ] ; 2 uses
  %.9264370.us421.us = phi i32 [ %.8263399.us.us, %.preheader324.us.us ], [ %.11266.us424.us, %bb.f ] ; 2 uses
  %.2278369.us422.us = phi i32 [ 0, %.preheader324.us.us ], [ %i.bn, %bb.f ] ; 3 uses
  %i.au = getelementptr i8, ptr %.1178376.us416.us, i64 1
  %i.av = load i16, ptr %i.au, align 1
  %i.aw = zext i16 %i.av to i32
  %i.ax = shl nuw nsw i32 %i.aw, 8
  %i.ay = load i8, ptr %.1178376.us416.us, align 1, !tbaa !117
  %i.az = zext i8 %i.ay to i32
  %i.ba = or disjoint i32 %i.ax, %i.az
  %i.bb = getelementptr i8, ptr %.1176377.us415.us, i64 1
  %i.bc = load i16, ptr %i.bb, align 1
  %i.bd = zext i16 %i.bc to i32
  %i.be = shl nuw nsw i32 %i.bd, 8
  %i.bf = load i8, ptr %.1176377.us415.us, align 1, !tbaa !117
  %i.bg = zext i8 %i.bf to i32
  %i.bh = or disjoint i32 %i.be, %i.bg            ; 3 uses
  %.not293.us423.us = icmp eq i32 %i.ba, %i.bh
  br i1 %.not293.us423.us, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bi = add i32 %.7202374.us417.us, 1
  %i.bj = icmp eq i32 %i.bh, %10
  %spec.select = select i1 %i.bj, i32 0, i32 %.9375.us.us
  %.10265.us440.us = tail call i32 @llvm.umin.i32(i32 %.2278369.us422.us, i32 %.9264370.us421.us)
  %.10231.us441.us = tail call i32 @llvm.umax.i32(i32 %.2278369.us422.us, i32 %.9230372.us419.us)
  %.10248.us442.us = tail call i32 @llvm.umin.i32(i32 %.2274397.us.us, i32 %.9247371.us420.us)
  %spec.select306.us443.us = tail call i32 @llvm.umax.i32(i32 %.2274397.us.us, i32 %.7215373.us418.us)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.11266.us424.us = phi i32 [ %.9264370.us421.us, %bb.d ], [ %.10265.us440.us, %bb.e ] ; 3 uses
  %.11249.us425.us = phi i32 [ %.9247371.us420.us, %bb.d ], [ %.10248.us442.us, %bb.e ] ; 3 uses
  %.11232.us426.us = phi i32 [ %.9230372.us419.us, %bb.d ], [ %.10231.us441.us, %bb.e ] ; 3 uses
  %.8216.us427.us = phi i32 [ %.7215373.us418.us, %bb.d ], [ %spec.select306.us443.us, %bb.e ] ; 3 uses
  %.8203.us428.us = phi i32 [ %.7202374.us417.us, %bb.d ], [ %i.bi, %bb.e ] ; 3 uses
  %.11.us.us = phi i32 [ %.9375.us.us, %bb.d ], [ %spec.select, %bb.e ] ; 3 uses
  %.0172.us429.us = phi i32 [ %10, %bb.d ], [ %i.bh, %bb.e ]
  %.0.extract.trunc.us430.us = trunc i32 %.0172.us429.us to i24
  store i24 %.0.extract.trunc.us430.us, ptr %.1174378.us414.us, align 1
  %i.bk = getelementptr inbounds nuw i8, ptr %.1178376.us416.us, i64 3 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.1176377.us415.us, i64 3 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.1174378.us414.us, i64 3 ; 2 uses
  %i.bn = add nuw i32 %.2278369.us422.us, 1       ; 2 uses
  %exitcond628.not = icmp eq i32 %i.bn, %1
  br i1 %exitcond628.not, label %._crit_edge.split.us431.us, label %bb.d, !llvm.loop !376

._crit_edge.split.us431.us:                       ; preds = %bb.f
  %i.bo = add nuw i32 %.2274397.us.us, 1          ; 2 uses
  %exitcond629.not = icmp eq i32 %i.bo, %2
  br i1 %exitcond629.not, label %.loopexit, label %.preheader324.us.us, !llvm.loop !377

.preheader324.us:                                 ; preds = %.preheader324.lr.ph.split.us, %._crit_edge.split.us.us
  %.0173407.us = phi ptr [ %i.cg, %._crit_edge.split.us.us ], [ %5, %.preheader324.lr.ph.split.us ]
  %.0175406.us = phi ptr [ %i.cf, %._crit_edge.split.us.us ], [ %4, %.preheader324.lr.ph.split.us ]
  %.0177405.us = phi ptr [ %i.ce, %._crit_edge.split.us.us ], [ %3, %.preheader324.lr.ph.split.us ]
  %.6201403.us = phi i32 [ %.8203.us.us, %._crit_edge.split.us.us ], [ 0, %.preheader324.lr.ph.split.us ]
  %.6214402.us = phi i32 [ %.8216.us.us, %._crit_edge.split.us.us ], [ 0, %.preheader324.lr.ph.split.us ]
  %.8229401.us = phi i32 [ %.11232.us.us, %._crit_edge.split.us.us ], [ 0, %.preheader324.lr.ph.split.us ]
  %.8246400.us = phi i32 [ %.11249.us.us, %._crit_edge.split.us.us ], [ %i.c, %.preheader324.lr.ph.split.us ]
  %.8263399.us = phi i32 [ %.11266.us.us, %._crit_edge.split.us.us ], [ %i.b, %.preheader324.lr.ph.split.us ]
  %.2274397.us = phi i32 [ %i.ci, %._crit_edge.split.us.us ], [ 0, %.preheader324.lr.ph.split.us ] ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.preheader324.us
  %.1174378.us.us = phi ptr [ %.0173407.us, %.preheader324.us ], [ %i.cg, %bb.i ] ; 2 uses
  %.1176377.us.us = phi ptr [ %.0175406.us, %.preheader324.us ], [ %i.cf, %bb.i ] ; 3 uses
  %.1178376.us.us = phi ptr [ %.0177405.us, %.preheader324.us ], [ %i.ce, %bb.i ] ; 3 uses
  %.7202374.us.us = phi i32 [ %.6201403.us, %.preheader324.us ], [ %.8203.us.us, %bb.i ] ; 2 uses
  %.7215373.us.us = phi i32 [ %.6214402.us, %.preheader324.us ], [ %.8216.us.us, %bb.i ] ; 2 uses
  %.9230372.us.us = phi i32 [ %.8229401.us, %.preheader324.us ], [ %.11232.us.us, %bb.i ] ; 2 uses
  %.9247371.us.us = phi i32 [ %.8246400.us, %.preheader324.us ], [ %.11249.us.us, %bb.i ] ; 2 uses
  %.9264370.us.us = phi i32 [ %.8263399.us, %.preheader324.us ], [ %.11266.us.us, %bb.i ] ; 2 uses
  %.2278369.us.us = phi i32 [ 0, %.preheader324.us ], [ %i.ch, %bb.i ] ; 3 uses
  %i.bp = getelementptr i8, ptr %.1178376.us.us, i64 1
  %i.bq = load i16, ptr %i.bp, align 1
  %i.br = zext i16 %i.bq to i32
  %i.bs = shl nuw nsw i32 %i.br, 8
  %i.bt = load i8, ptr %.1178376.us.us, align 1, !tbaa !117
  %i.bu = zext i8 %i.bt to i32
  %i.bv = or disjoint i32 %i.bs, %i.bu
  %i.bw = getelementptr i8, ptr %.1176377.us.us, i64 1
  %i.bx = load i16, ptr %i.bw, align 1
  %i.by = zext i16 %i.bx to i32
  %i.bz = shl nuw nsw i32 %i.by, 8
  %i.ca = load i8, ptr %.1176377.us.us, align 1, !tbaa !117
  %i.cb = zext i8 %i.ca to i32
  %i.cc = or disjoint i32 %i.bz, %i.cb            ; 2 uses
  %.not293.us.us = icmp eq i32 %i.bv, %i.cc
  br i1 %.not293.us.us, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cd = add i32 %.7202374.us.us, 1
  %.10265.us.us = tail call i32 @llvm.umin.i32(i32 %.2278369.us.us, i32 %.9264370.us.us)
  %.10231.us.us = tail call i32 @llvm.umax.i32(i32 %.2278369.us.us, i32 %.9230372.us.us)
  %.10248.us.us = tail call i32 @llvm.umin.i32(i32 %.2274397.us, i32 %.9247371.us.us)
  %spec.select306.us.us = tail call i32 @llvm.umax.i32(i32 %.2274397.us, i32 %.7215373.us.us)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.11266.us.us = phi i32 [ %.9264370.us.us, %bb.g ], [ %.10265.us.us, %bb.h ] ; 3 uses
  %.11249.us.us = phi i32 [ %.9247371.us.us, %bb.g ], [ %.10248.us.us, %bb.h ] ; 3 uses
  %.11232.us.us = phi i32 [ %.9230372.us.us, %bb.g ], [ %.10231.us.us, %bb.h ] ; 3 uses
  %.8216.us.us = phi i32 [ %.7215373.us.us, %bb.g ], [ %spec.select306.us.us, %bb.h ] ; 3 uses
  %.8203.us.us = phi i32 [ %.7202374.us.us, %bb.g ], [ %i.cd, %bb.h ] ; 3 uses
  %.0172.us.us = phi i32 [ %10, %bb.g ], [ %i.cc, %bb.h ]
  %.0.extract.trunc.us.us = trunc i32 %.0172.us.us to i24
  store i24 %.0.extract.trunc.us.us, ptr %.1174378.us.us, align 1
  %i.ce = getelementptr inbounds nuw i8, ptr %.1178376.us.us, i64 3 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.1176377.us.us, i64 3 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.1174378.us.us, i64 3 ; 2 uses
  %i.ch = add nuw i32 %.2278369.us.us, 1          ; 2 uses
  %exitcond626.not = icmp eq i32 %i.ch, %1
  br i1 %exitcond626.not, label %._crit_edge.split.us.us, label %bb.g, !llvm.loop !376

._crit_edge.split.us.us:                          ; preds = %bb.i
  %i.ci = add nuw i32 %.2274397.us, 1             ; 2 uses
  %exitcond627.not = icmp eq i32 %i.ci, %2
  br i1 %exitcond627.not, label %.loopexit, label %.preheader324.us, !llvm.loop !377

.preheader322:                                    ; preds = %bb.a
  %.not595 = icmp eq i32 %2, 0
  %.not596 = icmp eq i32 %1, 0
  %or.cond688 = or i1 %.not595, %.not596
  br i1 %or.cond688, label %.thread, label %.preheader321.us.preheader

.preheader321.us.preheader:                       ; preds = %.preheader322
  %i.cj = zext i32 %i.b to i64
  %i.ck = shl nuw nsw i64 %i.cj, 1                ; 2 uses
  %i.cl = sub nuw nsw i64 -2, %i.ck
  %i.cm = zext i32 %1 to i64                      ; 2 uses
  %min.iters.check749 = icmp ult i32 %1, 4
  %n.vec751 = and i64 %i.cm, 4294967292           ; 4 uses
  %i.cn = shl nuw nsw i64 %n.vec751, 1            ; 3 uses
  %i.co = trunc nuw i64 %n.vec751 to i32
  %cmp.n787 = icmp eq i64 %n.vec751, %i.cm
  br label %.preheader321.us

.preheader321.us:                                 ; preds = %.preheader321.us.preheader, %._crit_edge.us492
  %indvar742 = phi i64 [ 0, %.preheader321.us.preheader ], [ %indvar.next743, %._crit_edge.us492 ] ; 2 uses
  %.0180485.us = phi ptr [ %5, %.preheader321.us.preheader ], [ %.lcssa698, %._crit_edge.us492 ] ; 5 uses
  %.0182484.us = phi ptr [ %4, %.preheader321.us.preheader ], [ %.lcssa697, %._crit_edge.us492 ] ; 5 uses
  %.0184483.us = phi ptr [ %3, %.preheader321.us.preheader ], [ %scevgep630, %._crit_edge.us492 ] ; 5 uses
  %.4482.us = phi i32 [ %spec.store.select, %.preheader321.us.preheader ], [ %.7.us.lcssa, %._crit_edge.us492 ] ; 3 uses
  %.3198481.us = phi i32 [ 0, %.preheader321.us.preheader ], [ %.5200.us.lcssa, %._crit_edge.us492 ] ; 3 uses
  %.3211480.us = phi i32 [ 0, %.preheader321.us.preheader ], [ %.5213.us.lcssa, %._crit_edge.us492 ] ; 3 uses
  %.4225479.us = phi i32 [ 0, %.preheader321.us.preheader ], [ %.7228.us.lcssa, %._crit_edge.us492 ] ; 3 uses
  %.4242478.us = phi i32 [ %i.c, %.preheader321.us.preheader ], [ %.7245.us.lcssa, %._crit_edge.us492 ] ; 3 uses
  %.4259477.us = phi i32 [ %i.b, %.preheader321.us.preheader ], [ %.7262.us.lcssa, %._crit_edge.us492 ] ; 3 uses
  %.1273476.us = phi i32 [ 0, %.preheader321.us.preheader ], [ %i.dz, %._crit_edge.us492 ] ; 4 uses
  br i1 %min.iters.check749, label %scalar.ph748.preheader, label %vector.memcheck740

vector.memcheck740:                               ; preds = %.preheader321.us
  %.0182484.us745 = ptrtoaddr ptr %.0182484.us to i64
  %i.cp = mul i64 %i.cl, %indvar742
  %i.cq = sub i64 %i.cp, %i.a
  %.0180485.us741 = ptrtoaddr ptr %.0180485.us to i64 ; 2 uses
  %i.cr = add i64 %i.cq, %.0180485.us741
  %i.cs = add i64 %i.cr, -1
  %diff.check744 = icmp ult i64 %i.cs, 7
  %i.ct = sub i64 %.0182484.us745, %.0180485.us741
  %diff.check746 = icmp ugt i64 %i.ct, -8
  %conflict.rdx747 = or i1 %diff.check744, %diff.check746
  br i1 %conflict.rdx747, label %scalar.ph748.preheader, label %vector.ph750

vector.ph750:                                     ; preds = %vector.memcheck740
  %i.cu = getelementptr i8, ptr %.0180485.us, i64 %i.cn ; 2 uses
  %i.cv = getelementptr i8, ptr %.0182484.us, i64 %i.cn ; 2 uses
  %i.cw = getelementptr i8, ptr %.0184483.us, i64 %i.cn
  %i.cx = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.3198481.us, i64 0
  %broadcast.splatinsert752 = insertelement <4 x i32> poison, i32 %.3211480.us, i64 0
  %broadcast.splat753 = shufflevector <4 x i32> %broadcast.splatinsert752, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert754 = insertelement <4 x i32> poison, i32 %.4225479.us, i64 0
  %broadcast.splat755 = shufflevector <4 x i32> %broadcast.splatinsert754, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert756 = insertelement <4 x i32> poison, i32 %.4242478.us, i64 0
  %broadcast.splat757 = shufflevector <4 x i32> %broadcast.splatinsert756, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert758 = insertelement <4 x i32> poison, i32 %.4259477.us, i64 0
  %broadcast.splat759 = shufflevector <4 x i32> %broadcast.splatinsert758, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert760 = insertelement <4 x i32> poison, i32 %.1273476.us, i64 0
  %broadcast.splat761 = shufflevector <4 x i32> %broadcast.splatinsert760, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body762

vector.body762:                                   ; preds = %vector.body762, %vector.ph750
  %index763 = phi i64 [ 0, %vector.ph750 ], [ %index.next783, %vector.body762 ] ; 2 uses
  %vec.phi764 = phi <4 x i1> [ zeroinitializer, %vector.ph750 ], [ %predphi781, %vector.body762 ]
  %vec.phi765 = phi <4 x i32> [ %i.cx, %vector.ph750 ], [ %predphi780, %vector.body762 ]
  %vec.phi766 = phi <4 x i32> [ %broadcast.splat753, %vector.ph750 ], [ %predphi779, %vector.body762 ] ; 2 uses
  %vec.phi767 = phi <4 x i32> [ %broadcast.splat755, %vector.ph750 ], [ %predphi778, %vector.body762 ] ; 2 uses
  %vec.phi768 = phi <4 x i32> [ %broadcast.splat757, %vector.ph750 ], [ %predphi777, %vector.body762 ] ; 2 uses
  %vec.phi769 = phi <4 x i32> [ %broadcast.splat759, %vector.ph750 ], [ %predphi776, %vector.body762 ] ; 2 uses
  %vec.ind770 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph750 ], [ %vec.ind.next784, %vector.body762 ] ; 3 uses
  %i.cy = shl i64 %index763, 1                    ; 3 uses
  %next.gep771 = getelementptr i8, ptr %.0180485.us, i64 %i.cy
end_hunk_0
