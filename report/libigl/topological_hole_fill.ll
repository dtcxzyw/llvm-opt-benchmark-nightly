Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/topological_hole_fill?download=true
inline.NumInlined: 248
inline.NumDeleted: 156
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN3igl21topological_hole_fillIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEES3_EEvRKNS1_10MatrixBaseIT_EERKS4_IT0_SaISC_EERNS1_15PlainObjectBaseIT1_EE:bb.a
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit, label %.lr.ph84.i.i.i.i.preheader249

.lr.ph84.i.i.i.i.preheader249:                    ; preds = %.lr.ph84.i.i.i.i.preheader, %middle.block
  %.05582.i.i.i.i.ph = phi i64 [ %i.s, %.lr.ph84.i.i.i.i.preheader ], [ %i.ap, %middle.block ]
  %.181.i.i.i.i.ph = phi i32 [ %i.am, %.lr.ph84.i.i.i.i.preheader ], [ %i.aw, %middle.block ]
  br label %.lr.ph84.i.i.i.i

.lr.ph84.i.i.i.i:                                 ; preds = %.lr.ph84.i.i.i.i.preheader249, %.lr.ph84.i.i.i.i
  %.05582.i.i.i.i = phi i64 [ %i.ba, %.lr.ph84.i.i.i.i ], [ %.05582.i.i.i.i.ph, %.lr.ph84.i.i.i.i.preheader249 ] ; 2 uses
  %.181.i.i.i.i = phi i32 [ %i.az, %.lr.ph84.i.i.i.i ], [ %.181.i.i.i.i.ph, %.lr.ph84.i.i.i.i.preheader249 ]
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.05582.i.i.i.i
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !18
  %i.az = tail call noundef i32 @llvm.smax.i32(i32 %.181.i.i.i.i, i32 %i.ay) ; 2 uses
  %i.ba = add nsw i64 %.05582.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ba, %i.o
  br i1 %exitcond.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit, label %.lr.ph84.i.i.i.i, !llvm.loop !39

bb.f:                                             ; preds = %bb.a
  %i.bb = load i32, ptr %i.l, align 4, !tbaa !18  ; 3 uses
  %i.bc = icmp sgt i64 %i.o, 1
  br i1 %i.bc, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit

.lr.ph89.i.i.i.i.preheader:                       ; preds = %bb.f
  %i.bd = add nsw i64 %i.o, -1                    ; 2 uses
  %min.iters.check145 = icmp ult i64 %i.o, 9
  br i1 %min.iters.check145, label %.lr.ph89.i.i.i.i.preheader245, label %vector.ph146

vector.ph146:                                     ; preds = %.lr.ph89.i.i.i.i.preheader
  %n.vec147 = and i64 %i.bd, -8                   ; 3 uses
  %i.be = or disjoint i64 %n.vec147, 1
  %broadcast.splatinsert148 = insertelement <4 x i32> poison, i32 %i.bb, i64 0
  %broadcast.splat149 = shufflevector <4 x i32> %broadcast.splatinsert148, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body150

vector.body150:                                   ; preds = %vector.body150, %vector.ph146
  %index151 = phi i64 [ 0, %vector.ph146 ], [ %index.next156, %vector.body150 ] ; 2 uses
  %vec.phi152 = phi <4 x i32> [ %broadcast.splat149, %vector.ph146 ], [ %i.bi, %vector.body150 ]
  %vec.phi153 = phi <4 x i32> [ %broadcast.splat149, %vector.ph146 ], [ %i.bj, %vector.body150 ]
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %index151 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 20
  %wide.load154 = load <4 x i32>, ptr %i.bg, align 4, !tbaa !18
  %wide.load155 = load <4 x i32>, ptr %i.bh, align 4, !tbaa !18
  %i.bi = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi152, <4 x i32> %wide.load154) ; 2 uses
  %i.bj = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi153, <4 x i32> %wide.load155) ; 2 uses
  %index.next156 = add nuw i64 %index151, 8       ; 2 uses
  %i.bk = icmp eq i64 %index.next156, %n.vec147
  br i1 %i.bk, label %middle.block157, label %vector.body150, !llvm.loop !40

middle.block157:                                  ; preds = %vector.body150
  %rdx.minmax158 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.bi, <4 x i32> %i.bj)
  %i.bl = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax158) ; 2 uses
  %cmp.n159 = icmp eq i64 %i.bd, %n.vec147
  br i1 %cmp.n159, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit, label %.lr.ph89.i.i.i.i.preheader245

