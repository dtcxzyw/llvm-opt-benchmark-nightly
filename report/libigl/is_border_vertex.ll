inline.NumInlined: 230
inline.NumDeleted: 128
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN3igl16is_border_vertexIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEESt6vectorIbSaIbEERKNS1_10MatrixBaseIT_EE:bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load <4 x i32>, ptr %i.w, align 16, !tbaa !16
  %i.y = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.r, <4 x i32> %i.x) ; 2 uses
  %.057.i.i.i.i = add nuw nsw i64 %.05779.i.i.i.i, 8 ; 2 uses
  %i.z = icmp slt i64 %.057.i.i.i.i, %i.h
  br i1 %i.z, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !17

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.h
  %i.ab = load <4 x i32>, ptr %i.aa, align 16, !tbaa !16
  %i.ac = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.p, <4 x i32> %i.ab)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i, %bb.c
  %.sroa.064.2.i.i.i.i = phi <4 x i32> [ %i.k, %bb.c ], [ %i.ac, %bb.e ], [ %i.p, %._crit_edge.i.i.i.i ]
  %i.ad = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %.sroa.064.2.i.i.i.i) ; 3 uses
  %i.ae = icmp slt i64 %i.j, %i.f
  br i1 %i.ae, label %.lr.ph84.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit

.lr.ph84.i.i.i.i.preheader:                       ; preds = %bb.f
  %i.af = shl nsw i64 %i.i, 2
  %i.ag = sub i64 %i.f, %i.af                     ; 3 uses
  %min.iters.check = icmp ult i64 %i.ag, 8
  br i1 %min.iters.check, label %.lr.ph84.i.i.i.i.preheader115, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph84.i.i.i.i.preheader
  %n.vec = and i64 %i.ag, -8                      ; 3 uses
  %i.ah = add i64 %i.j, %n.vec
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ad, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ai = getelementptr [4 x i8], ptr %i.a, i64 %i.j
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.al, %vector.body ]
  %vec.phi92 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.am, %vector.body ]
  %i.aj = getelementptr [4 x i8], ptr %i.ai, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load = load <4 x i32>, ptr %i.aj, align 4, !tbaa !19
  %wide.load93 = load <4 x i32>, ptr %i.ak, align 4, !tbaa !19
  %i.al = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %wide.load) ; 2 uses
  %i.am = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi92, <4 x i32> %wide.load93) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !20

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.al, <4 x i32> %i.am)
  %i.ao = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit, label %.lr.ph84.i.i.i.i.preheader115

.lr.ph84.i.i.i.i.preheader115:                    ; preds = %.lr.ph84.i.i.i.i.preheader, %middle.block
  %.05582.i.i.i.i.ph = phi i64 [ %i.j, %.lr.ph84.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  %.181.i.i.i.i.ph = phi i32 [ %i.ad, %.lr.ph84.i.i.i.i.preheader ], [ %i.ao, %middle.block ]
  br label %.lr.ph84.i.i.i.i

.lr.ph84.i.i.i.i:                                 ; preds = %.lr.ph84.i.i.i.i.preheader115, %.lr.ph84.i.i.i.i
  %.05582.i.i.i.i = phi i64 [ %i.as, %.lr.ph84.i.i.i.i ], [ %.05582.i.i.i.i.ph, %.lr.ph84.i.i.i.i.preheader115 ] ; 2 uses
  %.181.i.i.i.i = phi i32 [ %i.ar, %.lr.ph84.i.i.i.i ], [ %.181.i.i.i.i.ph, %.lr.ph84.i.i.i.i.preheader115 ]
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.05582.i.i.i.i
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !19
  %i.ar = call noundef i32 @llvm.smax.i32(i32 %.181.i.i.i.i, i32 %i.aq) ; 2 uses
  %i.as = add nsw i64 %.05582.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.as, %i.f
  br i1 %exitcond.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit, label %.lr.ph84.i.i.i.i, !llvm.loop !23

bb.g:                                             ; preds = %bb.b
  %i.at = load i32, ptr %i.a, align 4, !tbaa !19  ; 3 uses
  %i.au = icmp sgt i64 %i.f, 1
  br i1 %i.au, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit

.lr.ph89.i.i.i.i.preheader:                       ; preds = %bb.g
  %i.av = add nsw i64 %i.f, -1                    ; 2 uses
  %min.iters.check95 = icmp ult i64 %i.f, 9
  br i1 %min.iters.check95, label %.lr.ph89.i.i.i.i.preheader112, label %vector.ph96

vector.ph96:                                      ; preds = %.lr.ph89.i.i.i.i.preheader
  %n.vec97 = and i64 %i.av, -8                    ; 3 uses
  %i.aw = or disjoint i64 %n.vec97, 1
  %broadcast.splatinsert98 = insertelement <4 x i32> poison, i32 %i.at, i64 0
  %broadcast.splat99 = shufflevector <4 x i32> %broadcast.splatinsert98, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body100

vector.body100:                                   ; preds = %vector.body100, %vector.ph96
  %index101 = phi i64 [ 0, %vector.ph96 ], [ %index.next106, %vector.body100 ] ; 2 uses
  %vec.phi102.a = phi <4 x i32> [ %broadcast.splat99, %vector.ph96 ], [ %i.ba, %vector.body100 ]
  %vec.phi103 = phi <4 x i32> [ %broadcast.splat99, %vector.ph96 ], [ %i.bb, %vector.body100 ]
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index101 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 20
  %wide.load104.a = load <4 x i32>, ptr %i.ay, align 4, !tbaa !19
  %wide.load105 = load <4 x i32>, ptr %i.az, align 4, !tbaa !19
  %i.ba = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi102.a, <4 x i32> %wide.load104.a) ; 2 uses
  %i.bb = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi103, <4 x i32> %wide.load105) ; 2 uses
  %index.next106 = add nuw i64 %index101, 8       ; 2 uses
  %i.bc = icmp eq i64 %index.next106, %n.vec97
  br i1 %i.bc, label %middle.block107, label %vector.body100, !llvm.loop !24

