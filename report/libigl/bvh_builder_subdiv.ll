Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/bvh_builder_subdiv?download=true
inline.NumInlined: 2401
inline.NumDeleted: 459
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZN6embree4sse222patch_eval_subdivisionIZZNS0_26BVHNSubdivPatch1BuilderSAHILi4EE5buildEvENKUlPNS_10SubdivMeshERKNS_5rangeImEEmmRKNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEE_clES5_S9_mmSG_EUlPKNS_4Vec2IfEEPKiPKfiE_EEvPKNS_8HalfEdgeET_:bb.a
bb.b:                                             ; preds = %.lr.ph147
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [32 x i8], ptr %.0146, i64 %i.aj ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.am = load i32, ptr %i.al, align 4            ; 2 uses
  %.not.i140 = icmp eq i32 %i.am, 0
  br i1 %.not.i140, label %_ZNK6embree8HalfEdge8numEdgesEv.exit, label %.lr.ph143.preheader

.lr.ph143.preheader:                              ; preds = %bb.b
  %i.an = sext i32 %i.am to i64
  %.idx151 = shl nsw i64 %i.an, 5
  %i.ao = getelementptr inbounds i8, ptr %i.ak, i64 %.idx151
  br label %.lr.ph143

.lr.ph143:                                        ; preds = %.lr.ph143.preheader, %.lr.ph143
  %.0.i142 = phi ptr [ %i.as, %.lr.ph143 ], [ %i.ao, %.lr.ph143.preheader ] ; 2 uses
  %.04.i141 = phi i32 [ %i.at, %.lr.ph143 ], [ 1, %.lr.ph143.preheader ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i142, i64 4
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [32 x i8], ptr %.0.i142, i64 %i.ar ; 2 uses
  %i.at = add i32 %.04.i141, 1                    ; 2 uses
  %.not.i = icmp eq ptr %i.as, %i.ak
  br i1 %.not.i, label %_ZNK6embree8HalfEdge8numEdgesEv.exit.loopexit, label %.lr.ph143, !llvm.loop !60

_ZNK6embree8HalfEdge8numEdgesEv.exit.loopexit:    ; preds = %.lr.ph143
  %i.au = icmp ne i32 %i.at, 4
  %i.av = zext i1 %i.au to i32
  br label %_ZNK6embree8HalfEdge8numEdgesEv.exit

_ZNK6embree8HalfEdge8numEdgesEv.exit:             ; preds = %bb.b, %_ZNK6embree8HalfEdge8numEdgesEv.exit.loopexit, %.lr.ph147
  %i.aw = phi i32 [ 0, %.lr.ph147 ], [ 1, %bb.b ], [ %i.av, %_ZNK6embree8HalfEdge8numEdgesEv.exit.loopexit ]
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %i.aw, ptr %i.ax, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %.0146, i64 24
  %i.az = load float, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  store float %i.az, ptr %i.ba, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %.0146, i64 4
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [32 x i8], ptr %.0146, i64 %i.bd
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph147, !llvm.loop !116

bb.c:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %6, align 16
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 16
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.bf, align 16
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.bi = load ptr, ptr %1, align 8, !nonnull !4, !align !43
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = trunc i64 %i.bj to i32
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !nonnull !4, !align !43
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = trunc i64 %i.bn to i32
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !nonnull !4, !align !43
  %i.br = load ptr, ptr %i.bq, align 8
  call void @_ZN6embree16SubdivPatch1BaseC1EjjjPKNS_10SubdivMeshEmPKNS_4Vec2IfEEPKfPKii(ptr noundef nonnull align 64 dereferenceable(320) %5, i32 noundef %i.bk, i32 noundef %i.bo, i32 noundef 0, ptr noundef %i.br, i64 noundef 0, ptr noundef nonnull %6, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i32 noundef 4)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !nonnull !4, !align !43
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bh, i64 64 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 46
  %i.ca = load i16, ptr %i.bz, align 2
  %i.cb = zext i16 %i.ca to i32
  %i.cc = add nsw i32 %i.cb, -1                   ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.ce = load i16, ptr %i.cd, align 8
  %i.cf = zext i16 %i.ce to i32
  %i.cg = add nsw i32 %i.cf, -1                   ; 3 uses
  %.not.i35 = icmp eq i32 %i.cg, 0
  br i1 %.not.i35, label %._ZZZN6embree4sse226BVHNSubdivPatch1BuilderSAHILi4EE5buildEvENKUlPNS_10SubdivMeshERKNS_5rangeImEEmmRKNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEE_clES4_S8_mmSF_ENKUlPKNS_4Vec2IfEEPKiPKfiE_clESK_SM_SO_i.exit_crit_edge, label %.preheader.lr.ph.i

._ZZZN6embree4sse226BVHNSubdivPatch1BuilderSAHILi4EE5buildEvENKUlPNS_10SubdivMeshERKNS_5rangeImEEmmRKNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEE_clES4_S8_mmSF_ENKUlPKNS_4Vec2IfEEPKiPKfiE_clESK_SM_SO_i.exit_crit_edge: ; preds = %bb.c
  %.pre174 = load ptr, ptr %i.bx, align 8
  br label %_ZZZN6embree4sse226BVHNSubdivPatch1BuilderSAHILi4EE5buildEvENKUlPNS_10SubdivMeshERKNS_5rangeImEEmmRKNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEE_clES4_S8_mmSF_ENKUlPKNS_4Vec2IfEEPKiPKfiE_clESK_SM_SO_i.exit

.preheader.lr.ph.i:                               ; preds = %bb.c
  %.not31.i = icmp eq i32 %i.cc, 0
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.pre175 = load ptr, ptr %i.bx, align 8         ; 9 uses
  br i1 %.not31.i, label %_ZZZN6embree4sse226BVHNSubdivPatch1BuilderSAHILi4EE5buildEvENKUlPNS_10SubdivMeshERKNS_5rangeImEEmmRKNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEE_clES4_S8_mmSF_ENKUlPKNS_4Vec2IfEEPKiPKfiE_clESK_SM_SO_i.exit, label %.preheader.us.preheader.i

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i
  %i.ci = load ptr, ptr %i.by, align 8
  %i.cj = load ptr, ptr %i.bw, align 8, !nonnull !4, !align !51
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 72 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8
  %i.cm = getelementptr [32 x i8], ptr %i.ci, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %.pre175, i64 72 ; 3 uses
  %i.co = load i64, ptr %i.cn, align 8
  %i.cp = getelementptr [32 x i8], ptr %i.cm, i64 %i.co
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge.us.i, %.preheader.us.preheader.i
  %.0.i28.us.i = phi ptr [ %i.df, %._crit_edge.us.i ], [ %i.cp, %.preheader.us.preheader.i ]
  %.025.i27.us.i = phi i32 [ %i.dg, %._crit_edge.us.i ], [ 0, %.preheader.us.preheader.i ]
  %.028.i26.us.i = phi i32 [ %i.cq, %._crit_edge.us.i ], [ 0, %.preheader.us.preheader.i ] ; 2 uses
  %i.cq = add i32 %.028.i26.us.i, 8               ; 3 uses
  %i.cr = call noundef i32 @llvm.umin.i32(i32 %i.cq, i32 %i.cg)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.us.i
  %.1.i24.us.i = phi ptr [ %.0.i28.us.i, %.preheader.us.i ], [ %i.df, %bb.d ] ; 3 uses
  %.126.i23.us.i = phi i32 [ %.025.i27.us.i, %.preheader.us.i ], [ %i.dg, %bb.d ]
  %.027.i22.us.i = phi i32 [ 0, %.preheader.us.i ], [ %i.cs, %bb.d ] ; 2 uses
  %i.cs = add i32 %.027.i22.us.i, 8               ; 3 uses
  %i.ct = call noundef i32 @llvm.umin.i32(i32 %i.cs, i32 %i.cc)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.cu = call noundef ptr @_ZN6embree4sse27GridSOA6createINS_13FastAllocator15CachedAllocatorEEEPS1_PKNS_16SubdivPatch1BaseEjjjjjPKNS_5SceneERT_PNS_4BBoxINS_6Vec3faEEE(ptr noundef nonnull align 64 dereferenceable(320) %5, i32 noundef 1, i32 noundef %.027.i22.us.i, i32 noundef %i.ct, i32 noundef %.028.i26.us.i, i32 noundef %i.cr, ptr noundef %i.bt, ptr noundef nonnull align 8 dereferenceable(24) %i.bv, ptr noundef nonnull %4)
  %i.cv = ptrtoint ptr %i.cu to i64               ; 2 uses
  %i.cw = trunc i64 %i.cv to i32
  %i.cx = or i32 %i.cw, 9
  %i.cy = load <4 x float>, ptr %4, align 16
  %i.cz = bitcast i32 %i.cx to float
  %.sroa.09.12.vec.insert.us.i = insertelement <4 x float> %i.cy, float %i.cz, i64 3
  %i.da = lshr i64 %i.cv, 32
  %i.db = trunc nuw i64 %i.da to i32
  %i.dc = load <4 x float>, ptr %i.ch, align 16
  %i.dd = bitcast i32 %i.db to float
  %.sroa.08.12.vec.insert.us.i = insertelement <4 x float> %i.dc, float %i.dd, i64 3
  store <4 x float> %.sroa.09.12.vec.insert.us.i, ptr %.1.i24.us.i, align 16
  %i.de = getelementptr inbounds nuw i8, ptr %.1.i24.us.i, i64 16
  store <4 x float> %.sroa.08.12.vec.insert.us.i, ptr %i.de, align 16
  %i.df = getelementptr inbounds nuw i8, ptr %.1.i24.us.i, i64 32 ; 2 uses
  %i.dg = add i32 %.126.i23.us.i, 1               ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.dh = icmp ult i32 %i.cs, %i.cc
  br i1 %i.dh, label %bb.d, label %._crit_edge.us.i, !llvm.loop !117

._crit_edge.us.i:                                 ; preds = %bb.d
  %i.di = icmp ult i32 %i.cq, %i.cg
  br i1 %i.di, label %.preheader.us.i, label %_ZN6embree4sse226BVHNSubdivPatch1BuilderSAHILi4EE11createEagerERNS_16SubdivPatch1BaseEPNS_5SceneEPNS_10SubdivMeshEjRNS_13FastAllocator15CachedAllocatorEPNS_7PrimRefE.exit.i, !llvm.loop !118

_ZN6embree4sse226BVHNSubdivPatch1BuilderSAHILi4EE11createEagerERNS_16SubdivPatch1BaseEPNS_5SceneEPNS_10SubdivMeshEjRNS_13FastAllocator15CachedAllocatorEPNS_7PrimRefE.exit.i: ; preds = %._crit_edge.us.i
  %i.dj = zext i32 %i.dg to i64
  %.not32.i = icmp eq i32 %i.dg, 0
  br i1 %.not32.i, label %_ZZZN6embree4sse226BVHNSubdivPatch1BuilderSAHILi4EE5buildEvENKUlPNS_10SubdivMeshERKNS_5rangeImEEmmRKNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEE_clES4_S8_mmSF_ENKUlPKNS_4Vec2IfEEPKiPKfiE_clESK_SM_SO_i.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN6embree4sse226BVHNSubdivPatch1BuilderSAHILi4EE11createEagerERNS_16SubdivPatch1BaseEPNS_5SceneEPNS_10SubdivMeshEjRNS_13FastAllocator15CachedAllocatorEPNS_7PrimRefE.exit.i
  %i.dk = getelementptr inbounds nuw i8, ptr %.pre175, i64 16 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.pre175, i64 32 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.pre175, i64 48 ; 2 uses
  %.pre169 = load i64, ptr %i.cn, align 8
  %.pre170 = load <4 x float>, ptr %.pre175, align 16, !noalias !119
  %.pre171 = load <4 x float>, ptr %i.dk, align 16, !noalias !122
  %.pre172 = load <4 x float>, ptr %i.dl, align 16, !noalias !125
  %.pre173 = load <4 x float>, ptr %i.dm, align 16, !noalias !128
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.dn = phi <4 x float> [ %i.ed, %.lr.ph.i ], [ %.pre173, %.lr.ph.i.preheader ]
  %i.do = phi <4 x float> [ %i.ec, %.lr.ph.i ], [ %.pre172, %.lr.ph.i.preheader ]
  %i.dp = phi <4 x float> [ %i.ea, %.lr.ph.i ], [ %.pre171, %.lr.ph.i.preheader ]
  %i.dq = phi <4 x float> [ %i.dz, %.lr.ph.i ], [ %.pre170, %.lr.ph.i.preheader ]
  %i.dr = phi i64 [ %i.ee, %.lr.ph.i ], [ %.pre169, %.lr.ph.i.preheader ] ; 2 uses
  %.030.i = phi i64 [ %i.ef, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.ds = load i64, ptr %i.ck, align 8
  %i.dt = load ptr, ptr %i.by, align 8
  %i.du = getelementptr [32 x i8], ptr %i.dt, i64 %i.ds
  %i.dv = getelementptr [32 x i8], ptr %i.du, i64 %i.dr ; 2 uses
  %i.dw = load <4 x float>, ptr %i.dv, align 16, !noalias !131 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dy = load <4 x float>, ptr %i.dx, align 16, !noalias !136 ; 2 uses
  %i.dz = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.dq, <4 x float> %i.dw) ; 2 uses
  store <4 x float> %i.dz, ptr %.pre175, align 16
  %i.ea = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.dp, <4 x float> %i.dy) ; 2 uses
  store <4 x float> %i.ea, ptr %i.dk, align 16
  %i.eb = fadd <4 x float> %i.dw, %i.dy           ; 2 uses
  %i.ec = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.do, <4 x float> %i.eb) ; 2 uses
  store <4 x float> %i.ec, ptr %i.dl, align 16
  %i.ed = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.dn, <4 x float> %i.eb) ; 2 uses
  store <4 x float> %i.ed, ptr %i.dm, align 16
  %i.ee = add i64 %i.dr, 1                        ; 2 uses
  store i64 %i.ee, ptr %i.cn, align 8
  %i.ef = add nuw nsw i64 %.030.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ef, %i.dj
  br i1 %exitcond.not.i, label %_ZZZN6embree4sse226BVHNSubdivPatch1BuilderSAHILi4EE5buildEvENKUlPNS_10SubdivMeshERKNS_5rangeImEEmmRKNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEE_clES4_S8_mmSF_ENKUlPKNS_4Vec2IfEEPKiPKfiE_clESK_SM_SO_i.exit, label %.lr.ph.i, !llvm.loop !139