.lr.ph89.i.i.i.i.preheader245:                    ; preds = %.lr.ph89.i.i.i.i.preheader, %middle.block157
  %.087.i.i.i.i.ph = phi i64 [ 1, %.lr.ph89.i.i.i.i.preheader ], [ %i.be, %middle.block157 ]
  %.286.i.i.i.i.ph = phi i32 [ %i.bb, %.lr.ph89.i.i.i.i.preheader ], [ %i.bl, %middle.block157 ]
  br label %.lr.ph89.i.i.i.i

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader245, %.lr.ph89.i.i.i.i
  %.087.i.i.i.i = phi i64 [ %i.bp, %.lr.ph89.i.i.i.i ], [ %.087.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader245 ] ; 2 uses
  %.286.i.i.i.i = phi i32 [ %i.bo, %.lr.ph89.i.i.i.i ], [ %.286.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader245 ]
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.087.i.i.i.i
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !18
  %i.bo = tail call noundef i32 @llvm.smax.i32(i32 %.286.i.i.i.i, i32 %i.bn) ; 2 uses
  %i.bp = add nuw nsw i64 %.087.i.i.i.i, 1        ; 2 uses
  %exitcond96.not.i.i.i.i = icmp eq i64 %i.bp, %i.o
  br i1 %exitcond96.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit, label %.lr.ph89.i.i.i.i, !llvm.loop !41

_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit: ; preds = %.lr.ph84.i.i.i.i, %.lr.ph89.i.i.i.i, %middle.block, %middle.block157, %bb.e, %bb.f
  %.3.i.i.i.i = phi i32 [ %i.bo, %.lr.ph89.i.i.i.i ], [ %i.bb, %bb.f ], [ %i.am, %bb.e ], [ %i.bl, %middle.block157 ], [ %i.aw, %middle.block ], [ %i.az, %.lr.ph84.i.i.i.i ]
  %i.bq = icmp sgt i32 %i.h, 0                    ; 2 uses
  br i1 %i.bq, label %.lr.ph.preheader, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit

.lr.ph.preheader:                                 ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit
  %wide.trip.count = and i64 %i.g, 2147483647     ; 3 uses
  %min.iters.check163 = icmp samesign ult i64 %wide.trip.count, 5
  br i1 %min.iters.check163, label %.lr.ph.preheader242, label %vector.ph164

vector.ph164:                                     ; preds = %.lr.ph.preheader
  %i.br = and i64 %i.g, 3                         ; 2 uses
  %i.bs = icmp eq i64 %i.br, 0
  %i.bt = select i1 %i.bs, i64 4, i64 %i.br
  %n.vec165 = sub nsw i64 %wide.trip.count, %i.bt ; 2 uses
  br label %vector.body166

