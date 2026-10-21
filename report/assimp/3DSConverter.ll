Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/3DSConverter?download=true
inline.NumInlined: 961
inline.NumDeleted: 441
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN6Assimp19Discreet3DSImporter14AddNodeToGraphEP7aiSceneP6aiNodePNS_4D3DS4NodeER12aiMatrix4x4tIfE:_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
.loopexit396:                                     ; preds = %.lr.ph452, %_ZNSt6vectorI9aiQuatKeySaIS0_EE6resizeEm.exit, %bb.aj
  %i.tf = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.tg = load i32, ptr %i.tf, align 8            ; 2 uses
  %.not467 = icmp eq i32 %i.tg, 0
  br i1 %.not467, label %.preheader, label %.lr.ph455

.lr.ph455:                                        ; preds = %.loopexit396
  %i.th = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.pre503 = load ptr, ptr %i.th, align 8
  %.pre505 = load i32, ptr %2, align 4
  br label %bb.aq

.preheader:                                       ; preds = %_ZNK8aiStringeqERKS_.exit.thread, %.loopexit396
  %i.tj = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.tk = load i32, ptr %i.tj, align 8            ; 2 uses
  %.not468 = icmp eq i32 %i.tk, 0
  br i1 %.not468, label %._crit_edge458, label %.lr.ph457

.lr.ph457:                                        ; preds = %.preheader
  %i.tl = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.pre508 = load ptr, ptr %i.tl, align 8
  %.pre510 = load i32, ptr %2, align 4
  br label %bb.as

bb.aq:                                            ; preds = %.lr.ph455, %_ZNK8aiStringeqERKS_.exit.thread
  %i.tn = phi i32 [ %i.tg, %.lr.ph455 ], [ %i.ty, %_ZNK8aiStringeqERKS_.exit.thread ] ; 2 uses
  %i.to = phi i32 [ %.pre505, %.lr.ph455 ], [ %i.tz, %_ZNK8aiStringeqERKS_.exit.thread ] ; 4 uses
  %i.tp = phi ptr [ %.pre503, %.lr.ph455 ], [ %i.ua, %_ZNK8aiStringeqERKS_.exit.thread ] ; 3 uses
  %indvars.iv477 = phi i64 [ 0, %.lr.ph455 ], [ %indvars.iv.next478, %_ZNK8aiStringeqERKS_.exit.thread ] ; 2 uses
  %i.tq = getelementptr inbounds nuw [8 x i8], ptr %i.tp, i64 %indvars.iv477
  %i.tr = load ptr, ptr %i.tq, align 8            ; 4 uses
  %i.ts = load i32, ptr %i.tr, align 4
  %i.tt = icmp eq i32 %i.ts, %i.to
  br i1 %i.tt, label %_ZNK8aiStringeqERKS_.exit, label %_ZNK8aiStringeqERKS_.exit.thread

_ZNK8aiStringeqERKS_.exit:                        ; preds = %bb.aq
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tr, i64 4
  %i.tv = zext i32 %i.to to i64
  %bcmp.i267 = call i32 @bcmp(ptr nonnull %i.tu, ptr nonnull %i.ti, i64 %i.tv)
  %i.tw = icmp eq i32 %bcmp.i267, 0
  br i1 %i.tw, label %bb.ar, label %_ZNK8aiStringeqERKS_.exit.thread

bb.ar:                                            ; preds = %_ZNK8aiStringeqERKS_.exit
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tr, i64 1052
  store <2 x float> zeroinitializer, ptr %i.tx, align 4
  %.sroa.5312.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tr, i64 1060
  store float 1.000000e+00, ptr %.sroa.5312.0..sroa_idx, align 4
  %.pre502 = load ptr, ptr %i.th, align 8
  %.pre504 = load i32, ptr %2, align 4
  %.pre506 = load i32, ptr %i.tf, align 8
  br label %_ZNK8aiStringeqERKS_.exit.thread

_ZNK8aiStringeqERKS_.exit.thread:                 ; preds = %bb.aq, %_ZNK8aiStringeqERKS_.exit, %bb.ar
  %i.ty = phi i32 [ %i.tn, %bb.aq ], [ %i.tn, %_ZNK8aiStringeqERKS_.exit ], [ %.pre506, %bb.ar ] ; 2 uses
  %i.tz = phi i32 [ %i.to, %bb.aq ], [ %i.to, %_ZNK8aiStringeqERKS_.exit ], [ %.pre504, %bb.ar ]
  %i.ua = phi ptr [ %i.tp, %bb.aq ], [ %i.tp, %_ZNK8aiStringeqERKS_.exit ], [ %.pre502, %bb.ar ]
  %indvars.iv.next478 = add nuw nsw i64 %indvars.iv477, 1 ; 2 uses
  %i.ub = zext i32 %i.ty to i64
  %i.uc = icmp samesign ult i64 %indvars.iv.next478, %i.ub
  br i1 %i.uc, label %bb.aq, label %.preheader, !llvm.loop !34

