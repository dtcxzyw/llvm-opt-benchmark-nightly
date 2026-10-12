Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/xtc2?download=true
inline.NumInlined: 79
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 37
begin_hunk_0_@Ptngc_pack_array_xtc2:bb.a
  %i.an = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %strided.vec1002, <8 x i32> %vec.phi) ; 2 uses
  %i.ao = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %strided.vec1006, <8 x i32> %vec.phi990) ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !20

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.an, <8 x i32> %i.ao)
  %i.aq = tail call i32 @llvm.vector.reduce.smin.v8i32(<8 x i32> %rdx.minmax) ; 3 uses
  %rdx.minmax1007 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.aj, <8 x i32> %i.ak)
  %i.ar = tail call i32 @llvm.vector.reduce.smin.v8i32(<8 x i32> %rdx.minmax1007) ; 3 uses
  %rdx.minmax1008 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.af, <8 x i32> %i.ag)
  %i.as = tail call i32 @llvm.vector.reduce.smin.v8i32(<8 x i32> %rdx.minmax1008) ; 3 uses
  %rdx.minmax1009 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.al, <8 x i32> %i.am)
  %i.at = tail call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax1009) ; 3 uses
  %rdx.minmax1010 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ah, <8 x i32> %i.ai)
  %i.au = tail call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax1010) ; 3 uses
  %rdx.minmax1011 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ad, <8 x i32> %i.ae)
  %i.av = tail call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax1011) ; 3 uses
  %cmp.n = icmp eq i64 %i.w, %n.vec
  %i.aw = insertelement <2 x i32> poison, i32 %i.as, i64 0
  %i.ax = insertelement <2 x i32> %i.aw, i32 %i.ar, i64 1 ; 2 uses
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.x, 0
  br i1 %min.epilog.iters.check, label %.preheader646.preheader, label %vec.epilog.ph, !prof !46

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.aq, %vec.epilog.iter.check ], [ %i.s, %vector.main.loop.iter.check ]
  %bc.merge.rdx1012 = phi i32 [ %i.ar, %vec.epilog.iter.check ], [ %i.v, %vector.main.loop.iter.check ]
  %bc.merge.rdx1013 = phi i32 [ %i.as, %vec.epilog.iter.check ], [ %i.u, %vector.main.loop.iter.check ]
  %bc.merge.rdx1014 = phi i32 [ %i.at, %vec.epilog.iter.check ], [ %i.s, %vector.main.loop.iter.check ]
  %bc.merge.rdx1015 = phi i32 [ %i.au, %vec.epilog.iter.check ], [ %i.v, %vector.main.loop.iter.check ]
  %bc.merge.rdx1016 = phi i32 [ %i.av, %vec.epilog.iter.check ], [ %i.u, %vector.main.loop.iter.check ]
  %n.vec1017 = and i64 %i.w, -4                   ; 3 uses
  %i.ay = or disjoint i64 %n.vec1017, 1
  %broadcast.splatinsert1018 = insertelement <4 x i32> poison, i32 %bc.merge.rdx, i64 0
  %broadcast.splat1019 = shufflevector <4 x i32> %broadcast.splatinsert1018, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1020 = insertelement <4 x i32> poison, i32 %bc.merge.rdx1012, i64 0
  %broadcast.splat1021 = shufflevector <4 x i32> %broadcast.splatinsert1020, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1022 = insertelement <4 x i32> poison, i32 %bc.merge.rdx1013, i64 0
  %broadcast.splat1023 = shufflevector <4 x i32> %broadcast.splatinsert1022, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1024 = insertelement <4 x i32> poison, i32 %bc.merge.rdx1014, i64 0
  %broadcast.splat1025 = shufflevector <4 x i32> %broadcast.splatinsert1024, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1026 = insertelement <4 x i32> poison, i32 %bc.merge.rdx1015, i64 0
  %broadcast.splat1027 = shufflevector <4 x i32> %broadcast.splatinsert1026, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1028 = insertelement <4 x i32> poison, i32 %bc.merge.rdx1016, i64 0
  %broadcast.splat1029 = shufflevector <4 x i32> %broadcast.splatinsert1028, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1030 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1041, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi1031 = phi <4 x i32> [ %broadcast.splat1019, %vec.epilog.ph ], [ %i.bg, %vec.epilog.vector.body ]
  %vec.phi1032 = phi <4 x i32> [ %broadcast.splat1021, %vec.epilog.ph ], [ %i.be, %vec.epilog.vector.body ]
  %vec.phi1033 = phi <4 x i32> [ %broadcast.splat1023, %vec.epilog.ph ], [ %i.bc, %vec.epilog.vector.body ]
  %vec.phi1034 = phi <4 x i32> [ %broadcast.splat1025, %vec.epilog.ph ], [ %i.bf, %vec.epilog.vector.body ]
  %vec.phi1035 = phi <4 x i32> [ %broadcast.splat1027, %vec.epilog.ph ], [ %i.bd, %vec.epilog.vector.body ]
  %vec.phi1036 = phi <4 x i32> [ %broadcast.splat1029, %vec.epilog.ph ], [ %i.bb, %vec.epilog.vector.body ]
  %.idx1293 = mul nuw i64 %index1030, 12
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 %.idx1293
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %wide.vec1037 = load <12 x i32>, ptr %i.ba, align 4, !tbaa !12 ; 3 uses
  %strided.vec1038 = shufflevector <12 x i32> %wide.vec1037, <12 x i32> poison, <4 x i32> <i32 0, i32 3, i32 6, i32 9> ; 2 uses
  %strided.vec1039 = shufflevector <12 x i32> %wide.vec1037, <12 x i32> poison, <4 x i32> <i32 1, i32 4, i32 7, i32 10> ; 2 uses
  %strided.vec1040 = shufflevector <12 x i32> %wide.vec1037, <12 x i32> poison, <4 x i32> <i32 2, i32 5, i32 8, i32 11> ; 2 uses
  %i.bb = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %strided.vec1038, <4 x i32> %vec.phi1036) ; 2 uses
  %i.bc = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %strided.vec1038, <4 x i32> %vec.phi1033) ; 2 uses
  %i.bd = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %strided.vec1039, <4 x i32> %vec.phi1035) ; 2 uses
  %i.be = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %strided.vec1039, <4 x i32> %vec.phi1032) ; 2 uses
  %i.bf = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %strided.vec1040, <4 x i32> %vec.phi1034) ; 2 uses
  %i.bg = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %strided.vec1040, <4 x i32> %vec.phi1031) ; 2 uses
  %index.next1041 = add nuw i64 %index1030, 4     ; 2 uses
  %i.bh = icmp eq i64 %index.next1041, %n.vec1017
  br i1 %i.bh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !21

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bi = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %i.bg) ; 2 uses
  %i.bj = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %i.be) ; 2 uses
  %i.bk = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %i.bc) ; 2 uses
  %i.bl = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.bf) ; 2 uses
  %i.bm = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.bd) ; 2 uses
  %i.bn = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.bb) ; 2 uses
  %cmp.n1042 = icmp eq i64 %i.w, %n.vec1017
  %i.bo = insertelement <2 x i32> poison, i32 %i.bk, i64 0
  %i.bp = insertelement <2 x i32> %i.bo, i32 %i.bj, i64 1 ; 2 uses
  br i1 %cmp.n1042, label %._crit_edge, label %.preheader646.preheader

