Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/matmul_layer?download=true
inline.NumInlined: 937
inline.NumDeleted: 415
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN2cv3dnn15MatMulLayerImpl8finalizeERKNS_11_InputArrayERKNS_12_OutputArrayE:bb.a
  %narrow.i = call i32 @llvm.smax.i32(i32 %.fr.i, i32 0)
  %narrow.i100 = call i32 @llvm.smax.i32(i32 %.fr.i81, i32 0)
  %.not137 = icmp eq i32 %narrow.i, %narrow.i100
  br i1 %.not137, label %bb.bg, label %.critedge

.critedge:                                        ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit99, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit77, %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  invoke void @_ZN2cv3MatC1ERKNS_8MatShapeEi(ptr noundef nonnull align 8 dereferenceable(208) %13, ptr noundef nonnull align 4 dereferenceable(52) %7, i32 noundef 5)
          to label %bb.aj unwind label %bb.as

bb.aj:                                            ; preds = %.critedge
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.jw = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.jv, ptr noundef nonnull align 8 dereferenceable(208) %13)
          to label %bb.ak unwind label %bb.at     ; 0 uses

bb.ak:                                            ; preds = %bb.aj
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !100 ; 5 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !100 ; 9 uses
  %i.kb = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %11)
          to label %bb.al unwind label %bb.av

bb.al:                                            ; preds = %bb.ak
  %i.kc = icmp eq i64 %i.kb, 1
  br i1 %i.kc, label %bb.am, label %bb.ay

bb.am:                                            ; preds = %bb.al
  %i.kd = load float, ptr %i.ka, align 4, !tbaa !119
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.kf = load float, ptr %i.ke, align 4, !tbaa !65
  %i.kg = fmul float %i.kd, %i.kf
  br label %bb.an

bb.an:                                            ; preds = %bb.ax, %bb.am
  %.032 = phi i64 [ 0, %bb.am ], [ %i.kr, %bb.ax ] ; 3 uses
  %i.kh = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %i.jv)
          to label %bb.ao unwind label %bb.aw

bb.ao:                                            ; preds = %bb.an
  %i.ki = icmp ult i64 %.032, %i.kh
  br i1 %i.ki, label %bb.ax, label %.loopexit

