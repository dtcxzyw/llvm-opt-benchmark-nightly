inline.NumInlined: 10360
inline.NumDeleted: 3521
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 68
loop-unroll.NumUnrolled: 83
begin_hunk_0_@_ZN6Assimp13glTF2Importer12ImportMeshesERN5glTF25AssetE:bb.a
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 296
  %i.uj = load i64, ptr %i.ui, align 8
  %.not = icmp eq i64 %i.uj, %.0446
  br i1 %.not, label %bb.ch, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.uk = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.cg unwind label %bb.bw

bb.cg:                                            ; preds = %bb.cf
  invoke void @_ZN6Assimp6Logger4warnIJRA23_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA52_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.uk, ptr noundef nonnull align 1 dereferenceable(23) @.str.8, ptr noundef nonnull align 8 dereferenceable(32) %i.gk, ptr noundef nonnull align 1 dereferenceable(52) @.str.9)
          to label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit611.thread unwind label %bb.bw

bb.ch:                                            ; preds = %bb.ce
  %i.ul = getelementptr inbounds nuw i8, ptr %i.pl, i64 24 ; 2 uses
  %i.um = invoke noundef i64 @_ZN5glTF28Accessor11ExtractDataI10aiVector3tIfEEEmRPT_PKSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(376) %i.uh, ptr noundef nonnull align 8 dereferenceable(8) %i.ul, ptr noundef %.0450)
          to label %bb.ci unwind label %bb.bw     ; 0 uses

bb.ci:                                            ; preds = %bb.ch
  %i.un = getelementptr inbounds nuw i8, ptr %i.hb, i64 56
  %i.uo = load ptr, ptr %i.un, align 8            ; 3 uses
  %i.up = getelementptr inbounds nuw i8, ptr %i.hb, i64 64
  %i.uq = load ptr, ptr %i.up, align 8
  %i.ur = icmp eq ptr %i.uo, %i.uq
  br i1 %i.ur, label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit611.thread, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.us = load ptr, ptr %i.uo, align 8            ; 3 uses
  %.not.i612 = icmp eq ptr %i.us, null
  br i1 %.not.i612, label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit611.thread, label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit613

_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit613: ; preds = %bb.cj
  %i.ut = getelementptr inbounds nuw i8, ptr %i.uo, i64 8
  %i.uu = load i32, ptr %i.ut, align 8
  %i.uv = zext i32 %i.uu to i64                   ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %i.us, i64 8
  %i.ux = load ptr, ptr %i.uw, align 8
  %i.uy = load ptr, ptr %i.us, align 8            ; 2 uses
  %i.uz = ptrtoint ptr %i.ux to i64
  %i.va = ptrtoint ptr %i.uy to i64
  %i.vb = sub i64 %i.uz, %i.va
  %i.vc = ashr exact i64 %i.vb, 3
  %i.vd = icmp ugt i64 %i.vc, %i.uv
  br i1 %i.vd, label %bb.ck, label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit611.thread

bb.ck:                                            ; preds = %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit613
  %i.ve = getelementptr inbounds nuw [8 x i8], ptr %i.uy, i64 %i.uv
  %i.vf = load ptr, ptr %i.ve, align 8            ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 296
  %i.vh = load i64, ptr %i.vg, align 8
  %.not501 = icmp eq i64 %i.vh, %.0446
  br i1 %.not501, label %bb.cn, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.vi = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.cm unwind label %bb.bw

bb.cm:                                            ; preds = %bb.cl
  invoke void @_ZN6Assimp6Logger4warnIJRA24_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA53_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.vi, ptr noundef nonnull align 1 dereferenceable(24) @.str.10, ptr noundef nonnull align 8 dereferenceable(32) %i.gk, ptr noundef nonnull align 1 dereferenceable(53) @.str.11)
          to label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit611.thread unwind label %bb.bw

bb.cn:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #34
  store ptr null, ptr %i.g, align 8
  invoke fastcc void @_ZN5glTF28Accessor11ExtractDataIN12_GLOBAL__N_17TangentEEEmRPT_PKSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(376) %i.vf, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %.0450)
          to label %bb.co unwind label %bb.cr

bb.co:                                            ; preds = %bb.cn
  %i.vj = load i32, ptr %i.pm, align 4            ; 2 uses
  %i.vk = zext i32 %i.vj to i64
  %i.vl = mul nuw nsw i64 %i.vk, 12               ; 4 uses
  %i.vm = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.vl) #37
          to label %bb.cp unwind label %bb.cr     ; 2 uses

bb.cp:                                            ; preds = %bb.co
  %i.vn = icmp eq i32 %i.vj, 0                    ; 2 uses
  br i1 %i.vn, label %.loopexit1136, label %.loopexit1136.loopexit

.loopexit1136.loopexit:                           ; preds = %bb.cp
  %i.vo = add nsw i64 %i.vl, -12                  ; 2 uses
  %i.vp = urem i64 %i.vo, 12
  %i.vq = sub nuw nsw i64 %i.vo, %i.vp
  %i.vr = add nsw i64 %i.vq, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.vm, i8 0, i64 %i.vr, i1 false)
  br label %.loopexit1136

.loopexit1136:                                    ; preds = %.loopexit1136.loopexit, %bb.cp
  %i.vs = getelementptr inbounds nuw i8, ptr %i.pl, i64 32 ; 2 uses
  store ptr %i.vm, ptr %i.vs, align 8
  %i.vt = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.vl) #37
          to label %bb.cq unwind label %bb.cr     ; 3 uses

bb.cq:                                            ; preds = %.loopexit1136
  br i1 %i.vn, label %._crit_edge2117, label %.lr.ph2116

.lr.ph2116:                                       ; preds = %bb.cq
  %i.vu = add nsw i64 %i.vl, -12                  ; 2 uses
  %i.vv = urem i64 %i.vu, 12
  %i.vw = sub nuw nsw i64 %i.vu, %i.vv
  %i.vx = add nsw i64 %i.vw, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.vt, i8 0, i64 %i.vx, i1 false)
  %i.vy = getelementptr inbounds nuw i8, ptr %i.pl, i64 40 ; 2 uses
  store ptr %i.vt, ptr %i.vy, align 8
  %.pre = load ptr, ptr %i.g, align 8             ; 2 uses
  br label %bb.cs

._crit_edge2117:                                  ; preds = %bb.cq
  %i.vz = getelementptr inbounds nuw i8, ptr %i.pl, i64 40
  store ptr %i.vt, ptr %i.vz, align 8
  %.pre3108 = load ptr, ptr %i.g, align 8         ; 2 uses
  %i.wa = icmp eq ptr %.pre3108, null
  br i1 %i.wa, label %bb.ct, label %._crit_edge2117.thread

bb.cr:                                            ; preds = %bb.cn, %.loopexit1136, %bb.co
  %i.wb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #34
  br label %bb.jn

bb.cs:                                            ; preds = %.lr.ph2116, %bb.cs
  %indvars.iv2918 = phi i64 [ 0, %.lr.ph2116 ], [ %indvars.iv.next2919, %bb.cs ] ; 5 uses
  %i.wc = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %indvars.iv2918 ; 4 uses
  %i.wd = load ptr, ptr %i.vs, align 8
  %i.we = getelementptr inbounds nuw [12 x i8], ptr %i.wd, i64 %indvars.iv2918
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.we, ptr noundef nonnull align 4 dereferenceable(12) %i.wc, i64 12, i1 false)
  %i.wf = load ptr, ptr %i.ul, align 8
  %i.wg = getelementptr inbounds nuw [12 x i8], ptr %i.wf, i64 %indvars.iv2918 ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 4
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wc, i64 4
  %i.wj = load float, ptr %i.wc, align 4          ; 2 uses
  %i.wk = load float, ptr %i.wg, align 4          ; 2 uses
  %i.wl = fneg float %i.wj
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wc, i64 12
  %i.wn = load float, ptr %i.wm, align 4          ; 2 uses
  %i.wo = load <2 x float>, ptr %i.wh, align 4    ; 3 uses
  %i.wp = load <2 x float>, ptr %i.wi, align 4    ; 3 uses
  %i.wq = fneg <2 x float> %i.wp
  %i.wr = shufflevector <2 x float> %i.wo, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ws = insertelement <2 x float> %i.wr, float %i.wk, i64 1
  %i.wt = fmul <2 x float> %i.ws, %i.wq
  %i.wu = shufflevector <2 x float> %i.wp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.wv = insertelement <2 x float> %i.wu, float %i.wj, i64 1
  %i.ww = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wo, <2 x float> %i.wv, <2 x float> %i.wt)
  %i.wx = extractelement <2 x float> %i.wo, i64 0
  %i.wy = fmul float %i.wx, %i.wl
  %i.wz = extractelement <2 x float> %i.wp, i64 0
  %i.xa = call float @llvm.fmuladd.f32(float %i.wk, float %i.wz, float %i.wy)
  %i.xb = insertelement <2 x float> poison, float %i.wn, i64 0
  %i.xc = shufflevector <2 x float> %i.xb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xd = fmul <2 x float> %i.ww, %i.xc
  %i.xe = fmul float %i.wn, %i.xa
  %i.xf = load ptr, ptr %i.vy, align 8
  %i.xg = getelementptr inbounds nuw [12 x i8], ptr %i.xf, i64 %indvars.iv2918 ; 2 uses
  store <2 x float> %i.xd, ptr %i.xg, align 4
  %.sroa.5210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xg, i64 8
  store float %i.xe, ptr %.sroa.5210.0..sroa_idx, align 4
  %indvars.iv.next2919 = add nuw nsw i64 %indvars.iv2918, 1 ; 2 uses
  %i.xh = load i32, ptr %i.pm, align 4
  %i.xi = zext i32 %i.xh to i64
  %i.xj = icmp samesign ult i64 %indvars.iv.next2919, %i.xi
  br i1 %i.xj, label %bb.cs, label %._crit_edge2117.thread, !llvm.loop !48

._crit_edge2117.thread:                           ; preds = %bb.cs, %._crit_edge2117
  %.pre31093111 = phi ptr [ %.pre3108, %._crit_edge2117 ], [ %.pre, %bb.cs ]
  call void @_ZdaPv(ptr noundef nonnull %.pre31093111) #35
  br label %bb.ct

bb.ct:                                            ; preds = %._crit_edge2117.thread, %._crit_edge2117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #34
  br label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit611.thread

_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit611.thread: ; preds = %bb.cj, %bb.cd, %bb.cg, %bb.ct, %bb.cm, %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit613, %bb.ci, %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit611, %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit609.thread
  %i.xk = getelementptr inbounds nuw i8, ptr %i.hb, i64 104 ; 2 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %i.hb, i64 112 ; 2 uses
  %i.xm = load ptr, ptr %i.xl, align 8
  %i.xn = load ptr, ptr %i.xk, align 8            ; 2 uses
  %.not2244 = icmp eq ptr %i.xm, %i.xn
  br i1 %.not2244, label %.preheader1134, label %.lr.ph2119

.lr.ph2119:                                       ; preds = %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit611.thread
  %i.xo = getelementptr inbounds nuw i8, ptr %i.pl, i64 48 ; 2 uses
  br label %bb.cu

.preheader1134:                                   ; preds = %bb.df, %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit611.thread
  %i.xp = getelementptr inbounds nuw i8, ptr %i.hb, i64 80 ; 3 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %i.hb, i64 88 ; 2 uses
  %i.xr = load ptr, ptr %i.xq, align 8
  %i.xs = load ptr, ptr %i.xp, align 8            ; 2 uses
  %.not2245 = icmp eq ptr %i.xr, %i.xs
  br i1 %.not2245, label %._crit_edge2126, label %.lr.ph2125

.lr.ph2125:                                       ; preds = %.preheader1134
  %i.xt = getelementptr inbounds nuw i8, ptr %i.pl, i64 112
  %i.xu = getelementptr inbounds nuw i8, ptr %i.pl, i64 176
  br label %bb.dg

bb.cu:                                            ; preds = %.lr.ph2119, %bb.df
  %i.xv = phi ptr [ %i.xn, %.lr.ph2119 ], [ %i.afu, %bb.df ]
  %.04552118 = phi i64 [ 0, %.lr.ph2119 ], [ %i.afs, %bb.df ] ; 5 uses
  %i.xw = getelementptr inbounds nuw [16 x i8], ptr %i.xv, i64 %.04552118 ; 2 uses
  %i.xx = load ptr, ptr %i.xw, align 8            ; 3 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xw, i64 8
  %i.xz = load i32, ptr %i.xy, align 8
  %i.ya = zext i32 %i.xz to i64                   ; 3 uses
  %i.yb = load ptr, ptr %i.xx, align 8
  %i.yc = getelementptr inbounds nuw [8 x i8], ptr %i.yb, i64 %i.ya
  %i.yd = load ptr, ptr %i.yc, align 8            ; 5 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 296
  %i.yf = load i64, ptr %i.ye, align 8
  %.not532 = icmp eq i64 %i.yf, %.0446
  br i1 %.not532, label %bb.cy, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.yg = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.cw unwind label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  invoke void @_ZN6Assimp6Logger4warnIJRA28_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA34_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.yg, ptr noundef nonnull align 1 dereferenceable(28) @.str.12, ptr noundef nonnull align 8 dereferenceable(32) %i.gk, ptr noundef nonnull align 1 dereferenceable(34) @.str.13)
          to label %bb.df unwind label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %i.yh = landingpad { ptr, i32 }
          cleanup
  br label %bb.jn

bb.cy:                                            ; preds = %bb.cu
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yd, i64 288
  %i.yj = load i32, ptr %i.yi, align 8
  switch i32 %i.yj, label %bb.df [
    i32 5126, label %bb.cz
    i32 5121, label %bb.db
    i32 5123, label %bb.dd
  ]

bb.cz:                                            ; preds = %bb.cy
  %i.yk = getelementptr inbounds nuw [8 x i8], ptr %i.xo, i64 %.04552118
  %i.yl = invoke noundef i64 @_ZN5glTF28Accessor11ExtractDataI9aiColor4tIfEEEmRPT_PKSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(376) %i.yd, ptr noundef nonnull align 8 dereferenceable(8) %i.yk, ptr noundef %.0450)
          to label %bb.df unwind label %bb.da     ; 0 uses

bb.da:                                            ; preds = %.noexc633, %bb.dd, %.noexc620, %bb.db, %bb.cz
  %i.ym = landingpad { ptr, i32 }
          cleanup
  br label %bb.jn

bb.db:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  %i.yn = invoke noundef i64 @_ZN5glTF28Accessor11ExtractDataI9aiColor4tIhEEEmRPT_PKSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(376) %i.yd, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %.0450)
          to label %.noexc620 unwind label %bb.da ; 0 uses

.noexc620:                                        ; preds = %bb.db
  %i.yo = load ptr, ptr %i.xx, align 8
  %i.yp = getelementptr inbounds nuw [8 x i8], ptr %i.yo, i64 %i.ya
  %i.yq = load ptr, ptr %i.yp, align 8
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 296
  %i.ys = load i64, ptr %i.yr, align 8            ; 11 uses
  %i.yt = icmp ugt i64 %i.ys, 1152921504606846975
  %i.yu = shl i64 %i.ys, 4                        ; 2 uses
  %i.yv = select i1 %i.yt, i64 -1, i64 %i.yu
  %i.yw = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.yv) #37
          to label %.noexc621 unwind label %bb.da ; 8 uses

.noexc621:                                        ; preds = %.noexc620
  %i.yx = icmp eq i64 %i.ys, 0
  br i1 %i.yx, label %._crit_edge.i, label %.lr.ph.i618