._crit_edge458:                                   ; preds = %_ZNK8aiStringeqERKS_.exit270.thread, %.preheader
  %i.ud = invoke noalias noundef nonnull dereferenceable(1080) ptr @_Znwm(i64 noundef 1080) #28
          to label %bb.au unwind label %.loopexit.split-lp.loopexit.split-lp ; 10 uses

bb.as:                                            ; preds = %.lr.ph457, %_ZNK8aiStringeqERKS_.exit270.thread
  %i.ue = phi i32 [ %i.tk, %.lr.ph457 ], [ %i.up, %_ZNK8aiStringeqERKS_.exit270.thread ] ; 2 uses
  %i.uf = phi i32 [ %.pre510, %.lr.ph457 ], [ %i.uq, %_ZNK8aiStringeqERKS_.exit270.thread ] ; 4 uses
  %i.ug = phi ptr [ %.pre508, %.lr.ph457 ], [ %i.ur, %_ZNK8aiStringeqERKS_.exit270.thread ] ; 3 uses
  %indvars.iv480 = phi i64 [ 0, %.lr.ph457 ], [ %indvars.iv.next481, %_ZNK8aiStringeqERKS_.exit270.thread ] ; 2 uses
  %i.uh = getelementptr inbounds nuw [8 x i8], ptr %i.ug, i64 %indvars.iv480
  %i.ui = load ptr, ptr %i.uh, align 8            ; 4 uses
  %i.uj = load i32, ptr %i.ui, align 4
  %i.uk = icmp eq i32 %i.uj, %i.uf
  br i1 %i.uk, label %_ZNK8aiStringeqERKS_.exit270, label %_ZNK8aiStringeqERKS_.exit270.thread

_ZNK8aiStringeqERKS_.exit270:                     ; preds = %bb.as
  %i.ul = getelementptr inbounds nuw i8, ptr %i.ui, i64 4
  %i.um = zext i32 %i.uf to i64
  %bcmp.i269 = call i32 @bcmp(ptr nonnull %i.ul, ptr nonnull %i.tm, i64 %i.um)
  %i.un = icmp eq i32 %bcmp.i269, 0
  br i1 %i.un, label %bb.at, label %_ZNK8aiStringeqERKS_.exit270.thread

bb.at:                                            ; preds = %_ZNK8aiStringeqERKS_.exit270
  %i.uo = getelementptr inbounds nuw i8, ptr %i.ui, i64 1044
  store <2 x float> zeroinitializer, ptr %i.uo, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ui, i64 1052
  store float 1.000000e+00, ptr %.sroa.5.0..sroa_idx, align 4
  %.pre507 = load ptr, ptr %i.tl, align 8
  %.pre509 = load i32, ptr %2, align 4
  %.pre511 = load i32, ptr %i.tj, align 8
  br label %_ZNK8aiStringeqERKS_.exit270.thread

_ZNK8aiStringeqERKS_.exit270.thread:              ; preds = %bb.as, %_ZNK8aiStringeqERKS_.exit270, %bb.at
  %i.up = phi i32 [ %i.ue, %bb.as ], [ %i.ue, %_ZNK8aiStringeqERKS_.exit270 ], [ %.pre511, %bb.at ] ; 2 uses
  %i.uq = phi i32 [ %i.uf, %bb.as ], [ %i.uf, %_ZNK8aiStringeqERKS_.exit270 ], [ %.pre509, %bb.at ]
  %i.ur = phi ptr [ %i.ug, %bb.as ], [ %i.ug, %_ZNK8aiStringeqERKS_.exit270 ], [ %.pre507, %bb.at ]
  %indvars.iv.next481 = add nuw nsw i64 %indvars.iv480, 1 ; 2 uses
  %i.us = zext i32 %i.up to i64
  %i.ut = icmp samesign ult i64 %indvars.iv.next481, %i.us
  br i1 %i.ut, label %bb.as, label %._crit_edge458, !llvm.loop !35