bb.ap:                                            ; preds = %bb.af
  %i.kj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.aq:                                            ; preds = %bb.ag
  %i.kk = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ar:                                            ; preds = %bb.bg
  %i.kl = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.as:                                            ; preds = %.critedge
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.at:                                            ; preds = %bb.aj
  %i.kn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #20
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.pn = phi { ptr, i32 } [ %i.kn, %bb.at ], [ %i.km, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %.body

bb.av:                                            ; preds = %bb.ak
  %i.ko = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aw:                                            ; preds = %bb.an
  %i.kp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ax:                                            ; preds = %bb.ao
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %.032
  store float %i.kg, ptr %i.kq, align 4, !tbaa !119
  %i.kr = add nuw i64 %.032, 1
  br label %bb.an, !llvm.loop !120

bb.ay:                                            ; preds = %bb.al
  %i.ks = load i32, ptr %i.gd, align 8, !tbaa !66
  %i.kt = icmp eq i32 %i.ks, 1
  br i1 %i.kt, label %bb.az, label %bb.bd

bb.az:                                            ; preds = %bb.ay
  %i.ku = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK2cv8MatShape4backEv(ptr noundef nonnull align 4 dereferenceable(52) %7)
          to label %bb.ba unwind label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !114 ; 4 uses
  %i.kw = sext i32 %i.kv to i64                   ; 10 uses
  %i.kx = load i32, ptr %7, align 4, !tbaa !113
  %.fr.i102 = freeze i32 %i.kx                    ; 3 uses
  %.not138 = icmp slt i32 %.fr.i102, 1
  br i1 %.not138, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit121, label %.lr.ph.i107

.lr.ph.i107:                                      ; preds = %bb.ba
  %i.ky = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 9 uses
  %i.kz = zext nneg i32 %.fr.i102 to i64          ; 2 uses
  %xtraiter212 = and i64 %i.kz, 7                 ; 3 uses
  %i.la = icmp ult i32 %.fr.i102, 8
  br i1 %i.la, label %_ZNK2cv8MatShapeixEm.exit.i114.epil.preheader, label %.lr.ph.i107.new

.lr.ph.i107.new:                                  ; preds = %.lr.ph.i107
  %unroll_iter217 = and i64 %i.kz, 2147483640
  br label %_ZNK2cv8MatShapeixEm.exit.i114

_ZNK2cv8MatShapeixEm.exit.i114:                   ; preds = %_ZNK2cv8MatShapeixEm.exit.i114, %.lr.ph.i107.new
  %indvars.iv.i115 = phi i64 [ 0, %.lr.ph.i107.new ], [ %indvars.iv.next.i117.7, %_ZNK2cv8MatShapeixEm.exit.i114 ] ; 9 uses
  %.02129.i116 = phi i64 [ 1, %.lr.ph.i107.new ], [ %i.mn, %_ZNK2cv8MatShapeixEm.exit.i114 ]
  %niter218 = phi i64 [ 0, %.lr.ph.i107.new ], [ %niter218.next.7, %_ZNK2cv8MatShapeixEm.exit.i114 ]
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv.i115
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !114
  %i.ld = sext i32 %i.lc to i64
  %i.le = mul i64 %.02129.i116, %i.ld
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv.i115
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 4
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !114
  %i.li = sext i32 %i.lh to i64
  %i.lj = mul i64 %i.le, %i.li
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv.i115
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !114
  %i.ln = sext i32 %i.lm to i64
  %i.lo = mul i64 %i.lj, %i.ln
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv.i115
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 12
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !114
  %i.ls = sext i32 %i.lr to i64
  %i.lt = mul i64 %i.lo, %i.ls
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv.i115
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !114
  %i.lx = sext i32 %i.lw to i64
  %i.ly = mul i64 %i.lt, %i.lx
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv.i115
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 20
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !114
  %i.mc = sext i32 %i.mb to i64
  %i.md = mul i64 %i.ly, %i.mc
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv.i115
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 24
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !114
  %i.mh = sext i32 %i.mg to i64
  %i.mi = mul i64 %i.md, %i.mh
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv.i115
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 28
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !114
  %i.mm = sext i32 %i.ml to i64
  %i.mn = mul i64 %i.mi, %i.mm                    ; 3 uses
  %indvars.iv.next.i117.7 = add nuw nsw i64 %indvars.iv.i115, 8 ; 2 uses
  %niter218.next.7 = add i64 %niter218, 8         ; 2 uses
  %niter218.ncmp.7 = icmp eq i64 %niter218.next.7, %unroll_iter217
  br i1 %niter218.ncmp.7, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit121.loopexit.unr-lcssa, label %_ZNK2cv8MatShapeixEm.exit.i114, !llvm.loop !115

_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit121.loopexit.unr-lcssa: ; preds = %_ZNK2cv8MatShapeixEm.exit.i114
  %lcmp.mod214.not = icmp eq i64 %xtraiter212, 0
  br i1 %lcmp.mod214.not, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit121, label %_ZNK2cv8MatShapeixEm.exit.i114.epil.preheader

_ZNK2cv8MatShapeixEm.exit.i114.epil.preheader:    ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit121.loopexit.unr-lcssa, %.lr.ph.i107
  %indvars.iv.i115.epil.init = phi i64 [ 0, %.lr.ph.i107 ], [ %indvars.iv.next.i117.7, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit121.loopexit.unr-lcssa ]
  %.02129.i116.epil.init = phi i64 [ 1, %.lr.ph.i107 ], [ %i.mn, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit121.loopexit.unr-lcssa ]
  %lcmp.mod216 = icmp ne i64 %xtraiter212, 0
  call void @llvm.assume(i1 %lcmp.mod216)
  br label %_ZNK2cv8MatShapeixEm.exit.i114.epil

_ZNK2cv8MatShapeixEm.exit.i114.epil:              ; preds = %_ZNK2cv8MatShapeixEm.exit.i114.epil, %_ZNK2cv8MatShapeixEm.exit.i114.epil.preheader
  %indvars.iv.i115.epil = phi i64 [ %indvars.iv.next.i117.epil, %_ZNK2cv8MatShapeixEm.exit.i114.epil ], [ %indvars.iv.i115.epil.init, %_ZNK2cv8MatShapeixEm.exit.i114.epil.preheader ] ; 2 uses
  %.02129.i116.epil = phi i64 [ %i.mr, %_ZNK2cv8MatShapeixEm.exit.i114.epil ], [ %.02129.i116.epil.init, %_ZNK2cv8MatShapeixEm.exit.i114.epil.preheader ]
  %epil.iter213 = phi i64 [ %epil.iter213.next, %_ZNK2cv8MatShapeixEm.exit.i114.epil ], [ 0, %_ZNK2cv8MatShapeixEm.exit.i114.epil.preheader ]
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv.i115.epil
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !114
  %i.mq = sext i32 %i.mp to i64
  %i.mr = mul i64 %.02129.i116.epil, %i.mq        ; 2 uses
  %indvars.iv.next.i117.epil = add nuw nsw i64 %indvars.iv.i115.epil, 1
  %epil.iter213.next = add i64 %epil.iter213, 1   ; 2 uses
  %epil.iter213.cmp.not = icmp eq i64 %epil.iter213.next, %xtraiter212
  br i1 %epil.iter213.cmp.not, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit121, label %_ZNK2cv8MatShapeixEm.exit.i114.epil, !llvm.loop !121

_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit121: ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit121.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit.i114.epil, %bb.ba
  %.021.lcssa.i106 = phi i64 [ 1, %bb.ba ], [ %i.mn, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit121.loopexit.unr-lcssa ], [ %i.mr, %_ZNK2cv8MatShapeixEm.exit.i114.epil ] ; 2 uses
  %i.ms = udiv i64 %.021.lcssa.i106, %i.kw        ; 2 uses
  %.not144 = icmp ult i64 %.021.lcssa.i106, %i.kw
  br i1 %.not144, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit121
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 7 uses
  %16 = mul i64 %i.ms, %i.kw
  %17 = shl i64 %16, 2
  %scevgep188.a = getelementptr i8, ptr %i.jy, i64 %17 ; 2 uses
  %18 = shl nsw i64 %i.kw, 2
  %scevgep187 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %scevgep188 = getelementptr i8, ptr %i.ka, i64 %18
  %min.iters.check = icmp ult i32 %i.kv, 8
  %bound0 = icmp ult ptr %i.jy, %scevgep187
  %bound1 = icmp ult ptr %i.mt, %scevgep188.a
  %found.conflict = and i1 %bound0, %bound1
  %bound0189 = icmp ult ptr %i.jy, %scevgep188
  %bound1190 = icmp ult ptr %i.ka, %scevgep188.a
  %found.conflict191 = and i1 %bound0189, %bound1190
  %stride.check192 = icmp slt i32 %i.kv, 0
  %i.mu = or i1 %found.conflict191, %stride.check192
  %conflict.rdx = or i1 %found.conflict, %i.mu
  %n.vec = and i64 %i.kw, 2147483640              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.kw
  %xtraiter219 = and i64 %i.kw, 3
  %i.mv = and i32 %i.kv, 3
  %lcmp.mod220.not = icmp eq i32 %i.mv, 0
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  %i.mw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bc:                                            ; preds = %.lr.ph, %.loopexit194
  %.031143 = phi i64 [ 0, %.lr.ph ], [ %i.np, %.loopexit194 ] ; 2 uses
  %i.mx = mul i64 %.031143, %i.kw
  %i.my = getelementptr [4 x i8], ptr %i.jy, i64 %i.mx ; 6 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.bc
  %i.mz = load float, ptr %i.mt, align 4, !tbaa !65, !alias.scope !122
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.mz, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %index ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 16
  %wide.load = load <4 x float>, ptr %i.na, align 4, !tbaa !119, !alias.scope !125
  %wide.load193 = load <4 x float>, ptr %i.nb, align 4, !tbaa !119, !alias.scope !125
  %i.nc = fmul <4 x float> %broadcast.splat, %wide.load
  %i.nd = fmul <4 x float> %broadcast.splat, %wide.load193
  %i.ne = getelementptr [4 x i8], ptr %i.my, i64 %index ; 2 uses
  %i.nf = getelementptr i8, ptr %i.ne, i64 16
  store <4 x float> %i.nc, ptr %i.ne, align 4, !tbaa !119, !alias.scope !127, !noalias !129
  store <4 x float> %i.nd, ptr %i.nf, align 4, !tbaa !119, !alias.scope !127, !noalias !129
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ng = icmp eq i64 %index.next, %n.vec
  br i1 %i.ng, label %middle.block, label %vector.body, !llvm.loop !130

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit194, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.bc, %middle.block
  %.0142.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %bb.bc ] ; 3 uses
  br i1 %lcmp.mod220.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.0142.prol = phi i64 [ %i.nm, %scalar.ph.prol ], [ %.0142.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.nh = load float, ptr %i.mt, align 4, !tbaa !65
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %.0142.prol
  %i.nj = load float, ptr %i.ni, align 4, !tbaa !119
  %i.nk = fmul float %i.nh, %i.nj
  %i.nl = getelementptr [4 x i8], ptr %i.my, i64 %.0142.prol
  store float %i.nk, ptr %i.nl, align 4, !tbaa !119
  %i.nm = add nuw i64 %.0142.prol, 1              ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter219
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !133

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.0142.unr = phi i64 [ %.0142.ph, %scalar.ph.preheader ], [ %i.nm, %scalar.ph.prol ]
  %i.nn = sub nsw i64 %.0142.ph, %i.kw
  %i.no = icmp ugt i64 %i.nn, -4
  br i1 %i.no, label %.loopexit194, label %scalar.ph

.loopexit194:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.np = add nuw i64 %.031143, 1                 ; 2 uses
  %i.nq = icmp ult i64 %i.np, %i.ms
  br i1 %i.nq, label %bb.bc, label %.loopexit, !llvm.loop !134

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0142 = phi i64 [ %i.oo, %scalar.ph ], [ %.0142.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.nr = load float, ptr %i.mt, align 4, !tbaa !65
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %.0142
  %i.nt = load float, ptr %i.ns, align 4, !tbaa !119
  %i.nu = fmul float %i.nr, %i.nt
  %i.nv = getelementptr [4 x i8], ptr %i.my, i64 %.0142
  store float %i.nu, ptr %i.nv, align 4, !tbaa !119
  %i.nw = add nuw i64 %.0142, 1                   ; 2 uses
  %i.nx = load float, ptr %i.mt, align 4, !tbaa !65
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %i.nw
  %i.nz = load float, ptr %i.ny, align 4, !tbaa !119
  %i.oa = fmul float %i.nx, %i.nz
  %i.ob = getelementptr [4 x i8], ptr %i.my, i64 %i.nw
  store float %i.oa, ptr %i.ob, align 4, !tbaa !119
  %i.oc = add nuw i64 %.0142, 2                   ; 2 uses
  %i.od = load float, ptr %i.mt, align 4, !tbaa !65
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %i.oc
  %i.of = load float, ptr %i.oe, align 4, !tbaa !119
  %i.og = fmul float %i.od, %i.of
  %i.oh = getelementptr [4 x i8], ptr %i.my, i64 %i.oc
  store float %i.og, ptr %i.oh, align 4, !tbaa !119
  %i.oi = add nuw i64 %.0142, 3                   ; 2 uses
  %i.oj = load float, ptr %i.mt, align 4, !tbaa !65
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %i.oi
  %i.ol = load float, ptr %i.ok, align 4, !tbaa !119
  %i.om = fmul float %i.oj, %i.ol
  %i.on = getelementptr [4 x i8], ptr %i.my, i64 %i.oi
  store float %i.om, ptr %i.on, align 4, !tbaa !119
  %i.oo = add nuw i64 %.0142, 4                   ; 2 uses
  %exitcond150.not.3 = icmp eq i64 %i.oo, %i.kw
  br i1 %exitcond150.not.3, label %.loopexit194, label %scalar.ph, !llvm.loop !135

bb.bd:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  %i.op = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 0, ptr %i.op, align 8, !tbaa !136
  %i.oq = getelementptr inbounds nuw i8, ptr %14, i64 20
  store i32 0, ptr %i.oq, align 4, !tbaa !138
  store i32 16842752, ptr %14, align 8, !tbaa !139
  %i.or = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %11, ptr %i.or, align 8, !tbaa !141
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  %i.os = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ot = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i64 0, ptr %i.ot, align 8
  store i32 33619968, ptr %15, align 8, !tbaa !139
  store ptr %i.jv, ptr %i.os, align 8, !tbaa !141
  invoke void @_ZN2cv9broadcastERKNS_11_InputArrayERKNS_8MatShapeERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 4 dereferenceable(52) %7, ptr noundef nonnull align 8 dereferenceable(24) %15)
          to label %bb.be unwind label %bb.bf

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  br label %.loopexit

bb.bf:                                            ; preds = %bb.bd
  %i.ou = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  br label %.body

bb.bg:                                            ; preds = %bb.ai
  %i.ov = load ptr, ptr %i.r, align 8, !tbaa !95
  %i.ow = getelementptr inbounds i8, ptr %i.ov, i64 -208
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.oy = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.ox, ptr noundef nonnull align 8 dereferenceable(208) %i.ow)
          to label %.loopexit unwind label %bb.ar ; 0 uses

