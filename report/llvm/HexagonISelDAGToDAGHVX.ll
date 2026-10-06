Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HexagonISelDAGToDAGHVX?download=true
inline.NumInlined: 4949
inline.NumDeleted: 1897
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN4llvm11HvxSelector7perfectEN12_GLOBAL__N_111ShuffleMaskENS1_5OpRefERNS1_11ResultStackE:bb.a
  %i.vf = sub nsw i32 30, %i.e
  store i32 %i.vf, ptr %i.vc, align 8
  store i32 1, ptr %i.vd, align 8, !tbaa !32
  br label %bb.bh

bb.bh:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit202, %.critedge122
  %i.vg = load ptr, ptr %i.no, align 8, !tbaa !149 ; 2 uses
  %.not305340 = icmp eq ptr %i.vg, %i.nm
  br i1 %.not305340, label %._crit_edge344, label %.lr.ph343

.lr.ph343:                                        ; preds = %bb.bh
  %i.vh = sub nsw i32 30, %i.e
  br label %bb.bi

._crit_edge344:                                   ; preds = %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit207, %bb.bh
  br i1 %i.k, label %.critedge124, label %bb.bo

bb.bi:                                            ; preds = %.lr.ph343, %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit207
  %.sroa.0249.0341 = phi ptr [ %i.vg, %.lr.ph343 ], [ %i.wl, %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit207 ] ; 3 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %.sroa.0249.0341, i64 32 ; 2 uses
  %i.vj = load ptr, ptr %i.vi, align 8, !tbaa !31 ; 2 uses
  %i.vk = load i32, ptr %i.vj, align 4, !tbaa !34
  %i.vl = icmp eq i32 %i.vk, %i.vh                ; 2 uses
  %.idx306 = select i1 %i.vl, i64 4, i64 0        ; 3 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vj, i64 %.idx306
  %i.vn = getelementptr inbounds nuw i8, ptr %.sroa.0249.0341, i64 40
  %i.vo = load i32, ptr %i.vn, align 8, !tbaa !32
  %i.vp = zext i32 %i.vo to i64
  %.idx = shl nuw nsw i64 %i.vp, 2                ; 2 uses
  %gepdiff = sub nsw i64 %.idx, %.idx306          ; 2 uses
  %i.vq = ashr exact i64 %gepdiff, 2              ; 2 uses
  %i.vr = load i32, ptr %i.vd, align 8, !tbaa !32 ; 2 uses
  %i.vs = zext i32 %i.vr to i64
  %i.vt = add nsw i64 %i.vq, %i.vs                ; 2 uses
  %i.vu = load i32, ptr %i.ve, align 4, !tbaa !33
  %i.vv = zext i32 %i.vu to i64
  %i.vw = icmp ugt i64 %i.vt, %i.vv
  br i1 %i.vw, label %bb.bj, label %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i

bb.bj:                                            ; preds = %bb.bi
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull %i.vc, i64 noundef %i.vt, i64 noundef 4) #23
  %.pre8.pre.i = load i32, ptr %i.vd, align 8, !tbaa !32
  br label %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i

_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i:    ; preds = %bb.bj, %bb.bi
  %.pre8.i203 = phi i32 [ %i.vr, %bb.bi ], [ %.pre8.pre.i, %bb.bj ] ; 2 uses
  %.not.i.i204 = icmp samesign eq i64 %.idx306, %.idx
  br i1 %.not.i.i204, label %_ZN4llvm15SmallVectorImplIjE6appendIPKjvEEvT_S5_.exit, label %bb.bk

bb.bk:                                            ; preds = %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i
  %i.vx = load ptr, ptr %17, align 8, !tbaa !31
  %i.vy = zext i32 %.pre8.i203 to i64
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr %i.vx, i64 %i.vy
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.vz, ptr nonnull align 4 %i.vm, i64 %gepdiff, i1 false)
  %.pre.i205 = load i32, ptr %i.vd, align 8, !tbaa !32
  br label %_ZN4llvm15SmallVectorImplIjE6appendIPKjvEEvT_S5_.exit

