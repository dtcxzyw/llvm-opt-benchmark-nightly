Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/3DSConverter?download=true
inline.NumInlined: 961
inline.NumDeleted: 441
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN6Assimp19Discreet3DSImporter14AddNodeToGraphEP7aiSceneP6aiNodePNS_4D3DS4NodeER12aiMatrix4x4tIfE:_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i

.lr.ph443:                                        ; preds = %.loopexit395
  %i.tl = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.pre490 = load ptr, ptr %i.tl, align 8
  %.pre492 = load i32, ptr %2, align 4
  br label %bb.av

.preheader:                                       ; preds = %_ZNK8aiStringeqERKS_.exit.thread, %.loopexit395
  %i.tn = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.to = load i32, ptr %i.tn, align 8            ; 2 uses
  %.not456 = icmp eq i32 %i.to, 0
  br i1 %.not456, label %._crit_edge446, label %.lr.ph445

.lr.ph445:                                        ; preds = %.preheader
  %i.tp = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.pre495 = load ptr, ptr %i.tp, align 8
  %.pre497 = load i32, ptr %2, align 4
  br label %bb.ax

bb.av:                                            ; preds = %.lr.ph443, %_ZNK8aiStringeqERKS_.exit.thread
  %i.tr = phi i32 [ %i.tk, %.lr.ph443 ], [ %i.uc, %_ZNK8aiStringeqERKS_.exit.thread ] ; 2 uses
  %i.ts = phi i32 [ %.pre492, %.lr.ph443 ], [ %i.ud, %_ZNK8aiStringeqERKS_.exit.thread ] ; 4 uses
  %i.tt = phi ptr [ %.pre490, %.lr.ph443 ], [ %i.ue, %_ZNK8aiStringeqERKS_.exit.thread ] ; 3 uses
  %indvars.iv464 = phi i64 [ 0, %.lr.ph443 ], [ %indvars.iv.next465, %_ZNK8aiStringeqERKS_.exit.thread ] ; 2 uses
  %i.tu = getelementptr inbounds nuw [8 x i8], ptr %i.tt, i64 %indvars.iv464
  %i.tv = load ptr, ptr %i.tu, align 8            ; 4 uses
  %i.tw = load i32, ptr %i.tv, align 4
  %i.tx = icmp eq i32 %i.tw, %i.ts
  br i1 %i.tx, label %_ZNK8aiStringeqERKS_.exit, label %_ZNK8aiStringeqERKS_.exit.thread

_ZNK8aiStringeqERKS_.exit:                        ; preds = %bb.av
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tv, i64 4
  %i.tz = zext i32 %i.ts to i64
  %bcmp.i267 = call i32 @bcmp(ptr nonnull %i.ty, ptr nonnull %i.tm, i64 %i.tz)
  %i.ua = icmp eq i32 %bcmp.i267, 0
  br i1 %i.ua, label %bb.aw, label %_ZNK8aiStringeqERKS_.exit.thread

bb.aw:                                            ; preds = %_ZNK8aiStringeqERKS_.exit
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tv, i64 1052
  store <2 x float> zeroinitializer, ptr %i.ub, align 4
  %.sroa.5312.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tv, i64 1060
  store float 1.000000e+00, ptr %.sroa.5312.0..sroa_idx, align 4
  %.pre489 = load ptr, ptr %i.tl, align 8
  %.pre491 = load i32, ptr %2, align 4
  %.pre493 = load i32, ptr %i.tj, align 8
  br label %_ZNK8aiStringeqERKS_.exit.thread

_ZNK8aiStringeqERKS_.exit.thread:                 ; preds = %bb.av, %_ZNK8aiStringeqERKS_.exit, %bb.aw
  %i.uc = phi i32 [ %i.tr, %bb.av ], [ %i.tr, %_ZNK8aiStringeqERKS_.exit ], [ %.pre493, %bb.aw ] ; 2 uses
  %i.ud = phi i32 [ %i.ts, %bb.av ], [ %i.ts, %_ZNK8aiStringeqERKS_.exit ], [ %.pre491, %bb.aw ]
  %i.ue = phi ptr [ %i.tt, %bb.av ], [ %i.tt, %_ZNK8aiStringeqERKS_.exit ], [ %.pre489, %bb.aw ]
  %indvars.iv.next465 = add nuw nsw i64 %indvars.iv464, 1 ; 2 uses
  %i.uf = zext i32 %i.uc to i64
  %i.ug = icmp samesign ult i64 %indvars.iv.next465, %i.uf
  br i1 %i.ug, label %bb.av, label %.preheader, !llvm.loop !34