.lr.ph.i618:                                      ; preds = %.noexc621
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.yw, i8 0, i64 %i.yu, i1 false)
  %.pre.i619 = load ptr, ptr %i.e, align 8        ; 12 uses
  %min.iters.check = icmp ult i64 %i.ys, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i618
  %i.yy = shl i64 %i.ys, 4
  %scevgep = getelementptr i8, ptr %i.yw, i64 %i.yy
  %i.yz = shl i64 %i.ys, 2
  %scevgep4603 = getelementptr i8, ptr %.pre.i619, i64 %i.yz
  %bound0 = icmp ult ptr %i.yw, %scevgep4603
  %bound1 = icmp ult ptr %.pre.i619, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ys, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.za = getelementptr inbounds nuw [4 x i8], ptr %.pre.i619, i64 %index ; 4 uses
  %i.zb = getelementptr inbounds nuw [4 x i8], ptr %.pre.i619, i64 %index ; 4 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 4
  %i.zd = getelementptr inbounds nuw [4 x i8], ptr %.pre.i619, i64 %index ; 4 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zd, i64 8
  %i.zf = getelementptr inbounds nuw [4 x i8], ptr %.pre.i619, i64 %index ; 4 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 12
  %i.zh = load i8, ptr %i.za, align 1, !alias.scope !49
  %i.zi = load i8, ptr %i.zc, align 1, !alias.scope !49
  %i.zj = load i8, ptr %i.ze, align 1, !alias.scope !49
  %i.zk = load i8, ptr %i.zg, align 1, !alias.scope !49
  %i.zl = insertelement <4 x i8> poison, i8 %i.zh, i64 0
  %i.zm = insertelement <4 x i8> %i.zl, i8 %i.zi, i64 1
  %i.zn = insertelement <4 x i8> %i.zm, i8 %i.zj, i64 2
  %i.zo = insertelement <4 x i8> %i.zn, i8 %i.zk, i64 3
  %i.zp = uitofp <4 x i8> %i.zo to <4 x float>
  %i.zq = getelementptr inbounds nuw i8, ptr %i.za, i64 1
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zb, i64 5
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zd, i64 9
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zf, i64 13
  %i.zu = load i8, ptr %i.zq, align 1, !alias.scope !49
  %i.zv = load i8, ptr %i.zr, align 1, !alias.scope !49
  %i.zw = load i8, ptr %i.zs, align 1, !alias.scope !49
  %i.zx = load i8, ptr %i.zt, align 1, !alias.scope !49
  %i.zy = insertelement <4 x i8> poison, i8 %i.zu, i64 0
  %i.zz = insertelement <4 x i8> %i.zy, i8 %i.zv, i64 1
  %i.aaa = insertelement <4 x i8> %i.zz, i8 %i.zw, i64 2
  %i.aab = insertelement <4 x i8> %i.aaa, i8 %i.zx, i64 3
  %i.aac = uitofp <4 x i8> %i.aab to <4 x float>
  %i.aad = getelementptr inbounds nuw i8, ptr %i.za, i64 2
  %i.aae = getelementptr inbounds nuw i8, ptr %i.zb, i64 6
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.zd, i64 10
  %i.aag = getelementptr inbounds nuw i8, ptr %i.zf, i64 14
  %i.aah = load i8, ptr %i.aad, align 1, !alias.scope !49
  %i.aai = load i8, ptr %i.aae, align 1, !alias.scope !49
  %i.aaj = load i8, ptr %i.aaf, align 1, !alias.scope !49
  %i.aak = load i8, ptr %i.aag, align 1, !alias.scope !49
  %i.aal = insertelement <4 x i8> poison, i8 %i.aah, i64 0
  %i.aam = insertelement <4 x i8> %i.aal, i8 %i.aai, i64 1
  %i.aan = insertelement <4 x i8> %i.aam, i8 %i.aaj, i64 2
  %i.aao = insertelement <4 x i8> %i.aan, i8 %i.aak, i64 3
  %i.aap = uitofp <4 x i8> %i.aao to <4 x float>
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.za, i64 3
  %i.aar = getelementptr inbounds nuw i8, ptr %i.zb, i64 7
  %i.aas = getelementptr inbounds nuw i8, ptr %i.zd, i64 11
  %i.aat = getelementptr inbounds nuw i8, ptr %i.zf, i64 15
  %i.aau = load i8, ptr %i.aaq, align 1, !alias.scope !49
  %i.aav = load i8, ptr %i.aar, align 1, !alias.scope !49
  %i.aaw = load i8, ptr %i.aas, align 1, !alias.scope !49
  %i.aax = load i8, ptr %i.aat, align 1, !alias.scope !49
  %i.aay = insertelement <4 x i8> poison, i8 %i.aau, i64 0
  %i.aaz = insertelement <4 x i8> %i.aay, i8 %i.aav, i64 1
  %i.aba = insertelement <4 x i8> %i.aaz, i8 %i.aaw, i64 2
  %i.abb = insertelement <4 x i8> %i.aba, i8 %i.aax, i64 3
  %i.abc = uitofp <4 x i8> %i.abb to <4 x float>
  %i.abd = getelementptr inbounds nuw [16 x i8], ptr %i.yw, i64 %index
  %i.abe = shufflevector <4 x float> %i.zp, <4 x float> %i.aac, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.abf = shufflevector <4 x float> %i.aap, <4 x float> %i.abc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.abg = shufflevector <8 x float> %i.abe, <8 x float> %i.abf, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  %interleaved.vec = fdiv <16 x float> %i.abg, splat (float 2.550000e+02)
  store <16 x float> %interleaved.vec, ptr %i.abd, align 4, !alias.scope !52, !noalias !49
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.abh = icmp eq i64 %index.next, %n.vec
  br i1 %i.abh, label %middle.block, label %vector.body, !llvm.loop !54

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ys, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i618, %middle.block
  %.017.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i618 ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg5486 = or disjoint i64 %.017.i.ph, 1
  %xtraiter5404 = and i64 %i.ys, 1
  %lcmp.mod5405.not = icmp eq i64 %xtraiter5404, 0
  br i1 %lcmp.mod5405.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.abi = getelementptr inbounds nuw [4 x i8], ptr %.pre.i619, i64 %.017.i.ph
  %i.abj = getelementptr inbounds nuw [16 x i8], ptr %i.yw, i64 %.017.i.ph
  %i.abk = load <4 x i8>, ptr %i.abi, align 1
  %i.abl = uitofp <4 x i8> %i.abk to <4 x float>
  %i.abm = fdiv <4 x float> %i.abl, splat (float 2.550000e+02)
  store <4 x float> %i.abm, ptr %i.abj, align 4
  %i.abn = or disjoint i64 %.017.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.017.i.unr = phi i64 [ %.017.i.ph, %scalar.ph.preheader ], [ %i.abn, %scalar.ph.prol ]
  %i.abo = icmp eq i64 %i.ys, %.neg5486
  br i1 %i.abo, label %._crit_edge.thread.i, label %scalar.ph

._crit_edge.i:                                    ; preds = %.noexc621
  %.pre18.i = load ptr, ptr %i.e, align 8         ; 2 uses
  %i.abp = icmp eq ptr %.pre18.i, null
  br i1 %i.abp, label %bb.dc, label %._crit_edge.thread.i

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.017.i = phi i64 [ %i.acb, %scalar.ph ], [ %.017.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.abq = getelementptr inbounds nuw [4 x i8], ptr %.pre.i619, i64 %.017.i
  %i.abr = getelementptr inbounds nuw [16 x i8], ptr %i.yw, i64 %.017.i
  %i.abs = load <4 x i8>, ptr %i.abq, align 1
  %i.abt = uitofp <4 x i8> %i.abs to <4 x float>
  %i.abu = fdiv <4 x float> %i.abt, splat (float 2.550000e+02)
  store <4 x float> %i.abu, ptr %i.abr, align 4
  %i.abv = add nuw i64 %.017.i, 1                 ; 2 uses
  %i.abw = getelementptr inbounds nuw [4 x i8], ptr %.pre.i619, i64 %i.abv
  %i.abx = getelementptr inbounds nuw [16 x i8], ptr %i.yw, i64 %i.abv
  %i.aby = load <4 x i8>, ptr %i.abw, align 1
  %i.abz = uitofp <4 x i8> %i.aby to <4 x float>
  %i.aca = fdiv <4 x float> %i.abz, splat (float 2.550000e+02)
  store <4 x float> %i.aca, ptr %i.abx, align 4
  %i.acb = add nuw i64 %.017.i, 2                 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.acb, %i.ys
  br i1 %exitcond.not.i.1, label %._crit_edge.thread.i, label %scalar.ph, !llvm.loop !55

._crit_edge.thread.i:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %._crit_edge.i
  %.pre1921.i = phi ptr [ %.pre18.i, %._crit_edge.i ], [ %.pre.i619, %middle.block ], [ %.pre.i619, %scalar.ph ], [ %.pre.i619, %scalar.ph.prol.loopexit ]
  call void @_ZdaPv(ptr noundef nonnull %.pre1921.i) #35
  br label %bb.dc

bb.dc:                                            ; preds = %._crit_edge.thread.i, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  br label %.sink.split3858

bb.dd:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  %i.acc = invoke noundef i64 @_ZN5glTF28Accessor11ExtractDataI9aiColor4tItEEEmRPT_PKSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(376) %i.yd, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %.0450)
          to label %.noexc633 unwind label %bb.da ; 0 uses

.noexc633:                                        ; preds = %bb.dd
  %i.acd = load ptr, ptr %i.xx, align 8
  %i.ace = getelementptr inbounds nuw [8 x i8], ptr %i.acd, i64 %i.ya
  %i.acf = load ptr, ptr %i.ace, align 8
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 296
  %i.ach = load i64, ptr %i.acg, align 8          ; 11 uses
  %i.aci = icmp ugt i64 %i.ach, 1152921504606846975
  %i.acj = shl i64 %i.ach, 4                      ; 2 uses
  %i.ack = select i1 %i.aci, i64 -1, i64 %i.acj
  %i.acl = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ack) #37
          to label %.noexc634 unwind label %bb.da ; 8 uses

.noexc634:                                        ; preds = %.noexc633
  %i.acm = icmp eq i64 %i.ach, 0
  br i1 %i.acm, label %._crit_edge.i631, label %.lr.ph.i622

.lr.ph.i622:                                      ; preds = %.noexc634
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.acl, i8 0, i64 %i.acj, i1 false)
  %.pre.i623 = load ptr, ptr %i.d, align 8        ; 12 uses
  %min.iters.check4611 = icmp ult i64 %i.ach, 4
  br i1 %min.iters.check4611, label %scalar.ph4610.preheader, label %vector.memcheck4604

vector.memcheck4604:                              ; preds = %.lr.ph.i622
  %i.acn = shl i64 %i.ach, 4
  %scevgep4605 = getelementptr i8, ptr %i.acl, i64 %i.acn
  %i.aco = shl i64 %i.ach, 3
  %scevgep4606 = getelementptr i8, ptr %.pre.i623, i64 %i.aco
  %bound04607 = icmp ult ptr %i.acl, %scevgep4606
  %bound14608 = icmp ult ptr %.pre.i623, %scevgep4605
  %found.conflict4609 = and i1 %bound04607, %bound14608
  br i1 %found.conflict4609, label %scalar.ph4610.preheader, label %vector.ph4612

vector.ph4612:                                    ; preds = %vector.memcheck4604
  %n.vec4614 = and i64 %i.ach, -4                 ; 3 uses
  br label %vector.body4615

vector.body4615:                                  ; preds = %vector.body4615, %vector.ph4612
  %index4616 = phi i64 [ 0, %vector.ph4612 ], [ %index.next4618, %vector.body4615 ] ; 6 uses
  %i.acp = getelementptr inbounds nuw [8 x i8], ptr %.pre.i623, i64 %index4616 ; 4 uses
  %i.acq = getelementptr inbounds nuw [8 x i8], ptr %.pre.i623, i64 %index4616 ; 4 uses
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acq, i64 8
  %i.acs = getelementptr inbounds nuw [8 x i8], ptr %.pre.i623, i64 %index4616 ; 4 uses
  %i.act = getelementptr inbounds nuw i8, ptr %i.acs, i64 16
  %i.acu = getelementptr inbounds nuw [8 x i8], ptr %.pre.i623, i64 %index4616 ; 4 uses
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acu, i64 24
  %i.acw = load i16, ptr %i.acp, align 2, !alias.scope !56
  %i.acx = load i16, ptr %i.acr, align 2, !alias.scope !56
  %i.acy = load i16, ptr %i.act, align 2, !alias.scope !56
  %i.acz = load i16, ptr %i.acv, align 2, !alias.scope !56
  %i.ada = insertelement <4 x i16> poison, i16 %i.acw, i64 0
  %i.adb = insertelement <4 x i16> %i.ada, i16 %i.acx, i64 1
  %i.adc = insertelement <4 x i16> %i.adb, i16 %i.acy, i64 2
  %i.add = insertelement <4 x i16> %i.adc, i16 %i.acz, i64 3
  %i.ade = uitofp <4 x i16> %i.add to <4 x float>
  %i.adf = getelementptr inbounds nuw i8, ptr %i.acp, i64 2
  %i.adg = getelementptr inbounds nuw i8, ptr %i.acq, i64 10
  %i.adh = getelementptr inbounds nuw i8, ptr %i.acs, i64 18
  %i.adi = getelementptr inbounds nuw i8, ptr %i.acu, i64 26
  %i.adj = load i16, ptr %i.adf, align 2, !alias.scope !56
  %i.adk = load i16, ptr %i.adg, align 2, !alias.scope !56
  %i.adl = load i16, ptr %i.adh, align 2, !alias.scope !56
  %i.adm = load i16, ptr %i.adi, align 2, !alias.scope !56
  %i.adn = insertelement <4 x i16> poison, i16 %i.adj, i64 0
  %i.ado = insertelement <4 x i16> %i.adn, i16 %i.adk, i64 1
  %i.adp = insertelement <4 x i16> %i.ado, i16 %i.adl, i64 2
  %i.adq = insertelement <4 x i16> %i.adp, i16 %i.adm, i64 3
  %i.adr = uitofp <4 x i16> %i.adq to <4 x float>
  %i.ads = getelementptr inbounds nuw i8, ptr %i.acp, i64 4
  %i.adt = getelementptr inbounds nuw i8, ptr %i.acq, i64 12
  %i.adu = getelementptr inbounds nuw i8, ptr %i.acs, i64 20
  %i.adv = getelementptr inbounds nuw i8, ptr %i.acu, i64 28
  %i.adw = load i16, ptr %i.ads, align 2, !alias.scope !56
  %i.adx = load i16, ptr %i.adt, align 2, !alias.scope !56
  %i.ady = load i16, ptr %i.adu, align 2, !alias.scope !56
  %i.adz = load i16, ptr %i.adv, align 2, !alias.scope !56
  %i.aea = insertelement <4 x i16> poison, i16 %i.adw, i64 0
  %i.aeb = insertelement <4 x i16> %i.aea, i16 %i.adx, i64 1
  %i.aec = insertelement <4 x i16> %i.aeb, i16 %i.ady, i64 2
  %i.aed = insertelement <4 x i16> %i.aec, i16 %i.adz, i64 3
  %i.aee = uitofp <4 x i16> %i.aed to <4 x float>
  %i.aef = getelementptr inbounds nuw i8, ptr %i.acp, i64 6
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.acq, i64 14
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.acs, i64 22
  %i.aei = getelementptr inbounds nuw i8, ptr %i.acu, i64 30
  %i.aej = load i16, ptr %i.aef, align 2, !alias.scope !56
  %i.aek = load i16, ptr %i.aeg, align 2, !alias.scope !56
  %i.ael = load i16, ptr %i.aeh, align 2, !alias.scope !56
  %i.aem = load i16, ptr %i.aei, align 2, !alias.scope !56
  %i.aen = insertelement <4 x i16> poison, i16 %i.aej, i64 0
  %i.aeo = insertelement <4 x i16> %i.aen, i16 %i.aek, i64 1
  %i.aep = insertelement <4 x i16> %i.aeo, i16 %i.ael, i64 2
  %i.aeq = insertelement <4 x i16> %i.aep, i16 %i.aem, i64 3
  %i.aer = uitofp <4 x i16> %i.aeq to <4 x float>
  %i.aes = getelementptr inbounds nuw [16 x i8], ptr %i.acl, i64 %index4616
  %i.aet = shufflevector <4 x float> %i.ade, <4 x float> %i.adr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aeu = shufflevector <4 x float> %i.aee, <4 x float> %i.aer, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aev = shufflevector <8 x float> %i.aet, <8 x float> %i.aeu, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  %interleaved.vec4617 = fdiv <16 x float> %i.aev, splat (float 6.553500e+04)
  store <16 x float> %interleaved.vec4617, ptr %i.aes, align 4, !alias.scope !59, !noalias !56
  %index.next4618 = add nuw i64 %index4616, 4     ; 2 uses
  %i.aew = icmp eq i64 %index.next4618, %n.vec4614
  br i1 %i.aew, label %middle.block4619, label %vector.body4615, !llvm.loop !61

middle.block4619:                                 ; preds = %vector.body4615
  %cmp.n4620 = icmp eq i64 %i.ach, %n.vec4614
  br i1 %cmp.n4620, label %._crit_edge.thread.i629, label %scalar.ph4610.preheader

scalar.ph4610.preheader:                          ; preds = %vector.memcheck4604, %.lr.ph.i622, %middle.block4619
  %.017.i624.ph = phi i64 [ 0, %vector.memcheck4604 ], [ 0, %.lr.ph.i622 ], [ %n.vec4614, %middle.block4619 ] ; 5 uses
  %.neg5485 = or disjoint i64 %.017.i624.ph, 1
  %xtraiter = and i64 %i.ach, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph4610.prol.loopexit, label %scalar.ph4610.prol

scalar.ph4610.prol:                               ; preds = %scalar.ph4610.preheader
  %i.aex = getelementptr inbounds nuw [8 x i8], ptr %.pre.i623, i64 %.017.i624.ph
  %i.aey = getelementptr inbounds nuw [16 x i8], ptr %i.acl, i64 %.017.i624.ph
  %i.aez = load <4 x i16>, ptr %i.aex, align 2
  %i.afa = uitofp <4 x i16> %i.aez to <4 x float>
  %i.afb = fdiv <4 x float> %i.afa, splat (float 6.553500e+04)
  store <4 x float> %i.afb, ptr %i.aey, align 4
  %i.afc = or disjoint i64 %.017.i624.ph, 1
  br label %scalar.ph4610.prol.loopexit

scalar.ph4610.prol.loopexit:                      ; preds = %scalar.ph4610.prol, %scalar.ph4610.preheader
  %.017.i624.unr = phi i64 [ %.017.i624.ph, %scalar.ph4610.preheader ], [ %i.afc, %scalar.ph4610.prol ]
  %i.afd = icmp eq i64 %i.ach, %.neg5485
  br i1 %i.afd, label %._crit_edge.thread.i629, label %scalar.ph4610

._crit_edge.i631:                                 ; preds = %.noexc634
  %.pre18.i632 = load ptr, ptr %i.d, align 8      ; 2 uses
  %i.afe = icmp eq ptr %.pre18.i632, null
  br i1 %i.afe, label %bb.de, label %._crit_edge.thread.i629

scalar.ph4610:                                    ; preds = %scalar.ph4610.prol.loopexit, %scalar.ph4610
  %.017.i624 = phi i64 [ %i.afq, %scalar.ph4610 ], [ %.017.i624.unr, %scalar.ph4610.prol.loopexit ] ; 4 uses
  %i.aff = getelementptr inbounds nuw [8 x i8], ptr %.pre.i623, i64 %.017.i624
  %i.afg = getelementptr inbounds nuw [16 x i8], ptr %i.acl, i64 %.017.i624
  %i.afh = load <4 x i16>, ptr %i.aff, align 2
  %i.afi = uitofp <4 x i16> %i.afh to <4 x float>
  %i.afj = fdiv <4 x float> %i.afi, splat (float 6.553500e+04)
  store <4 x float> %i.afj, ptr %i.afg, align 4
  %i.afk = add nuw i64 %.017.i624, 1              ; 2 uses
  %i.afl = getelementptr inbounds nuw [8 x i8], ptr %.pre.i623, i64 %i.afk
  %i.afm = getelementptr inbounds nuw [16 x i8], ptr %i.acl, i64 %i.afk
  %i.afn = load <4 x i16>, ptr %i.afl, align 2
  %i.afo = uitofp <4 x i16> %i.afn to <4 x float>
  %i.afp = fdiv <4 x float> %i.afo, splat (float 6.553500e+04)
  store <4 x float> %i.afp, ptr %i.afm, align 4
  %i.afq = add nuw i64 %.017.i624, 2              ; 2 uses
  %exitcond.not.i628.1 = icmp eq i64 %i.afq, %i.ach
  br i1 %exitcond.not.i628.1, label %._crit_edge.thread.i629, label %scalar.ph4610, !llvm.loop !62

._crit_edge.thread.i629:                          ; preds = %scalar.ph4610.prol.loopexit, %scalar.ph4610, %middle.block4619, %._crit_edge.i631
  %.pre1921.i630 = phi ptr [ %.pre18.i632, %._crit_edge.i631 ], [ %.pre.i623, %middle.block4619 ], [ %.pre.i623, %scalar.ph4610 ], [ %.pre.i623, %scalar.ph4610.prol.loopexit ]
  call void @_ZdaPv(ptr noundef nonnull %.pre1921.i630) #35
  br label %bb.de

bb.de:                                            ; preds = %._crit_edge.thread.i629, %._crit_edge.i631
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  br label %.sink.split3858

.sink.split3858:                                  ; preds = %bb.dc, %bb.de
  %.sink3859 = phi ptr [ %i.acl, %bb.de ], [ %i.yw, %bb.dc ]
  %i.afr = getelementptr inbounds nuw [8 x i8], ptr %i.xo, i64 %.04552118
  store ptr %.sink3859, ptr %i.afr, align 8
  br label %bb.df

