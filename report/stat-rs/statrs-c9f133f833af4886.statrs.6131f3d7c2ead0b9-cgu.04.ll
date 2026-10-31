Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stat-rs/original/statrs-c9f133f833af4886.statrs.6131f3d7c2ead0b9-cgu.04?download=true
inline.NumInlined: 206
inline.NumDeleted: 90
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RNvMs0_NtNtCs8lmMd0ZksV9_6statrs12distribution23multivariate_students_tINtB5_19MultivariateStudentNtNtNtCsbADZB03g5jP_8nalgebra4base9dimension3DynE3new:bb.a

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.sroa.04.014.i.i.i.epil = phi i64 [ %i.ct, %.lr.ph.i.i.i.epil ], [ %.sroa.04.014.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %i.ct = add nuw i64 %.sroa.04.014.i.i.i.epil, 1
  %umin.i.i.i.epil = call i64 @llvm.umin.i64(i64 %.val1.i.i.i.i, i64 %.sroa.04.014.i.i.i.epil)
  %i.cu = shl nuw i64 %umin.i.i.i.epil, 3
  %i.cv = mul i64 %.sroa.04.014.i.i.i.epil, %.val1.i.i.i.i
  %i.cw = getelementptr [8 x i8], ptr %.sroa.4.0.copyload.i.i, i64 %i.cv
  call void @llvm.memset.p0.i64(ptr align 8 %i.cw, i8 0, i64 %i.cu, i1 false), !noalias !188
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit116.i, label %.lr.ph.i.i.i.epil, !llvm.loop !89

.loopexit116.i:                                   ; preds = %.loopexit116.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %.noexc.i
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.v, align 8, !alias.scope !184, !noalias !181
  %.sroa.4.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx2.i.i, align 8, !alias.scope !184, !noalias !181
  %.sroa.5.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 %.sroa.5.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx4.i.i, align 8, !alias.scope !184, !noalias !181
  %.sroa.56.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 2 uses
  store i64 %.val1.i.i.i.i, ptr %.sroa.56.0..sroa_idx7.i.i, align 8, !alias.scope !184, !noalias !181
  %.sroa.6.0..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 2 uses
  store i64 %.val.i.i.i.i, ptr %.sroa.6.0..sroa_idx9.i.i, align 8, !alias.scope !184, !noalias !181
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !181
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !181
  call void @llvm.experimental.noalias.scope.decl(metadata !190)
  call void @llvm.experimental.noalias.scope.decl(metadata !191)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !192
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecdENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(40) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ac)
          to label %.noexc32.i unwind label %bb.ab, !noalias !178

.noexc32.i:                                       ; preds = %.loopexit116.i
  %.val1.i.i.i22.i = load i64, ptr %.sroa.426.0..sroa_idx, align 8, !alias.scope !193, !noundef !6 ; 18 uses
  %.val.i.i.i23.i = load i64, ptr %.sroa.527.0..sroa_idx, align 8, !alias.scope !193, !noundef !6 ; 19 uses
  %.sroa.0.0.copyload.i24.i = load i64, ptr %i.i, align 8, !noalias !192
  %.sroa.4.0..sroa_idx.i25.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.4.0.copyload.i26.i = load ptr, ptr %.sroa.4.0..sroa_idx.i25.i, align 8, !noalias !192 ; 7 uses
  %.sroa.5.0..sroa_idx.i27.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.5.0.copyload.i28.i = load i64, ptr %.sroa.5.0..sroa_idx.i27.i, align 8, !noalias !192
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !192
  %.not.i.i29.i = icmp eq i64 %.val.i.i.i23.i, 0  ; 2 uses
  br i1 %.not.i.i29.i, label %.loopexit115.i, label %.lr.ph16.i.i.i

.lr.ph16.i.i.i:                                   ; preds = %.noexc32.i
  %i.cx = shl i64 %.val1.i.i.i22.i, 3             ; 2 uses
  %i.cy = add i64 %i.cx, 8                        ; 3 uses
  %i.cz = add i64 %i.cx, -8                       ; 3 uses
  %xtraiter70 = and i64 %.val.i.i.i23.i, 1
  %i.da = icmp eq i64 %.val.i.i.i23.i, 1
  br i1 %i.da, label %.epil.preheader, label %.lr.ph16.i.i.i.new