._crit_edge446:                                   ; preds = %_ZNK8aiStringeqERKS_.exit270.thread, %.preheader
  %i.uh = invoke noalias noundef nonnull dereferenceable(1080) ptr @_Znwm(i64 noundef 1080) #28
          to label %bb.az unwind label %bb.bf     ; 10 uses

bb.ax:                                            ; preds = %.lr.ph445, %_ZNK8aiStringeqERKS_.exit270.thread
  %i.ui = phi i32 [ %i.to, %.lr.ph445 ], [ %i.ut, %_ZNK8aiStringeqERKS_.exit270.thread ] ; 2 uses
  %i.uj = phi i32 [ %.pre497, %.lr.ph445 ], [ %i.uu, %_ZNK8aiStringeqERKS_.exit270.thread ] ; 4 uses
  %i.uk = phi ptr [ %.pre495, %.lr.ph445 ], [ %i.uv, %_ZNK8aiStringeqERKS_.exit270.thread ] ; 3 uses
  %indvars.iv467 = phi i64 [ 0, %.lr.ph445 ], [ %indvars.iv.next468, %_ZNK8aiStringeqERKS_.exit270.thread ] ; 2 uses
  %i.ul = getelementptr inbounds nuw [8 x i8], ptr %i.uk, i64 %indvars.iv467
  %i.um = load ptr, ptr %i.ul, align 8            ; 4 uses
  %i.un = load i32, ptr %i.um, align 4
  %i.uo = icmp eq i32 %i.un, %i.uj
  br i1 %i.uo, label %_ZNK8aiStringeqERKS_.exit270, label %_ZNK8aiStringeqERKS_.exit270.thread

_ZNK8aiStringeqERKS_.exit270:                     ; preds = %bb.ax
  %i.up = getelementptr inbounds nuw i8, ptr %i.um, i64 4
  %i.uq = zext i32 %i.uj to i64
  %bcmp.i269 = call i32 @bcmp(ptr nonnull %i.up, ptr nonnull %i.tq, i64 %i.uq)
  %i.ur = icmp eq i32 %bcmp.i269, 0
  br i1 %i.ur, label %bb.ay, label %_ZNK8aiStringeqERKS_.exit270.thread

bb.ay:                                            ; preds = %_ZNK8aiStringeqERKS_.exit270
  %i.us = getelementptr inbounds nuw i8, ptr %i.um, i64 1044
  store <2 x float> zeroinitializer, ptr %i.us, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.um, i64 1052
  store float 1.000000e+00, ptr %.sroa.5.0..sroa_idx, align 4
  %.pre494 = load ptr, ptr %i.tp, align 8
  %.pre496 = load i32, ptr %2, align 4
  %.pre498 = load i32, ptr %i.tn, align 8
  br label %_ZNK8aiStringeqERKS_.exit270.thread

_ZNK8aiStringeqERKS_.exit270.thread:              ; preds = %bb.ax, %_ZNK8aiStringeqERKS_.exit270, %bb.ay
  %i.ut = phi i32 [ %i.ui, %bb.ax ], [ %i.ui, %_ZNK8aiStringeqERKS_.exit270 ], [ %.pre498, %bb.ay ] ; 2 uses
  %i.uu = phi i32 [ %i.uj, %bb.ax ], [ %i.uj, %_ZNK8aiStringeqERKS_.exit270 ], [ %.pre496, %bb.ay ]
  %i.uv = phi ptr [ %i.uk, %bb.ax ], [ %i.uk, %_ZNK8aiStringeqERKS_.exit270 ], [ %.pre494, %bb.ay ]
  %indvars.iv.next468 = add nuw nsw i64 %indvars.iv467, 1 ; 2 uses
  %i.uw = zext i32 %i.ut to i64
  %i.ux = icmp samesign ult i64 %indvars.iv.next468, %i.uw
  br i1 %i.ux, label %bb.ax, label %._crit_edge446, !llvm.loop !35