bb.au:                                            ; preds = %._crit_edge458
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ud, i64 1048 ; 4 uses
  store ptr null, ptr %i.uu, align 8
  %i.uv = getelementptr inbounds nuw i8, ptr %i.ud, i64 1056 ; 3 uses
  store i32 0, ptr %i.uv, align 8
  %i.uw = getelementptr inbounds nuw i8, ptr %i.ud, i64 1064 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1080) %i.ud, i8 0, i64 1044, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.uw, i8 0, i64 16, i1 false)
  %i.ux = getelementptr inbounds nuw i8, ptr %i.ra, i64 1056
  %i.uy = load ptr, ptr %i.ux, align 8
  %i.uz = getelementptr inbounds nuw i8, ptr %i.ra, i64 1048 ; 2 uses
  %i.va = load i32, ptr %i.uz, align 8            ; 2 uses
  %i.vb = add i32 %i.va, 1
  store i32 %i.vb, ptr %i.uz, align 8
  %i.vc = zext i32 %i.va to i64
  %i.vd = getelementptr inbounds nuw [8 x i8], ptr %i.uy, i64 %i.vc
  store ptr %i.ud, ptr %i.vd, align 8
  %i.ve = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.vf = load i64, ptr %i.ve, align 8            ; 4 uses
  %i.vg = icmp ugt i64 %i.vf, 1023
  br i1 %i.vg, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit271, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.vh = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.vi = trunc nuw nsw i64 %i.vf to i32
  store i32 %i.vi, ptr %i.ud, align 8
  %i.vj = getelementptr inbounds nuw i8, ptr %i.ud, i64 4 ; 2 uses
  %i.vk = load ptr, ptr %i.vh, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.vj, ptr align 1 %i.vk, i64 %i.vf, i1 false)
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vj, i64 %i.vf
  store i8 0, ptr %i.vl, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit271

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit271: ; preds = %bb.au, %bb.av
  %i.vm = load ptr, ptr %i.ou, align 8            ; 2 uses
  %i.vn = load ptr, ptr %i.ov, align 8            ; 2 uses
  %i.vo = icmp eq ptr %i.vm, %i.vn
  br i1 %i.vo, label %bb.ba, label %bb.aw

bb.aw:                                            ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit271
  %i.vp = ptrtoint ptr %i.vn to i64
  %i.vq = ptrtoint ptr %i.vm to i64
  %i.vr = sub i64 %i.vp, %i.vq
  %i.vs = sdiv exact i64 %i.vr, 24                ; 2 uses
  %i.vt = trunc i64 %i.vs to i32
  %i.vu = getelementptr inbounds nuw i8, ptr %i.ud, i64 1028 ; 2 uses
  store i32 %i.vt, ptr %i.vu, align 4
  %i.vv = and i64 %i.vs, 4294967295               ; 3 uses
  %i.vw = mul nuw nsw i64 %i.vv, 24
  %i.vx = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.vw) #28
          to label %bb.ax unwind label %.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.ax:                                            ; preds = %bb.aw
  %i.vy = icmp eq i64 %i.vv, 0
  br i1 %i.vy, label %.loopexit395, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.vz = getelementptr inbounds nuw [24 x i8], ptr %i.vx, i64 %i.vv
  br label %bb.az

bb.az:                                            ; preds = %bb.az, %bb.ay
  %i.wa = phi ptr [ %i.vx, %bb.ay ], [ %i.wc, %bb.az ] ; 3 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.wa, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.wb, align 4
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wa, i64 24 ; 2 uses
  %i.wd = icmp eq ptr %i.wc, %i.vz
  br i1 %i.wd, label %.loopexit395, label %bb.az

.loopexit395:                                     ; preds = %bb.az, %bb.ax
  %i.we = getelementptr inbounds nuw i8, ptr %i.ud, i64 1032
  store ptr %i.vx, ptr %i.we, align 8
  %i.wf = load ptr, ptr %i.ou, align 8
  %i.wg = load i32, ptr %i.vu, align 4
  %i.wh = zext i32 %i.wg to i64
  %i.wi = mul nuw nsw i64 %i.wh, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.vx, ptr nonnull align 8 %i.wf, i64 %i.wi, i1 false)
  br label %bb.ba

bb.ba:                                            ; preds = %.loopexit395, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit271
  %i.wj = load ptr, ptr %i.kw, align 8            ; 2 uses
  %i.wk = load ptr, ptr %i.kx, align 8            ; 2 uses
  %i.wl = icmp eq ptr %i.wj, %i.wk
  br i1 %i.wl, label %.loopexit393, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.wm = ptrtoint ptr %i.wk to i64
  %i.wn = ptrtoint ptr %i.wj to i64
  %i.wo = sub i64 %i.wm, %i.wn
  %i.wp = ashr exact i64 %i.wo, 5                 ; 3 uses
  %i.wq = trunc i64 %i.wp to i32
  %i.wr = getelementptr inbounds nuw i8, ptr %i.ud, i64 1040 ; 3 uses
  store i32 %i.wq, ptr %i.wr, align 8
  %i.ws = and i64 %i.wp, 4294967295               ; 4 uses
  %i.wt = shl nuw nsw i64 %i.ws, 5
  %i.wu = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.wt) #28
          to label %bb.bc unwind label %.loopexit.split-lp.loopexit.split-lp ; 6 uses