.preheader646.preheader:                          ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.22.0.ph = phi i32 [ %i.s, %iter.check ], [ %i.aq, %vec.epilog.iter.check ], [ %i.bi, %vec.epilog.middle.block ]
  %.sroa.10.0.ph = phi i32 [ %i.s, %iter.check ], [ %i.at, %vec.epilog.iter.check ], [ %i.bl, %vec.epilog.middle.block ]
  %.sroa.6.0.ph = phi i32 [ %i.v, %iter.check ], [ %i.au, %vec.epilog.iter.check ], [ %i.bm, %vec.epilog.middle.block ]
  %.sroa.0821.0.ph = phi i32 [ %i.u, %iter.check ], [ %i.av, %vec.epilog.iter.check ], [ %i.bn, %vec.epilog.middle.block ]
  %indvars.iv.ph = phi i64 [ 1, %iter.check ], [ %i.y, %vec.epilog.iter.check ], [ %i.ay, %vec.epilog.middle.block ]
  %.ph1333 = phi <2 x i32> [ %i.q, %iter.check ], [ %i.ax, %vec.epilog.iter.check ], [ %i.bp, %vec.epilog.middle.block ]
  br label %.preheader646

.preheader646:                                    ; preds = %.preheader646.preheader, %.preheader646
  %.sroa.22.0 = phi i32 [ %spec.store.select621.2, %.preheader646 ], [ %.sroa.22.0.ph, %.preheader646.preheader ]
  %.sroa.10.0 = phi i32 [ %spec.store.select430.2, %.preheader646 ], [ %.sroa.10.0.ph, %.preheader646.preheader ]
  %.sroa.6.0 = phi i32 [ %spec.store.select430.1, %.preheader646 ], [ %.sroa.6.0.ph, %.preheader646.preheader ]
  %.sroa.0821.0 = phi i32 [ %spec.store.select430, %.preheader646 ], [ %.sroa.0821.0.ph, %.preheader646.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader646 ], [ %indvars.iv.ph, %.preheader646.preheader ] ; 2 uses
  %i.bq = phi <2 x i32> [ %i.bw, %.preheader646 ], [ %.ph1333, %.preheader646.preheader ]
  %i.br = mul nuw nsw i64 %indvars.iv, 3          ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.br
  %i.bt = load <2 x i32>, ptr %i.bs, align 4, !tbaa !12 ; 3 uses
  %i.bu = extractelement <2 x i32> %i.bt, i64 0
  %spec.store.select430 = tail call i32 @llvm.smax.i32(i32 %i.bu, i32 %.sroa.0821.0) ; 2 uses
  %i.bv = extractelement <2 x i32> %i.bt, i64 1
  %spec.store.select430.1 = tail call i32 @llvm.smax.i32(i32 %i.bv, i32 %.sroa.6.0) ; 2 uses
  %i.bw = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.bt, <2 x i32> %i.bq) ; 4 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.br
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !12 ; 2 uses
  %spec.store.select430.2 = tail call i32 @llvm.smax.i32(i32 %i.bz, i32 %.sroa.10.0) ; 2 uses
  %spec.store.select621.2 = tail call i32 @llvm.smin.i32(i32 %i.bz, i32 %.sroa.22.0) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.preheader646, !llvm.loop !22