bb.df:                                            ; preds = %.sink.split3858, %bb.cz, %bb.cy, %bb.cw
  %i.afs = add nuw nsw i64 %.04552118, 1          ; 2 uses
  %i.aft = load ptr, ptr %i.xl, align 8
  %i.afu = load ptr, ptr %i.xk, align 8           ; 2 uses
  %i.afv = ptrtoint ptr %i.aft to i64
  %i.afw = ptrtoint ptr %i.afu to i64
  %i.afx = sub i64 %i.afv, %i.afw
  %i.afy = ashr exact i64 %i.afx, 4
  %i.afz = icmp ult i64 %i.afs, %i.afy
  %i.aga = icmp samesign ult i64 %.04552118, 7
  %i.agb = select i1 %i.afz, i1 %i.aga, i1 false
  br i1 %i.agb, label %bb.cu, label %.preheader1134, !llvm.loop !63

._crit_edge2126:                                  ; preds = %.loopexit, %.preheader1134
  %i.agc = getelementptr inbounds nuw i8, ptr %i.hb, i64 232 ; 4 uses
  %i.agd = load ptr, ptr %i.agc, align 8          ; 2 uses
  %i.age = getelementptr inbounds nuw i8, ptr %i.hb, i64 240 ; 3 uses
  %i.agf = load ptr, ptr %i.age, align 8          ; 2 uses
  %i.agg = icmp eq ptr %i.agd, %i.agf
  br i1 %i.agg, label %bb.fm, label %bb.do

bb.dg:                                            ; preds = %.lr.ph2125, %.loopexit
  %i.agh = phi ptr [ %i.xs, %.lr.ph2125 ], [ %i.aif, %.loopexit ]
  %.04562123 = phi i64 [ 0, %.lr.ph2125 ], [ %i.aid, %.loopexit ] ; 6 uses
  %i.agi = getelementptr inbounds nuw [16 x i8], ptr %i.agh, i64 %.04562123 ; 2 uses
  %i.agj = load ptr, ptr %i.agi, align 8          ; 3 uses
  %.not.i635 = icmp eq ptr %i.agj, null
  br i1 %.not.i635, label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit636.thread, label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit636

_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit636: ; preds = %bb.dg
end_hunk_0
begin_hunk_1_@_ZN6Assimp13glTF2Importer11ImportNodesERN5glTF25AssetE:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %bb.r
  %i.cn = load i64, ptr %i.ca, align 8
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef 1144) #35
  br label %bb.s

.loopexit:                                        ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %.not.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EED2Ev.exit, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %bb.o, %.thread, %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.ac) #35
  br label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EED2Ev.exit

_ZNSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EED2Ev.exit: ; preds = %.loopexit, %.loopexit.thread
  ret void

bb.s:                                             ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, %bb.h
  %.pn36 = phi { ptr, i32 } [ %i.at, %bb.h ], [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51 ], [ %i.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ], [ %i.bk, %bb.l ] ; 2 uses
  %.not.i.i.i52 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i52, label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EED2Ev.exit53, label %bb.t

bb.t:                                             ; preds = %.thread62, %bb.s
  %.pn3665 = phi { ptr, i32 } [ %i.by, %.thread62 ], [ %.pn36, %bb.s ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.ac) #35
  br label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EED2Ev.exit53

_ZNSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EED2Ev.exit53: ; preds = %bb.t, %bb.s, %bb.c
  %.pn36.pn = phi { ptr, i32 } [ %i.o, %bb.c ], [ %.pn36, %bb.s ], [ %.pn3665, %bb.t ]
  resume { ptr, i32 } %.pn36.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %2 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  store ptr %1, ptr %i.a, align 8
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.b, ptr %2, align 8
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.d = getelementptr i8, ptr %i.b, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %2, i64 %i.e
  store ptr %i.c, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.l = load i64, ptr %i.j, align 8
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #35
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.g, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.n) #34
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.o) #34
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %2) #34
  resume { ptr, i32 } %i.p
}

declare void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull ptr @_Z14CreateNodeAnimRN5glTF25AssetERNS_4NodeER17AnimationSamplers(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(552) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %i.e = alloca ptr, align 8                      ; 7 uses
  %i.f = alloca ptr, align 8                      ; 7 uses
  %i.g = alloca ptr, align 8                      ; 7 uses
  %i.h = tail call noalias noundef nonnull dereferenceable(1080) ptr @_Znwm(i64 noundef 1080) #37 ; 15 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1048 ; 3 uses
  store ptr null, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 1056 ; 3 uses
  store i32 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 1064 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1080) %i.h, i8 0, i64 1044, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.m = load i64, ptr %i.l, align 8, !noalias !176
  %i.n = icmp eq i64 %i.m, 0
  %.v.i = select i1 %i.n, i64 16, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %.v.i ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.p, ptr %3, align 8, !alias.scope !176
  %i.q = load ptr, ptr %i.o, align 8, !noalias !176 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.s = load i64, ptr %i.r, align 8, !noalias !176 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34, !noalias !176
  store i64 %i.s, ptr %i.a, align 8, !noalias !176
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.u = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.l     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.u, ptr %3, align 8, !alias.scope !176
  %i.v = load i64, ptr %i.a, align 8, !noalias !176
  store i64 %i.v, ptr %i.p, align 8, !alias.scope !176
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.a
  %i.w = phi ptr [ %i.u, %.noexc ], [ %i.p, %bb.a ] ; 2 uses
  switch i64 %i.s, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.x = load i8, ptr %i.q, align 1
  store i8 %i.x, ptr %i.w, align 1
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.q, i64 %i.s, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.y = load i64, ptr %i.a, align 8, !noalias !176 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.y, ptr %i.z, align 8, !alias.scope !176
  %i.aa = load ptr, ptr %3, align 8, !alias.scope !176
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34, !noalias !176
  %i.ac = load i64, ptr %i.z, align 8             ; 5 uses
  %i.ad = icmp ugt i64 %i.ac, 1023
  %.pre = load ptr, ptr %3, align 8               ; 3 uses
  br i1 %i.ad, label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = trunc nuw nsw i64 %i.ac to i32
  store i32 %i.ae, ptr %i.h, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.af, ptr align 1 %.pre, i64 %i.ac, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ac
  store i8 0, ptr %i.ag, align 1
  br label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.e, %bb.d
  %i.ah = icmp eq ptr %.pre, %i.p
  br i1 %i.ah, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ai = icmp ult i64 %i.ac, 16
  call void @llvm.assume(i1 %i.ai)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.aj = load i64, ptr %i.p, align 8
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.ak) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.al = load ptr, ptr %2, align 8               ; 6 uses
  %.not = icmp eq ptr %i.al, null
  br i1 %.not, label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.am = load ptr, ptr %i.al, align 8            ; 3 uses
  %.not.i = icmp eq ptr %i.am, null
  br i1 %.not.i, label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit.thread, label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit

_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit: ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ao = load i32, ptr %i.an, align 8
  %i.ap = zext i32 %i.ao to i64                   ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = load ptr, ptr %i.am, align 8
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = ashr exact i64 %i.av, 3
  %i.ax = icmp ugt i64 %i.aw, %i.ap
  br i1 %i.ax, label %bb.g, label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit.thread

bb.g:                                             ; preds = %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.az = load ptr, ptr %i.ay, align 8            ; 3 uses
  %.not.i153 = icmp eq ptr %i.az, null
  br i1 %.not.i153, label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit.thread, label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit154

_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit154: ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.bb = load i32, ptr %i.ba, align 8
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = load ptr, ptr %i.az, align 8
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = ashr exact i64 %i.bi, 3
  %i.bk = icmp ugt i64 %i.bj, %i.bc
  br i1 %i.bk, label %bb.h, label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit.thread

bb.h:                                             ; preds = %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  store ptr null, ptr %i.b, align 8
  %i.bl = load ptr, ptr %i.al, align 8
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.ap
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = invoke noundef i64 @_ZN5glTF28Accessor11ExtractDataIfEEmRPT_PKSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(376) %i.bo, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef null)
          to label %bb.i unwind label %bb.n       ; 0 uses

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  store ptr null, ptr %i.c, align 8
  %i.bq = load ptr, ptr %2, align 8               ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bu = load i32, ptr %i.bt, align 8
  %i.bv = zext i32 %i.bu to i64
  %i.bw = load ptr, ptr %i.bs, align 8
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bv
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = invoke noundef i64 @_ZN5glTF28Accessor11ExtractDataI5vec4fEEmRPT_PKSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(376) %i.by, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef null)
          to label %bb.j unwind label %bb.o       ; 6 uses

bb.j:                                             ; preds = %bb.i
  %i.ca = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.bz, i64 12) ; 2 uses
  %i.cb = extractvalue { i64, i1 } %i.ca, 1
  %i.cc = extractvalue { i64, i1 } %i.ca, 0       ; 2 uses
  %i.cd = select i1 %i.cb, i64 -1, i64 %i.cc
  %i.ce = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cd) #37
          to label %bb.k unwind label %bb.p       ; 6 uses

bb.k:                                             ; preds = %bb.j
  %i.cf = icmp eq i64 %i.bz, 0
  br i1 %i.cf, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.cg = add i64 %i.cc, -12                      ; 2 uses
  %i.ch = urem i64 %i.cg, 12
  %i.ci = sub nuw i64 %i.cg, %i.ch
  %i.cj = add i64 %i.ci, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ce, i8 0, i64 %i.cj, i1 false)
  %.pre198 = load ptr, ptr %i.c, align 8          ; 5 uses
  %xtraiter = and i64 %i.bz, 1
  %i.ck = icmp eq i64 %i.bz, 1
  br i1 %i.ck, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.bz, -2
  br label %bb.q

._crit_edge:                                      ; preds = %bb.k
  %.pre198224 = load ptr, ptr %i.c, align 8       ; 2 uses
  %i.cl = icmp eq ptr %.pre198224, null
  br i1 %i.cl, label %bb.r, label %._crit_edge.thread

bb.l:                                             ; preds = %.noexc.i.i
  %i.cm = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %bb.bg

bb.m:                                             ; preds = %bb.bh, %bb.ap, %bb.z
  %i.cn = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bg

bb.n:                                             ; preds = %bb.h
  %i.co = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.y

bb.o:                                             ; preds = %bb.i
  %i.cp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.x

bb.p:                                             ; preds = %bb.r, %bb.j
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.x

bb.q:                                             ; preds = %bb.q, %.lr.ph.new
  %.0133171 = phi i64 [ 0, %.lr.ph.new ], [ %i.dk, %bb.q ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.q ]
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %.pre198, i64 %.0133171 ; 3 uses
  %i.cs = load float, ptr %i.cr, align 4
  %i.ct = getelementptr inbounds nuw [12 x i8], ptr %i.ce, i64 %.0133171 ; 3 uses
  store float %i.cs, ptr %i.ct, align 4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  %i.cv = load float, ptr %i.cu, align 4
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  store float %i.cv, ptr %i.cw, align 4
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.cy = load float, ptr %i.cx, align 4
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store float %i.cy, ptr %i.cz, align 4
  %i.da = or disjoint i64 %.0133171, 1            ; 2 uses
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %.pre198, i64 %i.da ; 3 uses
  %i.dc = load float, ptr %i.db, align 4
  %i.dd = getelementptr inbounds nuw [12 x i8], ptr %i.ce, i64 %i.da ; 3 uses
  store float %i.dc, ptr %i.dd, align 4
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  %i.df = load float, ptr %i.de, align 4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  store float %i.df, ptr %i.dg, align 4
  %i.dh = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.di = load float, ptr %i.dh, align 4
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store float %i.di, ptr %i.dj, align 4
  %i.dk = add nuw i64 %.0133171, 2                ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.thread.loopexit.unr-lcssa, label %bb.q, !llvm.loop !179

._crit_edge.thread.loopexit.unr-lcssa:            ; preds = %bb.q
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.thread, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.thread.loopexit.unr-lcssa, %.lr.ph
  %.0133171.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.dk, %._crit_edge.thread.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod228 = trunc i64 %i.bz to i1
  call void @llvm.assume(i1 %lcmp.mod228)
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %.pre198, i64 %.0133171.epil.init ; 3 uses
  %i.dm = load float, ptr %i.dl, align 4
  %i.dn = getelementptr inbounds nuw [12 x i8], ptr %i.ce, i64 %.0133171.epil.init ; 3 uses
  store float %i.dm, ptr %i.dn, align 4
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  %i.dp = load float, ptr %i.do, align 4
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  store float %i.dp, ptr %i.dq, align 4
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.ds = load float, ptr %i.dr, align 4
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store float %i.ds, ptr %i.dt, align 4
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.epil.preheader, %._crit_edge.thread.loopexit.unr-lcssa, %._crit_edge
  %.pre198225227 = phi ptr [ %.pre198224, %._crit_edge ], [ %.pre198, %._crit_edge.thread.loopexit.unr-lcssa ], [ %.pre198, %.epil.preheader ]
  call void @_ZdaPv(ptr noundef nonnull %.pre198225227) #35
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.du = load ptr, ptr %2, align 8               ; 3 uses
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dx = load i32, ptr %i.dw, align 8
  %i.dy = zext i32 %i.dx to i64
  %i.dz = load ptr, ptr %i.dv, align 8
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.dy
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 296
  %i.ed = load i64, ptr %i.ec, align 8            ; 3 uses
  %i.ee = trunc i64 %i.ed to i32                  ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.h, i64 1028
  store i32 %i.ee, ptr %i.ef, align 4
  %i.eg = and i64 %i.ed, 4294967295               ; 3 uses
  %i.eh = mul nuw nsw i64 %i.eg, 24
  %i.ei = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.eh) #37
          to label %bb.s unwind label %bb.p       ; 4 uses

bb.s:                                             ; preds = %bb.r
  %i.ej = icmp eq i64 %i.eg, 0
  br i1 %i.ej, label %.loopexit169, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ek = getelementptr inbounds nuw [24 x i8], ptr %i.ei, i64 %i.eg
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %bb.t
  %i.el = phi ptr [ %i.ei, %bb.t ], [ %i.en, %bb.u ] ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.el, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.em, align 4
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 24 ; 2 uses
  %i.eo = icmp eq ptr %i.en, %i.ek
  br i1 %i.eo, label %.loopexit169, label %bb.u

.loopexit169:                                     ; preds = %bb.u, %bb.s
  %i.ep = getelementptr inbounds nuw i8, ptr %i.h, i64 1032
  store ptr %i.ei, ptr %i.ep, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.du, i64 32 ; 2 uses
  %.not188 = icmp eq i32 %i.ee, 0
  br i1 %.not188, label %._crit_edge176, label %.lr.ph175.preheader

.lr.ph175.preheader:                              ; preds = %.loopexit169
  %i.er = load i32, ptr %i.eq, align 8
  %i.es = icmp eq i32 %i.er, 2
  %i.et = zext i1 %i.es to i32
  %i.eu = load ptr, ptr %i.b, align 8
  %i.ev = and i64 %i.ed, 4294967295
  br label %.lr.ph175

._crit_edge176:                                   ; preds = %.lr.ph175, %.loopexit169
  %i.ew = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ex = icmp eq ptr %i.ew, null
  br i1 %i.ex, label %bb.w, label %bb.v

.lr.ph175:                                        ; preds = %.lr.ph175.preheader, %.lr.ph175
  %indvars.iv = phi i64 [ 0, %.lr.ph175.preheader ], [ %indvars.iv.next, %.lr.ph175 ] ; 3 uses
  %.0132172 = phi i32 [ %i.et, %.lr.ph175.preheader ], [ %i.fj, %.lr.ph175 ] ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %indvars.iv
  %i.ez = load float, ptr %i.ey, align 4
  %i.fa = fmul float %i.ez, 1.000000e+03
  %i.fb = fpext float %i.fa to double
  %i.fc = getelementptr inbounds nuw [24 x i8], ptr %i.ei, i64 %indvars.iv ; 2 uses
  store double %i.fb, ptr %i.fc, align 8
  %i.fd = zext i32 %.0132172 to i64
  %i.fe = getelementptr inbounds nuw [12 x i8], ptr %i.ce, i64 %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ff, ptr noundef nonnull align 4 dereferenceable(12) %i.fe, i64 12, i1 false)
  %i.fg = load i32, ptr %i.eq, align 8
  %i.fh = icmp eq i32 %i.fg, 2
  %i.fi = select i1 %i.fh, i32 3, i32 1
  %i.fj = add i32 %i.fi, %.0132172
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fk = icmp samesign ult i64 %indvars.iv.next, %i.ev
  br i1 %i.fk, label %.lr.ph175, label %._crit_edge176, !llvm.loop !180

bb.v:                                             ; preds = %._crit_edge176
  call void @_ZdaPv(ptr noundef nonnull %i.ew) #35
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge176, %bb.v
  call void @_ZdaPv(ptr noundef nonnull %i.ce) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  br label %bb.aa