bb.az:                                            ; preds = %._crit_edge446
  %i.uy = getelementptr inbounds nuw i8, ptr %i.uh, i64 1048 ; 4 uses
  store ptr null, ptr %i.uy, align 8
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uh, i64 1056 ; 3 uses
  store i32 0, ptr %i.uz, align 8
  %i.va = getelementptr inbounds nuw i8, ptr %i.uh, i64 1064 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1080) %i.uh, i8 0, i64 1044, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.va, i8 0, i64 16, i1 false)
  %i.vb = getelementptr inbounds nuw i8, ptr %i.rd, i64 1056
  %i.vc = load ptr, ptr %i.vb, align 8
  %i.vd = getelementptr inbounds nuw i8, ptr %i.rd, i64 1048 ; 2 uses
  %i.ve = load i32, ptr %i.vd, align 8            ; 2 uses
  %i.vf = add i32 %i.ve, 1
  store i32 %i.vf, ptr %i.vd, align 8
  %i.vg = zext i32 %i.ve to i64
  %i.vh = getelementptr inbounds nuw [8 x i8], ptr %i.vc, i64 %i.vg
  store ptr %i.uh, ptr %i.vh, align 8
  %i.vi = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.vj = load i64, ptr %i.vi, align 8            ; 4 uses
  %i.vk = icmp ugt i64 %i.vj, 1023
  br i1 %i.vk, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit271, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.vl = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.vm = trunc nuw nsw i64 %i.vj to i32
  store i32 %i.vm, ptr %i.uh, align 8
  %i.vn = getelementptr inbounds nuw i8, ptr %i.uh, i64 4 ; 2 uses
  %i.vo = load ptr, ptr %i.vl, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.vn, ptr align 1 %i.vo, i64 %i.vj, i1 false)
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vn, i64 %i.vj
  store i8 0, ptr %i.vp, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit271

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit271: ; preds = %bb.az, %bb.ba
  %i.vq = load ptr, ptr %i.ox, align 8            ; 2 uses
  %i.vr = load ptr, ptr %i.oy, align 8            ; 2 uses
  %i.vs = icmp eq ptr %i.vq, %i.vr
  br i1 %i.vs, label %bb.bg, label %bb.bb

bb.bb:                                            ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit271
  %i.vt = ptrtoint ptr %i.vr to i64
  %i.vu = ptrtoint ptr %i.vq to i64
  %i.vv = sub i64 %i.vt, %i.vu
  %i.vw = sdiv exact i64 %i.vv, 24                ; 2 uses
  %i.vx = trunc i64 %i.vw to i32
  %i.vy = getelementptr inbounds nuw i8, ptr %i.uh, i64 1028 ; 2 uses
  store i32 %i.vx, ptr %i.vy, align 4
  %i.vz = and i64 %i.vw, 4294967295               ; 3 uses
  %i.wa = mul nuw nsw i64 %i.vz, 24
  %i.wb = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.wa) #28
          to label %bb.bc unwind label %bb.bf     ; 4 uses

bb.bc:                                            ; preds = %bb.bb
  %i.wc = icmp eq i64 %i.vz, 0
  br i1 %i.wc, label %.loopexit394, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.wd = getelementptr inbounds nuw [24 x i8], ptr %i.wb, i64 %i.vz
  br label %bb.be

bb.be:                                            ; preds = %bb.be, %bb.bd
  %i.we = phi ptr [ %i.wb, %bb.bd ], [ %i.wg, %bb.be ] ; 3 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.we, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.wf, align 4
  %i.wg = getelementptr inbounds nuw i8, ptr %i.we, i64 24 ; 2 uses
  %i.wh = icmp eq ptr %i.wg, %i.wd
  br i1 %i.wh, label %.loopexit394, label %bb.be

.loopexit394:                                     ; preds = %bb.be, %bb.bc
  %i.wi = getelementptr inbounds nuw i8, ptr %i.uh, i64 1032
  store ptr %i.wb, ptr %i.wi, align 8
  %i.wj = load ptr, ptr %i.ox, align 8
  %i.wk = load i32, ptr %i.vy, align 4
  %i.wl = zext i32 %i.wk to i64
  %i.wm = mul nuw nsw i64 %i.wl, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.wb, ptr nonnull align 8 %i.wj, i64 %i.wm, i1 false)
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bk, %bb.bh, %bb.bb, %._crit_edge446
  %i.wn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit278

bb.bg:                                            ; preds = %.loopexit394, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit271
  %i.wo = load ptr, ptr %i.kz, align 8            ; 2 uses
  %i.wp = load ptr, ptr %i.la, align 8            ; 2 uses
  %i.wq = icmp eq ptr %i.wo, %i.wp
  br i1 %i.wq, label %.loopexit392, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.wr = ptrtoint ptr %i.wp to i64
  %i.ws = ptrtoint ptr %i.wo to i64
  %i.wt = sub i64 %i.wr, %i.ws
  %i.wu = ashr exact i64 %i.wt, 5                 ; 3 uses
  %i.wv = trunc i64 %i.wu to i32
  %i.ww = getelementptr inbounds nuw i8, ptr %i.uh, i64 1040 ; 3 uses
  store i32 %i.wv, ptr %i.ww, align 8
  %i.wx = and i64 %i.wu, 4294967295               ; 4 uses
  %i.wy = shl nuw nsw i64 %i.wx, 5
  %i.wz = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.wy) #28
          to label %bb.bi unwind label %bb.bf     ; 7 uses