bb.bc:                                            ; preds = %bb.bb
  %i.wv = icmp eq i64 %i.ws, 0
  br i1 %i.wv, label %.loopexit394, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ww = getelementptr inbounds nuw [32 x i8], ptr %i.wu, i64 %i.ws
  %i.wx = add nuw nsw i64 %i.ws, 576460752303423487
  %i.wy = and i64 %i.wx, 576460752303423487
  %xtraiter = and i64 %i.wp, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.bd, %.prol.preheader
  %i.wz = phi ptr [ %i.xc, %.prol.preheader ], [ %i.wu, %bb.bd ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.bd ]
  store double 0.000000e+00, ptr %i.wz, align 8
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.xa, align 8
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wz, i64 24
  store i32 1, ptr %i.xb, align 8
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wz, i64 32 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !36

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.bd
  %.unr = phi ptr [ %i.wu, %bb.bd ], [ %i.xc, %.prol.preheader ]
  %i.xd = icmp samesign ult i64 %i.wy, 7
  br i1 %i.xd, label %.loopexit394, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.xe = phi ptr [ %i.yc, %.new ], [ %.unr, %.prol.loopexit ] ; 25 uses
  store double 0.000000e+00, ptr %i.xe, align 8
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.xf, align 8
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xe, i64 24
  store i32 1, ptr %i.xg, align 8
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xe, i64 32
  store double 0.000000e+00, ptr %i.xh, align 8
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xe, i64 40
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.xi, align 8
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xe, i64 56
  store i32 1, ptr %i.xj, align 8
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xe, i64 64
  store double 0.000000e+00, ptr %i.xk, align 8
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xe, i64 72
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.xl, align 8
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xe, i64 88
  store i32 1, ptr %i.xm, align 8
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xe, i64 96
  store double 0.000000e+00, ptr %i.xn, align 8
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xe, i64 104
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.xo, align 8
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xe, i64 120
  store i32 1, ptr %i.xp, align 8
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xe, i64 128
  store double 0.000000e+00, ptr %i.xq, align 8
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xe, i64 136
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.xr, align 8
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xe, i64 152
  store i32 1, ptr %i.xs, align 8
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xe, i64 160
  store double 0.000000e+00, ptr %i.xt, align 8
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xe, i64 168
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.xu, align 8
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xe, i64 184
  store i32 1, ptr %i.xv, align 8
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xe, i64 192
  store double 0.000000e+00, ptr %i.xw, align 8
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xe, i64 200
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.xx, align 8
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xe, i64 216
  store i32 1, ptr %i.xy, align 8
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xe, i64 224
  store double 0.000000e+00, ptr %i.xz, align 8
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xe, i64 232
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ya, align 8
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xe, i64 248
  store i32 1, ptr %i.yb, align 8
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xe, i64 256 ; 2 uses
  %i.yd = icmp eq ptr %i.yc, %i.ww
  br i1 %i.yd, label %.loopexit394, label %.new

.loopexit394:                                     ; preds = %.prol.loopexit, %.new, %bb.bc
  store ptr %i.wu, ptr %i.uu, align 8
  %i.ye = load i32, ptr %i.wr, align 8            ; 2 uses
  %.not469 = icmp eq i32 %i.ye, 0
  br i1 %.not469, label %.loopexit393, label %_ZN13aiQuaterniontIfE9NormalizeEv.exit.peel

_ZN13aiQuaterniontIfE9NormalizeEv.exit.peel:      ; preds = %.loopexit394
  %i.yf = load ptr, ptr %i.kw, align 8            ; 3 uses
  %.sroa.6.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.yf, i64 16
  %.sroa.6.0.copyload.peel = load <2 x float>, ptr %.sroa.6.0..sroa_idx.peel, align 8 ; 5 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 8
  %.sroa.0.0.copyload.peel = load <2 x float>, ptr %i.yg, align 8 ; 4 uses
  %i.yh = load double, ptr %i.yf, align 8
  store double %i.yh, ptr %i.wu, align 8
  %.sroa.0.4.vec.extract289.peel = extractelement <2 x float> %.sroa.0.0.copyload.peel, i64 1 ; 2 uses
  %foldExtExtBinop588 = fmul <2 x float> %.sroa.6.0.copyload.peel, %.sroa.6.0.copyload.peel
  %i.yi = extractelement <2 x float> %foldExtExtBinop588, i64 0
  %i.yj = call float @llvm.fmuladd.f32(float %.sroa.0.4.vec.extract289.peel, float %.sroa.0.4.vec.extract289.peel, float %i.yi)
  %.sroa.15.12.vec.extract303.peel = extractelement <2 x float> %.sroa.6.0.copyload.peel, i64 1 ; 2 uses
  %i.yk = call float @llvm.fmuladd.f32(float %.sroa.15.12.vec.extract303.peel, float %.sroa.15.12.vec.extract303.peel, float %i.yj)
  %.sroa.0.0.vec.extract281.peel = extractelement <2 x float> %.sroa.0.0.copyload.peel, i64 0 ; 2 uses
  %i.yl = call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract281.peel, float %.sroa.0.0.vec.extract281.peel, float %i.yk)
  %i.ym = call noundef float @sqrtf(float noundef %i.yl) #24 ; 2 uses
  %i.yn = fcmp une float %i.ym, 0.000000e+00      ; 2 uses
  %i.yo = fdiv float 1.000000e+00, %i.ym
  %i.yp = insertelement <2 x float> poison, float %i.yo, i64 0
  %i.yq = shufflevector <2 x float> %i.yp, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.yr = fmul <2 x float> %.sroa.6.0.copyload.peel, %i.yq
  %i.ys = fmul <2 x float> %.sroa.0.0.copyload.peel, %i.yq
  %.sroa.15.1.peel = select i1 %i.yn, <2 x float> %i.yr, <2 x float> %.sroa.6.0.copyload.peel ; 2 uses
  %.sroa.0.1.peel = select i1 %i.yn, <2 x float> %i.ys, <2 x float> %.sroa.0.0.copyload.peel ; 2 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %i.wu, i64 8
  %7 = shufflevector <2 x float> %.sroa.0.1.peel, <2 x float> %.sroa.15.1.peel, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %7, ptr %i.yt, align 8
  %.not557 = icmp eq i32 %i.ye, 1
  br i1 %.not557, label %.loopexit393, label %.lr.ph463.peel.next