bb.x:                                             ; preds = %bb.p, %bb.o
  %.pn148 = phi { ptr, i32 } [ %i.cq, %bb.p ], [ %i.cp, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.n
  %.pn148.pn = phi { ptr, i32 } [ %.pn148, %bb.x ], [ %i.co, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  br label %bb.bg

_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit.thread: ; preds = %bb.g, %bb.f, %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit154, %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 380
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.fn = load i8, ptr %i.fm, align 8, !range !19, !noundef !20
  %i.fo = trunc nuw i8 %i.fn to i1
  br i1 %i.fo, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit.thread
  %i.fp = getelementptr inbounds nuw i8, ptr %i.h, i64 1028
  store i32 1, ptr %i.fp, align 4
  %i.fq = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znam(i64 noundef 24) #37
          to label %.preheader168.preheader unwind label %bb.m ; 5 uses

.preheader168.preheader:                          ; preds = %bb.z
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 20
  store i32 1, ptr %i.fr, align 4
  %i.fs = getelementptr inbounds nuw i8, ptr %i.h, i64 1032
  store ptr %i.fq, ptr %i.fs, align 8
  store double 0.000000e+00, ptr %i.fq, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fu = load <2 x float>, ptr %i.fl, align 4
  store <2 x float> %i.fu, ptr %i.ft, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 388
  %i.fw = load float, ptr %i.fv, align 4
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  store float %i.fw, ptr %i.fx, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit.thread, %.preheader168.preheader, %bb.w
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.fz = load ptr, ptr %i.fy, align 8            ; 6 uses
  %.not149 = icmp eq ptr %i.fz, null
  br i1 %.not149, label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit159.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ga = load ptr, ptr %i.fz, align 8            ; 3 uses
  %.not.i158 = icmp eq ptr %i.ga, null
  br i1 %.not.i158, label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit159.thread, label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit159

_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit159: ; preds = %bb.ab
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gc = load i32, ptr %i.gb, align 8
  %i.gd = zext i32 %i.gc to i64                   ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8
  %i.gg = load ptr, ptr %i.ga, align 8
  %i.gh = ptrtoint ptr %i.gf to i64
  %i.gi = ptrtoint ptr %i.gg to i64
  %i.gj = sub i64 %i.gh, %i.gi
  %i.gk = ashr exact i64 %i.gj, 3
  %i.gl = icmp ugt i64 %i.gk, %i.gd
  br i1 %i.gl, label %bb.ac, label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit159.thread

bb.ac:                                            ; preds = %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit159
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %i.gn = load ptr, ptr %i.gm, align 8            ; 3 uses
  %.not.i160 = icmp eq ptr %i.gn, null
  br i1 %.not.i160, label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit159.thread, label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit161

_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit161: ; preds = %bb.ac
  %i.go = getelementptr inbounds nuw i8, ptr %i.fz, i64 24
  %i.gp = load i32, ptr %i.go, align 8
  %i.gq = zext i32 %i.gp to i64
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8
  %i.gt = load ptr, ptr %i.gn, align 8
  %i.gu = ptrtoint ptr %i.gs to i64
  %i.gv = ptrtoint ptr %i.gt to i64
  %i.gw = sub i64 %i.gu, %i.gv
  %i.gx = ashr exact i64 %i.gw, 3
  %i.gy = icmp ugt i64 %i.gx, %i.gq
  br i1 %i.gy, label %bb.ad, label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit159.thread

bb.ad:                                            ; preds = %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  store ptr null, ptr %i.d, align 8
  %i.gz = load ptr, ptr %i.fz, align 8
  %i.ha = load ptr, ptr %i.gz, align 8
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %i.gd
  %i.hc = load ptr, ptr %i.hb, align 8
  %i.hd = invoke noundef i64 @_ZN5glTF28Accessor11ExtractDataIfEEmRPT_PKSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(376) %i.hc, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef null)
          to label %bb.ae unwind label %bb.ai     ; 0 uses

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  store ptr null, ptr %i.e, align 8
  %i.he = load ptr, ptr %i.fy, align 8            ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %i.hg = load ptr, ptr %i.hf, align 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 24
  %i.hi = load i32, ptr %i.hh, align 8
  %i.hj = zext i32 %i.hi to i64
  %i.hk = load ptr, ptr %i.hg, align 8
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %i.hj
  %i.hm = load ptr, ptr %i.hl, align 8
  %i.hn = invoke noundef i64 @_ZN5glTF28Accessor11ExtractDataI13aiQuaterniontIfEEEmRPT_PKSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(376) %i.hm, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef null)
          to label %bb.af unwind label %bb.aj     ; 0 uses

bb.af:                                            ; preds = %bb.ae
  %i.ho = load ptr, ptr %i.fy, align 8            ; 3 uses
  %i.hp = load ptr, ptr %i.ho, align 8
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.hr = load i32, ptr %i.hq, align 8
  %i.hs = zext i32 %i.hr to i64
  %i.ht = load ptr, ptr %i.hp, align 8
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %i.hs
  %i.hv = load ptr, ptr %i.hu, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 296
  %i.hx = load i64, ptr %i.hw, align 8            ; 4 uses
  %i.hy = trunc i64 %i.hx to i32                  ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.h, i64 1040
  store i32 %i.hy, ptr %i.hz, align 8
  %i.ia = and i64 %i.hx, 4294967295               ; 4 uses
  %i.ib = shl nuw nsw i64 %i.ia, 5
  %i.ic = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ib) #37
          to label %bb.ag unwind label %bb.aj     ; 5 uses

bb.ag:                                            ; preds = %bb.af
  %i.id = icmp eq i64 %i.ia, 0
  br i1 %i.id, label %.loopexit167, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ie = getelementptr inbounds nuw [32 x i8], ptr %i.ic, i64 %i.ia
  %i.if = add nuw nsw i64 %i.ia, 576460752303423487
  %i.ig = and i64 %i.if, 576460752303423487
  %xtraiter229.a = and i64 %i.hx, 7               ; 2 uses
  %lcmp.mod230.not.a = icmp eq i64 %xtraiter229.a, 0
  br i1 %lcmp.mod230.not.a, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.ah, %.prol.preheader
  %i.ih = phi ptr [ %i.ik, %.prol.preheader ], [ %i.ic, %bb.ah ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.ah ]
  store double 0.000000e+00, ptr %i.ih, align 8
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ii, align 8
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 24
  store i32 1, ptr %i.ij, align 8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ih, i64 32 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter229.a
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !181

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.ah
  %.unr = phi ptr [ %i.ic, %bb.ah ], [ %i.ik, %.prol.preheader ]
  %i.il = icmp samesign ult i64 %i.ig, 7
  br i1 %i.il, label %.loopexit167, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.im = phi ptr [ %i.jk, %.new ], [ %.unr, %.prol.loopexit ] ; 25 uses
  store double 0.000000e+00, ptr %i.im, align 8
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.in, align 8
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 24
  store i32 1, ptr %i.io, align 8
  %i.ip = getelementptr inbounds nuw i8, ptr %i.im, i64 32
  store double 0.000000e+00, ptr %i.ip, align 8
  %i.iq = getelementptr inbounds nuw i8, ptr %i.im, i64 40
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.iq, align 8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.im, i64 56
  store i32 1, ptr %i.ir, align 8
  %i.is = getelementptr inbounds nuw i8, ptr %i.im, i64 64
  store double 0.000000e+00, ptr %i.is, align 8
  %i.it = getelementptr inbounds nuw i8, ptr %i.im, i64 72
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.it, align 8
  %i.iu = getelementptr inbounds nuw i8, ptr %i.im, i64 88
  store i32 1, ptr %i.iu, align 8
  %i.iv = getelementptr inbounds nuw i8, ptr %i.im, i64 96
  store double 0.000000e+00, ptr %i.iv, align 8
  %i.iw = getelementptr inbounds nuw i8, ptr %i.im, i64 104
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.iw, align 8
  %i.ix = getelementptr inbounds nuw i8, ptr %i.im, i64 120
  store i32 1, ptr %i.ix, align 8
  %i.iy = getelementptr inbounds nuw i8, ptr %i.im, i64 128
  store double 0.000000e+00, ptr %i.iy, align 8
  %i.iz = getelementptr inbounds nuw i8, ptr %i.im, i64 136
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.iz, align 8
  %i.ja = getelementptr inbounds nuw i8, ptr %i.im, i64 152
  store i32 1, ptr %i.ja, align 8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.im, i64 160
  store double 0.000000e+00, ptr %i.jb, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %i.im, i64 168
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.jc, align 8
  %i.jd = getelementptr inbounds nuw i8, ptr %i.im, i64 184
  store i32 1, ptr %i.jd, align 8
  %i.je = getelementptr inbounds nuw i8, ptr %i.im, i64 192
  store double 0.000000e+00, ptr %i.je, align 8
  %i.jf = getelementptr inbounds nuw i8, ptr %i.im, i64 200
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.jf, align 8
  %i.jg = getelementptr inbounds nuw i8, ptr %i.im, i64 216
  store i32 1, ptr %i.jg, align 8
  %i.jh = getelementptr inbounds nuw i8, ptr %i.im, i64 224
  store double 0.000000e+00, ptr %i.jh, align 8
  %i.ji = getelementptr inbounds nuw i8, ptr %i.im, i64 232
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ji, align 8
  %i.jj = getelementptr inbounds nuw i8, ptr %i.im, i64 248
  store i32 1, ptr %i.jj, align 8
  %i.jk = getelementptr inbounds nuw i8, ptr %i.im, i64 256 ; 2 uses
  %i.jl = icmp eq ptr %i.jk, %i.ie
  br i1 %i.jl, label %.loopexit167, label %.new

.loopexit167:                                     ; preds = %.prol.loopexit, %.new, %bb.ag
  store ptr %i.ic, ptr %i.i, align 8
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ho, i64 32 ; 2 uses
  %.not189 = icmp eq i32 %i.hy, 0
  br i1 %.not189, label %._crit_edge181, label %.lr.ph180.preheader

.lr.ph180.preheader:                              ; preds = %.loopexit167
  %i.jn = load i32, ptr %i.jm, align 8
  %i.jo = icmp eq i32 %i.jn, 2
  %i.jp = zext i1 %i.jo to i32
  %i.jq = load ptr, ptr %i.d, align 8
  %i.jr = load ptr, ptr %i.e, align 8             ; 4 uses
  %i.js = and i64 %i.hx, 4294967295
  br label %.lr.ph180

._crit_edge181:                                   ; preds = %.lr.ph180, %.loopexit167
  %i.jt = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.ju = icmp eq ptr %i.jt, null
  br i1 %i.ju, label %bb.al, label %bb.ak

bb.ai:                                            ; preds = %bb.ad
  %i.jv = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ao

bb.aj:                                            ; preds = %bb.af, %bb.ae
  %i.jw = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  br label %bb.ao

.lr.ph180:                                        ; preds = %.lr.ph180.preheader, %.lr.ph180
  %indvars.iv192 = phi i64 [ 0, %.lr.ph180.preheader ], [ %indvars.iv.next193, %.lr.ph180 ] ; 3 uses
  %.0130177 = phi i32 [ %i.jp, %.lr.ph180.preheader ], [ %i.kv, %.lr.ph180 ] ; 2 uses
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %indvars.iv192
  %i.jy = load float, ptr %i.jx, align 4
  %i.jz = fmul float %i.jy, 1.000000e+03
  %i.ka = fpext float %i.jz to double
  %i.kb = getelementptr inbounds nuw [32 x i8], ptr %i.ic, i64 %indvars.iv192 ; 5 uses
  store double %i.ka, ptr %i.kb, align 8
  %i.kc = zext i32 %.0130177 to i64               ; 4 uses
  %i.kd = getelementptr inbounds nuw [16 x i8], ptr %i.jr, i64 %i.kc
  %i.ke = load float, ptr %i.kd, align 4
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kb, i64 12
  store float %i.ke, ptr %i.kf, align 4
  %i.kg = getelementptr inbounds nuw [16 x i8], ptr %i.jr, i64 %i.kc
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 4
  %i.ki = load float, ptr %i.kh, align 4
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  store float %i.ki, ptr %i.kj, align 8
  %i.kk = getelementptr inbounds nuw [16 x i8], ptr %i.jr, i64 %i.kc
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %i.km = load float, ptr %i.kl, align 4
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kb, i64 20
  store float %i.km, ptr %i.kn, align 4
  %i.ko = getelementptr inbounds nuw [16 x i8], ptr %i.jr, i64 %i.kc
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 12
  %i.kq = load float, ptr %i.kp, align 4
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  store float %i.kq, ptr %i.kr, align 8
  %i.ks = load i32, ptr %i.jm, align 8
  %i.kt = icmp eq i32 %i.ks, 2
  %i.ku = select i1 %i.kt, i32 3, i32 1
  %i.kv = add i32 %i.ku, %.0130177
  %indvars.iv.next193 = add nuw nsw i64 %indvars.iv192, 1 ; 2 uses
  %i.kw = icmp samesign ult i64 %indvars.iv.next193, %i.js
  br i1 %i.kw, label %.lr.ph180, label %._crit_edge181, !llvm.loop !182

bb.ak:                                            ; preds = %._crit_edge181
  call void @_ZdaPv(ptr noundef nonnull %i.jt) #35
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %._crit_edge181
  %i.kx = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.ky = icmp eq ptr %i.kx, null
  br i1 %i.ky, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @_ZdaPv(ptr noundef nonnull %i.kx) #35
end_hunk_1
begin_hunk_2_@_ZN5glTF28Accessor11ExtractDataI13aiQuaterniontIfEEEmRPT_PKSt6vectorIjSaIjEE:bb.a

.lr.ph112:                                        ; preds = %.lr.ph112, %.lr.ph112.preheader.new
  %.0111 = phi i64 [ 0, %.lr.ph112.preheader.new ], [ %i.gy, %.lr.ph112 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph112.preheader.new ], [ %niter.next.1, %.lr.ph112 ]
  %i.gp = load ptr, ptr %1, align 8
  %i.gq = getelementptr inbounds nuw [16 x i8], ptr %i.gp, i64 %.0111
  %i.gr = mul i64 %.0111, %i.cz
  %i.gs = getelementptr inbounds nuw i8, ptr %.3.i, i64 %i.gr
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.gq, ptr nonnull align 1 %i.gs, i64 %i.cx, i1 false)
  %i.gt = or disjoint i64 %.0111, 1               ; 2 uses
  %i.gu = load ptr, ptr %1, align 8
  %i.gv = getelementptr inbounds nuw [16 x i8], ptr %i.gu, i64 %i.gt
  %i.gw = mul i64 %i.gt, %i.cz
  %i.gx = getelementptr inbounds nuw i8, ptr %.3.i, i64 %i.gw
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.gv, ptr nonnull align 1 %i.gx, i64 %i.cx, i1 false)
  %i.gy = add nuw i64 %.0111, 2                   ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph112, !llvm.loop !191

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph112
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph112.epil.preheader

.lr.ph112.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph112.preheader
  %.0111.epil.init = phi i64 [ 0, %.lr.ph112.preheader ], [ %i.gy, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod156 = trunc i64 %i.cd to i1
  tail call void @llvm.assume(i1 %lcmp.mod156)
  %i.gz = load ptr, ptr %1, align 8
  %i.ha = getelementptr inbounds nuw [16 x i8], ptr %i.gz, i64 %.0111.epil.init
  %i.hb = mul i64 %.0111.epil.init, %i.cz
  %i.hc = getelementptr inbounds nuw i8, ptr %.3.i, i64 %i.hb
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ha, ptr nonnull align 1 %i.hc, i64 %i.cx, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ao, %.lr.ph112.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.loopexit109, %.preheader, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  ret i64 %i.cd

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88
  %.sink = phi ptr [ %i.fm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ], [ %i.fm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88 ], [ %i.fm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.thread ], [ %i.gc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ], [ %i.gc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.thread ], [ %i.gc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ]
  %.pn75.pn.ph = phi { ptr, i32 } [ %i.fq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ], [ %i.fq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88 ], [ %i.fp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.thread ], [ %i.gg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ], [ %i.gf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.thread ], [ %i.gg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ]
  call void @__cxa_free_exception(ptr %.sink) #34
  br label %bb.aw

bb.aw:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93
  %.pn75.pn = phi { ptr, i32 } [ %i.gg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ], [ %i.fq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88 ], [ %i.gg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ], [ %i.fq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ], [ %.pn75.pn.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  br label %bb.ax

bb.ax:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, %bb.ad, %bb.aw
  %.pn78.pn = phi { ptr, i32 } [ %.pn78101, %bb.ad ], [ %i.df, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84 ], [ %.pn75.pn, %bb.aw ], [ %i.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %common.resume

bb.ay:                                            ; preds = %bb.as, %bb.am, %bb.ab, %bb.m
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN10aiNodeAnimD2Ev(ptr noundef nonnull align 8 dead_on_return(1080) dereferenceable(1080) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #35
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #35
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #35
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull ptr @_Z19CreateMeshMorphAnimRN5glTF25AssetERNS_4NodeER17AnimationSamplers(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(552) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = tail call noalias noundef nonnull dereferenceable(1040) ptr @_Znwm(i64 noundef 1040) #37 ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.d, i8 0, i64 1040, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.f = load i64, ptr %i.e, align 8, !noalias !192
  %i.g = icmp eq i64 %i.f, 0
  %.v.i = select i1 %i.g, i64 16, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %.v.i ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.i, ptr %3, align 8, !alias.scope !192
  %i.j = load ptr, ptr %i.h, align 8, !noalias !192 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load i64, ptr %i.k, align 8, !noalias !192 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34, !noalias !192
  store i64 %i.l, ptr %i.a, align 8, !noalias !192
  %i.m = icmp ugt i64 %i.l, 15
  br i1 %i.m, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.n = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.n     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.n, ptr %3, align 8, !alias.scope !192
  %i.o = load i64, ptr %i.a, align 8, !noalias !192
  store i64 %i.o, ptr %i.i, align 8, !alias.scope !192
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.a
  %i.p = phi ptr [ %i.n, %.noexc ], [ %i.i, %bb.a ] ; 2 uses
  switch i64 %i.l, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.q = load i8, ptr %i.j, align 1
  store i8 %i.q, ptr %i.p, align 1
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.j, i64 %i.l, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.r = load i64, ptr %i.a, align 8, !noalias !192 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.r, ptr %i.s, align 8, !alias.scope !192
  %i.t = load ptr, ptr %3, align 8, !alias.scope !192
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34, !noalias !192
  %i.v = load i64, ptr %i.s, align 8              ; 5 uses
  %i.w = icmp ugt i64 %i.v, 1023
  %.pre = load ptr, ptr %3, align 8               ; 3 uses
  br i1 %i.w, label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = trunc nuw nsw i64 %i.v to i32
  store i32 %i.x, ptr %i.d, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.y, ptr align 1 %.pre, i64 %i.v, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.v
  store i8 0, ptr %i.z, align 1
  br label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.e, %bb.d
  %i.aa = icmp eq ptr %.pre, %i.i
  br i1 %i.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ab = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.ab)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ac = load i64, ptr %i.i, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.ad) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8            ; 6 uses
  %.not = icmp eq ptr %i.af, null
  br i1 %.not, label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ag = load ptr, ptr %i.af, align 8            ; 3 uses
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit.thread, label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit

_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit: ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = load ptr, ptr %i.ag, align 8
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 3
  %i.ar = icmp ugt i64 %i.aq, %i.aj
  br i1 %i.ar, label %bb.g, label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit.thread

bb.g:                                             ; preds = %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.at = load ptr, ptr %i.as, align 8            ; 3 uses
  %.not.i60 = icmp eq ptr %i.at, null
  br i1 %.not.i60, label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit.thread, label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit61

_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit61: ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.av = load i32, ptr %i.au, align 8
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = load ptr, ptr %i.at, align 8
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = ashr exact i64 %i.bc, 3
  %i.be = icmp ugt i64 %i.bd, %i.aw
  br i1 %i.be, label %bb.h, label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit.thread

bb.h:                                             ; preds = %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  store ptr null, ptr %i.b, align 8
  %i.bf = load ptr, ptr %i.af, align 8
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.aj
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = invoke noundef i64 @_ZN5glTF28Accessor11ExtractDataIfEEmRPT_PKSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(376) %i.bi, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef null)
          to label %bb.i unwind label %bb.o       ; 0 uses

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  store ptr null, ptr %i.c, align 8
  %i.bk = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bo = load i32, ptr %i.bn, align 8
  %i.bp = zext i32 %i.bo to i64
  %i.bq = load ptr, ptr %i.bm, align 8
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bp
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = invoke noundef i64 @_ZN5glTF28Accessor11ExtractDataIfEEmRPT_PKSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(376) %i.bs, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef null)
          to label %bb.j unwind label %bb.p       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.bu = load ptr, ptr %i.ae, align 8            ; 5 uses
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bx = load i32, ptr %i.bw, align 8
  %i.by = zext i32 %i.bx to i64
  %i.bz = load ptr, ptr %i.bv, align 8
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.by
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 296
  %i.cd = load i64, ptr %i.cc, align 8            ; 5 uses
  %i.ce = trunc i64 %i.cd to i32                  ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.d, i64 1028
  store i32 %i.ce, ptr %i.cf, align 4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.cj = load i32, ptr %i.ci, align 8
  %i.ck = zext i32 %i.cj to i64
  %i.cl = load ptr, ptr %i.ch, align 8
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.ck
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 296
  %i.cp = load i64, ptr %i.co, align 8
  %i.cq = trunc i64 %i.cp to i32
  %i.cr = udiv i32 %i.cq, %i.ce                   ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.ct = load i32, ptr %i.cs, align 8
  %i.cu = icmp eq i32 %i.ct, 2                    ; 2 uses
  %i.cv = add i32 %i.cr, -2
  %i.cw = select i1 %i.cu, i32 %i.cv, i32 %i.cr
  %.fr72 = freeze i32 %i.cw                       ; 3 uses
  %i.cx = and i64 %i.cd, 4294967295               ; 4 uses
  %i.cy = shl nuw nsw i64 %i.cx, 5
  %i.cz = or disjoint i64 %i.cy, 8
  %i.da = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cz) #37
          to label %bb.k unwind label %bb.q       ; 2 uses