bb.bi:                                            ; preds = %bb.bh
  %i.xa = icmp eq i64 %i.wx, 0
  br i1 %i.xa, label %.loopexit393, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.xb = getelementptr inbounds nuw [32 x i8], ptr %i.wz, i64 %i.wx
  %i.xc = add nuw nsw i64 %i.wx, 576460752303423487
  %i.xd = and i64 %i.xc, 576460752303423487
  %xtraiter = and i64 %i.wu, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.bj, %.prol.preheader
  %i.xe = phi ptr [ %i.xh, %.prol.preheader ], [ %i.wz, %bb.bj ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.bj ]
  store double 0.000000e+00, ptr %i.xe, align 8
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.xf, align 8
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xe, i64 24
  store i32 1, ptr %i.xg, align 8
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xe, i64 32 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !36

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.bj
  %.unr = phi ptr [ %i.wz, %bb.bj ], [ %i.xh, %.prol.preheader ]
  %i.xi = icmp samesign ult i64 %i.xd, 7
  br i1 %i.xi, label %.loopexit393, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.xj = phi ptr [ %i.yh, %.new ], [ %.unr, %.prol.loopexit ] ; 25 uses
  store double 0.000000e+00, ptr %i.xj, align 8
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.xk, align 8
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xj, i64 24
  store i32 1, ptr %i.xl, align 8
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xj, i64 32
  store double 0.000000e+00, ptr %i.xm, align 8
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xj, i64 40
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.xn, align 8
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xj, i64 56
  store i32 1, ptr %i.xo, align 8
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xj, i64 64
  store double 0.000000e+00, ptr %i.xp, align 8
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xj, i64 72
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.xq, align 8
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xj, i64 88
  store i32 1, ptr %i.xr, align 8
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xj, i64 96
  store double 0.000000e+00, ptr %i.xs, align 8
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xj, i64 104
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.xt, align 8
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xj, i64 120
  store i32 1, ptr %i.xu, align 8
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xj, i64 128
  store double 0.000000e+00, ptr %i.xv, align 8
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xj, i64 136
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.xw, align 8
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xj, i64 152
  store i32 1, ptr %i.xx, align 8
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xj, i64 160
  store double 0.000000e+00, ptr %i.xy, align 8
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xj, i64 168
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.xz, align 8
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xj, i64 184
  store i32 1, ptr %i.ya, align 8
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xj, i64 192
  store double 0.000000e+00, ptr %i.yb, align 8
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xj, i64 200
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.yc, align 8
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xj, i64 216
  store i32 1, ptr %i.yd, align 8
  %i.ye = getelementptr inbounds nuw i8, ptr %i.xj, i64 224
  store double 0.000000e+00, ptr %i.ye, align 8
  %i.yf = getelementptr inbounds nuw i8, ptr %i.xj, i64 232
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.yf, align 8
  %i.yg = getelementptr inbounds nuw i8, ptr %i.xj, i64 248
  store i32 1, ptr %i.yg, align 8
  %i.yh = getelementptr inbounds nuw i8, ptr %i.xj, i64 256 ; 2 uses
  %i.yi = icmp eq ptr %i.yh, %i.xb
  br i1 %i.yi, label %.loopexit393, label %.new

.loopexit393:                                     ; preds = %.prol.loopexit, %.new, %bb.bi
  store ptr %i.wz, ptr %i.uy, align 8
  %i.yj = load i32, ptr %i.ww, align 8            ; 2 uses
  %.not457 = icmp eq i32 %i.yj, 0
  br i1 %.not457, label %.loopexit392, label %_ZN13aiQuaterniontIfE9NormalizeEv.exit.peel

