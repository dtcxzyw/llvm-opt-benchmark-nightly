Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/adjacency_list?download=true
inline.NumInlined: 1350
inline.NumDeleted: 446
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN3igl14adjacency_listIN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEEiEEvRKNS1_10MatrixBaseIT_EERSt6vectorIS9_IT0_SaISA_EESaISC_EEb:bb.a
  %i.ac = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %.sroa.064.077.i.i.i.i, <4 x i32> %i.ab) ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.057.in78.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.af = load <4 x i32>, ptr %i.ae, align 16, !tbaa !30
  %i.ag = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.z, <4 x i32> %i.af) ; 2 uses
  %.057.i.i.i.i = add nuw nsw i64 %.05779.i.i.i.i, 8 ; 2 uses
  %i.ah = icmp slt i64 %.057.i.i.i.i, %i.p
  br i1 %i.ah, label %.lr.ph.i.i.i.i160, label %._crit_edge.i.i.i.i, !llvm.loop !57

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.p
  %i.aj = load <4 x i32>, ptr %i.ai, align 16, !tbaa !30
  %i.ak = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.x, <4 x i32> %i.aj)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i, %bb.c
  %.sroa.064.2.i.i.i.i = phi <4 x i32> [ %i.s, %bb.c ], [ %i.ak, %bb.e ], [ %i.x, %._crit_edge.i.i.i.i ]
  %i.al = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %.sroa.064.2.i.i.i.i) ; 3 uses
  %i.am = icmp slt i64 %i.r, %i.n
  br i1 %i.am, label %.lr.ph84.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEEE8maxCoeffEv.exit

.lr.ph84.i.i.i.i.preheader:                       ; preds = %bb.f
  %i.an = sub i64 %i.n, %i.r                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.an, 8
  br i1 %min.iters.check, label %.lr.ph84.i.i.i.i.preheader636, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph84.i.i.i.i.preheader
  %n.vec = and i64 %i.an, -8                      ; 3 uses
  %i.ao = add i64 %i.r, %n.vec
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.al, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ap = getelementptr [4 x i8], ptr %i.k, i64 %i.r
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.as, %vector.body ]
  %vec.phi594 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.at, %vector.body ]
  %i.aq = getelementptr [4 x i8], ptr %i.ap, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %wide.load = load <4 x i32>, ptr %i.aq, align 4, !tbaa !31
  %wide.load595 = load <4 x i32>, ptr %i.ar, align 4, !tbaa !31
  %i.as = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %wide.load) ; 2 uses
  %i.at = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi594, <4 x i32> %wide.load595) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !58

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.as, <4 x i32> %i.at)
  %i.av = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEEE8maxCoeffEv.exit, label %.lr.ph84.i.i.i.i.preheader636

.lr.ph84.i.i.i.i.preheader636:                    ; preds = %.lr.ph84.i.i.i.i.preheader, %middle.block
  %.05582.i.i.i.i.ph = phi i64 [ %i.r, %.lr.ph84.i.i.i.i.preheader ], [ %i.ao, %middle.block ]
  %.181.i.i.i.i.ph = phi i32 [ %i.al, %.lr.ph84.i.i.i.i.preheader ], [ %i.av, %middle.block ]
  br label %.lr.ph84.i.i.i.i

.lr.ph84.i.i.i.i:                                 ; preds = %.lr.ph84.i.i.i.i.preheader636, %.lr.ph84.i.i.i.i
  %.05582.i.i.i.i = phi i64 [ %i.az, %.lr.ph84.i.i.i.i ], [ %.05582.i.i.i.i.ph, %.lr.ph84.i.i.i.i.preheader636 ] ; 2 uses
  %.181.i.i.i.i = phi i32 [ %i.ay, %.lr.ph84.i.i.i.i ], [ %.181.i.i.i.i.ph, %.lr.ph84.i.i.i.i.preheader636 ]
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.k, i64 %.05582.i.i.i.i
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !31
  %i.ay = tail call noundef i32 @llvm.smax.i32(i32 %.181.i.i.i.i, i32 %i.ax) ; 2 uses
  %i.az = add nsw i64 %.05582.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.az, %i.n
  br i1 %exitcond.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEEE8maxCoeffEv.exit, label %.lr.ph84.i.i.i.i, !llvm.loop !59

bb.g:                                             ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE5clearEv.exit
  %i.ba = load i32, ptr %i.k, align 4, !tbaa !31  ; 3 uses
  %i.bb = icmp sgt i64 %i.m, 0
  br i1 %i.bb, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEEE8maxCoeffEv.exit

.lr.ph89.i.i.i.i.preheader:                       ; preds = %bb.g
  %min.iters.check597 = icmp ult i64 %i.n, 9
  br i1 %min.iters.check597, label %.lr.ph89.i.i.i.i.preheader632, label %vector.ph598

vector.ph598:                                     ; preds = %.lr.ph89.i.i.i.i.preheader
  %i.bc = add nsw i64 %i.n, -2
  %n.vec599 = and i64 %i.bc, -8                   ; 2 uses
  %i.bd = or disjoint i64 %n.vec599, 1
  %broadcast.splatinsert600 = insertelement <4 x i32> poison, i32 %i.ba, i64 0
  %broadcast.splat601 = shufflevector <4 x i32> %broadcast.splatinsert600, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body602

vector.body602:                                   ; preds = %vector.body602, %vector.ph598
  %index603 = phi i64 [ 0, %vector.ph598 ], [ %index.next608, %vector.body602 ] ; 2 uses
  %vec.phi604 = phi <4 x i32> [ %broadcast.splat601, %vector.ph598 ], [ %i.bh, %vector.body602 ]
  %vec.phi605 = phi <4 x i32> [ %broadcast.splat601, %vector.ph598 ], [ %i.bi, %vector.body602 ]
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index603 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 20
  %wide.load606 = load <4 x i32>, ptr %i.bf, align 4, !tbaa !31
  %wide.load607 = load <4 x i32>, ptr %i.bg, align 4, !tbaa !31
  %i.bh = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi604, <4 x i32> %wide.load606) ; 2 uses
  %i.bi = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi605, <4 x i32> %wide.load607) ; 2 uses
  %index.next608 = add nuw i64 %index603, 8       ; 2 uses
  %i.bj = icmp eq i64 %index.next608, %n.vec599
  br i1 %i.bj, label %middle.block609, label %vector.body602, !llvm.loop !60

middle.block609:                                  ; preds = %vector.body602
  %rdx.minmax610 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.bh, <4 x i32> %i.bi)
  %i.bk = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax610)
  br label %.lr.ph89.i.i.i.i.preheader632

.lr.ph89.i.i.i.i.preheader632:                    ; preds = %middle.block609, %.lr.ph89.i.i.i.i.preheader
  %.087.i.i.i.i.ph = phi i64 [ 1, %.lr.ph89.i.i.i.i.preheader ], [ %i.bd, %middle.block609 ]
  %.286.i.i.i.i.ph = phi i32 [ %i.ba, %.lr.ph89.i.i.i.i.preheader ], [ %i.bk, %middle.block609 ]
  br label %.lr.ph89.i.i.i.i

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader632, %.lr.ph89.i.i.i.i
  %.087.i.i.i.i = phi i64 [ %i.bo, %.lr.ph89.i.i.i.i ], [ %.087.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader632 ] ; 2 uses
  %.286.i.i.i.i = phi i32 [ %i.bn, %.lr.ph89.i.i.i.i ], [ %.286.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader632 ]
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.087.i.i.i.i
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !31
  %i.bn = tail call noundef i32 @llvm.smax.i32(i32 %.286.i.i.i.i, i32 %i.bm) ; 2 uses
  %i.bo = add nuw nsw i64 %.087.i.i.i.i, 1        ; 2 uses
  %exitcond96.not.i.i.i.i = icmp eq i64 %i.bo, %i.n
  br i1 %exitcond96.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEEE8maxCoeffEv.exit, label %.lr.ph89.i.i.i.i, !llvm.loop !61

_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEEE8maxCoeffEv.exit: ; preds = %.lr.ph84.i.i.i.i, %.lr.ph89.i.i.i.i, %middle.block, %bb.f, %bb.g
  %.3.i.i.i.i = phi i32 [ %i.bn, %.lr.ph89.i.i.i.i ], [ %i.ba, %bb.g ], [ %i.al, %bb.f ], [ %i.av, %middle.block ], [ %i.ay, %.lr.ph84.i.i.i.i ]
  %i.bp = add nsw i32 %.3.i.i.i.i, 1
  %i.bq = sext i32 %i.bp to i64                   ; 4 uses
  %i.br = load ptr, ptr %1, align 8, !tbaa !22    ; 2 uses
  %i.bs = ptrtoint ptr %i.a to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = sdiv exact i64 %i.bu, 24                ; 3 uses
  %i.bw = icmp ult i64 %i.bv, %i.bq
  br i1 %i.bw, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEEE8maxCoeffEv.exit
  %i.bx = sub nuw nsw i64 %i.bq, %i.bv
  tail call void @_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.bx)
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEm.exit

bb.i:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEEE8maxCoeffEv.exit
  %i.by = icmp ugt i64 %i.bv, %i.bq
  br i1 %i.by, label %bb.j, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEm.exit

bb.j:                                             ; preds = %bb.i
  %i.bz = getelementptr inbounds nuw [24 x i8], ptr %i.br, i64 %i.bq ; 3 uses
  %.not.i.i161 = icmp eq ptr %i.a, %i.bz
  br i1 %.not.i.i161, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEm.exit, label %.lr.ph.i.i.i.i162

.lr.ph.i.i.i.i162:                                ; preds = %bb.j, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i165
  %.05.i.i.i.i163 = phi ptr [ %i.cg, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i165 ], [ %i.bz, %bb.j ] ; 3 uses
  %i.ca = load ptr, ptr %.05.i.i.i.i163, align 8, !tbaa !26 ; 3 uses
  %.not.i.i.i.i.i.i.i.i164 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i.i.i.i.i164, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i165, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i162
  %i.cb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i163, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !27
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %i.ca to i64
  %i.cf = sub i64 %i.cd, %i.ce
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ca, i64 noundef %i.cf) #15
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i165

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i165: ; preds = %bb.k, %.lr.ph.i.i.i.i162
  %i.cg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i163, i64 24 ; 2 uses
  %.not.i.i.i.i166 = icmp eq ptr %i.cg, %i.a
  br i1 %.not.i.i.i.i166, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i167, label %.lr.ph.i.i.i.i162, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i167: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i165
  store ptr %i.bz, ptr %i.b, align 8, !tbaa !23
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEm.exit

_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEm.exit:    ; preds = %bb.h, %bb.i, %bb.j, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i167
  %i.ch = load i64, ptr %i.l, align 8, !tbaa !76  ; 2 uses
  %i.ci = icmp sgt i64 %i.ch, 0
  br i1 %i.ci, label %.preheader254, label %.preheader253

.preheader254:                                    ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEm.exit, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit178.1
  %i.cj = phi i64 [ %i.hm, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit178.1 ], [ %i.ch, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEm.exit ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit178.1 ], [ 0, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEm.exit ] ; 3 uses
  %i.ck = load ptr, ptr %0, align 8, !tbaa !75
  %i.cl = getelementptr [4 x i8], ptr %i.ck, i64 %indvars.iv ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !31 ; 3 uses
  %i.cn = getelementptr [4 x i8], ptr %i.cl, i64 %i.cj
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !31 ; 3 uses
  %i.cp = sext i32 %i.cm to i64                   ; 3 uses
  %i.cq = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.cr = load ptr, ptr %1, align 8, !tbaa !22    ; 3 uses
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = sdiv exact i64 %i.cu, 24                ; 3 uses
  %.not.i.i168 = icmp ugt i64 %i.cv, %i.cp
  br i1 %.not.i.i168, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE2atEm.exit, label %bb.l

.preheader253:                                    ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit178.1, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEm.exit
  %i.cw = load ptr, ptr %i.b, align 8, !tbaa !23  ; 2 uses
  %i.cx = load ptr, ptr %1, align 8, !tbaa !22    ; 3 uses
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = sub i64 %i.cy, %i.cz                    ; 2 uses
  %i.db = sdiv exact i64 %i.da, 24
  %i.dc = trunc i64 %i.db to i32
  %i.dd = icmp sgt i32 %i.dc, 0
  br i1 %i.dd, label %.lr.ph, label %._crit_edge

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit178, %.preheader254
  %.lcssa371 = phi i64 [ %i.cp, %.preheader254 ], [ %i.fl, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit178 ]
  %.lcssa366 = phi i64 [ %i.cv, %.preheader254 ], [ %.pre-phi454, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit178 ]
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.4, i64 noundef %.lcssa371, i64 noundef %.lcssa366) #16
  unreachable

_ZNSt6vectorIS_IiSaIiEESaIS1_EE2atEm.exit:        ; preds = %.preheader254
  %i.de = getelementptr inbounds nuw [24 x i8], ptr %i.cr, i64 %i.cp ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 3 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !34 ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 16 ; 3 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !27
  %.not.i = icmp eq ptr %i.dg, %i.di
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE2atEm.exit
  store i32 %i.co, ptr %i.dg, align 4, !tbaa !31
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  store ptr %i.dj, ptr %i.df, align 8, !tbaa !34
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.n:                                             ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE2atEm.exit
  %i.dk = load ptr, ptr %i.de, align 8, !tbaa !26 ; 4 uses
  %i.dl = ptrtoint ptr %i.dg to i64
  %i.dm = ptrtoint ptr %i.dk to i64               ; 2 uses
  %i.dn = sub i64 %i.dl, %i.dm                    ; 5 uses
  %i.do = icmp eq i64 %i.dn, 9223372036854775804
  br i1 %i.do, label %bb.o, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.o:                                             ; preds = %bb.y, %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #16
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.n
  %i.dp = ashr exact i64 %i.dn, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.dp, i64 1)
  %i.dq = add nsw i64 %.sroa.speculated.i.i.i, %i.dp ; 2 uses
  %i.dr = icmp ult i64 %i.dq, %i.dp
  %i.ds = tail call i64 @llvm.umin.i64(i64 %i.dq, i64 2305843009213693951)
  %i.dt = select i1 %i.dr, i64 2305843009213693951, i64 %i.ds ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.dt, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.du = shl nuw nsw i64 %i.dt, 2
  %i.dv = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.du) #17 ; 4 uses
  %i.dw = getelementptr inbounds i8, ptr %i.dv, i64 %i.dn ; 2 uses
  store i32 %i.co, ptr %i.dw, align 4, !tbaa !31
  %i.dx = icmp sgt i64 %i.dn, 0
  br i1 %i.dx, label %bb.p, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.p:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dv, ptr align 4 %i.dk, i64 %i.dn, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.p, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  %.not.i17.i.i = icmp eq ptr %i.dk, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.dz = load ptr, ptr %i.dh, align 8, !tbaa !27
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = sub i64 %i.ea, %i.dm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %i.eb) #15
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.q, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.dv, ptr %i.de, align 8, !tbaa !26
  store ptr %i.dy, ptr %i.df, align 8, !tbaa !34
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %i.dt
  store ptr %i.ec, ptr %i.dh, align 8, !tbaa !27
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !23
  %.pre424 = load ptr, ptr %1, align 8, !tbaa !22 ; 2 uses
  %.pre439 = ptrtoint ptr %.pre to i64
  %.pre441 = ptrtoint ptr %.pre424 to i64
  %.pre443 = sub i64 %.pre439, %.pre441
  %.pre445 = sdiv exact i64 %.pre443, 24
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.m, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %.pre-phi446 = phi i64 [ %i.cv, %bb.m ], [ %.pre445, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ] ; 3 uses
  %i.ed = phi ptr [ %i.cr, %bb.m ], [ %.pre424, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ] ; 2 uses
  %i.ee = sext i32 %i.co to i64                   ; 3 uses
  %.not.i.i169 = icmp ugt i64 %.pre-phi446, %i.ee
  br i1 %.not.i.i169, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE2atEm.exit170, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %.lcssa379 = phi i64 [ %i.ee, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %i.gm, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.1 ]
  %.lcssa376 = phi i64 [ %.pre-phi446, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %.pre-phi462, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.1 ]
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.4, i64 noundef %.lcssa379, i64 noundef %.lcssa376) #16
  unreachable

_ZNSt6vectorIS_IiSaIiEESaIS1_EE2atEm.exit170:     ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.ef = getelementptr inbounds nuw [24 x i8], ptr %i.ed, i64 %i.ee ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 3 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !34 ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 16 ; 3 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !27
  %.not.i171 = icmp eq ptr %i.eh, %i.ej
  br i1 %.not.i171, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE2atEm.exit170
  store i32 %i.cm, ptr %i.eh, align 4, !tbaa !31
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  store ptr %i.ek, ptr %i.eg, align 8, !tbaa !34
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit178

bb.t:                                             ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE2atEm.exit170
  %i.el = load ptr, ptr %i.ef, align 8, !tbaa !26 ; 4 uses
  %i.em = ptrtoint ptr %i.eh to i64
  %i.en = ptrtoint ptr %i.el to i64               ; 2 uses
  %i.eo = sub i64 %i.em, %i.en                    ; 5 uses
  %i.ep = icmp eq i64 %i.eo, 9223372036854775804
  br i1 %i.ep, label %bb.u, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i172

bb.u:                                             ; preds = %bb.ac, %bb.t
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #16
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i172: ; preds = %bb.t
  %i.eq = ashr exact i64 %i.eo, 2                 ; 3 uses
  %.sroa.speculated.i.i.i173 = tail call i64 @llvm.umax.i64(i64 %i.eq, i64 1)
  %i.er = add nsw i64 %.sroa.speculated.i.i.i173, %i.eq ; 2 uses
  %i.es = icmp ult i64 %i.er, %i.eq
  %i.et = tail call i64 @llvm.umin.i64(i64 %i.er, i64 2305843009213693951)
  %i.eu = select i1 %i.es, i64 2305843009213693951, i64 %i.et ; 3 uses
  %.not.i.i.i174 = icmp ne i64 %i.eu, 0
  tail call void @llvm.assume(i1 %.not.i.i.i174)
  %i.ev = shl nuw nsw i64 %i.eu, 2
  %i.ew = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ev) #17 ; 4 uses
  %i.ex = getelementptr inbounds i8, ptr %i.ew, i64 %i.eo ; 2 uses
  store i32 %i.cm, ptr %i.ex, align 4, !tbaa !31
  %i.ey = icmp sgt i64 %i.eo, 0
  br i1 %i.ey, label %bb.v, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i175

bb.v:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i172
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ew, ptr align 4 %i.el, i64 %i.eo, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i175

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i175: ; preds = %bb.v, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i172
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  %.not.i17.i.i176 = icmp eq ptr %i.el, null
  br i1 %.not.i17.i.i176, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i177, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i175
  %i.fa = load ptr, ptr %i.ei, align 8, !tbaa !27
  %i.fb = ptrtoint ptr %i.fa to i64
  %i.fc = sub i64 %i.fb, %i.en
  tail call void @_ZdlPvm(ptr noundef nonnull %i.el, i64 noundef %i.fc) #15
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i177

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i177: ; preds = %bb.w, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i175
  store ptr %i.ew, ptr %i.ef, align 8, !tbaa !26
  store ptr %i.ez, ptr %i.eg, align 8, !tbaa !34
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.eu
  store ptr %i.fd, ptr %i.ei, align 8, !tbaa !27
  %.pre425 = load ptr, ptr %i.b, align 8, !tbaa !23
  %.pre426 = load ptr, ptr %1, align 8, !tbaa !22 ; 2 uses
  %.pre447 = ptrtoint ptr %.pre425 to i64
  %.pre449 = ptrtoint ptr %.pre426 to i64
  %.pre451 = sub i64 %.pre447, %.pre449
  %.pre453 = sdiv exact i64 %.pre451, 24
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit178

_ZNSt6vectorIiSaIiEE9push_backERKi.exit178:       ; preds = %bb.s, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i177
  %.pre-phi454 = phi i64 [ %.pre-phi446, %bb.s ], [ %.pre453, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i177 ] ; 3 uses
  %i.fe = phi ptr [ %i.ed, %bb.s ], [ %.pre426, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i177 ] ; 2 uses
  %i.ff = load ptr, ptr %0, align 8, !tbaa !75
  %i.fg = load i64, ptr %i.l, align 8, !tbaa !76
  %i.fh = getelementptr [4 x i8], ptr %i.ff, i64 %indvars.iv ; 2 uses
  %i.fi = getelementptr [4 x i8], ptr %i.fh, i64 %i.fg
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !31 ; 3 uses
  %i.fk = load i32, ptr %i.fh, align 4, !tbaa !31 ; 3 uses
  %i.fl = sext i32 %i.fj to i64                   ; 3 uses
  %.not.i.i168.1 = icmp ugt i64 %.pre-phi454, %i.fl
  br i1 %.not.i.i168.1, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE2atEm.exit.1, label %bb.l

_ZNSt6vectorIS_IiSaIiEESaIS1_EE2atEm.exit.1:      ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit178
  %i.fm = getelementptr inbounds nuw [24 x i8], ptr %i.fe, i64 %i.fl ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8 ; 3 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !34 ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 16 ; 3 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !27
  %.not.i.1 = icmp eq ptr %i.fo, %i.fq
  br i1 %.not.i.1, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE2atEm.exit.1
  store i32 %i.fk, ptr %i.fo, align 4, !tbaa !31
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 4
  store ptr %i.fr, ptr %i.fn, align 8, !tbaa !34
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.1

bb.y:                                             ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE2atEm.exit.1
  %i.fs = load ptr, ptr %i.fm, align 8, !tbaa !26 ; 4 uses
  %i.ft = ptrtoint ptr %i.fo to i64
  %i.fu = ptrtoint ptr %i.fs to i64               ; 2 uses
  %i.fv = sub i64 %i.ft, %i.fu                    ; 5 uses
  %i.fw = icmp eq i64 %i.fv, 9223372036854775804
  br i1 %i.fw, label %bb.o, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.1

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.1: ; preds = %bb.y
  %i.fx = ashr exact i64 %i.fv, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.1 = tail call i64 @llvm.umax.i64(i64 %i.fx, i64 1)
  %i.fy = add nsw i64 %.sroa.speculated.i.i.i.1, %i.fx ; 2 uses
  %i.fz = icmp ult i64 %i.fy, %i.fx
  %i.ga = tail call i64 @llvm.umin.i64(i64 %i.fy, i64 2305843009213693951)
  %i.gb = select i1 %i.fz, i64 2305843009213693951, i64 %i.ga ; 3 uses
  %.not.i.i.i.1 = icmp ne i64 %i.gb, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.1)
  %i.gc = shl nuw nsw i64 %i.gb, 2
  %i.gd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gc) #17 ; 4 uses
  %i.ge = getelementptr inbounds i8, ptr %i.gd, i64 %i.fv ; 2 uses
  store i32 %i.fk, ptr %i.ge, align 4, !tbaa !31
  %i.gf = icmp sgt i64 %i.fv, 0
  br i1 %i.gf, label %bb.z, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.1

bb.z:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gd, ptr align 4 %i.fs, i64 %i.fv, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.1

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.1: ; preds = %bb.z, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.1
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 4
  %.not.i17.i.i.1 = icmp eq ptr %i.fs, null
  br i1 %.not.i17.i.i.1, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.1, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.1
  %i.gh = load ptr, ptr %i.fp, align 8, !tbaa !27
  %i.gi = ptrtoint ptr %i.gh to i64
  %i.gj = sub i64 %i.gi, %i.fu
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fs, i64 noundef %i.gj) #15
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.1

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.1: ; preds = %bb.aa, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.1
  store ptr %i.gd, ptr %i.fm, align 8, !tbaa !26
  store ptr %i.gg, ptr %i.fn, align 8, !tbaa !34
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %i.gb
  store ptr %i.gk, ptr %i.fp, align 8, !tbaa !27
  %.pre427 = load ptr, ptr %i.b, align 8, !tbaa !23
  %.pre428 = load ptr, ptr %1, align 8, !tbaa !22 ; 2 uses
  %.pre455 = ptrtoint ptr %.pre427 to i64
  %.pre457 = ptrtoint ptr %.pre428 to i64
  %.pre459 = sub i64 %.pre455, %.pre457
  %.pre461 = sdiv exact i64 %.pre459, 24
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.1

_ZNSt6vectorIiSaIiEE9push_backERKi.exit.1:        ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.1, %bb.x
  %.pre-phi462 = phi i64 [ %.pre461, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.1 ], [ %.pre-phi454, %bb.x ] ; 2 uses
  %i.gl = phi ptr [ %.pre428, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.1 ], [ %i.fe, %bb.x ]
  %i.gm = sext i32 %i.fk to i64                   ; 3 uses
  %.not.i.i169.1 = icmp ugt i64 %.pre-phi462, %i.gm
  br i1 %.not.i.i169.1, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE2atEm.exit170.1, label %bb.r

_ZNSt6vectorIS_IiSaIiEESaIS1_EE2atEm.exit170.1:   ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.1
  %i.gn = getelementptr inbounds nuw [24 x i8], ptr %i.gl, i64 %i.gm ; 4 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8 ; 3 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !34 ; 4 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 16 ; 3 uses
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !27
  %.not.i171.1 = icmp eq ptr %i.gp, %i.gr
  br i1 %.not.i171.1, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE2atEm.exit170.1
  store i32 %i.fj, ptr %i.gp, align 4, !tbaa !31
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 4
  store ptr %i.gs, ptr %i.go, align 8, !tbaa !34
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit178.1

bb.ac:                                            ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE2atEm.exit170.1
  %i.gt = load ptr, ptr %i.gn, align 8, !tbaa !26 ; 4 uses
  %i.gu = ptrtoint ptr %i.gp to i64
  %i.gv = ptrtoint ptr %i.gt to i64               ; 2 uses
  %i.gw = sub i64 %i.gu, %i.gv                    ; 5 uses
  %i.gx = icmp eq i64 %i.gw, 9223372036854775804
  br i1 %i.gx, label %bb.u, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i172.1

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i172.1: ; preds = %bb.ac
  %i.gy = ashr exact i64 %i.gw, 2                 ; 3 uses
  %.sroa.speculated.i.i.i173.1 = tail call i64 @llvm.umax.i64(i64 %i.gy, i64 1)
  %i.gz = add nsw i64 %.sroa.speculated.i.i.i173.1, %i.gy ; 2 uses
  %i.ha = icmp ult i64 %i.gz, %i.gy
  %i.hb = tail call i64 @llvm.umin.i64(i64 %i.gz, i64 2305843009213693951)
  %i.hc = select i1 %i.ha, i64 2305843009213693951, i64 %i.hb ; 3 uses
  %.not.i.i.i174.1 = icmp ne i64 %i.hc, 0
  tail call void @llvm.assume(i1 %.not.i.i.i174.1)
  %i.hd = shl nuw nsw i64 %i.hc, 2
  %i.he = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hd) #17 ; 4 uses
  %i.hf = getelementptr inbounds i8, ptr %i.he, i64 %i.gw ; 2 uses
  store i32 %i.fj, ptr %i.hf, align 4, !tbaa !31
  %i.hg = icmp sgt i64 %i.gw, 0
  br i1 %i.hg, label %bb.ad, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i175.1

bb.ad:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i172.1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.he, ptr align 4 %i.gt, i64 %i.gw, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i175.1

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i175.1: ; preds = %bb.ad, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i172.1
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 4
  %.not.i17.i.i176.1 = icmp eq ptr %i.gt, null
  br i1 %.not.i17.i.i176.1, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i177.1, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i175.1
  %i.hi = load ptr, ptr %i.gq, align 8, !tbaa !27
  %i.hj = ptrtoint ptr %i.hi to i64
  %i.hk = sub i64 %i.hj, %i.gv
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gt, i64 noundef %i.hk) #15
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i177.1

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i177.1: ; preds = %bb.ae, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i175.1
  store ptr %i.he, ptr %i.gn, align 8, !tbaa !26
  store ptr %i.hh, ptr %i.go, align 8, !tbaa !34
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %i.hc
  store ptr %i.hl, ptr %i.gq, align 8, !tbaa !27
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit178.1

_ZNSt6vectorIiSaIiEE9push_backERKi.exit178.1:     ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i177.1, %bb.ab
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hm = load i64, ptr %i.l, align 8, !tbaa !76  ; 2 uses
  %i.hn = icmp sgt i64 %i.hm, %indvars.iv.next
  br i1 %i.hn, label %.preheader254, label %.preheader253, !llvm.loop !62

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_.exit, %.preheader253
  %.lcssa285 = phi ptr [ %i.cw, %.preheader253 ], [ %i.iu, %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_.exit ]
  %.lcssa284 = phi ptr [ %i.cx, %.preheader253 ], [ %i.it, %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_.exit ]
  %.lcssa282 = phi i64 [ %i.da, %.preheader253 ], [ %i.ix, %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_.exit ] ; 4 uses
  br i1 %2, label %bb.ai, label %bb.bq