_ZZZN6embree4sse226BVHNSubdivPatch1BuilderSAHILi4EE5buildEvENKUlPNS_10SubdivMeshERKNS_5rangeImEEmmRKNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEE_clES4_S8_mmSF_ENKUlPKNS_4Vec2IfEEPKiPKfiE_clESK_SM_SO_i.exit: ; preds = %.lr.ph.i, %._ZZZN6embree4sse226BVHNSubdivPatch1BuilderSAHILi4EE5buildEvENKUlPNS_10SubdivMeshERKNS_5rangeImEEmmRKNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEE_clES4_S8_mmSF_ENKUlPKNS_4Vec2IfEEPKiPKfiE_clESK_SM_SO_i.exit_crit_edge, %.preheader.lr.ph.i, %_ZN6embree4sse226BVHNSubdivPatch1BuilderSAHILi4EE11createEagerERNS_16SubdivPatch1BaseEPNS_5SceneEPNS_10SubdivMeshEjRNS_13FastAllocator15CachedAllocatorEPNS_7PrimRefE.exit.i
  %i.eg = phi ptr [ %.pre174, %._ZZZN6embree4sse226BVHNSubdivPatch1BuilderSAHILi4EE5buildEvENKUlPNS_10SubdivMeshERKNS_5rangeImEEmmRKNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEE_clES4_S8_mmSF_ENKUlPKNS_4Vec2IfEEPKiPKfiE_clESK_SM_SO_i.exit_crit_edge ], [ %.pre175, %_ZN6embree4sse226BVHNSubdivPatch1BuilderSAHILi4EE11createEagerERNS_16SubdivPatch1BaseEPNS_5SceneEPNS_10SubdivMeshEjRNS_13FastAllocator15CachedAllocatorEPNS_7PrimRefE.exit.i ], [ %.pre175, %.preheader.lr.ph.i ], [ %.pre175, %.lr.ph.i ]
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 64 ; 2 uses
  %i.ei = load i64, ptr %i.eh, align 16
  %i.ej = add i64 %i.ei, 1
  store i64 %i.ej, ptr %i.eh, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %.loopexit