vector.body166:                                   ; preds = %vector.body166, %vector.ph164
  %index167 = phi i64 [ 0, %vector.ph164 ], [ %index.next170, %vector.body166 ] ; 5 uses
  %vec.phi168 = phi <2 x i32> [ zeroinitializer, %vector.ph164 ], [ %i.df, %vector.body166 ]
  %vec.phi169 = phi <2 x i32> [ zeroinitializer, %vector.ph164 ], [ %i.dg, %vector.body166 ]
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %index167 ; 2 uses
  %i.bv = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %index167 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %index167 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  %i.bz = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %index167 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 72
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 56
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 80
  %i.cf = load ptr, ptr %i.cb, align 8, !tbaa !65
  %i.cg = load ptr, ptr %i.cc, align 8, !tbaa !65
  %i.ch = insertelement <2 x ptr> poison, ptr %i.cf, i64 0
  %i.ci = insertelement <2 x ptr> %i.ch, ptr %i.cg, i64 1
  %i.cj = load ptr, ptr %i.cd, align 8, !tbaa !65
  %i.ck = load ptr, ptr %i.ce, align 8, !tbaa !65
  %i.cl = insertelement <2 x ptr> poison, ptr %i.cj, i64 0
  %i.cm = insertelement <2 x ptr> %i.cl, ptr %i.ck, i64 1
  %i.cn = load ptr, ptr %i.bu, align 8, !tbaa !66
  %i.co = load ptr, ptr %i.bw, align 8, !tbaa !66
  %i.cp = insertelement <2 x ptr> poison, ptr %i.cn, i64 0
  %i.cq = insertelement <2 x ptr> %i.cp, ptr %i.co, i64 1
  %i.cr = load ptr, ptr %i.by, align 8, !tbaa !66
  %i.cs = load ptr, ptr %i.ca, align 8, !tbaa !66
  %i.ct = insertelement <2 x ptr> poison, ptr %i.cr, i64 0
  %i.cu = insertelement <2 x ptr> %i.ct, ptr %i.cs, i64 1
  %i.cv = ptrtoint <2 x ptr> %i.ci to <2 x i64>
  %i.cw = ptrtoint <2 x ptr> %i.cm to <2 x i64>
  %i.cx = ptrtoint <2 x ptr> %i.cq to <2 x i64>
  %i.cy = ptrtoint <2 x ptr> %i.cu to <2 x i64>
  %i.cz = sub <2 x i64> %i.cv, %i.cx
  %i.da = sub <2 x i64> %i.cw, %i.cy
  %i.db = lshr exact <2 x i64> %i.cz, splat (i64 2)
  %i.dc = lshr exact <2 x i64> %i.da, splat (i64 2)
  %i.dd = trunc <2 x i64> %i.db to <2 x i32>
  %i.de = trunc <2 x i64> %i.dc to <2 x i32>
  %i.df = add <2 x i32> %vec.phi168, %i.dd        ; 2 uses
  %i.dg = add <2 x i32> %vec.phi169, %i.de        ; 2 uses
  %index.next170 = add nuw i64 %index167, 4       ; 2 uses
  %i.dh = icmp eq i64 %index.next170, %n.vec165
  br i1 %i.dh, label %middle.block171, label %vector.body166, !llvm.loop !42

middle.block171:                                  ; preds = %vector.body166
  %bin.rdx = add <2 x i32> %i.dg, %i.df
  %i.di = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx)
  br label %.lr.ph.preheader242