.lr.ph:                                           ; preds = %.preheader253, %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_.exit
  %i.ho = phi ptr [ %i.it, %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_.exit ], [ %i.cx, %.preheader253 ] ; 2 uses
  %indvars.iv388 = phi i64 [ %indvars.iv.next389, %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_.exit ], [ 0, %.preheader253 ] ; 4 uses
  %i.hp = getelementptr inbounds nuw [24 x i8], ptr %i.ho, i64 %indvars.iv388 ; 2 uses
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !35 ; 4 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !35 ; 4 uses
  %.not.i.i179 = icmp eq ptr %i.hq, %i.hs
  br i1 %.not.i.i179, label %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_.exit, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit: ; preds = %.lr.ph
  %i.ht = ptrtoint ptr %i.hs to i64
  %i.hu = ptrtoint ptr %i.hq to i64
  %i.hv = sub i64 %i.ht, %i.hu
  %i.hw = ashr exact i64 %i.hv, 2
  %i.hx = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.hw, i1 true)
  %i.hy = shl nuw nsw i64 %i.hx, 1
  %i.hz = xor i64 %i.hy, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.hq, ptr %i.hs, i64 noundef %i.hz)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.hq, ptr %i.hs)
  %.pre429 = load ptr, ptr %1, align 8, !tbaa !22 ; 6 uses
  %.phi.trans.insert = getelementptr inbounds nuw [24 x i8], ptr %.pre429, i64 %indvars.iv388 ; 2 uses
  %.pre430 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !35 ; 4 uses
  %.phi.trans.insert431 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 8
  %.pre432 = load ptr, ptr %.phi.trans.insert431, align 8, !tbaa !35 ; 5 uses
  %i.ia = getelementptr inbounds nuw [24 x i8], ptr %.pre429, i64 %indvars.iv388
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %i.ic = icmp eq ptr %.pre430, %.pre432
  br i1 %i.ic, label %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit, %bb.af
  %.sroa.09.0.i.i.i = phi ptr [ %i.id, %bb.af ], [ %.pre430, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit ] ; 5 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i, i64 4 ; 3 uses
  %.not.i.i.i180 = icmp eq ptr %i.id, %.pre432
  br i1 %.not.i.i.i180, label %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_.exit, label %bb.af

bb.af:                                            ; preds = %.preheader.i.i.i
  %i.ie = load i32, ptr %.sroa.09.0.i.i.i, align 4, !tbaa !31 ; 2 uses
  %i.if = load i32, ptr %i.id, align 4, !tbaa !31
  %i.ig = icmp eq i32 %i.ie, %i.if
  br i1 %i.ig, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i, label %.preheader.i.i.i, !llvm.loop !1

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i: ; preds = %bb.af
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i, i64 8 ; 2 uses
  %.not18.i.i = icmp eq ptr %i.ih, %.pre432
  br i1 %.not18.i.i, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i, %bb.ah
  %i.ii = phi i32 [ %i.ik, %bb.ah ], [ %i.ie, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i ]
  %i.ij = phi ptr [ %i.in, %bb.ah ], [ %i.ih, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i ] ; 2 uses
  %.sroa.0.019.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.ah ], [ %.sroa.09.0.i.i.i, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i ] ; 2 uses
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !31 ; 3 uses
  %i.il = icmp eq i32 %i.ii, %i.ik
  br i1 %i.il, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i.i
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i, i64 4 ; 2 uses
  store i32 %i.ik, ptr %i.im, align 4, !tbaa !31
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph.i.i
  %.sroa.0.1.i.i = phi ptr [ %.sroa.0.019.i.i, %.lr.ph.i.i ], [ %i.im, %bb.ag ] ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.ij, i64 4 ; 2 uses
  %.not.i.i181 = icmp eq ptr %i.in, %.pre432
  br i1 %.not.i.i181, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_S7_.exit, label %.lr.ph.i.i, !llvm.loop !2

_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_S7_.exit: ; preds = %bb.ah, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.09.0.i.i.i, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i ], [ %.sroa.0.1.i.i, %bb.ah ]
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 4 ; 2 uses
  %.not.i.i182 = icmp eq ptr %i.io, %.pre432
  br i1 %.not.i.i182, label %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_S7_.exit
  %i.ip = ptrtoint ptr %i.io to i64
  %i.iq = ptrtoint ptr %.pre430 to i64
  %i.ir = sub i64 %i.ip, %i.iq
  %i.is = getelementptr inbounds i8, ptr %.pre430, i64 %i.ir
  store ptr %i.is, ptr %i.ib, align 8, !tbaa !34
  br label %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_.exit

_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_.exit: ; preds = %.preheader.i.i.i, %.lr.ph, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_S7_.exit, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i
  %i.it = phi ptr [ %i.ho, %.lr.ph ], [ %.pre429, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i ], [ %.pre429, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit ], [ %.pre429, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_S7_.exit ], [ %.pre429, %.preheader.i.i.i ] ; 3 uses
  %indvars.iv.next389 = add nuw nsw i64 %indvars.iv388, 1 ; 2 uses
  %i.iu = load ptr, ptr %i.b, align 8, !tbaa !23  ; 2 uses
  %i.iv = ptrtoint ptr %i.iu to i64
  %i.iw = ptrtoint ptr %i.it to i64
  %i.ix = sub i64 %i.iv, %i.iw                    ; 2 uses
  %i.iy = sdiv exact i64 %i.ix, 24
  %sext = shl i64 %i.iy, 32
  %i.iz = ashr exact i64 %sext, 32
  %i.ja = icmp slt i64 %indvars.iv.next389, %i.iz
  br i1 %i.ja, label %.lr.ph, label %._crit_edge, !llvm.loop !63

bb.ai:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.jb = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.not247 = icmp eq ptr %.lcssa285, %.lcssa284
  br i1 %.not247, label %_ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EE6resizeEm.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.jc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.jd = icmp ugt i64 %.lcssa282, 9223372036854775800
  br i1 %i.jd, label %bb.ak, label %_ZNKSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit.i

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #16
          to label %.noexc216 unwind label %bb.al

.noexc216:                                        ; preds = %bb.ak
  unreachable

_ZNKSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.aj
  %i.je = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.lcssa282) #17
          to label %.noexc217 unwind label %bb.al ; 4 uses

.noexc217:                                        ; preds = %_ZNKSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.je, i8 0, i64 %.lcssa282, i1 false)
  store ptr %i.je, ptr %3, align 8, !tbaa !38
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 %.lcssa282 ; 3 uses
  store ptr %i.jf, ptr %i.jb, align 8, !tbaa !39
  store ptr %i.jf, ptr %i.jc, align 8, !tbaa !40
  br label %_ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EE6resizeEm.exit

_ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EE6resizeEm.exit: ; preds = %bb.ai, %.noexc217
  %i.jg = phi ptr [ null, %bb.ai ], [ %i.jf, %.noexc217 ]
  %i.jh = phi ptr [ null, %bb.ai ], [ %i.je, %.noexc217 ] ; 2 uses
  %i.ji = load i64, ptr %i.l, align 8, !tbaa !76  ; 2 uses
  %i.jj = icmp sgt i64 %i.ji, 0
  br i1 %i.jj, label %.preheader252.lr.ph, label %.preheader250

.preheader252.lr.ph:                              ; preds = %_ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EE6resizeEm.exit
  %i.jk = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  br label %.preheader252

.preheader252:                                    ; preds = %.preheader252.lr.ph, %_ZNSt6vectorIiSaIiEED2Ev.exit.1
  %i.jm = phi ptr [ %i.jh, %.preheader252.lr.ph ], [ %i.lp, %_ZNSt6vectorIiSaIiEED2Ev.exit.1 ]
  %i.jn = phi i64 [ %i.ji, %.preheader252.lr.ph ], [ %i.mp, %_ZNSt6vectorIiSaIiEED2Ev.exit.1 ]
  %indvars.iv394 = phi i64 [ 0, %.preheader252.lr.ph ], [ %indvars.iv.next395, %_ZNSt6vectorIiSaIiEED2Ev.exit.1 ] ; 3 uses
  %i.jo = load ptr, ptr %0, align 8, !tbaa !75
  %i.jp = getelementptr [4 x i8], ptr %i.jo, i64 %indvars.iv394 ; 2 uses
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !31 ; 2 uses
  %i.jr = getelementptr [4 x i8], ptr %i.jp, i64 %i.jn
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.jt = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #17
          to label %bb.am unwind label %bb.ay     ; 4 uses

.preheader250.loopexit:                           ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.1
  %.pre435 = load ptr, ptr %i.jb, align 8, !tbaa !39
  br label %.preheader250

.preheader250:                                    ; preds = %.preheader250.loopexit, %_ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EE6resizeEm.exit
  %.pr.i = phi ptr [ %i.lp, %.preheader250.loopexit ], [ %i.jh, %_ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EE6resizeEm.exit ] ; 6 uses
  %i.ju = phi ptr [ %.pre435, %.preheader250.loopexit ], [ %i.jg, %_ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EE6resizeEm.exit ] ; 3 uses
  %i.jv = ptrtoint ptr %i.ju to i64
  %i.jw = ptrtoint ptr %.pr.i to i64              ; 2 uses
  %i.jx = sub i64 %i.jv, %i.jw
  %i.jy = sdiv exact i64 %i.jx, 24                ; 2 uses
  %i.jz = trunc i64 %i.jy to i32
  %i.ka = icmp sgt i32 %i.jz, 0
  br i1 %i.ka, label %.lr.ph341.preheader, label %._crit_edge342

.lr.ph341.preheader:                              ; preds = %.preheader250
  %i.kb = and i64 %i.jy, 2147483647
  br label %.lr.ph341

bb.al:                                            ; preds = %_ZNKSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit.i, %bb.ak
  %i.kc = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.am:                                            ; preds = %.preheader252
  store ptr %i.jt, ptr %4, align 8, !tbaa !26
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jt, i64 8 ; 2 uses
  store ptr %i.kd, ptr %i.jk, align 8, !tbaa !27
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jt, i64 4
  store ptr %i.kd, ptr %i.jl, align 8, !tbaa !34
  store i32 %i.js, ptr %i.jt, align 4, !tbaa !31
  store i32 %i.jq, ptr %i.ke, align 4, !tbaa !31
  %i.kf = sext i32 %i.jq to i64
  %i.kg = getelementptr inbounds nuw [24 x i8], ptr %i.jm, i64 %i.kf ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 8 ; 3 uses
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !23 ; 6 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !41
  %.not.i190 = icmp eq ptr %i.ki, %i.kk
  br i1 %.not.i190, label %bb.aq, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.am
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ki, i8 0, i64 24, i1 false)
  %i.kl = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #17
          to label %.noexc192 unwind label %bb.az ; 6 uses

.noexc192:                                        ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i
  store ptr %i.kl, ptr %i.ki, align 8, !tbaa !26
  %i.km = getelementptr inbounds nuw i8, ptr %i.ki, i64 8 ; 2 uses
  store ptr %i.kl, ptr %i.km, align 8, !tbaa !34
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  store ptr %i.kn, ptr %i.ko, align 8, !tbaa !27
  %i.kp = load ptr, ptr %4, align 8, !tbaa !35    ; 4 uses
  %i.kq = load ptr, ptr %i.jl, align 8, !tbaa !35
  %i.kr = ptrtoint ptr %i.kq to i64
  %i.ks = ptrtoint ptr %i.kp to i64
  %i.kt = sub i64 %i.kr, %i.ks                    ; 4 uses
  %i.ku = icmp sgt i64 %i.kt, 4
  br i1 %i.ku, label %bb.an, label %bb.ao, !prof !42

bb.an:                                            ; preds = %.noexc192
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.kl, ptr align 4 %i.kp, i64 %i.kt, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i

bb.ao:                                            ; preds = %.noexc192
  %i.kv = icmp eq i64 %i.kt, 4
  br i1 %i.kv, label %bb.ap, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i

bb.ap:                                            ; preds = %bb.ao
  %i.kw = load i32, ptr %i.kp, align 4, !tbaa !31
  store i32 %i.kw, ptr %i.kl, align 4, !tbaa !31
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i:              ; preds = %bb.ap, %bb.ao, %bb.an
  %i.kx = getelementptr inbounds i8, ptr %i.kl, i64 %i.kt
  store ptr %i.kx, ptr %i.km, align 8, !tbaa !34
  %i.ky = load ptr, ptr %i.kh, align 8, !tbaa !23
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 24
  store ptr %i.kz, ptr %i.kh, align 8, !tbaa !23
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit

bb.aq:                                            ; preds = %bb.am
  invoke void @_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.kg, ptr %i.ki, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %._ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit_crit_edge unwind label %bb.az

._ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit_crit_edge: ; preds = %bb.aq
  %.pre433 = load ptr, ptr %4, align 8, !tbaa !26
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit: ; preds = %._ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit_crit_edge, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i
  %i.la = phi ptr [ %.pre433, %._ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit_crit_edge ], [ %i.kp, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i ] ; 3 uses
  %.not.i.i.i194 = icmp eq ptr %i.la, null
  br i1 %.not.i.i.i194, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit
  %i.lb = load ptr, ptr %i.jk, align 8, !tbaa !27
  %i.lc = ptrtoint ptr %i.lb to i64
  %i.ld = ptrtoint ptr %i.la to i64
  %i.le = sub i64 %i.lc, %i.ld
  call void @_ZdlPvm(ptr noundef nonnull %i.la, i64 noundef %i.le) #15
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.lf = load ptr, ptr %0, align 8, !tbaa !75
  %i.lg = load i64, ptr %i.l, align 8, !tbaa !76
  %i.lh = getelementptr [4 x i8], ptr %i.lf, i64 %indvars.iv394 ; 2 uses
  %i.li = getelementptr [4 x i8], ptr %i.lh, i64 %i.lg
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !31 ; 2 uses
  %i.lk = load i32, ptr %i.lh, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.ll = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #17
          to label %bb.as unwind label %bb.ay     ; 4 uses

bb.as:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  store ptr %i.ll, ptr %4, align 8, !tbaa !26
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 8 ; 2 uses
  store ptr %i.lm, ptr %i.jk, align 8, !tbaa !27
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ll, i64 4
  store ptr %i.lm, ptr %i.jl, align 8, !tbaa !34
  store i32 %i.lk, ptr %i.ll, align 4, !tbaa !31
  store i32 %i.lj, ptr %i.ln, align 4, !tbaa !31
  %i.lo = sext i32 %i.lj to i64
  %i.lp = load ptr, ptr %3, align 8, !tbaa !38    ; 3 uses
  %i.lq = getelementptr inbounds nuw [24 x i8], ptr %i.lp, i64 %i.lo ; 3 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 8 ; 3 uses
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !23 ; 6 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !41
  %.not.i190.1 = icmp eq ptr %i.ls, %i.lu
  br i1 %.not.i190.1, label %bb.aw, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.1

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.1: ; preds = %bb.as
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ls, i8 0, i64 24, i1 false)
  %i.lv = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #17
          to label %.noexc192.1 unwind label %bb.az ; 6 uses

.noexc192.1:                                      ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.1
  store ptr %i.lv, ptr %i.ls, align 8, !tbaa !26
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ls, i64 8 ; 2 uses
  store ptr %i.lv, ptr %i.lw, align 8, !tbaa !34
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ls, i64 16
  store ptr %i.lx, ptr %i.ly, align 8, !tbaa !27
  %i.lz = load ptr, ptr %4, align 8, !tbaa !35    ; 4 uses
  %i.ma = load ptr, ptr %i.jl, align 8, !tbaa !35
  %i.mb = ptrtoint ptr %i.ma to i64
  %i.mc = ptrtoint ptr %i.lz to i64
  %i.md = sub i64 %i.mb, %i.mc                    ; 4 uses
  %i.me = icmp sgt i64 %i.md, 4
  br i1 %i.me, label %bb.av, label %bb.at, !prof !42

bb.at:                                            ; preds = %.noexc192.1
  %i.mf = icmp eq i64 %i.md, 4
  br i1 %i.mf, label %bb.au, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i.1

bb.au:                                            ; preds = %bb.at
  %i.mg = load i32, ptr %i.lz, align 4, !tbaa !31
  store i32 %i.mg, ptr %i.lv, align 4, !tbaa !31
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i.1

bb.av:                                            ; preds = %.noexc192.1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.lv, ptr align 4 %i.lz, i64 %i.md, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i.1

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i.1:            ; preds = %bb.av, %bb.au, %bb.at
  %i.mh = getelementptr inbounds i8, ptr %i.lv, i64 %i.md
  store ptr %i.mh, ptr %i.lw, align 8, !tbaa !34
  %i.mi = load ptr, ptr %i.lr, align 8, !tbaa !23
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 24
  store ptr %i.mj, ptr %i.lr, align 8, !tbaa !23
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit.1

bb.aw:                                            ; preds = %bb.as
  invoke void @_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.lq, ptr %i.ls, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %._ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit.1_crit_edge unwind label %bb.az

._ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit.1_crit_edge: ; preds = %bb.aw
  %.pre434 = load ptr, ptr %4, align 8, !tbaa !26
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit.1

_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit.1: ; preds = %._ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit.1_crit_edge, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i.1
  %i.mk = phi ptr [ %.pre434, %._ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit.1_crit_edge ], [ %i.lz, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i.1 ] ; 3 uses
  %.not.i.i.i194.1 = icmp eq ptr %i.mk, null
  br i1 %.not.i.i.i194.1, label %_ZNSt6vectorIiSaIiEED2Ev.exit.1, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit.1
  %i.ml = load ptr, ptr %i.jk, align 8, !tbaa !27
  %i.mm = ptrtoint ptr %i.ml to i64
  %i.mn = ptrtoint ptr %i.mk to i64
  %i.mo = sub i64 %i.mm, %i.mn
  call void @_ZdlPvm(ptr noundef nonnull %i.mk, i64 noundef %i.mo) #15
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.1

_ZNSt6vectorIiSaIiEED2Ev.exit.1:                  ; preds = %bb.ax, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit.1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %indvars.iv.next395 = add nuw nsw i64 %indvars.iv394, 1 ; 2 uses
  %i.mp = load i64, ptr %i.l, align 8, !tbaa !76  ; 2 uses
  %i.mq = icmp sgt i64 %i.mp, %indvars.iv.next395
  br i1 %i.mq, label %.preheader252, label %.preheader250.loopexit, !llvm.loop !64

bb.ay:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %.preheader252
  %i.mr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit196

bb.az:                                            ; preds = %bb.aw, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.1, %bb.aq, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i
  %i.ms = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mt = load ptr, ptr %4, align 8, !tbaa !26    ; 3 uses
  %.not.i.i.i195 = icmp eq ptr %i.mt, null
  br i1 %.not.i.i.i195, label %_ZNSt6vectorIiSaIiEED2Ev.exit196, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.mu = load ptr, ptr %i.jk, align 8, !tbaa !27
  %i.mv = ptrtoint ptr %i.mu to i64
  %i.mw = ptrtoint ptr %i.mt to i64
  %i.mx = sub i64 %i.mv, %i.mw
  call void @_ZdlPvm(ptr noundef nonnull %i.mt, i64 noundef %i.mx) #15
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit196

_ZNSt6vectorIiSaIiEED2Ev.exit196:                 ; preds = %bb.ba, %bb.az, %bb.ay
  %.pn152 = phi { ptr, i32 } [ %i.mr, %bb.ay ], [ %i.ms, %bb.az ], [ %i.ms, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %.body

._crit_edge342:                                   ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit, %.preheader250
  %.not4.i.i.i = icmp eq ptr %.pr.i, %i.ju
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIS0_IiSaIiEESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge342, %_ZSt8_DestroyISt6vectorIS0_IiSaIiEESaIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.no, %_ZSt8_DestroyISt6vectorIS0_IiSaIiEESaIS2_EEEvPT_.exit.i.i.i ], [ %.pr.i, %._crit_edge342 ] ; 5 uses
  %i.my = load ptr, ptr %.05.i.i.i, align 8, !tbaa !22 ; 3 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !23 ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.my, %i.na
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.nh, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.my, %.lr.ph.i.i.i ] ; 3 uses
  %i.nb = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8, !tbaa !26 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.nb, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.nc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 16
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !27
  %i.ne = ptrtoint ptr %i.nd to i64
  %i.nf = ptrtoint ptr %i.nb to i64
  %i.ng = sub i64 %i.ne, %i.nf
  call void @_ZdlPvm(ptr noundef nonnull %i.nb, i64 noundef %i.ng) #15
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %bb.bb, %.lr.ph.i.i.i.i.i.i.i
  %i.nh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.nh, %i.na
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %.05.i.i.i, align 8, !tbaa !22
  br label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %.lr.ph.i.i.i
  %i.ni = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.my, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.ni, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIS0_IiSaIiEESaIS2_EEEvPT_.exit.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i
  %i.nj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !41
  %i.nl = ptrtoint ptr %i.nk to i64
  %i.nm = ptrtoint ptr %i.ni to i64
  %i.nn = sub i64 %i.nl, %i.nm
  call void @_ZdlPvm(ptr noundef nonnull %i.ni, i64 noundef %i.nn) #15
  br label %_ZSt8_DestroyISt6vectorIS0_IiSaIiEESaIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIS0_IiSaIiEESaIS2_EEEvPT_.exit.i.i.i: ; preds = %bb.bc, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i
  %i.no = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i197 = icmp eq ptr %i.no, %i.ju
  br i1 %.not.i.i.i197, label %_ZSt8_DestroyIPSt6vectorIS0_IiSaIiEESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPSt6vectorIS0_IiSaIiEESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorIS0_IiSaIiEESaIS2_EEEvPT_.exit.i.i.i, %._crit_edge342
  %.not.i.i1.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EED2Ev.exit, label %bb.bd

bb.bd:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIS0_IiSaIiEESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i
  %i.np = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !40
  %i.nr = ptrtoint ptr %i.nq to i64
  %i.ns = sub i64 %i.nr, %i.jw
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %i.ns) #15
  br label %_ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EED2Ev.exit

_ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIS0_IiSaIiEESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.bq

.lr.ph341:                                        ; preds = %.lr.ph341.preheader, %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit
  %indvars.iv421 = phi i64 [ 0, %.lr.ph341.preheader ], [ %indvars.iv.next422, %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit ] ; 5 uses
  %i.nt = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.nu = load ptr, ptr %1, align 8, !tbaa !22    ; 2 uses
  %i.nv = ptrtoint ptr %i.nt to i64
  %i.nw = ptrtoint ptr %i.nu to i64
  %i.nx = sub i64 %i.nv, %i.nw
  %i.ny = sdiv exact i64 %i.nx, 24                ; 2 uses
  %.not.i.i198 = icmp ugt i64 %i.ny, %indvars.iv421
  br i1 %.not.i.i198, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %.lr.ph341
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.4, i64 noundef %indvars.iv421, i64 noundef %i.ny) #16
          to label %.noexc199 unwind label %bb.bg

.noexc199:                                        ; preds = %bb.be
  unreachable

bb.bf:                                            ; preds = %.lr.ph341
  %i.nz = getelementptr inbounds nuw [24 x i8], ptr %i.nu, i64 %indvars.iv421 ; 4 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 8 ; 2 uses
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !34
  %i.oc = load ptr, ptr %i.nz, align 8, !tbaa !26
  %i.od = icmp eq ptr %i.ob, %i.oc
  br i1 %i.od, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit, label %bb.bh

bb.bg:                                            ; preds = %bb.be
  %i.oe = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bh:                                            ; preds = %bb.bf
  %i.of = getelementptr inbounds nuw [24 x i8], ptr %.pr.i, i64 %indvars.iv421 ; 4 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 8 ; 3 uses
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !23 ; 3 uses
  %i.oi = load ptr, ptr %i.of, align 8, !tbaa !22 ; 3 uses
  %i.oj = ptrtoint ptr %i.oh to i64
  %i.ok = ptrtoint ptr %i.oi to i64
  %i.ol = sub i64 %i.oj, %i.ok                    ; 4 uses
  %.not.i.i.i.i201 = icmp eq ptr %i.oh, %i.oi
  br i1 %.not.i.i.i.i201, label %.noexc204, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.om = icmp ugt i64 %i.ol, 9223372036854775800
  br i1 %i.om, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv.exit.i.i.i.i, !prof !43

.noexc.i.i:                                       ; preds = %bb.bi
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #16
          to label %.noexc203 unwind label %.loopexit.split-lp

.noexc203:                                        ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.bi
  %i.on = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ol) #17
          to label %_ZNSt15__new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv.exit.i.i.i.i..noexc204_crit_edge unwind label %.loopexit251

_ZNSt15__new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv.exit.i.i.i.i..noexc204_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv.exit.i.i.i.i
  %.pre436 = load ptr, ptr %i.of, align 8, !tbaa !44
  %.pre437 = load ptr, ptr %i.og, align 8, !tbaa !44
  br label %.noexc204

.noexc204:                                        ; preds = %_ZNSt15__new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv.exit.i.i.i.i..noexc204_crit_edge, %bb.bh
  %i.oo = phi ptr [ %i.oh, %bb.bh ], [ %.pre437, %_ZNSt15__new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv.exit.i.i.i.i..noexc204_crit_edge ]
  %i.op = phi ptr [ %i.oi, %bb.bh ], [ %.pre436, %_ZNSt15__new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv.exit.i.i.i.i..noexc204_crit_edge ]
  %i.oq = phi ptr [ null, %bb.bh ], [ %i.on, %_ZNSt15__new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv.exit.i.i.i.i..noexc204_crit_edge ] ; 17 uses
  %i.or = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIiSaIiEES2_IS4_SaIS4_EEEEPS4_ET0_T_SC_SB_(ptr %i.op, ptr %i.oo, ptr noundef %i.oq)
          to label %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit.preheader unwind label %bb.bj ; 2 uses

_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit.preheader: ; preds = %.noexc204
  %i.os = load ptr, ptr %i.og, align 8, !tbaa !23
  %i.ot = load ptr, ptr %i.of, align 8, !tbaa !22 ; 19 uses
  %i.ou = ptrtoint ptr %i.os to i64
  %i.ov = ptrtoint ptr %i.ot to i64
  %i.ow = sub i64 %i.ou, %i.ov
  %i.ox = sdiv exact i64 %i.ow, 24                ; 14 uses
  %i.oy = trunc i64 %i.ox to i32                  ; 5 uses
  %i.oz = icmp sgt i32 %i.oy, 0                   ; 3 uses
  br i1 %i.oz, label %.lr.ph323.preheader, label %.preheader249

.lr.ph323.preheader:                              ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit.preheader
  %wide.trip.count408 = and i64 %i.ox, 2147483647 ; 2 uses
  %i.pa = add nsw i64 %wide.trip.count408, -1     ; 2 uses
  %xtraiter = and i64 %i.ox, 3                    ; 3 uses
  %i.pb = icmp ult i64 %i.pa, 3
  %unroll_iter = and i64 %i.ox, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod644 = icmp ne i64 %xtraiter, 0
  %xtraiter646 = and i64 %i.ox, 3                 ; 3 uses
  %i.pc = icmp ult i64 %i.pa, 3
  %unroll_iter651 = and i64 %i.ox, 2147483644
  %lcmp.mod648.not = icmp eq i64 %xtraiter646, 0
  %lcmp.mod650 = icmp ne i64 %xtraiter646, 0
  br label %.lr.ph323

bb.bj:                                            ; preds = %.noexc204
  %i.pd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i202 = icmp eq ptr %i.oq, null
  br i1 %.not.i.i.i202, label %.body, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @_ZdlPvm(ptr noundef nonnull %i.oq, i64 noundef %i.ol) #15
  br label %.body

.preheader249:                                    ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit, %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit.preheader
  %.not326 = icmp slt i32 %i.oy, 0
  br i1 %.not326, label %._crit_edge330, label %.lr.ph329.preheader

.lr.ph329.preheader:                              ; preds = %.preheader249
  %i.pe = add nuw i32 %i.oy, 1                    ; 2 uses
  %i.pf = icmp eq i32 %i.oy, 0
  br i1 %i.pf, label %.lr.ph329.epil.preheader, label %.lr.ph329.preheader.new

.lr.ph329.preheader.new:                          ; preds = %.lr.ph329.preheader
  %unroll_iter658 = and i32 %i.pe, -2
  br label %.lr.ph329

.loopexit251:                                     ; preds = %_ZNSt15__new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv.exit.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %.noexc.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph323:                                        ; preds = %.lr.ph323.preheader, %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit
  %indvars.iv405 = phi i64 [ 0, %.lr.ph323.preheader ], [ %indvars.iv.next406, %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit ] ; 3 uses
  %i.pg = getelementptr inbounds nuw [24 x i8], ptr %i.ot, i64 %indvars.iv405
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !26 ; 2 uses
  %i.pi = load i32, ptr %i.ph, align 4, !tbaa !31 ; 5 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ph, i64 4
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !31 ; 5 uses
  br i1 %i.pb, label %.epil.preheader, label %.lr.ph323.new

._crit_edge314.unr-lcssa:                         ; preds = %.lr.ph323.new
  br i1 %lcmp.mod.not, label %._crit_edge314, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge314.unr-lcssa, %.lr.ph323
  %indvars.iv397.epil.init = phi i64 [ 0, %.lr.ph323 ], [ %indvars.iv.next398.3, %._crit_edge314.unr-lcssa ]
  %.0125310.epil.init = phi i32 [ -1, %.lr.ph323 ], [ %spec.select.3, %._crit_edge314.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod644)
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bl, %.epil.preheader
  %indvars.iv397.epil = phi i64 [ %indvars.iv397.epil.init, %.epil.preheader ], [ %indvars.iv.next398.epil, %bb.bl ] ; 3 uses
  %.0125310.epil = phi i32 [ %.0125310.epil.init, %.epil.preheader ], [ %spec.select.epil, %bb.bl ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.bl ]
  %i.pl = getelementptr inbounds nuw [24 x i8], ptr %i.ot, i64 %indvars.iv397.epil
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !26
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 4
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !31
  %i.pp = icmp eq i32 %i.po, %i.pi
  %i.pq = trunc nuw nsw i64 %indvars.iv397.epil to i32
  %spec.select.epil = select i1 %i.pp, i32 %i.pq, i32 %.0125310.epil ; 2 uses
  %indvars.iv.next398.epil = add nuw nsw i64 %indvars.iv397.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge314, label %bb.bl, !llvm.loop !65