bb.k:                                             ; preds = %bb.j
  store i64 %i.cx, ptr %i.da, align 16
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 6 uses
  %i.dc = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %i.cx
  %i.dd = add nuw nsw i64 %i.cx, 576460752303423487
  %i.de = and i64 %i.dd, 576460752303423487
  %xtraiter = and i64 %i.cd, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.k, %.prol.preheader
  %i.df = phi ptr [ %i.dg, %.prol.preheader ], [ %i.db, %bb.k ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.k ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.df, i8 0, i64 28, i1 false)
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 32 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !195

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.k
  %.unr = phi ptr [ %i.db, %bb.k ], [ %i.dg, %.prol.preheader ]
  %i.dh = icmp samesign ult i64 %i.de, 7
  br i1 %i.dh, label %.lr.ph69, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.di = phi ptr [ %i.dq, %.new ], [ %.unr, %.prol.loopexit ] ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.di, i8 0, i64 28, i1 false)
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.dj, i8 0, i64 28, i1 false)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.dk, i8 0, i64 28, i1 false)
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.dl, i8 0, i64 28, i1 false)
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.dm, i8 0, i64 28, i1 false)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.dn, i8 0, i64 28, i1 false)
  %i.do = getelementptr inbounds nuw i8, ptr %i.di, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.do, i8 0, i64 28, i1 false)
  %i.dp = getelementptr inbounds nuw i8, ptr %i.di, i64 224
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.dp, i8 0, i64 28, i1 false)
  %i.dq = getelementptr inbounds nuw i8, ptr %i.di, i64 256 ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.dc
  br i1 %i.dr, label %.lr.ph69, label %.new

.lr.ph69:                                         ; preds = %.new, %.prol.loopexit
  %i.ds = getelementptr inbounds nuw i8, ptr %i.d, i64 1032
  store ptr %i.db, ptr %i.ds, align 8
  %i.dt = zext i1 %i.cu to i32
  %i.du = zext i32 %.fr72 to i64                  ; 3 uses
  %i.dv = shl nuw nsw i64 %i.du, 2                ; 2 uses
  %i.dw = shl nuw nsw i64 %i.du, 3                ; 2 uses
  %.not73 = icmp eq i32 %.fr72, 0
  br i1 %.not73, label %.lr.ph69.split.preheader, label %.lr.ph69.split.us.preheader

.lr.ph69.split.us.preheader:                      ; preds = %.lr.ph69
  %i.dx = and i64 %i.cd, 4294967295
  br label %.lr.ph69.split.us

.lr.ph69.split.preheader:                         ; preds = %.lr.ph69
  %i.dy = load ptr, ptr %i.b, align 8
  %i.dz = and i64 %i.cd, 4294967295
  br label %.lr.ph69.split

.lr.ph69.split.us:                                ; preds = %.lr.ph69.split.us.preheader, %._crit_edge.us
  %indvars.iv76 = phi i64 [ 0, %.lr.ph69.split.us.preheader ], [ %indvars.iv.next77, %._crit_edge.us ] ; 4 uses
  %i.ea = trunc nuw i64 %indvars.iv76 to i32
  %i.eb = mul i32 %i.cr, %i.ea
  %i.ec = add i32 %i.eb, %i.dt
  %i.ed = load ptr, ptr %i.b, align 8
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv76
  %i.ef = load float, ptr %i.ee, align 4
  %i.eg = fmul float %i.ef, 1.000000e+03
  %i.eh = fpext float %i.eg to double
  %i.ei = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %indvars.iv76 ; 4 uses
  store double %i.eh, ptr %i.ei, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  store i32 %.fr72, ptr %i.ej, align 8
  %i.ek = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dv) #37
          to label %bb.l unwind label %.split.us

bb.l:                                             ; preds = %.lr.ph69.split.us
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 8 ; 2 uses
  store ptr %i.ek, ptr %i.el, align 8
  %i.em = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dw) #37
          to label %.lr.ph.us unwind label %.split.us

.lr.ph.us:                                        ; preds = %bb.l
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 16 ; 2 uses
  store ptr %i.em, ptr %i.en, align 8
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph.us, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next, %bb.m ] ; 4 uses
  %.05265.us = phi i32 [ %i.ec, %.lr.ph.us ], [ %i.ez, %bb.m ] ; 2 uses
  %i.eo = load ptr, ptr %i.el, align 8
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %indvars.iv
  %i.eq = trunc nuw i64 %indvars.iv to i32
  store i32 %i.eq, ptr %i.ep, align 4
  %i.er = load ptr, ptr %i.c, align 8
  %i.es = zext i32 %.05265.us to i64
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %i.es
  %i.eu = load float, ptr %i.et, align 4          ; 2 uses
  %.inv.us = fcmp ole float %i.eu, 0.000000e+00
  %i.ev = select i1 %.inv.us, float 0.000000e+00, float %i.eu
  %i.ew = fpext float %i.ev to double
  %i.ex = load ptr, ptr %i.en, align 8
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %indvars.iv
  store double %i.ew, ptr %i.ey, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ez = add i32 %.05265.us, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.du
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.m, !llvm.loop !196

._crit_edge.us:                                   ; preds = %bb.m
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1 ; 2 uses
  %i.fa = icmp samesign ult i64 %indvars.iv.next77, %i.dx
  br i1 %i.fa, label %.lr.ph69.split.us, label %._crit_edge70, !llvm.loop !197

.split.us:                                        ; preds = %bb.l, %.lr.ph69.split.us
  %i.fb = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.x

._crit_edge70:                                    ; preds = %._crit_edge.us, %bb.s
  %i.fc = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.fd = icmp eq ptr %i.fc, null
  br i1 %i.fd, label %bb.u, label %bb.t

bb.n:                                             ; preds = %.noexc.i.i
  %i.fe = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %bb.z

bb.o:                                             ; preds = %bb.h
  %i.ff = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.y

bb.p:                                             ; preds = %bb.i
  %i.fg = landingpad { ptr, i32 }
          catch ptr null
end_hunk_2
begin_hunk_3_@_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_ED2Ev:bb.a
bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.f) #34
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.g) #34
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.h) #34
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.j = load ptr, ptr %i.i, align 8
  tail call void @free(ptr noundef %i.j) #34
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 1) #35
  br label %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEED2Ev.exit

_ZN9rapidjson8internal5StackINS_12CrtAllocatorEED2Ev.exit: ; preds = %bb.d, %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.o = load ptr, ptr %i.n, align 8
  tail call void @free(ptr noundef %i.o) #34
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEED2Ev.exit1, label %bb.f

bb.f:                                             ; preds = %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEED2Ev.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef 1) #35
  br label %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEED2Ev.exit1

_ZN9rapidjson8internal5StackINS_12CrtAllocatorEED2Ev.exit1: ; preds = %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEED2Ev.exit, %bb.f
  ret void

bb.g:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #38
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5glTF26Buffer14LoadFromStreamERN6Assimp8IOStreamEmm(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi i64 [ %i.d, %bb.b ], [ %2, %bb.a ]   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  store i64 %i.e, ptr %i.f, align 8
  %i.g = load ptr, ptr %1, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef i64 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.k = icmp ugt i64 %i.e, %i.j
  br i1 %i.k, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.l = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull @.str.328)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.l) #34
  resume { ptr, i32 } %i.m

bb.g:                                             ; preds = %bb.c
  %.not13 = icmp eq i64 %3, 0
  br i1 %.not13, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = load ptr, ptr %1, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef i32 %i.p(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %3, i32 noundef 0) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.s = load i64, ptr %i.f, align 8
  %i.t = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.s) #37
  tail call void @_ZNSt12__shared_ptrIhLN9__gnu_cxx12_Lock_policyE2EE5resetIhSt14default_deleteIA_hEEENSt9enable_ifIXsr21__sp_is_constructibleIhT_EE5valueEvE4typeEPS8_T0_(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull %i.t)
  %i.u = load ptr, ptr %i.r, align 8
  %i.v = load i64, ptr %i.f, align 8
  %i.w = load ptr, ptr %1, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef i64 %i.y(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.u, i64 noundef %i.v, i64 noundef 1)
  %.not14 = icmp eq i64 %i.z, 1
  ret i1 %.not14
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5glTF25Asset18ReadExtensionsUsedERN9rapidjson15GenericDocumentINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEES6_EE(ptr noundef nonnull align 8 dereferenceable(3624) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  %i.j = alloca i64, align 8                      ; 5 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %i.l = alloca i64, align 8                      ; 5 uses
  %i.m = alloca i64, align 8                      ; 5 uses
  %i.n = alloca i64, align 8                      ; 5 uses
  %i.o = alloca i64, align 8                      ; 6 uses
  %i.p = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::unordered_map.415", align 8 ; 28 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.q = tail call noundef ptr @_ZN10glTFCommon18FindArrayInContextERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKcSA_SA_(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull @.str.329, ptr noundef nonnull @.str.76, ptr noundef null) ; 4 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.bg, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  store ptr %i.r, ptr %2, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 1, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  %i.w = load i32, ptr %i.q, align 8              ; 2 uses
  %.not313 = icmp eq i32 %i.w, 0
  br i1 %.not313, label %.noexc.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.c

.noexc.i:                                         ; preds = %bb.k, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.aa, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #34
  store i64 35, ptr %i.p, align 8
  %i.ab = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.p, i64 noundef 0)
          to label %.noexc unwind label %bb.m     ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.ab, ptr %4, align 8
  %i.ac = load i64, ptr %i.p, align 8             ; 3 uses
  store i64 %i.ac, ptr %i.aa, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %i.ab, ptr noundef nonnull align 1 dereferenceable(35) @.str.152, i64 35, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ac, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ac
  store i8 0, ptr %i.ae, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #34
  %i.af = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEE4findERSB_.exit unwind label %bb.n

bb.c:                                             ; preds = %.lr.ph, %bb.k
  %i.ag = phi i32 [ %i.w, %.lr.ph ], [ %i.bq, %bb.k ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 2 uses
  %i.ah = load ptr, ptr %i.x, align 8
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = and i64 %i.ai, 281474976710655
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %indvars.iv ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 14
  %i.an = load i16, ptr %i.am, align 2            ; 2 uses
  %i.ao = and i16 %i.an, 1024
  %.not308 = icmp eq i16 %i.ao, 0
  br i1 %.not308, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.ap = and i16 %i.an, 4096
  %.not.i.i = icmp eq i16 %i.ap, 0
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = and i64 %i.as, 281474976710655
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = select i1 %.not.i.i, ptr %i.au, ptr %i.al ; 4 uses
  store ptr %i.y, ptr %3, align 8
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.264) #36
          to label %.noexc66 unwind label %.loopexit.split-lp

.noexc66:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ax = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.av) #34 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #34
  store i64 %i.ax, ptr %i.o, align 8
  %i.ay = icmp ugt i64 %i.ax, 15
  br i1 %i.ay, label %.noexc.i65, label %._crit_edge.i.i64

.noexc.i65:                                       ; preds = %bb.f
  %i.az = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.o, i64 noundef 0)
          to label %.noexc67 unwind label %.loopexit ; 2 uses

.noexc67:                                         ; preds = %.noexc.i65
  store ptr %i.az, ptr %3, align 8
  %i.ba = load i64, ptr %i.o, align 8
  store i64 %i.ba, ptr %i.y, align 8
  br label %._crit_edge.i.i64

._crit_edge.i.i64:                                ; preds = %.noexc67, %bb.f
  %i.bb = phi ptr [ %i.az, %.noexc67 ], [ %i.y, %bb.f ] ; 2 uses
  switch i64 %i.ax, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i64
  %i.bc = load i8, ptr %i.av, align 1
  store i8 %i.bc, ptr %i.bb, align 1
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bb, ptr nonnull align 1 %i.av, i64 %i.ax, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i64
  %i.bd = load i64, ptr %i.o, align 8             ; 2 uses
  store i64 %i.bd, ptr %i.z, align 8
  %i.be = load ptr, ptr %3, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bd
  store i8 0, ptr %i.bf, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #34
  %i.bg = invoke noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_bESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS6_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEEixEOS5_.exit unwind label %bb.j

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEEixEOS5_.exit: ; preds = %bb.i
  store i8 1, ptr %i.bg, align 1
  %i.bh = load ptr, ptr %3, align 8               ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.y
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEEixEOS5_.exit
  %i.bj = load i64, ptr %i.y, align 8
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEEixEOS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %.pre = load i32, ptr %i.q, align 8
  br label %bb.k

.loopexit:                                        ; preds = %.noexc.i65
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