_ZN13aiQuaterniontIfE9NormalizeEv.exit.peel:      ; preds = %.loopexit393
  %i.yk = load ptr, ptr %i.kz, align 8            ; 3 uses
  %.sroa.6.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.yk, i64 16
  %.sroa.6.0.copyload.peel = load <2 x float>, ptr %.sroa.6.0..sroa_idx.peel, align 8 ; 5 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yk, i64 8
  %.sroa.0.0.copyload.peel = load <2 x float>, ptr %i.yl, align 8 ; 4 uses
  %i.ym = load double, ptr %i.yk, align 8
  store double %i.ym, ptr %i.wz, align 8
  %.sroa.0.4.vec.extract289.peel = extractelement <2 x float> %.sroa.0.0.copyload.peel, i64 1 ; 2 uses
  %foldExtExtBinop569 = fmul <2 x float> %.sroa.6.0.copyload.peel, %.sroa.6.0.copyload.peel
  %i.yn = extractelement <2 x float> %foldExtExtBinop569, i64 0
  %i.yo = call float @llvm.fmuladd.f32(float %.sroa.0.4.vec.extract289.peel, float %.sroa.0.4.vec.extract289.peel, float %i.yn)
  %.sroa.15.12.vec.extract303.peel = extractelement <2 x float> %.sroa.6.0.copyload.peel, i64 1 ; 2 uses
  %i.yp = call float @llvm.fmuladd.f32(float %.sroa.15.12.vec.extract303.peel, float %.sroa.15.12.vec.extract303.peel, float %i.yo)
  %.sroa.0.0.vec.extract281.peel = extractelement <2 x float> %.sroa.0.0.copyload.peel, i64 0 ; 2 uses
  %i.yq = call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract281.peel, float %.sroa.0.0.vec.extract281.peel, float %i.yp)
  %i.yr = call noundef float @sqrtf(float noundef %i.yq) #24 ; 2 uses
  %i.ys = fcmp une float %i.yr, 0.000000e+00      ; 2 uses
  %i.yt = fdiv float 1.000000e+00, %i.yr
  %i.yu = insertelement <2 x float> poison, float %i.yt, i64 0
  %i.yv = shufflevector <2 x float> %i.yu, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.yw = fmul <2 x float> %.sroa.6.0.copyload.peel, %i.yv
  %i.yx = fmul <2 x float> %.sroa.0.0.copyload.peel, %i.yv
  %.sroa.15.1.peel = select i1 %i.ys, <2 x float> %i.yw, <2 x float> %.sroa.6.0.copyload.peel ; 2 uses
  %.sroa.0.1.peel = select i1 %i.ys, <2 x float> %i.yx, <2 x float> %.sroa.0.0.copyload.peel ; 2 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %i.wz, i64 8
  store <2 x float> %.sroa.0.1.peel, ptr %i.yy, align 8
  %.sroa.15.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.wz, i64 16
  store <2 x float> %.sroa.15.1.peel, ptr %.sroa.15.0..sroa_idx.peel, align 8
  %.not544 = icmp eq i32 %i.yj, 1
  br i1 %.not544, label %.loopexit392, label %.lr.ph451.peel.next