._crit_edge314:                                   ; preds = %bb.bl, %._crit_edge314.unr-lcssa
  %spec.select.lcssa = phi i32 [ %spec.select.3, %._crit_edge314.unr-lcssa ], [ %spec.select.epil, %bb.bl ]
  %i.pr = getelementptr inbounds nuw [24 x i8], ptr %i.oq, i64 %indvars.iv405
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !26 ; 2 uses
  store i32 %spec.select.lcssa, ptr %i.ps, align 4, !tbaa !31
  br i1 %i.pc, label %.epil.preheader645, label %._crit_edge314.new

.lr.ph323.new:                                    ; preds = %.lr.ph323, %.lr.ph323.new
  %indvars.iv397 = phi i64 [ %indvars.iv.next398.3, %.lr.ph323.new ], [ 0, %.lr.ph323 ] ; 6 uses
  %.0125310 = phi i32 [ %spec.select.3, %.lr.ph323.new ], [ -1, %.lr.ph323 ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph323.new ], [ 0, %.lr.ph323 ]
  %i.pt = getelementptr inbounds nuw [24 x i8], ptr %i.ot, i64 %indvars.iv397
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !26
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 4
  %i.pw = load i32, ptr %i.pv, align 4, !tbaa !31
  %i.px = icmp eq i32 %i.pw, %i.pi
  %i.py = trunc nuw nsw i64 %indvars.iv397 to i32
  %spec.select = select i1 %i.px, i32 %i.py, i32 %.0125310
  %indvars.iv.next398 = or disjoint i64 %indvars.iv397, 1 ; 2 uses
  %i.pz = getelementptr inbounds nuw [24 x i8], ptr %i.ot, i64 %indvars.iv.next398
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !26
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 4
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !31
  %i.qd = icmp eq i32 %i.qc, %i.pi
  %i.qe = trunc nuw nsw i64 %indvars.iv.next398 to i32
  %spec.select.1 = select i1 %i.qd, i32 %i.qe, i32 %spec.select
  %indvars.iv.next398.1 = or disjoint i64 %indvars.iv397, 2 ; 2 uses
  %i.qf = getelementptr inbounds nuw [24 x i8], ptr %i.ot, i64 %indvars.iv.next398.1
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !26
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 4
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !31
  %i.qj = icmp eq i32 %i.qi, %i.pi
  %i.qk = trunc nuw nsw i64 %indvars.iv.next398.1 to i32
  %spec.select.2 = select i1 %i.qj, i32 %i.qk, i32 %spec.select.1
  %indvars.iv.next398.2 = or disjoint i64 %indvars.iv397, 3 ; 2 uses
  %i.ql = getelementptr inbounds nuw [24 x i8], ptr %i.ot, i64 %indvars.iv.next398.2
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !26
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 4
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !31
  %i.qp = icmp eq i32 %i.qo, %i.pi
  %i.qq = trunc nuw nsw i64 %indvars.iv.next398.2 to i32
  %spec.select.3 = select i1 %i.qp, i32 %i.qq, i32 %spec.select.2 ; 3 uses
  %indvars.iv.next398.3 = add nuw nsw i64 %indvars.iv397, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge314.unr-lcssa, label %.lr.ph323.new, !llvm.loop !66

_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit.unr-lcssa: ; preds = %._crit_edge314.new
  br i1 %lcmp.mod648.not, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit, label %.epil.preheader645

.epil.preheader645:                               ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit.unr-lcssa, %._crit_edge314
  %indvars.iv400.epil.init = phi i64 [ 0, %._crit_edge314 ], [ %indvars.iv.next401.3, %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit.unr-lcssa ]
  %.0122316.epil.init = phi i32 [ -1, %._crit_edge314 ], [ %spec.select158.3, %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod650)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bm, %.epil.preheader645
  %indvars.iv400.epil = phi i64 [ %indvars.iv400.epil.init, %.epil.preheader645 ], [ %indvars.iv.next401.epil, %bb.bm ] ; 3 uses
  %.0122316.epil = phi i32 [ %.0122316.epil.init, %.epil.preheader645 ], [ %spec.select158.epil, %bb.bm ]
  %epil.iter647 = phi i64 [ 0, %.epil.preheader645 ], [ %epil.iter647.next, %bb.bm ]
  %i.qr = getelementptr inbounds nuw [24 x i8], ptr %i.ot, i64 %indvars.iv400.epil
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !26
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !31
  %i.qu = icmp eq i32 %i.qt, %i.pk
  %i.qv = trunc nuw nsw i64 %indvars.iv400.epil to i32
  %spec.select158.epil = select i1 %i.qu, i32 %i.qv, i32 %.0122316.epil ; 2 uses
  %indvars.iv.next401.epil = add nuw nsw i64 %indvars.iv400.epil, 1
  %epil.iter647.next = add i64 %epil.iter647, 1   ; 2 uses
  %epil.iter647.cmp.not = icmp eq i64 %epil.iter647.next, %xtraiter646
  br i1 %epil.iter647.cmp.not, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit, label %bb.bm, !llvm.loop !67

_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit:     ; preds = %bb.bm, %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit.unr-lcssa
  %spec.select158.lcssa = phi i32 [ %spec.select158.3, %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit.unr-lcssa ], [ %spec.select158.epil, %bb.bm ]
  %i.qw = getelementptr inbounds nuw i8, ptr %i.ps, i64 4
  store i32 %spec.select158.lcssa, ptr %i.qw, align 4, !tbaa !31
  %indvars.iv.next406 = add nuw nsw i64 %indvars.iv405, 1 ; 2 uses
  %exitcond409.not = icmp eq i64 %indvars.iv.next406, %wide.trip.count408
  br i1 %exitcond409.not, label %.preheader249, label %.lr.ph323, !llvm.loop !68

._crit_edge314.new:                               ; preds = %._crit_edge314, %._crit_edge314.new
  %indvars.iv400 = phi i64 [ %indvars.iv.next401.3, %._crit_edge314.new ], [ 0, %._crit_edge314 ] ; 6 uses
  %.0122316 = phi i32 [ %spec.select158.3, %._crit_edge314.new ], [ -1, %._crit_edge314 ]
end_hunk_0
begin_hunk_1_@_ZN3igl14adjacency_listIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEEiEEvRKNS1_10MatrixBaseIT_EERSt6vectorIS9_IT0_SaISA_EESaISC_EEb:bb.a
  %.057.in78.i.i.i.i = phi i64 [ %.05779.i.i.i.i, %.lr.ph.i.i.i.i160 ], [ 0, %bb.d ]
  %.sroa.064.077.i.i.i.i = phi <4 x i32> [ %i.ae, %.lr.ph.i.i.i.i160 ], [ %i.u, %bb.d ]
  %i.ab = phi <4 x i32> [ %i.ai, %.lr.ph.i.i.i.i160 ], [ %i.x, %bb.d ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.05779.i.i.i.i
  %i.ad = load <4 x i32>, ptr %i.ac, align 16, !tbaa !30
  %i.ae = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %.sroa.064.077.i.i.i.i, <4 x i32> %i.ad) ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.057.in78.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ah = load <4 x i32>, ptr %i.ag, align 16, !tbaa !30
  %i.ai = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ab, <4 x i32> %i.ah) ; 2 uses
  %.057.i.i.i.i = add nuw nsw i64 %.05779.i.i.i.i, 8 ; 2 uses
  %i.aj = icmp slt i64 %.057.i.i.i.i, %i.r
  br i1 %i.aj, label %.lr.ph.i.i.i.i160, label %._crit_edge.i.i.i.i, !llvm.loop !4

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.r
  %i.al = load <4 x i32>, ptr %i.ak, align 16, !tbaa !30
  %i.am = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.z, <4 x i32> %i.al)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i, %bb.c
  %.sroa.064.2.i.i.i.i = phi <4 x i32> [ %i.u, %bb.c ], [ %i.am, %bb.e ], [ %i.z, %._crit_edge.i.i.i.i ]
  %i.an = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %.sroa.064.2.i.i.i.i) ; 3 uses
  %i.ao = icmp slt i64 %i.t, %i.p
  br i1 %i.ao, label %.lr.ph84.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit

.lr.ph84.i.i.i.i.preheader:                       ; preds = %bb.f
  %i.ap = sub i64 %i.p, %i.t                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.ap, 8
  br i1 %min.iters.check, label %.lr.ph84.i.i.i.i.preheader666, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph84.i.i.i.i.preheader
  %n.vec = and i64 %i.ap, -8                      ; 3 uses
  %i.aq = add i64 %i.t, %n.vec
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.an, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ar = getelementptr [4 x i8], ptr %i.k, i64 %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.au, %vector.body ]
  %vec.phi608 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.av, %vector.body ]
  %i.as = getelementptr [4 x i8], ptr %i.ar, i64 %index ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %wide.load = load <4 x i32>, ptr %i.as, align 4, !tbaa !31
  %wide.load609 = load <4 x i32>, ptr %i.at, align 4, !tbaa !31
  %i.au = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %wide.load) ; 2 uses
  %i.av = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi608, <4 x i32> %wide.load609) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !77

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.au, <4 x i32> %i.av)
  %i.ax = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit, label %.lr.ph84.i.i.i.i.preheader666

.lr.ph84.i.i.i.i.preheader666:                    ; preds = %.lr.ph84.i.i.i.i.preheader, %middle.block
  %.05582.i.i.i.i.ph = phi i64 [ %i.t, %.lr.ph84.i.i.i.i.preheader ], [ %i.aq, %middle.block ]
  %.181.i.i.i.i.ph = phi i32 [ %i.an, %.lr.ph84.i.i.i.i.preheader ], [ %i.ax, %middle.block ]
  br label %.lr.ph84.i.i.i.i

.lr.ph84.i.i.i.i:                                 ; preds = %.lr.ph84.i.i.i.i.preheader666, %.lr.ph84.i.i.i.i
  %.05582.i.i.i.i = phi i64 [ %i.bb, %.lr.ph84.i.i.i.i ], [ %.05582.i.i.i.i.ph, %.lr.ph84.i.i.i.i.preheader666 ] ; 2 uses
  %.181.i.i.i.i = phi i32 [ %i.ba, %.lr.ph84.i.i.i.i ], [ %.181.i.i.i.i.ph, %.lr.ph84.i.i.i.i.preheader666 ]
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.k, i64 %.05582.i.i.i.i
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !31
  %i.ba = tail call noundef i32 @llvm.smax.i32(i32 %.181.i.i.i.i, i32 %i.az) ; 2 uses
  %i.bb = add nsw i64 %.05582.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.bb, %i.p
  br i1 %exitcond.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit, label %.lr.ph84.i.i.i.i, !llvm.loop !78

bb.g:                                             ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE5clearEv.exit
  %i.bc = load i32, ptr %i.k, align 4, !tbaa !31  ; 3 uses
  %i.bd = icmp sgt i64 %i.p, 1
  br i1 %i.bd, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit

.lr.ph89.i.i.i.i.preheader:                       ; preds = %bb.g
  %i.be = add nsw i64 %i.p, -1                    ; 2 uses
  %min.iters.check611 = icmp ult i64 %i.p, 9
  br i1 %min.iters.check611, label %.lr.ph89.i.i.i.i.preheader662, label %vector.ph612

vector.ph612:                                     ; preds = %.lr.ph89.i.i.i.i.preheader
  %n.vec613 = and i64 %i.be, -8                   ; 3 uses
  %i.bf = or disjoint i64 %n.vec613, 1
  %broadcast.splatinsert614 = insertelement <4 x i32> poison, i32 %i.bc, i64 0
  %broadcast.splat615 = shufflevector <4 x i32> %broadcast.splatinsert614, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body616

vector.body616:                                   ; preds = %vector.body616, %vector.ph612
  %index617 = phi i64 [ 0, %vector.ph612 ], [ %index.next622, %vector.body616 ] ; 2 uses
  %vec.phi618 = phi <4 x i32> [ %broadcast.splat615, %vector.ph612 ], [ %i.bj, %vector.body616 ]
  %vec.phi619 = phi <4 x i32> [ %broadcast.splat615, %vector.ph612 ], [ %i.bk, %vector.body616 ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index617 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 20
  %wide.load620 = load <4 x i32>, ptr %i.bh, align 4, !tbaa !31
  %wide.load621 = load <4 x i32>, ptr %i.bi, align 4, !tbaa !31
  %i.bj = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi618, <4 x i32> %wide.load620) ; 2 uses
  %i.bk = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi619, <4 x i32> %wide.load621) ; 2 uses
  %index.next622 = add nuw i64 %index617, 8       ; 2 uses
  %i.bl = icmp eq i64 %index.next622, %n.vec613
  br i1 %i.bl, label %middle.block623, label %vector.body616, !llvm.loop !79

middle.block623:                                  ; preds = %vector.body616
  %rdx.minmax624 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.bj, <4 x i32> %i.bk)
  %i.bm = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax624) ; 2 uses
  %cmp.n625 = icmp eq i64 %i.be, %n.vec613
  br i1 %cmp.n625, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit, label %.lr.ph89.i.i.i.i.preheader662

.lr.ph89.i.i.i.i.preheader662:                    ; preds = %.lr.ph89.i.i.i.i.preheader, %middle.block623
  %.087.i.i.i.i.ph = phi i64 [ 1, %.lr.ph89.i.i.i.i.preheader ], [ %i.bf, %middle.block623 ]
  %.286.i.i.i.i.ph = phi i32 [ %i.bc, %.lr.ph89.i.i.i.i.preheader ], [ %i.bm, %middle.block623 ]
  br label %.lr.ph89.i.i.i.i

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader662, %.lr.ph89.i.i.i.i
  %.087.i.i.i.i = phi i64 [ %i.bq, %.lr.ph89.i.i.i.i ], [ %.087.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader662 ] ; 2 uses
  %.286.i.i.i.i = phi i32 [ %i.bp, %.lr.ph89.i.i.i.i ], [ %.286.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader662 ]
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.087.i.i.i.i
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !31
  %i.bp = tail call noundef i32 @llvm.smax.i32(i32 %.286.i.i.i.i, i32 %i.bo) ; 2 uses
  %i.bq = add nuw nsw i64 %.087.i.i.i.i, 1        ; 2 uses
  %exitcond96.not.i.i.i.i = icmp eq i64 %i.bq, %i.p
  br i1 %exitcond96.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit, label %.lr.ph89.i.i.i.i, !llvm.loop !80

_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit: ; preds = %.lr.ph84.i.i.i.i, %.lr.ph89.i.i.i.i, %middle.block, %middle.block623, %bb.f, %bb.g
  %.3.i.i.i.i = phi i32 [ %i.bp, %.lr.ph89.i.i.i.i ], [ %i.bc, %bb.g ], [ %i.an, %bb.f ], [ %i.bm, %middle.block623 ], [ %i.ax, %middle.block ], [ %i.ba, %.lr.ph84.i.i.i.i ]
  %i.br = add nsw i32 %.3.i.i.i.i, 1
  %i.bs = sext i32 %i.br to i64                   ; 4 uses
  %i.bt = load ptr, ptr %1, align 8, !tbaa !22    ; 2 uses
  %i.bu = ptrtoint ptr %i.a to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = sdiv exact i64 %i.bw, 24                ; 3 uses
  %i.by = icmp ult i64 %i.bx, %i.bs
  br i1 %i.by, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit
  %i.bz = sub nuw nsw i64 %i.bs, %i.bx
  tail call void @_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.bz)
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEm.exit

bb.i:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit
  %i.ca = icmp ugt i64 %i.bx, %i.bs
  br i1 %i.ca, label %bb.j, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEm.exit

bb.j:                                             ; preds = %bb.i
  %i.cb = getelementptr inbounds nuw [24 x i8], ptr %i.bt, i64 %i.bs ; 3 uses
  %.not.i.i161 = icmp eq ptr %i.a, %i.cb
  br i1 %.not.i.i161, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEm.exit, label %.lr.ph.i.i.i.i162

.lr.ph.i.i.i.i162:                                ; preds = %bb.j, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i165
  %.05.i.i.i.i163 = phi ptr [ %i.ci, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i165 ], [ %i.cb, %bb.j ] ; 3 uses
  %i.cc = load ptr, ptr %.05.i.i.i.i163, align 8, !tbaa !26 ; 3 uses
  %.not.i.i.i.i.i.i.i.i164 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i.i.i.i.i164, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i165, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i162
  %i.cd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i163, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !27
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = ptrtoint ptr %i.cc to i64
  %i.ch = sub i64 %i.cf, %i.cg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef %i.ch) #15
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i165

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i165: ; preds = %bb.k, %.lr.ph.i.i.i.i162
  %i.ci = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i163, i64 24 ; 2 uses
  %.not.i.i.i.i166 = icmp eq ptr %i.ci, %i.a
  br i1 %.not.i.i.i.i166, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i167, label %.lr.ph.i.i.i.i162, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i167: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i165
  store ptr %i.cb, ptr %i.b, align 8, !tbaa !23
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEm.exit

_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEm.exit:    ; preds = %bb.h, %bb.i, %bb.j, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i167
  %i.cj = load i64, ptr %i.l, align 8, !tbaa !48  ; 2 uses
  %i.ck = icmp sgt i64 %i.cj, 0
  br i1 %i.ck, label %.preheader250.lr.ph, label %.preheader249

.preheader250.lr.ph:                              ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEm.exit
  %i.cl = load i64, ptr %i.n, align 8, !tbaa !49  ; 2 uses
  %i.cm = icmp sgt i64 %i.cl, 0
  br i1 %i.cm, label %.preheader250, label %.preheader249

.preheader250:                                    ; preds = %.preheader250.lr.ph, %._crit_edge
  %i.cn = phi i64 [ %i.cy, %._crit_edge ], [ %i.cj, %.preheader250.lr.ph ]
  %i.co = phi i64 [ %i.cz, %._crit_edge ], [ %i.cl, %.preheader250.lr.ph ] ; 3 uses
  %indvars.iv390 = phi i64 [ %indvars.iv.next391, %._crit_edge ], [ 0, %.preheader250.lr.ph ] ; 2 uses
  %i.cp = icmp sgt i64 %i.co, 0
  br i1 %i.cp, label %.lr.ph, label %._crit_edge

.preheader249:                                    ; preds = %._crit_edge, %.preheader250.lr.ph, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEm.exit
  %i.cq = load ptr, ptr %i.b, align 8, !tbaa !23  ; 2 uses
  %i.cr = load ptr, ptr %1, align 8, !tbaa !22    ; 3 uses
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = sub i64 %i.cs, %i.ct                    ; 2 uses
  %i.cv = sdiv exact i64 %i.cu, 24
  %i.cw = trunc i64 %i.cv to i32
  %i.cx = icmp sgt i32 %i.cw, 0
  br i1 %i.cx, label %.lr.ph301, label %._crit_edge302

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit178
  %.pre433 = load i64, ptr %i.l, align 8, !tbaa !48
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader250
  %i.cy = phi i64 [ %.pre433, %._crit_edge.loopexit ], [ %i.cn, %.preheader250 ] ; 2 uses
  %i.cz = phi i64 [ %i.ft, %._crit_edge.loopexit ], [ %i.co, %.preheader250 ]
  %indvars.iv.next391 = add nuw nsw i64 %indvars.iv390, 1 ; 2 uses
  %i.da = icmp sgt i64 %i.cy, %indvars.iv.next391
  br i1 %i.da, label %.preheader250, label %.preheader249, !llvm.loop !81

.lr.ph:                                           ; preds = %.preheader250, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit178
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit178 ], [ 0, %.preheader250 ] ; 2 uses
  %i.db = phi i64 [ %i.ft, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit178 ], [ %i.co, %.preheader250 ]
  %i.dc = load ptr, ptr %0, align 8, !tbaa !47
  %i.dd = load i64, ptr %i.l, align 8, !tbaa !48  ; 2 uses
  %i.de = mul nsw i64 %i.dd, %indvars.iv
  %i.df = getelementptr [4 x i8], ptr %i.dc, i64 %indvars.iv390 ; 2 uses
  %i.dg = getelementptr [4 x i8], ptr %i.df, i64 %i.de
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !31 ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.di = urem i64 %indvars.iv.next, %i.db
  %i.dj = mul nsw i64 %i.di, %i.dd
  %i.dk = getelementptr [4 x i8], ptr %i.df, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !31 ; 3 uses
  %i.dm = sext i32 %i.dh to i64                   ; 3 uses
  %i.dn = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.do = load ptr, ptr %1, align 8, !tbaa !22    ; 3 uses
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = sub i64 %i.dp, %i.dq
  %i.ds = sdiv exact i64 %i.dr, 24                ; 3 uses
  %.not.i.i168 = icmp ugt i64 %i.ds, %i.dm
  br i1 %.not.i.i168, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE2atEm.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.4, i64 noundef %i.dm, i64 noundef %i.ds) #16
  unreachable

_ZNSt6vectorIS_IiSaIiEESaIS1_EE2atEm.exit:        ; preds = %.lr.ph
  %i.dt = getelementptr inbounds nuw [24 x i8], ptr %i.do, i64 %i.dm ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8 ; 3 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !34 ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 16 ; 3 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !27
  %.not.i = icmp eq ptr %i.dv, %i.dx
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE2atEm.exit
  store i32 %i.dl, ptr %i.dv, align 4, !tbaa !31
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  store ptr %i.dy, ptr %i.du, align 8, !tbaa !34
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.n:                                             ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE2atEm.exit
  %i.dz = load ptr, ptr %i.dt, align 8, !tbaa !26 ; 4 uses
  %i.ea = ptrtoint ptr %i.dv to i64
  %i.eb = ptrtoint ptr %i.dz to i64               ; 2 uses
  %i.ec = sub i64 %i.ea, %i.eb                    ; 5 uses
  %i.ed = icmp eq i64 %i.ec, 9223372036854775804
  br i1 %i.ed, label %bb.o, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #16
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.n
  %i.ee = ashr exact i64 %i.ec, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ee, i64 1)
  %i.ef = add nsw i64 %.sroa.speculated.i.i.i, %i.ee ; 2 uses
  %i.eg = icmp ult i64 %i.ef, %i.ee
  %i.eh = tail call i64 @llvm.umin.i64(i64 %i.ef, i64 2305843009213693951)
  %i.ei = select i1 %i.eg, i64 2305843009213693951, i64 %i.eh ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ei, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ej = shl nuw nsw i64 %i.ei, 2
  %i.ek = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ej) #17 ; 4 uses
  %i.el = getelementptr inbounds i8, ptr %i.ek, i64 %i.ec ; 2 uses
  store i32 %i.dl, ptr %i.el, align 4, !tbaa !31
  %i.em = icmp sgt i64 %i.ec, 0
  br i1 %i.em, label %bb.p, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.p:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ek, ptr align 4 %i.dz, i64 %i.ec, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.p, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  %.not.i17.i.i = icmp eq ptr %i.dz, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.eo = load ptr, ptr %i.dw, align 8, !tbaa !27
  %i.ep = ptrtoint ptr %i.eo to i64
  %i.eq = sub i64 %i.ep, %i.eb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dz, i64 noundef %i.eq) #15
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.q, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.ek, ptr %i.dt, align 8, !tbaa !26
  store ptr %i.en, ptr %i.du, align 8, !tbaa !34
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.ei
  store ptr %i.er, ptr %i.dw, align 8, !tbaa !27
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !23
  %.pre432 = load ptr, ptr %1, align 8, !tbaa !22 ; 2 uses
  %.pre443 = ptrtoint ptr %.pre to i64
  %.pre445 = ptrtoint ptr %.pre432 to i64
  %.pre447 = sub i64 %.pre443, %.pre445
  %.pre449 = sdiv exact i64 %.pre447, 24
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.m, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %.pre-phi450 = phi i64 [ %i.ds, %bb.m ], [ %.pre449, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ] ; 2 uses
  %i.es = phi ptr [ %i.do, %bb.m ], [ %.pre432, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ]
  %i.et = sext i32 %i.dl to i64                   ; 3 uses
  %.not.i.i169 = icmp ugt i64 %.pre-phi450, %i.et
  br i1 %.not.i.i169, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE2atEm.exit170, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.4, i64 noundef %i.et, i64 noundef %.pre-phi450) #16
  unreachable

_ZNSt6vectorIS_IiSaIiEESaIS1_EE2atEm.exit170:     ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.eu = getelementptr inbounds nuw [24 x i8], ptr %i.es, i64 %i.et ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8 ; 3 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !34 ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 16 ; 3 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !27
  %.not.i171 = icmp eq ptr %i.ew, %i.ey
  br i1 %.not.i171, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE2atEm.exit170
  store i32 %i.dh, ptr %i.ew, align 4, !tbaa !31
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 4
  store ptr %i.ez, ptr %i.ev, align 8, !tbaa !34
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit178

bb.t:                                             ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE2atEm.exit170
  %i.fa = load ptr, ptr %i.eu, align 8, !tbaa !26 ; 4 uses
  %i.fb = ptrtoint ptr %i.ew to i64
  %i.fc = ptrtoint ptr %i.fa to i64               ; 2 uses
  %i.fd = sub i64 %i.fb, %i.fc                    ; 5 uses
  %i.fe = icmp eq i64 %i.fd, 9223372036854775804
  br i1 %i.fe, label %bb.u, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i172

bb.u:                                             ; preds = %bb.t
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #16
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i172: ; preds = %bb.t
  %i.ff = ashr exact i64 %i.fd, 2                 ; 3 uses
  %.sroa.speculated.i.i.i173 = tail call i64 @llvm.umax.i64(i64 %i.ff, i64 1)
  %i.fg = add nsw i64 %.sroa.speculated.i.i.i173, %i.ff ; 2 uses
  %i.fh = icmp ult i64 %i.fg, %i.ff
  %i.fi = tail call i64 @llvm.umin.i64(i64 %i.fg, i64 2305843009213693951)
  %i.fj = select i1 %i.fh, i64 2305843009213693951, i64 %i.fi ; 3 uses
  %.not.i.i.i174 = icmp ne i64 %i.fj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i174)
  %i.fk = shl nuw nsw i64 %i.fj, 2
  %i.fl = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fk) #17 ; 4 uses
  %i.fm = getelementptr inbounds i8, ptr %i.fl, i64 %i.fd ; 2 uses
  store i32 %i.dh, ptr %i.fm, align 4, !tbaa !31
  %i.fn = icmp sgt i64 %i.fd, 0
  br i1 %i.fn, label %bb.v, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i175

bb.v:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i172
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fl, ptr align 4 %i.fa, i64 %i.fd, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i175

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i175: ; preds = %bb.v, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i172
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 4
  %.not.i17.i.i176 = icmp eq ptr %i.fa, null
  br i1 %.not.i17.i.i176, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i177, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i175
  %i.fp = load ptr, ptr %i.ex, align 8, !tbaa !27
  %i.fq = ptrtoint ptr %i.fp to i64
  %i.fr = sub i64 %i.fq, %i.fc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fa, i64 noundef %i.fr) #15
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i177

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i177: ; preds = %bb.w, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i175
  store ptr %i.fl, ptr %i.eu, align 8, !tbaa !26
  store ptr %i.fo, ptr %i.ev, align 8, !tbaa !34
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.fj
  store ptr %i.fs, ptr %i.ex, align 8, !tbaa !27
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit178

_ZNSt6vectorIiSaIiEE9push_backERKi.exit178:       ; preds = %bb.s, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i177
  %i.ft = load i64, ptr %i.n, align 8, !tbaa !49  ; 3 uses
  %i.fu = icmp sgt i64 %i.ft, %indvars.iv.next
  br i1 %i.fu, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !82

._crit_edge302:                                   ; preds = %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_.exit, %.preheader249
  %.lcssa281 = phi ptr [ %i.cq, %.preheader249 ], [ %i.hb, %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_.exit ]
  %.lcssa280 = phi ptr [ %i.cr, %.preheader249 ], [ %i.ha, %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_.exit ]
  %.lcssa278 = phi i64 [ %i.cu, %.preheader249 ], [ %i.he, %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_.exit ] ; 4 uses
  br i1 %2, label %bb.aa, label %bb.bc

.lr.ph301:                                        ; preds = %.preheader249, %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_.exit
  %i.fv = phi ptr [ %i.ha, %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_.exit ], [ %i.cr, %.preheader249 ] ; 2 uses
  %indvars.iv393 = phi i64 [ %indvars.iv.next394, %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_.exit ], [ 0, %.preheader249 ] ; 4 uses
  %i.fw = getelementptr inbounds nuw [24 x i8], ptr %i.fv, i64 %indvars.iv393 ; 2 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !35 ; 4 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !35 ; 4 uses
  %.not.i.i179 = icmp eq ptr %i.fx, %i.fz
  br i1 %.not.i.i179, label %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_.exit, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit: ; preds = %.lr.ph301
  %i.ga = ptrtoint ptr %i.fz to i64
  %i.gb = ptrtoint ptr %i.fx to i64
  %i.gc = sub i64 %i.ga, %i.gb
  %i.gd = ashr exact i64 %i.gc, 2
  %i.ge = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.gd, i1 true)
  %i.gf = shl nuw nsw i64 %i.ge, 1
  %i.gg = xor i64 %i.gf, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.fx, ptr %i.fz, i64 noundef %i.gg)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.fx, ptr %i.fz)
  %.pre434 = load ptr, ptr %1, align 8, !tbaa !22 ; 6 uses
  %.phi.trans.insert = getelementptr inbounds nuw [24 x i8], ptr %.pre434, i64 %indvars.iv393 ; 2 uses
  %.pre435 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !35 ; 4 uses
  %.phi.trans.insert436 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 8
  %.pre437 = load ptr, ptr %.phi.trans.insert436, align 8, !tbaa !35 ; 5 uses
  %i.gh = getelementptr inbounds nuw [24 x i8], ptr %.pre434, i64 %indvars.iv393
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gj = icmp eq ptr %.pre435, %.pre437
  br i1 %i.gj, label %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit, %bb.x
  %.sroa.09.0.i.i.i = phi ptr [ %i.gk, %bb.x ], [ %.pre435, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit ] ; 5 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i, i64 4 ; 3 uses
  %.not.i.i.i180 = icmp eq ptr %i.gk, %.pre437
  br i1 %.not.i.i.i180, label %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_.exit, label %bb.x