bb.j:                                             ; preds = %bb.i
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bm = load ptr, ptr %3, align 8               ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.y
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %bb.j
  %i.bo = load i64, ptr %i.y, align 8
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %bb.j, %.loopexit, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70
  %.pn60.pn = phi { ptr, i32 } [ %i.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %i.bl, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %bb.bh

bb.k:                                             ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bq = phi i32 [ %i.ag, %bb.c ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.br = zext i32 %i.bq to i64
  %i.bs = icmp samesign ult i64 %indvars.iv.next, %i.br
  br i1 %i.bs, label %bb.c, label %.noexc.i, !llvm.loop !551

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEE4findERSB_.exit: ; preds = %.noexc
  %.not293 = icmp eq ptr %i.af, null
  %i.bt = load ptr, ptr %4, align 8               ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.aa
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEE4findERSB_.exit
  %i.bv = load i64, ptr %i.aa, align 8
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEE4findERSB_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br i1 %.not293, label %.noexc.i81, label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.bx, align 8
  br label %.noexc.i81

bb.m:                                             ; preds = %.noexc.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

bb.n:                                             ; preds = %.noexc
  %i.bz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ca = load ptr, ptr %4, align 8               ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.aa
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %bb.n
  %i.cc = load i64, ptr %i.aa, align 8
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77, %bb.m
  %.pn = phi { ptr, i32 } [ %i.by, %bb.m ], [ %i.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77 ], [ %i.bz, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.bh

.noexc.i81:                                       ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.ce, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #34
  store i64 22, ptr %i.n, align 8
  %i.cf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.n, i64 noundef 0)
          to label %.noexc82 unwind label %bb.p   ; 2 uses

.noexc82:                                         ; preds = %.noexc.i81
  store ptr %i.cf, ptr %5, align 8
  %i.cg = load i64, ptr %i.n, align 8             ; 3 uses
  store i64 %i.cg, ptr %i.ce, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.cf, ptr noundef nonnull align 1 dereferenceable(22) @.str.157, i64 22, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.cg, ptr %i.ch, align 8
  %i.ci = load ptr, ptr %5, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cg
  store i8 0, ptr %i.cj, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #34
  %i.ck = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEE4findERSB_.exit85 unwind label %bb.q

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEE4findERSB_.exit85: ; preds = %.noexc82
  %.not294 = icmp eq ptr %i.ck, null
  %i.cl = load ptr, ptr %5, align 8               ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.ce
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEE4findERSB_.exit85
  %i.cn = load i64, ptr %i.ce, align 8
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEE4findERSB_.exit85, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br i1 %.not294, label %.noexc.i93, label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 1, ptr %i.cp, align 1
  br label %.noexc.i93
end_hunk_3
begin_hunk_4_@_ZN5glTF25Asset18ReadExtensionsUsedERN9rapidjson15GenericDocumentINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEES6_EE:bb.a
  %i.ld = add i64 %i.lc, 1
  call void @_ZdlPvm(ptr noundef %i.la, i64 noundef %i.ld) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233, %bb.az
  %.pn56 = phi { ptr, i32 } [ %i.ky, %bb.az ], [ %i.kz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233 ], [ %i.kz, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #34
  br label %bb.bh

.noexc.i237:                                      ; preds = %bb.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #34
  %i.le = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  store ptr %i.le, ptr %18, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 16, ptr %i.a, align 8
  %i.lf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc238 unwind label %bb.bc ; 2 uses

.noexc238:                                        ; preds = %.noexc.i237
  store ptr %i.lf, ptr %18, align 8
  %i.lg = load i64, ptr %i.a, align 8             ; 3 uses
  store i64 %i.lg, ptr %i.le, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.lf, ptr noundef nonnull align 1 dereferenceable(16) @.str.333, i64 16, i1 false)
  %i.lh = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %i.lg, ptr %i.lh, align 8
  %i.li = load ptr, ptr %18, align 8
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 %i.lg
  store i8 0, ptr %i.lj, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.lk = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEE4findERSB_.exit241 unwind label %bb.bd

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEE4findERSB_.exit241: ; preds = %.noexc238
  %.not307 = icmp eq ptr %i.lk, null
  %i.ll = load ptr, ptr %18, align 8              ; 2 uses
  %i.lm = icmp eq ptr %i.ll, %i.le
  br i1 %i.lm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEE4findERSB_.exit241
  %i.ln = load i64, ptr %i.le, align 8
  %i.lo = add i64 %i.ln, 1
  call void @_ZdlPvm(ptr noundef %i.ll, i64 noundef %i.lo) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEE4findERSB_.exit241, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #34
  br i1 %.not307, label %bb.be, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 39
  store i8 1, ptr %i.lp, align 1
  br label %bb.be

bb.bc:                                            ; preds = %.noexc.i237
  %i.lq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247

bb.bd:                                            ; preds = %.noexc238
  %i.lr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ls = load ptr, ptr %18, align 8              ; 2 uses
  %i.lt = icmp eq ptr %i.ls, %i.le
  br i1 %i.lt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245: ; preds = %bb.bd
  %i.lu = load i64, ptr %i.le, align 8
  %i.lv = add i64 %i.lu, 1
  call void @_ZdlPvm(ptr noundef %i.ls, i64 noundef %i.lv) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245, %bb.bc
  %.pn58 = phi { ptr, i32 } [ %i.lq, %bb.bc ], [ %i.lr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245 ], [ %i.lr, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #34
  br label %bb.bh

bb.be:                                            ; preds = %bb.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244
  %i.lw = load ptr, ptr %i.t, align 8             ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.lw, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.be, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.lx, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i ], [ %i.lw, %bb.be ] ; 4 uses
  %i.lx = load ptr, ptr %.06.i.i.i.i, align 8     ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.lz = load ptr, ptr %i.ly, align 8            ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 24 ; 2 uses
  %i.mb = icmp eq ptr %i.lz, %i.ma
  br i1 %i.mb, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.mc = load i64, ptr %i.ma, align 8
  %i.md = add i64 %i.mc, 1
  call void @_ZdlPvm(ptr noundef %i.lz, i64 noundef %i.md) #35
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 56) #35
  %.not.i.i.i.i = icmp eq ptr %i.lx, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !552

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i, %bb.be
  %i.me = load ptr, ptr %2, align 8
  %i.mf = load i64, ptr %i.s, align 8
  %i.mg = shl i64 %i.mf, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.me, i8 0, i64 %i.mg, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  %i.mh = load ptr, ptr %2, align 8               ; 2 uses
  %i.mi = icmp eq ptr %i.mh, %i.r
  br i1 %i.mi, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEED2Ev.exit, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  %i.mj = load i64, ptr %i.s, align 8
  %i.mk = shl i64 %i.mj, 3
  call void @_ZdlPvm(ptr noundef %i.mh, i64 noundef %i.mk) #35
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEED2Ev.exit

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br label %bb.bg

bb.bg:                                            ; preds = %bb.a, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEED2Ev.exit
  ret void

bb.bh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72
  %.pn60.pn.pn = phi { ptr, i32 } [ %.pn60.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72 ], [ %.pn58, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247 ], [ %.pn56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235 ], [ %.pn54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223 ], [ %.pn52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211 ], [ %.pn50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199 ], [ %.pn48, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187 ], [ %.pn46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175 ], [ %.pn44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163 ], [ %.pn42, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151 ], [ %.pn40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139 ], [ %.pn38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127 ], [ %.pn36, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115 ], [ %.pn34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103 ], [ %.pn32, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79 ]
  call void @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  resume { ptr, i32 } %.pn60.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5glTF25Asset22ReadExtensionsRequiredERN9rapidjson15GenericDocumentINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEES6_EE(ptr noundef nonnull align 8 dereferenceable(3624) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::unordered_map.415", align 8 ; 16 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.e = tail call noundef ptr @_ZN10glTFCommon18FindArrayInContextERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKcSA_SA_(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull @.str.334, ptr noundef nonnull @.str.76, ptr noundef null) ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  store ptr %i.g, ptr %2, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  %i.l = load i32, ptr %i.e, align 8              ; 2 uses
  %.not84 = icmp eq i32 %i.l, 0
  br i1 %.not84, label %.noexc.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.c

.noexc.i:                                         ; preds = %bb.k, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.p, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  store i64 26, ptr %i.d, align 8
  %i.q = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc unwind label %bb.m     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.q, ptr %4, align 8
  %i.r = load i64, ptr %i.d, align 8              ; 3 uses
  store i64 %i.r, ptr %i.p, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.q, ptr noundef nonnull align 1 dereferenceable(26) @.str.331, i64 26, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.r, ptr %i.s, align 8
  %i.t = load ptr, ptr %4, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  %i.v = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEE4findERSB_.exit unwind label %bb.n

bb.c:                                             ; preds = %.lr.ph, %bb.k
  %i.w = phi i32 [ %i.l, %.lr.ph ], [ %i.bg, %bb.k ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 2 uses
  %i.x = load ptr, ptr %i.m, align 8
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = and i64 %i.y, 281474976710655
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %indvars.iv ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 14
  %i.ad = load i16, ptr %i.ac, align 2            ; 2 uses
  %i.ae = and i16 %i.ad, 1024
  %.not79 = icmp eq i16 %i.ae, 0
  br i1 %.not79, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.af = and i16 %i.ad, 4096
  %.not.i.i = icmp eq i16 %i.af, 0
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = and i64 %i.ai, 281474976710655
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = select i1 %.not.i.i, ptr %i.ak, ptr %i.ab ; 4 uses
  store ptr %i.n, ptr %3, align 8
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.264) #36
          to label %.noexc30 unwind label %.loopexit.split-lp

.noexc30:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.an = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.al) #34 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  store i64 %i.an, ptr %i.c, align 8
  %i.ao = icmp ugt i64 %i.an, 15
  br i1 %i.ao, label %.noexc.i29, label %._crit_edge.i.i28

.noexc.i29:                                       ; preds = %bb.f
  %i.ap = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc31 unwind label %.loopexit ; 2 uses

.noexc31:                                         ; preds = %.noexc.i29
  store ptr %i.ap, ptr %3, align 8
  %i.aq = load i64, ptr %i.c, align 8
  store i64 %i.aq, ptr %i.n, align 8
  br label %._crit_edge.i.i28

._crit_edge.i.i28:                                ; preds = %.noexc31, %bb.f
  %i.ar = phi ptr [ %i.ap, %.noexc31 ], [ %i.n, %bb.f ] ; 2 uses
  switch i64 %i.an, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i28
  %i.as = load i8, ptr %i.al, align 1
  store i8 %i.as, ptr %i.ar, align 1
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i28
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ar, ptr nonnull align 1 %i.al, i64 %i.an, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i28
  %i.at = load i64, ptr %i.c, align 8             ; 2 uses
  store i64 %i.at, ptr %i.o, align 8
  %i.au = load ptr, ptr %3, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.at
  store i8 0, ptr %i.av, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  %i.aw = invoke noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_bESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS6_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEEixEOS5_.exit unwind label %bb.j

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEEixEOS5_.exit: ; preds = %bb.i
  store i8 1, ptr %i.aw, align 1
  %i.ax = load ptr, ptr %3, align 8               ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.n
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEEixEOS5_.exit
  %i.az = load i64, ptr %i.n, align 8
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEEixEOS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %.pre = load i32, ptr %i.e, align 8
  br label %bb.k

.loopexit:                                        ; preds = %.noexc.i29
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

bb.j:                                             ; preds = %bb.i
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = load ptr, ptr %3, align 8               ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.n
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %bb.j
  %i.be = load i64, ptr %i.n, align 8
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %bb.j, %.loopexit, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34
  %.pn24.pn = phi { ptr, i32 } [ %i.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %i.bb, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %bb.x

bb.k:                                             ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bg = phi i32 [ %i.w, %bb.c ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bh = zext i32 %i.bg to i64
  %i.bi = icmp samesign ult i64 %indvars.iv.next, %i.bh
  br i1 %i.bi, label %bb.c, label %.noexc.i, !llvm.loop !553

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEE4findERSB_.exit: ; preds = %.noexc
  %.not = icmp eq ptr %i.v, null
  %i.bj = load ptr, ptr %4, align 8               ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.p
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEE4findERSB_.exit
  %i.bl = load i64, ptr %i.p, align 8
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEE4findERSB_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br i1 %.not, label %.noexc.i45, label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.bn, align 8
  br label %.noexc.i45

bb.m:                                             ; preds = %.noexc.i
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

bb.n:                                             ; preds = %.noexc
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = load ptr, ptr %4, align 8               ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.p
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %bb.n
  %i.bs = load i64, ptr %i.p, align 8
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.m ], [ %i.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41 ], [ %i.bp, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.x

.noexc.i45:                                       ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.bu, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  store i64 18, ptr %i.b, align 8
  %i.bv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc46 unwind label %bb.p   ; 2 uses

.noexc46:                                         ; preds = %.noexc.i45
  store ptr %i.bv, ptr %5, align 8
  %i.bw = load i64, ptr %i.b, align 8             ; 3 uses
  store i64 %i.bw, ptr %i.bu, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.bv, ptr noundef nonnull align 1 dereferenceable(18) @.str.332, i64 18, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.bw, ptr %i.bx, align 8
  %i.by = load ptr, ptr %5, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bw
  store i8 0, ptr %i.bz, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  %i.ca = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEE4findERSB_.exit49 unwind label %bb.q

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEE4findERSB_.exit49: ; preds = %.noexc46
  %.not77 = icmp eq ptr %i.ca, null
  %i.cb = load ptr, ptr %5, align 8               ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.bu
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEE4findERSB_.exit49
  %i.cd = load i64, ptr %i.bu, align 8
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEE4findERSB_.exit49, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br i1 %.not77, label %.noexc.i57, label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 1, ptr %i.cf, align 1
  br label %.noexc.i57
end_hunk_4
begin_hunk_5_@_ZN9rapidjson8internal6HasherINS_4UTF8IcEENS_12CrtAllocatorEE5Int64El:bb.a
  br label %_ZN9rapidjson8internal6HasherINS_4UTF8IcEENS_12CrtAllocatorEE11WriteNumberERKNS5_6NumberE.exit

_ZN9rapidjson8internal6HasherINS_4UTF8IcEENS_12CrtAllocatorEE11WriteNumberERKNS5_6NumberE.exit: ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.d, %bb.a ], [ %.pre.i.i, %bb.b ] ; 2 uses
  %i.j = sitofp i64 %1 to double
  %i.k = bitcast double %i.j to i64               ; 8 uses
  %.sroa.11.15.extract.shift = lshr i64 %i.k, 56
  %.sroa.11.14.extract.shift = lshr i64 %i.k, 48
  %.sroa.11.13.extract.shift = lshr i64 %i.k, 40
  %.sroa.11.12.extract.shift = lshr i64 %i.k, 32
  %.sroa.11.11.extract.shift = lshr i64 %i.k, 24
  %.sroa.11.10.extract.shift = lshr i64 %i.k, 16
  %.sroa.11.9.extract.shift = lshr i64 %i.k, 8
  %.sroa.0.7.extract.shift = lshr i64 %1, 56
  %.sroa.0.6.extract.shift = lshr i64 %1, 48
  %.sroa.0.5.extract.shift = lshr i64 %1, 40
  %.sroa.0.4.extract.shift = lshr i64 %1, 32
  %.sroa.0.3.extract.shift = lshr i64 %1, 24
  %.sroa.0.2.extract.shift = lshr i64 %1, 16
  %.sroa.0.1.extract.shift = lshr i64 %1, 8
  %i.l = and i64 %1, 255
  %i.m = xor i64 %i.l, -5808593157037640583
  %.09.i.i = mul i64 %i.m, 1099511628211
  %i.n = and i64 %.sroa.0.1.extract.shift, 255
  %i.o = xor i64 %.09.i.i, %i.n
  %.09.i.1.i = mul i64 %i.o, 1099511628211
  %i.p = and i64 %.sroa.0.2.extract.shift, 255
  %i.q = xor i64 %.09.i.1.i, %i.p
  %.09.i.2.i = mul i64 %i.q, 1099511628211
  %i.r = and i64 %.sroa.0.3.extract.shift, 255
  %i.s = xor i64 %.09.i.2.i, %i.r
  %.09.i.3.i = mul i64 %i.s, 1099511628211
  %i.t = and i64 %.sroa.0.4.extract.shift, 255
  %i.u = xor i64 %.09.i.3.i, %i.t
  %.09.i.4.i = mul i64 %i.u, 1099511628211
  %i.v = and i64 %.sroa.0.5.extract.shift, 255
  %i.w = xor i64 %.09.i.4.i, %i.v
  %.09.i.5.i = mul i64 %i.w, 1099511628211
  %i.x = and i64 %.sroa.0.6.extract.shift, 255
  %i.y = xor i64 %.09.i.5.i, %i.x
  %.09.i.6.i = mul i64 %i.y, 1099511628211
  %i.z = xor i64 %.09.i.6.i, %.sroa.0.7.extract.shift
  %.09.i.7.i = mul i64 %i.z, 1099511628211
  %i.aa = and i64 %i.k, 255
  %i.ab = xor i64 %.09.i.7.i, %i.aa
  %.09.i.8.i = mul i64 %i.ab, 1099511628211
  %i.ac = and i64 %.sroa.11.9.extract.shift, 255
  %i.ad = xor i64 %.09.i.8.i, %i.ac
  %.09.i.9.i = mul i64 %i.ad, 1099511628211
  %i.ae = and i64 %.sroa.11.10.extract.shift, 255
  %i.af = xor i64 %.09.i.9.i, %i.ae
  %.09.i.10.i = mul i64 %i.af, 1099511628211
  %i.ag = and i64 %.sroa.11.11.extract.shift, 255
  %i.ah = xor i64 %.09.i.10.i, %i.ag
  %.09.i.11.i = mul i64 %i.ah, 1099511628211
  %i.ai = and i64 %.sroa.11.12.extract.shift, 255
  %i.aj = xor i64 %.09.i.11.i, %i.ai
  %.09.i.12.i = mul i64 %i.aj, 1099511628211
  %i.ak = and i64 %.sroa.11.13.extract.shift, 255
  %i.al = xor i64 %.09.i.12.i, %i.ak
  %.09.i.13.i = mul i64 %i.al, 1099511628211
  %i.am = and i64 %.sroa.11.14.extract.shift, 255
  %i.an = xor i64 %.09.i.13.i, %i.am
  %.09.i.14.i = mul i64 %i.an, 1099511628211
  %i.ao = xor i64 %.09.i.14.i, %.sroa.11.15.extract.shift
  %.09.i.15.i = mul i64 %i.ao, 1099511628211
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.ap, ptr %i.c, align 8
  store i64 %.09.i.15.i, ptr %i.i, align 8
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN9rapidjson8internal6HasherINS_4UTF8IcEENS_12CrtAllocatorEE6Uint64Em(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp slt i64 %i.g, 8
  br i1 %i.h, label %bb.b, label %_ZN9rapidjson8internal6HasherINS_4UTF8IcEENS_12CrtAllocatorEE11WriteNumberERKNS5_6NumberE.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandImEEvm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef 1)
  %.pre.i.i = load ptr, ptr %i.c, align 8
  br label %_ZN9rapidjson8internal6HasherINS_4UTF8IcEENS_12CrtAllocatorEE11WriteNumberERKNS5_6NumberE.exit

_ZN9rapidjson8internal6HasherINS_4UTF8IcEENS_12CrtAllocatorEE11WriteNumberERKNS5_6NumberE.exit: ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.d, %bb.a ], [ %.pre.i.i, %bb.b ] ; 2 uses
  %i.j = uitofp i64 %1 to double
  %i.k = bitcast double %i.j to i64               ; 8 uses
  %.sroa.11.15.extract.shift = lshr i64 %i.k, 56
  %.sroa.11.14.extract.shift = lshr i64 %i.k, 48
  %.sroa.11.13.extract.shift = lshr i64 %i.k, 40
  %.sroa.11.12.extract.shift = lshr i64 %i.k, 32
  %.sroa.11.11.extract.shift = lshr i64 %i.k, 24
  %.sroa.11.10.extract.shift = lshr i64 %i.k, 16
  %.sroa.11.9.extract.shift = lshr i64 %i.k, 8
  %.sroa.0.7.extract.shift = lshr i64 %1, 56
  %.sroa.0.6.extract.shift = lshr i64 %1, 48
  %.sroa.0.5.extract.shift = lshr i64 %1, 40
  %.sroa.0.4.extract.shift = lshr i64 %1, 32
  %.sroa.0.3.extract.shift = lshr i64 %1, 24
  %.sroa.0.2.extract.shift = lshr i64 %1, 16
  %.sroa.0.1.extract.shift = lshr i64 %1, 8
  %i.l = and i64 %1, 255
  %i.m = xor i64 %i.l, -5808593157037640583
  %.09.i.i = mul i64 %i.m, 1099511628211
  %i.n = and i64 %.sroa.0.1.extract.shift, 255
  %i.o = xor i64 %.09.i.i, %i.n
  %.09.i.1.i = mul i64 %i.o, 1099511628211
  %i.p = and i64 %.sroa.0.2.extract.shift, 255
  %i.q = xor i64 %.09.i.1.i, %i.p
  %.09.i.2.i = mul i64 %i.q, 1099511628211
  %i.r = and i64 %.sroa.0.3.extract.shift, 255
  %i.s = xor i64 %.09.i.2.i, %i.r
  %.09.i.3.i = mul i64 %i.s, 1099511628211
  %i.t = and i64 %.sroa.0.4.extract.shift, 255
  %i.u = xor i64 %.09.i.3.i, %i.t
  %.09.i.4.i = mul i64 %i.u, 1099511628211
  %i.v = and i64 %.sroa.0.5.extract.shift, 255
  %i.w = xor i64 %.09.i.4.i, %i.v
  %.09.i.5.i = mul i64 %i.w, 1099511628211
  %i.x = and i64 %.sroa.0.6.extract.shift, 255
  %i.y = xor i64 %.09.i.5.i, %i.x
  %.09.i.6.i = mul i64 %i.y, 1099511628211
  %i.z = xor i64 %.09.i.6.i, %.sroa.0.7.extract.shift
  %.09.i.7.i = mul i64 %i.z, 1099511628211
  %i.aa = and i64 %i.k, 255
  %i.ab = xor i64 %.09.i.7.i, %i.aa
  %.09.i.8.i = mul i64 %i.ab, 1099511628211
  %i.ac = and i64 %.sroa.11.9.extract.shift, 255
  %i.ad = xor i64 %.09.i.8.i, %i.ac
  %.09.i.9.i = mul i64 %i.ad, 1099511628211
  %i.ae = and i64 %.sroa.11.10.extract.shift, 255
  %i.af = xor i64 %.09.i.9.i, %i.ae
  %.09.i.10.i = mul i64 %i.af, 1099511628211
  %i.ag = and i64 %.sroa.11.11.extract.shift, 255
  %i.ah = xor i64 %.09.i.10.i, %i.ag
  %.09.i.11.i = mul i64 %i.ah, 1099511628211
  %i.ai = and i64 %.sroa.11.12.extract.shift, 255
  %i.aj = xor i64 %.09.i.11.i, %i.ai
  %.09.i.12.i = mul i64 %i.aj, 1099511628211
  %i.ak = and i64 %.sroa.11.13.extract.shift, 255
  %i.al = xor i64 %.09.i.12.i, %i.ak
  %.09.i.13.i = mul i64 %i.al, 1099511628211
  %i.am = and i64 %.sroa.11.14.extract.shift, 255
  %i.an = xor i64 %.09.i.13.i, %i.am
  %.09.i.14.i = mul i64 %i.an, 1099511628211
  %i.ao = xor i64 %.09.i.14.i, %.sroa.11.15.extract.shift
  %.09.i.15.i = mul i64 %i.ao, 1099511628211
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.ap, ptr %i.c, align 8
  store i64 %.09.i.15.i, ptr %i.i, align 8
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E9StringifyILb1ENS_19GenericStringBufferIS3_S5_EEEEbRT0_(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %2 = alloca %"struct.rapidjson::GenericStringStream", align 8 ; 7 uses
  %3 = alloca %"class.rapidjson::GenericPointer<rapidjson::GenericValue<rapidjson::UTF8<>>>::PercentEncodeStream", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 12 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 16 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp slt i64 %i.g, 1
  br i1 %i.h, label %bb.b, label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef 1)
  %.pre.i = load ptr, ptr %i.c, align 8
  br label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit

_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit: ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.d, %bb.a ], [ %.pre.i, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store ptr %i.j, ptr %i.c, align 8
  store i8 35, ptr %i.i, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8
  %.not82 = icmp eq i64 %i.m, 0
  br i1 %.not82, label %.loopexit, label %.lr.ph85

.lr.ph85:                                         ; preds = %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit
  %i.n = load ptr, ptr %i.k, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 10 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph85, %.critedge
  %.03783 = phi ptr [ %i.n, %.lr.ph85 ], [ %i.fk, %.critedge ] ; 3 uses
  %i.s = load ptr, ptr %i.a, align 8
  %i.t = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = icmp slt i64 %i.w, 1
  br i1 %i.x, label %bb.d, label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit41, !prof !6

bb.d:                                             ; preds = %bb.c
  call void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef 1)
  %.pre.i40 = load ptr, ptr %i.c, align 8
  br label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit41