.lr.ph16.i.i.i.new:                               ; preds = %.lr.ph16.i.i.i
  %unroll_iter74 = and i64 %.val.i.i.i23.i, -2
  br label %bb.aa

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i31.i, %bb.aa
  %i.db = add nuw i64 %.sroa.04.015.i.i.i, 2      ; 3 uses
  %i.dc = icmp ult i64 %i.db, %.val1.i.i.i22.i
  br i1 %i.dc, label %.lr.ph.i.i31.i.1, label %.loopexit.i.i.i.1

.lr.ph.i.i31.i.1:                                 ; preds = %.loopexit.i.i.i
  %i.dd = shl i64 %i.dh, 3
  %i.de = sub i64 %i.cz, %i.dd
  %i.df = mul i64 %i.dh, %i.cy
  %i.dg = getelementptr i8, ptr %.sroa.4.0.copyload.i26.i, i64 %i.df
  %scevgep.i.i.i.1 = getelementptr i8, ptr %i.dg, i64 8
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.i.i.1, i8 0, i64 %i.de, i1 false), !noalias !194
  br label %.loopexit.i.i.i.1

.loopexit.i.i.i.1:                                ; preds = %.lr.ph.i.i31.i.1, %.loopexit.i.i.i
  %niter75.next.1 = add nuw i64 %niter75, 2       ; 2 uses
  %niter75.ncmp.1 = icmp eq i64 %niter75.next.1, %unroll_iter74
  br i1 %niter75.ncmp.1, label %.loopexit115.i.loopexit.unr-lcssa, label %bb.aa

bb.aa:                                            ; preds = %.loopexit.i.i.i.1, %.lr.ph16.i.i.i.new
  %.sroa.04.015.i.i.i = phi i64 [ 0, %.lr.ph16.i.i.i.new ], [ %i.db, %.loopexit.i.i.i.1 ] ; 4 uses
  %niter75 = phi i64 [ 0, %.lr.ph16.i.i.i.new ], [ %niter75.next.1, %.loopexit.i.i.i.1 ]
  %i.dh = or disjoint i64 %.sroa.04.015.i.i.i, 1  ; 3 uses
  %i.di = icmp ult i64 %i.dh, %.val1.i.i.i22.i
  br i1 %i.di, label %.lr.ph.i.i31.i, label %.loopexit.i.i.i

.lr.ph.i.i31.i:                                   ; preds = %bb.aa
  %i.dj = shl i64 %.sroa.04.015.i.i.i, 3
  %i.dk = sub i64 %i.cz, %i.dj
  %i.dl = mul i64 %.sroa.04.015.i.i.i, %i.cy
  %i.dm = getelementptr i8, ptr %.sroa.4.0.copyload.i26.i, i64 %i.dl
  %scevgep.i.i.i = getelementptr i8, ptr %i.dm, i64 8
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.i.i, i8 0, i64 %i.dk, i1 false), !noalias !194
  br label %.loopexit.i.i.i

.body56.i:                                        ; preds = %bb.cf, %bb.ay, %.body.i11, %bb.ab
  %.pn7.i = phi { ptr, i32 } [ %.pn5.i, %.body.i11 ], [ %i.ha, %bb.ay ], [ %i.dn, %bb.ab ], [ %i.kn, %bb.cf ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynB1p_INtNtBG_11vec_storage10VecStoragedB1p_B1p_EEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(40) %i.v) #14
          to label %.body62.i unwind label %bb.cb, !noalias !178

bb.ab:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base11vec_storage10VecStoragedNtNtBG_9dimension3DynB1A_EECs8lmMd0ZksV9_6statrs.exit.i84.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base11vec_storage10VecStoragedNtNtBG_9dimension3DynB1A_EECs8lmMd0ZksV9_6statrs.exit.i55.i, %.loopexit116.i
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %.body56.i