.lr.ph463.peel.next:                              ; preds = %_ZN13aiQuaterniontIfE9NormalizeEv.exit.peel, %.lr.ph463.peel.next
  %indvars.iv483 = phi i64 [ %indvars.iv.next484, %.lr.ph463.peel.next ], [ 1, %_ZN13aiQuaterniontIfE9NormalizeEv.exit.peel ] ; 4 uses
  %.sroa.0.0381460 = phi <2 x float> [ %.sroa.0.1, %.lr.ph463.peel.next ], [ %.sroa.0.1.peel, %_ZN13aiQuaterniontIfE9NormalizeEv.exit.peel ] ; 4 uses
  %.sroa.15.0459 = phi <2 x float> [ %.sroa.15.1, %.lr.ph463.peel.next ], [ %.sroa.15.1.peel, %_ZN13aiQuaterniontIfE9NormalizeEv.exit.peel ] ; 5 uses
  %i.yu = load ptr, ptr %i.kw, align 8
  %i.yv = getelementptr inbounds nuw [32 x i8], ptr %i.yu, i64 %indvars.iv483 ; 3 uses
  %.sroa.15.12.vec.extract = extractelement <2 x float> %.sroa.15.0459, i64 1
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 16
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yv, i64 8
  %i.yy = fneg float %.sroa.15.12.vec.extract
  %i.yz = load <2 x float>, ptr %i.yw, align 4    ; 4 uses
  %i.za = shufflevector <2 x float> %i.yz, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.zb = load <2 x float>, ptr %i.yx, align 4    ; 6 uses
  %i.zc = shufflevector <2 x float> %.sroa.0.0381460, <2 x float> %.sroa.15.0459, <2 x i32> <i32 1, i32 2>
  %i.zd = fneg <2 x float> %i.zc                  ; 2 uses
  %i.ze = shufflevector <2 x float> %i.zb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zf = fmul <2 x float> %.sroa.15.0459, %i.ze
  %i.zg = shufflevector <2 x float> %.sroa.0.0381460, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.zh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zg, <2 x float> %i.yz, <2 x float> %i.zf)
  %i.zi = shufflevector <2 x float> %.sroa.15.0459, <2 x float> %.sroa.0.0381460, <2 x i32> <i32 1, i32 3>
  %i.zj = shufflevector <2 x float> %i.zb, <2 x float> %i.yz, <2 x i32> <i32 1, i32 2>
  %i.zk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zi, <2 x float> %i.zj, <2 x float> %i.zh)
  %i.zl = shufflevector <2 x float> %i.za, <2 x float> %i.zb, <2 x i32> <i32 0, i32 3>
  %i.zm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zd, <2 x float> %i.zl, <2 x float> %i.zk) ; 5 uses
  %i.zn = shufflevector <2 x float> %.sroa.0.0381460, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.zo = fneg <2 x float> %i.zb
  %i.zp = shufflevector <2 x float> %i.zo, <2 x float> %i.zb, <2 x i32> <i32 1, i32 2>
  %i.zq = fmul <2 x float> %i.zn, %i.zp
  %i.zr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zg, <2 x float> %i.zb, <2 x float> %i.zq)
  %i.zs = shufflevector <2 x float> %i.zd, <2 x float> %.sroa.15.0459, <2 x i32> <i32 1, i32 2>
  %i.zt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zs, <2 x float> %i.yz, <2 x float> %i.zr)
  %i.zu = insertelement <2 x float> poison, float %i.yy, i64 0
  %i.zv = shufflevector <2 x float> %i.zu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zv, <2 x float> %i.za, <2 x float> %i.zt) ; 4 uses
  %i.zx = load double, ptr %i.yv, align 8
  %i.zy = load ptr, ptr %i.uu, align 8
  %i.zz = getelementptr inbounds nuw [32 x i8], ptr %i.zy, i64 %indvars.iv483
  store double %i.zx, ptr %i.zz, align 8
  %foldExtExtBinop590 = fmul <2 x float> %i.zm, %i.zm
  %i.aaa = extractelement <2 x float> %foldExtExtBinop590, i64 0
  %i.aab = extractelement <2 x float> %i.zw, i64 1 ; 2 uses
  %i.aac = call float @llvm.fmuladd.f32(float %i.aab, float %i.aab, float %i.aaa)
  %i.aad = extractelement <2 x float> %i.zm, i64 1 ; 2 uses
  %i.aae = call float @llvm.fmuladd.f32(float %i.aad, float %i.aad, float %i.aac)
  %i.aaf = extractelement <2 x float> %i.zw, i64 0 ; 2 uses
  %i.aag = call float @llvm.fmuladd.f32(float %i.aaf, float %i.aaf, float %i.aae)
  %i.aah = call noundef float @sqrtf(float noundef %i.aag) #24 ; 2 uses
  %i.aai = fcmp une float %i.aah, 0.000000e+00    ; 2 uses
  %i.aaj = fdiv float 1.000000e+00, %i.aah
  %i.aak = insertelement <2 x float> poison, float %i.aaj, i64 0
  %i.aal = shufflevector <2 x float> %i.aak, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aam = fmul <2 x float> %i.zm, %i.aal
  %i.aan = fmul <2 x float> %i.zw, %i.aal
  %.sroa.15.1 = select i1 %i.aai, <2 x float> %i.aam, <2 x float> %i.zm ; 2 uses
  %.sroa.0.1 = select i1 %i.aai, <2 x float> %i.aan, <2 x float> %i.zw ; 2 uses
  %i.aao = load ptr, ptr %i.uu, align 8
  %i.aap = getelementptr inbounds nuw [32 x i8], ptr %i.aao, i64 %indvars.iv483
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 8
  %8 = shufflevector <2 x float> %.sroa.0.1, <2 x float> %.sroa.15.1, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %8, ptr %i.aaq, align 8
  %indvars.iv.next484 = add nuw nsw i64 %indvars.iv483, 1 ; 2 uses
  %i.aar = load i32, ptr %i.wr, align 8
  %i.aas = zext i32 %i.aar to i64
  %i.aat = icmp samesign ult i64 %indvars.iv.next484, %i.aas
  br i1 %i.aat, label %.lr.ph463.peel.next, label %.loopexit393, !llvm.loop !37