bb.x:                                             ; preds = %.preheader.i.i.i
  %i.gl = load i32, ptr %.sroa.09.0.i.i.i, align 4, !tbaa !31 ; 2 uses
  %i.gm = load i32, ptr %i.gk, align 4, !tbaa !31
  %i.gn = icmp eq i32 %i.gl, %i.gm
  br i1 %i.gn, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i, label %.preheader.i.i.i, !llvm.loop !1

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i: ; preds = %bb.x
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i, i64 8 ; 2 uses
  %.not18.i.i = icmp eq ptr %i.go, %.pre437
  br i1 %.not18.i.i, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i, %bb.z
  %i.gp = phi i32 [ %i.gr, %bb.z ], [ %i.gl, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i ]
  %i.gq = phi ptr [ %i.gu, %bb.z ], [ %i.go, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i ] ; 2 uses
  %.sroa.0.019.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.z ], [ %.sroa.09.0.i.i.i, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i ] ; 2 uses
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !31 ; 3 uses
  %i.gs = icmp eq i32 %i.gp, %i.gr
  br i1 %i.gs, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i, i64 4 ; 2 uses
  store i32 %i.gr, ptr %i.gt, align 4, !tbaa !31
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph.i.i
  %.sroa.0.1.i.i = phi ptr [ %.sroa.0.019.i.i, %.lr.ph.i.i ], [ %i.gt, %bb.y ] ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gq, i64 4 ; 2 uses
  %.not.i.i181 = icmp eq ptr %i.gu, %.pre437
  br i1 %.not.i.i181, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_S7_.exit, label %.lr.ph.i.i, !llvm.loop !2

_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_S7_.exit: ; preds = %bb.z, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.09.0.i.i.i, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i ], [ %.sroa.0.1.i.i, %bb.z ]
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 4 ; 2 uses
  %.not.i.i182 = icmp eq ptr %i.gv, %.pre437
  br i1 %.not.i.i182, label %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_S7_.exit
  %i.gw = ptrtoint ptr %i.gv to i64
  %i.gx = ptrtoint ptr %.pre435 to i64
  %i.gy = sub i64 %i.gw, %i.gx
  %i.gz = getelementptr inbounds i8, ptr %.pre435, i64 %i.gy
  store ptr %i.gz, ptr %i.gi, align 8, !tbaa !34
  br label %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_.exit

_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_.exit: ; preds = %.preheader.i.i.i, %.lr.ph301, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_S7_.exit, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i
  %i.ha = phi ptr [ %i.fv, %.lr.ph301 ], [ %.pre434, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i ], [ %.pre434, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit ], [ %.pre434, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_S7_.exit ], [ %.pre434, %.preheader.i.i.i ] ; 3 uses
  %indvars.iv.next394 = add nuw nsw i64 %indvars.iv393, 1 ; 2 uses
  %i.hb = load ptr, ptr %i.b, align 8, !tbaa !23  ; 2 uses
  %i.hc = ptrtoint ptr %i.hb to i64
  %i.hd = ptrtoint ptr %i.ha to i64
  %i.he = sub i64 %i.hc, %i.hd                    ; 2 uses
  %i.hf = sdiv exact i64 %i.he, 24
  %sext = shl i64 %i.hf, 32
  %i.hg = ashr exact i64 %sext, 32
  %i.hh = icmp slt i64 %indvars.iv.next394, %i.hg
  br i1 %i.hh, label %.lr.ph301, label %._crit_edge302, !llvm.loop !83

bb.aa:                                            ; preds = %._crit_edge302
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.hi = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.not243 = icmp eq ptr %.lcssa281, %.lcssa280
  br i1 %.not243, label %_ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EE6resizeEm.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.hk = icmp ugt i64 %.lcssa278, 9223372036854775800
  br i1 %i.hk, label %bb.ac, label %_ZNKSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit.i

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #16
          to label %.noexc216 unwind label %bb.ad

.noexc216:                                        ; preds = %bb.ac
  unreachable

_ZNKSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.ab
  %i.hl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.lcssa278) #17
          to label %.noexc217 unwind label %bb.ad ; 4 uses

.noexc217:                                        ; preds = %_ZNKSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.hl, i8 0, i64 %.lcssa278, i1 false)
  store ptr %i.hl, ptr %3, align 8, !tbaa !38
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 %.lcssa278 ; 3 uses
  store ptr %i.hm, ptr %i.hi, align 8, !tbaa !39
  store ptr %i.hm, ptr %i.hj, align 8, !tbaa !40
  br label %_ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EE6resizeEm.exit

_ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EE6resizeEm.exit: ; preds = %bb.aa, %.noexc217
  %i.hn = phi ptr [ null, %bb.aa ], [ %i.hm, %.noexc217 ] ; 3 uses
  %.pr.i = phi ptr [ null, %bb.aa ], [ %i.hl, %.noexc217 ] ; 7 uses
  %i.ho = load i64, ptr %i.l, align 8, !tbaa !48  ; 2 uses
  %i.hp = icmp sgt i64 %i.ho, 0
  br i1 %i.hp, label %.preheader248.lr.ph, label %.preheader246

.preheader248.lr.ph:                              ; preds = %_ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EE6resizeEm.exit
  %i.hq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.hs = load i64, ptr %i.n, align 8, !tbaa !49  ; 2 uses
  %i.ht = icmp sgt i64 %i.hs, 0
  br i1 %i.ht, label %.preheader248, label %.preheader246

.preheader248:                                    ; preds = %.preheader248.lr.ph, %._crit_edge308
  %i.hu = phi i64 [ %i.if, %._crit_edge308 ], [ %i.ho, %.preheader248.lr.ph ]
  %i.hv = phi i64 [ %i.ig, %._crit_edge308 ], [ %i.hs, %.preheader248.lr.ph ] ; 3 uses
  %indvars.iv402 = phi i64 [ %indvars.iv.next403, %._crit_edge308 ], [ 0, %.preheader248.lr.ph ] ; 2 uses
  %i.hw = icmp sgt i64 %i.hv, 0
  br i1 %i.hw, label %.lr.ph307, label %._crit_edge308

.preheader246:                                    ; preds = %._crit_edge308, %.preheader248.lr.ph, %_ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EE6resizeEm.exit
  %i.hx = ptrtoint ptr %i.hn to i64
  %i.hy = ptrtoint ptr %.pr.i to i64
  %i.hz = sub i64 %i.hx, %i.hy                    ; 2 uses
  %i.ia = sdiv exact i64 %i.hz, 24                ; 2 uses
  %i.ib = trunc i64 %i.ia to i32
  %i.ic = icmp sgt i32 %i.ib, 0
  br i1 %i.ic, label %.lr.ph341.preheader, label %._crit_edge342

.lr.ph341.preheader:                              ; preds = %.preheader246
  %i.id = and i64 %i.ia, 2147483647
  br label %.lr.ph341

bb.ad:                                            ; preds = %_ZNKSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit.i, %bb.ac
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %.body

._crit_edge308.loopexit:                          ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %.pre439 = load i64, ptr %i.l, align 8, !tbaa !48
  br label %._crit_edge308

._crit_edge308:                                   ; preds = %._crit_edge308.loopexit, %.preheader248
  %i.if = phi i64 [ %.pre439, %._crit_edge308.loopexit ], [ %i.hu, %.preheader248 ] ; 2 uses
  %i.ig = phi i64 [ %i.kb, %._crit_edge308.loopexit ], [ %i.hv, %.preheader248 ]
  %indvars.iv.next403 = add nuw nsw i64 %indvars.iv402, 1 ; 2 uses
  %i.ih = icmp sgt i64 %i.if, %indvars.iv.next403
  br i1 %i.ih, label %.preheader248, label %.preheader246, !llvm.loop !84

.lr.ph307:                                        ; preds = %.preheader248, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %indvars.iv399 = phi i64 [ %indvars.iv.next400, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ 0, %.preheader248 ] ; 3 uses
  %i.ii = phi i64 [ %i.kb, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ %i.hv, %.preheader248 ] ; 2 uses
  %i.ij = load ptr, ptr %0, align 8, !tbaa !47
  %i.ik = load i64, ptr %i.l, align 8, !tbaa !48  ; 3 uses
  %i.il = mul nsw i64 %i.ik, %indvars.iv399
  %i.im = getelementptr [4 x i8], ptr %i.ij, i64 %indvars.iv402 ; 3 uses
  %i.in = getelementptr [4 x i8], ptr %i.im, i64 %i.il
  %i.io = load i32, ptr %i.in, align 4, !tbaa !31
  %indvars.iv.next400 = add nuw nsw i64 %indvars.iv399, 1 ; 3 uses
  %i.ip = urem i64 %indvars.iv.next400, %i.ii
  %i.iq = mul nsw i64 %i.ip, %i.ik
  %i.ir = getelementptr [4 x i8], ptr %i.im, i64 %i.iq
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !31
  %i.it = add nuw nsw i64 %indvars.iv399, 2
  %i.iu = urem i64 %i.it, %i.ii
  %i.iv = mul nsw i64 %i.iu, %i.ik
  %i.iw = getelementptr [4 x i8], ptr %i.im, i64 %i.iv
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.iy = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #17
          to label %bb.ae unwind label %bb.ak     ; 4 uses

bb.ae:                                            ; preds = %.lr.ph307
  store ptr %i.iy, ptr %4, align 8, !tbaa !26
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8 ; 2 uses
  store ptr %i.iz, ptr %i.hq, align 8, !tbaa !27
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iy, i64 4
  store ptr %i.iz, ptr %i.hr, align 8, !tbaa !34
  store i32 %i.is, ptr %i.iy, align 4, !tbaa !31
  store i32 %i.ix, ptr %i.ja, align 4, !tbaa !31
  %i.jb = sext i32 %i.io to i64
  %i.jc = getelementptr inbounds nuw [24 x i8], ptr %.pr.i, i64 %i.jb ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8 ; 3 uses
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !23 ; 6 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !41
  %.not.i190 = icmp eq ptr %i.je, %i.jg
  br i1 %.not.i190, label %bb.ai, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.ae
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.je, i8 0, i64 24, i1 false)
  %i.jh = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #17
          to label %.noexc192 unwind label %bb.al ; 6 uses

.noexc192:                                        ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i
  store ptr %i.jh, ptr %i.je, align 8, !tbaa !26
  %i.ji = getelementptr inbounds nuw i8, ptr %i.je, i64 8 ; 2 uses
  store ptr %i.jh, ptr %i.ji, align 8, !tbaa !34
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.jk = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  store ptr %i.jj, ptr %i.jk, align 8, !tbaa !27
  %i.jl = load ptr, ptr %4, align 8, !tbaa !35    ; 4 uses
  %i.jm = load ptr, ptr %i.hr, align 8, !tbaa !35
  %i.jn = ptrtoint ptr %i.jm to i64
  %i.jo = ptrtoint ptr %i.jl to i64
  %i.jp = sub i64 %i.jn, %i.jo                    ; 4 uses
  %i.jq = icmp sgt i64 %i.jp, 4
  br i1 %i.jq, label %bb.af, label %bb.ag, !prof !42

bb.af:                                            ; preds = %.noexc192
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.jh, ptr align 4 %i.jl, i64 %i.jp, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i

bb.ag:                                            ; preds = %.noexc192
  %i.jr = icmp eq i64 %i.jp, 4
  br i1 %i.jr, label %bb.ah, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i

bb.ah:                                            ; preds = %bb.ag
  %i.js = load i32, ptr %i.jl, align 4, !tbaa !31
  store i32 %i.js, ptr %i.jh, align 4, !tbaa !31
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i:              ; preds = %bb.ah, %bb.ag, %bb.af
  %i.jt = getelementptr inbounds i8, ptr %i.jh, i64 %i.jp
  store ptr %i.jt, ptr %i.ji, align 8, !tbaa !34
  %i.ju = load ptr, ptr %i.jd, align 8, !tbaa !23
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 24
  store ptr %i.jv, ptr %i.jd, align 8, !tbaa !23
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit

bb.ai:                                            ; preds = %bb.ae
  invoke void @_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.jc, ptr %i.je, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %._ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit_crit_edge unwind label %bb.al

._ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit_crit_edge: ; preds = %bb.ai
  %.pre438 = load ptr, ptr %4, align 8, !tbaa !26
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit: ; preds = %._ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit_crit_edge, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i
  %i.jw = phi ptr [ %.pre438, %._ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit_crit_edge ], [ %i.jl, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i ] ; 3 uses
  %.not.i.i.i194 = icmp eq ptr %i.jw, null
  br i1 %.not.i.i.i194, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit
  %i.jx = load ptr, ptr %i.hq, align 8, !tbaa !27
  %i.jy = ptrtoint ptr %i.jx to i64
  %i.jz = ptrtoint ptr %i.jw to i64
  %i.ka = sub i64 %i.jy, %i.jz
  call void @_ZdlPvm(ptr noundef nonnull %i.jw, i64 noundef %i.ka) #15
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.kb = load i64, ptr %i.n, align 8, !tbaa !49  ; 3 uses
  %i.kc = icmp sgt i64 %i.kb, %indvars.iv.next400
  br i1 %i.kc, label %.lr.ph307, label %._crit_edge308.loopexit, !llvm.loop !85

bb.ak:                                            ; preds = %.lr.ph307
  %i.kd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit196

bb.al:                                            ; preds = %bb.ai, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i
  %i.ke = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kf = load ptr, ptr %4, align 8, !tbaa !26    ; 3 uses
  %.not.i.i.i195 = icmp eq ptr %i.kf, null
  br i1 %.not.i.i.i195, label %_ZNSt6vectorIiSaIiEED2Ev.exit196, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.kg = load ptr, ptr %i.hq, align 8, !tbaa !27
  %i.kh = ptrtoint ptr %i.kg to i64
  %i.ki = ptrtoint ptr %i.kf to i64
  %i.kj = sub i64 %i.kh, %i.ki
  call void @_ZdlPvm(ptr noundef nonnull %i.kf, i64 noundef %i.kj) #15
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit196

_ZNSt6vectorIiSaIiEED2Ev.exit196:                 ; preds = %bb.am, %bb.al, %bb.ak
  %.pn152 = phi { ptr, i32 } [ %i.kd, %bb.ak ], [ %i.ke, %bb.al ], [ %i.ke, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %.body

._crit_edge342:                                   ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit, %.preheader246
  %.not4.i.i.i = icmp eq ptr %.pr.i, %i.hn
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIS0_IiSaIiEESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge342, %_ZSt8_DestroyISt6vectorIS0_IiSaIiEESaIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.la, %_ZSt8_DestroyISt6vectorIS0_IiSaIiEESaIS2_EEEvPT_.exit.i.i.i ], [ %.pr.i, %._crit_edge342 ] ; 5 uses
  %i.kk = load ptr, ptr %.05.i.i.i, align 8, !tbaa !22 ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !23 ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.kk, %i.km
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.kt, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.kk, %.lr.ph.i.i.i ] ; 3 uses
  %i.kn = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8, !tbaa !26 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.kn, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i.i.i.i, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ko = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 16
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !27
  %i.kq = ptrtoint ptr %i.kp to i64
  %i.kr = ptrtoint ptr %i.kn to i64
  %i.ks = sub i64 %i.kq, %i.kr
  call void @_ZdlPvm(ptr noundef nonnull %i.kn, i64 noundef %i.ks) #15
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %bb.an, %.lr.ph.i.i.i.i.i.i.i
  %i.kt = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.kt, %i.km
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %.05.i.i.i, align 8, !tbaa !22
  br label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %.lr.ph.i.i.i
  %i.ku = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.kk, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.ku, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIS0_IiSaIiEESaIS2_EEEvPT_.exit.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i
  %i.kv = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !41
  %i.kx = ptrtoint ptr %i.kw to i64
  %i.ky = ptrtoint ptr %i.ku to i64
  %i.kz = sub i64 %i.kx, %i.ky
  call void @_ZdlPvm(ptr noundef nonnull %i.ku, i64 noundef %i.kz) #15
  br label %_ZSt8_DestroyISt6vectorIS0_IiSaIiEESaIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIS0_IiSaIiEESaIS2_EEEvPT_.exit.i.i.i: ; preds = %bb.ao, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i
  %i.la = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i197 = icmp eq ptr %i.la, %i.hn
  br i1 %.not.i.i.i197, label %_ZSt8_DestroyIPSt6vectorIS0_IiSaIiEESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPSt6vectorIS0_IiSaIiEESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorIS0_IiSaIiEESaIS2_EEEvPT_.exit.i.i.i, %._crit_edge342
  %.not.i.i1.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIS0_IiSaIiEESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %i.hz) #15
  br label %_ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EED2Ev.exit

_ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIS0_IiSaIiEESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.bc

.lr.ph341:                                        ; preds = %.lr.ph341.preheader, %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit
  %indvars.iv429 = phi i64 [ 0, %.lr.ph341.preheader ], [ %indvars.iv.next430, %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit ] ; 5 uses
  %i.lb = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.lc = load ptr, ptr %1, align 8, !tbaa !22    ; 2 uses
  %i.ld = ptrtoint ptr %i.lb to i64
  %i.le = ptrtoint ptr %i.lc to i64
  %i.lf = sub i64 %i.ld, %i.le
  %i.lg = sdiv exact i64 %i.lf, 24                ; 2 uses
  %.not.i.i198 = icmp ugt i64 %i.lg, %indvars.iv429
  br i1 %.not.i.i198, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph341
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.4, i64 noundef %indvars.iv429, i64 noundef %i.lg) #16
          to label %.noexc199 unwind label %bb.as

.noexc199:                                        ; preds = %bb.aq
  unreachable

bb.ar:                                            ; preds = %.lr.ph341
  %i.lh = getelementptr inbounds nuw [24 x i8], ptr %i.lc, i64 %indvars.iv429 ; 4 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 8 ; 2 uses
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !34
  %i.lk = load ptr, ptr %i.lh, align 8, !tbaa !26
  %i.ll = icmp eq ptr %i.lj, %i.lk
  br i1 %i.ll, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit, label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.lm = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.at:                                            ; preds = %bb.ar
  %i.ln = getelementptr inbounds nuw [24 x i8], ptr %.pr.i, i64 %indvars.iv429 ; 4 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 8 ; 3 uses
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !23 ; 3 uses
  %i.lq = load ptr, ptr %i.ln, align 8, !tbaa !22 ; 3 uses
  %i.lr = ptrtoint ptr %i.lp to i64
  %i.ls = ptrtoint ptr %i.lq to i64
  %i.lt = sub i64 %i.lr, %i.ls                    ; 4 uses
  %.not.i.i.i.i201 = icmp eq ptr %i.lp, %i.lq
  br i1 %.not.i.i.i.i201, label %.noexc204, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.lu = icmp ugt i64 %i.lt, 9223372036854775800
  br i1 %i.lu, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv.exit.i.i.i.i, !prof !43

.noexc.i.i:                                       ; preds = %bb.au
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #16
          to label %.noexc203 unwind label %.loopexit.split-lp

.noexc203:                                        ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.au
  %i.lv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lt) #17
          to label %_ZNSt15__new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv.exit.i.i.i.i..noexc204_crit_edge unwind label %.loopexit247

_ZNSt15__new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv.exit.i.i.i.i..noexc204_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv.exit.i.i.i.i
  %.pre440 = load ptr, ptr %i.ln, align 8, !tbaa !44
  %.pre441 = load ptr, ptr %i.lo, align 8, !tbaa !44
  br label %.noexc204

.noexc204:                                        ; preds = %_ZNSt15__new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv.exit.i.i.i.i..noexc204_crit_edge, %bb.at
  %i.lw = phi ptr [ %i.lp, %bb.at ], [ %.pre441, %_ZNSt15__new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv.exit.i.i.i.i..noexc204_crit_edge ]
  %i.lx = phi ptr [ %i.lq, %bb.at ], [ %.pre440, %_ZNSt15__new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv.exit.i.i.i.i..noexc204_crit_edge ]
  %i.ly = phi ptr [ null, %bb.at ], [ %i.lv, %_ZNSt15__new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv.exit.i.i.i.i..noexc204_crit_edge ] ; 17 uses
  %i.lz = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIiSaIiEES2_IS4_SaIS4_EEEEPS4_ET0_T_SC_SB_(ptr %i.lx, ptr %i.lw, ptr noundef %i.ly)
          to label %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit.preheader unwind label %bb.av ; 2 uses

_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit.preheader: ; preds = %.noexc204
  %i.ma = load ptr, ptr %i.lo, align 8, !tbaa !23
  %i.mb = load ptr, ptr %i.ln, align 8, !tbaa !22 ; 19 uses
  %i.mc = ptrtoint ptr %i.ma to i64
  %i.md = ptrtoint ptr %i.mb to i64
  %i.me = sub i64 %i.mc, %i.md
  %i.mf = sdiv exact i64 %i.me, 24                ; 14 uses
  %i.mg = trunc i64 %i.mf to i32                  ; 5 uses
  %i.mh = icmp sgt i32 %i.mg, 0                   ; 3 uses
  br i1 %i.mh, label %.lr.ph323.preheader, label %.preheader245

.lr.ph323.preheader:                              ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit.preheader
  %wide.trip.count416 = and i64 %i.mf, 2147483647 ; 2 uses
  %i.mi = add nsw i64 %wide.trip.count416, -1     ; 2 uses
  %xtraiter = and i64 %i.mf, 3                    ; 3 uses
  %i.mj = icmp ult i64 %i.mi, 3
  %unroll_iter = and i64 %i.mf, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod674 = icmp ne i64 %xtraiter, 0
  %xtraiter676 = and i64 %i.mf, 3                 ; 3 uses
  %i.mk = icmp ult i64 %i.mi, 3
  %unroll_iter681 = and i64 %i.mf, 2147483644
  %lcmp.mod678.not = icmp eq i64 %xtraiter676, 0
  %lcmp.mod680 = icmp ne i64 %xtraiter676, 0
  br label %.lr.ph323

bb.av:                                            ; preds = %.noexc204
  %i.ml = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i202 = icmp eq ptr %i.ly, null
  br i1 %.not.i.i.i202, label %.body, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @_ZdlPvm(ptr noundef nonnull %i.ly, i64 noundef %i.lt) #15
  br label %.body

.preheader245:                                    ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit, %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit.preheader
  %.not326 = icmp slt i32 %i.mg, 0
  br i1 %.not326, label %._crit_edge330, label %.lr.ph329.preheader

.lr.ph329.preheader:                              ; preds = %.preheader245
  %i.mm = add nuw i32 %i.mg, 1                    ; 2 uses
  %i.mn = icmp eq i32 %i.mg, 0
  br i1 %i.mn, label %.lr.ph329.epil.preheader, label %.lr.ph329.preheader.new

.lr.ph329.preheader.new:                          ; preds = %.lr.ph329.preheader
  %unroll_iter688 = and i32 %i.mm, -2
  br label %.lr.ph329

.loopexit247:                                     ; preds = %_ZNSt15__new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv.exit.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %.noexc.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph323:                                        ; preds = %.lr.ph323.preheader, %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit
  %indvars.iv413 = phi i64 [ 0, %.lr.ph323.preheader ], [ %indvars.iv.next414, %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit ] ; 3 uses
  %i.mo = getelementptr inbounds nuw [24 x i8], ptr %i.mb, i64 %indvars.iv413
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !26 ; 2 uses
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !31 ; 5 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mp, i64 4
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !31 ; 5 uses
  br i1 %i.mj, label %.epil.preheader, label %.lr.ph323.new

._crit_edge314.unr-lcssa:                         ; preds = %.lr.ph323.new
  br i1 %lcmp.mod.not, label %._crit_edge314, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge314.unr-lcssa, %.lr.ph323
  %indvars.iv405.epil.init = phi i64 [ 0, %.lr.ph323 ], [ %indvars.iv.next406.3, %._crit_edge314.unr-lcssa ]
  %.0125310.epil.init = phi i32 [ -1, %.lr.ph323 ], [ %spec.select.3, %._crit_edge314.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod674)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ax, %.epil.preheader
  %indvars.iv405.epil = phi i64 [ %indvars.iv405.epil.init, %.epil.preheader ], [ %indvars.iv.next406.epil, %bb.ax ] ; 3 uses
  %.0125310.epil = phi i32 [ %.0125310.epil.init, %.epil.preheader ], [ %spec.select.epil, %bb.ax ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ax ]
  %i.mt = getelementptr inbounds nuw [24 x i8], ptr %i.mb, i64 %indvars.iv405.epil
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !26
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 4
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !31
  %i.mx = icmp eq i32 %i.mw, %i.mq
  %i.my = trunc nuw nsw i64 %indvars.iv405.epil to i32
  %spec.select.epil = select i1 %i.mx, i32 %i.my, i32 %.0125310.epil ; 2 uses
  %indvars.iv.next406.epil = add nuw nsw i64 %indvars.iv405.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge314, label %bb.ax, !llvm.loop !86

._crit_edge314:                                   ; preds = %bb.ax, %._crit_edge314.unr-lcssa
  %spec.select.lcssa = phi i32 [ %spec.select.3, %._crit_edge314.unr-lcssa ], [ %spec.select.epil, %bb.ax ]
  %i.mz = getelementptr inbounds nuw [24 x i8], ptr %i.ly, i64 %indvars.iv413
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !26 ; 2 uses
  store i32 %spec.select.lcssa, ptr %i.na, align 4, !tbaa !31
  br i1 %i.mk, label %.epil.preheader675, label %._crit_edge314.new

.lr.ph323.new:                                    ; preds = %.lr.ph323, %.lr.ph323.new
  %indvars.iv405 = phi i64 [ %indvars.iv.next406.3, %.lr.ph323.new ], [ 0, %.lr.ph323 ] ; 6 uses
  %.0125310 = phi i32 [ %spec.select.3, %.lr.ph323.new ], [ -1, %.lr.ph323 ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph323.new ], [ 0, %.lr.ph323 ]
  %i.nb = getelementptr inbounds nuw [24 x i8], ptr %i.mb, i64 %indvars.iv405
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !26
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 4
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !31
  %i.nf = icmp eq i32 %i.ne, %i.mq
  %i.ng = trunc nuw nsw i64 %indvars.iv405 to i32
  %spec.select = select i1 %i.nf, i32 %i.ng, i32 %.0125310
  %indvars.iv.next406 = or disjoint i64 %indvars.iv405, 1 ; 2 uses
  %i.nh = getelementptr inbounds nuw [24 x i8], ptr %i.mb, i64 %indvars.iv.next406
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !26
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 4
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !31
  %i.nl = icmp eq i32 %i.nk, %i.mq
  %i.nm = trunc nuw nsw i64 %indvars.iv.next406 to i32
  %spec.select.1 = select i1 %i.nl, i32 %i.nm, i32 %spec.select
  %indvars.iv.next406.1 = or disjoint i64 %indvars.iv405, 2 ; 2 uses
  %i.nn = getelementptr inbounds nuw [24 x i8], ptr %i.mb, i64 %indvars.iv.next406.1
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !26
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 4
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !31
  %i.nr = icmp eq i32 %i.nq, %i.mq
  %i.ns = trunc nuw nsw i64 %indvars.iv.next406.1 to i32
  %spec.select.2 = select i1 %i.nr, i32 %i.ns, i32 %spec.select.1
  %indvars.iv.next406.2 = or disjoint i64 %indvars.iv405, 3 ; 2 uses
  %i.nt = getelementptr inbounds nuw [24 x i8], ptr %i.mb, i64 %indvars.iv.next406.2
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !26
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 4
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !31
  %i.nx = icmp eq i32 %i.nw, %i.mq
  %i.ny = trunc nuw nsw i64 %indvars.iv.next406.2 to i32
  %spec.select.3 = select i1 %i.nx, i32 %i.ny, i32 %spec.select.2 ; 3 uses
  %indvars.iv.next406.3 = add nuw nsw i64 %indvars.iv405, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge314.unr-lcssa, label %.lr.ph323.new, !llvm.loop !87

_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit.unr-lcssa: ; preds = %._crit_edge314.new
  br i1 %lcmp.mod678.not, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit, label %.epil.preheader675

.epil.preheader675:                               ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit.unr-lcssa, %._crit_edge314
  %indvars.iv408.epil.init = phi i64 [ 0, %._crit_edge314 ], [ %indvars.iv.next409.3, %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit.unr-lcssa ]
  %.0122316.epil.init = phi i32 [ -1, %._crit_edge314 ], [ %spec.select158.3, %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod680)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %.epil.preheader675
  %indvars.iv408.epil = phi i64 [ %indvars.iv408.epil.init, %.epil.preheader675 ], [ %indvars.iv.next409.epil, %bb.ay ] ; 3 uses
  %.0122316.epil = phi i32 [ %.0122316.epil.init, %.epil.preheader675 ], [ %spec.select158.epil, %bb.ay ]
  %epil.iter677 = phi i64 [ 0, %.epil.preheader675 ], [ %epil.iter677.next, %bb.ay ]
  %i.nz = getelementptr inbounds nuw [24 x i8], ptr %i.mb, i64 %indvars.iv408.epil
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !26
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !31
  %i.oc = icmp eq i32 %i.ob, %i.ms
  %i.od = trunc nuw nsw i64 %indvars.iv408.epil to i32
  %spec.select158.epil = select i1 %i.oc, i32 %i.od, i32 %.0122316.epil ; 2 uses
  %indvars.iv.next409.epil = add nuw nsw i64 %indvars.iv408.epil, 1
  %epil.iter677.next = add i64 %epil.iter677, 1   ; 2 uses
  %epil.iter677.cmp.not = icmp eq i64 %epil.iter677.next, %xtraiter676
  br i1 %epil.iter677.cmp.not, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit, label %bb.ay, !llvm.loop !88