_ZN4llvm15SmallVectorImplIjE6appendIPKjvEEvT_S5_.exit: ; preds = %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i, %bb.bk
  %i.wa = phi i32 [ %.pre8.i203, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i ], [ %.pre.i205, %bb.bk ]
  %i.wb = trunc i64 %i.vq to i32
  %i.wc = add i32 %i.wa, %i.wb                    ; 3 uses
  store i32 %i.wc, ptr %i.vd, align 8, !tbaa !32
  br i1 %i.vl, label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit207, label %bb.bl

bb.bl:                                            ; preds = %_ZN4llvm15SmallVectorImplIjE6appendIPKjvEEvT_S5_.exit
  %i.wd = load ptr, ptr %i.vi, align 8, !tbaa !31
  %i.we = load i32, ptr %i.wd, align 4, !tbaa !34 ; 2 uses
  %i.wf = load i32, ptr %i.ve, align 4, !tbaa !33
  %.not.i206 = icmp ult i32 %i.wc, %i.wf
  br i1 %.not.i206, label %bb.bn, label %bb.bm, !prof !35

bb.bm:                                            ; preds = %bb.bl
  call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(16) %17, i32 noundef %i.we)
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit207

bb.bn:                                            ; preds = %bb.bl
  %i.wg = zext i32 %i.wc to i64
  %i.wh = load ptr, ptr %17, align 8, !tbaa !31
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %i.wh, i64 %i.wg
  store i32 %i.we, ptr %i.wi, align 1
  %i.wj = load i32, ptr %i.vd, align 8, !tbaa !32
  %i.wk = add i32 %i.wj, 1
  store i32 %i.wk, ptr %i.vd, align 8, !tbaa !32
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit207

_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit207: ; preds = %bb.bn, %bb.bm, %_ZN4llvm15SmallVectorImplIjE6appendIPKjvEEvT_S5_.exit
  %i.wl = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0249.0341) #24 ; 2 uses
  %.not305 = icmp eq ptr %i.wl, %i.nm
  br i1 %.not305, label %._crit_edge344, label %bb.bi

bb.bo:                                            ; preds = %._crit_edge344
  %i.wm = sub nsw i32 30, %i.e                    ; 2 uses
  %i.wn = load i32, ptr %i.vd, align 8, !tbaa !32 ; 2 uses
  %i.wo = load i32, ptr %i.ve, align 4, !tbaa !33
  %.not.i208 = icmp ult i32 %i.wn, %i.wo
  br i1 %.not.i208, label %bb.bq, label %bb.bp, !prof !35

bb.bp:                                            ; preds = %bb.bo
  call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(16) %17, i32 noundef %i.wm)
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit209

bb.bq:                                            ; preds = %bb.bo
  %i.wp = zext i32 %i.wn to i64
  %i.wq = load ptr, ptr %17, align 8, !tbaa !31
  %i.wr = getelementptr inbounds nuw [4 x i8], ptr %i.wq, i64 %i.wp
  store i32 %i.wm, ptr %i.wr, align 1
  %i.ws = load i32, ptr %i.vd, align 8, !tbaa !32
  %i.wt = add i32 %i.ws, 1
  store i32 %i.wt, ptr %i.vd, align 8, !tbaa !32
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit209

_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit209: ; preds = %bb.bp, %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  %i.wu = load ptr, ptr %4, align 8, !tbaa !273   ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 72
  %i.ww = load i64, ptr %i.wv, align 8, !tbaa !257
  store i64 %i.ww, ptr %18, align 8, !tbaa !257
  %i.wx = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wu, i64 68
  %i.wz = load i32, ptr %i.wy, align 4, !tbaa !258
  store i32 %i.wz, ptr %i.wx, align 8, !tbaa !260
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  %i.xa = zext nneg i16 %.sroa.0.0.i467 to i32
  %i.xb = or disjoint i32 %i.xa, -2147483648
  %i.xc = getelementptr inbounds nuw i8, ptr %20, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %20, i8 0, i64 16, i1 false), !alias.scope !1010
  store i32 %i.xb, ptr %i.xc, align 8, !tbaa !293, !alias.scope !1010
  call fastcc void @_ZN4llvm11HvxSelector7concatsEN12_GLOBAL__N_15OpRefES2_RNS1_11ResultStackE(ptr dead_on_unwind noalias writable align 8 %19, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull byval(%"struct.(anonymous namespace)::OpRef") align 8 %3, ptr noundef nonnull byval(%"struct.(anonymous namespace)::OpRef") align 8 %20, ptr noundef nonnull align 8 dereferenceable(40) %4)
  br label %bb.br