.loopexit115.i.loopexit.unr-lcssa:                ; preds = %.loopexit.i.i.i.1
  %lcmp.mod72.not = icmp eq i64 %xtraiter70, 0
  br i1 %lcmp.mod72.not, label %.loopexit115.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit115.i.loopexit.unr-lcssa, %.lr.ph16.i.i.i
  %.sroa.04.015.i.i.i.epil.init = phi i64 [ 0, %.lr.ph16.i.i.i ], [ %i.db, %.loopexit115.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod73 = trunc i64 %.val.i.i.i23.i to i1
  call void @llvm.assume(i1 %lcmp.mod73)
  %i.do = add nuw i64 %.sroa.04.015.i.i.i.epil.init, 1
  %i.dp = icmp ult i64 %i.do, %.val1.i.i.i22.i
  br i1 %i.dp, label %.lr.ph.i.i31.i.epil, label %.loopexit115.i

.lr.ph.i.i31.i.epil:                              ; preds = %.epil.preheader
  %i.dq = shl i64 %.sroa.04.015.i.i.i.epil.init, 3
  %i.dr = sub i64 %i.cz, %i.dq
  %i.ds = mul i64 %.sroa.04.015.i.i.i.epil.init, %i.cy
  %i.dt = getelementptr i8, ptr %.sroa.4.0.copyload.i26.i, i64 %i.ds
  %scevgep.i.i.i.epil = getelementptr i8, ptr %i.dt, i64 8
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.i.i.epil, i8 0, i64 %i.dr, i1 false), !noalias !194
  br label %.loopexit115.i

.loopexit115.i:                                   ; preds = %.loopexit115.i.loopexit.unr-lcssa, %.lr.ph.i.i31.i.epil, %.epil.preheader, %.noexc32.i
  store i64 %.sroa.0.0.copyload.i24.i, ptr %i.t, align 8, !alias.scope !190, !noalias !181
  %.sroa.4.0..sroa_idx3.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %.sroa.4.0.copyload.i26.i, ptr %.sroa.4.0..sroa_idx3.i.i, align 8, !alias.scope !190, !noalias !181
  %.sroa.5.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 %.sroa.5.0.copyload.i28.i, ptr %.sroa.5.0..sroa_idx5.i.i, align 8, !alias.scope !190, !noalias !181
  %.sroa.57.0..sroa_idx8.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store i64 %.val1.i.i.i22.i, ptr %.sroa.57.0..sroa_idx8.i.i, align 8, !alias.scope !190, !noalias !181
  %.sroa.6.0..sroa_idx10.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store i64 %.val.i.i.i23.i, ptr %.sroa.6.0..sroa_idx10.i.i, align 8, !alias.scope !190, !noalias !181
  call void @llvm.experimental.noalias.scope.decl(metadata !195)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !196
  store i64 0, ptr %i.h, align 8, !noalias !196
  %i.du = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.du, align 8, !noalias !196
  %i.dv = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 0, ptr %i.dv, align 8, !noalias !196
  %i.dw = mul i64 %.val.i.i.i23.i, %.val1.i.i.i22.i ; 4 uses
  invoke void @_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h, i64 noundef 0, i64 noundef %i.dw, i64 noundef 8, i64 noundef 8)
          to label %bb.ac unwind label %bb.ai, !noalias !197

bb.ac:                                            ; preds = %.loopexit115.i
  invoke void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitdEE11resize_withNvMs1_BI_BF_6uninitECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.dw)
          to label %bb.ad unwind label %bb.ai, !noalias !197

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !196
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !196
  call void @llvm.experimental.noalias.scope.decl(metadata !198)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.dy = load i64, ptr %i.dx, align 8, !alias.scope !198, !noalias !196, !noundef !6 ; 2 uses
  %i.dz = icmp ult i64 %i.dy, 1152921504606846976
  call void @llvm.assume(i1 %i.dz)
  %i.ea = icmp eq i64 %i.dw, %i.dy
  br i1 %i.ea, label %.preheader.i.i.i, label %bb.af, !prof !7

bb.ae:                                            ; preds = %bb.af
  %i.eb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtB4_3mem12maybe_uninit11MaybeUninitdEEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #14
          to label %.body.i11 unwind label %bb.ah, !noalias !199