.loopexit393:                                     ; preds = %.lr.ph463.peel.next, %_ZN13aiQuaterniontIfE9NormalizeEv.exit.peel, %.loopexit394, %bb.ba
  %i.aau = load ptr, ptr %i.nd, align 8           ; 2 uses
  %i.aav = load ptr, ptr %i.ne, align 8           ; 2 uses
  %i.aaw = icmp eq ptr %i.aau, %i.aav
  br i1 %i.aaw, label %bb.bi, label %bb.be

bb.be:                                            ; preds = %.loopexit393
  %i.aax = ptrtoint ptr %i.aav to i64
  %i.aay = ptrtoint ptr %i.aau to i64
  %i.aaz = sub i64 %i.aax, %i.aay
  %i.aba = sdiv exact i64 %i.aaz, 24              ; 2 uses
  %i.abb = trunc i64 %i.aba to i32
  store i32 %i.abb, ptr %i.uv, align 8
  %i.abc = and i64 %i.aba, 4294967295             ; 3 uses
  %i.abd = mul nuw nsw i64 %i.abc, 24
  %i.abe = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.abd) #28
          to label %bb.bf unwind label %.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.bf:                                            ; preds = %bb.be
  %i.abf = icmp eq i64 %i.abc, 0
  br i1 %i.abf, label %.loopexit392, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.abg = getelementptr inbounds nuw [24 x i8], ptr %i.abe, i64 %i.abc
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bh, %bb.bg
  %i.abh = phi ptr [ %i.abe, %bb.bg ], [ %i.abj, %bb.bh ] ; 3 uses
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abh, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.abh, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.abi, align 4
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abh, i64 24 ; 2 uses
  %i.abk = icmp eq ptr %i.abj, %i.abg
  br i1 %i.abk, label %.loopexit392, label %bb.bh

.loopexit392:                                     ; preds = %bb.bh, %bb.bf
  store ptr %i.abe, ptr %i.uw, align 8
  %i.abl = load ptr, ptr %i.nd, align 8
  %i.abm = load i32, ptr %i.uv, align 8
  %i.abn = zext i32 %i.abm to i64
  %i.abo = mul nuw nsw i64 %i.abn, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.abe, ptr nonnull align 8 %i.abl, i64 %i.abo, i1 false)
  br label %bb.bi