bb.e:                                             ; preds = %.lr.ph149, %_ZZZN6embree4sse226BVHNSubdivPatch1BuilderSAHILi4EE5buildEvENKUlPNS_10SubdivMeshERKNS_5rangeImEEmmRKNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEE_clES4_S8_mmSF_ENKUlPKNS_4Vec2IfEEPKiPKfiE_clESK_SM_SO_i.exit55
  %indvars.iv159 = phi i64 [ 0, %.lr.ph149 ], [ %indvars.iv.next160, %_ZZZN6embree4sse226BVHNSubdivPatch1BuilderSAHILi4EE5buildEvENKUlPNS_10SubdivMeshERKNS_5rangeImEEmmRKNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEE_clES4_S8_mmSF_ENKUlPKNS_4Vec2IfEEPKiPKfiE_clESK_SM_SO_i.exit55 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.ek = trunc nuw i64 %indvars.iv159 to i32     ; 4 uses
  %i.el = shl i32 %i.ek, 1
  %i.em = lshr i32 %i.ek, 1
  %i.en = and i32 %i.el, 6
  %i.eo = and i32 %i.em, 6
  %i.ep = uitofp nneg i32 %i.en to float          ; 2 uses
  %i.eq = uitofp nneg i32 %i.eo to float          ; 2 uses
  %i.er = fadd float %i.ep, 5.000000e-01          ; 2 uses
  store float %i.er, ptr %7, align 16, !alias.scope !140
  %i.es = insertelement <2 x float> poison, float %i.eq, i64 0
  %i.et = insertelement <2 x float> %i.es, float %i.ep, i64 1
  %i.eu = fadd <2 x float> %i.et, <float 5.000000e-01, float 1.500000e+00>
  %i.ev = shufflevector <2 x float> %i.eu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ew = fadd float %i.eq, 1.500000e+00          ; 2 uses
  store <4 x float> %i.ev, ptr %i.o, align 4
  store float %i.ew, ptr %i.p, align 4, !alias.scope !143
  store float %i.er, ptr %i.q, align 8, !alias.scope !146
  store float %i.ew, ptr %i.r, align 4, !alias.scope !146
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv159
  %i.ey = load float, ptr %i.ex, align 4
  %i.ez = add i32 %i.s, %i.ek
  %i.fa = urem i32 %i.ez, %.04.i31.lcssa184
  %i.fb = zext i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.fb
  %i.fd = load float, ptr %i.fc, align 4
  %i.fe = insertelement <2 x float> poison, float %i.ey, i64 0
  %i.ff = insertelement <2 x float> %i.fe, float %i.fd, i64 1
  %i.fg = fmul <2 x float> %i.ff, splat (float 5.000000e-01)
  %i.fh = shufflevector <2 x float> %i.fg, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  store <4 x float> %i.fh, ptr %i.d, align 16
  %i.fi = load ptr, ptr %i.t, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.fj = load ptr, ptr %1, align 8, !nonnull !4, !align !43
  %i.fk = load i64, ptr %i.fj, align 8
  %i.fl = trunc i64 %i.fk to i32
  %i.fm = load ptr, ptr %i.u, align 8, !nonnull !4, !align !43
  %i.fn = load i64, ptr %i.fm, align 8
  %i.fo = trunc i64 %i.fn to i32
  %i.fp = load ptr, ptr %i.v, align 8, !nonnull !4, !align !43
  %i.fq = load ptr, ptr %i.fp, align 8
  call void @_ZN6embree16SubdivPatch1BaseC1EjjjPKNS_10SubdivMeshEmPKNS_4Vec2IfEEPKfPKii(ptr noundef nonnull align 64 dereferenceable(320) %3, i32 noundef %i.fl, i32 noundef %i.fo, i32 noundef %i.ek, ptr noundef %i.fq, i64 noundef 0, ptr noundef nonnull %7, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c, i32 noundef 4)
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  %i.fs = load ptr, ptr %i.fr, align 8
  %i.ft = load ptr, ptr %i.w, align 8, !nonnull !4, !align !43
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fi, i64 64 ; 2 uses
  %i.fv = load i16, ptr %i.z, align 2
  %i.fw = zext i16 %i.fv to i32
  %i.fx = add nsw i32 %i.fw, -1                   ; 3 uses
  %i.fy = load i16, ptr %i.aa, align 8
  %i.fz = zext i16 %i.fy to i32
  %i.ga = add nsw i32 %i.fz, -1                   ; 3 uses
  %.not.i36 = icmp eq i32 %i.ga, 0
  %.not31.i38 = icmp eq i32 %i.fx, 0
  %or.cond = select i1 %.not.i36, i1 true, i1 %.not31.i38
  br i1 %or.cond, label %_ZZZN6embree4sse226BVHNSubdivPatch1BuilderSAHILi4EE5buildEvENKUlPNS_10SubdivMeshERKNS_5rangeImEEmmRKNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEE_clES4_S8_mmSF_ENKUlPKNS_4Vec2IfEEPKiPKfiE_clESK_SM_SO_i.exit55, label %.preheader.us.preheader.i39

.preheader.us.preheader.i39:                      ; preds = %bb.e
  %i.gb = load ptr, ptr %i.fu, align 8
  %i.gc = load ptr, ptr %i.x, align 8, !nonnull !4, !align !51
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 72 ; 2 uses
  %i.ge = load i64, ptr %i.gd, align 8
  %i.gf = getelementptr [32 x i8], ptr %i.gb, i64 %i.ge
  %i.gg = load i64, ptr %i.ac, align 8
  %i.gh = getelementptr [32 x i8], ptr %i.gf, i64 %i.gg
  br label %.preheader.us.i40

.preheader.us.i40:                                ; preds = %._crit_edge.us.i49, %.preheader.us.preheader.i39
  %.0.i28.us.i41 = phi ptr [ %i.gx, %._crit_edge.us.i49 ], [ %i.gh, %.preheader.us.preheader.i39 ]
  %.025.i27.us.i42 = phi i32 [ %i.gy, %._crit_edge.us.i49 ], [ 0, %.preheader.us.preheader.i39 ]
  %.028.i26.us.i43 = phi i32 [ %i.gi, %._crit_edge.us.i49 ], [ 0, %.preheader.us.preheader.i39 ] ; 2 uses
  %i.gi = add i32 %.028.i26.us.i43, 8             ; 3 uses
  %i.gj = call noundef i32 @llvm.umin.i32(i32 %i.gi, i32 %i.ga)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.preheader.us.i40
  %.1.i24.us.i44 = phi ptr [ %.0.i28.us.i41, %.preheader.us.i40 ], [ %i.gx, %bb.f ] ; 3 uses
  %.126.i23.us.i45 = phi i32 [ %.025.i27.us.i42, %.preheader.us.i40 ], [ %i.gy, %bb.f ]
  %.027.i22.us.i46 = phi i32 [ 0, %.preheader.us.i40 ], [ %i.gk, %bb.f ] ; 2 uses
  %i.gk = add i32 %.027.i22.us.i46, 8             ; 3 uses
  %i.gl = call noundef i32 @llvm.umin.i32(i32 %i.gk, i32 %i.fx)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.gm = call noundef ptr @_ZN6embree4sse27GridSOA6createINS_13FastAllocator15CachedAllocatorEEEPS1_PKNS_16SubdivPatch1BaseEjjjjjPKNS_5SceneERT_PNS_4BBoxINS_6Vec3faEEE(ptr noundef nonnull align 64 dereferenceable(320) %3, i32 noundef 1, i32 noundef %.027.i22.us.i46, i32 noundef %i.gl, i32 noundef %.028.i26.us.i43, i32 noundef %i.gj, ptr noundef %i.fs, ptr noundef nonnull align 8 dereferenceable(24) %i.ft, ptr noundef nonnull %2)
  %i.gn = ptrtoint ptr %i.gm to i64               ; 2 uses
  %i.go = trunc i64 %i.gn to i32
  %i.gp = or i32 %i.go, 9
  %i.gq = load <4 x float>, ptr %2, align 16
  %i.gr = bitcast i32 %i.gp to float
  %.sroa.09.12.vec.insert.us.i47 = insertelement <4 x float> %i.gq, float %i.gr, i64 3
  %i.gs = lshr i64 %i.gn, 32
  %i.gt = trunc nuw i64 %i.gs to i32
  %i.gu = load <4 x float>, ptr %i.ab, align 16
  %i.gv = bitcast i32 %i.gt to float
  %.sroa.08.12.vec.insert.us.i48 = insertelement <4 x float> %i.gu, float %i.gv, i64 3
  store <4 x float> %.sroa.09.12.vec.insert.us.i47, ptr %.1.i24.us.i44, align 16
  %i.gw = getelementptr inbounds nuw i8, ptr %.1.i24.us.i44, i64 16
  store <4 x float> %.sroa.08.12.vec.insert.us.i48, ptr %i.gw, align 16
  %i.gx = getelementptr inbounds nuw i8, ptr %.1.i24.us.i44, i64 32 ; 2 uses
  %i.gy = add i32 %.126.i23.us.i45, 1             ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.gz = icmp ult i32 %i.gk, %i.fx
  br i1 %i.gz, label %bb.f, label %._crit_edge.us.i49, !llvm.loop !117

._crit_edge.us.i49:                               ; preds = %bb.f
  %i.ha = icmp ult i32 %i.gi, %i.ga
  br i1 %i.ha, label %.preheader.us.i40, label %_ZN6embree4sse226BVHNSubdivPatch1BuilderSAHILi4EE11createEagerERNS_16SubdivPatch1BaseEPNS_5SceneEPNS_10SubdivMeshEjRNS_13FastAllocator15CachedAllocatorEPNS_7PrimRefE.exit.i50, !llvm.loop !118

_ZN6embree4sse226BVHNSubdivPatch1BuilderSAHILi4EE11createEagerERNS_16SubdivPatch1BaseEPNS_5SceneEPNS_10SubdivMeshEjRNS_13FastAllocator15CachedAllocatorEPNS_7PrimRefE.exit.i50: ; preds = %._crit_edge.us.i49
  %i.hb = zext i32 %i.gy to i64
  %.not32.i51 = icmp eq i32 %i.gy, 0
  br i1 %.not32.i51, label %_ZZZN6embree4sse226BVHNSubdivPatch1BuilderSAHILi4EE5buildEvENKUlPNS_10SubdivMeshERKNS_5rangeImEEmmRKNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEE_clES4_S8_mmSF_ENKUlPKNS_4Vec2IfEEPKiPKfiE_clESK_SM_SO_i.exit55, label %.lr.ph.i52.preheader

.lr.ph.i52.preheader:                             ; preds = %_ZN6embree4sse226BVHNSubdivPatch1BuilderSAHILi4EE11createEagerERNS_16SubdivPatch1BaseEPNS_5SceneEPNS_10SubdivMeshEjRNS_13FastAllocator15CachedAllocatorEPNS_7PrimRefE.exit.i50
  %.pre = load i64, ptr %i.ac, align 8
  %.pre164 = load <4 x float>, ptr %.pre168.pre, align 16, !noalias !149
  %.pre165 = load <4 x float>, ptr %i.ad, align 16, !noalias !152
  %.pre166 = load <4 x float>, ptr %i.ae, align 16, !noalias !155
  %.pre167 = load <4 x float>, ptr %i.af, align 16, !noalias !158
  br label %.lr.ph.i52

.lr.ph.i52:                                       ; preds = %.lr.ph.i52.preheader, %.lr.ph.i52
  %i.hc = phi <4 x float> [ %i.hs, %.lr.ph.i52 ], [ %.pre167, %.lr.ph.i52.preheader ]
  %i.hd = phi <4 x float> [ %i.hr, %.lr.ph.i52 ], [ %.pre166, %.lr.ph.i52.preheader ]
  %i.he = phi <4 x float> [ %i.hp, %.lr.ph.i52 ], [ %.pre165, %.lr.ph.i52.preheader ]
  %i.hf = phi <4 x float> [ %i.ho, %.lr.ph.i52 ], [ %.pre164, %.lr.ph.i52.preheader ]
  %i.hg = phi i64 [ %i.ht, %.lr.ph.i52 ], [ %.pre, %.lr.ph.i52.preheader ] ; 2 uses
  %.030.i53 = phi i64 [ %i.hu, %.lr.ph.i52 ], [ 0, %.lr.ph.i52.preheader ]
  %i.hh = load i64, ptr %i.gd, align 8
  %i.hi = load ptr, ptr %i.fu, align 8
  %i.hj = getelementptr [32 x i8], ptr %i.hi, i64 %i.hh
  %i.hk = getelementptr [32 x i8], ptr %i.hj, i64 %i.hg ; 2 uses
  %i.hl = load <4 x float>, ptr %i.hk, align 16, !noalias !161 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  %i.hn = load <4 x float>, ptr %i.hm, align 16, !noalias !166 ; 2 uses
  %i.ho = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.hf, <4 x float> %i.hl) ; 2 uses
  store <4 x float> %i.ho, ptr %.pre168.pre, align 16
  %i.hp = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.he, <4 x float> %i.hn) ; 2 uses
  store <4 x float> %i.hp, ptr %i.ad, align 16
  %i.hq = fadd <4 x float> %i.hl, %i.hn           ; 2 uses
  %i.hr = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.hd, <4 x float> %i.hq) ; 2 uses
  store <4 x float> %i.hr, ptr %i.ae, align 16
  %i.hs = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.hc, <4 x float> %i.hq) ; 2 uses
  store <4 x float> %i.hs, ptr %i.af, align 16
  %i.ht = add i64 %i.hg, 1                        ; 2 uses
  store i64 %i.ht, ptr %i.ac, align 8
  %i.hu = add nuw nsw i64 %.030.i53, 1            ; 2 uses
  %exitcond.not.i54 = icmp eq i64 %i.hu, %i.hb
  br i1 %exitcond.not.i54, label %_ZZZN6embree4sse226BVHNSubdivPatch1BuilderSAHILi4EE5buildEvENKUlPNS_10SubdivMeshERKNS_5rangeImEEmmRKNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEE_clES4_S8_mmSF_ENKUlPKNS_4Vec2IfEEPKiPKfiE_clESK_SM_SO_i.exit55, label %.lr.ph.i52, !llvm.loop !139