_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit:     ; preds = %bb.ay, %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit.unr-lcssa
  %spec.select158.lcssa = phi i32 [ %spec.select158.3, %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit.unr-lcssa ], [ %spec.select158.epil, %bb.ay ]
  %i.oe = getelementptr inbounds nuw i8, ptr %i.na, i64 4
  store i32 %spec.select158.lcssa, ptr %i.oe, align 4, !tbaa !31
  %indvars.iv.next414 = add nuw nsw i64 %indvars.iv413, 1 ; 2 uses
  %exitcond417.not = icmp eq i64 %indvars.iv.next414, %wide.trip.count416
  br i1 %exitcond417.not, label %.preheader245, label %.lr.ph323, !llvm.loop !89

._crit_edge314.new:                               ; preds = %._crit_edge314, %._crit_edge314.new
  %indvars.iv408 = phi i64 [ %indvars.iv.next409.3, %._crit_edge314.new ], [ 0, %._crit_edge314 ] ; 6 uses
  %.0122316 = phi i32 [ %spec.select158.3, %._crit_edge314.new ], [ -1, %._crit_edge314 ]
end_hunk_1
begin_hunk_2_@_ZN3igl14adjacency_listIN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEEiEEvRKNS1_10MatrixBaseIT_EERSt6vectorIS9_IT0_SaISA_EESaISC_EEb:bb.a
  %.lcssa.i.i.i.i = phi <4 x i32> [ %i.v, %bb.d ], [ %i.ag, %.lr.ph.i.i.i.i160 ]
  %.sroa.064.0.lcssa.i.i.i.i = phi <4 x i32> [ %i.s, %bb.d ], [ %i.ac, %.lr.ph.i.i.i.i160 ]
  %i.x = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %.sroa.064.0.lcssa.i.i.i.i, <4 x i32> %.lcssa.i.i.i.i) ; 2 uses
  %i.y = icmp sgt i64 %i.r, %i.p
  br i1 %i.y, label %bb.e, label %bb.f

.lr.ph.i.i.i.i160:                                ; preds = %bb.d, %.lr.ph.i.i.i.i160
  %.05779.i.i.i.i = phi i64 [ %.057.i.i.i.i, %.lr.ph.i.i.i.i160 ], [ 8, %bb.d ] ; 3 uses
  %.057.in78.i.i.i.i = phi i64 [ %.05779.i.i.i.i, %.lr.ph.i.i.i.i160 ], [ 0, %bb.d ]
  %.sroa.064.077.i.i.i.i = phi <4 x i32> [ %i.ac, %.lr.ph.i.i.i.i160 ], [ %i.s, %bb.d ]
  %i.z = phi <4 x i32> [ %i.ag, %.lr.ph.i.i.i.i160 ], [ %i.v, %bb.d ]
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.05779.i.i.i.i
  %i.ab = load <4 x i32>, ptr %i.aa, align 16, !tbaa !30
  %i.ac = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %.sroa.064.077.i.i.i.i, <4 x i32> %i.ab) ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.057.in78.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.af = load <4 x i32>, ptr %i.ae, align 16, !tbaa !30
  %i.ag = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.z, <4 x i32> %i.af) ; 2 uses
  %.057.i.i.i.i = add nuw nsw i64 %.05779.i.i.i.i, 8 ; 2 uses
  %i.ah = icmp slt i64 %.057.i.i.i.i, %i.p
  br i1 %i.ah, label %.lr.ph.i.i.i.i160, label %._crit_edge.i.i.i.i, !llvm.loop !95

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.p
  %i.aj = load <4 x i32>, ptr %i.ai, align 16, !tbaa !30
  %i.ak = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.x, <4 x i32> %i.aj)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i, %bb.c
  %.sroa.064.2.i.i.i.i = phi <4 x i32> [ %i.s, %bb.c ], [ %i.ak, %bb.e ], [ %i.x, %._crit_edge.i.i.i.i ]
  %i.al = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %.sroa.064.2.i.i.i.i) ; 3 uses
  %i.am = icmp slt i64 %i.r, %i.n
  br i1 %i.am, label %.lr.ph84.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE8maxCoeffEv.exit

.lr.ph84.i.i.i.i.preheader:                       ; preds = %bb.f
  %i.an = sub i64 %i.n, %i.r                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.an, 8
  br i1 %min.iters.check, label %.lr.ph84.i.i.i.i.preheader659, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph84.i.i.i.i.preheader
  %n.vec = and i64 %i.an, -8                      ; 3 uses
  %i.ao = add i64 %i.r, %n.vec
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.al, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ap = getelementptr [4 x i8], ptr %i.k, i64 %i.r
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.as, %vector.body ]
  %vec.phi602 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.at, %vector.body ]
  %i.aq = getelementptr [4 x i8], ptr %i.ap, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %wide.load = load <4 x i32>, ptr %i.aq, align 4, !tbaa !31
  %wide.load603 = load <4 x i32>, ptr %i.ar, align 4, !tbaa !31
  %i.as = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %wide.load) ; 2 uses
  %i.at = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi602, <4 x i32> %wide.load603) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !96

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.as, <4 x i32> %i.at)
  %i.av = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE8maxCoeffEv.exit, label %.lr.ph84.i.i.i.i.preheader659

.lr.ph84.i.i.i.i.preheader659:                    ; preds = %.lr.ph84.i.i.i.i.preheader, %middle.block
  %.05582.i.i.i.i.ph = phi i64 [ %i.r, %.lr.ph84.i.i.i.i.preheader ], [ %i.ao, %middle.block ]
  %.181.i.i.i.i.ph = phi i32 [ %i.al, %.lr.ph84.i.i.i.i.preheader ], [ %i.av, %middle.block ]
  br label %.lr.ph84.i.i.i.i

.lr.ph84.i.i.i.i:                                 ; preds = %.lr.ph84.i.i.i.i.preheader659, %.lr.ph84.i.i.i.i
  %.05582.i.i.i.i = phi i64 [ %i.az, %.lr.ph84.i.i.i.i ], [ %.05582.i.i.i.i.ph, %.lr.ph84.i.i.i.i.preheader659 ] ; 2 uses
  %.181.i.i.i.i = phi i32 [ %i.ay, %.lr.ph84.i.i.i.i ], [ %.181.i.i.i.i.ph, %.lr.ph84.i.i.i.i.preheader659 ]
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.k, i64 %.05582.i.i.i.i
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !31
  %i.ay = tail call noundef i32 @llvm.smax.i32(i32 %.181.i.i.i.i, i32 %i.ax) ; 2 uses
  %i.az = add nsw i64 %.05582.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.az, %i.n
  br i1 %exitcond.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE8maxCoeffEv.exit, label %.lr.ph84.i.i.i.i, !llvm.loop !97

bb.g:                                             ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE5clearEv.exit
  %i.ba = load i32, ptr %i.k, align 4, !tbaa !31  ; 3 uses
  %i.bb = icmp sgt i64 %i.m, 0
  br i1 %i.bb, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE8maxCoeffEv.exit

.lr.ph89.i.i.i.i.preheader:                       ; preds = %bb.g
  %i.bc = add nsw i64 %i.n, -1                    ; 2 uses
  %min.iters.check605 = icmp ult i64 %i.n, 9
  br i1 %min.iters.check605, label %.lr.ph89.i.i.i.i.preheader655, label %vector.ph606

vector.ph606:                                     ; preds = %.lr.ph89.i.i.i.i.preheader
  %n.vec607 = and i64 %i.bc, -8                   ; 3 uses
  %i.bd = or disjoint i64 %n.vec607, 1
  %broadcast.splatinsert608 = insertelement <4 x i32> poison, i32 %i.ba, i64 0
  %broadcast.splat609 = shufflevector <4 x i32> %broadcast.splatinsert608, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body610

vector.body610:                                   ; preds = %vector.body610, %vector.ph606
  %index611 = phi i64 [ 0, %vector.ph606 ], [ %index.next616, %vector.body610 ] ; 2 uses
  %vec.phi612 = phi <4 x i32> [ %broadcast.splat609, %vector.ph606 ], [ %i.bh, %vector.body610 ]
  %vec.phi613 = phi <4 x i32> [ %broadcast.splat609, %vector.ph606 ], [ %i.bi, %vector.body610 ]
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index611 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 20
  %wide.load614 = load <4 x i32>, ptr %i.bf, align 4, !tbaa !31
  %wide.load615 = load <4 x i32>, ptr %i.bg, align 4, !tbaa !31
  %i.bh = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi612, <4 x i32> %wide.load614) ; 2 uses
  %i.bi = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi613, <4 x i32> %wide.load615) ; 2 uses
  %index.next616 = add nuw i64 %index611, 8       ; 2 uses
  %i.bj = icmp eq i64 %index.next616, %n.vec607
  br i1 %i.bj, label %middle.block617, label %vector.body610, !llvm.loop !98

middle.block617:                                  ; preds = %vector.body610
  %rdx.minmax618 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.bh, <4 x i32> %i.bi)
  %i.bk = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax618) ; 2 uses
  %cmp.n619 = icmp eq i64 %i.bc, %n.vec607
  br i1 %cmp.n619, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE8maxCoeffEv.exit, label %.lr.ph89.i.i.i.i.preheader655

.lr.ph89.i.i.i.i.preheader655:                    ; preds = %.lr.ph89.i.i.i.i.preheader, %middle.block617
  %.087.i.i.i.i.ph = phi i64 [ 1, %.lr.ph89.i.i.i.i.preheader ], [ %i.bd, %middle.block617 ]
  %.286.i.i.i.i.ph = phi i32 [ %i.ba, %.lr.ph89.i.i.i.i.preheader ], [ %i.bk, %middle.block617 ]
  br label %.lr.ph89.i.i.i.i

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader655, %.lr.ph89.i.i.i.i
  %.087.i.i.i.i = phi i64 [ %i.bo, %.lr.ph89.i.i.i.i ], [ %.087.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader655 ] ; 2 uses
  %.286.i.i.i.i = phi i32 [ %i.bn, %.lr.ph89.i.i.i.i ], [ %.286.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader655 ]
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.087.i.i.i.i
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !31
  %i.bn = tail call noundef i32 @llvm.smax.i32(i32 %.286.i.i.i.i, i32 %i.bm) ; 2 uses
  %i.bo = add nuw nsw i64 %.087.i.i.i.i, 1        ; 2 uses
  %exitcond96.not.i.i.i.i = icmp eq i64 %i.bo, %i.n
  br i1 %exitcond96.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE8maxCoeffEv.exit, label %.lr.ph89.i.i.i.i, !llvm.loop !99

_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE8maxCoeffEv.exit: ; preds = %.lr.ph84.i.i.i.i, %.lr.ph89.i.i.i.i, %middle.block, %middle.block617, %bb.f, %bb.g
  %.3.i.i.i.i = phi i32 [ %i.bn, %.lr.ph89.i.i.i.i ], [ %i.ba, %bb.g ], [ %i.al, %bb.f ], [ %i.bk, %middle.block617 ], [ %i.av, %middle.block ], [ %i.ay, %.lr.ph84.i.i.i.i ]
  %i.bp = add nsw i32 %.3.i.i.i.i, 1
  %i.bq = sext i32 %i.bp to i64                   ; 4 uses
  %i.br = load ptr, ptr %1, align 8, !tbaa !22    ; 2 uses
  %i.bs = ptrtoint ptr %i.a to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = sdiv exact i64 %i.bu, 24                ; 3 uses
  %i.bw = icmp ult i64 %i.bv, %i.bq
  br i1 %i.bw, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE8maxCoeffEv.exit
  %i.bx = sub nuw nsw i64 %i.bq, %i.bv
  tail call void @_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.bx)
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEm.exit

bb.i:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE8maxCoeffEv.exit
  %i.by = icmp ugt i64 %i.bv, %i.bq
  br i1 %i.by, label %bb.j, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEm.exit

bb.j:                                             ; preds = %bb.i
  %i.bz = getelementptr inbounds nuw [24 x i8], ptr %i.br, i64 %i.bq ; 3 uses
  %.not.i.i161 = icmp eq ptr %i.a, %i.bz
  br i1 %.not.i.i161, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEm.exit, label %.lr.ph.i.i.i.i162

.lr.ph.i.i.i.i162:                                ; preds = %bb.j, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i165
  %.05.i.i.i.i163 = phi ptr [ %i.cg, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i165 ], [ %i.bz, %bb.j ] ; 3 uses
  %i.ca = load ptr, ptr %.05.i.i.i.i163, align 8, !tbaa !26 ; 3 uses
  %.not.i.i.i.i.i.i.i.i164 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i.i.i.i.i164, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i165, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i162
  %i.cb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i163, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !27
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %i.ca to i64
  %i.cf = sub i64 %i.cd, %i.ce
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ca, i64 noundef %i.cf) #15
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i165

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i165: ; preds = %bb.k, %.lr.ph.i.i.i.i162
  %i.cg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i163, i64 24 ; 2 uses
  %.not.i.i.i.i166 = icmp eq ptr %i.cg, %i.a
  br i1 %.not.i.i.i.i166, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i167, label %.lr.ph.i.i.i.i162, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i167: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i165
  store ptr %i.bz, ptr %i.b, align 8, !tbaa !23
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEm.exit

_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEm.exit:    ; preds = %bb.h, %bb.i, %bb.j, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i167
  %i.ch = load i64, ptr %i.l, align 8, !tbaa !115
  %i.ci = icmp sgt i64 %i.ch, 0
  br i1 %i.ci, label %.preheader254, label %.preheader253

.preheader254:                                    ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEm.exit, %bb.l
  %indvars.iv387 = phi i64 [ %indvars.iv.next388, %bb.l ], [ 0, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEm.exit ] ; 2 uses
  br label %bb.m

.preheader253:                                    ; preds = %bb.l, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEm.exit
  %i.cj = load ptr, ptr %i.b, align 8, !tbaa !23  ; 2 uses
  %i.ck = load ptr, ptr %1, align 8, !tbaa !22    ; 3 uses
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm                    ; 2 uses
  %i.co = sdiv exact i64 %i.cn, 24
  %i.cp = trunc i64 %i.co to i32
  %i.cq = icmp sgt i32 %i.cp, 0
  br i1 %i.cq, label %.lr.ph, label %._crit_edge

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit178
  %indvars.iv.next388 = add nuw nsw i64 %indvars.iv387, 1 ; 2 uses
  %i.cr = load i64, ptr %i.l, align 8, !tbaa !115
  %i.cs = icmp sgt i64 %i.cr, %indvars.iv.next388
  br i1 %i.cs, label %.preheader254, label %.preheader253, !llvm.loop !100

bb.m:                                             ; preds = %.preheader254, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit178
  %indvars.iv = phi i64 [ 0, %.preheader254 ], [ %indvars.iv.next, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit178 ] ; 2 uses
  %i.ct = load ptr, ptr %0, align 8, !tbaa !114
  %i.cu = load i64, ptr %i.l, align 8, !tbaa !115 ; 2 uses
  %i.cv = mul nsw i64 %i.cu, %indvars.iv
  %i.cw = getelementptr [4 x i8], ptr %i.ct, i64 %indvars.iv387 ; 2 uses
  %i.cx = getelementptr [4 x i8], ptr %i.cw, i64 %i.cv
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !31 ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.cz = icmp eq i64 %indvars.iv.next, 3
  %.zext = select i1 %i.cz, i64 0, i64 %indvars.iv.next
  %i.da = mul nsw i64 %i.cu, %.zext
  %i.db = getelementptr [4 x i8], ptr %i.cw, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !31 ; 3 uses
  %i.dd = sext i32 %i.cy to i64                   ; 3 uses
  %i.de = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.df = load ptr, ptr %1, align 8, !tbaa !22    ; 3 uses
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = sub i64 %i.dg, %i.dh
  %i.dj = sdiv exact i64 %i.di, 24                ; 3 uses
  %.not.i.i168 = icmp ugt i64 %i.dj, %i.dd
  br i1 %.not.i.i168, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE2atEm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.4, i64 noundef %i.dd, i64 noundef %i.dj) #16
  unreachable

_ZNSt6vectorIS_IiSaIiEESaIS1_EE2atEm.exit:        ; preds = %bb.m
  %i.dk = getelementptr inbounds nuw [24 x i8], ptr %i.df, i64 %i.dd ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 3 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !34 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 3 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !27
  %.not.i = icmp eq ptr %i.dm, %i.do
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE2atEm.exit
  store i32 %i.dc, ptr %i.dm, align 4, !tbaa !31
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  store ptr %i.dp, ptr %i.dl, align 8, !tbaa !34
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.p:                                             ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE2atEm.exit
  %i.dq = load ptr, ptr %i.dk, align 8, !tbaa !26 ; 4 uses
  %i.dr = ptrtoint ptr %i.dm to i64
  %i.ds = ptrtoint ptr %i.dq to i64               ; 2 uses
  %i.dt = sub i64 %i.dr, %i.ds                    ; 5 uses
  %i.du = icmp eq i64 %i.dt, 9223372036854775804
  br i1 %i.du, label %bb.q, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.q:                                             ; preds = %bb.p
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #16
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.p
  %i.dv = ashr exact i64 %i.dt, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.dv, i64 1)
  %i.dw = add nsw i64 %.sroa.speculated.i.i.i, %i.dv ; 2 uses
  %i.dx = icmp ult i64 %i.dw, %i.dv
  %i.dy = tail call i64 @llvm.umin.i64(i64 %i.dw, i64 2305843009213693951)
  %i.dz = select i1 %i.dx, i64 2305843009213693951, i64 %i.dy ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.dz, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ea = shl nuw nsw i64 %i.dz, 2
  %i.eb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ea) #17 ; 4 uses
  %i.ec = getelementptr inbounds i8, ptr %i.eb, i64 %i.dt ; 2 uses
  store i32 %i.dc, ptr %i.ec, align 4, !tbaa !31
  %i.ed = icmp sgt i64 %i.dt, 0
  br i1 %i.ed, label %bb.r, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.r:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.eb, ptr align 4 %i.dq, i64 %i.dt, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.r, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %.not.i17.i.i = icmp eq ptr %i.dq, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.ef = load ptr, ptr %i.dn, align 8, !tbaa !27
  %i.eg = ptrtoint ptr %i.ef to i64
  %i.eh = sub i64 %i.eg, %i.ds
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dq, i64 noundef %i.eh) #15
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.s, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.eb, ptr %i.dk, align 8, !tbaa !26
  store ptr %i.ee, ptr %i.dl, align 8, !tbaa !34
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.dz
  store ptr %i.ei, ptr %i.dn, align 8, !tbaa !27
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !23
  %.pre428 = load ptr, ptr %1, align 8, !tbaa !22 ; 2 uses
  %.pre440 = ptrtoint ptr %.pre to i64
  %.pre442 = ptrtoint ptr %.pre428 to i64
  %.pre444 = sub i64 %.pre440, %.pre442
  %.pre446 = sdiv exact i64 %.pre444, 24
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.o, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %.pre-phi447 = phi i64 [ %i.dj, %bb.o ], [ %.pre446, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ] ; 2 uses
  %i.ej = phi ptr [ %i.df, %bb.o ], [ %.pre428, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ]
  %i.ek = sext i32 %i.dc to i64                   ; 3 uses
  %.not.i.i169 = icmp ugt i64 %.pre-phi447, %i.ek
  br i1 %.not.i.i169, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE2atEm.exit170, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.4, i64 noundef %i.ek, i64 noundef %.pre-phi447) #16
  unreachable

_ZNSt6vectorIS_IiSaIiEESaIS1_EE2atEm.exit170:     ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.el = getelementptr inbounds nuw [24 x i8], ptr %i.ej, i64 %i.ek ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 3 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !34 ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 16 ; 3 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !27
  %.not.i171 = icmp eq ptr %i.en, %i.ep
  br i1 %.not.i171, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE2atEm.exit170
  store i32 %i.cy, ptr %i.en, align 4, !tbaa !31
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  store ptr %i.eq, ptr %i.em, align 8, !tbaa !34
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit178

bb.v:                                             ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE2atEm.exit170
  %i.er = load ptr, ptr %i.el, align 8, !tbaa !26 ; 4 uses
  %i.es = ptrtoint ptr %i.en to i64
  %i.et = ptrtoint ptr %i.er to i64               ; 2 uses
  %i.eu = sub i64 %i.es, %i.et                    ; 5 uses
  %i.ev = icmp eq i64 %i.eu, 9223372036854775804
  br i1 %i.ev, label %bb.w, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i172

bb.w:                                             ; preds = %bb.v
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #16
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i172: ; preds = %bb.v
  %i.ew = ashr exact i64 %i.eu, 2                 ; 3 uses
  %.sroa.speculated.i.i.i173 = tail call i64 @llvm.umax.i64(i64 %i.ew, i64 1)
  %i.ex = add nsw i64 %.sroa.speculated.i.i.i173, %i.ew ; 2 uses
  %i.ey = icmp ult i64 %i.ex, %i.ew
  %i.ez = tail call i64 @llvm.umin.i64(i64 %i.ex, i64 2305843009213693951)
  %i.fa = select i1 %i.ey, i64 2305843009213693951, i64 %i.ez ; 3 uses
  %.not.i.i.i174 = icmp ne i64 %i.fa, 0
  tail call void @llvm.assume(i1 %.not.i.i.i174)
  %i.fb = shl nuw nsw i64 %i.fa, 2
  %i.fc = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fb) #17 ; 4 uses
  %i.fd = getelementptr inbounds i8, ptr %i.fc, i64 %i.eu ; 2 uses
  store i32 %i.cy, ptr %i.fd, align 4, !tbaa !31
  %i.fe = icmp sgt i64 %i.eu, 0
  br i1 %i.fe, label %bb.x, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i175

bb.x:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i172
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fc, ptr align 4 %i.er, i64 %i.eu, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i175

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i175: ; preds = %bb.x, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i172
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  %.not.i17.i.i176 = icmp eq ptr %i.er, null
  br i1 %.not.i17.i.i176, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i177, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i175
  %i.fg = load ptr, ptr %i.eo, align 8, !tbaa !27
  %i.fh = ptrtoint ptr %i.fg to i64
  %i.fi = sub i64 %i.fh, %i.et
  tail call void @_ZdlPvm(ptr noundef nonnull %i.er, i64 noundef %i.fi) #15
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i177

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i177: ; preds = %bb.y, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i175
  store ptr %i.fc, ptr %i.el, align 8, !tbaa !26
  store ptr %i.ff, ptr %i.em, align 8, !tbaa !34
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.fa
  store ptr %i.fj, ptr %i.eo, align 8, !tbaa !27
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit178

_ZNSt6vectorIiSaIiEE9push_backERKi.exit178:       ; preds = %bb.u, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i177
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %bb.l, label %bb.m, !llvm.loop !101

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_.exit, %.preheader253
  %.lcssa285 = phi ptr [ %i.cj, %.preheader253 ], [ %i.gq, %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_.exit ]
  %.lcssa284 = phi ptr [ %i.ck, %.preheader253 ], [ %i.gp, %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_.exit ]
  %.lcssa282 = phi i64 [ %i.cn, %.preheader253 ], [ %i.gt, %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_.exit ] ; 4 uses
  br i1 %2, label %bb.ac, label %bb.bq

.lr.ph:                                           ; preds = %.preheader253, %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_.exit
  %i.fk = phi ptr [ %i.gp, %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_.exit ], [ %i.ck, %.preheader253 ] ; 2 uses
  %indvars.iv390 = phi i64 [ %indvars.iv.next391, %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_.exit ], [ 0, %.preheader253 ] ; 4 uses
  %i.fl = getelementptr inbounds nuw [24 x i8], ptr %i.fk, i64 %indvars.iv390 ; 2 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !35 ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !35 ; 4 uses
  %.not.i.i179 = icmp eq ptr %i.fm, %i.fo
  br i1 %.not.i.i179, label %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_.exit, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit: ; preds = %.lr.ph
  %i.fp = ptrtoint ptr %i.fo to i64
  %i.fq = ptrtoint ptr %i.fm to i64
  %i.fr = sub i64 %i.fp, %i.fq
  %i.fs = ashr exact i64 %i.fr, 2
  %i.ft = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.fs, i1 true)
  %i.fu = shl nuw nsw i64 %i.ft, 1
  %i.fv = xor i64 %i.fu, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.fm, ptr %i.fo, i64 noundef %i.fv)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.fm, ptr %i.fo)
  %.pre429 = load ptr, ptr %1, align 8, !tbaa !22 ; 6 uses
  %.phi.trans.insert = getelementptr inbounds nuw [24 x i8], ptr %.pre429, i64 %indvars.iv390 ; 2 uses
  %.pre430 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !35 ; 4 uses
  %.phi.trans.insert431 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 8
  %.pre432 = load ptr, ptr %.phi.trans.insert431, align 8, !tbaa !35 ; 5 uses
  %i.fw = getelementptr inbounds nuw [24 x i8], ptr %.pre429, i64 %indvars.iv390
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.fy = icmp eq ptr %.pre430, %.pre432
  br i1 %i.fy, label %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit, %bb.z
  %.sroa.09.0.i.i.i = phi ptr [ %i.fz, %bb.z ], [ %.pre430, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit ] ; 5 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i, i64 4 ; 3 uses
  %.not.i.i.i180 = icmp eq ptr %i.fz, %.pre432
  br i1 %.not.i.i.i180, label %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_.exit, label %bb.z

bb.z:                                             ; preds = %.preheader.i.i.i
  %i.ga = load i32, ptr %.sroa.09.0.i.i.i, align 4, !tbaa !31 ; 2 uses
  %i.gb = load i32, ptr %i.fz, align 4, !tbaa !31
  %i.gc = icmp eq i32 %i.ga, %i.gb
  br i1 %i.gc, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i, label %.preheader.i.i.i, !llvm.loop !1

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i: ; preds = %bb.z
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i, i64 8 ; 2 uses
  %.not18.i.i = icmp eq ptr %i.gd, %.pre432
  br i1 %.not18.i.i, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i, %bb.ab
  %i.ge = phi i32 [ %i.gg, %bb.ab ], [ %i.ga, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i ]
  %i.gf = phi ptr [ %i.gj, %bb.ab ], [ %i.gd, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i ] ; 2 uses
  %.sroa.0.019.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.ab ], [ %.sroa.09.0.i.i.i, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i ] ; 2 uses
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !31 ; 3 uses
  %i.gh = icmp eq i32 %i.ge, %i.gg
  br i1 %i.gh, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i, i64 4 ; 2 uses
  store i32 %i.gg, ptr %i.gi, align 4, !tbaa !31
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph.i.i
  %.sroa.0.1.i.i = phi ptr [ %.sroa.0.019.i.i, %.lr.ph.i.i ], [ %i.gi, %bb.aa ] ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gf, i64 4 ; 2 uses
  %.not.i.i181 = icmp eq ptr %i.gj, %.pre432
  br i1 %.not.i.i181, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_S7_.exit, label %.lr.ph.i.i, !llvm.loop !2

_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_S7_.exit: ; preds = %bb.ab, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.09.0.i.i.i, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i ], [ %.sroa.0.1.i.i, %bb.ab ]
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 4 ; 2 uses
  %.not.i.i182 = icmp eq ptr %i.gk, %.pre432
  br i1 %.not.i.i182, label %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_S7_.exit
  %i.gl = ptrtoint ptr %i.gk to i64
  %i.gm = ptrtoint ptr %.pre430 to i64
  %i.gn = sub i64 %i.gl, %i.gm
  %i.go = getelementptr inbounds i8, ptr %.pre430, i64 %i.gn
  store ptr %i.go, ptr %i.fx, align 8, !tbaa !34
  br label %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_.exit

_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_.exit: ; preds = %.preheader.i.i.i, %.lr.ph, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_S7_.exit, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i
  %i.gp = phi ptr [ %i.fk, %.lr.ph ], [ %.pre429, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i ], [ %.pre429, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit ], [ %.pre429, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_S7_.exit ], [ %.pre429, %.preheader.i.i.i ] ; 3 uses
  %indvars.iv.next391 = add nuw nsw i64 %indvars.iv390, 1 ; 2 uses
  %i.gq = load ptr, ptr %i.b, align 8, !tbaa !23  ; 2 uses
  %i.gr = ptrtoint ptr %i.gq to i64
  %i.gs = ptrtoint ptr %i.gp to i64
  %i.gt = sub i64 %i.gr, %i.gs                    ; 2 uses
  %i.gu = sdiv exact i64 %i.gt, 24
  %sext = shl i64 %i.gu, 32
  %i.gv = ashr exact i64 %sext, 32
  %i.gw = icmp slt i64 %indvars.iv.next391, %i.gv
  br i1 %i.gw, label %.lr.ph, label %._crit_edge, !llvm.loop !102

bb.ac:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.gx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.not247 = icmp eq ptr %.lcssa285, %.lcssa284
  br i1 %.not247, label %_ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EE6resizeEm.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gy = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.gz = icmp ugt i64 %.lcssa282, 9223372036854775800
  br i1 %i.gz, label %bb.ae, label %_ZNKSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit.i

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #16
          to label %.noexc216 unwind label %bb.af