middle.block107:                                  ; preds = %vector.body100
  %rdx.minmax108 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ba, <4 x i32> %i.bb)
  %i.bd = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax108) ; 2 uses
  %cmp.n109 = icmp eq i64 %i.av, %n.vec97
  br i1 %cmp.n109, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit, label %.lr.ph89.i.i.i.i.preheader112

.lr.ph89.i.i.i.i.preheader112:                    ; preds = %.lr.ph89.i.i.i.i.preheader, %middle.block107
  %.087.i.i.i.i.ph = phi i64 [ 1, %.lr.ph89.i.i.i.i.preheader ], [ %i.aw, %middle.block107 ]
  %.286.i.i.i.i.ph = phi i32 [ %i.at, %.lr.ph89.i.i.i.i.preheader ], [ %i.bd, %middle.block107 ]
  br label %.lr.ph89.i.i.i.i

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader112, %.lr.ph89.i.i.i.i
  %.087.i.i.i.i = phi i64 [ %i.bh, %.lr.ph89.i.i.i.i ], [ %.087.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader112 ] ; 2 uses
  %.286.i.i.i.i = phi i32 [ %i.bg, %.lr.ph89.i.i.i.i ], [ %.286.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader112 ]
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.087.i.i.i.i
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !19
  %i.bg = call noundef i32 @llvm.smax.i32(i32 %.286.i.i.i.i, i32 %i.bf) ; 2 uses
  %i.bh = add nuw nsw i64 %.087.i.i.i.i, 1        ; 2 uses
  %exitcond96.not.i.i.i.i = icmp eq i64 %i.bh, %i.f
  br i1 %exitcond96.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit, label %.lr.ph89.i.i.i.i, !llvm.loop !25

_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit: ; preds = %.lr.ph84.i.i.i.i, %.lr.ph89.i.i.i.i, %middle.block, %middle.block107, %bb.g, %bb.f
  %.3.i.i.i.i = phi i32 [ %i.bg, %.lr.ph89.i.i.i.i ], [ %i.at, %bb.g ], [ %i.ad, %bb.f ], [ %i.bd, %middle.block107 ], [ %i.ao, %middle.block ], [ %i.ar, %.lr.ph84.i.i.i.i ]
  %i.bi = add nsw i32 %.3.i.i.i.i, 1              ; 4 uses
  %i.bj = sext i32 %i.bi to i64                   ; 2 uses
  store ptr null, ptr %0, align 8, !tbaa !26
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 0, ptr %i.bk, align 8, !tbaa !29
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.bl, align 8, !tbaa !26
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i32 0, ptr %i.bm, align 8, !tbaa !29
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr null, ptr %i.bn, align 8, !tbaa !30
  %.not.i.i.i = icmp eq i32 %i.bi, 0
  br i1 %.not.i.i.i, label %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit
  %i.bo = add nsw i64 %i.bj, 63                   ; 2 uses
  %i.bp = lshr i64 %i.bo, 3
  %i.bq = and i64 %i.bp, 2305843009213693944
  %i.br = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bq) #8
          to label %.noexc unwind label %bb.j     ; 5 uses

.noexc:                                           ; preds = %bb.h
  %i.bs = lshr i64 %i.bo, 6                       ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bs
  store ptr %i.bt, ptr %i.bn, align 8, !tbaa !30
  store ptr %i.br, ptr %0, align 8
  store i32 0, ptr %i.bk, align 8
  %i.bu = sdiv i32 %i.bi, 64
  %.sext52 = sext i32 %i.bu to i64
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.br, i64 %.sext52
  %i.bw = and i64 %i.bj, -9223372036854775745
  %i.bx = icmp ugt i64 %i.bw, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i = select i1 %i.bx, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.bv, i64 %storemerge.idx.i.i.i.i.i.i ; 2 uses
  %i.by = and i32 %i.bi, 63                       ; 2 uses
  store ptr %storemerge.i.i.i.i.i.i, ptr %i.bl, align 8
  store i32 %i.by, ptr %i.bm, align 8
  %.idx.i.i = shl nuw nsw i64 %i.bs, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.br, i8 0, i64 %.idx.i.i, i1 false)
  %i.bz = ptrtoint ptr %storemerge.i.i.i.i.i.i to i64
  %i.ca = zext nneg i32 %i.by to i64
  br label %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit

_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit:               ; preds = %.noexc, %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit
  %i.cb = phi ptr [ %i.br, %.noexc ], [ null, %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit ] ; 4 uses
  %i.cc = phi i64 [ %i.ca, %.noexc ], [ 0, %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit ]
  %i.cd = phi i64 [ %i.bz, %.noexc ], [ 0, %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit ]
  %i.ce = ptrtoint ptr %i.cb to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = shl nsw i64 %i.cf, 3
  %i.ch = add nsw i64 %i.cg, %i.cc                ; 2 uses
  %.not = icmp eq i64 %i.ch, 0
  br i1 %.not, label %.preheader53, label %.lr.ph

.preheader53:                                     ; preds = %.lr.ph, %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit
  %i.ci = icmp sgt i64 %i.c, 0
  %.pre70 = load ptr, ptr %2, align 8             ; 2 uses
  %i.cj = icmp sgt i64 %i.e, 0
  %or.cond = and i1 %i.ci, %i.cj
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge63

.preheader.preheader:                             ; preds = %.preheader53
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %i.ck, align 8, !tbaa !14
  br label %.lr.ph61

bb.i:                                             ; preds = %bb.a
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.lr.ph:                                           ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit ] ; 3 uses
  %i.cn = lshr i64 %indvars.iv, 6
  %.zext = and i64 %i.cn, 67108863
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %.zext ; 2 uses
  %i.cp = and i64 %indvars.iv, 63
  %i.cq = shl nuw i64 1, %i.cp
  %i.cr = xor i64 %i.cq, -1
  %i.cs = load i64, ptr %i.co, align 8, !tbaa !33
  %i.ct = and i64 %i.cs, %i.cr
  store i64 %i.ct, ptr %i.co, align 8, !tbaa !33
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.cu = and i64 %indvars.iv.next, 4294967295
  %i.cv = icmp ugt i64 %i.ch, %i.cu
  br i1 %i.cv, label %.lr.ph, label %.preheader53, !llvm.loop !34

.lr.ph61:                                         ; preds = %._crit_edge, %.preheader.preheader
  %i.cw = phi i64 [ %i.da, %._crit_edge ], [ 0, %.preheader.preheader ] ; 2 uses
  %.02262 = phi i32 [ %i.cz, %._crit_edge ], [ 0, %.preheader.preheader ]
  %i.cx = getelementptr [4 x i8], ptr %.pre70, i64 %i.cw
  %i.cy = getelementptr [4 x i8], ptr %i.a, i64 %i.cw ; 2 uses
  br label %bb.k

._crit_edge:                                      ; preds = %bb.m
  %i.cz = add i32 %.02262, 1                      ; 2 uses
  %i.da = zext i32 %i.cz to i64                   ; 2 uses
  %i.db = icmp sgt i64 %i.c, %i.da
  br i1 %i.db, label %.lr.ph61, label %._crit_edge63, !llvm.loop !35

bb.k:                                             ; preds = %.lr.ph61, %bb.m
  %i.dc = phi i64 [ 0, %.lr.ph61 ], [ %.pre-phi74, %bb.m ] ; 2 uses
  %.060 = phi i32 [ 0, %.lr.ph61 ], [ %.pre-phi, %bb.m ] ; 2 uses
  %i.dd = mul nsw i64 %.pre, %i.dc
  %i.de = getelementptr [4 x i8], ptr %i.cx, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !19
  %i.dg = icmp eq i32 %i.df, -1
  br i1 %i.dg, label %bb.l, label %._crit_edge71

._crit_edge71:                                    ; preds = %bb.k
  %.pre72.a = add i32 %.060, 1                    ; 2 uses
  %.pre73 = zext i32 %.pre72.a to i64
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dh = mul nsw i64 %i.c, %i.dc
  %i.di = getelementptr [4 x i8], ptr %i.cy, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !19 ; 2 uses
  %i.dk = sext i32 %i.dj to i64                   ; 2 uses
  %i.dl = sdiv i32 %i.dj, 64
  %.sext = sext i32 %i.dl to i64
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %.sext
  %i.dn = and i64 %i.dk, -9223372036854775745
  %i.do = icmp ugt i64 %i.dn, -9223372036854775808
  %storemerge.idx.i.i.i.i.i35 = select i1 %i.do, i64 -8, i64 0
  %storemerge.i.i.i.i.i36 = getelementptr inbounds i8, ptr %i.dm, i64 %storemerge.idx.i.i.i.i.i35 ; 2 uses
  %i.dp = and i64 %i.dk, 63
  %i.dq = shl nuw i64 1, %i.dp
  %i.dr = load i64, ptr %storemerge.i.i.i.i.i36, align 8, !tbaa !33
  %i.ds = or i64 %i.dq, %i.dr
  store i64 %i.ds, ptr %storemerge.i.i.i.i.i36, align 8, !tbaa !33
  %i.dt = add i32 %.060, 1                        ; 2 uses
  %i.du = zext i32 %i.dt to i64                   ; 2 uses
  %i.dv = urem i64 %i.du, %i.e
  %i.dw = mul nuw nsw i64 %i.c, %i.dv
  %i.dx = getelementptr [4 x i8], ptr %i.cy, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !19 ; 2 uses
  %i.dz = sext i32 %i.dy to i64                   ; 2 uses
  %i.ea = sdiv i32 %i.dy, 64
  %.sext50 = sext i32 %i.ea to i64
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %.sext50
  %i.ec = and i64 %i.dz, -9223372036854775745
  %i.ed = icmp ugt i64 %i.ec, -9223372036854775808
  %storemerge.idx.i.i.i.i.i39 = select i1 %i.ed, i64 -8, i64 0
  %storemerge.i.i.i.i.i40 = getelementptr inbounds i8, ptr %i.eb, i64 %storemerge.idx.i.i.i.i.i39 ; 2 uses
  %i.ee = and i64 %i.dz, 63
  %i.ef = shl nuw i64 1, %i.ee
  %i.eg = load i64, ptr %storemerge.i.i.i.i.i40, align 8, !tbaa !33
  %i.eh = or i64 %i.ef, %i.eg
  store i64 %i.eh, ptr %storemerge.i.i.i.i.i40, align 8, !tbaa !33
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge71, %bb.l
  %.pre-phi74 = phi i64 [ %.pre73, %._crit_edge71 ], [ %i.du, %bb.l ] ; 2 uses
  %.pre-phi = phi i32 [ %.pre72.a, %._crit_edge71 ], [ %i.dt, %bb.l ]
  %i.ei = icmp sgt i64 %i.e, %.pre-phi74
  br i1 %i.ei, label %bb.k, label %._crit_edge, !llvm.loop !37