_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit41: ; preds = %bb.c, %bb.d
  %i.y = phi ptr [ %i.t, %bb.c ], [ %.pre.i40, %bb.d ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  store ptr %i.z, ptr %i.c, align 8
  store i8 47, ptr %i.y, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %.03783, i64 8 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8
  %.not3980.not = icmp eq i32 %i.ab, 0
  br i1 %.not3980.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit41, %bb.aw
  %.02981 = phi i64 [ %i.fh, %bb.aw ], [ 0, %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit41 ] ; 5 uses
  %i.ac = load ptr, ptr %.03783, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.02981 ; 3 uses
  %i.ae = load i8, ptr %i.ad, align 1             ; 5 uses
  switch i8 %i.ae, label %bb.am [
    i8 126, label %bb.e
    i8 47, label %bb.v
  ]

bb.e:                                             ; preds = %.lr.ph
  %i.af = load ptr, ptr %i.a, align 8
  %i.ag = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.ah = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.ai = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = icmp slt i64 %i.aj, 1
  br i1 %i.ak, label %bb.f, label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit43, !prof !6

bb.f:                                             ; preds = %bb.e
  %i.al = load ptr, ptr %i.o, align 8             ; 4 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.an = load ptr, ptr %1, align 8
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ao = call noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #37 ; 2 uses
  store ptr %i.ao, ptr %1, align 8
  store ptr %i.ao, ptr %i.p, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ap = load i64, ptr %i.q, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  %i.aq = ptrtoint ptr %i.al to i64               ; 2 uses
  %i.ar = sub i64 %i.ah, %i.aq                    ; 2 uses
  %i.as = add i64 %i.ar, 1
  %i.at = lshr i64 %i.as, 1
  %i.au = add i64 %i.at, %i.ar
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pre-phi.i = phi i64 [ %i.aq, %bb.j ], [ 0, %bb.i ]
  %.0.i = phi i64 [ %i.au, %bb.j ], [ %i.ap, %bb.i ]
  %i.av = sub i64 %i.ai, %.pre-phi.i              ; 2 uses
  %i.aw = add i64 %i.av, 1
  %spec.select.i = call i64 @llvm.umax.i64(i64 %.0.i, i64 %i.aw) ; 3 uses
  %i.ax = icmp eq i64 %spec.select.i, 0
  br i1 %i.ax, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @free(ptr noundef %i.al) #34
  br label %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm.exit

bb.m:                                             ; preds = %bb.k
  %i.ay = call ptr @realloc(ptr noundef %i.al, i64 noundef %spec.select.i) #41
  br label %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm.exit

_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm.exit: ; preds = %bb.l, %bb.m
  %.0.i.i.i = phi ptr [ null, %bb.l ], [ %i.ay, %bb.m ] ; 3 uses
  store ptr %.0.i.i.i, ptr %i.o, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.av
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %spec.select.i
  store ptr %i.ba, ptr %i.a, align 8
  br label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit43

_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit43: ; preds = %bb.e, %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm.exit
  %i.bb = phi ptr [ %i.ag, %bb.e ], [ %i.az, %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm.exit ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  store ptr %i.bc, ptr %i.c, align 8
  store i8 126, ptr %i.bb, align 1
  %i.bd = load ptr, ptr %i.a, align 8
  %i.be = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.bf = ptrtoint ptr %i.bd to i64               ; 2 uses
  %i.bg = ptrtoint ptr %i.be to i64               ; 2 uses
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = icmp slt i64 %i.bh, 1
  br i1 %i.bi, label %bb.n, label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit45, !prof !6

bb.n:                                             ; preds = %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit43
  %i.bj = load ptr, ptr %i.o, align 8             ; 4 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bl = load ptr, ptr %1, align 8
  %.not.i56 = icmp eq ptr %i.bl, null
  br i1 %.not.i56, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bm = call noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #37 ; 2 uses
  store ptr %i.bm, ptr %1, align 8
  store ptr %i.bm, ptr %i.p, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bn = load i64, ptr %i.q, align 8
  br label %bb.s

bb.r:                                             ; preds = %bb.n
  %i.bo = ptrtoint ptr %i.bj to i64               ; 2 uses
  %i.bp = sub i64 %i.bf, %i.bo                    ; 2 uses
  %i.bq = add i64 %i.bp, 1
  %i.br = lshr i64 %i.bq, 1
  %i.bs = add i64 %i.br, %i.bp
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pre-phi.i52 = phi i64 [ %i.bo, %bb.r ], [ 0, %bb.q ]
  %.0.i53 = phi i64 [ %i.bs, %bb.r ], [ %i.bn, %bb.q ]
  %i.bt = sub i64 %i.bg, %.pre-phi.i52            ; 2 uses
  %i.bu = add i64 %i.bt, 1
  %spec.select.i54 = call i64 @llvm.umax.i64(i64 %.0.i53, i64 %i.bu) ; 3 uses
  %i.bv = icmp eq i64 %spec.select.i54, 0
  br i1 %i.bv, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @free(ptr noundef %i.bj) #34
  br label %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm.exit57

bb.u:                                             ; preds = %bb.s
  %i.bw = call ptr @realloc(ptr noundef %i.bj, i64 noundef %spec.select.i54) #41
  br label %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm.exit57

_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm.exit57: ; preds = %bb.t, %bb.u
  %.0.i.i.i55 = phi ptr [ null, %bb.t ], [ %i.bw, %bb.u ] ; 3 uses
  store ptr %.0.i.i.i55, ptr %i.o, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i.i.i55, i64 %i.bt
  %i.by = getelementptr inbounds nuw i8, ptr %.0.i.i.i55, i64 %spec.select.i54
  store ptr %i.by, ptr %i.a, align 8
  br label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit45

_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit45: ; preds = %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit43, %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm.exit57
  %i.bz = phi ptr [ %i.be, %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit43 ], [ %i.bx, %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm.exit57 ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  store ptr %i.ca, ptr %i.c, align 8
  store i8 48, ptr %i.bz, align 1
  br label %bb.aw

bb.v:                                             ; preds = %.lr.ph
  %i.cb = load ptr, ptr %i.a, align 8
  %i.cc = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.cd = ptrtoint ptr %i.cb to i64               ; 2 uses
  %i.ce = ptrtoint ptr %i.cc to i64               ; 2 uses
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = icmp slt i64 %i.cf, 1
  br i1 %i.cg, label %bb.w, label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit47, !prof !6

bb.w:                                             ; preds = %bb.v
  %i.ch = load ptr, ptr %i.o, align 8             ; 4 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.cj = load ptr, ptr %1, align 8
  %.not.i62 = icmp eq ptr %i.cj, null
  br i1 %.not.i62, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ck = call noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #37 ; 2 uses
  store ptr %i.ck, ptr %1, align 8
  store ptr %i.ck, ptr %i.p, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.cl = load i64, ptr %i.q, align 8
  br label %bb.ab

bb.aa:                                            ; preds = %bb.w
  %i.cm = ptrtoint ptr %i.ch to i64               ; 2 uses
  %i.cn = sub i64 %i.cd, %i.cm                    ; 2 uses
  %i.co = add i64 %i.cn, 1
  %i.cp = lshr i64 %i.co, 1
  %i.cq = add i64 %i.cp, %i.cn
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pre-phi.i58 = phi i64 [ %i.cm, %bb.aa ], [ 0, %bb.z ]
  %.0.i59 = phi i64 [ %i.cq, %bb.aa ], [ %i.cl, %bb.z ]
  %i.cr = sub i64 %i.ce, %.pre-phi.i58            ; 2 uses
  %i.cs = add i64 %i.cr, 1
  %spec.select.i60 = call i64 @llvm.umax.i64(i64 %.0.i59, i64 %i.cs) ; 3 uses
  %i.ct = icmp eq i64 %spec.select.i60, 0
  br i1 %i.ct, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void @free(ptr noundef %i.ch) #34
  br label %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm.exit63

bb.ad:                                            ; preds = %bb.ab
  %i.cu = call ptr @realloc(ptr noundef %i.ch, i64 noundef %spec.select.i60) #41
  br label %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm.exit63

_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm.exit63: ; preds = %bb.ac, %bb.ad
  %.0.i.i.i61 = phi ptr [ null, %bb.ac ], [ %i.cu, %bb.ad ] ; 3 uses
  store ptr %.0.i.i.i61, ptr %i.o, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.i.i.i61, i64 %i.cr
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.i.i.i61, i64 %spec.select.i60
  store ptr %i.cw, ptr %i.a, align 8
  br label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit47

_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit47: ; preds = %bb.v, %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm.exit63
  %i.cx = phi ptr [ %i.cc, %bb.v ], [ %i.cv, %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm.exit63 ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 1
  store ptr %i.cy, ptr %i.c, align 8
  store i8 126, ptr %i.cx, align 1
  %i.cz = load ptr, ptr %i.a, align 8
  %i.da = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.db = ptrtoint ptr %i.cz to i64               ; 2 uses
  %i.dc = ptrtoint ptr %i.da to i64               ; 2 uses
  %i.dd = sub i64 %i.db, %i.dc
  %i.de = icmp slt i64 %i.dd, 1
  br i1 %i.de, label %bb.ae, label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit49, !prof !6

bb.ae:                                            ; preds = %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit47
  %i.df = load ptr, ptr %i.o, align 8             ; 4 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.dh = load ptr, ptr %1, align 8
  %.not.i68 = icmp eq ptr %i.dh, null
  br i1 %.not.i68, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.di = call noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #37 ; 2 uses
  store ptr %i.di, ptr %1, align 8
  store ptr %i.di, ptr %i.p, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.dj = load i64, ptr %i.q, align 8
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ae
  %i.dk = ptrtoint ptr %i.df to i64               ; 2 uses
  %i.dl = sub i64 %i.db, %i.dk                    ; 2 uses
  %i.dm = add i64 %i.dl, 1
  %i.dn = lshr i64 %i.dm, 1
  %i.do = add i64 %i.dn, %i.dl
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.pre-phi.i64 = phi i64 [ %i.dk, %bb.ai ], [ 0, %bb.ah ]
  %.0.i65 = phi i64 [ %i.do, %bb.ai ], [ %i.dj, %bb.ah ]
  %i.dp = sub i64 %i.dc, %.pre-phi.i64            ; 2 uses
  %i.dq = add i64 %i.dp, 1
  %spec.select.i66 = call i64 @llvm.umax.i64(i64 %.0.i65, i64 %i.dq) ; 3 uses
  %i.dr = icmp eq i64 %spec.select.i66, 0
  br i1 %i.dr, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void @free(ptr noundef %i.df) #34
  br label %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm.exit69

bb.al:                                            ; preds = %bb.aj
  %i.ds = call ptr @realloc(ptr noundef %i.df, i64 noundef %spec.select.i66) #41
  br label %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm.exit69

_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm.exit69: ; preds = %bb.ak, %bb.al
  %.0.i.i.i67 = phi ptr [ null, %bb.ak ], [ %i.ds, %bb.al ] ; 3 uses
  store ptr %.0.i.i.i67, ptr %i.o, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %.0.i.i.i67, i64 %i.dp
  %i.du = getelementptr inbounds nuw i8, ptr %.0.i.i.i67, i64 %spec.select.i66
  store ptr %i.du, ptr %i.a, align 8
  br label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit49

_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit49: ; preds = %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit47, %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm.exit69
  %i.dv = phi ptr [ %i.da, %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit47 ], [ %i.dt, %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm.exit69 ] ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 1
  store ptr %i.dw, ptr %i.c, align 8
  store i8 49, ptr %i.dv, align 1
  br label %bb.aw

bb.am:                                            ; preds = %.lr.ph
  %i.dx = add i8 %i.ae, -48
  %or.cond.i = icmp ult i8 %i.dx, 10
  %i.dy = and i8 %i.ae, -33
  %i.dz = add i8 %i.dy, -65
  %i.ea = icmp ult i8 %i.dz, 26
  %or.cond28.i = or i1 %or.cond.i, %i.ea
  br i1 %or.cond28.i, label %bb.an, label %switch.early.test.i

switch.early.test.i:                              ; preds = %bb.am
  switch i8 %i.ae, label %_ZNK9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E17NeedPercentEncodeEc.exit [
    i8 95, label %bb.an
    i8 46, label %bb.an
    i8 45, label %bb.an
    i8 126, label %bb.an
  ]

_ZNK9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E17NeedPercentEncodeEc.exit: ; preds = %switch.early.test.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  store ptr %i.ad, ptr %2, align 8
  store ptr %i.ad, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  store ptr %1, ptr %3, align 8
  %i.eb = call noundef zeroext i1 @_ZN9rapidjson4UTF8IcE8ValidateINS_19GenericStringStreamIS1_EENS_14GenericPointerINS_12GenericValueIS1_NS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES8_E19PercentEncodeStreamINS_19GenericStringBufferIS1_S8_EEEEEEbRT_RT0_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  br i1 %i.eb, label %.thread, label %.critedge.thread

.thread:                                          ; preds = %_ZNK9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E17NeedPercentEncodeEc.exit
  %i.ec = load ptr, ptr %2, align 8
  %i.ed = load ptr, ptr %i.r, align 8
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = ptrtoint ptr %i.ed to i64
  %i.eg = xor i64 %i.ef, -1
  %i.eh = add i64 %.02981, %i.ee
  %i.ei = add i64 %i.eh, %i.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br label %bb.aw

.critedge.thread:                                 ; preds = %_ZNK9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E17NeedPercentEncodeEc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br label %.loopexit

bb.an:                                            ; preds = %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %bb.am
  %i.ej = load ptr, ptr %i.a, align 8
  %i.ek = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.el = ptrtoint ptr %i.ej to i64               ; 2 uses
  %i.em = ptrtoint ptr %i.ek to i64               ; 2 uses
  %i.en = sub i64 %i.el, %i.em
  %i.eo = icmp slt i64 %i.en, 1
  br i1 %i.eo, label %bb.ao, label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit51, !prof !6

bb.ao:                                            ; preds = %bb.an
  %i.ep = load ptr, ptr %i.o, align 8             ; 4 uses
  %i.eq = icmp eq ptr %i.ep, null
  br i1 %i.eq, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.er = load ptr, ptr %1, align 8
  %.not.i74 = icmp eq ptr %i.er, null
  br i1 %.not.i74, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.es = call noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #37 ; 2 uses
  store ptr %i.es, ptr %1, align 8
  store ptr %i.es, ptr %i.p, align 8
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.et = load i64, ptr %i.q, align 8
  br label %bb.at

bb.as:                                            ; preds = %bb.ao
  %i.eu = ptrtoint ptr %i.ep to i64               ; 2 uses
  %i.ev = sub i64 %i.el, %i.eu                    ; 2 uses
  %i.ew = add i64 %i.ev, 1
  %i.ex = lshr i64 %i.ew, 1
  %i.ey = add i64 %i.ex, %i.ev
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.pre-phi.i70 = phi i64 [ %i.eu, %bb.as ], [ 0, %bb.ar ]
  %.0.i71 = phi i64 [ %i.ey, %bb.as ], [ %i.et, %bb.ar ]
  %i.ez = sub i64 %i.em, %.pre-phi.i70            ; 2 uses
  %i.fa = add i64 %i.ez, 1
  %spec.select.i72 = call i64 @llvm.umax.i64(i64 %.0.i71, i64 %i.fa) ; 3 uses
  %i.fb = icmp eq i64 %spec.select.i72, 0
  br i1 %i.fb, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  call void @free(ptr noundef %i.ep) #34
  br label %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm.exit75

bb.av:                                            ; preds = %bb.at
  %i.fc = call ptr @realloc(ptr noundef %i.ep, i64 noundef %spec.select.i72) #41
  br label %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm.exit75

_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm.exit75: ; preds = %bb.au, %bb.av
  %.0.i.i.i73 = phi ptr [ null, %bb.au ], [ %i.fc, %bb.av ] ; 3 uses
  store ptr %.0.i.i.i73, ptr %i.o, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %.0.i.i.i73, i64 %i.ez
  %i.fe = getelementptr inbounds nuw i8, ptr %.0.i.i.i73, i64 %spec.select.i72
  store ptr %i.fe, ptr %i.a, align 8
  br label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit51

_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit51: ; preds = %bb.an, %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm.exit75
  %i.ff = phi ptr [ %i.ek, %bb.an ], [ %i.fd, %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm.exit75 ] ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 1
  store ptr %i.fg, ptr %i.c, align 8
  store i8 %i.ae, ptr %i.ff, align 1
  br label %bb.aw

bb.aw:                                            ; preds = %.thread, %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit49, %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit51, %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit45
  %.332 = phi i64 [ %.02981, %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit51 ], [ %.02981, %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit45 ], [ %.02981, %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit49 ], [ %i.ei, %.thread ]
  %i.fh = add i64 %.332, 1                        ; 2 uses
  %i.fi = load i32, ptr %i.aa, align 8
  %i.fj = zext i32 %i.fi to i64
  %.not39 = icmp ult i64 %i.fh, %i.fj
  br i1 %.not39, label %.lr.ph, label %.critedge, !llvm.loop !729

.critedge:                                        ; preds = %bb.aw, %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit41
  %i.fk = getelementptr inbounds nuw i8, ptr %.03783, i64 16 ; 2 uses
  %i.fl = load ptr, ptr %i.k, align 8
  %i.fm = load i64, ptr %i.l, align 8
  %i.fn = getelementptr inbounds nuw [16 x i8], ptr %i.fl, i64 %i.fm
  %.not = icmp eq ptr %i.fk, %i.fn
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !730

.loopexit:                                        ; preds = %.critedge, %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit, %.critedge.thread
  %.not79 = phi i1 [ false, %.critedge.thread ], [ true, %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit ], [ true, %.critedge ]
  ret i1 %.not79
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN9rapidjson4UTF8IcE8ValidateINS_19GenericStringStreamIS1_EENS_14GenericPointerINS_12GenericValueIS1_NS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES8_E19PercentEncodeStreamINS_19GenericStringBufferIS1_S8_EEEEEEbRT_RT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store ptr %i.b, ptr %0, align 8
  %i.c = load i8, ptr %i.a, align 1               ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !20, !align !33 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = icmp slt i64 %i.k, 1
  br i1 %i.l, label %bb.b, label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit.i, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 noundef 1)
  %.pre.i.i = load ptr, ptr %i.g, align 8
  br label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit.i

_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit.i: ; preds = %bb.b, %bb.a
  %i.m = phi ptr [ %i.h, %bb.a ], [ %.pre.i.i, %bb.b ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  store ptr %i.n, ptr %i.g, align 8
  store i8 37, ptr %i.m, align 1
  %i.o = load ptr, ptr %1, align 8, !nonnull !20, !align !33 ; 3 uses
  %i.p = zext i8 %i.c to i32                      ; 2 uses
  %i.q = lshr i32 %i.p, 4
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19PercentEncodeStreamINS_19GenericStringBufferIS3_S5_EEE3PutEcE9hexDigits, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = icmp slt i64 %i.aa, 1
  br i1 %i.ab, label %bb.c, label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit4.i, !prof !6

bb.c:                                             ; preds = %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit.i
  tail call void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 noundef 1)
  %.pre.i3.i = load ptr, ptr %i.w, align 8
  br label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit4.i

_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit4.i: ; preds = %bb.c, %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit.i
  %i.ac = phi ptr [ %i.x, %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit.i ], [ %.pre.i3.i, %bb.c ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  store ptr %i.ad, ptr %i.w, align 8
  store i8 %i.t, ptr %i.ac, align 1
  %i.ae = load ptr, ptr %1, align 8, !nonnull !20, !align !33 ; 3 uses
  %i.af = and i32 %i.p, 15
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19PercentEncodeStreamINS_19GenericStringBufferIS3_S5_EEE3PutEcE9hexDigits, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = icmp slt i64 %i.ap, 1
  br i1 %i.aq, label %bb.d, label %_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19PercentEncodeStreamINS_19GenericStringBufferIS3_S5_EEE3PutEc.exit, !prof !6

bb.d:                                             ; preds = %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit4.i
  tail call void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, i64 noundef 1)
  %.pre.i5.i = load ptr, ptr %i.al, align 8
  br label %_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19PercentEncodeStreamINS_19GenericStringBufferIS3_S5_EEE3PutEc.exit

_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19PercentEncodeStreamINS_19GenericStringBufferIS3_S5_EEE3PutEc.exit: ; preds = %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit4.i, %bb.d
  %i.ar = phi ptr [ %i.am, %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit4.i ], [ %.pre.i5.i, %bb.d ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  store ptr %i.as, ptr %i.al, align 8
  store i8 %i.ai, ptr %i.ar, align 1
  %.not = icmp sgt i8 %i.c, -1
  br i1 %.not, label %bb.bi, label %bb.e

bb.e:                                             ; preds = %_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19PercentEncodeStreamINS_19GenericStringBufferIS3_S5_EEE3PutEc.exit
  %i.at = zext i8 %i.c to i64
  %i.au = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson4UTF8IcE8GetRangeEhE4type, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1
  switch i8 %i.av, label %bb.bi [
    i8 2, label %bb.f
end_hunk_5
begin_hunk_6_@_ZN5glTF28LazyDictINS_6BufferEE8RetrieveEj:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92, %bb.bm
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.kx, %bb.bm ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %_ZNKSt14default_deleteIN5glTF26BufferEEclEPS1_.exit.i96

.body.thread123:                                  ; preds = %_ZN5glTF26Object14ReadExtensionsERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEE.exit, %bb.bi, %bb.bh, %_ZN10glTFCommonL10ReadMemberINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRN9rapidjson12GenericValueINS7_4UTF8IcEENS7_19MemoryPoolAllocatorINS7_12CrtAllocatorEEEEEPKcRT_.exit, %bb.bg
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN5glTF26BufferEEclEPS1_.exit.i96

_ZNKSt14default_deleteIN5glTF26BufferEEclEPS1_.exit.i96: ; preds = %bb.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, %.body.thread123
  %.pn24120 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread123 ], [ %i.ku, %bb.bk ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94 ]
  %i.lu = load ptr, ptr %i.cl, align 8
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  %i.lw = load ptr, ptr %i.lv, align 8
  call void %i.lw(ptr noundef nonnull align 8 dereferenceable(344) %i.cl) #34, !inline_history !895
  br label %_ZNSt10unique_ptrIN5glTF26BufferESt14default_deleteIS1_EED2Ev.exit97

_ZNSt10unique_ptrIN5glTF26BufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.bl, %_ZNSt13unordered_mapIjjSt4hashIjESt8equal_toIjESaISt4pairIKjjEEE4findERS5_.exit
  %.fca.1.insert.merged = phi { ptr, i32 } [ %i.af, %_ZNSt13unordered_mapIjjSt4hashIjESt8equal_toIjESaISt4pairIKjjEEE4findERS5_.exit ], [ %i.kv, %bb.bl ]
  ret { ptr, i32 } %.fca.1.insert.merged

_ZNSt10unique_ptrIN5glTF26BufferESt14default_deleteIS1_EED2Ev.exit97: ; preds = %_ZNKSt14default_deleteIN5glTF26BufferEEclEPS1_.exit.i96, %bb.w, %bb.ag, %bb.s, %bb.o, %bb.k
  %.pn29 = phi { ptr, i32 } [ %i.aw, %bb.s ], [ %.pn24120, %_ZNKSt14default_deleteIN5glTF26BufferEEclEPS1_.exit.i96 ], [ %i.ak, %bb.k ], [ %i.aq, %bb.o ], [ %i.cj, %bb.ag ], [ %i.bj, %bb.w ]
  resume { ptr, i32 } %.pn29
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJRA39_KcRmRA2_S1_S4_RA19_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(39) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(2) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(19) %5) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %6)
  invoke void @_ZN15DeadlyErrorBaseC2IJRmRA2_KcS1_RA19_S2_ERA39_S2_EEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %6, ptr noundef nonnull align 1 dereferenceable(39) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(2) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(19) %5)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %6, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %6, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #35
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #34
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #34
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %6) #34
  resume { ptr, i32 } %i.o
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5glTF26Buffer4ReadERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEERNS_5AssetE(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(3624) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %5 = alloca %"struct.glTFCommon::Util::DataURI", align 8 ; 9 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 25 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.f = load i16, ptr %i.e, align 2
  %i.g = icmp eq i16 %i.f, 3
  br i1 %i.g, label %bb.b, label %_ZN10glTFCommonL15MemberOrDefaultImEET_RN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEEPKcS1_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 14
  store i16 1029, ptr %i.h, align 2
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = and i64 %i.k, -281474976710656
  %i.m = or i64 %i.l, ptrtoint (ptr @.str.120 to i64) ; 2 uses
  %i.n = inttoptr i64 %i.m to ptr
  store ptr %i.n, ptr %i.i, align 8
  store i32 10, ptr %4, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = and i64 %i.q, 281474976710655
  %i.s = inttoptr i64 %i.r to ptr                 ; 4 uses
  %i.t = load i32, ptr %1, align 8                ; 2 uses
  %i.u = zext i32 %i.t to i64                     ; 2 uses
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.u, 5
  %i.v = getelementptr i8, ptr %i.s, i64 %.idx.i.i.i.i.i ; 2 uses
  %.not9.i.i.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not9.i.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b
  %i.w = lshr i64 ptrtoint (ptr @.str.120 to i64), 40
  %i.x = trunc i64 %i.w to i8
  %i.y = and i64 %i.m, 1152921504606846976
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.y, 0     ; 2 uses
  %i.z = sext i8 %i.x to i32
  %i.aa = sub nsw i32 13, %i.z
  %i.ab = select i1 %.not.i.i.i.i.i.i.i.i, i32 10, i32 %i.aa ; 2 uses
  %i.ac = and i64 ptrtoint (ptr @.str.120 to i64), 281474976710655
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = select i1 %.not.i.i.i.i.i.i.i.i, ptr %i.ad, ptr %4 ; 2 uses
  %i.af = zext i32 %i.ab to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.010.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i ], [ %i.ax, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i ] ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 14
  %i.ah = load i16, ptr %i.ag, align 2
  %i.ai = and i16 %i.ah, 4096
  %.not.i.i13.i.i.i.i.i.i = icmp eq i16 %i.ai, 0  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 13
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = sext i8 %i.ak to i32
  %i.am = sub nsw i32 13, %i.al
  %i.an = load i32, ptr %.010.i.i.i.i.i, align 8
  %i.ao = select i1 %.not.i.i13.i.i.i.i.i.i, i32 %i.an, i32 %i.am
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ab, %i.ao
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = and i64 %i.ar, 281474976710655
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = select i1 %.not.i.i13.i.i.i.i.i.i, ptr %i.at, ptr %.010.i.i.i.i.i ; 2 uses
  %i.av = icmp eq ptr %i.ae, %i.au
  br i1 %i.av, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr %i.ae, ptr %i.au, i64 %i.af)
  %i.aw = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.aw, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i, %bb.c
  %i.ax = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ax, %i.v
  br i1 %.not.i.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i, label %bb.c, !llvm.loop !219

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i, %bb.d, %bb.b
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.s, %bb.b ], [ %i.v, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i ], [ %.010.i.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i ], [ %.010.i.i.i.i.i, %bb.d ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.ay = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %i.u
  %.not.i.i = icmp eq ptr %.0.lcssa.i.i.i.i.i, %i.ay
  br i1 %.not.i.i, label %_ZN10glTFCommonL15MemberOrDefaultImEET_RN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEEPKcS1_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 30
  %i.ba = load i16, ptr %i.az, align 2
  %i.bb = and i16 %i.ba, 256
  %.not9.i.i = icmp eq i16 %i.bb, 0
  br i1 %.not9.i.i, label %_ZN10glTFCommonL15MemberOrDefaultImEET_RN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEEPKcS1_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %i.bd = load i64, ptr %i.bc, align 8
  br label %_ZN10glTFCommonL15MemberOrDefaultImEET_RN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEEPKcS1_.exit

_ZN10glTFCommonL15MemberOrDefaultImEET_RN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEEPKcS1_.exit: ; preds = %bb.a, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i, %bb.e, %bb.f
  %i.be = phi i64 [ %i.bd, %bb.f ], [ 0, %bb.a ], [ 0, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i ], [ 0, %bb.e ] ; 8 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 8 uses
  store i64 %i.be, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = call noundef ptr @_ZN10glTFCommon19FindStringInContextERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKcSA_SA_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.122, ptr noundef %i.bh, ptr noundef %i.bj) ; 5 uses
  %.not = icmp eq ptr %i.bk, null
  br i1 %.not, label %bb.g, label %bb.k