.noexc216:                                        ; preds = %bb.ae
  unreachable

_ZNKSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.ad
  %i.ha = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.lcssa282) #17
          to label %.noexc217 unwind label %bb.af ; 4 uses

.noexc217:                                        ; preds = %_ZNKSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ha, i8 0, i64 %.lcssa282, i1 false)
  store ptr %i.ha, ptr %3, align 8, !tbaa !38
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 %.lcssa282 ; 3 uses
  store ptr %i.hb, ptr %i.gx, align 8, !tbaa !39
  store ptr %i.hb, ptr %i.gy, align 8, !tbaa !40
  br label %_ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EE6resizeEm.exit

_ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EE6resizeEm.exit: ; preds = %bb.ac, %.noexc217
  %i.hc = phi ptr [ null, %bb.ac ], [ %i.hb, %.noexc217 ]
  %i.hd = phi ptr [ null, %bb.ac ], [ %i.ha, %.noexc217 ] ; 2 uses
  %i.he = load i64, ptr %i.l, align 8, !tbaa !115 ; 2 uses
  %i.hf = icmp sgt i64 %i.he, 0
  br i1 %i.hf, label %.preheader252.lr.ph, label %.preheader250

.preheader252.lr.ph:                              ; preds = %_ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EE6resizeEm.exit
  %i.hg = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  br label %.preheader252

.preheader252:                                    ; preds = %.preheader252.lr.ph, %_ZNSt6vectorIiSaIiEED2Ev.exit.2
  %i.hi = phi ptr [ %i.hd, %.preheader252.lr.ph ], [ %i.jp, %_ZNSt6vectorIiSaIiEED2Ev.exit.2 ]
  %i.hj = phi i64 [ %i.he, %.preheader252.lr.ph ], [ %i.ma, %_ZNSt6vectorIiSaIiEED2Ev.exit.2 ] ; 2 uses
  %indvars.iv397 = phi i64 [ 0, %.preheader252.lr.ph ], [ %indvars.iv.next398, %_ZNSt6vectorIiSaIiEED2Ev.exit.2 ] ; 4 uses
  %i.hk = load ptr, ptr %0, align 8, !tbaa !114
  %i.hl = getelementptr [4 x i8], ptr %i.hk, i64 %indvars.iv397 ; 3 uses
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !31
  %i.hn = getelementptr [4 x i8], ptr %i.hl, i64 %i.hj
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !31
  %.idx = shl i64 %i.hj, 3
  %i.hp = getelementptr i8, ptr %i.hl, i64 %.idx
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.hr = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #17
          to label %bb.ag unwind label %bb.ay     ; 4 uses

.preheader250.loopexit:                           ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.2
  %.pre436 = load ptr, ptr %i.gx, align 8, !tbaa !39
  br label %.preheader250

.preheader250:                                    ; preds = %.preheader250.loopexit, %_ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EE6resizeEm.exit
  %.pr.i = phi ptr [ %i.jp, %.preheader250.loopexit ], [ %i.hd, %_ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EE6resizeEm.exit ] ; 6 uses
  %i.hs = phi ptr [ %.pre436, %.preheader250.loopexit ], [ %i.hc, %_ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EE6resizeEm.exit ] ; 3 uses
  %i.ht = ptrtoint ptr %i.hs to i64
  %i.hu = ptrtoint ptr %.pr.i to i64              ; 2 uses
  %i.hv = sub i64 %i.ht, %i.hu
  %i.hw = sdiv exact i64 %i.hv, 24                ; 2 uses
  %i.hx = trunc i64 %i.hw to i32
  %i.hy = icmp sgt i32 %i.hx, 0
  br i1 %i.hy, label %.lr.ph341.preheader, label %._crit_edge342

.lr.ph341.preheader:                              ; preds = %.preheader250
  %i.hz = and i64 %i.hw, 2147483647
  br label %.lr.ph341

bb.af:                                            ; preds = %_ZNKSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit.i, %bb.ae
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ag:                                            ; preds = %.preheader252
  store ptr %i.hr, ptr %4, align 8, !tbaa !26
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hr, i64 8 ; 2 uses
  store ptr %i.ib, ptr %i.hg, align 8, !tbaa !27
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hr, i64 4
  store ptr %i.ib, ptr %i.hh, align 8, !tbaa !34
  store i32 %i.ho, ptr %i.hr, align 4, !tbaa !31
  store i32 %i.hq, ptr %i.ic, align 4, !tbaa !31
  %i.id = sext i32 %i.hm to i64
  %i.ie = getelementptr inbounds nuw [24 x i8], ptr %i.hi, i64 %i.id ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 8 ; 3 uses
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !23 ; 6 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !41
  %.not.i190 = icmp eq ptr %i.ig, %i.ii
  br i1 %.not.i190, label %bb.ak, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.ag
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ig, i8 0, i64 24, i1 false)
  %i.ij = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #17
          to label %.noexc192 unwind label %bb.az ; 6 uses

.noexc192:                                        ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i
  store ptr %i.ij, ptr %i.ig, align 8, !tbaa !26
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ig, i64 8 ; 2 uses
  store ptr %i.ij, ptr %i.ik, align 8, !tbaa !34
  %i.il = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.im = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  store ptr %i.il, ptr %i.im, align 8, !tbaa !27
  %i.in = load ptr, ptr %4, align 8, !tbaa !35    ; 4 uses
  %i.io = load ptr, ptr %i.hh, align 8, !tbaa !35
  %i.ip = ptrtoint ptr %i.io to i64
  %i.iq = ptrtoint ptr %i.in to i64
  %i.ir = sub i64 %i.ip, %i.iq                    ; 4 uses
  %i.is = icmp sgt i64 %i.ir, 4
  br i1 %i.is, label %bb.ah, label %bb.ai, !prof !42

bb.ah:                                            ; preds = %.noexc192
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ij, ptr align 4 %i.in, i64 %i.ir, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i

bb.ai:                                            ; preds = %.noexc192
  %i.it = icmp eq i64 %i.ir, 4
  br i1 %i.it, label %bb.aj, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i

bb.aj:                                            ; preds = %bb.ai
  %i.iu = load i32, ptr %i.in, align 4, !tbaa !31
  store i32 %i.iu, ptr %i.ij, align 4, !tbaa !31
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i:              ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.iv = getelementptr inbounds i8, ptr %i.ij, i64 %i.ir
  store ptr %i.iv, ptr %i.ik, align 8, !tbaa !34
  %i.iw = load ptr, ptr %i.if, align 8, !tbaa !23
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 24
  store ptr %i.ix, ptr %i.if, align 8, !tbaa !23
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit

bb.ak:                                            ; preds = %bb.ag
  invoke void @_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ie, ptr %i.ig, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %._ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit_crit_edge unwind label %bb.az

._ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit_crit_edge: ; preds = %bb.ak
  %.pre433 = load ptr, ptr %4, align 8, !tbaa !26
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit: ; preds = %._ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit_crit_edge, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i
  %i.iy = phi ptr [ %.pre433, %._ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit_crit_edge ], [ %i.in, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i ] ; 3 uses
  %.not.i.i.i194 = icmp eq ptr %i.iy, null
  br i1 %.not.i.i.i194, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit
  %i.iz = load ptr, ptr %i.hg, align 8, !tbaa !27
  %i.ja = ptrtoint ptr %i.iz to i64
  %i.jb = ptrtoint ptr %i.iy to i64
  %i.jc = sub i64 %i.ja, %i.jb
  call void @_ZdlPvm(ptr noundef nonnull %i.iy, i64 noundef %i.jc) #15
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.jd = load ptr, ptr %0, align 8, !tbaa !114
  %i.je = load i64, ptr %i.l, align 8, !tbaa !115 ; 2 uses
  %i.jf = getelementptr [4 x i8], ptr %i.jd, i64 %indvars.iv397 ; 3 uses
  %i.jg = getelementptr [4 x i8], ptr %i.jf, i64 %i.je
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !31
  %.idx524 = shl i64 %i.je, 3
  %i.ji = getelementptr i8, ptr %i.jf, i64 %.idx524
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !31
  %i.jk = load i32, ptr %i.jf, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.jl = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #17
          to label %bb.am unwind label %bb.ay     ; 4 uses

bb.am:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  store ptr %i.jl, ptr %4, align 8, !tbaa !26
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8 ; 2 uses
  store ptr %i.jm, ptr %i.hg, align 8, !tbaa !27
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jl, i64 4
  store ptr %i.jm, ptr %i.hh, align 8, !tbaa !34
  store i32 %i.jj, ptr %i.jl, align 4, !tbaa !31
  store i32 %i.jk, ptr %i.jn, align 4, !tbaa !31
  %i.jo = sext i32 %i.jh to i64
  %i.jp = load ptr, ptr %3, align 8, !tbaa !38    ; 4 uses
  %i.jq = getelementptr inbounds nuw [24 x i8], ptr %i.jp, i64 %i.jo ; 3 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 8 ; 3 uses
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !23 ; 6 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jq, i64 16
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !41
  %.not.i190.1 = icmp eq ptr %i.js, %i.ju
  br i1 %.not.i190.1, label %bb.aq, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.1

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.1: ; preds = %bb.am
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.js, i8 0, i64 24, i1 false)
  %i.jv = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #17
          to label %.noexc192.1 unwind label %bb.az ; 6 uses

.noexc192.1:                                      ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.1
  store ptr %i.jv, ptr %i.js, align 8, !tbaa !26
  %i.jw = getelementptr inbounds nuw i8, ptr %i.js, i64 8 ; 2 uses
  store ptr %i.jv, ptr %i.jw, align 8, !tbaa !34
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %i.jy = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  store ptr %i.jx, ptr %i.jy, align 8, !tbaa !27
  %i.jz = load ptr, ptr %4, align 8, !tbaa !35    ; 4 uses
  %i.ka = load ptr, ptr %i.hh, align 8, !tbaa !35
  %i.kb = ptrtoint ptr %i.ka to i64
  %i.kc = ptrtoint ptr %i.jz to i64
  %i.kd = sub i64 %i.kb, %i.kc                    ; 4 uses
  %i.ke = icmp sgt i64 %i.kd, 4
  br i1 %i.ke, label %bb.ap, label %bb.an, !prof !42

bb.an:                                            ; preds = %.noexc192.1
  %i.kf = icmp eq i64 %i.kd, 4
  br i1 %i.kf, label %bb.ao, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i.1

bb.ao:                                            ; preds = %bb.an
  %i.kg = load i32, ptr %i.jz, align 4, !tbaa !31
  store i32 %i.kg, ptr %i.jv, align 4, !tbaa !31
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i.1

bb.ap:                                            ; preds = %.noexc192.1
end_hunk_2
begin_hunk_3_@_ZN3igl14adjacency_listIN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEEiEEvRKNS1_10MatrixBaseIT_EERSt6vectorIS9_IT0_SaISA_EESaISC_EEb:bb.a
  store ptr %i.lg, ptr %i.lh, align 8, !tbaa !34
  %i.li = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ld, i64 16
  store ptr %i.li, ptr %i.lj, align 8, !tbaa !27
  %i.lk = load ptr, ptr %4, align 8, !tbaa !35    ; 4 uses
  %i.ll = load ptr, ptr %i.hh, align 8, !tbaa !35
  %i.lm = ptrtoint ptr %i.ll to i64
  %i.ln = ptrtoint ptr %i.lk to i64
  %i.lo = sub i64 %i.lm, %i.ln                    ; 4 uses
  %i.lp = icmp sgt i64 %i.lo, 4
  br i1 %i.lp, label %bb.av, label %bb.at, !prof !42

bb.at:                                            ; preds = %.noexc192.2
  %i.lq = icmp eq i64 %i.lo, 4
  br i1 %i.lq, label %bb.au, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i.2

bb.au:                                            ; preds = %bb.at
  %i.lr = load i32, ptr %i.lk, align 4, !tbaa !31
  store i32 %i.lr, ptr %i.lg, align 4, !tbaa !31
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i.2

bb.av:                                            ; preds = %.noexc192.2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.lg, ptr align 4 %i.lk, i64 %i.lo, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i.2

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i.2:            ; preds = %bb.av, %bb.au, %bb.at
  %i.ls = getelementptr inbounds i8, ptr %i.lg, i64 %i.lo
  store ptr %i.ls, ptr %i.lh, align 8, !tbaa !34
  %i.lt = load ptr, ptr %i.lc, align 8, !tbaa !23
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 24
  store ptr %i.lu, ptr %i.lc, align 8, !tbaa !23
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit.2

bb.aw:                                            ; preds = %bb.as
  invoke void @_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.lb, ptr %i.ld, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %._ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit.2_crit_edge unwind label %bb.az

._ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit.2_crit_edge: ; preds = %bb.aw
  %.pre435 = load ptr, ptr %4, align 8, !tbaa !26
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit.2

_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit.2: ; preds = %._ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit.2_crit_edge, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i.2
  %i.lv = phi ptr [ %.pre435, %._ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit.2_crit_edge ], [ %i.lk, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i.2 ] ; 3 uses
  %.not.i.i.i194.2 = icmp eq ptr %i.lv, null
  br i1 %.not.i.i.i194.2, label %_ZNSt6vectorIiSaIiEED2Ev.exit.2, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit.2
  %i.lw = load ptr, ptr %i.hg, align 8, !tbaa !27
  %i.lx = ptrtoint ptr %i.lw to i64
  %i.ly = ptrtoint ptr %i.lv to i64
  %i.lz = sub i64 %i.lx, %i.ly
  call void @_ZdlPvm(ptr noundef nonnull %i.lv, i64 noundef %i.lz) #15
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.2

_ZNSt6vectorIiSaIiEED2Ev.exit.2:                  ; preds = %bb.ax, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit.2
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %indvars.iv.next398 = add nuw nsw i64 %indvars.iv397, 1 ; 2 uses
  %i.ma = load i64, ptr %i.l, align 8, !tbaa !115 ; 2 uses
  %i.mb = icmp sgt i64 %i.ma, %indvars.iv.next398
  br i1 %i.mb, label %.preheader252, label %.preheader250.loopexit, !llvm.loop !103

bb.ay:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.1, %_ZNSt6vectorIiSaIiEED2Ev.exit, %.preheader252
  %i.mc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit196

bb.az:                                            ; preds = %bb.aw, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.2, %bb.aq, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.1, %bb.ak, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i
  %i.md = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.me = load ptr, ptr %4, align 8, !tbaa !26    ; 3 uses
  %.not.i.i.i195 = icmp eq ptr %i.me, null
  br i1 %.not.i.i.i195, label %_ZNSt6vectorIiSaIiEED2Ev.exit196, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.mf = load ptr, ptr %i.hg, align 8, !tbaa !27
  %i.mg = ptrtoint ptr %i.mf to i64
  %i.mh = ptrtoint ptr %i.me to i64
  %i.mi = sub i64 %i.mg, %i.mh
  call void @_ZdlPvm(ptr noundef nonnull %i.me, i64 noundef %i.mi) #15
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit196

_ZNSt6vectorIiSaIiEED2Ev.exit196:                 ; preds = %bb.ba, %bb.az, %bb.ay
  %.pn152 = phi { ptr, i32 } [ %i.mc, %bb.ay ], [ %i.md, %bb.az ], [ %i.md, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %.body

._crit_edge342:                                   ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit, %.preheader250
  %.not4.i.i.i = icmp eq ptr %.pr.i, %i.hs
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIS0_IiSaIiEESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge342, %_ZSt8_DestroyISt6vectorIS0_IiSaIiEESaIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.mz, %_ZSt8_DestroyISt6vectorIS0_IiSaIiEESaIS2_EEEvPT_.exit.i.i.i ], [ %.pr.i, %._crit_edge342 ] ; 5 uses
  %i.mj = load ptr, ptr %.05.i.i.i, align 8, !tbaa !22 ; 3 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !23 ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.mj, %i.ml
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.ms, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.mj, %.lr.ph.i.i.i ] ; 3 uses
  %i.mm = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8, !tbaa !26 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.mm, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.mn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 16
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !27
  %i.mp = ptrtoint ptr %i.mo to i64
  %i.mq = ptrtoint ptr %i.mm to i64
  %i.mr = sub i64 %i.mp, %i.mq
  call void @_ZdlPvm(ptr noundef nonnull %i.mm, i64 noundef %i.mr) #15
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %bb.bb, %.lr.ph.i.i.i.i.i.i.i
  %i.ms = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ms, %i.ml
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %.05.i.i.i, align 8, !tbaa !22
  br label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %.lr.ph.i.i.i
  %i.mt = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.mj, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.mt, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIS0_IiSaIiEESaIS2_EEEvPT_.exit.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i
  %i.mu = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !41
  %i.mw = ptrtoint ptr %i.mv to i64
  %i.mx = ptrtoint ptr %i.mt to i64
  %i.my = sub i64 %i.mw, %i.mx
  call void @_ZdlPvm(ptr noundef nonnull %i.mt, i64 noundef %i.my) #15
  br label %_ZSt8_DestroyISt6vectorIS0_IiSaIiEESaIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIS0_IiSaIiEESaIS2_EEEvPT_.exit.i.i.i: ; preds = %bb.bc, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i
  %i.mz = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i197 = icmp eq ptr %i.mz, %i.hs
  br i1 %.not.i.i.i197, label %_ZSt8_DestroyIPSt6vectorIS0_IiSaIiEESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPSt6vectorIS0_IiSaIiEESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorIS0_IiSaIiEESaIS2_EEEvPT_.exit.i.i.i, %._crit_edge342
  %.not.i.i1.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EED2Ev.exit, label %bb.bd

bb.bd:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIS0_IiSaIiEESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i
  %i.na = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !40
  %i.nc = ptrtoint ptr %i.nb to i64
  %i.nd = sub i64 %i.nc, %i.hu
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %i.nd) #15
  br label %_ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EED2Ev.exit

_ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIS0_IiSaIiEESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.bq

.lr.ph341:                                        ; preds = %.lr.ph341.preheader, %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit
  %indvars.iv425 = phi i64 [ 0, %.lr.ph341.preheader ], [ %indvars.iv.next426, %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit ] ; 5 uses
  %i.ne = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.nf = load ptr, ptr %1, align 8, !tbaa !22    ; 2 uses
  %i.ng = ptrtoint ptr %i.ne to i64
  %i.nh = ptrtoint ptr %i.nf to i64
  %i.ni = sub i64 %i.ng, %i.nh
  %i.nj = sdiv exact i64 %i.ni, 24                ; 2 uses
  %.not.i.i198 = icmp ugt i64 %i.nj, %indvars.iv425
  br i1 %.not.i.i198, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %.lr.ph341
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.4, i64 noundef %indvars.iv425, i64 noundef %i.nj) #16
          to label %.noexc199 unwind label %bb.bg

.noexc199:                                        ; preds = %bb.be
  unreachable

bb.bf:                                            ; preds = %.lr.ph341
  %i.nk = getelementptr inbounds nuw [24 x i8], ptr %i.nf, i64 %indvars.iv425 ; 4 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 8 ; 2 uses
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !34
  %i.nn = load ptr, ptr %i.nk, align 8, !tbaa !26
  %i.no = icmp eq ptr %i.nm, %i.nn
  br i1 %i.no, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit, label %bb.bh

bb.bg:                                            ; preds = %bb.be
  %i.np = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bh:                                            ; preds = %bb.bf
  %i.nq = getelementptr inbounds nuw [24 x i8], ptr %.pr.i, i64 %indvars.iv425 ; 4 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 8 ; 3 uses
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !23 ; 3 uses
  %i.nt = load ptr, ptr %i.nq, align 8, !tbaa !22 ; 3 uses
  %i.nu = ptrtoint ptr %i.ns to i64
  %i.nv = ptrtoint ptr %i.nt to i64
  %i.nw = sub i64 %i.nu, %i.nv                    ; 4 uses
  %.not.i.i.i.i201 = icmp eq ptr %i.ns, %i.nt
  br i1 %.not.i.i.i.i201, label %.noexc204, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.nx = icmp ugt i64 %i.nw, 9223372036854775800
  br i1 %i.nx, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv.exit.i.i.i.i, !prof !43

.noexc.i.i:                                       ; preds = %bb.bi
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #16
          to label %.noexc203 unwind label %.loopexit.split-lp

.noexc203:                                        ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.bi
  %i.ny = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nw) #17
          to label %_ZNSt15__new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv.exit.i.i.i.i..noexc204_crit_edge unwind label %.loopexit251

_ZNSt15__new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv.exit.i.i.i.i..noexc204_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv.exit.i.i.i.i
  %.pre437 = load ptr, ptr %i.nq, align 8, !tbaa !44
  %.pre438 = load ptr, ptr %i.nr, align 8, !tbaa !44
  br label %.noexc204

.noexc204:                                        ; preds = %_ZNSt15__new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv.exit.i.i.i.i..noexc204_crit_edge, %bb.bh
  %i.nz = phi ptr [ %i.ns, %bb.bh ], [ %.pre438, %_ZNSt15__new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv.exit.i.i.i.i..noexc204_crit_edge ]
  %i.oa = phi ptr [ %i.nt, %bb.bh ], [ %.pre437, %_ZNSt15__new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv.exit.i.i.i.i..noexc204_crit_edge ]
  %i.ob = phi ptr [ null, %bb.bh ], [ %i.ny, %_ZNSt15__new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv.exit.i.i.i.i..noexc204_crit_edge ] ; 17 uses
  %i.oc = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIiSaIiEES2_IS4_SaIS4_EEEEPS4_ET0_T_SC_SB_(ptr %i.oa, ptr %i.nz, ptr noundef %i.ob)
          to label %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit.preheader unwind label %bb.bj ; 2 uses

_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit.preheader: ; preds = %.noexc204
  %i.od = load ptr, ptr %i.nr, align 8, !tbaa !23
  %i.oe = load ptr, ptr %i.nq, align 8, !tbaa !22 ; 19 uses
  %i.of = ptrtoint ptr %i.od to i64
  %i.og = ptrtoint ptr %i.oe to i64
  %i.oh = sub i64 %i.of, %i.og
  %i.oi = sdiv exact i64 %i.oh, 24                ; 14 uses
  %i.oj = trunc i64 %i.oi to i32                  ; 5 uses
  %i.ok = icmp sgt i32 %i.oj, 0                   ; 3 uses
  br i1 %i.ok, label %.lr.ph323.preheader, label %.preheader249

.lr.ph323.preheader:                              ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit.preheader
  %wide.trip.count412 = and i64 %i.oi, 2147483647 ; 2 uses
  %i.ol = add nsw i64 %wide.trip.count412, -1     ; 2 uses
  %xtraiter = and i64 %i.oi, 3                    ; 3 uses
  %i.om = icmp ult i64 %i.ol, 3
  %unroll_iter = and i64 %i.oi, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod667 = icmp ne i64 %xtraiter, 0
  %xtraiter669 = and i64 %i.oi, 3                 ; 3 uses
  %i.on = icmp ult i64 %i.ol, 3
  %unroll_iter674 = and i64 %i.oi, 2147483644
  %lcmp.mod671.not = icmp eq i64 %xtraiter669, 0
  %lcmp.mod673 = icmp ne i64 %xtraiter669, 0
  br label %.lr.ph323

bb.bj:                                            ; preds = %.noexc204
  %i.oo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i202 = icmp eq ptr %i.ob, null
  br i1 %.not.i.i.i202, label %.body, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @_ZdlPvm(ptr noundef nonnull %i.ob, i64 noundef %i.nw) #15
  br label %.body

.preheader249:                                    ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit, %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit.preheader
  %.not326 = icmp slt i32 %i.oj, 0
  br i1 %.not326, label %._crit_edge330, label %.lr.ph329.preheader

.lr.ph329.preheader:                              ; preds = %.preheader249
  %i.op = add nuw i32 %i.oj, 1                    ; 2 uses
  %i.oq = icmp eq i32 %i.oj, 0
  br i1 %i.oq, label %.lr.ph329.epil.preheader, label %.lr.ph329.preheader.new

.lr.ph329.preheader.new:                          ; preds = %.lr.ph329.preheader
  %unroll_iter681 = and i32 %i.op, -2
  br label %.lr.ph329

.loopexit251:                                     ; preds = %_ZNSt15__new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv.exit.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %.noexc.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph323:                                        ; preds = %.lr.ph323.preheader, %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit
  %indvars.iv409 = phi i64 [ 0, %.lr.ph323.preheader ], [ %indvars.iv.next410, %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit ] ; 3 uses
  %i.or = getelementptr inbounds nuw [24 x i8], ptr %i.oe, i64 %indvars.iv409
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !26 ; 2 uses
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !31 ; 5 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.os, i64 4
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !31 ; 5 uses
  br i1 %i.om, label %.epil.preheader, label %.lr.ph323.new

._crit_edge314.unr-lcssa:                         ; preds = %.lr.ph323.new
  br i1 %lcmp.mod.not, label %._crit_edge314, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge314.unr-lcssa, %.lr.ph323
  %indvars.iv400.epil.init = phi i64 [ 0, %.lr.ph323 ], [ %indvars.iv.next401.3, %._crit_edge314.unr-lcssa ]
  %.0125310.epil.init = phi i32 [ -1, %.lr.ph323 ], [ %spec.select.3, %._crit_edge314.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod667)
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bl, %.epil.preheader
  %indvars.iv400.epil = phi i64 [ %indvars.iv400.epil.init, %.epil.preheader ], [ %indvars.iv.next401.epil, %bb.bl ] ; 3 uses
  %.0125310.epil = phi i32 [ %.0125310.epil.init, %.epil.preheader ], [ %spec.select.epil, %bb.bl ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.bl ]
  %i.ow = getelementptr inbounds nuw [24 x i8], ptr %i.oe, i64 %indvars.iv400.epil
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !26
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 4
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !31
  %i.pa = icmp eq i32 %i.oz, %i.ot
  %i.pb = trunc nuw nsw i64 %indvars.iv400.epil to i32
  %spec.select.epil = select i1 %i.pa, i32 %i.pb, i32 %.0125310.epil ; 2 uses
  %indvars.iv.next401.epil = add nuw nsw i64 %indvars.iv400.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge314, label %bb.bl, !llvm.loop !104

._crit_edge314:                                   ; preds = %bb.bl, %._crit_edge314.unr-lcssa
  %spec.select.lcssa = phi i32 [ %spec.select.3, %._crit_edge314.unr-lcssa ], [ %spec.select.epil, %bb.bl ]
  %i.pc = getelementptr inbounds nuw [24 x i8], ptr %i.ob, i64 %indvars.iv409
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !26 ; 2 uses
  store i32 %spec.select.lcssa, ptr %i.pd, align 4, !tbaa !31
  br i1 %i.on, label %.epil.preheader668, label %._crit_edge314.new

.lr.ph323.new:                                    ; preds = %.lr.ph323, %.lr.ph323.new
  %indvars.iv400 = phi i64 [ %indvars.iv.next401.3, %.lr.ph323.new ], [ 0, %.lr.ph323 ] ; 6 uses
  %.0125310 = phi i32 [ %spec.select.3, %.lr.ph323.new ], [ -1, %.lr.ph323 ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph323.new ], [ 0, %.lr.ph323 ]
  %i.pe = getelementptr inbounds nuw [24 x i8], ptr %i.oe, i64 %indvars.iv400
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !26
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 4
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !31
  %i.pi = icmp eq i32 %i.ph, %i.ot
  %i.pj = trunc nuw nsw i64 %indvars.iv400 to i32
  %spec.select = select i1 %i.pi, i32 %i.pj, i32 %.0125310
  %indvars.iv.next401 = or disjoint i64 %indvars.iv400, 1 ; 2 uses
  %i.pk = getelementptr inbounds nuw [24 x i8], ptr %i.oe, i64 %indvars.iv.next401
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !26
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 4
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !31
  %i.po = icmp eq i32 %i.pn, %i.ot
  %i.pp = trunc nuw nsw i64 %indvars.iv.next401 to i32
  %spec.select.1 = select i1 %i.po, i32 %i.pp, i32 %spec.select
  %indvars.iv.next401.1 = or disjoint i64 %indvars.iv400, 2 ; 2 uses
  %i.pq = getelementptr inbounds nuw [24 x i8], ptr %i.oe, i64 %indvars.iv.next401.1
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !26
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 4
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !31
  %i.pu = icmp eq i32 %i.pt, %i.ot
  %i.pv = trunc nuw nsw i64 %indvars.iv.next401.1 to i32
  %spec.select.2 = select i1 %i.pu, i32 %i.pv, i32 %spec.select.1
  %indvars.iv.next401.2 = or disjoint i64 %indvars.iv400, 3 ; 2 uses
  %i.pw = getelementptr inbounds nuw [24 x i8], ptr %i.oe, i64 %indvars.iv.next401.2
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !26
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 4
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !31
  %i.qa = icmp eq i32 %i.pz, %i.ot
  %i.qb = trunc nuw nsw i64 %indvars.iv.next401.2 to i32
  %spec.select.3 = select i1 %i.qa, i32 %i.qb, i32 %spec.select.2 ; 3 uses
  %indvars.iv.next401.3 = add nuw nsw i64 %indvars.iv400, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge314.unr-lcssa, label %.lr.ph323.new, !llvm.loop !105

_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit.unr-lcssa: ; preds = %._crit_edge314.new
  br i1 %lcmp.mod671.not, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit, label %.epil.preheader668