.critedge124:                                     ; preds = %._crit_edge344
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  %i.xd = load ptr, ptr %4, align 8, !tbaa !273   ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 72
  %i.xf = load i64, ptr %i.xe, align 8, !tbaa !257
  store i64 %i.xf, ptr %18, align 8, !tbaa !257
  %i.xg = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xd, i64 68
  %i.xi = load i32, ptr %i.xh, align 4, !tbaa !258
  store i32 %i.xi, ptr %i.xg, align 8, !tbaa !260
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !291
  br label %bb.br

bb.br:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit209, %.critedge124
  br i1 %.0, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  %i.xj = getelementptr inbounds nuw i8, ptr %19, i64 16
  %.val139 = load i32, ptr %i.xj, align 8, !tbaa !293 ; 2 uses
  %i.xk = and i32 %.val139, -805306369
  %i.xl = getelementptr inbounds nuw i8, ptr %22, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %22, i8 0, i64 16, i1 false), !alias.scope !1011
  store i32 %i.xk, ptr %i.xl, align 8, !tbaa !293, !alias.scope !1011
  %i.xm = and i32 %.val139, -1342177281
  %i.xn = getelementptr inbounds nuw i8, ptr %23, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %23, i8 0, i64 16, i1 false), !alias.scope !1012
  store i32 %i.xm, ptr %i.xn, align 8, !tbaa !293, !alias.scope !1012
  call fastcc void @_ZN4llvm11HvxSelector7concatsEN12_GLOBAL__N_15OpRefES2_RNS1_11ResultStackE(ptr dead_on_unwind noalias writable align 8 %21, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull byval(%"struct.(anonymous namespace)::OpRef") align 8 %22, ptr noundef nonnull byval(%"struct.(anonymous namespace)::OpRef") align 8 %23, ptr noundef nonnull align 8 dereferenceable(40) %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %19, ptr noundef nonnull align 8 dereferenceable(20) %21, i64 20, i1 false), !tbaa.struct !291
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.xo = load i32, ptr %i.vd, align 8, !tbaa !32 ; 3 uses
  %.not118352 = icmp eq i32 %i.xo, 0
  br i1 %.not118352, label %bb.bu, label %.lr.ph355

.lr.ph355:                                        ; preds = %bb.bt
  %i.xp = add i32 %i.xo, -1                       ; 5 uses
  %i.xq = icmp eq i32 %i.i, 31
  %i.xr = add nuw nsw i32 %i.i, 1                 ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %24, i64 4
  %i.xt = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.xu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.xv = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.xw = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.xx = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.xy = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.xz = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %24, i64 24
  %i.yb = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.yc = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.yd = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.promoted = load i32, ptr %i.xz, align 8
  %i.ye = zext i32 %i.xp to i64                   ; 2 uses
  %.sroa.5.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5, i64 4
  %.sroa.7.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7, i64 4
  br label %bb.bv

._crit_edge356:                                   ; preds = %_ZN12_GLOBAL__N_112NodeTemplateD2Ev.exit
  store i32 %i.aaf, ptr %i.xz, align 8
  br label %bb.bu

bb.bu:                                            ; preds = %._crit_edge356, %bb.bt
  br i1 %i.k, label %bb.bz, label %bb.ca