._crit_edge63:                                    ; preds = %._crit_edge, %.preheader53
  call void @free(ptr noundef %.pre70) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void

bb.n:                                             ; preds = %bb.j, %bb.i
  %.pn32.pn = phi { ptr, i32 } [ %i.cl, %bb.i ], [ %i.cm, %bb.j ]
  %i.ej = load ptr, ptr %2, align 8, !tbaa !9
  call void @free(ptr noundef %i.ej) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  resume { ptr, i32 } %.pn32.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN3igl27triangle_triangle_adjacencyIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl16is_border_vertexIN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEEEESt6vectorIbSaIbEERKNS1_10MatrixBaseIT_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::Matrix", align 8     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  invoke void @_ZN3igl27triangle_triangle_adjacencyIN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !38     ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !40   ; 10 uses
  %i.d = mul nsw i64 %i.c, 3                      ; 9 uses
  %i.e = sdiv i64 %i.d, 8
  %i.f = shl nsw i64 %i.e, 3                      ; 3 uses
  %i.g = sdiv i64 %i.d, 4                         ; 2 uses
  %i.h = shl nsw i64 %i.g, 2                      ; 5 uses
  %.off.i.i.i.i = add i64 %i.d, 3
  %.not.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 7
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load <4 x i32>, ptr %i.a, align 16, !tbaa !16 ; 3 uses
  %i.j = icmp sgt i64 %i.c, 2
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load <4 x i32>, ptr %i.k, align 16, !tbaa !16 ; 2 uses
  %i.m = icmp samesign ugt i64 %i.c, 5
  br i1 %i.m, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.d
  %.lcssa.i.i.i.i = phi <4 x i32> [ %i.l, %bb.d ], [ %i.w, %.lr.ph.i.i.i.i ]
  %.sroa.064.0.lcssa.i.i.i.i = phi <4 x i32> [ %i.i, %bb.d ], [ %i.s, %.lr.ph.i.i.i.i ]
  %i.n = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %.sroa.064.0.lcssa.i.i.i.i, <4 x i32> %.lcssa.i.i.i.i) ; 2 uses
  %i.o = icmp sgt i64 %i.h, %i.f
  br i1 %i.o, label %bb.e, label %bb.f

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.05779.i.i.i.i = phi i64 [ %.057.i.i.i.i, %.lr.ph.i.i.i.i ], [ 8, %bb.d ] ; 3 uses
  %.057.in78.i.i.i.i = phi i64 [ %.05779.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.d ]
  %.sroa.064.077.i.i.i.i = phi <4 x i32> [ %i.s, %.lr.ph.i.i.i.i ], [ %i.i, %bb.d ]
  %i.p = phi <4 x i32> [ %i.w, %.lr.ph.i.i.i.i ], [ %i.l, %bb.d ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.05779.i.i.i.i
  %i.r = load <4 x i32>, ptr %i.q, align 16, !tbaa !16
  %i.s = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %.sroa.064.077.i.i.i.i, <4 x i32> %i.r) ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.057.in78.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load <4 x i32>, ptr %i.u, align 16, !tbaa !16
  %i.w = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.p, <4 x i32> %i.v) ; 2 uses
  %.057.i.i.i.i = add nuw nsw i64 %.05779.i.i.i.i, 8 ; 2 uses
  %i.x = icmp slt i64 %.057.i.i.i.i, %i.f
  br i1 %i.x, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !41

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.f
  %i.z = load <4 x i32>, ptr %i.y, align 16, !tbaa !16
  %i.aa = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.n, <4 x i32> %i.z)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i, %bb.c
  %.sroa.064.2.i.i.i.i = phi <4 x i32> [ %i.i, %bb.c ], [ %i.aa, %bb.e ], [ %i.n, %._crit_edge.i.i.i.i ]
  %i.ab = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %.sroa.064.2.i.i.i.i) ; 3 uses
  %i.ac = icmp slt i64 %i.h, %i.d
  br i1 %i.ac, label %.lr.ph84.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE8maxCoeffEv.exit