._crit_edge.loopexit:                             ; preds = %.preheader646
  %i.ca = extractelement <2 x i32> %i.bw, i64 1
  %i.cb = extractelement <2 x i32> %i.bw, i64 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %middle.block, %vec.epilog.middle.block, %bb.a
  %.sroa.22.1 = phi i32 [ %i.s, %bb.a ], [ %i.bi, %vec.epilog.middle.block ], [ %i.aq, %middle.block ], [ %spec.store.select621.2, %._crit_edge.loopexit ] ; 11 uses
  %.sroa.12.1 = phi i32 [ %i.v, %bb.a ], [ %i.bj, %vec.epilog.middle.block ], [ %i.ar, %middle.block ], [ %i.ca, %._crit_edge.loopexit ] ; 8 uses
  %.sroa.0825.1 = phi i32 [ %i.u, %bb.a ], [ %i.bk, %vec.epilog.middle.block ], [ %i.as, %middle.block ], [ %i.cb, %._crit_edge.loopexit ] ; 8 uses
  %.sroa.10.1 = phi i32 [ %i.s, %bb.a ], [ %i.bl, %vec.epilog.middle.block ], [ %i.at, %middle.block ], [ %spec.store.select430.2, %._crit_edge.loopexit ]
  %.sroa.6.1 = phi i32 [ %i.v, %bb.a ], [ %i.bm, %vec.epilog.middle.block ], [ %i.au, %middle.block ], [ %spec.store.select430.1, %._crit_edge.loopexit ]
  %.sroa.0821.1 = phi i32 [ %i.u, %bb.a ], [ %i.bn, %vec.epilog.middle.block ], [ %i.av, %middle.block ], [ %spec.store.select430, %._crit_edge.loopexit ]
  %i.cc = phi <2 x i32> [ %i.q, %bb.a ], [ %i.bp, %vec.epilog.middle.block ], [ %i.ax, %middle.block ], [ %i.bw, %._crit_edge.loopexit ] ; 2 uses
  %i.cd = sub nsw i32 %.sroa.0821.1, %.sroa.0825.1
  %i.ce = add nsw i32 %i.cd, 1                    ; 3 uses
  %i.cf = icmp ugt i32 %i.ce, 512
  %i.cg = icmp ugt i32 %i.ce, 104031
  %..i = select i1 %i.cg, i64 47, i64 24
  %.0.i = select i1 %i.cf, i64 %..i, i64 0
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %._crit_edge
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.b ], [ %.0.i, %._crit_edge ] ; 4 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr @magic, i64 %indvars.iv.i
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !12
  %.not.i = icmp ugt i32 %i.ci, %i.ce
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %.not.i, label %Ptngc_find_magic_index.exit, label %bb.b, !llvm.loop !0