bb.bv:                                            ; preds = %.lr.ph355, %_ZN12_GLOBAL__N_112NodeTemplateD2Ev.exit
  %.val138357 = phi i32 [ %.promoted, %.lr.ph355 ], [ %i.aaf, %_ZN12_GLOBAL__N_112NodeTemplateD2Ev.exit ] ; 2 uses
  %.0101353 = phi i32 [ 0, %.lr.ph355 ], [ %i.zi, %_ZN12_GLOBAL__N_112NodeTemplateD2Ev.exit ] ; 7 uses
  %i.yf = icmp eq i32 %.0101353, %i.xp
  %.pre394 = load ptr, ptr %17, align 8, !tbaa !31 ; 6 uses
  br i1 %i.yf, label %._crit_edge395, label %bb.bw

._crit_edge395:                                   ; preds = %bb.bv
  %.phi.trans.insert396 = getelementptr inbounds nuw [4 x i8], ptr %.pre394, i64 %i.ye
  %.pre397 = load i32, ptr %.phi.trans.insert396, align 4, !tbaa !34
  %.pre402 = zext i32 %.0101353 to i64
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.yg = zext i32 %.0101353 to i64               ; 2 uses
  %i.yh = getelementptr inbounds nuw [4 x i8], ptr %.pre394, i64 %i.yg
  %i.yi = load i32, ptr %i.yh, align 4, !tbaa !34 ; 2 uses
  %i.yj = add i32 %.0101353, 1
  %i.yk = zext i32 %i.yj to i64
  %i.yl = getelementptr inbounds nuw [4 x i8], ptr %.pre394, i64 %i.yk
  %i.ym = load i32, ptr %i.yl, align 4, !tbaa !34
  %i.yn = icmp ult i32 %i.yi, %i.ym
  br label %bb.bx

bb.bx:                                            ; preds = %._crit_edge395, %bb.bw
  %.pre-phi = phi i64 [ %.pre402, %._crit_edge395 ], [ %i.yg, %bb.bw ] ; 2 uses
  %i.yo = phi i32 [ %.pre397, %._crit_edge395 ], [ %i.yi, %bb.bw ]
  %i.yp = phi i1 [ true, %._crit_edge395 ], [ %i.yn, %bb.bw ] ; 2 uses
  %i.yq = shl nuw i32 1, %i.yo                    ; 3 uses
  %i.yr = icmp ult i32 %.0101353, %i.xp
  br i1 %i.yr, label %.preheader, label %_ZN12_GLOBAL__N_112NodeTemplateD2Ev.exit

.preheader:                                       ; preds = %bb.bx
  %i.ys = add nuw i32 %.0101353, 1                ; 2 uses
  %i.yt = icmp ult i32 %i.ys, %i.xp
  br i1 %i.yt, label %.lr.ph347.preheader, label %.critedge

.lr.ph347.preheader:                              ; preds = %.preheader
  %i.yu = add nuw nsw i64 %.pre-phi, 1
  br label %.lr.ph347

.lr.ph347:                                        ; preds = %.lr.ph347.preheader, %bb.by
  %indvars.iv379 = phi i64 [ %.pre-phi, %.lr.ph347.preheader ], [ %indvars.iv.next380, %bb.by ] ; 2 uses
  %indvars.iv377 = phi i64 [ %i.yu, %.lr.ph347.preheader ], [ %indvars.iv.next378, %bb.by ] ; 3 uses
  %.0100346.a = phi i32 [ %i.yq, %.lr.ph347.preheader ], [ %i.zb, %bb.by ] ; 2 uses
  %i.yv = getelementptr inbounds nuw [4 x i8], ptr %.pre394, i64 %indvars.iv377
  %i.yw = load i32, ptr %i.yv, align 4, !tbaa !34 ; 2 uses
  %25 = getelementptr inbounds nuw [4 x i8], ptr %.pre394, i64 %indvars.iv379
  %26 = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.yx = load i32, ptr %26, align 4, !tbaa !34
  %i.yy = icmp uge i32 %i.yw, %i.yx
  %i.yz = xor i1 %i.yp, %i.yy
  br i1 %i.yz, label %bb.by, label %.critedge.loopexit.split.loop.exit519