_ZZZN6embree4sse226BVHNSubdivPatch1BuilderSAHILi4EE5buildEvENKUlPNS_10SubdivMeshERKNS_5rangeImEEmmRKNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEE_clES4_S8_mmSF_ENKUlPKNS_4Vec2IfEEPKiPKfiE_clESK_SM_SO_i.exit55: ; preds = %.lr.ph.i52, %bb.e, %_ZN6embree4sse226BVHNSubdivPatch1BuilderSAHILi4EE11createEagerERNS_16SubdivPatch1BaseEPNS_5SceneEPNS_10SubdivMeshEjRNS_13FastAllocator15CachedAllocatorEPNS_7PrimRefE.exit.i50
  %i.hv = load i64, ptr %i.ag, align 16
  %i.hw = add i64 %i.hv, 1
  store i64 %i.hw, ptr %i.ag, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 1 ; 2 uses
  %exitcond163.not = icmp eq i64 %indvars.iv.next160, %wide.trip.count162
  br i1 %exitcond163.not, label %.loopexit, label %bb.e, !llvm.loop !169

.loopexit:                                        ; preds = %_ZZZN6embree4sse226BVHNSubdivPatch1BuilderSAHILi4EE5buildEvENKUlPNS_10SubdivMeshERKNS_5rangeImEEmmRKNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEE_clES4_S8_mmSF_ENKUlPKNS_4Vec2IfEEPKiPKfiE_clESK_SM_SO_i.exit55, %_ZNK6embree8HalfEdge8numEdgesEv.exit34, %_ZZZN6embree4sse226BVHNSubdivPatch1BuilderSAHILi4EE5buildEvENKUlPNS_10SubdivMeshERKNS_5rangeImEEmmRKNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEE_clES4_S8_mmSF_ENKUlPKNS_4Vec2IfEEPKiPKfiE_clESK_SM_SO_i.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #14

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZNKSt14default_deleteIN6embree13FastAllocator12ThreadLocal2EEclEPS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6embree8MutexSysD1Ev(ptr noundef nonnull align 64 dead_on_return(8) dereferenceable(192) %i.a) #20
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.a)
          to label %_ZNKSt14default_deleteIN6embree13FastAllocator12ThreadLocal2EEclEPS2_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #26
  unreachable