.lr.ph84.i.i.i.i.preheader:                       ; preds = %bb.f
  %i.ad = shl nsw i64 %i.g, 2
  %i.ae = sub i64 %i.d, %i.ad                     ; 3 uses
  %min.iters.check = icmp ult i64 %i.ae, 8
  br i1 %min.iters.check, label %.lr.ph84.i.i.i.i.preheader112, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph84.i.i.i.i.preheader
  %n.vec = and i64 %i.ae, -8                      ; 3 uses
  %i.af = add i64 %i.h, %n.vec
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ab, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ag = getelementptr [4 x i8], ptr %i.a, i64 %i.h
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.aj, %vector.body ]
  %vec.phi89 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.ak, %vector.body ]
  %i.ah = getelementptr [4 x i8], ptr %i.ag, i64 %index ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %wide.load = load <4 x i32>, ptr %i.ah, align 4, !tbaa !19
  %wide.load90 = load <4 x i32>, ptr %i.ai, align 4, !tbaa !19
  %i.aj = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %wide.load) ; 2 uses
  %i.ak = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi89, <4 x i32> %wide.load90) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !42

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.aj, <4 x i32> %i.ak)
  %i.am = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE8maxCoeffEv.exit, label %.lr.ph84.i.i.i.i.preheader112

.lr.ph84.i.i.i.i.preheader112:                    ; preds = %.lr.ph84.i.i.i.i.preheader, %middle.block
  %.05582.i.i.i.i.ph = phi i64 [ %i.h, %.lr.ph84.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  %.181.i.i.i.i.ph = phi i32 [ %i.ab, %.lr.ph84.i.i.i.i.preheader ], [ %i.am, %middle.block ]
  br label %.lr.ph84.i.i.i.i

.lr.ph84.i.i.i.i:                                 ; preds = %.lr.ph84.i.i.i.i.preheader112, %.lr.ph84.i.i.i.i
  %.05582.i.i.i.i = phi i64 [ %i.aq, %.lr.ph84.i.i.i.i ], [ %.05582.i.i.i.i.ph, %.lr.ph84.i.i.i.i.preheader112 ] ; 2 uses
  %.181.i.i.i.i = phi i32 [ %i.ap, %.lr.ph84.i.i.i.i ], [ %.181.i.i.i.i.ph, %.lr.ph84.i.i.i.i.preheader112 ]
  %i.an = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.05582.i.i.i.i
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !19
  %i.ap = call noundef i32 @llvm.smax.i32(i32 %.181.i.i.i.i, i32 %i.ao) ; 2 uses
  %i.aq = add nsw i64 %.05582.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.aq, %i.d
  br i1 %exitcond.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE8maxCoeffEv.exit, label %.lr.ph84.i.i.i.i, !llvm.loop !43

bb.g:                                             ; preds = %bb.b
  %i.ar = load i32, ptr %i.a, align 4, !tbaa !19  ; 3 uses
  %i.as = icmp sgt i64 %i.c, 0
  br i1 %i.as, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE8maxCoeffEv.exit

.lr.ph89.i.i.i.i.preheader:                       ; preds = %bb.g
  %i.at = add nsw i64 %i.d, -1                    ; 2 uses
  %min.iters.check92 = icmp ult i64 %i.d, 9
  br i1 %min.iters.check92, label %.lr.ph89.i.i.i.i.preheader109, label %vector.ph93

vector.ph93:                                      ; preds = %.lr.ph89.i.i.i.i.preheader
  %n.vec94 = and i64 %i.at, -8                    ; 3 uses
  %i.au = or disjoint i64 %n.vec94, 1
  %broadcast.splatinsert95 = insertelement <4 x i32> poison, i32 %i.ar, i64 0
  %broadcast.splat96 = shufflevector <4 x i32> %broadcast.splatinsert95, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body97

vector.body97:                                    ; preds = %vector.body97, %vector.ph93
  %index98 = phi i64 [ 0, %vector.ph93 ], [ %index.next103, %vector.body97 ] ; 2 uses
  %vec.phi99 = phi <4 x i32> [ %broadcast.splat96, %vector.ph93 ], [ %i.ay, %vector.body97 ]
  %vec.phi100 = phi <4 x i32> [ %broadcast.splat96, %vector.ph93 ], [ %i.az, %vector.body97 ]
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index98 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 20
  %wide.load101 = load <4 x i32>, ptr %i.aw, align 4, !tbaa !19
  %wide.load102 = load <4 x i32>, ptr %i.ax, align 4, !tbaa !19
  %i.ay = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi99, <4 x i32> %wide.load101) ; 2 uses
  %i.az = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi100, <4 x i32> %wide.load102) ; 2 uses
  %index.next103 = add nuw i64 %index98, 8        ; 2 uses
  %i.ba = icmp eq i64 %index.next103, %n.vec94
  br i1 %i.ba, label %middle.block104, label %vector.body97, !llvm.loop !44

middle.block104:                                  ; preds = %vector.body97
  %rdx.minmax105 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ay, <4 x i32> %i.az)
  %i.bb = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax105) ; 2 uses
  %cmp.n106 = icmp eq i64 %i.at, %n.vec94
  br i1 %cmp.n106, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE8maxCoeffEv.exit, label %.lr.ph89.i.i.i.i.preheader109