bb.by:                                            ; preds = %.lr.ph347
  %i.za = shl nuw i32 1, %i.yw
  %i.zb = or i32 %i.za, %.0100346.a               ; 2 uses
  %indvars.iv.next378 = add nuw nsw i64 %indvars.iv377, 1 ; 2 uses
  %i.zc = icmp samesign ult i64 %indvars.iv.next378, %i.ye
  %indvars.iv.next380 = add nuw nsw i64 %indvars.iv379, 1
  br i1 %i.zc, label %.lr.ph347, label %.critedge, !llvm.loop !991

.critedge.loopexit.split.loop.exit519:            ; preds = %.lr.ph347
  %27 = trunc nuw i64 %indvars.iv377 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.by, %.critedge.loopexit.split.loop.exit519, %.preheader
  %.0100.lcssa = phi i32 [ %i.yq, %.preheader ], [ %.0100346.a, %.critedge.loopexit.split.loop.exit519 ], [ %i.zb, %bb.by ]
  %.lcssa = phi i32 [ %i.ys, %.preheader ], [ %27, %.critedge.loopexit.split.loop.exit519 ], [ %i.xp, %bb.by ] ; 2 uses
  %i.zd = zext i32 %.lcssa to i64
  %i.ze = getelementptr inbounds nuw [4 x i8], ptr %.pre394, i64 %i.zd
  %i.zf = load i32, ptr %i.ze, align 4, !tbaa !34
  %i.zg = shl nuw i32 1, %i.zf
  %i.zh = or i32 %i.zg, %.0100.lcssa
  br label %_ZN12_GLOBAL__N_112NodeTemplateD2Ev.exit

_ZN12_GLOBAL__N_112NodeTemplateD2Ev.exit:         ; preds = %bb.bx, %.critedge
  %.2 = phi i32 [ %.lcssa, %.critedge ], [ %.0101353, %bb.bx ]
  %.1 = phi i32 [ %i.zh, %.critedge ], [ %i.yq, %bb.bx ]
  %i.zi = add i32 %.2, 1                          ; 2 uses
  %i.zj = shl i32 %.1, %i.xr
  %i.zk = ashr exact i32 %i.zj, %i.xr
  %.0.i210 = select i1 %i.xq, i32 0, i32 %i.zk
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #23
  %i.zl = load ptr, ptr %i.xu, align 8, !tbaa !73, !nonnull !74, !align !75
  %i.zm = sext i32 %.0.i210 to i64
  %i.zn = call { ptr, i32 } @_ZN4llvm12SelectionDAG17getSignedConstantElRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.zl, i64 noundef %i.zm, ptr noundef nonnull align 8 dereferenceable(12) %18, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #23 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.zn, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.zn, 1
  %i.zo = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25 ; 5 uses
  store ptr %.fca.0.extract, ptr %i.zo, align 8
  %.sroa.4242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zo, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.4242.0..sroa_idx, align 8
  %.sroa.5244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zo, i64 16
  store i32 0, ptr %.sroa.5244.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store i32 1055, ptr %5, align 8, !tbaa !280
  store i16 7, ptr %i.xv, align 4, !tbaa !242
  %i.zp = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.zp, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.zo, i64 24, i1 false)
  store ptr %i.zp, ptr %i.xw, align 8, !tbaa !281
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zp, i64 24 ; 2 uses
  store ptr %i.zq, ptr %i.xx, align 8, !tbaa !282
  store ptr %i.zq, ptr %i.xy, align 8, !tbaa !283
  %i.zr = call fastcc noundef i32 @_ZN12_GLOBAL__N_111ResultStack4pushERKNS_12NodeTemplateE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(32) %5) ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.zp, i64 noundef 24) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZdlPvm(ptr noundef nonnull %i.zo, i64 noundef 24) #27
  %i.zs = select i1 %i.yp, i32 3274, i32 2958
  store i32 %i.zs, ptr %24, align 8, !tbaa !280
  store i16 %.sroa.0.0.i238, ptr %i.xs, align 4, !tbaa !242
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %i.zt = and i32 %.val138357, -805306369
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, i8 0, i64 16, i1 false), !alias.scope !1013
  %i.zu = and i32 %.val138357, -1342177281
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5.4..sroa_idx, i8 0, i64 16, i1 false), !alias.scope !1014
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7.4..sroa_idx, i8 0, i64 16, i1 false), !alias.scope !1015
  %i.zv = call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #25 ; 9 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.zv, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zv, i64 16
  store i32 %i.zt, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zv, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5, i64 20, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zv, i64 40
  store i32 %i.zu, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx707 = getelementptr inbounds nuw i8, ptr %i.zv, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.7.0..sroa_idx707, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.7, i64 20, i1 false)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zv, i64 64
  store i32 1879048191, ptr %.sroa.8.0..sroa_idx, align 8
  store ptr %i.zv, ptr %i.xt, align 8, !tbaa !281
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 72 ; 2 uses
  store ptr %i.zw, ptr %i.yb, align 8, !tbaa !283
  store ptr %i.zw, ptr %i.ya, align 8, !tbaa !282
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %i.zx = call fastcc noundef i32 @_ZN12_GLOBAL__N_111ResultStack4pushERKNS_12NodeTemplateE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(32) %24) ; 0 uses
  %.val134 = load ptr, ptr %i.yc, align 8, !tbaa !284
  %.val135 = load ptr, ptr %i.yd, align 8, !tbaa !285
  %i.zy = ptrtoint ptr %.val135 to i64
  %i.zz = ptrtoint ptr %.val134 to i64
  %i.aaa = sub i64 %i.zy, %i.zz
  %i.aab = lshr exact i64 %i.aaa, 5
  %i.aac = trunc i64 %i.aab to i32
  %i.aad = add i32 %i.aac, 268435455
  %i.aae = and i32 %i.aad, 268435455
  %i.aaf = or disjoint i32 %i.aae, 1610612736     ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, i8 0, i64 16, i1 false)
  call void @_ZdlPvm(ptr noundef nonnull %i.zv, i64 noundef 72) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  %.not118 = icmp eq i32 %i.zi, %i.xo
  br i1 %.not118, label %._crit_edge356, label %bb.bv, !llvm.loop !998