_ZNKSt14default_deleteIN6embree13FastAllocator12ThreadLocal2EEclEPS2_.exit: ; preds = %bb.b, %bb.a
  ret void
}

declare void @_ZN6embree8MutexSysC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN6embree8MutexSysD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #15
end_hunk_0
begin_hunk_1_@_ZZN6embree4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEENKUlPNS_10SubdivMeshERKNS_5rangeImEEmmRKS8_E_clESC_SG_mmSI_:bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [32 x i8], ptr %i.ba, i64 %i.bd ; 2 uses
  %.not.i7 = icmp eq ptr %i.be, %.0.i4
  br i1 %.not.i7, label %_ZNK6embree8HalfEdge15vertexHasBorderEv.exit, label %bb.e, !llvm.loop !58

bb.g:                                             ; preds = %bb.e
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i4, i64 29
  %i.bg = load i8, ptr %i.bf, align 1
  %.not.i5 = icmp eq i8 %i.bg, 1
  br i1 %.not.i5, label %_ZNK6embree8HalfEdge15vertexHasBorderEv.exit, label %_ZNK6embree10SubdivMesh5validEm.exit.thread

_ZNK6embree8HalfEdge15vertexHasBorderEv.exit:     ; preds = %bb.f, %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i4, i64 4
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [32 x i8], ptr %.0.i4, i64 %i.bj ; 2 uses
  %.not8.i = icmp eq ptr %i.bk, %i.aw
  br i1 %.not8.i, label %_ZNK6embree10SubdivMesh5validEm.exit, label %bb.d, !llvm.loop !59