.lr.ph451.peel.next:                              ; preds = %_ZN13aiQuaterniontIfE9NormalizeEv.exit.peel, %.lr.ph451.peel.next
  %indvars.iv470 = phi i64 [ %indvars.iv.next471, %.lr.ph451.peel.next ], [ 1, %_ZN13aiQuaterniontIfE9NormalizeEv.exit.peel ] ; 4 uses
  %.sroa.0.0381448 = phi <2 x float> [ %.sroa.0.1, %.lr.ph451.peel.next ], [ %.sroa.0.1.peel, %_ZN13aiQuaterniontIfE9NormalizeEv.exit.peel ] ; 4 uses
  %.sroa.15.0447 = phi <2 x float> [ %.sroa.15.1, %.lr.ph451.peel.next ], [ %.sroa.15.1.peel, %_ZN13aiQuaterniontIfE9NormalizeEv.exit.peel ] ; 5 uses
  %i.yz = load ptr, ptr %i.kz, align 8
  %i.za = getelementptr inbounds nuw [32 x i8], ptr %i.yz, i64 %indvars.iv470 ; 3 uses
  %.sroa.15.12.vec.extract = extractelement <2 x float> %.sroa.15.0447, i64 1
  %i.zb = getelementptr inbounds nuw i8, ptr %i.za, i64 16
  %i.zc = getelementptr inbounds nuw i8, ptr %i.za, i64 8
  %i.zd = fneg float %.sroa.15.12.vec.extract
  %i.ze = load <2 x float>, ptr %i.zb, align 4    ; 4 uses
  %i.zf = shufflevector <2 x float> %i.ze, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.zg = load <2 x float>, ptr %i.zc, align 4    ; 6 uses
  %i.zh = shufflevector <2 x float> %.sroa.0.0381448, <2 x float> %.sroa.15.0447, <2 x i32> <i32 1, i32 2>
  %i.zi = fneg <2 x float> %i.zh                  ; 2 uses
  %i.zj = shufflevector <2 x float> %i.zg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zk = fmul <2 x float> %.sroa.15.0447, %i.zj
  %i.zl = shufflevector <2 x float> %.sroa.0.0381448, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.zm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zl, <2 x float> %i.ze, <2 x float> %i.zk)
  %i.zn = shufflevector <2 x float> %.sroa.15.0447, <2 x float> %.sroa.0.0381448, <2 x i32> <i32 1, i32 3>
  %i.zo = shufflevector <2 x float> %i.zg, <2 x float> %i.ze, <2 x i32> <i32 1, i32 2>
  %i.zp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zn, <2 x float> %i.zo, <2 x float> %i.zm)
  %i.zq = shufflevector <2 x float> %i.zf, <2 x float> %i.zg, <2 x i32> <i32 0, i32 3>
  %i.zr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zi, <2 x float> %i.zq, <2 x float> %i.zp) ; 5 uses
  %i.zs = shufflevector <2 x float> %.sroa.0.0381448, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.zt = fneg <2 x float> %i.zg
  %i.zu = shufflevector <2 x float> %i.zt, <2 x float> %i.zg, <2 x i32> <i32 1, i32 2>
  %i.zv = fmul <2 x float> %i.zs, %i.zu
  %i.zw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zl, <2 x float> %i.zg, <2 x float> %i.zv)
  %i.zx = shufflevector <2 x float> %i.zi, <2 x float> %.sroa.15.0447, <2 x i32> <i32 1, i32 2>
  %i.zy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zx, <2 x float> %i.ze, <2 x float> %i.zw)
  %i.zz = insertelement <2 x float> poison, float %i.zd, i64 0
  %i.aaa = shufflevector <2 x float> %i.zz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aab = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aaa, <2 x float> %i.zf, <2 x float> %i.zy) ; 4 uses
  %i.aac = load double, ptr %i.za, align 8
  %i.aad = load ptr, ptr %i.uy, align 8
  %i.aae = getelementptr inbounds nuw [32 x i8], ptr %i.aad, i64 %indvars.iv470
  store double %i.aac, ptr %i.aae, align 8
  %foldExtExtBinop571 = fmul <2 x float> %i.zr, %i.zr
  %i.aaf = extractelement <2 x float> %foldExtExtBinop571, i64 0
  %i.aag = extractelement <2 x float> %i.aab, i64 1 ; 2 uses
  %i.aah = call float @llvm.fmuladd.f32(float %i.aag, float %i.aag, float %i.aaf)
  %i.aai = extractelement <2 x float> %i.zr, i64 1 ; 2 uses
  %i.aaj = call float @llvm.fmuladd.f32(float %i.aai, float %i.aai, float %i.aah)
  %i.aak = extractelement <2 x float> %i.aab, i64 0 ; 2 uses
  %i.aal = call float @llvm.fmuladd.f32(float %i.aak, float %i.aak, float %i.aaj)
  %i.aam = call noundef float @sqrtf(float noundef %i.aal) #24 ; 2 uses
  %i.aan = fcmp une float %i.aam, 0.000000e+00    ; 2 uses
  %i.aao = fdiv float 1.000000e+00, %i.aam
  %i.aap = insertelement <2 x float> poison, float %i.aao, i64 0
  %i.aaq = shufflevector <2 x float> %i.aap, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aar = fmul <2 x float> %i.zr, %i.aaq
  %i.aas = fmul <2 x float> %i.aab, %i.aaq
  %.sroa.15.1 = select i1 %i.aan, <2 x float> %i.aar, <2 x float> %i.zr ; 2 uses
  %.sroa.0.1 = select i1 %i.aan, <2 x float> %i.aas, <2 x float> %i.aab ; 2 uses
  %i.aat = load ptr, ptr %i.uy, align 8
  %i.aau = getelementptr inbounds nuw [32 x i8], ptr %i.aat, i64 %indvars.iv470 ; 2 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aau, i64 8
  store <2 x float> %.sroa.0.1, ptr %i.aav, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aau, i64 16
  store <2 x float> %.sroa.15.1, ptr %.sroa.15.0..sroa_idx, align 8
  %indvars.iv.next471 = add nuw nsw i64 %indvars.iv470, 1 ; 2 uses
  %i.aaw = load i32, ptr %i.ww, align 8
  %i.aax = zext i32 %i.aaw to i64
  %i.aay = icmp samesign ult i64 %indvars.iv.next471, %i.aax
  br i1 %i.aay, label %.lr.ph451.peel.next, label %.loopexit392, !llvm.loop !37