Ptngc_find_magic_index.exit:                      ; preds = %bb.b
  %i.cj = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  store i32 %i.cj, ptr %i.f, align 4, !tbaa !12
  %i.ck = sub nsw i32 %.sroa.6.1, %.sroa.12.1
  %i.cl = add nsw i32 %i.ck, 1                    ; 3 uses
  %i.cm = icmp ugt i32 %i.cl, 512
  %i.cn = icmp ugt i32 %i.cl, 104031
  %..i454 = select i1 %i.cn, i64 47, i64 24
  %.0.i455 = select i1 %i.cm, i64 %..i454, i64 0
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %Ptngc_find_magic_index.exit
  %indvars.iv.i456 = phi i64 [ %indvars.iv.next.i458, %bb.c ], [ %.0.i455, %Ptngc_find_magic_index.exit ] ; 5 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr @magic, i64 %indvars.iv.i456
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !12
  %.not.i457 = icmp ugt i32 %i.cp, %i.cl
  %indvars.iv.next.i458 = add nuw nsw i64 %indvars.iv.i456, 1
  br i1 %.not.i457, label %Ptngc_find_magic_index.exit459, label %bb.c, !llvm.loop !0

Ptngc_find_magic_index.exit459:                   ; preds = %bb.c
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr @magic, i64 %indvars.iv.i456 ; 2 uses
  %i.cr = trunc nuw nsw i64 %indvars.iv.i456 to i32 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.cr, ptr %i.cs, align 4, !tbaa !12
  %i.ct = sub nsw i32 %.sroa.10.1, %.sroa.22.1
  %i.cu = add nsw i32 %i.ct, 1                    ; 3 uses
  %i.cv = icmp ugt i32 %i.cu, 512
  %i.cw = icmp ugt i32 %i.cu, 104031
  %..i460 = select i1 %i.cw, i64 47, i64 24
  %.0.i461 = select i1 %i.cv, i64 %..i460, i64 0
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %Ptngc_find_magic_index.exit459
  %indvars.iv.i462 = phi i64 [ %indvars.iv.next.i464, %bb.d ], [ %.0.i461, %Ptngc_find_magic_index.exit459 ] ; 4 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr @magic, i64 %indvars.iv.i462
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !12
  %.not.i463 = icmp ugt i32 %i.cy, %i.cu
  %indvars.iv.next.i464 = add nuw nsw i64 %indvars.iv.i462, 1
  br i1 %.not.i463, label %Ptngc_find_magic_index.exit465, label %bb.d, !llvm.loop !0