_ZNK6embree10SubdivMesh5validEm.exit:             ; preds = %_ZNK6embree8HalfEdge15vertexHasBorderEv.exit, %bb.b
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ai, i64 36
  %i.bm = load i32, ptr %i.bl, align 4
  %i.bn = zext i32 %i.bm to i64
  %i.bo = mul i64 %storemerge17, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ai, i64 720
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bo
  %i.bs = load i8, ptr %i.br, align 1
  %.not.i = icmp eq i8 %i.bs, 0
  br i1 %.not.i, label %bb.h, label %_ZNK6embree10SubdivMesh5validEm.exit.thread

bb.h:                                             ; preds = %_ZNK6embree10SubdivMesh5validEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.bt = load ptr, ptr %i.r, align 8
  store ptr %i.bt, ptr %7, align 8
  %i.bu = load ptr, ptr %i.ak, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 632
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %storemerge17
  %i.by = load i32, ptr %i.bx, align 4
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ak, i64 104
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw [32 x i8], ptr %i.cb, i64 %i.bz
  store ptr %6, ptr %8, align 8
  store ptr %i.c, ptr %i.s, align 8
  store ptr %i.d, ptr %i.t, align 8
  store ptr %i.a, ptr %i.u, align 8
  %i.cd = load ptr, ptr %i.w, align 8, !nonnull !4, !align !43
  store ptr %i.cd, ptr %i.v, align 8
  store ptr %i.b, ptr %i.x, align 8
  store ptr %i.e, ptr %i.y, align 8
  store ptr %i.f, ptr %i.z, align 8
  store ptr %7, ptr %i.aa, align 8
  %i.ce = load ptr, ptr %i.ac, align 8, !nonnull !4, !align !43
  store ptr %i.ce, ptr %i.ab, align 8
  store ptr %0, ptr %i.ad, align 8
  call void @_ZN6embree4sse222patch_eval_subdivisionIZZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEENKUlPNS_10SubdivMeshERKNS_5rangeImEEmmRKS9_E_clESD_SH_mmSJ_EUlPKNS_4Vec2IfEEPKiPKfiE_EEvPKNS_8HalfEdgeET_(ptr noundef %i.cc, ptr noundef nonnull byval(%class.anon.212) align 8 %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %.pre = load ptr, ptr %i.a, align 8
  %.pre19 = load i64, ptr %i.e, align 8
  %.pre20 = load i64, ptr %i.p, align 8
  br label %_ZNK6embree10SubdivMesh5validEm.exit.thread

_ZNK6embree10SubdivMesh5validEm.exit.thread:      ; preds = %bb.g, %_ZNK6embree10SubdivMesh5validEm.exit, %bb.h
  %i.cf = phi i64 [ %.pre20, %bb.h ], [ %i.ah, %_ZNK6embree10SubdivMesh5validEm.exit ], [ %i.ah, %bb.g ] ; 2 uses
  %i.cg = phi i64 [ %.pre19, %bb.h ], [ %storemerge17, %_ZNK6embree10SubdivMesh5validEm.exit ], [ %storemerge17, %bb.g ]
  %i.ch = phi ptr [ %.pre, %bb.h ], [ %i.ai, %_ZNK6embree10SubdivMesh5validEm.exit ], [ %i.ai, %bb.g ]
  %i.ci = add i64 %i.cg, 1                        ; 3 uses
  store i64 %i.ci, ptr %i.e, align 8
  %.not = icmp eq i64 %i.ci, %i.cf
  br i1 %.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !268
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree4sse222patch_eval_subdivisionIZZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEENKUlPNS_10SubdivMeshERKNS_5rangeImEEmmRKS9_E_clESD_SH_mmSJ_EUlPKNS_4Vec2IfEEPKiPKfiE_EEvPKNS_8HalfEdgeET_(ptr noundef %0, ptr noundef byval(%class.anon.212) align 8 %1) local_unnamed_addr #17 comdat {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 5 uses
  %i.b = alloca [16 x float], align 16            ; 7 uses
  %2 = alloca [4 x %"struct.embree::Vec2"], align 16 ; 5 uses
  %3 = alloca [4 x %"struct.embree::Vec2"], align 16 ; 8 uses
  %i.c = alloca [4 x i32], align 16               ; 4 uses
  %i.d = alloca [4 x float], align 16             ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %.not.i33113 = icmp eq i32 %i.f, 0
  br i1 %.not.i33113, label %_ZNK6embree8HalfEdge8numEdgesEv.exit34.thread, label %.lr.ph.preheader

_ZNK6embree8HalfEdge8numEdgesEv.exit34.thread:    ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  br label %.lr.ph123.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = sext i32 %i.f to i64
  %.idx = shl nsw i64 %i.g, 5
  %i.h = getelementptr inbounds i8, ptr %0, i64 %.idx
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0.i32115 = phi ptr [ %i.l, %.lr.ph ], [ %i.h, %.lr.ph.preheader ] ; 2 uses
  %.04.i31114 = phi i32 [ %i.m, %.lr.ph ], [ 1, %.lr.ph.preheader ]
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i32115, i64 4
  %i.j = load i32, ptr %i.i, align 4
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [32 x i8], ptr %.0.i32115, i64 %i.k ; 2 uses
  %i.m = add i32 %.04.i31114, 1                   ; 3 uses
  %.not.i33 = icmp eq ptr %i.l, %0
  br i1 %.not.i33, label %_ZNK6embree8HalfEdge8numEdgesEv.exit34, label %.lr.ph, !llvm.loop !60

_ZNK6embree8HalfEdge8numEdgesEv.exit34:           ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %.not126 = icmp eq i32 %i.m, 0
  br i1 %.not126, label %.loopexit, label %.lr.ph123.preheader

.lr.ph123.preheader:                              ; preds = %_ZNK6embree8HalfEdge8numEdgesEv.exit34.thread, %_ZNK6embree8HalfEdge8numEdgesEv.exit34
  %.04.i31.lcssa138 = phi i32 [ 1, %_ZNK6embree8HalfEdge8numEdgesEv.exit34.thread ], [ %i.m, %_ZNK6embree8HalfEdge8numEdgesEv.exit34 ] ; 5 uses
  %wide.trip.count = zext i32 %.04.i31.lcssa138 to i64
  br label %.lr.ph123

._crit_edge:                                      ; preds = %_ZNK6embree8HalfEdge8numEdgesEv.exit
  %i.n = icmp eq i32 %.04.i31.lcssa138, 4
  br i1 %i.n, label %bb.c, label %.lr.ph125

.lr.ph125:                                        ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.s = add i32 %.04.i31.lcssa138, -1
  %wide.trip.count134 = zext i32 %.04.i31.lcssa138 to i64
  br label %bb.d

.lr.ph123:                                        ; preds = %.lr.ph123.preheader, %_ZNK6embree8HalfEdge8numEdgesEv.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph123.preheader ], [ %indvars.iv.next, %_ZNK6embree8HalfEdge8numEdgesEv.exit ] ; 3 uses
  %.0122 = phi ptr [ %0, %.lr.ph123.preheader ], [ %i.aq, %_ZNK6embree8HalfEdge8numEdgesEv.exit ] ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0122, i64 12
  %i.u = load i32, ptr %i.t, align 4              ; 2 uses
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %_ZNK6embree8HalfEdge8numEdgesEv.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph123
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [32 x i8], ptr %.0122, i64 %i.v ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.y = load i32, ptr %i.x, align 4              ; 2 uses
  %.not.i116 = icmp eq i32 %i.y, 0
  br i1 %.not.i116, label %_ZNK6embree8HalfEdge8numEdgesEv.exit, label %.lr.ph119.preheader