.lr.ph.preheader242:                              ; preds = %.lr.ph.preheader, %middle.block171
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec165, %middle.block171 ]
  %.04395.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.di, %middle.block171 ]
  br label %.lr.ph

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %.lr.ph, %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit
  %.043.lcssa = phi i32 [ 0, %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit ], [ %i.fe, %.lr.ph ]
  %i.dj = add nsw i32 %.043.lcssa, %i.k
  %i.dk = sext i32 %i.dj to i64                   ; 2 uses
  %i.dl = mul nsw i64 %i.dk, 3
  tail call void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.dl, i64 noundef %i.dk, i64 noundef 3)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  %sext = shl i64 %i.j, 32
  %i.dm = ashr exact i64 %sext, 32
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !15, !noalias !67
  %i.dp = load ptr, ptr %2, align 8, !tbaa !14, !noalias !67 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !13, !noalias !67 ; 2 uses
  store ptr %i.dp, ptr %7, align 8, !tbaa !23, !alias.scope !67
  %i.ds = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.dm, ptr %i.ds, align 8, !tbaa !24, !alias.scope !67
  %i.dt = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %i.do, ptr %i.dt, align 8, !tbaa !24, !alias.scope !67
  %i.du = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %2, ptr %i.du, align 8, !tbaa !68, !alias.scope !67
  %i.dv = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.dw = getelementptr inbounds nuw i8, ptr %7, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dv, i8 0, i64 16, i1 false), !alias.scope !67
  store i64 %i.dr, ptr %i.dw, align 8, !tbaa !69, !alias.scope !67
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.dx = load ptr, ptr %0, align 8, !tbaa !14
  %i.dy = load i64, ptr %i.i, align 8, !tbaa !13
  store ptr %i.dx, ptr %3, align 8, !tbaa !70
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.dy, ptr %i.dz, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  store ptr %i.dp, ptr %4, align 8, !tbaa !32
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.dr, ptr %i.ea, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  store ptr %4, ptr %5, align 8, !tbaa !71
  %i.eb = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %i.eb, align 8, !tbaa !72
  %i.ec = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %6, ptr %i.ec, align 8, !tbaa !73
  %i.ed = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %7, ptr %i.ed, align 8, !tbaa !74
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSC_(ptr noundef nonnull align 8 dereferenceable(32) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br i1 %i.bq, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit.lr.ph, label %._crit_edge106

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit.lr.ph: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.ee = load ptr, ptr %1, align 8, !tbaa !63
  %i.ef = load ptr, ptr %2, align 8, !tbaa !14, !noalias !75 ; 11 uses
  %i.eg = load i64, ptr %i.dn, align 8, !tbaa !15, !noalias !75 ; 2 uses
  %i.eh = icmp eq i64 %i.eg, 1                    ; 5 uses
  %.sroa.565.0 = zext i1 %i.eh to i64             ; 6 uses
  %i.ei = select i1 %i.eh, i64 1, i64 2           ; 2 uses
  %i.ej = load i64, ptr %i.dq, align 8, !tbaa !13 ; 3 uses
  %i.ek = select i1 %i.eh, i64 0, i64 %i.ej       ; 6 uses
  %i.el = icmp eq i64 %i.ei, %i.eg                ; 2 uses
  %i.em = select i1 %i.eh, i64 2, i64 1
  %i.en = select i1 %i.el, i64 0, i64 %i.ei       ; 2 uses
  %i.eo = select i1 %i.el, i64 %i.em, i64 %.sroa.565.0 ; 6 uses
  %i.ep = mul nsw i64 %i.ej, %i.en                ; 5 uses
  %wide.trip.count125 = and i64 %i.g, 2147483647
  %i.eq = mul i64 %i.en, %i.ej
  %i.er = add i64 %i.eq, %i.eo
  %8 = shl i64 %i.er, 2                           ; 2 uses
  %i.es = shl i64 %i.ek, 2
  %9 = select i1 %i.eh, i64 4, i64 0
  %10 = add i64 %i.es, %9                         ; 2 uses
  %11 = getelementptr i8, ptr %i.ef, i64 %10
  %12 = getelementptr i8, ptr %i.ef, i64 %10
  %i.et = getelementptr i8, ptr %i.ef, i64 %8
  %i.eu = getelementptr i8, ptr %i.ef, i64 %8
  br label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader242, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader242 ] ; 2 uses
  %.04395 = phi i32 [ %i.fe, %.lr.ph ], [ %.04395.ph, %.lr.ph.preheader242 ]
  %i.ev = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %indvars.iv ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !65
  %i.ey = load ptr, ptr %i.ev, align 8, !tbaa !66
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = sub i64 %i.ez, %i.fa
  %i.fc = lshr exact i64 %i.fb, 2
  %i.fd = trunc i64 %i.fc to i32
  %i.fe = add i32 %.04395, %i.fd                  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, label %.lr.ph, !llvm.loop !47