.lr.ph89.i.i.i.i.preheader109:                    ; preds = %.lr.ph89.i.i.i.i.preheader, %middle.block104
  %.087.i.i.i.i.ph = phi i64 [ 1, %.lr.ph89.i.i.i.i.preheader ], [ %i.au, %middle.block104 ]
  %.286.i.i.i.i.ph = phi i32 [ %i.ar, %.lr.ph89.i.i.i.i.preheader ], [ %i.bb, %middle.block104 ]
  br label %.lr.ph89.i.i.i.i

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader109, %.lr.ph89.i.i.i.i
  %.087.i.i.i.i = phi i64 [ %i.bf, %.lr.ph89.i.i.i.i ], [ %.087.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader109 ] ; 2 uses
  %.286.i.i.i.i = phi i32 [ %i.be, %.lr.ph89.i.i.i.i ], [ %.286.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader109 ]
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.087.i.i.i.i
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !19
  %i.be = call noundef i32 @llvm.smax.i32(i32 %.286.i.i.i.i, i32 %i.bd) ; 2 uses
  %i.bf = add nuw nsw i64 %.087.i.i.i.i, 1        ; 2 uses
  %exitcond96.not.i.i.i.i = icmp eq i64 %i.bf, %i.d
  br i1 %exitcond96.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE8maxCoeffEv.exit, label %.lr.ph89.i.i.i.i, !llvm.loop !45

_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE8maxCoeffEv.exit: ; preds = %.lr.ph84.i.i.i.i, %.lr.ph89.i.i.i.i, %middle.block, %middle.block104, %bb.g, %bb.f
  %.3.i.i.i.i = phi i32 [ %i.be, %.lr.ph89.i.i.i.i ], [ %i.ar, %bb.g ], [ %i.ab, %bb.f ], [ %i.bb, %middle.block104 ], [ %i.am, %middle.block ], [ %i.ap, %.lr.ph84.i.i.i.i ]
  %i.bg = add nsw i32 %.3.i.i.i.i, 1              ; 4 uses
  %i.bh = sext i32 %i.bg to i64                   ; 2 uses
  store ptr null, ptr %0, align 8, !tbaa !26
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 0, ptr %i.bi, align 8, !tbaa !29
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.bj, align 8, !tbaa !26
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i32 0, ptr %i.bk, align 8, !tbaa !29
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr null, ptr %i.bl, align 8, !tbaa !30
  %.not.i.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i.i, label %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE8maxCoeffEv.exit
  %i.bm = add nsw i64 %i.bh, 63                   ; 2 uses
  %i.bn = lshr i64 %i.bm, 3
  %i.bo = and i64 %i.bn, 2305843009213693944
  %i.bp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bo) #8
          to label %.noexc unwind label %bb.j     ; 5 uses

.noexc:                                           ; preds = %bb.h
  %i.bq = lshr i64 %i.bm, 6                       ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bq
  store ptr %i.br, ptr %i.bl, align 8, !tbaa !30
  store ptr %i.bp, ptr %0, align 8
  store i32 0, ptr %i.bi, align 8
  %i.bs = sdiv i32 %i.bg, 64
  %.sext54 = sext i32 %i.bs to i64
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %.sext54
  %i.bu = and i64 %i.bh, -9223372036854775745
  %i.bv = icmp ugt i64 %i.bu, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i = select i1 %i.bv, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.bt, i64 %storemerge.idx.i.i.i.i.i.i ; 2 uses
  %i.bw = and i32 %i.bg, 63                       ; 2 uses
  store ptr %storemerge.i.i.i.i.i.i, ptr %i.bj, align 8
  store i32 %i.bw, ptr %i.bk, align 8
  %.idx.i.i = shl nuw nsw i64 %i.bq, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bp, i8 0, i64 %.idx.i.i, i1 false)
  %i.bx = ptrtoint ptr %storemerge.i.i.i.i.i.i to i64
  %i.by = zext nneg i32 %i.bw to i64
  br label %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit

_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit:               ; preds = %.noexc, %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE8maxCoeffEv.exit
  %i.bz = phi ptr [ %i.bp, %.noexc ], [ null, %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE8maxCoeffEv.exit ] ; 8 uses
  %i.ca = phi i64 [ %i.by, %.noexc ], [ 0, %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE8maxCoeffEv.exit ]
  %i.cb = phi i64 [ %i.bx, %.noexc ], [ 0, %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE8maxCoeffEv.exit ]
  %i.cc = ptrtoint ptr %i.bz to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = shl nsw i64 %i.cd, 3
  %i.cf = add nsw i64 %i.ce, %i.ca                ; 2 uses
  %.not = icmp eq i64 %i.cf, 0
  br i1 %.not, label %.preheader55, label %.lr.ph

.preheader55:                                     ; preds = %.lr.ph, %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit
  %i.cg = icmp sgt i64 %i.c, 0
  %.pre = load ptr, ptr %2, align 8, !tbaa !9     ; 2 uses
  br i1 %i.cg, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %.preheader55
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !14 ; 2 uses
  %.idx = shl i64 %i.c, 3
  %.idx79 = shl i64 %i.ci, 3
  %.idx80 = shl i64 %i.c, 3
  br label %.preheader