Ptngc_find_magic_index.exit465:                   ; preds = %bb.d
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr @magic, i64 %indvars.iv.i462 ; 2 uses
  %i.da = trunc nuw nsw i64 %indvars.iv.i462 to i32 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i32 %i.da, ptr %i.db, align 4, !tbaa !12
  %i.dc = call fastcc i32 @compute_magic_bits(ptr noundef %i.f) ; 7 uses
  %spec.select623 = tail call i64 @llvm.umax.i64(i64 %indvars.iv.i456, i64 %indvars.iv.i)
  %spec.select = trunc i64 %spec.select623 to i32
  %.1394 = tail call i32 @llvm.smax.i32(i32 %i.da, i32 %spec.select) ; 5 uses
  %3 = sdiv i32 %.1394, 2
  %4 = sext i32 %3 to i64
  %i.dd = getelementptr inbounds [4 x i8], ptr @magic, i64 %4
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !12 ; 3 uses
  %i.df = load i32, ptr %2, align 4, !tbaa !12    ; 4 uses
  %i.dg = icmp sgt i32 %i.df, 0
  br i1 %i.dg, label %.lr.ph.preheader, label %.thread904

.lr.ph.preheader:                                 ; preds = %Ptngc_find_magic_index.exit465
  %wide.trip.count745 = zext nneg i32 %i.df to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count745, 1
  %i.dh = icmp eq i32 %i.df, 1
  br i1 %i.dh, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count745, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %positive_int.exit.1, %.lr.ph.preheader.new
  %indvars.iv742 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next743.1, %positive_int.exit.1 ] ; 3 uses
  %.0395656 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %.1396.fr.1, %positive_int.exit.1 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %positive_int.exit.1 ]
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv742
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !12 ; 4 uses
  %i.dk = icmp sgt i32 %i.dj, 0
  br i1 %i.dk, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.dl = shl nuw i32 %i.dj, 1
  %i.dm = add i32 %i.dl, -1
  br label %positive_int.exit

bb.f:                                             ; preds = %.lr.ph
  %i.dn = icmp slt i32 %i.dj, 0
  br i1 %i.dn, label %bb.g, label %positive_int.exit

bb.g:                                             ; preds = %bb.f
  %i.do = xor i32 %i.dj, -1
  %i.dp = shl nuw nsw i32 %i.do, 1
  %i.dq = add nuw nsw i32 %i.dp, 2
  br label %positive_int.exit

positive_int.exit:                                ; preds = %bb.e, %bb.f, %bb.g
  %.0.i466 = phi i32 [ %i.dm, %bb.e ], [ %i.dq, %bb.g ], [ 0, %bb.f ] ; 3 uses
  %i.dr = icmp sgt i32 %.0.i466, %.0395656
  %i.ds = icmp slt i32 %.0.i466, %i.de
  %or.cond431 = select i1 %i.dr, i1 %i.ds, i1 false
  %.1396 = select i1 %or.cond431, i32 %.0.i466, i32 %.0395656
  %.1396.fr = freeze i32 %.1396                   ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv742
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !12 ; 4 uses
  %i.dw = icmp sgt i32 %i.dv, 0
  br i1 %i.dw, label %bb.j, label %bb.h

bb.h:                                             ; preds = %positive_int.exit
  %i.dx = icmp slt i32 %i.dv, 0
  br i1 %i.dx, label %bb.i, label %positive_int.exit.1

bb.i:                                             ; preds = %bb.h
  %i.dy = xor i32 %i.dv, -1
  %i.dz = shl nuw nsw i32 %i.dy, 1
  %i.ea = add nuw nsw i32 %i.dz, 2
  br label %positive_int.exit.1

bb.j:                                             ; preds = %positive_int.exit
  %i.eb = shl nuw i32 %i.dv, 1
  %i.ec = add i32 %i.eb, -1
  br label %positive_int.exit.1