._crit_edge106:                                   ; preds = %._crit_edge, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  ret void

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit: ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit.lr.ph, %._crit_edge
  %indvars.iv122 = phi i64 [ 0, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit.lr.ph ], [ %indvars.iv.next123, %._crit_edge ] ; 2 uses
  %storemerge105.in = phi i32 [ %.3.i.i.i.i, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit.lr.ph ], [ %storemerge105, %._crit_edge ]
  %.041103 = phi i32 [ %i.k, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit.lr.ph ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %storemerge105 = add nsw i32 %storemerge105.in, 1 ; 6 uses
  %i.ff = getelementptr inbounds nuw [24 x i8], ptr %i.ee, i64 %indvars.iv122 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !65
  %i.fi = load ptr, ptr %i.ff, align 8, !tbaa !66 ; 15 uses
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = ptrtoint ptr %i.fi to i64
  %i.fl = sub i64 %i.fj, %i.fk
  %i.fm = lshr exact i64 %i.fl, 2
  %i.fn = trunc i64 %i.fm to i32
  %i.fo = add i32 %i.fn, -1                       ; 4 uses
  %i.fp = sext i32 %.041103 to i64
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.fp ; 3 uses
  %i.fr = load i32, ptr %i.fi, align 4, !tbaa !18, !noalias !76
  store i32 %i.fr, ptr %i.fq, align 4, !tbaa !18, !noalias !76
  %i.fs = sext i32 %i.fo to i64
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.fs
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !18
  %i.fv = getelementptr [4 x i8], ptr %i.fq, i64 %i.ek
  %i.fw = getelementptr [4 x i8], ptr %i.fv, i64 %.sroa.565.0
  store i32 %i.fu, ptr %i.fw, align 4, !tbaa !18
  %i.fx = getelementptr [4 x i8], ptr %i.fq, i64 %i.ep
  %i.fy = getelementptr [4 x i8], ptr %i.fx, i64 %i.eo
  store i32 %storemerge105, ptr %i.fy, align 4, !tbaa !18
  %.197 = add i32 %.041103, 1                     ; 2 uses
  %.not98 = icmp eq i32 %i.fo, 0
  br i1 %.not98, label %._crit_edge, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit52.preheader

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit52.preheader: ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit
  %i.fz = sext i32 %.197 to i64                   ; 5 uses
  %i.ga = zext i32 %i.fo to i64                   ; 6 uses
  %min.iters.check205 = icmp ult i32 %i.fo, 20
  br i1 %min.iters.check205, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit52.preheader240, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit52.preheader
  %i.gb = shl nsw i64 %i.fz, 2                    ; 4 uses
  %i.gc = getelementptr i8, ptr %i.ef, i64 %i.gb  ; 3 uses
  %i.gd = shl nuw nsw i64 %i.ga, 2                ; 2 uses
  %i.ge = add nsw i64 %i.gb, %i.gd                ; 3 uses
  %i.gf = getelementptr i8, ptr %i.ef, i64 %i.ge  ; 3 uses
  %i.gg = getelementptr i8, ptr %11, i64 %i.gb    ; 3 uses
  %i.gh = getelementptr i8, ptr %12, i64 %i.ge    ; 3 uses
  %i.gi = getelementptr i8, ptr %i.et, i64 %i.gb  ; 3 uses
  %i.gj = getelementptr i8, ptr %i.eu, i64 %i.ge  ; 3 uses
  %i.gk = getelementptr i8, ptr %i.fi, i64 %i.gd
  %i.gl = getelementptr i8, ptr %i.gk, i64 4      ; 3 uses
  %bound0 = icmp ult ptr %i.gc, %i.gh
  %bound1 = icmp ult ptr %i.gg, %i.gf
  %found.conflict = and i1 %bound0, %bound1
  %bound0206 = icmp ult ptr %i.gc, %i.gj
  %bound1207 = icmp ult ptr %i.gi, %i.gf
  %found.conflict208 = and i1 %bound0206, %bound1207
  %conflict.rdx = or i1 %found.conflict, %found.conflict208
  %bound0209 = icmp ult ptr %i.gc, %i.gl
  %bound1210 = icmp ult ptr %i.fi, %i.gf
  %found.conflict211 = and i1 %bound0209, %bound1210
  %conflict.rdx212 = or i1 %conflict.rdx, %found.conflict211
  %bound0213 = icmp ult ptr %i.gg, %i.gj
  %bound1214 = icmp ult ptr %i.gi, %i.gh
  %found.conflict215 = and i1 %bound0213, %bound1214
  %conflict.rdx216 = or i1 %conflict.rdx212, %found.conflict215
  %bound0217 = icmp ult ptr %i.gg, %i.gl
  %bound1218 = icmp ult ptr %i.fi, %i.gh
  %found.conflict219 = and i1 %bound0217, %bound1218
  %conflict.rdx220 = or i1 %conflict.rdx216, %found.conflict219
  %bound0221 = icmp ult ptr %i.gi, %i.gl
  %bound1222 = icmp ult ptr %i.fi, %i.gj
  %found.conflict223 = and i1 %bound0221, %bound1222
  %conflict.rdx224 = or i1 %conflict.rdx220, %found.conflict223
  br i1 %conflict.rdx224, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit52.preheader240, label %vector.ph225

vector.ph225:                                     ; preds = %vector.memcheck
  %n.vec226 = and i64 %i.ga, 4294967288           ; 4 uses
  %i.gm = add nsw i64 %n.vec226, %i.fz            ; 2 uses
  %broadcast.splatinsert227 = insertelement <4 x i32> poison, i32 %storemerge105, i64 0
  %broadcast.splat228 = shufflevector <4 x i32> %broadcast.splatinsert227, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.ef, i64 %i.fz
  br label %vector.body229

vector.body229:                                   ; preds = %vector.body229, %vector.ph225
  %index230 = phi i64 [ 0, %vector.ph225 ], [ %index.next235, %vector.body229 ] ; 4 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index230 ; 4 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %index230 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 4
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 20
  %wide.load231 = load <4 x i32>, ptr %i.go, align 4, !tbaa !18, !alias.scope !77, !noalias !78
  %wide.load232 = load <4 x i32>, ptr %i.gp, align 4, !tbaa !18, !alias.scope !77, !noalias !78
  %i.gq = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> %wide.load231, ptr %gep, align 4, !tbaa !18, !alias.scope !79, !noalias !80
  store <4 x i32> %wide.load232, ptr %i.gq, align 4, !tbaa !18, !alias.scope !79, !noalias !80
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %index230 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %wide.load233 = load <4 x i32>, ptr %i.gr, align 4, !tbaa !18, !alias.scope !77
  %wide.load234 = load <4 x i32>, ptr %i.gs, align 4, !tbaa !18, !alias.scope !77
  %i.gt = getelementptr [4 x i8], ptr %gep, i64 %i.ek
  %i.gu = getelementptr [4 x i8], ptr %i.gt, i64 %.sroa.565.0 ; 2 uses
  %i.gv = getelementptr i8, ptr %i.gu, i64 16
  store <4 x i32> %wide.load233, ptr %i.gu, align 4, !tbaa !18, !alias.scope !81, !noalias !82
  store <4 x i32> %wide.load234, ptr %i.gv, align 4, !tbaa !18, !alias.scope !81, !noalias !82
  %i.gw = getelementptr [4 x i8], ptr %gep, i64 %i.ep
  %i.gx = getelementptr [4 x i8], ptr %i.gw, i64 %i.eo ; 2 uses
  %i.gy = getelementptr i8, ptr %i.gx, i64 16
  store <4 x i32> %broadcast.splat228, ptr %i.gx, align 4, !tbaa !18, !alias.scope !83, !noalias !77
  store <4 x i32> %broadcast.splat228, ptr %i.gy, align 4, !tbaa !18, !alias.scope !83, !noalias !77
  %index.next235 = add nuw i64 %index230, 8       ; 2 uses
  %i.gz = icmp eq i64 %index.next235, %n.vec226
  br i1 %i.gz, label %middle.block236, label %vector.body229, !llvm.loop !57

middle.block236:                                  ; preds = %vector.body229
  %cmp.n237 = icmp eq i64 %n.vec226, %i.ga
  br i1 %cmp.n237, label %._crit_edge.loopexit, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit52.preheader240

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit52.preheader240: ; preds = %vector.memcheck, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit52.preheader, %middle.block236
  %indvars.iv117.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit52.preheader ], [ %n.vec226, %middle.block236 ] ; 4 uses
  %indvars.iv115.ph = phi i64 [ %i.fz, %vector.memcheck ], [ %i.fz, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit52.preheader ], [ %i.gm, %middle.block236 ] ; 3 uses
  %xtraiter = and i64 %i.ga, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit52.prol.loopexit, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit52.prol

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit52.prol: ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit52.preheader240
  %i.ha = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %indvars.iv115.ph ; 3 uses
  %indvars.iv.next118.prol = or disjoint i64 %indvars.iv117.ph, 1 ; 2 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %indvars.iv.next118.prol
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !18, !noalias !78
  store i32 %i.hc, ptr %i.ha, align 4, !tbaa !18, !noalias !78
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %indvars.iv117.ph
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !18
  %i.hf = getelementptr [4 x i8], ptr %i.ha, i64 %i.ek
  %i.hg = getelementptr [4 x i8], ptr %i.hf, i64 %.sroa.565.0
  store i32 %i.he, ptr %i.hg, align 4, !tbaa !18
  %i.hh = getelementptr [4 x i8], ptr %i.ha, i64 %i.ep
  %i.hi = getelementptr [4 x i8], ptr %i.hh, i64 %i.eo
  store i32 %storemerge105, ptr %i.hi, align 4, !tbaa !18
  %indvars.iv.next116.prol = add nsw i64 %indvars.iv115.ph, 1 ; 2 uses
  br label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit52.prol.loopexit

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit52.prol.loopexit: ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit52.prol, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit52.preheader240
  %indvars.iv.next116.lcssa241.unr = phi i64 [ poison, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit52.preheader240 ], [ %indvars.iv.next116.prol, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit52.prol ]
  %indvars.iv117.unr = phi i64 [ %indvars.iv117.ph, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit52.preheader240 ], [ %indvars.iv.next118.prol, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit52.prol ]
  %indvars.iv115.unr = phi i64 [ %indvars.iv115.ph, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit52.preheader240 ], [ %indvars.iv.next116.prol, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit52.prol ]
  %i.hj = add nsw i64 %i.ga, -1
  %i.hk = icmp eq i64 %indvars.iv117.ph, %i.hj
  br i1 %i.hk, label %._crit_edge.loopexit, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit52

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit52: ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit52.prol.loopexit, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit52
  %indvars.iv117 = phi i64 [ %indvars.iv.next118.1, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit52 ], [ %indvars.iv117.unr, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit52.prol.loopexit ] ; 3 uses
  %indvars.iv115 = phi i64 [ %indvars.iv.next116.1, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit52 ], [ %indvars.iv115.unr, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit52.prol.loopexit ] ; 3 uses
  %i.hl = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %indvars.iv115 ; 3 uses
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1 ; 2 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %indvars.iv.next118
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !18, !noalias !78
  store i32 %i.hn, ptr %i.hl, align 4, !tbaa !18, !noalias !78
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %indvars.iv117
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !18
  %i.hq = getelementptr [4 x i8], ptr %i.hl, i64 %i.ek
  %i.hr = getelementptr [4 x i8], ptr %i.hq, i64 %.sroa.565.0
  store i32 %i.hp, ptr %i.hr, align 4, !tbaa !18
  %i.hs = getelementptr [4 x i8], ptr %i.hl, i64 %i.ep
  %i.ht = getelementptr [4 x i8], ptr %i.hs, i64 %i.eo
  store i32 %storemerge105, ptr %i.ht, align 4, !tbaa !18
  %i.hu = getelementptr [4 x i8], ptr %i.ef, i64 %indvars.iv115
  %i.hv = getelementptr i8, ptr %i.hu, i64 4      ; 3 uses
  %indvars.iv.next118.1 = add nuw nsw i64 %indvars.iv117, 2 ; 3 uses
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %indvars.iv.next118.1
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !18, !noalias !78
  store i32 %i.hx, ptr %i.hv, align 4, !tbaa !18, !noalias !78
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %indvars.iv.next118
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !18
  %i.ia = getelementptr [4 x i8], ptr %i.hv, i64 %i.ek
  %i.ib = getelementptr [4 x i8], ptr %i.ia, i64 %.sroa.565.0
  store i32 %i.hz, ptr %i.ib, align 4, !tbaa !18
  %i.ic = getelementptr [4 x i8], ptr %i.hv, i64 %i.ep
  %i.id = getelementptr [4 x i8], ptr %i.ic, i64 %i.eo
  store i32 %storemerge105, ptr %i.id, align 4, !tbaa !18
  %indvars.iv.next116.1 = add nsw i64 %indvars.iv115, 2 ; 2 uses
  %.not.1 = icmp eq i64 %indvars.iv.next118.1, %i.ga
  br i1 %.not.1, label %._crit_edge.loopexit, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit52, !llvm.loop !58

._crit_edge.loopexit:                             ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit52.prol.loopexit, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit52, %middle.block236
  %indvars.iv.next116.lcssa = phi i64 [ %i.gm, %middle.block236 ], [ %indvars.iv.next116.lcssa241.unr, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit52.prol.loopexit ], [ %indvars.iv.next116.1, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit52 ]
  %i.ie = trunc nsw i64 %indvars.iv.next116.lcssa to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit
  %.1.lcssa = phi i32 [ %.197, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit ], [ %i.ie, %._crit_edge.loopexit ]
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1 ; 2 uses
  %exitcond126.not = icmp eq i64 %indvars.iv.next123, %wide.trip.count125
  br i1 %exitcond126.not, label %._crit_edge106, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit, !llvm.loop !59
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !15
  %i.e = mul nsw i64 %i.d, %i.b
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !14
  tail call void @free(ptr noundef %i.f) #11
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %1, 4611686018427387903
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #11 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !85
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #12
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i: ; preds = %bb.c
  %i.j = shl nuw i64 %1, 2
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #13 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #11 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !85
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #12
  unreachable

.sink.split:                                      ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i
  %.sink = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !14
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  store i64 %2, ptr %i.a, align 8, !tbaa !13
end_hunk_0