bb.i:                                             ; preds = %bb.a
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.j:                                             ; preds = %bb.h
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.lr.ph:                                           ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit ] ; 3 uses
  %i.cl = lshr i64 %indvars.iv, 6
  %.zext = and i64 %i.cl, 67108863
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %.zext ; 2 uses
  %i.cn = and i64 %indvars.iv, 63
  %i.co = shl nuw i64 1, %i.cn
  %i.cp = xor i64 %i.co, -1
  %i.cq = load i64, ptr %i.cm, align 8, !tbaa !33
  %i.cr = and i64 %i.cq, %i.cp
  store i64 %i.cr, ptr %i.cm, align 8, !tbaa !33
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.cs = and i64 %indvars.iv.next, 4294967295
  %i.ct = icmp ugt i64 %i.cf, %i.cs
  br i1 %i.ct, label %.lr.ph, label %.preheader55, !llvm.loop !46

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.p
  %i.cu = phi i64 [ 0, %.preheader.lr.ph ], [ %i.fs, %bb.p ] ; 2 uses
  %.02263 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.fr, %bb.p ]
  %i.cv = getelementptr [4 x i8], ptr %.pre, i64 %i.cu ; 3 uses
  %i.cw = getelementptr [4 x i8], ptr %i.a, i64 %i.cu ; 6 uses
  %i.cx = load i32, ptr %i.cv, align 4, !tbaa !19
  %i.cy = icmp eq i32 %i.cx, -1
  br i1 %i.cy, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.preheader
  %i.cz = load i32, ptr %i.cw, align 4, !tbaa !19 ; 2 uses
  %i.da = sext i32 %i.cz to i64                   ; 2 uses
  %i.db = sdiv i32 %i.cz, 64
  %.sext = sext i32 %i.db to i64
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %.sext
  %i.dd = and i64 %i.da, -9223372036854775745
  %i.de = icmp ugt i64 %i.dd, -9223372036854775808
  %storemerge.idx.i.i.i.i.i35 = select i1 %i.de, i64 -8, i64 0
  %storemerge.i.i.i.i.i36 = getelementptr inbounds i8, ptr %i.dc, i64 %storemerge.idx.i.i.i.i.i35 ; 2 uses
  %i.df = and i64 %i.da, 63
  %i.dg = shl nuw i64 1, %i.df
  %i.dh = load i64, ptr %storemerge.i.i.i.i.i36, align 8, !tbaa !33
  %i.di = or i64 %i.dg, %i.dh
  store i64 %i.di, ptr %storemerge.i.i.i.i.i36, align 8, !tbaa !33
  %i.dj = getelementptr [4 x i8], ptr %i.cw, i64 %i.c
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !19 ; 2 uses
  %i.dl = sext i32 %i.dk to i64                   ; 2 uses
  %i.dm = sdiv i32 %i.dk, 64
  %.sext52 = sext i32 %i.dm to i64
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %.sext52
  %i.do = and i64 %i.dl, -9223372036854775745
  %i.dp = icmp ugt i64 %i.do, -9223372036854775808
  %storemerge.idx.i.i.i.i.i39 = select i1 %i.dp, i64 -8, i64 0
  %storemerge.i.i.i.i.i40 = getelementptr inbounds i8, ptr %i.dn, i64 %storemerge.idx.i.i.i.i.i39 ; 2 uses
  %i.dq = and i64 %i.dl, 63
  %i.dr = shl nuw i64 1, %i.dq
  %i.ds = load i64, ptr %storemerge.i.i.i.i.i40, align 8, !tbaa !33
  %i.dt = or i64 %i.dr, %i.ds
  store i64 %i.dt, ptr %storemerge.i.i.i.i.i40, align 8, !tbaa !33
  br label %bb.l