.loopexit392:                                     ; preds = %.lr.ph451.peel.next, %_ZN13aiQuaterniontIfE9NormalizeEv.exit.peel, %.loopexit393, %bb.bg
  %i.aaz = load ptr, ptr %i.ng, align 8           ; 2 uses
  %i.aba = load ptr, ptr %i.nh, align 8           ; 2 uses
  %i.abb = icmp eq ptr %i.aaz, %i.aba
  br i1 %i.abb, label %bb.bo, label %bb.bk

bb.bk:                                            ; preds = %.loopexit392
  %i.abc = ptrtoint ptr %i.aba to i64
  %i.abd = ptrtoint ptr %i.aaz to i64
  %i.abe = sub i64 %i.abc, %i.abd
  %i.abf = sdiv exact i64 %i.abe, 24              ; 2 uses
  %i.abg = trunc i64 %i.abf to i32
  store i32 %i.abg, ptr %i.uz, align 8
  %i.abh = and i64 %i.abf, 4294967295             ; 3 uses
  %i.abi = mul nuw nsw i64 %i.abh, 24
  %i.abj = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.abi) #28
          to label %bb.bl unwind label %bb.bf     ; 4 uses

bb.bl:                                            ; preds = %bb.bk
  %i.abk = icmp eq i64 %i.abh, 0
  br i1 %i.abk, label %.loopexit391, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.abl = getelementptr inbounds nuw [24 x i8], ptr %i.abj, i64 %i.abh
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bn, %bb.bm
  %i.abm = phi ptr [ %i.abj, %bb.bm ], [ %i.abo, %bb.bn ] ; 3 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.abm, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.abn, align 4
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abm, i64 24 ; 2 uses
  %i.abp = icmp eq ptr %i.abo, %i.abl
  br i1 %i.abp, label %.loopexit391, label %bb.bn

.loopexit391:                                     ; preds = %bb.bn, %bb.bl
  store ptr %i.abj, ptr %i.va, align 8
  %i.abq = load ptr, ptr %i.ng, align 8
  %i.abr = load i32, ptr %i.uz, align 8
  %i.abs = zext i32 %i.abr to i64
  %i.abt = mul nuw nsw i64 %i.abs, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.abj, ptr nonnull align 8 %i.abq, i64 %i.abt, i1 false)
  br label %bb.bo

bb.bo:                                            ; preds = %.loopexit392, %.loopexit391, %bb.am
  %i.abu = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.abv = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.abw = load ptr, ptr %i.abv, align 8
  %i.abx = load ptr, ptr %i.abu, align 8
  %i.aby = ptrtoint ptr %i.abw to i64
  %i.abz = ptrtoint ptr %i.abx to i64
  %i.aca = sub i64 %i.aby, %i.abz
  %i.acb = lshr exact i64 %i.aca, 3               ; 2 uses
  %i.acc = trunc i64 %i.acb to i32                ; 2 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %2, i64 1104
  store i32 %i.acc, ptr %i.acd, align 8
  %i.ace = icmp eq i32 %i.acc, 0
  br i1 %i.ace, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.acf = load ptr, ptr %i.abv, align 8
  %i.acg = load ptr, ptr %i.abu, align 8
  %i.ach = ptrtoint ptr %i.acf to i64
  %i.aci = ptrtoint ptr %i.acg to i64
  %i.acj = sub i64 %i.ach, %i.aci
  %i.ack = call i64 @llvm.smax.i64(i64 %i.acj, i64 -1)
  %i.acl = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ack) #28
          to label %bb.bq unwind label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.acm = getelementptr inbounds nuw i8, ptr %2, i64 1112 ; 4 uses
  store ptr %i.acl, ptr %i.acm, align 8
  %wide.trip.count = and i64 %i.acb, 4294967295
  br label %bb.bs

bb.br:                                            ; preds = %bb.bp
  %i.acn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit278

bb.bs:                                            ; preds = %bb.bq, %bb.bv
  %indvars.iv474 = phi i64 [ 0, %bb.bq ], [ %indvars.iv.next475, %bb.bv ] ; 5 uses
  %i.aco = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #28
          to label %bb.bt unwind label %bb.bw     ; 3 uses

bb.bt:                                            ; preds = %bb.bs
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.aco)
          to label %bb.bu unwind label %bb.bx