bb.bz:                                            ; preds = %bb.bu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %19, i64 24, i1 false), !tbaa.struct !291
  br label %bb.cb

bb.ca:                                            ; preds = %bb.bu
  %i.aag = getelementptr inbounds nuw i8, ptr %19, i64 16
  %.val140 = load i32, ptr %i.aag, align 8, !tbaa !293
  %i.aah = and i32 %.val140, -1342177281
  %i.aai = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 16, i1 false), !alias.scope !1016
  store i32 %i.aah, ptr %i.aai, align 8, !tbaa !293, !alias.scope !1016
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  %i.aaj = load ptr, ptr %17, align 8, !tbaa !31  ; 2 uses
  %i.aak = icmp eq ptr %i.aaj, %i.vc
  br i1 %i.aak, label %_ZN4llvm11SmallVectorIjLj8EED2Ev.exit225, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @free(ptr noundef %i.aaj) #23
  br label %_ZN4llvm11SmallVectorIjLj8EED2Ev.exit225

_ZN4llvm11SmallVectorIjLj8EED2Ev.exit225:         ; preds = %bb.cb, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  br label %bb.cd

bb.cd:                                            ; preds = %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit, %_ZN4llvm11SmallVectorIjLj8EED2Ev.exit225
  %i.aal = load ptr, ptr %i.ns, align 8, !tbaa !148
  call void @_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE8_M_eraseEPSt13_Rb_tree_nodeIjE(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef %i.aal)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  %i.aam = load ptr, ptr %i.nn, align 8, !tbaa !148
  call void @_ZNSt8_Rb_treeIN4llvm11SmallVectorIjLj8EEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef %i.aam)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  %i.aan = load ptr, ptr %12, align 8, !tbaa !31  ; 2 uses
  %i.aao = icmp eq ptr %i.aan, %i.nl
  br i1 %i.aao, label %_ZN4llvm11SmallVectorIjLj8EED2Ev.exit226, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @free(ptr noundef %i.aan) #23
  br label %_ZN4llvm11SmallVectorIjLj8EED2Ev.exit226