bb.l:                                             ; preds = %.preheader, %bb.k
  %i.du = getelementptr [4 x i8], ptr %i.cv, i64 %i.ci
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !19
  %i.dw = icmp eq i32 %i.dv, -1
  br i1 %i.dw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dx = getelementptr [4 x i8], ptr %i.cw, i64 %i.c
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !19 ; 2 uses
  %i.dz = sext i32 %i.dy to i64                   ; 2 uses
  %i.ea = sdiv i32 %i.dy, 64
  %.sext.1 = sext i32 %i.ea to i64
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %.sext.1
  %i.ec = and i64 %i.dz, -9223372036854775745
  %i.ed = icmp ugt i64 %i.ec, -9223372036854775808
  %storemerge.idx.i.i.i.i.i35.1 = select i1 %i.ed, i64 -8, i64 0
  %storemerge.i.i.i.i.i36.1 = getelementptr inbounds i8, ptr %i.eb, i64 %storemerge.idx.i.i.i.i.i35.1 ; 2 uses
  %i.ee = and i64 %i.dz, 63
  %i.ef = shl nuw i64 1, %i.ee
  %i.eg = load i64, ptr %storemerge.i.i.i.i.i36.1, align 8, !tbaa !33
  %i.eh = or i64 %i.ef, %i.eg
  store i64 %i.eh, ptr %storemerge.i.i.i.i.i36.1, align 8, !tbaa !33
  %i.ei = getelementptr i8, ptr %i.cw, i64 %.idx
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !19 ; 2 uses
  %i.ek = sext i32 %i.ej to i64                   ; 2 uses
  %i.el = sdiv i32 %i.ej, 64
  %.sext52.1 = sext i32 %i.el to i64
  %i.em = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %.sext52.1
  %i.en = and i64 %i.ek, -9223372036854775745
  %i.eo = icmp ugt i64 %i.en, -9223372036854775808
  %storemerge.idx.i.i.i.i.i39.1 = select i1 %i.eo, i64 -8, i64 0
  %storemerge.i.i.i.i.i40.1 = getelementptr inbounds i8, ptr %i.em, i64 %storemerge.idx.i.i.i.i.i39.1 ; 2 uses
  %i.ep = and i64 %i.ek, 63
  %i.eq = shl nuw i64 1, %i.ep
  %i.er = load i64, ptr %storemerge.i.i.i.i.i40.1, align 8, !tbaa !33
  %i.es = or i64 %i.eq, %i.er
  store i64 %i.es, ptr %storemerge.i.i.i.i.i40.1, align 8, !tbaa !33
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.et = getelementptr i8, ptr %i.cv, i64 %.idx79
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !19
  %i.ev = icmp eq i32 %i.eu, -1
  br i1 %i.ev, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ew = getelementptr i8, ptr %i.cw, i64 %.idx80
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !19 ; 2 uses
  %i.ey = sext i32 %i.ex to i64                   ; 2 uses
  %i.ez = sdiv i32 %i.ex, 64
  %.sext.2 = sext i32 %i.ez to i64
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %.sext.2
  %i.fb = and i64 %i.ey, -9223372036854775745
  %i.fc = icmp ugt i64 %i.fb, -9223372036854775808
  %storemerge.idx.i.i.i.i.i35.2 = select i1 %i.fc, i64 -8, i64 0
  %storemerge.i.i.i.i.i36.2 = getelementptr inbounds i8, ptr %i.fa, i64 %storemerge.idx.i.i.i.i.i35.2 ; 2 uses
  %i.fd = and i64 %i.ey, 63
  %i.fe = shl nuw i64 1, %i.fd
  %i.ff = load i64, ptr %storemerge.i.i.i.i.i36.2, align 8, !tbaa !33
  %i.fg = or i64 %i.fe, %i.ff
  store i64 %i.fg, ptr %storemerge.i.i.i.i.i36.2, align 8, !tbaa !33
  %i.fh = load i32, ptr %i.cw, align 4, !tbaa !19 ; 2 uses
  %i.fi = sext i32 %i.fh to i64                   ; 2 uses
  %i.fj = sdiv i32 %i.fh, 64
  %.sext52.2 = sext i32 %i.fj to i64
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %.sext52.2
  %i.fl = and i64 %i.fi, -9223372036854775745
  %i.fm = icmp ugt i64 %i.fl, -9223372036854775808
  %storemerge.idx.i.i.i.i.i39.2 = select i1 %i.fm, i64 -8, i64 0
  %storemerge.i.i.i.i.i40.2 = getelementptr inbounds i8, ptr %i.fk, i64 %storemerge.idx.i.i.i.i.i39.2 ; 2 uses
  %i.fn = and i64 %i.fi, 63
  %i.fo = shl nuw i64 1, %i.fn
  %i.fp = load i64, ptr %storemerge.i.i.i.i.i40.2, align 8, !tbaa !33
  %i.fq = or i64 %i.fo, %i.fp
  store i64 %i.fq, ptr %storemerge.i.i.i.i.i40.2, align 8, !tbaa !33
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.fr = add i32 %.02263, 1                      ; 2 uses
  %i.fs = zext i32 %i.fr to i64                   ; 2 uses
  %i.ft = icmp samesign ugt i64 %i.c, %i.fs
  br i1 %i.ft, label %.preheader, label %._crit_edge, !llvm.loop !47

._crit_edge:                                      ; preds = %bb.p, %.preheader55
  call void @free(ptr noundef %.pre) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void

bb.q:                                             ; preds = %bb.j, %bb.i
  %.pn32.pn = phi { ptr, i32 } [ %i.cj, %bb.i ], [ %i.ck, %bb.j ]
  %i.fu = load ptr, ptr %2, align 8, !tbaa !9
  call void @free(ptr noundef %i.fu) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  resume { ptr, i32 } %.pn32.pn
}

declare void @_ZN3igl27triangle_triangle_adjacencyIN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #6

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EEE", !11, i64 0, !13, i64 8, !13, i64 16}
!11 = !{!"p1 int", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"long", !7, i64 0}
!14 = !{!10, !13, i64 8}
!15 = !{!10, !13, i64 16}
!16 = !{!7, !7, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!6, !6, i64 0}
!20 = distinct !{!20, !18, !21, !22}
!21 = !{!"llvm.loop.isvectorized", i32 1}
!22 = !{!"llvm.loop.unroll.runtime.disable"}
!23 = distinct !{!23, !18, !22, !21}
!24 = distinct !{!24, !18, !21, !22}
!25 = distinct !{!25, !18, !22, !21}
end_hunk_0