bb.bi:                                            ; preds = %.loopexit393, %.loopexit392, %bb.ai
  %i.abp = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.abr = load ptr, ptr %i.abq, align 8
  %i.abs = load ptr, ptr %i.abp, align 8
  %i.abt = ptrtoint ptr %i.abr to i64
  %i.abu = ptrtoint ptr %i.abs to i64
  %i.abv = sub i64 %i.abt, %i.abu
  %i.abw = lshr exact i64 %i.abv, 3               ; 2 uses
  %i.abx = trunc i64 %i.abw to i32                ; 2 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %2, i64 1104
  store i32 %i.abx, ptr %i.aby, align 8
  %i.abz = icmp eq i32 %i.abx, 0
  br i1 %i.abz, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.aca = load ptr, ptr %i.abq, align 8
  %i.acb = load ptr, ptr %i.abp, align 8
  %i.acc = ptrtoint ptr %i.aca to i64
  %i.acd = ptrtoint ptr %i.acb to i64
  %i.ace = sub i64 %i.acc, %i.acd
  %i.acf = call i64 @llvm.smax.i64(i64 %i.ace, i64 -1)
  %i.acg = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.acf) #28
          to label %bb.bk unwind label %.loopexit.split-lp.loopexit.split-lp

bb.bk:                                            ; preds = %bb.bj
  %i.ach = getelementptr inbounds nuw i8, ptr %2, i64 1112 ; 4 uses
  store ptr %i.acg, ptr %i.ach, align 8
  %wide.trip.count = and i64 %i.abw, 4294967295
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bo
  %indvars.iv487 = phi i64 [ 0, %bb.bk ], [ %indvars.iv.next488, %bb.bo ] ; 5 uses
  %i.aci = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #28
          to label %bb.bm unwind label %.loopexit391 ; 3 uses

bb.bm:                                            ; preds = %bb.bl
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.aci)
          to label %bb.bn unwind label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  %i.acj = load ptr, ptr %i.ach, align 8
  %i.ack = getelementptr inbounds nuw [8 x i8], ptr %i.acj, i64 %indvars.iv487
  store ptr %i.aci, ptr %i.ack, align 8
  %i.acl = load ptr, ptr %i.ach, align 8
  %i.acm = getelementptr inbounds nuw [8 x i8], ptr %i.acl, i64 %indvars.iv487
  %i.acn = load ptr, ptr %i.acm, align 8
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acn, i64 1096
  store ptr %2, ptr %i.aco, align 8
  %i.acp = load ptr, ptr %i.ach, align 8
  %i.acq = getelementptr inbounds nuw [8 x i8], ptr %i.acp, i64 %indvars.iv487
  %i.acr = load ptr, ptr %i.acq, align 8
  %i.acs = load ptr, ptr %i.abp, align 8
  %i.act = getelementptr inbounds nuw [8 x i8], ptr %i.acs, i64 %indvars.iv487
  %i.acu = load ptr, ptr %i.act, align 8
  invoke void @_ZN6Assimp19Discreet3DSImporter14AddNodeToGraphEP7aiSceneP6aiNodePNS_4D3DS4NodeER12aiMatrix4x4tIfE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1, ptr noundef %i.acr, ptr noundef %i.acu, ptr nonnull align 4 poison)
          to label %bb.bo unwind label %.loopexit391

bb.bo:                                            ; preds = %bb.bn
  %indvars.iv.next488 = add nuw nsw i64 %indvars.iv487, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next488, %wide.trip.count
  br i1 %exitcond.not, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.bl, !llvm.loop !38

.loopexit391:                                     ; preds = %bb.bl, %bb.bn
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit278

.loopexit.split-lp.loopexit:                      ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit404 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit278

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.e, %bb.an, %bb.bj, %._crit_edge458, %bb.aw, %bb.bb, %bb.be, %bb.al, %bb.ak
  %.sroa.28.0420 = phi ptr [ %.sroa.17368.0422, %bb.e ], [ %.sroa.28.0.lcssa561, %bb.an ], [ %.sroa.28.0.lcssa561, %bb.bj ], [ %.sroa.28.0.lcssa561, %._crit_edge458 ], [ %.sroa.28.0.lcssa561, %bb.aw ], [ %.sroa.28.0.lcssa561, %bb.bb ], [ %.sroa.28.0.lcssa561, %bb.be ], [ %.sroa.28.0.lcssa561, %bb.al ], [ %.sroa.28.0.lcssa561, %bb.ak ]
  %.sroa.0357.0412 = phi ptr [ %.sroa.0357.0423, %bb.e ], [ %.sroa.0357.0.lcssa567, %bb.an ], [ %.sroa.0357.0.lcssa567, %bb.bj ], [ %.sroa.0357.0.lcssa567, %._crit_edge458 ], [ %.sroa.0357.0.lcssa567, %bb.aw ], [ %.sroa.0357.0.lcssa567, %bb.bb ], [ %.sroa.0357.0.lcssa567, %bb.be ], [ %.sroa.0357.0.lcssa567, %bb.al ], [ %.sroa.0357.0.lcssa567, %bb.ak ]
  %lpad.loopexit.split-lp405 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit278