positive_int.exit.1:                              ; preds = %bb.j, %bb.i, %bb.h
  %.0.i466.1 = phi i32 [ %i.ec, %bb.j ], [ %i.ea, %bb.i ], [ 0, %bb.h ] ; 3 uses
  %i.ed = icmp sgt i32 %.0.i466.1, %.1396.fr
  %i.ee = icmp slt i32 %.0.i466.1, %i.de
  %or.cond431.1 = select i1 %i.ed, i1 %i.ee, i1 false
  %.1396.1 = select i1 %or.cond431.1, i32 %.0.i466.1, i32 %.1396.fr
  %.1396.fr.1 = freeze i32 %.1396.1               ; 3 uses
  %indvars.iv.next743.1 = add nuw nsw i64 %indvars.iv742, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge658.unr-lcssa, label %.lr.ph, !llvm.loop !23

._crit_edge658.unr-lcssa:                         ; preds = %positive_int.exit.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge658, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge658.unr-lcssa, %.lr.ph.preheader
  %indvars.iv742.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next743.1, %._crit_edge658.unr-lcssa ]
  %.0395656.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %.1396.fr.1, %._crit_edge658.unr-lcssa ] ; 2 uses
  %lcmp.mod1356 = trunc i32 %i.df to i1
  tail call void @llvm.assume(i1 %lcmp.mod1356)
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv742.epil.init
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !12 ; 4 uses
  %i.eh = icmp sgt i32 %i.eg, 0
  br i1 %i.eh, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.lr.ph.epil.preheader
  %i.ei = icmp slt i32 %i.eg, 0
  br i1 %i.ei, label %bb.l, label %positive_int.exit.epil

bb.l:                                             ; preds = %bb.k
  %i.ej = xor i32 %i.eg, -1
  %i.ek = shl nuw nsw i32 %i.ej, 1
  %i.el = add nuw nsw i32 %i.ek, 2
  br label %positive_int.exit.epil

bb.m:                                             ; preds = %.lr.ph.epil.preheader
  %i.em = shl nuw i32 %i.eg, 1
  %i.en = add i32 %i.em, -1
  br label %positive_int.exit.epil

positive_int.exit.epil:                           ; preds = %bb.m, %bb.l, %bb.k
  %.0.i466.epil = phi i32 [ %i.en, %bb.m ], [ %i.el, %bb.l ], [ 0, %bb.k ] ; 3 uses
  %i.eo = icmp sgt i32 %.0.i466.epil, %.0395656.epil.init
  %i.ep = icmp slt i32 %.0.i466.epil, %i.de
  %or.cond431.epil = select i1 %i.eo, i1 %i.ep, i1 false
  %.1396.epil = select i1 %or.cond431.epil, i32 %.0.i466.epil, i32 %.0395656.epil.init
  %.1396.fr.epil = freeze i32 %.1396.epil
  br label %._crit_edge658

._crit_edge658:                                   ; preds = %._crit_edge658.unr-lcssa, %positive_int.exit.epil
  %.1396.fr.lcssa = phi i32 [ %.1396.fr.1, %._crit_edge658.unr-lcssa ], [ %.1396.fr.epil, %positive_int.exit.epil ] ; 3 uses
  %i.eq = icmp ugt i32 %.1396.fr.lcssa, 512
  %i.er = icmp ugt i32 %.1396.fr.lcssa, 104031
  %.966 = select i1 %i.er, i64 47, i64 24
  %spec.select968 = select i1 %i.eq, i64 %.966, i64 0
  br label %.thread904

.thread904:                                       ; preds = %._crit_edge658, %Ptngc_find_magic_index.exit465
  %.0395.lcssa903907 = phi i32 [ %.1396.fr.lcssa, %._crit_edge658 ], [ 0, %Ptngc_find_magic_index.exit465 ]
  %i.es = phi i64 [ %spec.select968, %._crit_edge658 ], [ 0, %Ptngc_find_magic_index.exit465 ]
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.thread904
  %indvars.iv.i469 = phi i64 [ %indvars.iv.next.i471, %bb.n ], [ %i.es, %.thread904 ] ; 3 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr @magic, i64 %indvars.iv.i469
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !12
  %.not.i470 = icmp ugt i32 %i.eu, %.0395.lcssa903907
  %indvars.iv.next.i471 = add nuw nsw i64 %indvars.iv.i469, 1
  br i1 %.not.i470, label %Ptngc_find_magic_index.exit472, label %bb.n, !llvm.loop !0