.loopexit:                                        ; preds = %.loopexit194, %bb.ao, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit121, %bb.be, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %bb.bi

.body:                                            ; preds = %bb.ar, %bb.au, %bb.bb, %bb.bf, %bb.aw, %bb.av, %bb.aq
  %.pn57.pn.pn = phi { ptr, i32 } [ %i.kk, %bb.aq ], [ %i.mw, %bb.bb ], [ %.pn, %bb.au ], [ %i.kp, %bb.aw ], [ %i.ko, %bb.av ], [ %i.ou, %bb.bf ], [ %i.kl, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #20
  br label %bb.bh

bb.bh:                                            ; preds = %.body, %bb.ap
  %.pn57.pn.pn.pn = phi { ptr, i32 } [ %.pn57.pn.pn, %.body ], [ %i.kj, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %bb.bl

bb.bi:                                            ; preds = %.loopexit, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.oz = load ptr, ptr %4, align 8, !tbaa !94    ; 3 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !98 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.oz, %i.pb
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bi, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.pc, %.lr.ph.i.i.i ], [ %i.oz, %bb.bi ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i) #20
  %i.pc = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i122 = icmp eq ptr %i.pc, %i.pb
  br i1 %.not.i.i.i122, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !142

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !94
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.bi
  %i.pd = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.oz, %bb.bi ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.pd, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit, label %bb.bj

bb.bj:                                            ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i
  %i.pe = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !143
  %i.pg = ptrtoint ptr %i.pf to i64
  %i.ph = ptrtoint ptr %i.pd to i64
  %i.pi = sub i64 %i.pg, %i.ph
  call void @_ZdlPvm(ptr noundef nonnull %i.pd, i64 noundef %i.pi) #19
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit:          ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, %bb.bj
end_hunk_0