bb.bp:                                            ; preds = %bb.bm
  %i.acv = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.aci, i64 noundef 1144) #26
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit278

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.bo, %bb.bi
  %i.acw = ptrtoint ptr %.sroa.28.0.lcssa561 to i64
  %i.acx = ptrtoint ptr %.sroa.0357.0.lcssa567 to i64
  %i.acy = sub i64 %i.acw, %i.acx
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0357.0.lcssa567, i64 noundef %i.acy) #26
  ret void

_ZNSt6vectorIjSaIjEED2Ev.exit278:                 ; preds = %.loopexit391, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %.loopexit.split-lp400.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body, %bb.bp
  %.sroa.28.0417 = phi ptr [ %.sroa.28.0.lcssa561, %.body ], [ %.sroa.28.1, %.loopexit.split-lp400.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.28.0.lcssa561, %bb.bp ], [ %.sroa.28.0.lcssa561, %.loopexit391 ], [ %.sroa.17368.0422, %.loopexit.split-lp.loopexit ], [ %.sroa.28.0420, %.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0357.0409 = phi ptr [ %.sroa.0357.0.lcssa567, %.body ], [ %.sroa.0357.1, %.loopexit.split-lp400.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.0357.0.lcssa567, %bb.bp ], [ %.sroa.0357.0.lcssa567, %.loopexit391 ], [ %.sroa.0357.0423, %.loopexit.split-lp.loopexit ], [ %.sroa.0357.0412, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.pn251 = phi { ptr, i32 } [ %.pn235, %.body ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp400.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.acv, %bb.bp ], [ %lpad.loopexit, %.loopexit391 ], [ %lpad.loopexit404, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp405, %.loopexit.split-lp.loopexit.split-lp ]
  %i.acz = ptrtoint ptr %.sroa.28.0417 to i64
  %i.ada = ptrtoint ptr %.sroa.0357.0409 to i64
  %i.adb = sub i64 %i.acz, %i.ada
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0357.0409, i64 noundef %i.adb) #26
  resume { ptr, i32 } %.pn251
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(64) ptr @_ZN12aiMatrix4x4tIfE7InverseEv(ptr noundef nonnull align 4 dereferenceable(64) %0) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load float, ptr %0, align 4              ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.e = load float, ptr %i.d, align 4            ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.n = load float, ptr %i.m, align 4            ; 10 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load <2 x float>, ptr %i.b, align 4      ; 9 uses
  %i.s = extractelement <2 x float> %i.r, i64 0
  %i.t = fmul float %i.a, %i.s                    ; 2 uses
  %i.u = load <2 x float>, ptr %i.j, align 4      ; 7 uses
  %i.v = load <2 x float>, ptr %i.i, align 4      ; 4 uses
  %i.w = load float, ptr %i.g, align 4            ; 6 uses
  %i.x = shufflevector <2 x float> %i.v, <2 x float> %i.u, <4 x i32> <i32 1, i32 1, i32 1, i32 3> ; 2 uses
  %i.y = fneg <4 x float> %i.x                    ; 4 uses
  %i.z = extractelement <4 x float> %i.y, i64 0
  %i.aa = extractelement <2 x float> %i.v, i64 0  ; 7 uses
  %i.ab = extractelement <2 x float> %i.u, i64 0  ; 3 uses
  %i.ac = fneg float %i.ab                        ; 4 uses
  %i.ad = extractelement <4 x float> %i.y, i64 3  ; 3 uses
  %i.ae = load <2 x float>, ptr %i.l, align 4     ; 6 uses
  %i.af = extractelement <2 x float> %i.ae, i64 0
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ah = load <2 x float>, ptr %i.h, align 4     ; 12 uses
  %i.ai = load <2 x float>, ptr %i.c, align 4     ; 9 uses
  %i.aj = load float, ptr %i.f, align 4           ; 7 uses
  %i.ak = fneg float %i.aj                        ; 3 uses
  %i.al = extractelement <2 x float> %i.ai, i64 0 ; 2 uses
  %i.am = fmul float %i.t, %i.al
  %i.an = fmul float %i.t, %i.aj
  %i.ao = fmul float %i.an, %i.z
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.am, float %i.e, float %i.ao)
  %i.aq = extractelement <2 x float> %i.ah, i64 0
end_hunk_0