bb.g:                                             ; preds = %_ZN10glTFCommonL15MemberOrDefaultImEET_RN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEEPKcS1_.exit
  %.not52 = icmp eq i64 %i.be, 0
  br i1 %.not52, label %bb.bf, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull @.str.364)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @__cxa_throw(ptr nonnull %i.bl, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bl) #34
  br label %common.resume

bb.k:                                             ; preds = %_ZN10glTFCommonL15MemberOrDefaultImEET_RN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEEPKcS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 14
  %i.bo = load i16, ptr %i.bn, align 2
  %i.bp = and i16 %i.bo, 4096
  %.not.i.i71 = icmp eq i16 %i.bp, 0
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = ptrtoint ptr %i.br to i64               ; 3 uses
  %i.bt = and i64 %i.bs, 281474976710655
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = select i1 %.not.i.i71, ptr %i.bu, ptr %i.bk ; 2 uses
  store ptr %i.bv, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %12 = and i64 %i.bs, 1152921504606846976
  %.not.i.i72 = icmp eq i64 %12, 0
  %13 = lshr i64 %i.bs, 40
  %14 = trunc i64 %13 to i8
  %i.bw = sext i8 %14 to i32
  %i.bx = sub nsw i32 13, %i.bw
  %i.by = load i32, ptr %i.bk, align 8
  %i.bz = select i1 %.not.i.i72, i32 %i.by, i32 %i.bx
  %i.ca = zext i32 %i.bz to i64
  %i.cb = call noundef zeroext i1 @_ZN10glTFCommon4Util12ParseDataURIEPKcmRNS0_7DataURIE(ptr noundef %i.bv, i64 noundef %i.ca, ptr noundef nonnull align 8 dereferenceable(40) %5)
  br i1 %i.cb, label %bb.l, label %bb.ae

bb.l:                                             ; preds = %bb.k
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cd = load i8, ptr %i.cc, align 8, !range !19, !noundef !20
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %bb.m, label %bb.w

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  store ptr null, ptr %i.d, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = call noundef i64 @_ZN6Assimp6Base646DecodeEPKcmRPh(ptr noundef %i.cg, i64 noundef %i.ci, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  store i64 %i.cj, ptr %i.bf, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.cl = load ptr, ptr %i.d, align 8
  call void @_ZNSt12__shared_ptrIhLN9__gnu_cxx12_Lock_policyE2EE5resetIhSt14default_deleteIA_hEEENSt9enable_ifIXsr21__sp_is_constructibleIhT_EE5valueEvE4typeEPS8_T0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, ptr noundef %i.cl)
  %.not64 = icmp eq i64 %i.be, 0
  br i1 %.not64, label %bb.v, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cm = load i64, ptr %i.bf, align 8
  %.not65 = icmp eq i64 %i.cm, %i.be
  br i1 %.not65, label %bb.v, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cn = call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  invoke void @_Z12ai_to_stringImENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, i64 noundef %i.be)
          to label %bb.p unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.thread

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.co = load i64, ptr %i.ch, align 8
  invoke void @_Z12ai_to_stringImENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, i64 noundef %i.co)
          to label %bb.q unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN17DeadlyImportErrorC2IJRA15_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_S1_S9_RA19_S1_S9_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, ptr noundef nonnull align 1 dereferenceable(15) @.str.365, ptr noundef nonnull align 8 dereferenceable(32) %i.bg, ptr noundef nonnull align 1 dereferenceable(13) @.str.366, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 1 dereferenceable(19) @.str.367, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  invoke void @__cxa_throw(ptr nonnull %i.cn, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
          to label %bb.bh unwind label %bb.s

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.thread: ; preds = %bb.o
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.s:                                             ; preds = %bb.r, %bb.q
  %.044 = phi i1 [ false, %bb.r ], [ true, %bb.q ] ; 2 uses
  %i.cq = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cr = load ptr, ptr %7, align 8               ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.s
  %i.cu = load i64, ptr %i.cs, align 8
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  %i.cw = load ptr, ptr %6, align 8               ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.p
  %i.cz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  %i.da = load ptr, ptr %6, align 8               ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.dc = icmp eq ptr %i.da, %i.db
  br i1 %i.dc, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %i.dd = load i64, ptr %i.db, align 8
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.de) #35
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.df = load i64, ptr %i.cx, align 8
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.dg) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br i1 %.044, label %bb.t, label %bb.u

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br i1 %.044, label %bb.t, label %bb.u

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73.thread
  %.pn66.pn118.ph = phi { ptr, i32 } [ %i.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73.thread ], [ %i.cp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.thread ], [ %i.cz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br label %bb.t

bb.t:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75
  %.pn66.pn118 = phi { ptr, i32 } [ %i.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73 ], [ %i.cq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75 ], [ %.pn66.pn118.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.cn) #34
  br label %bb.u

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73, %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75
  %.pn66.pn117 = phi { ptr, i32 } [ %.pn66.pn118, %bb.t ], [ %i.cq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75 ], [ %i.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  br label %bb.bg

bb.v:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  br label %bb.be

bb.w:                                             ; preds = %bb.l
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.di = load i64, ptr %i.dh, align 8
  %.not60 = icmp eq i64 %i.be, %i.di
  br i1 %.not60, label %bb.ad, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dj = call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  invoke void @_Z12ai_to_stringImENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, i64 noundef %i.be)
          to label %bb.y unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.thread

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  %i.dk = load i64, ptr %i.dh, align 8
  invoke void @_Z12ai_to_stringImENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, i64 noundef %i.dk)
          to label %bb.z unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78.thread

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN17DeadlyImportErrorC2IJRA15_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_S1_S9_RA19_S1_S9_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.dj, ptr noundef nonnull align 1 dereferenceable(15) @.str.365, ptr noundef nonnull align 8 dereferenceable(32) %i.bg, ptr noundef nonnull align 1 dereferenceable(13) @.str.366, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 1 dereferenceable(19) @.str.367, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  invoke void @__cxa_throw(ptr nonnull %i.dj, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
          to label %bb.bh unwind label %bb.ab

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.thread: ; preds = %bb.x
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split182

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.041 = phi i1 [ false, %bb.aa ], [ true, %bb.z ] ; 2 uses
  %i.dm = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.dn = load ptr, ptr %9, align 8               ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.dp = icmp eq ptr %i.dn, %i.do
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %bb.ab
  %i.dq = load i64, ptr %i.do, align 8
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dr) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  %i.ds = load ptr, ptr %8, align 8               ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.du = icmp eq ptr %i.ds, %i.dt
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78.thread: ; preds = %bb.y
  %i.dv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  %i.dw = load ptr, ptr %8, align 8               ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %.sink.split182, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78.thread
  %i.dz = load i64, ptr %i.dx, align 8
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.ea) #35
  br label %.sink.split182

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78
  %i.eb = load i64, ptr %i.dt, align 8
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.ec) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br i1 %.041, label %bb.ac, label %bb.bg

end_hunk_6