.lr.ph119.preheader:                              ; preds = %bb.b
  %i.z = sext i32 %i.y to i64
  %.idx127 = shl nsw i64 %i.z, 5
  %i.aa = getelementptr inbounds i8, ptr %i.w, i64 %.idx127
  br label %.lr.ph119

.lr.ph119:                                        ; preds = %.lr.ph119.preheader, %.lr.ph119
  %.0.i118 = phi ptr [ %i.ae, %.lr.ph119 ], [ %i.aa, %.lr.ph119.preheader ] ; 2 uses
  %.04.i117 = phi i32 [ %i.af, %.lr.ph119 ], [ 1, %.lr.ph119.preheader ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i118, i64 4
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [32 x i8], ptr %.0.i118, i64 %i.ad ; 2 uses
  %i.af = add i32 %.04.i117, 1                    ; 2 uses
  %.not.i = icmp eq ptr %i.ae, %i.w
  br i1 %.not.i, label %_ZNK6embree8HalfEdge8numEdgesEv.exit.loopexit, label %.lr.ph119, !llvm.loop !60

_ZNK6embree8HalfEdge8numEdgesEv.exit.loopexit:    ; preds = %.lr.ph119
  %i.ag = icmp ne i32 %i.af, 4
  %i.ah = zext i1 %i.ag to i32
  br label %_ZNK6embree8HalfEdge8numEdgesEv.exit

_ZNK6embree8HalfEdge8numEdgesEv.exit:             ; preds = %bb.b, %_ZNK6embree8HalfEdge8numEdgesEv.exit.loopexit, %.lr.ph123
  %i.ai = phi i32 [ 0, %.lr.ph123 ], [ 1, %bb.b ], [ %i.ah, %_ZNK6embree8HalfEdge8numEdgesEv.exit.loopexit ]
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %i.ai, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %.0122, i64 24
  %i.al = load float, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  store float %i.al, ptr %i.am, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %.0122, i64 4
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [32 x i8], ptr %.0122, i64 %i.ap
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph123, !llvm.loop !269

bb.c:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %2, align 16
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 16
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.ar, align 16
  call void @_ZZZN6embree4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEENKUlPNS_10SubdivMeshERKNS_5rangeImEEmmRKS8_E_clESC_SG_mmSI_ENKUlPKNS_4Vec2IfEEPKiPKfiE_clESN_SP_SR_i(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph125, %bb.d
  %indvars.iv131 = phi i64 [ 0, %.lr.ph125 ], [ %indvars.iv.next132, %bb.d ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.as = trunc nuw i64 %indvars.iv131 to i32     ; 4 uses
  %i.at = shl i32 %i.as, 1
  %i.au = lshr i32 %i.as, 1
  %i.av = and i32 %i.at, 6
  %i.aw = and i32 %i.au, 6
  %i.ax = uitofp nneg i32 %i.av to float          ; 2 uses
  %i.ay = uitofp nneg i32 %i.aw to float          ; 2 uses
  %i.az = fadd float %i.ax, 5.000000e-01          ; 2 uses
  store float %i.az, ptr %3, align 16, !alias.scope !270
  %i.ba = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.bb = insertelement <2 x float> %i.ba, float %i.ax, i64 1
  %i.bc = fadd <2 x float> %i.bb, <float 5.000000e-01, float 1.500000e+00>
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.be = fadd float %i.ay, 1.500000e+00          ; 2 uses
  store <4 x float> %i.bd, ptr %i.o, align 4
  store float %i.be, ptr %i.p, align 4, !alias.scope !273
  store float %i.az, ptr %i.q, align 8, !alias.scope !276
  store float %i.be, ptr %i.r, align 4, !alias.scope !276
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv131
  %i.bg = load float, ptr %i.bf, align 4
  %i.bh = add i32 %i.s, %i.as
  %i.bi = urem i32 %i.bh, %.04.i31.lcssa138
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bj
  %i.bl = load float, ptr %i.bk, align 4
  %i.bm = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.bn = insertelement <2 x float> %i.bm, float %i.bl, i64 1
  %i.bo = fmul <2 x float> %i.bn, splat (float 5.000000e-01)
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  store <4 x float> %i.bp, ptr %i.d, align 16
  call void @_ZZZN6embree4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEENKUlPNS_10SubdivMeshERKNS_5rangeImEEmmRKS8_E_clESC_SG_mmSI_ENKUlPKNS_4Vec2IfEEPKiPKfiE_clESN_SP_SR_i(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %3, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1 ; 2 uses
  %exitcond135.not = icmp eq i64 %indvars.iv.next132, %wide.trip.count134
  br i1 %exitcond135.not, label %.loopexit, label %bb.d, !llvm.loop !279

.loopexit:                                        ; preds = %bb.d, %_ZNK6embree8HalfEdge8numEdgesEv.exit34, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZZN6embree4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEENKUlPNS_10SubdivMeshERKNS_5rangeImEEmmRKS8_E_clESC_SG_mmSI_ENKUlPKNS_4Vec2IfEEPKiPKfiE_clESN_SP_SR_i(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !51 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.e = load i64, ptr %i.d, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !align !43
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !align !43
  %i.m = load i64, ptr %i.l, align 8
  %i.n = add i64 %i.m, %i.j                       ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !4, !align !43
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 36
  %i.s = load i32, ptr %i.r, align 4
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.f

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.lcssa = phi i32 [ 0, %bb.a ], [ %i.kn, %bb.f ]
  %i.w = add i64 %i.h, %i.e                       ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !4, !align !43
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw [320 x i8], ptr %i.z, i64 %i.n ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !4, !align !43
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.ag, i64 %i.n
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 46
  %i.aj = load i16, ptr %i.ai, align 2
  %i.ak = zext i16 %i.aj to i32
  %i.al = add nsw i32 %i.ak, -1
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.an = load i16, ptr %i.am, align 8
  %i.ao = zext i16 %i.an to i32
  %i.ap = add nsw i32 %i.ao, -1
  %i.aq = tail call noundef ptr @_ZN6embree4sse27GridSOA6createIKNS_4BVHNILi4EE9AllocatorEEEPS1_PKNS_16SubdivPatch1BaseEjjjjjPKNS_5SceneERT_PNS_4BBoxINS_6Vec3faEEE(ptr noundef %i.aa, i32 noundef %.lcssa, i32 noundef 0, i32 noundef %i.al, i32 noundef 0, i32 noundef %i.ap, ptr noundef %i.ac, ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull %i.ah)
  %i.ar = ptrtoint ptr %i.aq to i64
  store atomic i64 %i.ar, ptr %i.aa seq_cst, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !4, !align !43
  %i.au = load ptr, ptr %i.o, align 8, !nonnull !4, !align !43
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 44
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.aw, align 4 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 36
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = add i32 %i.ay, -1                       ; 2 uses
  %i.ba = uitofp i32 %i.az to float               ; 10 uses
  %i.bb = shufflevector <2 x float> %.sroa.0.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bc = fsub <2 x float> <float 0.000000e+00, float 1.000000e+00>, %i.bb
  %i.bd = shufflevector <2 x float> %.sroa.0.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.be = shufflevector <2 x float> %.sroa.0.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bf = fsub <2 x float> %i.bd, %i.be
  %i.bg = fdiv <2 x float> %i.bc, %i.bf           ; 2 uses
  %i.bh = extractelement <2 x float> %i.bg, i64 0 ; 4 uses
  %i.bi = fmul float %i.bh, %i.ba                 ; 3 uses
  %i.bj = extractelement <2 x float> %i.bg, i64 1 ; 3 uses
  %i.bk = fmul float %i.bj, %i.ba                 ; 3 uses
  %i.bl = tail call noundef float @llvm.floor.f32(float %i.bi) ; 3 uses
  %i.bm = tail call noundef float @llvm.ceil.f32(float %i.bk) ; 3 uses
  %i.bn = fcmp ogt float %i.bl, 0.000000e+00
  %i.bo = select i1 %i.bn, float %i.bl, float 0.000000e+00 ; 3 uses
  %i.bp = fcmp olt float %i.bm, %i.ba
  %i.bq = select i1 %i.bp, float %i.bm, float %i.ba ; 3 uses
  %i.br = fptosi float %i.bo to i32
  %i.bs = fptosi float %i.bq to i32
  %i.bt = fptosi float %i.bl to i32
  %i.bu = tail call noundef i32 @llvm.smax.i32(i32 %i.bt, i32 -1) ; 2 uses
  %i.bv = fptosi float %i.bm to i32
  %i.bw = fptosi float %i.ba to i32
  %i.bx = add nsw i32 %i.bw, 1
  %i.by = tail call noundef i32 @llvm.smin.i32(i32 %i.bv, i32 %i.bx) ; 3 uses
  %i.bz = sext i32 %i.br to i64
  %i.ca = load ptr, ptr %i.at, align 8, !noalias !280, !nonnull !4, !align !43
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !noalias !280
  %i.cd = getelementptr [32 x i8], ptr %i.cc, i64 %i.n ; 3 uses
  %i.ce = getelementptr [32 x i8], ptr %i.cd, i64 %i.bz ; 4 uses
  %i.cf = load <4 x float>, ptr %i.ce, align 16, !noalias !280 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.ch = load <4 x float>, ptr %i.cg, align 16, !noalias !280 ; 3 uses
  %i.ci = sext i32 %i.bs to i64
  %i.cj = getelementptr [32 x i8], ptr %i.cd, i64 %i.ci ; 4 uses
  %i.ck = load <4 x float>, ptr %i.cj, align 16, !noalias !285 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cm = load <4 x float>, ptr %i.cl, align 16, !noalias !285 ; 3 uses
  %i.cn = sub nsw i32 %i.by, %i.bu
  %i.co = icmp eq i32 %i.cn, 1
  br i1 %i.co, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.cp = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.cq = insertelement <2 x float> %i.cp, float %i.bq, i64 1
  %i.cr = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.cs = insertelement <2 x float> %i.cr, float %i.bk, i64 1
  %i.ct = fsub <2 x float> %i.cq, %i.cs           ; 2 uses
  %i.cu = fcmp ogt <2 x float> %i.ct, zeroinitializer
  %i.cv = select <2 x i1> %i.cu, <2 x float> %i.ct, <2 x float> zeroinitializer ; 3 uses
  %i.cw = shufflevector <2 x float> %i.cv, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cx = fmul <4 x float> %i.ck, %i.cw
  %i.cy = fsub <2 x float> splat (float 1.000000e+00), %i.cv ; 2 uses
  %i.cz = shufflevector <2 x float> %i.cy, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.da = fmul <4 x float> %i.cf, %i.cz
  %i.db = fadd <4 x float> %i.cx, %i.da
  %i.dc = fmul <4 x float> %i.cm, %i.cw
  %i.dd = fmul <4 x float> %i.ch, %i.cz
  %i.de = fadd <4 x float> %i.dc, %i.dd
  %i.df = shufflevector <2 x float> %i.cv, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.dg = fmul <4 x float> %i.cf, %i.df
  %i.dh = shufflevector <2 x float> %i.cy, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.di = fmul <4 x float> %i.ck, %i.dh
  %i.dj = fadd <4 x float> %i.dg, %i.di
  %i.dk = fmul <4 x float> %i.ch, %i.df
  %i.dl = fmul <4 x float> %i.cm, %i.dh
  %i.dm = fadd <4 x float> %i.dk, %i.dl
  br label %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_4sse224SubdivRecalculatePrimRefclEmNS_4BBoxIfEEjS7_EUlmE_EERKT_RKS7_SD_f.exit

bb.c:                                             ; preds = %._crit_edge
  %i.dn = getelementptr i8, ptr %i.ce, i64 32
  %i.do = load <4 x float>, ptr %i.dn, align 16, !noalias !288
  %i.dp = getelementptr i8, ptr %i.ce, i64 48
  %i.dq = load <4 x float>, ptr %i.dp, align 16, !noalias !288
  %i.dr = getelementptr i8, ptr %i.cj, i64 -32
  %i.ds = load <4 x float>, ptr %i.dr, align 16, !noalias !291
  %i.dt = getelementptr i8, ptr %i.cj, i64 -16
  %i.du = load <4 x float>, ptr %i.dt, align 16, !noalias !291
  %i.dv = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.dw = insertelement <2 x float> %i.dv, float %i.bq, i64 1
  %i.dx = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.dy = insertelement <2 x float> %i.dx, float %i.bk, i64 1
  %i.dz = fsub <2 x float> %i.dw, %i.dy           ; 2 uses
  %i.ea = fcmp ogt <2 x float> %i.dz, zeroinitializer
  %i.eb = select <2 x i1> %i.ea, <2 x float> %i.dz, <2 x float> zeroinitializer ; 3 uses
  %i.ec = shufflevector <2 x float> %i.eb, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ed = fmul <4 x float> %i.ec, %i.do
  %i.ee = fsub <2 x float> splat (float 1.000000e+00), %i.eb ; 2 uses
  %i.ef = shufflevector <2 x float> %i.ee, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
end_hunk_1