_ZN4llvm11SmallVectorIjLj8EED2Ev.exit226:         ; preds = %bb.cd, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %.pre400 = load ptr, ptr %11, align 8, !tbaa !31
  br label %bb.cf

bb.cf:                                            ; preds = %_ZN4llvm11SmallVectorIjLj8EED2Ev.exit226, %bb.ac
  %i.aap = phi ptr [ %.pre400, %_ZN4llvm11SmallVectorIjLj8EED2Ev.exit226 ], [ %i.io, %bb.ac ] ; 2 uses
  %i.aaq = icmp eq ptr %i.aap, %i.dd
  br i1 %i.aaq, label %_ZN4llvm11SmallVectorIjLj8EED2Ev.exit227, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @free(ptr noundef %i.aap) #23
  br label %_ZN4llvm11SmallVectorIjLj8EED2Ev.exit227

_ZN4llvm11SmallVectorIjLj8EED2Ev.exit227:         ; preds = %bb.cf, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.aar = load ptr, ptr %10, align 8, !tbaa !31  ; 2 uses
  %i.aas = icmp eq ptr %i.aar, %i.v
  br i1 %i.aas, label %_ZN4llvm11SmallVectorIiLj128EED2Ev.exit, label %bb.ch

bb.ch:                                            ; preds = %_ZN4llvm11SmallVectorIjLj8EED2Ev.exit227
  call void @free(ptr noundef %i.aar) #23
  br label %_ZN4llvm11SmallVectorIiLj128EED2Ev.exit

_ZN4llvm11SmallVectorIiLj128EED2Ev.exit:          ; preds = %_ZN4llvm11SmallVectorIjLj8EED2Ev.exit227, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.aat = load ptr, ptr %9, align 8, !tbaa !31   ; 2 uses
  %i.aau = icmp eq ptr %i.aat, %i.m
  br i1 %i.aau, label %_ZN4llvm11SmallVectorIjLj8EED2Ev.exit228, label %bb.ci

bb.ci:                                            ; preds = %_ZN4llvm11SmallVectorIiLj128EED2Ev.exit
  call void @free(ptr noundef %i.aat) #23
  br label %_ZN4llvm11SmallVectorIjLj8EED2Ev.exit228

_ZN4llvm11SmallVectorIjLj8EED2Ev.exit228:         ; preds = %_ZN4llvm11SmallVectorIiLj128EED2Ev.exit, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4llvm11HvxSelector7concatsEN12_GLOBAL__N_15OpRefES2_RNS1_11ResultStackE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) initializes((0, 20)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(36) %1, ptr nofree noundef readonly byval(%"struct.(anonymous namespace)::OpRef") align 8 captures(none) %2, ptr nofree noundef readonly byval(%"struct.(anonymous namespace)::OpRef") align 8 captures(none) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %4) unnamed_addr #1 align 2 {
bb.a:
  %5 = alloca %"struct.(anonymous namespace)::NodeTemplate", align 8 ; 8 uses
  %6 = alloca %"class.llvm::SDLoc", align 8       ; 7 uses
  %.sroa.6 = alloca [24 x i8], align 4            ; 4 uses
  %.sroa.10 = alloca [24 x i8], align 4           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.a = load ptr, ptr %4, align 8, !tbaa !273    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load i64, ptr %i.b, align 8, !tbaa !257
  store i64 %i.c, ptr %6, align 8, !tbaa !257
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !258
  store i32 %i.f, ptr %i.d, align 8, !tbaa !260
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !243
  %i.i = and i32 %i.h, 2147483647
  switch i32 %i.i, label %bb.b [
    i32 1, label %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit
    i32 2, label %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split
    i32 3, label %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split41
    i32 4, label %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split42
    i32 8, label %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split43
    i32 16, label %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split44
    i32 32, label %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split45
    i32 64, label %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split46
    i32 128, label %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split47
    i32 256, label %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split48
    i32 512, label %_ZNSt6vectorIN12_GLOBAL__N_15OpRefESaIS1_EED2Ev.exit.fold.split49
  ]
end_hunk_0