Ptngc_find_magic_index.exit472:                   ; preds = %bb.n
  %i.ev = trunc nuw nsw i64 %indvars.iv.i469 to i32 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 7 uses
  store i32 32, ptr %i.ew, align 4, !tbaa !48
  %i.ex = icmp sgt i32 %.sroa.0825.1, 0
  br i1 %i.ex, label %bb.o, label %bb.p

bb.o:                                             ; preds = %Ptngc_find_magic_index.exit472
  %i.ey = shl nuw i32 %.sroa.0825.1, 1
  %i.ez = add i32 %i.ey, -1
  br label %positive_int.exit474

bb.p:                                             ; preds = %Ptngc_find_magic_index.exit472
  %i.fa = icmp slt i32 %.sroa.0825.1, 0
  br i1 %i.fa, label %bb.q, label %positive_int.exit474

bb.q:                                             ; preds = %bb.p
  %i.fb = xor i32 %.sroa.0825.1, -1
  %i.fc = shl nuw nsw i32 %i.fb, 1
  %i.fd = add nuw nsw i32 %i.fc, 2
  br label %positive_int.exit474

positive_int.exit474:                             ; preds = %bb.o, %bb.p, %bb.q
  %.0.i473 = phi i32 [ %i.ez, %bb.o ], [ %i.fd, %bb.q ], [ 0, %bb.p ]
  store i32 %.0.i473, ptr %0, align 4, !tbaa !49
  call void @Ptngc_out8bits(ptr noundef nonnull %0, ptr noundef nonnull %i.e) #11
  store i32 32, ptr %i.ew, align 4, !tbaa !48
  %i.fe = icmp sgt i32 %.sroa.12.1, 0
  br i1 %i.fe, label %bb.r, label %bb.s

bb.r:                                             ; preds = %positive_int.exit474
  %i.ff = shl nuw i32 %.sroa.12.1, 1
  %i.fg = add i32 %i.ff, -1
  br label %positive_int.exit476

bb.s:                                             ; preds = %positive_int.exit474
  %i.fh = icmp slt i32 %.sroa.12.1, 0
  br i1 %i.fh, label %bb.t, label %positive_int.exit476

bb.t:                                             ; preds = %bb.s
  %i.fi = xor i32 %.sroa.12.1, -1
  %i.fj = shl nuw nsw i32 %i.fi, 1
  %i.fk = add nuw nsw i32 %i.fj, 2
  br label %positive_int.exit476

positive_int.exit476:                             ; preds = %bb.r, %bb.s, %bb.t
  %.0.i475 = phi i32 [ %i.fg, %bb.r ], [ %i.fk, %bb.t ], [ 0, %bb.s ]
  store i32 %.0.i475, ptr %0, align 4, !tbaa !49
  call void @Ptngc_out8bits(ptr noundef nonnull %0, ptr noundef nonnull %i.e) #11
  store i32 32, ptr %i.ew, align 4, !tbaa !48
  %i.fl = icmp sgt i32 %.sroa.22.1, 0
  br i1 %i.fl, label %bb.u, label %bb.v

bb.u:                                             ; preds = %positive_int.exit476
  %i.fm = shl nuw i32 %.sroa.22.1, 1
  %i.fn = add i32 %i.fm, -1
  br label %positive_int.exit478

bb.v:                                             ; preds = %positive_int.exit476
  %i.fo = icmp slt i32 %.sroa.22.1, 0
  br i1 %i.fo, label %bb.w, label %positive_int.exit478

end_hunk_0