.epil.preheader668:                               ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit.unr-lcssa, %._crit_edge314
  %indvars.iv404.epil.init = phi i64 [ 0, %._crit_edge314 ], [ %indvars.iv.next405.3, %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit.unr-lcssa ]
  %.0122316.epil.init = phi i32 [ -1, %._crit_edge314 ], [ %spec.select158.3, %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod673)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bm, %.epil.preheader668
  %indvars.iv404.epil = phi i64 [ %indvars.iv404.epil.init, %.epil.preheader668 ], [ %indvars.iv.next405.epil, %bb.bm ] ; 3 uses
  %.0122316.epil = phi i32 [ %.0122316.epil.init, %.epil.preheader668 ], [ %spec.select158.epil, %bb.bm ]
  %epil.iter670 = phi i64 [ 0, %.epil.preheader668 ], [ %epil.iter670.next, %bb.bm ]
  %i.qc = getelementptr inbounds nuw [24 x i8], ptr %i.oe, i64 %indvars.iv404.epil
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !26
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !31
  %i.qf = icmp eq i32 %i.qe, %i.ov
  %i.qg = trunc nuw nsw i64 %indvars.iv404.epil to i32
  %spec.select158.epil = select i1 %i.qf, i32 %i.qg, i32 %.0122316.epil ; 2 uses
  %indvars.iv.next405.epil = add nuw nsw i64 %indvars.iv404.epil, 1
  %epil.iter670.next = add i64 %epil.iter670, 1   ; 2 uses
  %epil.iter670.cmp.not = icmp eq i64 %epil.iter670.next, %xtraiter669
  br i1 %epil.iter670.cmp.not, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit, label %bb.bm, !llvm.loop !106

_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit:     ; preds = %bb.bm, %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit.unr-lcssa
  %spec.select158.lcssa = phi i32 [ %spec.select158.3, %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit.unr-lcssa ], [ %spec.select158.epil, %bb.bm ]
  %i.qh = getelementptr inbounds nuw i8, ptr %i.pd, i64 4
  store i32 %spec.select158.lcssa, ptr %i.qh, align 4, !tbaa !31
  %indvars.iv.next410 = add nuw nsw i64 %indvars.iv409, 1 ; 2 uses
  %exitcond413.not = icmp eq i64 %indvars.iv.next410, %wide.trip.count412
  br i1 %exitcond413.not, label %.preheader249, label %.lr.ph323, !llvm.loop !107

._crit_edge314.new:                               ; preds = %._crit_edge314, %._crit_edge314.new
  %indvars.iv404 = phi i64 [ %indvars.iv.next405.3, %._crit_edge314.new ], [ 0, %._crit_edge314 ] ; 6 uses
  %.0122316 = phi i32 [ %spec.select158.3, %._crit_edge314.new ], [ -1, %._crit_edge314 ]
end_hunk_3
begin_hunk_4_@_ZN3igl14adjacency_listIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEEjEEvRKNS1_10MatrixBaseIT_EERSt6vectorIS9_IT0_SaISA_EESaISC_EEb:bb.a
  %.057.in78.i.i.i.i = phi i64 [ %.05779.i.i.i.i, %.lr.ph.i.i.i.i164 ], [ 0, %bb.d ]
  %.sroa.064.077.i.i.i.i = phi <4 x i32> [ %i.ae, %.lr.ph.i.i.i.i164 ], [ %i.u, %bb.d ]
  %i.ab = phi <4 x i32> [ %i.ai, %.lr.ph.i.i.i.i164 ], [ %i.x, %bb.d ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.05779.i.i.i.i
  %i.ad = load <4 x i32>, ptr %i.ac, align 16, !tbaa !30
  %i.ae = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %.sroa.064.077.i.i.i.i, <4 x i32> %i.ad) ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.057.in78.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ah = load <4 x i32>, ptr %i.ag, align 16, !tbaa !30
  %i.ai = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ab, <4 x i32> %i.ah) ; 2 uses
  %.057.i.i.i.i = add nuw nsw i64 %.05779.i.i.i.i, 8 ; 2 uses
  %i.aj = icmp slt i64 %.057.i.i.i.i, %i.r
  br i1 %i.aj, label %.lr.ph.i.i.i.i164, label %._crit_edge.i.i.i.i, !llvm.loop !4

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.r
  %i.al = load <4 x i32>, ptr %i.ak, align 16, !tbaa !30
  %i.am = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.z, <4 x i32> %i.al)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i, %bb.c
  %.sroa.064.2.i.i.i.i = phi <4 x i32> [ %i.u, %bb.c ], [ %i.am, %bb.e ], [ %i.z, %._crit_edge.i.i.i.i ]
  %i.an = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %.sroa.064.2.i.i.i.i) ; 3 uses
  %i.ao = icmp slt i64 %i.t, %i.p
  br i1 %i.ao, label %.lr.ph84.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit

.lr.ph84.i.i.i.i.preheader:                       ; preds = %bb.f
  %i.ap = sub i64 %i.p, %i.t                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.ap, 8
  br i1 %min.iters.check, label %.lr.ph84.i.i.i.i.preheader668, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph84.i.i.i.i.preheader
  %n.vec = and i64 %i.ap, -8                      ; 3 uses
  %i.aq = add i64 %i.t, %n.vec
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.an, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ar = getelementptr [4 x i8], ptr %i.k, i64 %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.au, %vector.body ]
  %vec.phi610 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.av, %vector.body ]
  %i.as = getelementptr [4 x i8], ptr %i.ar, i64 %index ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %wide.load = load <4 x i32>, ptr %i.as, align 4, !tbaa !31
  %wide.load611 = load <4 x i32>, ptr %i.at, align 4, !tbaa !31
  %i.au = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %wide.load) ; 2 uses
  %i.av = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi610, <4 x i32> %wide.load611) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !117

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.au, <4 x i32> %i.av)
  %i.ax = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit, label %.lr.ph84.i.i.i.i.preheader668

.lr.ph84.i.i.i.i.preheader668:                    ; preds = %.lr.ph84.i.i.i.i.preheader, %middle.block
  %.05582.i.i.i.i.ph = phi i64 [ %i.t, %.lr.ph84.i.i.i.i.preheader ], [ %i.aq, %middle.block ]
  %.181.i.i.i.i.ph = phi i32 [ %i.an, %.lr.ph84.i.i.i.i.preheader ], [ %i.ax, %middle.block ]
  br label %.lr.ph84.i.i.i.i

.lr.ph84.i.i.i.i:                                 ; preds = %.lr.ph84.i.i.i.i.preheader668, %.lr.ph84.i.i.i.i
  %.05582.i.i.i.i = phi i64 [ %i.bb, %.lr.ph84.i.i.i.i ], [ %.05582.i.i.i.i.ph, %.lr.ph84.i.i.i.i.preheader668 ] ; 2 uses
  %.181.i.i.i.i = phi i32 [ %i.ba, %.lr.ph84.i.i.i.i ], [ %.181.i.i.i.i.ph, %.lr.ph84.i.i.i.i.preheader668 ]
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.k, i64 %.05582.i.i.i.i
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !31
  %i.ba = tail call noundef i32 @llvm.smax.i32(i32 %.181.i.i.i.i, i32 %i.az) ; 2 uses
  %i.bb = add nsw i64 %.05582.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.bb, %i.p
  br i1 %exitcond.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit, label %.lr.ph84.i.i.i.i, !llvm.loop !118

bb.g:                                             ; preds = %_ZNSt6vectorIS_IjSaIjEESaIS1_EE5clearEv.exit
  %i.bc = load i32, ptr %i.k, align 4, !tbaa !31  ; 3 uses
  %i.bd = icmp sgt i64 %i.p, 1
  br i1 %i.bd, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit

.lr.ph89.i.i.i.i.preheader:                       ; preds = %bb.g
  %i.be = add nsw i64 %i.p, -1                    ; 2 uses
  %min.iters.check613 = icmp ult i64 %i.p, 9
  br i1 %min.iters.check613, label %.lr.ph89.i.i.i.i.preheader664, label %vector.ph614

vector.ph614:                                     ; preds = %.lr.ph89.i.i.i.i.preheader
  %n.vec615 = and i64 %i.be, -8                   ; 3 uses
  %i.bf = or disjoint i64 %n.vec615, 1
  %broadcast.splatinsert616 = insertelement <4 x i32> poison, i32 %i.bc, i64 0
  %broadcast.splat617 = shufflevector <4 x i32> %broadcast.splatinsert616, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body618

vector.body618:                                   ; preds = %vector.body618, %vector.ph614
  %index619 = phi i64 [ 0, %vector.ph614 ], [ %index.next624, %vector.body618 ] ; 2 uses
  %vec.phi620 = phi <4 x i32> [ %broadcast.splat617, %vector.ph614 ], [ %i.bj, %vector.body618 ]
  %vec.phi621 = phi <4 x i32> [ %broadcast.splat617, %vector.ph614 ], [ %i.bk, %vector.body618 ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index619 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 20
  %wide.load622 = load <4 x i32>, ptr %i.bh, align 4, !tbaa !31
  %wide.load623 = load <4 x i32>, ptr %i.bi, align 4, !tbaa !31
  %i.bj = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi620, <4 x i32> %wide.load622) ; 2 uses
  %i.bk = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi621, <4 x i32> %wide.load623) ; 2 uses
  %index.next624 = add nuw i64 %index619, 8       ; 2 uses
  %i.bl = icmp eq i64 %index.next624, %n.vec615
  br i1 %i.bl, label %middle.block625, label %vector.body618, !llvm.loop !119

middle.block625:                                  ; preds = %vector.body618
  %rdx.minmax626 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.bj, <4 x i32> %i.bk)
  %i.bm = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax626) ; 2 uses
  %cmp.n627 = icmp eq i64 %i.be, %n.vec615
  br i1 %cmp.n627, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit, label %.lr.ph89.i.i.i.i.preheader664

.lr.ph89.i.i.i.i.preheader664:                    ; preds = %.lr.ph89.i.i.i.i.preheader, %middle.block625
  %.087.i.i.i.i.ph = phi i64 [ 1, %.lr.ph89.i.i.i.i.preheader ], [ %i.bf, %middle.block625 ]
  %.286.i.i.i.i.ph = phi i32 [ %i.bc, %.lr.ph89.i.i.i.i.preheader ], [ %i.bm, %middle.block625 ]
  br label %.lr.ph89.i.i.i.i

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader664, %.lr.ph89.i.i.i.i
  %.087.i.i.i.i = phi i64 [ %i.bq, %.lr.ph89.i.i.i.i ], [ %.087.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader664 ] ; 2 uses
  %.286.i.i.i.i = phi i32 [ %i.bp, %.lr.ph89.i.i.i.i ], [ %.286.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader664 ]
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.087.i.i.i.i
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !31
  %i.bp = tail call noundef i32 @llvm.smax.i32(i32 %.286.i.i.i.i, i32 %i.bo) ; 2 uses
  %i.bq = add nuw nsw i64 %.087.i.i.i.i, 1        ; 2 uses
  %exitcond96.not.i.i.i.i = icmp eq i64 %i.bq, %i.p
  br i1 %exitcond96.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit, label %.lr.ph89.i.i.i.i, !llvm.loop !120

_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit: ; preds = %.lr.ph84.i.i.i.i, %.lr.ph89.i.i.i.i, %middle.block, %middle.block625, %bb.f, %bb.g
  %.3.i.i.i.i = phi i32 [ %i.bp, %.lr.ph89.i.i.i.i ], [ %i.bc, %bb.g ], [ %i.an, %bb.f ], [ %i.bm, %middle.block625 ], [ %i.ax, %middle.block ], [ %i.ba, %.lr.ph84.i.i.i.i ]
  %i.br = add nsw i32 %.3.i.i.i.i, 1
  %i.bs = sext i32 %i.br to i64                   ; 4 uses
  %i.bt = load ptr, ptr %1, align 8, !tbaa !53    ; 2 uses
  %i.bu = ptrtoint ptr %i.a to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = sdiv exact i64 %i.bw, 24                ; 3 uses
  %i.by = icmp ult i64 %i.bx, %i.bs
  br i1 %i.by, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit
  %i.bz = sub nuw nsw i64 %i.bs, %i.bx
  tail call void @_ZNSt6vectorIS_IjSaIjEESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.bz)
  br label %_ZNSt6vectorIS_IjSaIjEESaIS1_EE6resizeEm.exit

bb.i:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit
  %i.ca = icmp ugt i64 %i.bx, %i.bs
  br i1 %i.ca, label %bb.j, label %_ZNSt6vectorIS_IjSaIjEESaIS1_EE6resizeEm.exit

bb.j:                                             ; preds = %bb.i
  %i.cb = getelementptr inbounds nuw [24 x i8], ptr %i.bt, i64 %i.bs ; 3 uses
  %.not.i.i165 = icmp eq ptr %i.a, %i.cb
  br i1 %.not.i.i165, label %_ZNSt6vectorIS_IjSaIjEESaIS1_EE6resizeEm.exit, label %.lr.ph.i.i.i.i166

.lr.ph.i.i.i.i166:                                ; preds = %bb.j, %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i.i169
  %.05.i.i.i.i167 = phi ptr [ %i.ci, %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i.i169 ], [ %i.cb, %bb.j ] ; 3 uses
  %i.cc = load ptr, ptr %.05.i.i.i.i167, align 8, !tbaa !137 ; 3 uses
  %.not.i.i.i.i.i.i.i.i168 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i.i.i.i.i168, label %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i.i169, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i166
  %i.cd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i167, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !56
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = ptrtoint ptr %i.cc to i64
  %i.ch = sub i64 %i.cf, %i.cg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef %i.ch) #15
  br label %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i.i169

_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i.i169: ; preds = %bb.k, %.lr.ph.i.i.i.i166
  %i.ci = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i167, i64 24 ; 2 uses
  %.not.i.i.i.i170 = icmp eq ptr %i.ci, %i.a
  br i1 %.not.i.i.i.i170, label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i.i171, label %.lr.ph.i.i.i.i166, !llvm.loop !116

_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i.i171: ; preds = %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i.i169
  store ptr %i.cb, ptr %i.b, align 8, !tbaa !54
  br label %_ZNSt6vectorIS_IjSaIjEESaIS1_EE6resizeEm.exit

_ZNSt6vectorIS_IjSaIjEESaIS1_EE6resizeEm.exit:    ; preds = %bb.h, %bb.i, %bb.j, %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i.i171
  %i.cj = load i64, ptr %i.l, align 8, !tbaa !48  ; 2 uses
  %i.ck = icmp sgt i64 %i.cj, 0
  br i1 %i.ck, label %.preheader252.lr.ph, label %.preheader251

.preheader252.lr.ph:                              ; preds = %_ZNSt6vectorIS_IjSaIjEESaIS1_EE6resizeEm.exit
  %i.cl = load i64, ptr %i.n, align 8, !tbaa !49  ; 2 uses
  %i.cm = icmp sgt i64 %i.cl, 0
  br i1 %i.cm, label %.preheader252, label %.preheader251

.preheader252:                                    ; preds = %.preheader252.lr.ph, %._crit_edge
  %i.cn = phi i64 [ %i.cy, %._crit_edge ], [ %i.cj, %.preheader252.lr.ph ]
  %i.co = phi i64 [ %i.cz, %._crit_edge ], [ %i.cl, %.preheader252.lr.ph ] ; 3 uses
  %indvars.iv392 = phi i64 [ %indvars.iv.next393, %._crit_edge ], [ 0, %.preheader252.lr.ph ] ; 2 uses
  %i.cp = icmp sgt i64 %i.co, 0
  br i1 %i.cp, label %.lr.ph, label %._crit_edge

.preheader251:                                    ; preds = %._crit_edge, %.preheader252.lr.ph, %_ZNSt6vectorIS_IjSaIjEESaIS1_EE6resizeEm.exit
  %i.cq = load ptr, ptr %i.b, align 8, !tbaa !54  ; 2 uses
  %i.cr = load ptr, ptr %1, align 8, !tbaa !53    ; 3 uses
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = sub i64 %i.cs, %i.ct                    ; 2 uses
  %i.cv = sdiv exact i64 %i.cu, 24
  %i.cw = trunc i64 %i.cv to i32
  %i.cx = icmp sgt i32 %i.cw, 0
  br i1 %i.cx, label %.lr.ph303, label %._crit_edge304

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit184
  %.pre435 = load i64, ptr %i.l, align 8, !tbaa !48
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader252
  %i.cy = phi i64 [ %.pre435, %._crit_edge.loopexit ], [ %i.cn, %.preheader252 ] ; 2 uses
  %i.cz = phi i64 [ %i.ft, %._crit_edge.loopexit ], [ %i.co, %.preheader252 ]
  %indvars.iv.next393 = add nuw nsw i64 %indvars.iv392, 1 ; 2 uses
  %i.da = icmp sgt i64 %i.cy, %indvars.iv.next393
  br i1 %i.da, label %.preheader252, label %.preheader251, !llvm.loop !121

.lr.ph:                                           ; preds = %.preheader252, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit184
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit184 ], [ 0, %.preheader252 ] ; 2 uses
  %i.db = phi i64 [ %i.ft, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit184 ], [ %i.co, %.preheader252 ]
  %i.dc = load ptr, ptr %0, align 8, !tbaa !47
  %i.dd = load i64, ptr %i.l, align 8, !tbaa !48  ; 2 uses
  %i.de = mul nsw i64 %i.dd, %indvars.iv
  %i.df = getelementptr [4 x i8], ptr %i.dc, i64 %indvars.iv392 ; 2 uses
  %i.dg = getelementptr [4 x i8], ptr %i.df, i64 %i.de
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !31 ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.di = urem i64 %indvars.iv.next, %i.db
  %i.dj = mul nsw i64 %i.di, %i.dd
  %i.dk = getelementptr [4 x i8], ptr %i.df, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !31 ; 3 uses
  %i.dm = sext i32 %i.dh to i64                   ; 3 uses
  %i.dn = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.do = load ptr, ptr %1, align 8, !tbaa !53    ; 3 uses
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = sub i64 %i.dp, %i.dq
  %i.ds = sdiv exact i64 %i.dr, 24                ; 3 uses
  %.not.i.i172 = icmp ugt i64 %i.ds, %i.dm
  br i1 %.not.i.i172, label %_ZNSt6vectorIS_IjSaIjEESaIS1_EE2atEm.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.4, i64 noundef %i.dm, i64 noundef %i.ds) #16
  unreachable

_ZNSt6vectorIS_IjSaIjEESaIS1_EE2atEm.exit:        ; preds = %.lr.ph
  %i.dt = getelementptr inbounds nuw [24 x i8], ptr %i.do, i64 %i.dm ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8 ; 3 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !138 ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 16 ; 3 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !56
  %.not.i.i173 = icmp eq ptr %i.dv, %i.dx
  br i1 %.not.i.i173, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIS_IjSaIjEESaIS1_EE2atEm.exit
  store i32 %i.dl, ptr %i.dv, align 4, !tbaa !31
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  store ptr %i.dy, ptr %i.du, align 8, !tbaa !138
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.n:                                             ; preds = %_ZNSt6vectorIS_IjSaIjEESaIS1_EE2atEm.exit
  %i.dz = load ptr, ptr %i.dt, align 8, !tbaa !137 ; 4 uses
  %i.ea = ptrtoint ptr %i.dv to i64
  %i.eb = ptrtoint ptr %i.dz to i64               ; 2 uses
  %i.ec = sub i64 %i.ea, %i.eb                    ; 5 uses
  %i.ed = icmp eq i64 %i.ec, 9223372036854775804
  br i1 %i.ed, label %bb.o, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #16
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.n
  %i.ee = ashr exact i64 %i.ec, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ee, i64 1)
  %i.ef = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ee ; 2 uses
  %i.eg = icmp ult i64 %i.ef, %i.ee
  %i.eh = tail call i64 @llvm.umin.i64(i64 %i.ef, i64 2305843009213693951)
  %i.ei = select i1 %i.eg, i64 2305843009213693951, i64 %i.eh ; 3 uses
  %.not.i.i.i.i174 = icmp ne i64 %i.ei, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i174)
  %i.ej = shl nuw nsw i64 %i.ei, 2
  %i.ek = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ej) #17 ; 4 uses
  %i.el = getelementptr inbounds i8, ptr %i.ek, i64 %i.ec ; 2 uses
  store i32 %i.dl, ptr %i.el, align 4, !tbaa !31
  %i.em = icmp sgt i64 %i.ec, 0
  br i1 %i.em, label %bb.p, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

bb.p:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ek, ptr align 4 %i.dz, i64 %i.ec, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.p, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.dz, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  %i.eo = load ptr, ptr %i.dw, align 8, !tbaa !56
  %i.ep = ptrtoint ptr %i.eo to i64
  %i.eq = sub i64 %i.ep, %i.eb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dz, i64 noundef %i.eq) #15
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.q, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ek, ptr %i.dt, align 8, !tbaa !137
  store ptr %i.en, ptr %i.du, align 8, !tbaa !138
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.ei
  store ptr %i.er, ptr %i.dw, align 8, !tbaa !56
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !54
  %.pre434 = load ptr, ptr %1, align 8, !tbaa !53 ; 2 uses
  %.pre445 = ptrtoint ptr %.pre to i64
  %.pre447 = ptrtoint ptr %.pre434 to i64
  %.pre449 = sub i64 %.pre445, %.pre447
  %.pre451 = sdiv exact i64 %.pre449, 24
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %bb.m, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i
  %.pre-phi452 = phi i64 [ %i.ds, %bb.m ], [ %.pre451, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ] ; 2 uses
  %i.es = phi ptr [ %i.do, %bb.m ], [ %.pre434, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ]
  %i.et = sext i32 %i.dl to i64                   ; 3 uses
  %.not.i.i175 = icmp ugt i64 %.pre-phi452, %i.et
  br i1 %.not.i.i175, label %_ZNSt6vectorIS_IjSaIjEESaIS1_EE2atEm.exit176, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.4, i64 noundef %i.et, i64 noundef %.pre-phi452) #16
  unreachable

_ZNSt6vectorIS_IjSaIjEESaIS1_EE2atEm.exit176:     ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  %i.eu = getelementptr inbounds nuw [24 x i8], ptr %i.es, i64 %i.et ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8 ; 3 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !138 ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 16 ; 3 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !56
  %.not.i.i177 = icmp eq ptr %i.ew, %i.ey
  br i1 %.not.i.i177, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIS_IjSaIjEESaIS1_EE2atEm.exit176
  store i32 %i.dh, ptr %i.ew, align 4, !tbaa !31
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 4
  store ptr %i.ez, ptr %i.ev, align 8, !tbaa !138
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit184

bb.t:                                             ; preds = %_ZNSt6vectorIS_IjSaIjEESaIS1_EE2atEm.exit176
  %i.fa = load ptr, ptr %i.eu, align 8, !tbaa !137 ; 4 uses
  %i.fb = ptrtoint ptr %i.ew to i64
  %i.fc = ptrtoint ptr %i.fa to i64               ; 2 uses
  %i.fd = sub i64 %i.fb, %i.fc                    ; 5 uses
  %i.fe = icmp eq i64 %i.fd, 9223372036854775804
  br i1 %i.fe, label %bb.u, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i178

bb.u:                                             ; preds = %bb.t
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #16
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i178: ; preds = %bb.t
  %i.ff = ashr exact i64 %i.fd, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i179 = tail call i64 @llvm.umax.i64(i64 %i.ff, i64 1)
  %i.fg = add nsw i64 %.sroa.speculated.i.i.i.i179, %i.ff ; 2 uses
  %i.fh = icmp ult i64 %i.fg, %i.ff
  %i.fi = tail call i64 @llvm.umin.i64(i64 %i.fg, i64 2305843009213693951)
  %i.fj = select i1 %i.fh, i64 2305843009213693951, i64 %i.fi ; 3 uses
  %.not.i.i.i.i180 = icmp ne i64 %i.fj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i180)
  %i.fk = shl nuw nsw i64 %i.fj, 2
  %i.fl = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fk) #17 ; 4 uses
  %i.fm = getelementptr inbounds i8, ptr %i.fl, i64 %i.fd ; 2 uses
  store i32 %i.dh, ptr %i.fm, align 4, !tbaa !31
  %i.fn = icmp sgt i64 %i.fd, 0
  br i1 %i.fn, label %bb.v, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i181

bb.v:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i178
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fl, ptr align 4 %i.fa, i64 %i.fd, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i181

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i181: ; preds = %bb.v, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i178
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 4
  %.not.i17.i.i.i182 = icmp eq ptr %i.fa, null
  br i1 %.not.i17.i.i.i182, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i183, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i181
  %i.fp = load ptr, ptr %i.ex, align 8, !tbaa !56
  %i.fq = ptrtoint ptr %i.fp to i64
  %i.fr = sub i64 %i.fq, %i.fc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fa, i64 noundef %i.fr) #15
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i183

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i183: ; preds = %bb.w, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i181
  store ptr %i.fl, ptr %i.eu, align 8, !tbaa !137
  store ptr %i.fo, ptr %i.ev, align 8, !tbaa !138
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.fj
  store ptr %i.fs, ptr %i.ex, align 8, !tbaa !56
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit184

_ZNSt6vectorIjSaIjEE9push_backEOj.exit184:        ; preds = %bb.s, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i183
  %i.ft = load i64, ptr %i.n, align 8, !tbaa !49  ; 3 uses
  %i.fu = icmp sgt i64 %i.ft, %indvars.iv.next
  br i1 %i.fu, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !122

._crit_edge304:                                   ; preds = %_ZNSt6vectorIjSaIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS1_EES6_.exit, %.preheader251
  %.lcssa283 = phi ptr [ %i.cq, %.preheader251 ], [ %i.hb, %_ZNSt6vectorIjSaIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS1_EES6_.exit ]
  %.lcssa282 = phi ptr [ %i.cr, %.preheader251 ], [ %i.ha, %_ZNSt6vectorIjSaIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS1_EES6_.exit ]
  %.lcssa280 = phi i64 [ %i.cu, %.preheader251 ], [ %i.he, %_ZNSt6vectorIjSaIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS1_EES6_.exit ] ; 4 uses
  br i1 %2, label %bb.aa, label %bb.bc

.lr.ph303:                                        ; preds = %.preheader251, %_ZNSt6vectorIjSaIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS1_EES6_.exit
  %i.fv = phi ptr [ %i.ha, %_ZNSt6vectorIjSaIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS1_EES6_.exit ], [ %i.cr, %.preheader251 ] ; 2 uses
  %indvars.iv395 = phi i64 [ %indvars.iv.next396, %_ZNSt6vectorIjSaIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS1_EES6_.exit ], [ 0, %.preheader251 ] ; 4 uses
  %i.fw = getelementptr inbounds nuw [24 x i8], ptr %i.fv, i64 %indvars.iv395 ; 2 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !35 ; 4 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !35 ; 4 uses
  %.not.i.i185 = icmp eq ptr %i.fx, %i.fz
  br i1 %.not.i.i185, label %_ZNSt6vectorIjSaIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS1_EES6_.exit, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEvT_S7_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEvT_S7_.exit: ; preds = %.lr.ph303
  %i.ga = ptrtoint ptr %i.fz to i64
  %i.gb = ptrtoint ptr %i.fx to i64
  %i.gc = sub i64 %i.ga, %i.gb
  %i.gd = ashr exact i64 %i.gc, 2
  %i.ge = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.gd, i1 true)
  %i.gf = shl nuw nsw i64 %i.ge, 1
  %i.gg = xor i64 %i.gf, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.fx, ptr %i.fz, i64 noundef %i.gg)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.fx, ptr %i.fz)
  %.pre436 = load ptr, ptr %1, align 8, !tbaa !53 ; 6 uses
  %.phi.trans.insert = getelementptr inbounds nuw [24 x i8], ptr %.pre436, i64 %indvars.iv395 ; 2 uses
  %.pre437 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !35 ; 4 uses
  %.phi.trans.insert438 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 8
  %.pre439 = load ptr, ptr %.phi.trans.insert438, align 8, !tbaa !35 ; 5 uses
  %i.gh = getelementptr inbounds nuw [24 x i8], ptr %.pre436, i64 %indvars.iv395
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gj = icmp eq ptr %.pre437, %.pre439
  br i1 %i.gj, label %_ZNSt6vectorIjSaIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS1_EES6_.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEvT_S7_.exit, %bb.x
  %.sroa.09.0.i.i.i = phi ptr [ %i.gk, %bb.x ], [ %.pre437, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEvT_S7_.exit ] ; 5 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i, i64 4 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.gk, %.pre439
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS1_EES6_.exit, label %bb.x

bb.x:                                             ; preds = %.preheader.i.i.i
  %i.gl = load i32, ptr %.sroa.09.0.i.i.i, align 4, !tbaa !31 ; 2 uses
  %i.gm = load i32, ptr %i.gk, align 4, !tbaa !31
  %i.gn = icmp eq i32 %i.gl, %i.gm
  br i1 %i.gn, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i, label %.preheader.i.i.i, !llvm.loop !123

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i: ; preds = %bb.x
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i, i64 8 ; 2 uses
  %.not18.i.i = icmp eq ptr %i.go, %.pre439
  br i1 %.not18.i.i, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEET_S7_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i, %bb.z
  %i.gp = phi i32 [ %i.gr, %bb.z ], [ %i.gl, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i ]
  %i.gq = phi ptr [ %i.gu, %bb.z ], [ %i.go, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i ] ; 2 uses
  %.sroa.0.019.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.z ], [ %.sroa.09.0.i.i.i, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i ] ; 2 uses
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !31 ; 3 uses
  %i.gs = icmp eq i32 %i.gp, %i.gr
  br i1 %i.gs, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i, i64 4 ; 2 uses
  store i32 %i.gr, ptr %i.gt, align 4, !tbaa !31
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph.i.i
  %.sroa.0.1.i.i = phi ptr [ %.sroa.0.019.i.i, %.lr.ph.i.i ], [ %i.gt, %bb.y ] ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gq, i64 4 ; 2 uses
  %.not.i.i186 = icmp eq ptr %i.gu, %.pre439
  br i1 %.not.i.i186, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEET_S7_S7_.exit, label %.lr.ph.i.i, !llvm.loop !124