bb.bu:                                            ; preds = %bb.bt
  %i.acp = load ptr, ptr %i.acm, align 8
  %i.acq = getelementptr inbounds nuw [8 x i8], ptr %i.acp, i64 %indvars.iv474
  store ptr %i.aco, ptr %i.acq, align 8
  %i.acr = load ptr, ptr %i.acm, align 8
  %i.acs = getelementptr inbounds nuw [8 x i8], ptr %i.acr, i64 %indvars.iv474
  %i.act = load ptr, ptr %i.acs, align 8
  %i.acu = getelementptr inbounds nuw i8, ptr %i.act, i64 1096
  store ptr %2, ptr %i.acu, align 8
  %i.acv = load ptr, ptr %i.acm, align 8
  %i.acw = getelementptr inbounds nuw [8 x i8], ptr %i.acv, i64 %indvars.iv474
  %i.acx = load ptr, ptr %i.acw, align 8
  %i.acy = load ptr, ptr %i.abu, align 8
  %i.acz = getelementptr inbounds nuw [8 x i8], ptr %i.acy, i64 %indvars.iv474
  %i.ada = load ptr, ptr %i.acz, align 8
  invoke void @_ZN6Assimp19Discreet3DSImporter14AddNodeToGraphEP7aiSceneP6aiNodePNS_4D3DS4NodeER12aiMatrix4x4tIfE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1, ptr noundef %i.acx, ptr noundef %i.ada, ptr nonnull align 4 poison)
          to label %bb.bv unwind label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %indvars.iv.next475 = add nuw nsw i64 %indvars.iv474, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next475, %wide.trip.count
  br i1 %exitcond.not, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.bs, !llvm.loop !38

bb.bw:                                            ; preds = %bb.bu, %bb.bs
  %i.adb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit278

bb.bx:                                            ; preds = %bb.bt
  %i.adc = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.aco, i64 noundef 1144) #26
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit278

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.bv, %bb.bo
  %i.add = ptrtoint ptr %.sroa.28.0.lcssa548 to i64
  %i.ade = ptrtoint ptr %.sroa.0357.0.lcssa552 to i64
  %i.adf = sub i64 %i.add, %i.ade
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0357.0.lcssa552, i64 noundef %i.adf) #26
  ret void

_ZNSt6vectorIjSaIjEED2Ev.exit278:                 ; preds = %.loopexit398, %.loopexit.split-lp, %bb.r, %.body, %bb.br, %bb.bx, %bb.bw, %bb.au, %bb.bf
  %.sroa.28.0407 = phi ptr [ %.sroa.28.0.lcssa548, %bb.br ], [ %.sroa.28.1, %bb.r ], [ %.sroa.28.0.lcssa548, %bb.bx ], [ %.sroa.28.0.lcssa548, %.body ], [ %.sroa.28.0.lcssa548, %bb.bw ], [ %.sroa.28.0.lcssa548, %bb.au ], [ %.sroa.28.0.lcssa548, %bb.bf ], [ %.sroa.17368.0410, %.loopexit398 ], [ %.sroa.17368.0410, %.loopexit.split-lp ]
  %.sroa.0357.0401 = phi ptr [ %.sroa.0357.0.lcssa552, %bb.br ], [ %.sroa.0357.1, %bb.r ], [ %.sroa.0357.0.lcssa552, %bb.bx ], [ %.sroa.0357.0.lcssa552, %.body ], [ %.sroa.0357.0.lcssa552, %bb.bw ], [ %.sroa.0357.0.lcssa552, %bb.au ], [ %.sroa.0357.0.lcssa552, %bb.bf ], [ %.sroa.0357.0411, %.loopexit398 ], [ %.sroa.0357.0411, %.loopexit.split-lp ] ; 2 uses
  %.pn251 = phi { ptr, i32 } [ %i.acn, %bb.br ], [ %.pn.pn, %bb.r ], [ %i.adc, %bb.bx ], [ %.pn235, %.body ], [ %i.adb, %bb.bw ], [ %i.sf, %bb.au ], [ %i.wn, %bb.bf ], [ %lpad.loopexit, %.loopexit398 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.adg = ptrtoint ptr %.sroa.28.0407 to i64
  %i.adh = ptrtoint ptr %.sroa.0357.0401 to i64
  %i.adi = sub i64 %i.adg, %i.adh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0357.0401, i64 noundef %i.adi) #26
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
  %i.ar = fmul float %i.a, %i.aq                  ; 2 uses
  %i.as = fmul float %i.aj, %i.ar
  %i.at = tail call float @llvm.fmuladd.f32(float %i.as, float %i.aa, float %i.ap)
  %i.au = fmul float %i.ar, %i.ac
  %i.av = tail call float @llvm.fmuladd.f32(float %i.au, float %i.e, float %i.at)
  %foldExtExtBinop = fmul <2 x float> %i.ah, %i.ae
  %i.aw = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
end_hunk_0