bb.af:                                            ; preds = %bb.ad
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @6, ptr noundef nonnull inttoptr (i64 79 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #15
          to label %bb.ag unwind label %bb.ae, !noalias !200

bb.ag:                                            ; preds = %bb.af
  unreachable

bb.ah:                                            ; preds = %bb.ae
  %i.ec = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #13, !noalias !199
  unreachable

bb.ai:                                            ; preds = %bb.ac, %.loopexit115.i
  %i.ed = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtB4_3mem12maybe_uninit11MaybeUninitdEEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #14
          to label %.body.i11 unwind label %bb.aj, !noalias !197

bb.aj:                                            ; preds = %bb.ai
  %i.ee = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #13, !noalias !197
  unreachable

.preheader.i.i.i:                                 ; preds = %bb.ad
  %.sroa.0.sroa.0.0.copyload.i.i = load i64, ptr %i.h, align 8, !noalias !201
  %.sroa.0.sroa.4.0.copyload.i.i = load ptr, ptr %i.du, align 8, !noalias !201 ; 5 uses
  %.sroa.0.sroa.5.0.copyload.i.i = load i64, ptr %i.dv, align 8, !noalias !201 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !196
  %.not.i.i33.i = icmp eq i64 %.val1.i.i.i22.i, 0
  %brmerge.i = or i1 %.not.i.i33.i, %.not.i.i29.i
  br i1 %brmerge.i, label %_RINvMs6_NtNtCsbADZB03g5jP_8nalgebra4base6matrixINtB6_6MatrixdNtNtB8_9dimension3DynBX_INtNtB8_11vec_storage10VecStoragedBX_BX_EE19transpose_to_uninitNtNtB8_6uninit6UninitBX_BX_IB1m_INtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitdEBX_BX_EECs8lmMd0ZksV9_6statrs.exit.i.i, label %.lr.ph.i.i34.i.preheader

.lr.ph.i.i34.i.preheader:                         ; preds = %.preheader.i.i.i
  %4 = mul i64 %.val1.i.i.i22.i, %.val.i.i.i23.i
  %i.ef = shl i64 %4, 3
  %scevgep.a = getelementptr i8, ptr %.sroa.0.sroa.4.0.copyload.i.i, i64 %i.ef
  %5 = add i64 %.val1.i.i.i22.i, %.val.i.i.i23.i
  %6 = shl i64 %5, 3
  %7 = getelementptr i8, ptr %.sroa.4.0.copyload.i26.i, i64 %6
  %scevgep65 = getelementptr i8, ptr %7, i64 -8
  %min.iters.check = icmp ugt i64 %.val.i.i.i23.i, 7
  %ident.check.not = icmp eq i64 %.val1.i.i.i22.i, 1
  %or.cond = and i1 %min.iters.check, %ident.check.not
  %bound0 = icmp ult ptr %.sroa.0.sroa.4.0.copyload.i.i, %scevgep65
  %bound1 = icmp ult ptr %.sroa.4.0.copyload.i26.i, %scevgep.a
  %found.conflict = and i1 %bound0, %bound1
  %.mask = and i64 %.val.i.i.i23.i, 1152921504606846976
  %stride.check = icmp ne i64 %.mask, 0
  %i.eg = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %.val.i.i.i23.i, -1152921504606846980 ; 3 uses
  %cmp.n = icmp eq i64 %.val.i.i.i23.i, %n.vec
  %xtraiter76 = and i64 %.val.i.i.i23.i, 3        ; 2 uses
  %lcmp.mod77.not = icmp eq i64 %xtraiter76, 0
  br label %.lr.ph.i.i34.i

..loopexit_crit_edge.i.i.i:                       ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.eh = add nuw i64 %.sroa.03.016.i.i.i, 1      ; 2 uses
  %exitcond19.not.i.i.i = icmp eq i64 %i.eh, %.val1.i.i.i22.i
  br i1 %exitcond19.not.i.i.i, label %_RINvMs6_NtNtCsbADZB03g5jP_8nalgebra4base6matrixINtB6_6MatrixdNtNtB8_9dimension3DynBX_INtNtB8_11vec_storage10VecStoragedBX_BX_EE19transpose_to_uninitNtNtB8_6uninit6UninitBX_BX_IB1m_INtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitdEBX_BX_EECs8lmMd0ZksV9_6statrs.exit.i.i, label %.lr.ph.i.i34.i

.lr.ph.i.i34.i:                                   ; preds = %.lr.ph.i.i34.i.preheader, %..loopexit_crit_edge.i.i.i
  %.sroa.03.016.i.i.i = phi i64 [ %i.eh, %..loopexit_crit_edge.i.i.i ], [ 0, %.lr.ph.i.i34.i.preheader ] ; 3 uses
  %i.ei = mul i64 %.sroa.03.016.i.i.i, %.val.i.i.i23.i
  %i.ej = getelementptr [8 x i8], ptr %.sroa.0.sroa.4.0.copyload.i.i, i64 %i.ei ; 6 uses
  %invariant.gep.i.i.i = getelementptr [8 x i8], ptr %.sroa.4.0.copyload.i26.i, i64 %.sroa.03.016.i.i.i ; 6 uses
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %i.eg
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.i34.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.i34.i ] ; 3 uses
  %i.ek = getelementptr [8 x i8], ptr %i.ej, i64 %index ; 2 uses
  %i.el = getelementptr [8 x i8], ptr %invariant.gep.i.i.i, i64 %index ; 2 uses
  %i.em = getelementptr i8, ptr %i.el, i64 16
  %wide.load = load <2 x double>, ptr %i.el, align 8, !alias.scope !202, !noalias !203
  %wide.load66 = load <2 x double>, ptr %i.em, align 8, !alias.scope !202, !noalias !203
  %i.en = getelementptr i8, ptr %i.ek, i64 16
  store <2 x double> %wide.load, ptr %i.ek, align 8, !alias.scope !204, !noalias !205
  store <2 x double> %wide.load66, ptr %i.en, align 8, !alias.scope !204, !noalias !205
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eo = icmp eq i64 %index.next, %n.vec
  br i1 %i.eo, label %middle.block, label %vector.body, !llvm.loop !117

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i34.i, %middle.block
  %.sroa.05.015.i.i.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.i.i34.i ] ; 3 uses
  br i1 %lcmp.mod77.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.sroa.05.015.i.i.i.prol = phi i64 [ %i.ep, %scalar.ph.prol ], [ %.sroa.05.015.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ep = add nuw i64 %.sroa.05.015.i.i.i.prol, 1 ; 2 uses
  %i.eq = getelementptr [8 x i8], ptr %i.ej, i64 %.sroa.05.015.i.i.i.prol
  %i.er = mul i64 %.sroa.05.015.i.i.i.prol, %.val1.i.i.i22.i
  %gep.i.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep.i.i.i, i64 %i.er
  %i.es = load double, ptr %gep.i.i.i.prol, align 8, !alias.scope !206, !noalias !203, !noundef !6
  store double %i.es, ptr %i.eq, align 8, !alias.scope !207, !noalias !203
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter76
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !118

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.05.015.i.i.i.unr = phi i64 [ %.sroa.05.015.i.i.i.ph, %scalar.ph.preheader ], [ %i.ep, %scalar.ph.prol ]
  %i.et = sub i64 %.sroa.05.015.i.i.i.ph, %.val.i.i.i23.i
  %i.eu = icmp ugt i64 %i.et, -4
  br i1 %i.eu, label %..loopexit_crit_edge.i.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.05.015.i.i.i = phi i64 [ %i.fh, %scalar.ph ], [ %.sroa.05.015.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ev = add nuw i64 %.sroa.05.015.i.i.i, 1      ; 2 uses
  %i.ew = getelementptr [8 x i8], ptr %i.ej, i64 %.sroa.05.015.i.i.i
  %i.ex = mul i64 %.sroa.05.015.i.i.i, %.val1.i.i.i22.i
  %gep.i.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i.i, i64 %i.ex
  %i.ey = load double, ptr %gep.i.i.i, align 8, !alias.scope !206, !noalias !203, !noundef !6
  store double %i.ey, ptr %i.ew, align 8, !alias.scope !207, !noalias !203
  %i.ez = add nuw i64 %.sroa.05.015.i.i.i, 2      ; 2 uses
  %i.fa = getelementptr [8 x i8], ptr %i.ej, i64 %i.ev
  %i.fb = mul i64 %i.ev, %.val1.i.i.i22.i
  %gep.i.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i.i.i, i64 %i.fb
  %i.fc = load double, ptr %gep.i.i.i.1, align 8, !alias.scope !206, !noalias !203, !noundef !6
  store double %i.fc, ptr %i.fa, align 8, !alias.scope !207, !noalias !203
  %i.fd = add nuw i64 %.sroa.05.015.i.i.i, 3      ; 2 uses
  %i.fe = getelementptr [8 x i8], ptr %i.ej, i64 %i.ez
  %i.ff = mul i64 %i.ez, %.val1.i.i.i22.i
  %gep.i.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep.i.i.i, i64 %i.ff
  %i.fg = load double, ptr %gep.i.i.i.2, align 8, !alias.scope !206, !noalias !203, !noundef !6
  store double %i.fg, ptr %i.fe, align 8, !alias.scope !207, !noalias !203
  %i.fh = add nuw i64 %.sroa.05.015.i.i.i, 4      ; 2 uses
  %i.fi = getelementptr [8 x i8], ptr %i.ej, i64 %i.fd
  %i.fj = mul i64 %i.fd, %.val1.i.i.i22.i
  %gep.i.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep.i.i.i, i64 %i.fj
  %i.fk = load double, ptr %gep.i.i.i.3, align 8, !alias.scope !206, !noalias !203, !noundef !6
  store double %i.fk, ptr %i.fi, align 8, !alias.scope !207, !noalias !203
  %exitcond.not.i.i35.i.3 = icmp eq i64 %i.fh, %.val.i.i.i23.i
  br i1 %exitcond.not.i.i35.i.3, label %..loopexit_crit_edge.i.i.i, label %scalar.ph, !llvm.loop !119

_RINvMs6_NtNtCsbADZB03g5jP_8nalgebra4base6matrixINtB6_6MatrixdNtNtB8_9dimension3DynBX_INtNtB8_11vec_storage10VecStoragedBX_BX_EE19transpose_to_uninitNtNtB8_6uninit6UninitBX_BX_IB1m_INtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitdEBX_BX_EECs8lmMd0ZksV9_6statrs.exit.i.i: ; preds = %..loopexit_crit_edge.i.i.i, %.preheader.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.sroa.4.0.copyload.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !208
  %i.fl = icmp ult i64 %.sroa.0.sroa.5.0.copyload.i.i, 1152921504606846976
  call void @llvm.assume(i1 %i.fl)
  store i64 %.sroa.0.sroa.0.0.copyload.i.i, ptr %i.f, align 8, !noalias !208
  %i.fm = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.0.sroa.4.0.copyload.i.i, ptr %i.fm, align 8, !noalias !208
  %i.fn = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %.sroa.0.sroa.5.0.copyload.i.i, ptr %i.fn, align 8, !noalias !208
  %i.fo = icmp eq i64 %i.dw, %.sroa.0.sroa.5.0.copyload.i.i
  br i1 %i.fo, label %bb.ap, label %bb.al, !prof !7

bb.ak:                                            ; preds = %bb.al
  %i.fp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecdEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #14
          to label %.body.i11 unwind label %bb.an, !noalias !209

bb.al:                                            ; preds = %_RINvMs6_NtNtCsbADZB03g5jP_8nalgebra4base6matrixINtB6_6MatrixdNtNtB8_9dimension3DynBX_INtNtB8_11vec_storage10VecStoragedBX_BX_EE19transpose_to_uninitNtNtB8_6uninit6UninitBX_BX_IB1m_INtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitdEBX_BX_EECs8lmMd0ZksV9_6statrs.exit.i.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @6, ptr noundef nonnull inttoptr (i64 79 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #15
          to label %bb.am unwind label %bb.ak, !noalias !210

bb.am:                                            ; preds = %bb.al
  unreachable

bb.an:                                            ; preds = %bb.ak
  %i.fq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #13, !noalias !209
  unreachable

.body.i11:                                        ; preds = %bb.aw, %bb.au, %bb.at, %bb.ao, %bb.ak, %bb.ai, %bb.ae
  %.pn5.i = phi { ptr, i32 } [ %i.gv, %bb.at ], [ %i.fp, %bb.ak ], [ %i.eb, %bb.ae ], [ %i.ed, %bb.ai ], [ %i.gw, %bb.au ], [ %i.fr, %bb.ao ], [ %i.gy, %bb.aw ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base6matrix6MatrixdNtNtBG_9dimension3DynB1p_INtNtBG_11vec_storage10VecStoragedB1p_B1p_EEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(40) %i.t) #14
          to label %.body56.i unwind label %bb.cb, !noalias !178

bb.ao:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base11vec_storage10VecStoragedNtNtBG_9dimension3DynB1A_EECs8lmMd0ZksV9_6statrs.exit.i49.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbADZB03g5jP_8nalgebra4base11vec_storage10VecStoragedNtNtBG_9dimension3DynB1A_EECs8lmMd0ZksV9_6statrs.exit.i.i
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %.body.i11

bb.ap:                                            ; preds = %_RINvMs6_NtNtCsbADZB03g5jP_8nalgebra4base6matrixINtB6_6MatrixdNtNtB8_9dimension3DynBX_INtNtB8_11vec_storage10VecStoragedBX_BX_EE19transpose_to_uninitNtNtB8_6uninit6UninitBX_BX_IB1m_INtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitdEBX_BX_EECs8lmMd0ZksV9_6statrs.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !208
  %.sroa.44.0..sroa_idx.i.i12 = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store i64 %.val.i.i.i23.i, ptr %.sroa.44.0..sroa_idx.i.i12, align 8, !alias.scope !195, !noalias !181
  %.sroa.55.0..sroa_idx.i.i13 = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store i64 %.val1.i.i.i22.i, ptr %.sroa.55.0..sroa_idx.i.i13, align 8, !alias.scope !195, !noalias !181
  call void @llvm.experimental.noalias.scope.decl(metadata !212)
  %.val4.i.i = load i64, ptr %.sroa.56.0..sroa_idx7.i.i, align 8, !alias.scope !212, !noalias !181, !noundef !6
  %.val5.i.i = load i64, ptr %.sroa.6.0..sroa_idx9.i.i, align 8, !alias.scope !212, !noalias !181, !noundef !6
  %i.fs = icmp eq i64 %.val4.i.i, %.val.i.i.i23.i
  %i.ft = icmp eq i64 %.val5.i.i, %.val1.i.i.i22.i
  %or.cond.i37.i = and i1 %i.fs, %i.ft
  br i1 %or.cond.i37.i, label %bb.aq, label %_RNvXst_NtNtCsbADZB03g5jP_8nalgebra4base6matrixINtB5_6MatrixdNtNtB7_9dimension3DynBW_INtNtB7_11vec_storage10VecStoragedBW_BW_EENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs8lmMd0ZksV9_6statrs.exit.i

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !213
  invoke void @_RINvMsg_NtNtCsbADZB03g5jP_8nalgebra4base4iterINtB6_7RawIterPddNtNtB8_9dimension3DynBY_INtB10_5ConstKj1_EBY_E3newINtNtB8_11vec_storage10VecStoragedBY_BY_EECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.v)
          to label %.noexc43.i unwind label %bb.at, !noalias !178

.noexc43.i:                                       ; preds = %bb.aq
  %.sroa.06.0.copyload.i.i = load ptr, ptr %i.e, align 8, !noalias !213
  %.sroa.4.0..sroa_idx.i38.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.4.0.copyload.i39.i = load ptr, ptr %.sroa.4.0..sroa_idx.i38.i, align 8, !noalias !213
  %.sroa.5.0..sroa_idx.i40.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.5.0.copyload.i41.i = load ptr, ptr %.sroa.5.0..sroa_idx.i40.i, align 8, !noalias !213
  %.sroa.67.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.67.0.copyload.i.i = load i64, ptr %.sroa.67.0..sroa_idx.i.i, align 8, !noalias !213 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.7.0.copyload.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !213 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !213
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !213
  invoke void @_RINvMsg_NtNtCsbADZB03g5jP_8nalgebra4base4iterINtB6_7RawIterPddNtNtB8_9dimension3DynBY_INtB10_5ConstKj1_EBY_E3newINtNtB8_11vec_storage10VecStoragedBY_BY_EECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.u)
          to label %.noexc44.i unwind label %bb.at, !noalias !178

.noexc44.i:                                       ; preds = %.noexc43.i
  %.sroa.08.0.copyload.i.i = load ptr, ptr %i.d, align 8, !noalias !213
  %.sroa.49.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.49.0.copyload.i.i = load ptr, ptr %.sroa.49.0..sroa_idx.i.i, align 8, !noalias !213
  %.sroa.510.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.510.0.copyload.i.i = load ptr, ptr %.sroa.510.0..sroa_idx.i.i, align 8, !noalias !213
  %.sroa.611.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.611.0.copyload.i.i = load i64, ptr %.sroa.611.0..sroa_idx.i.i, align 8, !noalias !213
  %.sroa.712.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.712.0.copyload.i.i = load i64, ptr %.sroa.712.0..sroa_idx.i.i, align 8, !noalias !213 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !213
  %.not14.i.i.i.i.i61 = icmp eq i64 %.sroa.67.0.copyload.i.i, 0
  br i1 %.not14.i.i.i.i.i61, label %_RNvXsh_NtNtCsbADZB03g5jP_8nalgebra4base4iterINtB5_7RawIterPddNtNtB7_9dimension3DynBX_INtBZ_5ConstKj1_EBX_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8lmMd0ZksV9_6statrs.exit13.i.i.i.i.i._crit_edge, label %_RNvXsh_NtNtCsbADZB03g5jP_8nalgebra4base4iterINtB5_7RawIterPddNtNtB7_9dimension3DynBX_INtBZ_5ConstKj1_EBX_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8lmMd0ZksV9_6statrs.exit.i.i.i.i.i

bb.ar:                                            ; preds = %bb.as
  %i.fu = add i64 %i.gc, -1                       ; 2 uses
  %i.fv = icmp eq i64 %i.fu, 0
  %.idx14.i.i = select i1 %i.fv, i64 0, i64 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.gt, i64 %.idx14.i.i
  %i.fx = getelementptr [8 x i8], ptr %i.gd, i64 %.sroa.712.0.copyload.i.i
  %i.fy = select i1 %i.gr, ptr %i.fx, ptr %i.gg
  %i.fz = select i1 %i.gr, ptr %i.gs, ptr %i.gh
  %.not14.i.i.i.i.i = icmp eq i64 %i.gi, 0
  br i1 %.not14.i.i.i.i.i, label %_RNvXsh_NtNtCsbADZB03g5jP_8nalgebra4base4iterINtB5_7RawIterPddNtNtB7_9dimension3DynBX_INtBZ_5ConstKj1_EBX_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8lmMd0ZksV9_6statrs.exit13.i.i.i.i.i._crit_edge, label %_RNvXsh_NtNtCsbADZB03g5jP_8nalgebra4base4iterINtB5_7RawIterPddNtNtB7_9dimension3DynBX_INtBZ_5ConstKj1_EBX_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8lmMd0ZksV9_6statrs.exit.i.i.i.i.i

_RNvXsh_NtNtCsbADZB03g5jP_8nalgebra4base4iterINtB5_7RawIterPddNtNtB7_9dimension3DynBX_INtBZ_5ConstKj1_EBX_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8lmMd0ZksV9_6statrs.exit.i.i.i.i.i: ; preds = %.noexc44.i, %bb.ar
  %i.ga = phi i64 [ %i.gi, %bb.ar ], [ %.sroa.67.0.copyload.i.i, %.noexc44.i ]
  %i.gb = phi ptr [ %i.gq, %bb.ar ], [ %.sroa.06.0.copyload.i.i, %.noexc44.i ] ; 3 uses
  %i.gc = phi i64 [ %i.fu, %bb.ar ], [ %.sroa.611.0.copyload.i.i, %.noexc44.i ] ; 2 uses
  %i.gd = phi ptr [ %i.fw, %bb.ar ], [ %.sroa.08.0.copyload.i.i, %.noexc44.i ] ; 3 uses
end_hunk_0