_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEET_S7_S7_.exit: ; preds = %bb.z, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.09.0.i.i.i, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i ], [ %.sroa.0.1.i.i, %bb.z ]
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 4 ; 2 uses
  %.not.i.i187 = icmp eq ptr %i.gv, %.pre439
  br i1 %.not.i.i187, label %_ZNSt6vectorIjSaIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS1_EES6_.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEET_S7_S7_.exit
  %i.gw = ptrtoint ptr %i.gv to i64
  %i.gx = ptrtoint ptr %.pre437 to i64
  %i.gy = sub i64 %i.gw, %i.gx
  %i.gz = getelementptr inbounds i8, ptr %.pre437, i64 %i.gy
  store ptr %i.gz, ptr %i.gi, align 8, !tbaa !138
  br label %_ZNSt6vectorIjSaIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS1_EES6_.exit

_ZNSt6vectorIjSaIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS1_EES6_.exit: ; preds = %.preheader.i.i.i, %.lr.ph303, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEvT_S7_.exit, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEET_S7_S7_.exit, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i
  %i.ha = phi ptr [ %i.fv, %.lr.ph303 ], [ %.pre436, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i ], [ %.pre436, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEvT_S7_.exit ], [ %.pre436, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEET_S7_S7_.exit ], [ %.pre436, %.preheader.i.i.i ] ; 3 uses
  %indvars.iv.next396 = add nuw nsw i64 %indvars.iv395, 1 ; 2 uses
  %i.hb = load ptr, ptr %i.b, align 8, !tbaa !54  ; 2 uses
  %i.hc = ptrtoint ptr %i.hb to i64
  %i.hd = ptrtoint ptr %i.ha to i64
  %i.he = sub i64 %i.hc, %i.hd                    ; 2 uses
  %i.hf = sdiv exact i64 %i.he, 24
  %sext = shl i64 %i.hf, 32
  %i.hg = ashr exact i64 %sext, 32
  %i.hh = icmp slt i64 %indvars.iv.next396, %i.hg
  br i1 %i.hh, label %.lr.ph303, label %._crit_edge304, !llvm.loop !125

bb.aa:                                            ; preds = %._crit_edge304
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.hi = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.not245 = icmp eq ptr %.lcssa283, %.lcssa282
  br i1 %.not245, label %_ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EE6resizeEm.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.hk = icmp ugt i64 %.lcssa280, 9223372036854775800
  br i1 %i.hk, label %bb.ac, label %_ZNKSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit.i

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #16
          to label %.noexc220 unwind label %bb.ad

.noexc220:                                        ; preds = %bb.ac
  unreachable

_ZNKSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.ab
  %i.hl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.lcssa280) #17
          to label %.noexc221 unwind label %bb.ad ; 4 uses

.noexc221:                                        ; preds = %_ZNKSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.hl, i8 0, i64 %.lcssa280, i1 false)
  store ptr %i.hl, ptr %3, align 8, !tbaa !38
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 %.lcssa280 ; 3 uses
  store ptr %i.hm, ptr %i.hi, align 8, !tbaa !39
  store ptr %i.hm, ptr %i.hj, align 8, !tbaa !40
  br label %_ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EE6resizeEm.exit

_ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EE6resizeEm.exit: ; preds = %bb.aa, %.noexc221
  %i.hn = phi ptr [ null, %bb.aa ], [ %i.hm, %.noexc221 ] ; 3 uses
  %.pr.i = phi ptr [ null, %bb.aa ], [ %i.hl, %.noexc221 ] ; 7 uses
  %i.ho = load i64, ptr %i.l, align 8, !tbaa !48  ; 2 uses
  %i.hp = icmp sgt i64 %i.ho, 0
  br i1 %i.hp, label %.preheader250.lr.ph, label %.preheader248

.preheader250.lr.ph:                              ; preds = %_ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EE6resizeEm.exit
  %i.hq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.hs = load i64, ptr %i.n, align 8, !tbaa !49  ; 2 uses
  %i.ht = icmp sgt i64 %i.hs, 0
  br i1 %i.ht, label %.preheader250, label %.preheader248

.preheader250:                                    ; preds = %.preheader250.lr.ph, %._crit_edge310
  %i.hu = phi i64 [ %i.if, %._crit_edge310 ], [ %i.ho, %.preheader250.lr.ph ]
  %i.hv = phi i64 [ %i.ig, %._crit_edge310 ], [ %i.hs, %.preheader250.lr.ph ] ; 3 uses
  %indvars.iv404 = phi i64 [ %indvars.iv.next405, %._crit_edge310 ], [ 0, %.preheader250.lr.ph ] ; 2 uses
  %i.hw = icmp sgt i64 %i.hv, 0
  br i1 %i.hw, label %.lr.ph309, label %._crit_edge310

.preheader248:                                    ; preds = %._crit_edge310, %.preheader250.lr.ph, %_ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EE6resizeEm.exit
  %i.hx = ptrtoint ptr %i.hn to i64
  %i.hy = ptrtoint ptr %.pr.i to i64
  %i.hz = sub i64 %i.hx, %i.hy                    ; 2 uses
  %i.ia = sdiv exact i64 %i.hz, 24                ; 2 uses
  %i.ib = trunc i64 %i.ia to i32
  %i.ic = icmp sgt i32 %i.ib, 0
  br i1 %i.ic, label %.lr.ph343.preheader, label %._crit_edge344

.lr.ph343.preheader:                              ; preds = %.preheader248
  %i.id = and i64 %i.ia, 2147483647
  br label %.lr.ph343

bb.ad:                                            ; preds = %_ZNKSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit.i, %bb.ac
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %.body

._crit_edge310.loopexit:                          ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %.pre441 = load i64, ptr %i.l, align 8, !tbaa !48
  br label %._crit_edge310

._crit_edge310:                                   ; preds = %._crit_edge310.loopexit, %.preheader250
  %i.if = phi i64 [ %.pre441, %._crit_edge310.loopexit ], [ %i.hu, %.preheader250 ] ; 2 uses
  %i.ig = phi i64 [ %i.kb, %._crit_edge310.loopexit ], [ %i.hv, %.preheader250 ]
  %indvars.iv.next405 = add nuw nsw i64 %indvars.iv404, 1 ; 2 uses
  %i.ih = icmp sgt i64 %i.if, %indvars.iv.next405
  br i1 %i.ih, label %.preheader250, label %.preheader248, !llvm.loop !126

.lr.ph309:                                        ; preds = %.preheader250, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %indvars.iv401 = phi i64 [ %indvars.iv.next402, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ 0, %.preheader250 ] ; 3 uses
  %i.ii = phi i64 [ %i.kb, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ %i.hv, %.preheader250 ] ; 2 uses
  %i.ij = load ptr, ptr %0, align 8, !tbaa !47
  %i.ik = load i64, ptr %i.l, align 8, !tbaa !48  ; 3 uses
  %i.il = mul nsw i64 %i.ik, %indvars.iv401
  %i.im = getelementptr [4 x i8], ptr %i.ij, i64 %indvars.iv404 ; 3 uses
  %i.in = getelementptr [4 x i8], ptr %i.im, i64 %i.il
  %i.io = load i32, ptr %i.in, align 4, !tbaa !31
  %indvars.iv.next402 = add nuw nsw i64 %indvars.iv401, 1 ; 3 uses
  %i.ip = urem i64 %indvars.iv.next402, %i.ii
  %i.iq = mul nsw i64 %i.ip, %i.ik
  %i.ir = getelementptr [4 x i8], ptr %i.im, i64 %i.iq
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !31
  %i.it = add nuw nsw i64 %indvars.iv401, 2
  %i.iu = urem i64 %i.it, %i.ii
  %i.iv = mul nsw i64 %i.iu, %i.ik
  %i.iw = getelementptr [4 x i8], ptr %i.im, i64 %i.iv
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.iy = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #17
          to label %bb.ae unwind label %bb.ak     ; 4 uses

bb.ae:                                            ; preds = %.lr.ph309
  store ptr %i.iy, ptr %4, align 8, !tbaa !26
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8 ; 2 uses
  store ptr %i.iz, ptr %i.hq, align 8, !tbaa !27
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iy, i64 4
  store ptr %i.iz, ptr %i.hr, align 8, !tbaa !34
  store i32 %i.is, ptr %i.iy, align 4, !tbaa !31
  store i32 %i.ix, ptr %i.ja, align 4, !tbaa !31
  %i.jb = sext i32 %i.io to i64
  %i.jc = getelementptr inbounds nuw [24 x i8], ptr %.pr.i, i64 %i.jb ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8 ; 3 uses
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !23 ; 6 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !41
  %.not.i = icmp eq ptr %i.je, %i.jg
  br i1 %.not.i, label %bb.ai, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.ae
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.je, i8 0, i64 24, i1 false)
  %i.jh = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #17
          to label %.noexc196 unwind label %bb.al ; 6 uses

.noexc196:                                        ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i
  store ptr %i.jh, ptr %i.je, align 8, !tbaa !26
  %i.ji = getelementptr inbounds nuw i8, ptr %i.je, i64 8 ; 2 uses
  store ptr %i.jh, ptr %i.ji, align 8, !tbaa !34
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.jk = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  store ptr %i.jj, ptr %i.jk, align 8, !tbaa !27
  %i.jl = load ptr, ptr %4, align 8, !tbaa !35    ; 4 uses
  %i.jm = load ptr, ptr %i.hr, align 8, !tbaa !35
  %i.jn = ptrtoint ptr %i.jm to i64
  %i.jo = ptrtoint ptr %i.jl to i64
  %i.jp = sub i64 %i.jn, %i.jo                    ; 4 uses
  %i.jq = icmp sgt i64 %i.jp, 4
  br i1 %i.jq, label %bb.af, label %bb.ag, !prof !42

bb.af:                                            ; preds = %.noexc196
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.jh, ptr align 4 %i.jl, i64 %i.jp, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i

bb.ag:                                            ; preds = %.noexc196
  %i.jr = icmp eq i64 %i.jp, 4
  br i1 %i.jr, label %bb.ah, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i

bb.ah:                                            ; preds = %bb.ag
  %i.js = load i32, ptr %i.jl, align 4, !tbaa !31
  store i32 %i.js, ptr %i.jh, align 4, !tbaa !31
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i:              ; preds = %bb.ah, %bb.ag, %bb.af
  %i.jt = getelementptr inbounds i8, ptr %i.jh, i64 %i.jp
  store ptr %i.jt, ptr %i.ji, align 8, !tbaa !34
  %i.ju = load ptr, ptr %i.jd, align 8, !tbaa !23
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 24
  store ptr %i.jv, ptr %i.jd, align 8, !tbaa !23
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit

bb.ai:                                            ; preds = %bb.ae
  invoke void @_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.jc, ptr %i.je, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %._ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit_crit_edge unwind label %bb.al

._ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit_crit_edge: ; preds = %bb.ai
  %.pre440 = load ptr, ptr %4, align 8, !tbaa !26
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit: ; preds = %._ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit_crit_edge, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i
  %i.jw = phi ptr [ %.pre440, %._ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit_crit_edge ], [ %i.jl, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i ] ; 3 uses
  %.not.i.i.i198 = icmp eq ptr %i.jw, null
  br i1 %.not.i.i.i198, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit
  %i.jx = load ptr, ptr %i.hq, align 8, !tbaa !27
  %i.jy = ptrtoint ptr %i.jx to i64
  %i.jz = ptrtoint ptr %i.jw to i64
  %i.ka = sub i64 %i.jy, %i.jz
  call void @_ZdlPvm(ptr noundef nonnull %i.jw, i64 noundef %i.ka) #15
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.kb = load i64, ptr %i.n, align 8, !tbaa !49  ; 3 uses
  %i.kc = icmp sgt i64 %i.kb, %indvars.iv.next402
  br i1 %i.kc, label %.lr.ph309, label %._crit_edge310.loopexit, !llvm.loop !127

bb.ak:                                            ; preds = %.lr.ph309
  %i.kd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit200

bb.al:                                            ; preds = %bb.ai, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i
  %i.ke = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kf = load ptr, ptr %4, align 8, !tbaa !26    ; 3 uses
  %.not.i.i.i199 = icmp eq ptr %i.kf, null
  br i1 %.not.i.i.i199, label %_ZNSt6vectorIiSaIiEED2Ev.exit200, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.kg = load ptr, ptr %i.hq, align 8, !tbaa !27
  %i.kh = ptrtoint ptr %i.kg to i64
  %i.ki = ptrtoint ptr %i.kf to i64
  %i.kj = sub i64 %i.kh, %i.ki
  call void @_ZdlPvm(ptr noundef nonnull %i.kf, i64 noundef %i.kj) #15
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit200

_ZNSt6vectorIiSaIiEED2Ev.exit200:                 ; preds = %bb.am, %bb.al, %bb.ak
  %.pn156 = phi { ptr, i32 } [ %i.kd, %bb.ak ], [ %i.ke, %bb.al ], [ %i.ke, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %.body

._crit_edge344:                                   ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit, %.preheader248
  %.not4.i.i.i = icmp eq ptr %.pr.i, %i.hn
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIS0_IiSaIiEESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge344, %_ZSt8_DestroyISt6vectorIS0_IiSaIiEESaIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.la, %_ZSt8_DestroyISt6vectorIS0_IiSaIiEESaIS2_EEEvPT_.exit.i.i.i ], [ %.pr.i, %._crit_edge344 ] ; 5 uses
  %i.kk = load ptr, ptr %.05.i.i.i, align 8, !tbaa !22 ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !23 ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.kk, %i.km
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.kt, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.kk, %.lr.ph.i.i.i ] ; 3 uses
  %i.kn = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8, !tbaa !26 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.kn, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i.i.i.i, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ko = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 16
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !27
  %i.kq = ptrtoint ptr %i.kp to i64
  %i.kr = ptrtoint ptr %i.kn to i64
  %i.ks = sub i64 %i.kq, %i.kr
  call void @_ZdlPvm(ptr noundef nonnull %i.kn, i64 noundef %i.ks) #15
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %bb.an, %.lr.ph.i.i.i.i.i.i.i
  %i.kt = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.kt, %i.km
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %.05.i.i.i, align 8, !tbaa !22
  br label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %.lr.ph.i.i.i
  %i.ku = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.kk, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.ku, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIS0_IiSaIiEESaIS2_EEEvPT_.exit.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i
  %i.kv = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !41
  %i.kx = ptrtoint ptr %i.kw to i64
  %i.ky = ptrtoint ptr %i.ku to i64
  %i.kz = sub i64 %i.kx, %i.ky
  call void @_ZdlPvm(ptr noundef nonnull %i.ku, i64 noundef %i.kz) #15
  br label %_ZSt8_DestroyISt6vectorIS0_IiSaIiEESaIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIS0_IiSaIiEESaIS2_EEEvPT_.exit.i.i.i: ; preds = %bb.ao, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i
  %i.la = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i201 = icmp eq ptr %i.la, %i.hn
  br i1 %.not.i.i.i201, label %_ZSt8_DestroyIPSt6vectorIS0_IiSaIiEESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPSt6vectorIS0_IiSaIiEESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorIS0_IiSaIiEESaIS2_EEEvPT_.exit.i.i.i, %._crit_edge344
  %.not.i.i1.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIS0_IiSaIiEESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %i.hz) #15
  br label %_ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EED2Ev.exit

_ZNSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIS0_IiSaIiEESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.bc

.lr.ph343:                                        ; preds = %.lr.ph343.preheader, %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit
  %indvars.iv431 = phi i64 [ 0, %.lr.ph343.preheader ], [ %indvars.iv.next432, %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit ] ; 5 uses
  %i.lb = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.lc = load ptr, ptr %1, align 8, !tbaa !53    ; 2 uses
  %i.ld = ptrtoint ptr %i.lb to i64
  %i.le = ptrtoint ptr %i.lc to i64
  %i.lf = sub i64 %i.ld, %i.le
  %i.lg = sdiv exact i64 %i.lf, 24                ; 2 uses
  %.not.i.i202 = icmp ugt i64 %i.lg, %indvars.iv431
  br i1 %.not.i.i202, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph343
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.4, i64 noundef %indvars.iv431, i64 noundef %i.lg) #16
          to label %.noexc203 unwind label %bb.as

.noexc203:                                        ; preds = %bb.aq
  unreachable

bb.ar:                                            ; preds = %.lr.ph343
  %i.lh = getelementptr inbounds nuw [24 x i8], ptr %i.lc, i64 %indvars.iv431 ; 4 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 8 ; 2 uses
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !138
  %i.lk = load ptr, ptr %i.lh, align 8, !tbaa !137
  %i.ll = icmp eq ptr %i.lj, %i.lk
  br i1 %i.ll, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit, label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.lm = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.at:                                            ; preds = %bb.ar
  %i.ln = getelementptr inbounds nuw [24 x i8], ptr %.pr.i, i64 %indvars.iv431 ; 4 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 8 ; 3 uses
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !23 ; 3 uses
  %i.lq = load ptr, ptr %i.ln, align 8, !tbaa !22 ; 3 uses
  %i.lr = ptrtoint ptr %i.lp to i64
  %i.ls = ptrtoint ptr %i.lq to i64
  %i.lt = sub i64 %i.lr, %i.ls                    ; 4 uses
  %.not.i.i.i.i205 = icmp eq ptr %i.lp, %i.lq
  br i1 %.not.i.i.i.i205, label %.noexc208, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.lu = icmp ugt i64 %i.lt, 9223372036854775800
  br i1 %i.lu, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv.exit.i.i.i.i, !prof !43

.noexc.i.i:                                       ; preds = %bb.au
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #16
          to label %.noexc207 unwind label %.loopexit.split-lp

.noexc207:                                        ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.au
  %i.lv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lt) #17
          to label %_ZNSt15__new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv.exit.i.i.i.i..noexc208_crit_edge unwind label %.loopexit249

_ZNSt15__new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv.exit.i.i.i.i..noexc208_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv.exit.i.i.i.i
  %.pre442 = load ptr, ptr %i.ln, align 8, !tbaa !44
  %.pre443 = load ptr, ptr %i.lo, align 8, !tbaa !44
  br label %.noexc208

.noexc208:                                        ; preds = %_ZNSt15__new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv.exit.i.i.i.i..noexc208_crit_edge, %bb.at
  %i.lw = phi ptr [ %i.lp, %bb.at ], [ %.pre443, %_ZNSt15__new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv.exit.i.i.i.i..noexc208_crit_edge ]
  %i.lx = phi ptr [ %i.lq, %bb.at ], [ %.pre442, %_ZNSt15__new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv.exit.i.i.i.i..noexc208_crit_edge ]
  %i.ly = phi ptr [ null, %bb.at ], [ %i.lv, %_ZNSt15__new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv.exit.i.i.i.i..noexc208_crit_edge ] ; 17 uses
  %i.lz = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIiSaIiEES2_IS4_SaIS4_EEEEPS4_ET0_T_SC_SB_(ptr %i.lx, ptr %i.lw, ptr noundef %i.ly)
          to label %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit.preheader unwind label %bb.av ; 2 uses

_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit.preheader: ; preds = %.noexc208
  %i.ma = load ptr, ptr %i.lo, align 8, !tbaa !23
  %i.mb = load ptr, ptr %i.ln, align 8, !tbaa !22 ; 19 uses
  %i.mc = ptrtoint ptr %i.ma to i64
  %i.md = ptrtoint ptr %i.mb to i64
  %i.me = sub i64 %i.mc, %i.md
  %i.mf = sdiv exact i64 %i.me, 24                ; 14 uses
  %i.mg = trunc i64 %i.mf to i32                  ; 5 uses
  %i.mh = icmp sgt i32 %i.mg, 0                   ; 3 uses
  br i1 %i.mh, label %.lr.ph325.preheader, label %.preheader247

.lr.ph325.preheader:                              ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit.preheader
  %wide.trip.count418 = and i64 %i.mf, 2147483647 ; 2 uses
  %i.mi = add nsw i64 %wide.trip.count418, -1     ; 2 uses
  %xtraiter = and i64 %i.mf, 3                    ; 3 uses
  %i.mj = icmp ult i64 %i.mi, 3
  %unroll_iter = and i64 %i.mf, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod676 = icmp ne i64 %xtraiter, 0
  %xtraiter678 = and i64 %i.mf, 3                 ; 3 uses
  %i.mk = icmp ult i64 %i.mi, 3
  %unroll_iter683 = and i64 %i.mf, 2147483644
  %lcmp.mod680.not = icmp eq i64 %xtraiter678, 0
  %lcmp.mod682 = icmp ne i64 %xtraiter678, 0
  br label %.lr.ph325

bb.av:                                            ; preds = %.noexc208
  %i.ml = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i206 = icmp eq ptr %i.ly, null
  br i1 %.not.i.i.i206, label %.body, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @_ZdlPvm(ptr noundef nonnull %i.ly, i64 noundef %i.lt) #15
  br label %.body

.preheader247:                                    ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit, %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit.preheader
  %.not328 = icmp slt i32 %i.mg, 0
  br i1 %.not328, label %._crit_edge332, label %.lr.ph331.preheader

.lr.ph331.preheader:                              ; preds = %.preheader247
  %i.mm = add nuw i32 %i.mg, 1                    ; 2 uses
  %i.mn = icmp eq i32 %i.mg, 0
  br i1 %i.mn, label %.lr.ph331.epil.preheader, label %.lr.ph331.preheader.new

.lr.ph331.preheader.new:                          ; preds = %.lr.ph331.preheader
  %unroll_iter690 = and i32 %i.mm, -2
  br label %.lr.ph331

.loopexit249:                                     ; preds = %_ZNSt15__new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv.exit.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %.noexc.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph325:                                        ; preds = %.lr.ph325.preheader, %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit
  %indvars.iv415 = phi i64 [ 0, %.lr.ph325.preheader ], [ %indvars.iv.next416, %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit ] ; 3 uses
  %i.mo = getelementptr inbounds nuw [24 x i8], ptr %i.mb, i64 %indvars.iv415
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !26 ; 2 uses
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !31 ; 5 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mp, i64 4
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !31 ; 5 uses
  br i1 %i.mj, label %.epil.preheader, label %.lr.ph325.new

._crit_edge316.unr-lcssa:                         ; preds = %.lr.ph325.new
  br i1 %lcmp.mod.not, label %._crit_edge316, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge316.unr-lcssa, %.lr.ph325
  %indvars.iv407.epil.init = phi i64 [ 0, %.lr.ph325 ], [ %indvars.iv.next408.3, %._crit_edge316.unr-lcssa ]
  %.0129312.epil.init = phi i32 [ -1, %.lr.ph325 ], [ %spec.select.3, %._crit_edge316.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod676)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ax, %.epil.preheader
  %indvars.iv407.epil = phi i64 [ %indvars.iv407.epil.init, %.epil.preheader ], [ %indvars.iv.next408.epil, %bb.ax ] ; 3 uses
  %.0129312.epil = phi i32 [ %.0129312.epil.init, %.epil.preheader ], [ %spec.select.epil, %bb.ax ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ax ]
  %i.mt = getelementptr inbounds nuw [24 x i8], ptr %i.mb, i64 %indvars.iv407.epil
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !26
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 4
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !31
  %i.mx = icmp eq i32 %i.mw, %i.mq
  %i.my = trunc nuw nsw i64 %indvars.iv407.epil to i32
  %spec.select.epil = select i1 %i.mx, i32 %i.my, i32 %.0129312.epil ; 2 uses
  %indvars.iv.next408.epil = add nuw nsw i64 %indvars.iv407.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge316, label %bb.ax, !llvm.loop !128

._crit_edge316:                                   ; preds = %bb.ax, %._crit_edge316.unr-lcssa
  %spec.select.lcssa = phi i32 [ %spec.select.3, %._crit_edge316.unr-lcssa ], [ %spec.select.epil, %bb.ax ]
  %i.mz = getelementptr inbounds nuw [24 x i8], ptr %i.ly, i64 %indvars.iv415
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !26 ; 2 uses
  store i32 %spec.select.lcssa, ptr %i.na, align 4, !tbaa !31
  br i1 %i.mk, label %.epil.preheader677, label %._crit_edge316.new

.lr.ph325.new:                                    ; preds = %.lr.ph325, %.lr.ph325.new
  %indvars.iv407 = phi i64 [ %indvars.iv.next408.3, %.lr.ph325.new ], [ 0, %.lr.ph325 ] ; 6 uses
  %.0129312 = phi i32 [ %spec.select.3, %.lr.ph325.new ], [ -1, %.lr.ph325 ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph325.new ], [ 0, %.lr.ph325 ]
  %i.nb = getelementptr inbounds nuw [24 x i8], ptr %i.mb, i64 %indvars.iv407
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !26
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 4
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !31
  %i.nf = icmp eq i32 %i.ne, %i.mq
  %i.ng = trunc nuw nsw i64 %indvars.iv407 to i32
  %spec.select = select i1 %i.nf, i32 %i.ng, i32 %.0129312
  %indvars.iv.next408 = or disjoint i64 %indvars.iv407, 1 ; 2 uses
  %i.nh = getelementptr inbounds nuw [24 x i8], ptr %i.mb, i64 %indvars.iv.next408
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !26
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 4
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !31
  %i.nl = icmp eq i32 %i.nk, %i.mq
  %i.nm = trunc nuw nsw i64 %indvars.iv.next408 to i32
  %spec.select.1 = select i1 %i.nl, i32 %i.nm, i32 %spec.select
  %indvars.iv.next408.1 = or disjoint i64 %indvars.iv407, 2 ; 2 uses
  %i.nn = getelementptr inbounds nuw [24 x i8], ptr %i.mb, i64 %indvars.iv.next408.1
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !26
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 4
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !31
  %i.nr = icmp eq i32 %i.nq, %i.mq
  %i.ns = trunc nuw nsw i64 %indvars.iv.next408.1 to i32
  %spec.select.2 = select i1 %i.nr, i32 %i.ns, i32 %spec.select.1
  %indvars.iv.next408.2 = or disjoint i64 %indvars.iv407, 3 ; 2 uses
  %i.nt = getelementptr inbounds nuw [24 x i8], ptr %i.mb, i64 %indvars.iv.next408.2
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !26
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 4
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !31
  %i.nx = icmp eq i32 %i.nw, %i.mq
  %i.ny = trunc nuw nsw i64 %indvars.iv.next408.2 to i32
  %spec.select.3 = select i1 %i.nx, i32 %i.ny, i32 %spec.select.2 ; 3 uses
  %indvars.iv.next408.3 = add nuw nsw i64 %indvars.iv407, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge316.unr-lcssa, label %.lr.ph325.new, !llvm.loop !129

_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit.unr-lcssa: ; preds = %._crit_edge316.new
  br i1 %lcmp.mod680.not, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit, label %.epil.preheader677

.epil.preheader677:                               ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit.unr-lcssa, %._crit_edge316
  %indvars.iv410.epil.init = phi i64 [ 0, %._crit_edge316 ], [ %indvars.iv.next411.3, %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit.unr-lcssa ]
  %.0126318.epil.init = phi i32 [ -1, %._crit_edge316 ], [ %spec.select162.3, %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod682)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %.epil.preheader677
  %indvars.iv410.epil = phi i64 [ %indvars.iv410.epil.init, %.epil.preheader677 ], [ %indvars.iv.next411.epil, %bb.ay ] ; 3 uses
  %.0126318.epil = phi i32 [ %.0126318.epil.init, %.epil.preheader677 ], [ %spec.select162.epil, %bb.ay ]
  %epil.iter679 = phi i64 [ 0, %.epil.preheader677 ], [ %epil.iter679.next, %bb.ay ]
  %i.nz = getelementptr inbounds nuw [24 x i8], ptr %i.mb, i64 %indvars.iv410.epil
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !26
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !31
  %i.oc = icmp eq i32 %i.ob, %i.ms
  %i.od = trunc nuw nsw i64 %indvars.iv410.epil to i32
  %spec.select162.epil = select i1 %i.oc, i32 %i.od, i32 %.0126318.epil ; 2 uses
  %indvars.iv.next411.epil = add nuw nsw i64 %indvars.iv410.epil, 1
  %epil.iter679.next = add i64 %epil.iter679, 1   ; 2 uses
  %epil.iter679.cmp.not = icmp eq i64 %epil.iter679.next, %xtraiter678
  br i1 %epil.iter679.cmp.not, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit, label %bb.ay, !llvm.loop !130

_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit:     ; preds = %bb.ay, %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit.unr-lcssa
  %spec.select162.lcssa = phi i32 [ %spec.select162.3, %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit.unr-lcssa ], [ %spec.select162.epil, %bb.ay ]
  %i.oe = getelementptr inbounds nuw i8, ptr %i.na, i64 4
  store i32 %spec.select162.lcssa, ptr %i.oe, align 4, !tbaa !31
  %indvars.iv.next416 = add nuw nsw i64 %indvars.iv415, 1 ; 2 uses
  %exitcond419.not = icmp eq i64 %indvars.iv.next416, %wide.trip.count418
  br i1 %exitcond419.not, label %.preheader247, label %.lr.ph325, !llvm.loop !131

._crit_edge316.new:                               ; preds = %._crit_edge316, %._crit_edge316.new
  %indvars.iv410 = phi i64 [ %indvars.iv.next411.3, %._crit_edge316.new ], [ 0, %._crit_edge316 ] ; 6 uses
  %.0126318 = phi i32 [ %spec.select162.3, %._crit_edge316.new ], [ -1, %._crit_edge316 ]
end_hunk_4
