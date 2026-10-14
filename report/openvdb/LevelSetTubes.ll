Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/LevelSetTubes?download=true
inline.NumInlined: 71639
inline.NumDeleted: 23517
loop-unroll.NumCompletelyUnrolled: 184
loop-unroll.NumRuntimeUnrolled: 212
loop-unroll.NumUnrolled: 885
begin_hunk_0_@_ZN7openvdb5v13_05tools6lvlset16CapsuleVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE14setXYRangeDataERKj:bb.a
  %i.jb = fsub float %storemerge196, %i.ja
  %i.jc = fmul float %i.iz, %i.jb
  %i.jd = fadd float %i.jc, 5.000000e-01
  %i.je = tail call noundef float @llvm.floor.f32(float %i.jd)
  %i.jf = fptoui float %i.je to i32
  %i.jg = zext i32 %i.jf to i64
  %i.jh = load ptr, ptr %i.hp, align 8, !tbaa !1771
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %i.jg ; 2 uses
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !1119
  %i.jk = fcmp ogt float %i.ii, %i.jj
  br i1 %i.jk, label %bb.u, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit44

bb.u:                                             ; preds = %bb.t
  store float %i.ii, ptr %i.ji, align 4, !tbaa !1119
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit44

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit44: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i43, %bb.t, %bb.u
  %i.jl = fadd float %storemerge196, %i.b         ; 2 uses
  %i.jm = fcmp ugt float %i.jl, %i.hs
  br i1 %i.jm, label %._crit_edge, label %bb.q, !llvm.loop !7565

bb.v:                                             ; preds = %._crit_edge
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 348 ; 3 uses
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !1822
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.jq = load float, ptr %i.jp, align 8, !tbaa !1824
  %i.jr = fcmp ogt float %i.jo, %i.jq
  %i.js = extractelement <4 x float> %i.ex, i64 2 ; 2 uses
  %i.jt = extractelement <4 x float> %i.ey, i64 3 ; 2 uses
  %i.ju = fcmp olt float %i.jt, %i.js
  %.sroa.speculated153 = select i1 %i.ju, float %i.jt, float %i.js ; 3 uses
  %i.jv = extractelement <4 x float> %i.hc, i64 1 ; 3 uses
  %i.jw = fcmp ugt float %i.jv, %.sroa.speculated153 ; 2 uses
  br i1 %i.jr, label %.preheader192, label %.preheader194

.preheader194:                                    ; preds = %bb.v
  br i1 %i.jw, label %.loopexit193, label %.lr.ph198

.preheader192:                                    ; preds = %bb.v
  br i1 %i.jw, label %.loopexit193, label %.lr.ph200

.lr.ph200:                                        ; preds = %.preheader192, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit47
  %storemerge29199 = phi float [ %i.lq, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit47 ], [ %i.jv, %.preheader192 ] ; 4 uses
  %i.jx = load float, ptr %i.jn, align 4, !tbaa !1822 ; 2 uses
  %i.jy = load float, ptr %i.ek, align 8, !tbaa !1826
  %i.jz = load float, ptr %i.c, align 8, !tbaa !1821
  %i.ka = fsub float %storemerge29199, %i.jz      ; 3 uses
  %i.kb = load float, ptr %i.e, align 4, !tbaa !1816 ; 3 uses
  %i.kc = load float, ptr %i.eo, align 8, !tbaa !1829
  %i.kd = fneg float %i.kc
  %i.ke = fmul float %i.kb, %i.kd
  %i.kf = tail call float @llvm.fmuladd.f32(float %i.jy, float %i.ka, float %i.ke)
  %i.kg = load float, ptr %i.hv, align 4, !tbaa !1825
  %i.kh = fdiv float %i.kf, %i.kg
  %i.ki = fadd float %i.jx, %i.kh                 ; 3 uses
  %i.kj = fmul float %i.kb, %i.kb
  %i.kk = fmul float %i.ka, %i.ka
  %i.kl = fsub float %i.kj, %i.kk
  %i.km = tail call noundef float @sqrtf(float noundef %i.kl) #23
  %i.kn = fadd float %i.jx, %i.km                 ; 3 uses
  %i.ko = tail call float @llvm.fabs.f32(float %i.ki)
  %i.kp = fcmp ueq float %i.ko, +inf
  br i1 %i.kp, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i46, label %bb.w

bb.w:                                             ; preds = %.lr.ph200
  %i.kq = load float, ptr %i.gy, align 8, !tbaa !7574
  %i.kr = load float, ptr %i.hd, align 4, !tbaa !2971
  %i.ks = fsub float %storemerge29199, %i.kr
  %i.kt = fmul float %i.kq, %i.ks
  %i.ku = fadd float %i.kt, 5.000000e-01
  %i.kv = tail call noundef float @llvm.floor.f32(float %i.ku)
  %i.kw = fptoui float %i.kv to i32
  %i.kx = zext i32 %i.kw to i64
  %i.ky = load ptr, ptr %i.hn, align 8, !tbaa !1771
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %i.kx ; 2 uses
  %i.la = load float, ptr %i.kz, align 4, !tbaa !1119
  %i.lb = fcmp olt float %i.ki, %i.la
  br i1 %i.lb, label %bb.x, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i46

bb.x:                                             ; preds = %bb.w
  store float %i.ki, ptr %i.kz, align 4, !tbaa !1119
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i46

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i46: ; preds = %bb.x, %bb.w, %.lr.ph200
  %i.lc = tail call float @llvm.fabs.f32(float %i.kn)
  %i.ld = fcmp ueq float %i.lc, +inf
  br i1 %i.ld, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit47, label %bb.y

bb.y:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i46
  %i.le = load float, ptr %i.gy, align 8, !tbaa !7574
  %i.lf = load float, ptr %i.hd, align 4, !tbaa !2971
  %i.lg = fsub float %storemerge29199, %i.lf
  %i.lh = fmul float %i.le, %i.lg
  %i.li = fadd float %i.lh, 5.000000e-01
  %i.lj = tail call noundef float @llvm.floor.f32(float %i.li)
  %i.lk = fptoui float %i.lj to i32
  %i.ll = zext i32 %i.lk to i64
  %i.lm = load ptr, ptr %i.hp, align 8, !tbaa !1771
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %i.ll ; 2 uses
  %i.lo = load float, ptr %i.ln, align 4, !tbaa !1119
  %i.lp = fcmp ogt float %i.kn, %i.lo
  br i1 %i.lp, label %bb.z, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit47

bb.z:                                             ; preds = %bb.y
  store float %i.kn, ptr %i.ln, align 4, !tbaa !1119
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit47

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit47: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i46, %bb.y, %bb.z
  %i.lq = fadd float %storemerge29199, %i.b       ; 2 uses
  %i.lr = fcmp ugt float %i.lq, %.sroa.speculated153
  br i1 %i.lr, label %.loopexit193, label %.lr.ph200, !llvm.loop !7566

.lr.ph198:                                        ; preds = %.preheader194, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit50
  %storemerge28197 = phi float [ %i.nk, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit50 ], [ %i.jv, %.preheader194 ] ; 4 uses
  %i.ls = load float, ptr %i.jn, align 4, !tbaa !1119 ; 2 uses
  %i.lt = load float, ptr %i.e, align 4, !tbaa !1119 ; 3 uses
  %i.lu = fmul float %i.lt, %i.lt
  %i.lv = load float, ptr %i.c, align 8, !tbaa !1119
  %i.lw = fsub float %storemerge28197, %i.lv      ; 3 uses
  %i.lx = fmul float %i.lw, %i.lw
  %i.ly = fsub float %i.lu, %i.lx
  %i.lz = tail call noundef float @sqrtf(float noundef %i.ly) #23
  %i.ma = fsub float %i.ls, %i.lz                 ; 3 uses
  %i.mb = load float, ptr %i.ek, align 8, !tbaa !1826
  %i.mc = load float, ptr %i.eo, align 8, !tbaa !1829
  %i.md = fmul float %i.lt, %i.mc
  %i.me = tail call float @llvm.fmuladd.f32(float %i.mb, float %i.lw, float %i.md)
  %i.mf = load float, ptr %i.hv, align 4, !tbaa !1825
  %i.mg = fdiv float %i.me, %i.mf
  %i.mh = fadd float %i.ls, %i.mg                 ; 3 uses
  %i.mi = tail call float @llvm.fabs.f32(float %i.ma)
  %i.mj = fcmp ueq float %i.mi, +inf
  br i1 %i.mj, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i49, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph198
  %i.mk = load float, ptr %i.gy, align 8, !tbaa !7574
  %i.ml = load float, ptr %i.hd, align 4, !tbaa !2971
  %i.mm = fsub float %storemerge28197, %i.ml
  %i.mn = fmul float %i.mk, %i.mm
  %i.mo = fadd float %i.mn, 5.000000e-01
  %i.mp = tail call noundef float @llvm.floor.f32(float %i.mo)
  %i.mq = fptoui float %i.mp to i32
  %i.mr = zext i32 %i.mq to i64
  %i.ms = load ptr, ptr %i.hn, align 8, !tbaa !1771
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.ms, i64 %i.mr ; 2 uses
  %i.mu = load float, ptr %i.mt, align 4, !tbaa !1119
  %i.mv = fcmp olt float %i.ma, %i.mu
  br i1 %i.mv, label %bb.ab, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i49

bb.ab:                                            ; preds = %bb.aa
  store float %i.ma, ptr %i.mt, align 4, !tbaa !1119
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i49

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i49: ; preds = %bb.ab, %bb.aa, %.lr.ph198
  %i.mw = tail call float @llvm.fabs.f32(float %i.mh)
  %i.mx = fcmp ueq float %i.mw, +inf
  br i1 %i.mx, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit50, label %bb.ac

bb.ac:                                            ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i49
  %i.my = load float, ptr %i.gy, align 8, !tbaa !7574
  %i.mz = load float, ptr %i.hd, align 4, !tbaa !2971
  %i.na = fsub float %storemerge28197, %i.mz
  %i.nb = fmul float %i.my, %i.na
  %i.nc = fadd float %i.nb, 5.000000e-01
  %i.nd = tail call noundef float @llvm.floor.f32(float %i.nc)
  %i.ne = fptoui float %i.nd to i32
  %i.nf = zext i32 %i.ne to i64
  %i.ng = load ptr, ptr %i.hp, align 8, !tbaa !1771
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %i.nf ; 2 uses
  %i.ni = load float, ptr %i.nh, align 4, !tbaa !1119
  %i.nj = fcmp ogt float %i.mh, %i.ni
  br i1 %i.nj, label %bb.ad, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit50

bb.ad:                                            ; preds = %bb.ac
  store float %i.mh, ptr %i.nh, align 4, !tbaa !1119
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit50

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit50: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i49, %bb.ac, %bb.ad
  %i.nk = fadd float %storemerge28197, %i.b       ; 2 uses
  %i.nl = fcmp ugt float %i.nk, %.sroa.speculated153
  br i1 %i.nl, label %.loopexit193, label %.lr.ph198, !llvm.loop !7567

.loopexit193:                                     ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit50, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit47, %.preheader194, %.preheader192, %._crit_edge
  %i.nm = extractelement <4 x float> %i.ex, i64 2 ; 4 uses
  %i.nn = extractelement <4 x float> %i.ey, i64 3 ; 3 uses
  %i.no = fcmp olt float %i.nm, %i.nn
  br i1 %i.no, label %.preheader, label %bb.aj

.preheader:                                       ; preds = %.loopexit193
  %i.np = extractelement <4 x float> %i.hc, i64 2 ; 2 uses
  %i.nq = fcmp ugt float %i.np, %i.nn
  br i1 %i.nq, label %.loopexit187, label %.lr.ph206

.lr.ph206:                                        ; preds = %.preheader
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 348
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph206, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit52
  %storemerge32205 = phi float [ %i.np, %.lr.ph206 ], [ %i.pn, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit52 ] ; 4 uses
  %i.ns = load float, ptr %i.nr, align 4, !tbaa !1822 ; 2 uses
  %2 = load <1 x float>, ptr %i.ek, align 8
  %i.nt = load float, ptr %i.c, align 8, !tbaa !1821
  %i.nu = fsub float %storemerge32205, %i.nt
  %3 = load <1 x float>, ptr %i.e, align 4
  %i.nv = load float, ptr %i.eo, align 8, !tbaa !1829 ; 2 uses
  %i.nw = fneg float %i.nv
  %4 = load <1 x float>, ptr %i.hv, align 4
  %i.nx = shufflevector <1 x float> %3, <1 x float> poison, <2 x i32> zeroinitializer
  %i.ny = insertelement <2 x float> poison, float %i.nw, i64 0
  %i.nz = insertelement <2 x float> %i.ny, float %i.nv, i64 1
  %i.oa = fmul <2 x float> %i.nx, %i.nz
  %i.ob = shufflevector <1 x float> %2, <1 x float> poison, <2 x i32> zeroinitializer
  %i.oc = insertelement <2 x float> poison, float %i.nu, i64 0
  %i.od = shufflevector <2 x float> %i.oc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.oe = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ob, <2 x float> %i.od, <2 x float> %i.oa)
  %i.of = shufflevector <1 x float> %4, <1 x float> poison, <2 x i32> zeroinitializer
  %i.og = fdiv <2 x float> %i.oe, %i.of           ; 2 uses
  %i.oh = extractelement <2 x float> %i.og, i64 0
  %i.oi = fadd float %i.ns, %i.oh                 ; 3 uses
  %i.oj = extractelement <2 x float> %i.og, i64 1
  %i.ok = fadd float %i.ns, %i.oj                 ; 3 uses
  %i.ol = tail call float @llvm.fabs.f32(float %i.oi)
  %i.om = fcmp ueq float %i.ol, +inf
  br i1 %i.om, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i51, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.on = load float, ptr %i.gy, align 8, !tbaa !7574
  %i.oo = load float, ptr %i.hd, align 4, !tbaa !2971
  %i.op = fsub float %storemerge32205, %i.oo
  %i.oq = fmul float %i.on, %i.op
  %i.or = fadd float %i.oq, 5.000000e-01
  %i.os = tail call noundef float @llvm.floor.f32(float %i.or)
  %i.ot = fptoui float %i.os to i32
  %i.ou = zext i32 %i.ot to i64
  %i.ov = load ptr, ptr %i.hn, align 8, !tbaa !1771
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.ov, i64 %i.ou ; 2 uses
  %i.ox = load float, ptr %i.ow, align 4, !tbaa !1119
  %i.oy = fcmp olt float %i.oi, %i.ox
  br i1 %i.oy, label %bb.ag, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i51

bb.ag:                                            ; preds = %bb.af
  store float %i.oi, ptr %i.ow, align 4, !tbaa !1119
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i51

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i51: ; preds = %bb.ag, %bb.af, %bb.ae
  %i.oz = tail call float @llvm.fabs.f32(float %i.ok)
  %i.pa = fcmp ueq float %i.oz, +inf
  br i1 %i.pa, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit52, label %bb.ah

bb.ah:                                            ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i51
  %i.pb = load float, ptr %i.gy, align 8, !tbaa !7574
  %i.pc = load float, ptr %i.hd, align 4, !tbaa !2971
  %i.pd = fsub float %storemerge32205, %i.pc
  %i.pe = fmul float %i.pb, %i.pd
  %i.pf = fadd float %i.pe, 5.000000e-01
  %i.pg = tail call noundef float @llvm.floor.f32(float %i.pf)
  %i.ph = fptoui float %i.pg to i32
  %i.pi = zext i32 %i.ph to i64
  %i.pj = load ptr, ptr %i.hp, align 8, !tbaa !1771
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.pj, i64 %i.pi ; 2 uses
  %i.pl = load float, ptr %i.pk, align 4, !tbaa !1119
  %i.pm = fcmp ogt float %i.ok, %i.pl
  br i1 %i.pm, label %bb.ai, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit52

bb.ai:                                            ; preds = %bb.ah
  store float %i.ok, ptr %i.pk, align 4, !tbaa !1119
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit52

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit52: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i51, %bb.ah, %bb.ai
  %i.pn = fadd float %storemerge32205, %i.b       ; 2 uses
  %i.po = fcmp ugt float %i.pn, %i.nn
  br i1 %i.po, label %.loopexit187, label %bb.ae, !llvm.loop !7568

bb.aj:                                            ; preds = %.loopexit193
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  %i.pq = load float, ptr %i.pp, align 8, !tbaa !1824
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 348 ; 3 uses
  %i.ps = load float, ptr %i.pr, align 4, !tbaa !1822
  %i.pt = fcmp ugt float %i.pq, %i.ps
  %i.pu = extractelement <4 x float> %i.hc, i64 3 ; 3 uses
  %i.pv = fcmp ugt float %i.pu, %i.nm             ; 2 uses
  br i1 %i.pt, label %.preheader188, label %.preheader190

.preheader190:                                    ; preds = %bb.aj
  br i1 %i.pv, label %.loopexit187, label %.lr.ph202

.preheader188:                                    ; preds = %bb.aj
  br i1 %i.pv, label %.loopexit187, label %.lr.ph204

.lr.ph202:                                        ; preds = %.preheader190, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit54
  %storemerge31201 = phi float [ %i.ro, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit54 ], [ %i.pu, %.preheader190 ] ; 5 uses
  %i.pw = load float, ptr %i.pp, align 8, !tbaa !1119
  %i.px = load float, ptr %i.e, align 4, !tbaa !1119 ; 2 uses
  %i.py = fmul float %i.px, %i.px                 ; 2 uses
  %i.pz = load float, ptr %i.g, align 4, !tbaa !1119
  %i.qa = fsub float %storemerge31201, %i.pz      ; 2 uses
  %i.qb = fmul float %i.qa, %i.qa
  %i.qc = fsub float %i.py, %i.qb
  %i.qd = tail call noundef float @sqrtf(float noundef %i.qc) #23
  %i.qe = fsub float %i.pw, %i.qd                 ; 3 uses
  %i.qf = load float, ptr %i.pr, align 4, !tbaa !1119
  %i.qg = load float, ptr %i.c, align 8, !tbaa !1119
  %i.qh = fsub float %storemerge31201, %i.qg      ; 2 uses
  %i.qi = fmul float %i.qh, %i.qh
  %i.qj = fsub float %i.py, %i.qi
  %i.qk = tail call noundef float @sqrtf(float noundef %i.qj) #23
  %i.ql = fadd float %i.qf, %i.qk                 ; 3 uses
  %i.qm = tail call float @llvm.fabs.f32(float %i.qe)
  %i.qn = fcmp ueq float %i.qm, +inf
  br i1 %i.qn, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i53, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph202
  %i.qo = load float, ptr %i.gy, align 8, !tbaa !7574
  %i.qp = load float, ptr %i.hd, align 4, !tbaa !2971
  %i.qq = fsub float %storemerge31201, %i.qp
  %i.qr = fmul float %i.qo, %i.qq
  %i.qs = fadd float %i.qr, 5.000000e-01
  %i.qt = tail call noundef float @llvm.floor.f32(float %i.qs)
  %i.qu = fptoui float %i.qt to i32
  %i.qv = zext i32 %i.qu to i64
  %i.qw = load ptr, ptr %i.hn, align 8, !tbaa !1771
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %i.qw, i64 %i.qv ; 2 uses
  %i.qy = load float, ptr %i.qx, align 4, !tbaa !1119
  %i.qz = fcmp olt float %i.qe, %i.qy
  br i1 %i.qz, label %bb.al, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i53

bb.al:                                            ; preds = %bb.ak
  store float %i.qe, ptr %i.qx, align 4, !tbaa !1119
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i53

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i53: ; preds = %bb.al, %bb.ak, %.lr.ph202
  %i.ra = tail call float @llvm.fabs.f32(float %i.ql)
  %i.rb = fcmp ueq float %i.ra, +inf
  br i1 %i.rb, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit54, label %bb.am

bb.am:                                            ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i53
  %i.rc = load float, ptr %i.gy, align 8, !tbaa !7574
  %i.rd = load float, ptr %i.hd, align 4, !tbaa !2971
  %i.re = fsub float %storemerge31201, %i.rd
  %i.rf = fmul float %i.rc, %i.re
  %i.rg = fadd float %i.rf, 5.000000e-01
  %i.rh = tail call noundef float @llvm.floor.f32(float %i.rg)
  %i.ri = fptoui float %i.rh to i32
  %i.rj = zext i32 %i.ri to i64
  %i.rk = load ptr, ptr %i.hp, align 8, !tbaa !1771
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %i.rk, i64 %i.rj ; 2 uses
  %i.rm = load float, ptr %i.rl, align 4, !tbaa !1119
  %i.rn = fcmp ogt float %i.ql, %i.rm
  br i1 %i.rn, label %bb.an, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit54

bb.an:                                            ; preds = %bb.am
  store float %i.ql, ptr %i.rl, align 4, !tbaa !1119
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit54

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit54: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i53, %bb.am, %bb.an
  %i.ro = fadd float %storemerge31201, %i.b       ; 2 uses
  %i.rp = fcmp ugt float %i.ro, %i.nm
  br i1 %i.rp, label %.loopexit187, label %.lr.ph202, !llvm.loop !7569

.lr.ph204:                                        ; preds = %.preheader188, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit56
  %storemerge30203 = phi float [ %i.ti, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit56 ], [ %i.pu, %.preheader188 ] ; 5 uses
  %i.rq = load float, ptr %i.pr, align 4, !tbaa !1119
  %i.rr = load float, ptr %i.e, align 4, !tbaa !1119 ; 2 uses
  %i.rs = fmul float %i.rr, %i.rr                 ; 2 uses
  %i.rt = load float, ptr %i.c, align 8, !tbaa !1119
  %i.ru = fsub float %storemerge30203, %i.rt      ; 2 uses
  %i.rv = fmul float %i.ru, %i.ru
  %i.rw = fsub float %i.rs, %i.rv
  %i.rx = tail call noundef float @sqrtf(float noundef %i.rw) #23
  %i.ry = fsub float %i.rq, %i.rx                 ; 3 uses
  %i.rz = load float, ptr %i.pp, align 8, !tbaa !1119
  %i.sa = load float, ptr %i.g, align 4, !tbaa !1119
  %i.sb = fsub float %storemerge30203, %i.sa      ; 2 uses
  %i.sc = fmul float %i.sb, %i.sb
  %i.sd = fsub float %i.rs, %i.sc
  %i.se = tail call noundef float @sqrtf(float noundef %i.sd) #23
  %i.sf = fadd float %i.rz, %i.se                 ; 3 uses
  %i.sg = tail call float @llvm.fabs.f32(float %i.ry)
  %i.sh = fcmp ueq float %i.sg, +inf
  br i1 %i.sh, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i55, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph204
  %i.si = load float, ptr %i.gy, align 8, !tbaa !7574
  %i.sj = load float, ptr %i.hd, align 4, !tbaa !2971
  %i.sk = fsub float %storemerge30203, %i.sj
  %i.sl = fmul float %i.si, %i.sk
  %i.sm = fadd float %i.sl, 5.000000e-01
  %i.sn = tail call noundef float @llvm.floor.f32(float %i.sm)
  %i.so = fptoui float %i.sn to i32
  %i.sp = zext i32 %i.so to i64
  %i.sq = load ptr, ptr %i.hn, align 8, !tbaa !1771
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %i.sq, i64 %i.sp ; 2 uses
  %i.ss = load float, ptr %i.sr, align 4, !tbaa !1119
  %i.st = fcmp olt float %i.ry, %i.ss
  br i1 %i.st, label %bb.ap, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i55

bb.ap:                                            ; preds = %bb.ao
  store float %i.ry, ptr %i.sr, align 4, !tbaa !1119
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i55

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i55: ; preds = %bb.ap, %bb.ao, %.lr.ph204
  %i.su = tail call float @llvm.fabs.f32(float %i.sf)
  %i.sv = fcmp ueq float %i.su, +inf
  br i1 %i.sv, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit56, label %bb.aq

bb.aq:                                            ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i55
  %i.sw = load float, ptr %i.gy, align 8, !tbaa !7574
  %i.sx = load float, ptr %i.hd, align 4, !tbaa !2971
  %i.sy = fsub float %storemerge30203, %i.sx
  %i.sz = fmul float %i.sw, %i.sy
  %i.ta = fadd float %i.sz, 5.000000e-01
  %i.tb = tail call noundef float @llvm.floor.f32(float %i.ta)
  %i.tc = fptoui float %i.tb to i32
  %i.td = zext i32 %i.tc to i64
  %i.te = load ptr, ptr %i.hp, align 8, !tbaa !1771
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %i.te, i64 %i.td ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_16LeafIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENSB_9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EEE8PrevItemENS0_8TypeListIJS8_S9_SA_SB_EEELm4ELj0EEENSQ_IJS9_SA_SB_EEELm3ELj1EEENSQ_IJSA_SB_EEELm2ELj2EE4nextEj:bb.a
  %i.s = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i to i32
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.loopexit.i.i.i.i, %bb.d
  %.016.lcssa.i.i.i.i = phi i32 [ %i.f, %bb.d ], [ %i.s, %.critedge.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ %i.p, %bb.d ], [ %i.r, %.critedge.loopexit.i.i.i.i ]
  %i.t = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.u = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.v = trunc nuw nsw i64 %i.u to i32
  %i.w = or disjoint i32 %i.t, %i.v
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE4nextEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE4nextEv.exit: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader, %bb.b, %bb.c, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ 32768, %bb.b ], [ %i.e, %bb.c ], [ %i.w, %.critedge.i.i.i.i ], [ 32768, %.lr.ph.i.i.i.i.preheader ], [ 32768, %.lr.ph.i.i.i.i ] ; 2 uses
  store i32 %.118.i.i.i.i, ptr %i.a, align 8, !tbaa !2109
  %i.x = icmp ne i32 %.118.i.i.i.i, 32768
  br label %_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS2_INS1_16LeafIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENSB_9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EEE8PrevItemENS0_8TypeListIJS8_S9_SA_SB_EEELm4ELj0EEENSQ_IJS9_SA_SB_EEELm3ELj1EEENSQ_IJSA_SB_EEELm2ELj2EEENSQ_IJSB_EEELm1ELj3EE4nextEj.exit

bb.e:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !3127
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 5 uses
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !3128 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ac, %i.ab
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %i.ac) #32 ; 2 uses
  store ptr %i.ad, ptr %i.z, align 8, !tbaa !3128
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.promoted.i.i.i.i = phi ptr [ %i.ad, %bb.f ], [ %i.ac, %bb.e ] ; 2 uses
  %.not2.i.i.i.i = icmp eq ptr %.promoted.i.i.i.i, %i.ab
  br i1 %.not2.i.i.i.i, label %_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS2_INS1_16LeafIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENSB_9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EEE8PrevItemENS0_8TypeListIJS8_S9_SA_SB_EEELm4ELj0EEENSQ_IJS9_SA_SB_EEELm3ELj1EEENSQ_IJSA_SB_EEELm2ELj2EEENSQ_IJSB_EEELm1ELj3EE4nextEj.exit, label %.lr.ph.i.i.i.i2

.lr.ph.i.i.i.i2:                                  ; preds = %bb.g, %bb.h
  %i.ae = phi ptr [ %i.ah, %bb.h ], [ %.promoted.i.i.i.i, %bb.g ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !922
  %.not1.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not1.i.i.i.i, label %bb.h, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE8BaseIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredEE9incrementEv.exit.loopexit.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i2
  %i.ah = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %i.ae) #32 ; 3 uses
  store ptr %i.ah, ptr %i.z, align 8, !tbaa !3128
  %.not.i.i.i.i3 = icmp eq ptr %i.ah, %i.ab
  br i1 %.not.i.i.i.i3, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE8BaseIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredEE9incrementEv.exit.loopexit.i.i, label %.lr.ph.i.i.i.i2, !llvm.loop !182

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE8BaseIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredEE9incrementEv.exit.loopexit.i.i: ; preds = %bb.h, %.lr.ph.i.i.i.i2
  %i.ai = phi ptr [ %i.ab, %bb.h ], [ %i.ae, %.lr.ph.i.i.i.i2 ]
  %i.aj = icmp ne ptr %i.ai, %i.ab
  br label %_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS2_INS1_16LeafIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENSB_9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EEE8PrevItemENS0_8TypeListIJS8_S9_SA_SB_EEELm4ELj0EEENSQ_IJS9_SA_SB_EEELm3ELj1EEENSQ_IJSA_SB_EEELm2ELj2EEENSQ_IJSB_EEELm1ELj3EE4nextEj.exit

_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS2_INS1_16LeafIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENSB_9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EEE8PrevItemENS0_8TypeListIJS8_S9_SA_SB_EEELm4ELj0EEENSQ_IJS9_SA_SB_EEELm3ELj1EEENSQ_IJSA_SB_EEELm2ELj2EEENSQ_IJSB_EEELm1ELj3EE4nextEj.exit: ; preds = %bb.a, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE8BaseIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredEE9incrementEv.exit.loopexit.i.i, %bb.g, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE4nextEv.exit
  %i.ak = phi i1 [ %i.x, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE4nextEv.exit ], [ false, %bb.a ], [ %i.aj, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE8BaseIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredEE9incrementEv.exit.loopexit.i.i ], [ false, %bb.g ]
  ret i1 %i.ak
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7addTileEjRKNS0_4math5CoordERKdb(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 6 uses
  %6 = alloca %"struct.openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<double, 3>, 4>, 5>>::Tile", align 8 ; 8 uses
  %7 = alloca %"struct.openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<double, 3>, 4>, 5>>::Tile", align 8 ; 5 uses
  %8 = alloca %"struct.openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<double, 3>, 4>, 5>>::Tile", align 8 ; 5 uses
  %i.a = icmp ult i32 %1, 4
  br i1 %i.a, label %bb.b, label %bb.ag

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load i32, ptr %2, align 4, !tbaa !699
  %i.d = load i32, ptr %i.b, align 8, !tbaa !699
  %i.e = sub nsw i32 %i.c, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !699
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !699
  %i.j = sub nsw i32 %i.g, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !699
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load i32, ptr %i.m, align 8, !tbaa !699
  %i.o = sub nsw i32 %i.l, %i.n
  %i.p = and i32 %i.e, -4096                      ; 13 uses
  %i.q = and i32 %i.j, -4096                      ; 13 uses
  %i.r = and i32 %i.o, -4096                      ; 7 uses
  %.sroa.2.0.insert.ext.i10.i = zext i32 %i.q to i64
  %.sroa.2.0.insert.shift.i11.i = shl nuw i64 %.sroa.2.0.insert.ext.i10.i, 32
  %.sroa.0.0.insert.ext.i12.i = zext i32 %i.p to i64
  %.sroa.0.0.insert.insert.i13.i = or disjoint i64 %.sroa.2.0.insert.shift.i11.i, %.sroa.0.0.insert.ext.i12.i
  store i64 %.sroa.0.0.insert.insert.i13.i, ptr %5, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.r, ptr %.sroa.2.0..sroa_idx, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !771  ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %.not12.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not12.i.i.i.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.t, %bb.b ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.u, %bb.b ]
  %i.v = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.w = load i32, ptr %i.v, align 4, !tbaa !699  ; 2 uses
  %i.x = icmp slt i32 %i.w, %i.p
  br i1 %i.x, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.y = icmp sgt i32 %i.w, %i.p
  br i1 %i.y, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !699 ; 2 uses
  %i.ab = icmp slt i32 %i.aa, %i.q
  br i1 %i.ab, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = icmp sgt i32 %i.aa, %i.q
  br i1 %i.ac, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 40
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !699
  %i.af = icmp slt i32 %i.ae, %i.r
  br i1 %i.af, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.d, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.e, %bb.c
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ 16, %bb.e ], [ 16, %bb.c ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.e ], [ %.014.i.i.i.i, %bb.c ], [ %.014.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ] ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.ag, align 8, !tbaa !860 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !44

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %i.ah = icmp eq ptr %.19.i.i.i.i, %i.u
  br i1 %i.ah, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !699 ; 2 uses
  %i.ak = icmp slt i32 %i.p, %i.aj
  br i1 %i.ak, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = icmp sgt i32 %i.p, %i.aj
  br i1 %i.al, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.an = load i32, ptr %i.am, align 4, !tbaa !699 ; 2 uses
  %i.ao = icmp slt i32 %i.q, %i.an
  br i1 %i.ao, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = icmp sgt i32 %i.q, %i.an
  br i1 %i.ap, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i: ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !699
  %i.as = icmp slt i32 %i.r, %i.ar
  br i1 %i.as, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread: ; preds = %bb.h, %bb.f, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i
  %.not37 = icmp eq i32 %1, 3
  br i1 %.not37, label %.lr.ph.i.i.i.i51, label %vector.ph107

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread.thread: ; preds = %bb.b
  %.not3783 = icmp eq i32 %1, 3
  br i1 %.not3783, label %.thread, label %vector.ph107

.thread:                                          ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.at = zext i1 %4 to i8
  %i.au = load double, ptr %3, align 8, !tbaa !1150
  store double %i.au, ptr %6, align 8, !tbaa !1160
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 %i.at, ptr %i.av, align 8, !tbaa !1161
  br label %.critedge.i66

vector.ph107:                                     ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread.thread, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread
  %i.aw = tail call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #30 ; 8 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 270336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.aw, i8 0, i64 270336, i1 false)
  %i.ay = load i32, ptr %i.k, align 4, !tbaa !699
  %i.az = load <2 x i32>, ptr %2, align 4, !tbaa !699
  %i.ba = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.ay, i64 2
  %i.bb = shufflevector <2 x i32> %i.az, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bc = shufflevector <4 x i32> %i.bb, <4 x i32> %i.ba, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bd = and <4 x i32> %i.bc, <i32 -4096, i32 -4096, i32 -4096, i32 0>
  store <4 x i32> %i.bd, ptr %i.ax, align 8, !tbaa !699
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 48
  %9 = load <1 x double>, ptr %i.be, align 8
  %broadcast.splat109 = shufflevector <1 x double> %9, <1 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body110

vector.body110:                                   ; preds = %vector.body110, %vector.ph107
  %index111 = phi i64 [ 0, %vector.ph107 ], [ %index.next112.3, %vector.body110 ] ; 5 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index111 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store <2 x double> %broadcast.splat109, ptr %i.bf, align 8, !tbaa !726
  store <2 x double> %broadcast.splat109, ptr %i.bg, align 8, !tbaa !726
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index111 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  store <2 x double> %broadcast.splat109, ptr %i.bi, align 8, !tbaa !726
  store <2 x double> %broadcast.splat109, ptr %i.bj, align 8, !tbaa !726
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index111 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 80
  store <2 x double> %broadcast.splat109, ptr %i.bl, align 8, !tbaa !726
  store <2 x double> %broadcast.splat109, ptr %i.bm, align 8, !tbaa !726
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index111 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 96
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 112
  store <2 x double> %broadcast.splat109, ptr %i.bo, align 8, !tbaa !726
  store <2 x double> %broadcast.splat109, ptr %i.bp, align 8, !tbaa !726
  %index.next112.3 = add nuw nsw i64 %index111, 16 ; 2 uses
  %i.bq = icmp eq i64 %index.next112.3, 32768
  br i1 %i.bq, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit, label %vector.body110, !llvm.loop !7916

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit: ; preds = %vector.body110
  %i.br = load ptr, ptr %i.s, align 8, !tbaa !771 ; 2 uses
  %.not12.i.i.i.i39 = icmp eq ptr %i.br, null
  br i1 %.not12.i.i.i.i39, label %.critedge.i, label %.lr.ph.i.i.i.i40

.lr.ph.i.i.i.i40:                                 ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44
  %.014.i.i.i.i41 = phi ptr [ %.1.i.i.i.i47, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44 ], [ %i.br, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ] ; 7 uses
  %.0813.i.i.i.i42 = phi ptr [ %.19.i.i.i.i46, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44 ], [ %i.u, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i41, i64 32
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !699 ; 2 uses
  %i.bu = icmp slt i32 %i.bt, %i.p
  br i1 %i.bu, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i49, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i40
  %i.bv = icmp sgt i32 %i.bt, %i.p
  br i1 %i.bv, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bw = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i41, i64 36
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !699 ; 2 uses
  %i.by = icmp slt i32 %i.bx, %i.q
  br i1 %i.by, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i49, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bz = icmp sgt i32 %i.bx, %i.q
  br i1 %i.bz, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i43

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i43: ; preds = %bb.l
  %i.ca = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i41, i64 40
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !699
  %i.cc = icmp slt i32 %i.cb, %i.r
  br i1 %i.cc, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i49, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i49: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i43, %bb.k, %.lr.ph.i.i.i.i40
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i49, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i43, %bb.l, %bb.j
  %.sink.i.i.i.i45 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i49 ], [ 16, %bb.l ], [ 16, %bb.j ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i43 ]
  %.19.i.i.i.i46 = phi ptr [ %.0813.i.i.i.i42, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i49 ], [ %.014.i.i.i.i41, %bb.l ], [ %.014.i.i.i.i41, %bb.j ], [ %.014.i.i.i.i41, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i43 ] ; 9 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i41, i64 %.sink.i.i.i.i45
  %.1.i.i.i.i47 = load ptr, ptr %i.cd, align 8, !tbaa !860 ; 2 uses
  %.not.i.i.i.i48 = icmp eq ptr %.1.i.i.i.i47, null
  br i1 %.not.i.i.i.i48, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, label %.lr.ph.i.i.i.i40, !llvm.loop !44

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44
  %i.ce = icmp eq ptr %.19.i.i.i.i46, %i.u
  br i1 %i.ce, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i46, i64 32
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !699 ; 2 uses
  %i.ch = icmp slt i32 %i.p, %i.cg
  br i1 %i.ch, label %.critedge.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ci = icmp sgt i32 %i.p, %i.cg
  br i1 %i.ci, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i46, i64 36
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !699 ; 2 uses
  %i.cl = icmp slt i32 %i.q, %i.ck
  br i1 %i.cl, label %.critedge.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cm = icmp sgt i32 %i.q, %i.ck
  br i1 %i.cm, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i: ; preds = %bb.p
  %i.cn = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i46, i64 40
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !699
  %i.cp = icmp slt i32 %i.r, %i.co
  br i1 %i.cp, label %.critedge.i, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

.critedge.i:                                      ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.o, %bb.m, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit
  %.08.lcssa.i.i.i20.i = phi ptr [ %i.u, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ], [ %.19.i.i.i.i46, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %.19.i.i.i.i46, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i ], [ %.19.i.i.i.i46, %bb.m ], [ %.19.i.i.i.i46, %bb.o ]
  %i.cq = call ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE22_M_emplace_hint_uniqueIJRS5_RSC_EEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i20.i, ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(270352) %i.aw) ; 0 uses
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit: ; preds = %bb.n, %bb.p, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %.critedge.i
  call void @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE7addTileEjRKNS0_4math5CoordERKdb(ptr noundef nonnull align 8 dereferenceable(270352) %i.aw, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %4)
  br label %bb.af

.lr.ph.i.i.i.i51:                                 ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.cr = zext i1 %4 to i8
  %i.cs = load double, ptr %3, align 8, !tbaa !1150
  store double %i.cs, ptr %6, align 8, !tbaa !1160
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 %i.cr, ptr %i.ct, align 8, !tbaa !1161
  br label %bb.q

bb.q:                                             ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55, %.lr.ph.i.i.i.i51
  %.014.i.i.i.i52 = phi ptr [ %i.t, %.lr.ph.i.i.i.i51 ], [ %.1.i.i.i.i58, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55 ] ; 7 uses
  %.0813.i.i.i.i53 = phi ptr [ %i.u, %.lr.ph.i.i.i.i51 ], [ %.19.i.i.i.i57, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55 ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i52, i64 32
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !699 ; 2 uses
  %i.cw = icmp slt i32 %i.cv, %i.p
  br i1 %i.cw, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i68, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cx = icmp sgt i32 %i.cv, %i.p
  br i1 %i.cx, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cy = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i52, i64 36
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !699 ; 2 uses
  %i.da = icmp slt i32 %i.cz, %i.q
  br i1 %i.da, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i68, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.db = icmp sgt i32 %i.cz, %i.q
  br i1 %i.db, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i54

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i54: ; preds = %bb.t
  %i.dc = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i52, i64 40
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !699
  %i.de = icmp slt i32 %i.dd, %i.r
  br i1 %i.de, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i68, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i68: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i54, %bb.s, %bb.q
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i68, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i54, %bb.t, %bb.r
  %.sink.i.i.i.i56 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i68 ], [ 16, %bb.t ], [ 16, %bb.r ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i54 ]
  %.19.i.i.i.i57 = phi ptr [ %.0813.i.i.i.i53, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i68 ], [ %.014.i.i.i.i52, %bb.t ], [ %.014.i.i.i.i52, %bb.r ], [ %.014.i.i.i.i52, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i54 ] ; 9 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i52, i64 %.sink.i.i.i.i56
  %.1.i.i.i.i58 = load ptr, ptr %i.df, align 8, !tbaa !860 ; 2 uses
  %.not.i.i.i.i59 = icmp eq ptr %.1.i.i.i.i58, null
  br i1 %.not.i.i.i.i59, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i60, label %bb.q, !llvm.loop !44

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i60: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55
  %i.dg = icmp eq ptr %.19.i.i.i.i57, %i.u
  br i1 %i.dg, label %.critedge.i66, label %bb.u

bb.u:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i60
  %i.dh = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i57, i64 32
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !699 ; 2 uses
  %i.dj = icmp slt i32 %i.p, %i.di
  br i1 %i.dj, label %.critedge.i66, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dk = icmp sgt i32 %i.p, %i.di
  br i1 %i.dk, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dl = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i57, i64 36
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !699 ; 2 uses
  %i.dn = icmp slt i32 %i.q, %i.dm
  br i1 %i.dn, label %.critedge.i66, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.do = icmp sgt i32 %i.q, %i.dm
  br i1 %i.do, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i61

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i61: ; preds = %bb.x
  %i.dp = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i57, i64 40
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !699
  %i.dr = icmp slt i32 %i.r, %i.dq
  br i1 %i.dr, label %.critedge.i66, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

.critedge.i66:                                    ; preds = %.thread, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i61, %bb.w, %bb.u, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i60
  %.08.lcssa.i.i.i20.i67 = phi ptr [ %i.u, %.thread ], [ %.19.i.i.i.i57, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i61 ], [ %.19.i.i.i.i57, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i60 ], [ %.19.i.i.i.i57, %bb.u ], [ %.19.i.i.i.i57, %bb.w ]
  %i.ds = call ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE22_M_emplace_hint_uniqueIJRS5_NSD_4TileEEEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i20.i67, ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(9) %6) ; 0 uses
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit: ; preds = %bb.v, %bb.x, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i61, %.critedge.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.af

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit: ; preds = %bb.i, %bb.g, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 48 ; 5 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !922 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN3tbb6detail2d19fold_treeINS1_19reduction_tree_nodeIN7openvdb5v13_04tree8NodeListIKNS6_8LeafNodeIdLj3EEEE11NodeReducerINS5_5tools14count_internal10MemUsageOpINS6_4TreeINS6_8RootNodeINS6_12InternalNodeINSI_IS9_Lj4EEELj5EEEEEEEEENSB_11OpWithIndexEEEEEEEvPNS1_4nodeERKNS1_14execution_dataE:bb.a
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.am)
  br label %_ZN3tbb6detail2d112wait_context7releaseEj.exit

_ZN3tbb6detail2d112wait_context7releaseEj.exit:   ; preds = %bb.f, %bb.a, %bb.h, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE12readTopologyERSib(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca [3 x i32], align 8                ; 11 uses
  %i.d = alloca double, align 8                   ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.openvdb::v13_0::math::Coord", align 4 ; 6 uses
  %4 = alloca %"struct.openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<double, 3>, 4>, 5>>::Tile", align 8 ; 5 uses
  %5 = alloca %"class.openvdb::v13_0::math::Coord", align 4 ; 6 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !701
  %i.g = getelementptr i8, ptr %i.f, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %1, i64 %i.h
  tail call void @_ZN7openvdb5v13_02io18checkFormatVersionERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.i)
  tail call void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.j, i64 noundef 8) ; 0 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !701
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %1, i64 %i.n
  tail call void @_ZN7openvdb5v13_02io25setGridBackgroundValuePtrERSt8ios_basePKv(ptr noundef nonnull align 8 dereferenceable(216) %i.o, ptr noundef nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 0, ptr %i.a, align 4, !tbaa !699
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i32 0, ptr %i.b, align 4, !tbaa !699
  %i.p = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.a, i64 noundef 4) ; 0 uses
  %i.q = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.b, i64 noundef 4) ; 0 uses
  %i.r = load i32, ptr %i.a, align 4, !tbaa !699
  %i.s = icmp ne i32 %i.r, 0                      ; 2 uses
  %i.t = load i32, ptr %i.b, align 4              ; 2 uses
  %i.u = icmp ne i32 %i.t, 0
  %or.cond.not = select i1 %i.s, i1 true, i1 %i.u ; 2 uses
  br i1 %or.cond.not, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  br i1 %i.s, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.c

.preheader.loopexit:                              ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit
  %.pre = load i32, ptr %i.b, align 4, !tbaa !699
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.b
  %i.ac = phi i32 [ %.pre, %.preheader.loopexit ], [ %i.t, %bb.b ]
  %.not48 = icmp eq i32 %i.ac, 0
  br i1 %.not48, label %._crit_edge, label %.lr.ph47

.lr.ph47:                                         ; preds = %.preheader
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %vector.ph

bb.c:                                             ; preds = %.lr.ph, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit
  %.02345 = phi i32 [ 0, %.lr.ph ], [ %i.br, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit ]
  %i.aj = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.c, i64 noundef 12) ; 0 uses
  %i.ak = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.d, i64 noundef 8) ; 0 uses
  %i.al = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.e, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.am = load i32, ptr %i.c, align 8, !tbaa !699 ; 5 uses
  store i32 %i.am, ptr %3, align 4, !tbaa !699
  %i.an = load i32, ptr %i.w, align 4, !tbaa !699 ; 5 uses
  store i32 %i.an, ptr %i.v, align 4, !tbaa !699
  %i.ao = load i32, ptr %i.y, align 8, !tbaa !699 ; 3 uses
  store i32 %i.ao, ptr %i.x, align 4, !tbaa !699
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.ap = load i8, ptr %i.e, align 1, !tbaa !765, !range !746, !noundef !747
  %i.aq = load double, ptr %i.d, align 8, !tbaa !1150
  store double %i.aq, ptr %4, align 8, !tbaa !1160
  store i8 %i.ap, ptr %i.z, align 8, !tbaa !1161
  %i.ar = load ptr, ptr %i.aa, align 8, !tbaa !771 ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not12.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.ar, %bb.c ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.ab, %bb.c ]
  %i.as = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.at = load i32, ptr %i.as, align 4, !tbaa !699 ; 2 uses
  %i.au = icmp slt i32 %i.at, %i.am
  br i1 %i.au, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.av = icmp sgt i32 %i.at, %i.am
  br i1 %i.av, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !699 ; 2 uses
  %i.ay = icmp slt i32 %i.ax, %i.an
  br i1 %i.ay, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.az = icmp sgt i32 %i.ax, %i.an
  br i1 %i.az, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 40
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !699
  %i.bc = icmp slt i32 %i.bb, %i.ao
  br i1 %i.bc, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.e, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.f, %bb.d
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ 16, %bb.f ], [ 16, %bb.d ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.f ], [ %.014.i.i.i.i, %bb.d ], [ %.014.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ] ; 9 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.bd, align 8, !tbaa !860 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !44

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %i.be = icmp eq ptr %.19.i.i.i.i, %i.ab
  br i1 %i.be, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !699 ; 2 uses
  %i.bh = icmp slt i32 %i.am, %i.bg
  br i1 %i.bh, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bi = icmp sgt i32 %i.am, %i.bg
  br i1 %i.bi, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !699 ; 2 uses
  %i.bl = icmp slt i32 %i.an, %i.bk
  br i1 %i.bl, label %.critedge.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bm = icmp sgt i32 %i.an, %i.bk
  br i1 %i.bm, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i: ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !699
  %i.bp = icmp slt i32 %i.ao, %i.bo
  br i1 %i.bp, label %.critedge.i, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

.critedge.i:                                      ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.i, %bb.g, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, %bb.c
  %.08.lcssa.i.i.i20.i = phi ptr [ %i.ab, %bb.c ], [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %.19.i.i.i.i, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i ], [ %.19.i.i.i.i, %bb.g ], [ %.19.i.i.i.i, %bb.i ]
  %i.bq = call ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE22_M_emplace_hint_uniqueIJS3_NSD_4TileEEEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i20.i, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(9) %4) ; 0 uses
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit: ; preds = %bb.h, %bb.j, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.br = add nuw i32 %.02345, 1                  ; 2 uses
  %i.bs = load i32, ptr %i.a, align 4, !tbaa !699
  %i.bt = icmp ult i32 %i.br, %i.bs
  br i1 %i.bt, label %bb.c, label %.preheader.loopexit, !llvm.loop !8576

._crit_edge:                                      ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %bb.r

vector.ph:                                        ; preds = %.lr.ph47, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit
  %.02446 = phi i32 [ 0, %.lr.ph47 ], [ %i.ds, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit ]
  %i.bu = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.c, i64 noundef 12) ; 0 uses
  %i.bv = load i32, ptr %i.ae, align 8, !tbaa !699
  %i.bw = load <2 x i32>, ptr %i.c, align 8, !tbaa !699
  %i.bx = call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #30 ; 8 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 270336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.bx, i8 0, i64 270336, i1 false)
  %i.bz = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.bv, i64 2
  %i.ca = shufflevector <2 x i32> %i.bw, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cb = shufflevector <4 x i32> %i.ca, <4 x i32> %i.bz, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cc = and <4 x i32> %i.cb, <i32 -4096, i32 -4096, i32 -4096, i32 0>
  store <4 x i32> %i.cc, ptr %i.by, align 8, !tbaa !699
  %6 = load <1 x double>, ptr %i.j, align 8
  %broadcast.splat = shufflevector <1 x double> %6, <1 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %index ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store <2 x double> %broadcast.splat, ptr %i.cd, align 8, !tbaa !726
  store <2 x double> %broadcast.splat, ptr %i.ce, align 8, !tbaa !726
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %index ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 48
  store <2 x double> %broadcast.splat, ptr %i.cg, align 8, !tbaa !726
  store <2 x double> %broadcast.splat, ptr %i.ch, align 8, !tbaa !726
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %index ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 80
  store <2 x double> %broadcast.splat, ptr %i.cj, align 8, !tbaa !726
  store <2 x double> %broadcast.splat, ptr %i.ck, align 8, !tbaa !726
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %index ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 96
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 112
  store <2 x double> %broadcast.splat, ptr %i.cm, align 8, !tbaa !726
  store <2 x double> %broadcast.splat, ptr %i.cn, align 8, !tbaa !726
  %index.next.3 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.co = icmp eq i64 %index.next.3, 32768
  br i1 %i.co, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKdb.exit, label %vector.body, !llvm.loop !8577

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKdb.exit: ; preds = %vector.body
  call void @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12readTopologyERSib(ptr noundef nonnull align 8 dereferenceable(270352) %i.bx, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.cp = load i32, ptr %i.c, align 8, !tbaa !699 ; 5 uses
  store i32 %i.cp, ptr %5, align 4, !tbaa !699
  %i.cq = load i32, ptr %i.ad, align 4, !tbaa !699 ; 5 uses
  store i32 %i.cq, ptr %i.af, align 4, !tbaa !699
  %i.cr = load i32, ptr %i.ae, align 8, !tbaa !699 ; 3 uses
  store i32 %i.cr, ptr %i.ag, align 4, !tbaa !699
  %i.cs = load ptr, ptr %i.ah, align 8, !tbaa !771 ; 2 uses
  %.not12.i.i.i.i26 = icmp eq ptr %i.cs, null
  br i1 %.not12.i.i.i.i26, label %.critedge.i42, label %.lr.ph.i.i.i.i27

.lr.ph.i.i.i.i27:                                 ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKdb.exit, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31
  %.014.i.i.i.i28 = phi ptr [ %.1.i.i.i.i34, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31 ], [ %i.cs, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKdb.exit ] ; 7 uses
  %.0813.i.i.i.i29 = phi ptr [ %.19.i.i.i.i33, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31 ], [ %i.ai, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKdb.exit ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i28, i64 32
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !699 ; 2 uses
  %i.cv = icmp slt i32 %i.cu, %i.cp
  br i1 %i.cv, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i44, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i27
  %i.cw = icmp sgt i32 %i.cu, %i.cp
  br i1 %i.cw, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cx = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i28, i64 36
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !699 ; 2 uses
  %i.cz = icmp slt i32 %i.cy, %i.cq
  br i1 %i.cz, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i44, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.da = icmp sgt i32 %i.cy, %i.cq
  br i1 %i.da, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i30

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i30: ; preds = %bb.m
  %i.db = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i28, i64 40
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !699
  %i.dd = icmp slt i32 %i.dc, %i.cr
  br i1 %i.dd, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i44, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i44: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i30, %bb.l, %.lr.ph.i.i.i.i27
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i44, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i30, %bb.m, %bb.k
  %.sink.i.i.i.i32 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i44 ], [ 16, %bb.m ], [ 16, %bb.k ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i30 ]
  %.19.i.i.i.i33 = phi ptr [ %.0813.i.i.i.i29, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i44 ], [ %.014.i.i.i.i28, %bb.m ], [ %.014.i.i.i.i28, %bb.k ], [ %.014.i.i.i.i28, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i30 ] ; 9 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i28, i64 %.sink.i.i.i.i32
  %.1.i.i.i.i34 = load ptr, ptr %i.de, align 8, !tbaa !860 ; 2 uses
  %.not.i.i.i.i35 = icmp eq ptr %.1.i.i.i.i34, null
  br i1 %.not.i.i.i.i35, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i36, label %.lr.ph.i.i.i.i27, !llvm.loop !44

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i36: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31
  %i.df = icmp eq ptr %.19.i.i.i.i33, %i.ai
  br i1 %i.df, label %.critedge.i42, label %bb.n

bb.n:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i36
  %i.dg = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i33, i64 32
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !699 ; 2 uses
  %i.di = icmp slt i32 %i.cp, %i.dh
  br i1 %i.di, label %.critedge.i42, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dj = icmp sgt i32 %i.cp, %i.dh
  br i1 %i.dj, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dk = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i33, i64 36
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !699 ; 2 uses
  %i.dm = icmp slt i32 %i.cq, %i.dl
  br i1 %i.dm, label %.critedge.i42, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dn = icmp sgt i32 %i.cq, %i.dl
  br i1 %i.dn, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i37

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i37: ; preds = %bb.q
  %i.do = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i33, i64 40
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !699
  %i.dq = icmp slt i32 %i.cr, %i.dp
  br i1 %i.dq, label %.critedge.i42, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

.critedge.i42:                                    ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i37, %bb.p, %bb.n, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i36, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKdb.exit
  %.08.lcssa.i.i.i20.i43 = phi ptr [ %i.ai, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKdb.exit ], [ %.19.i.i.i.i33, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i37 ], [ %.19.i.i.i.i33, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i36 ], [ %.19.i.i.i.i33, %bb.n ], [ %.19.i.i.i.i33, %bb.p ]
  %i.dr = call ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE22_M_emplace_hint_uniqueIJS3_RSC_EEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i20.i43, ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(270352) %i.bx) ; 0 uses
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit: ; preds = %bb.o, %bb.q, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i37, %.critedge.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.ds = add nuw i32 %.02446, 1                  ; 2 uses
  %i.dt = load i32, ptr %i.b, align 4, !tbaa !699
  %i.du = icmp ult i32 %i.ds, %i.dt
  br i1 %i.du, label %vector.ph, label %._crit_edge, !llvm.loop !8578

bb.r:                                             ; preds = %bb.a, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i1 %or.cond.not
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12readTopologyERSib(ptr noundef nonnull align 8 dereferenceable(270352) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<double, 3>, 4>, 5>::ChildIter.1397", align 8 ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !701
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c
  tail call void @_ZN7openvdb5v13_02io18checkFormatVersionERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.d)
  %i.e = load ptr, ptr %1, align 8, !tbaa !701
  %i.f = getelementptr i8, ptr %i.e, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g
  %i.i = tail call noundef ptr @_ZN7openvdb5v13_02io25getGridBackgroundValuePtrERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.h)
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %1, align 8, !tbaa !701
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %1, i64 %i.l
  %i.n = tail call noundef ptr @_ZN7openvdb5v13_02io25getGridBackgroundValuePtrERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.m)
  %i.o = load double, ptr %i.n, align 8, !tbaa !1150
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.p = phi double [ %i.o, %bb.b ], [ 0.000000e+00, %bb.a ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 262144 ; 10 uses
  %i.r = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(4096) %i.q, i64 noundef 4096) ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 266240 ; 2 uses
  %i.t = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(4096) %i.s, i64 noundef 4096) ; 0 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !701
  %i.v = getelementptr i8, ptr %i.u, i64 -24
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds i8, ptr %1, i64 %i.w
  %i.y = tail call noundef i32 @_ZN7openvdb5v13_02io16getFormatVersionERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.x)
  %i.z = icmp ult i32 %i.y, 222                   ; 2 uses
  br i1 %i.z, label %vector.body, label %bb.d

vector.body:                                      ; preds = %bb.c, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %bb.c ] ; 2 uses
  %vec.phi = phi <2 x i32> [ %i.ag, %vector.body ], [ zeroinitializer, %bb.c ]
  %vec.phi201 = phi <2 x i32> [ %i.ah, %vector.body ], [ zeroinitializer, %bb.c ]
  %i.aa = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.q, i64 %i.aa ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !1070
  %wide.load202 = load <2 x i64>, ptr %i.ab, align 8, !tbaa !1070
  %i.ac = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.ad = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load202)
  %i.ae = trunc nuw nsw <2 x i64> %i.ac to <2 x i32>
  %i.af = trunc nuw nsw <2 x i64> %i.ad to <2 x i32>
  %i.ag = add <2 x i32> %vec.phi, %i.ae           ; 2 uses
  %i.ah = add <2 x i32> %vec.phi201, %i.af        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, 512
  br i1 %i.ai, label %_ZNK7openvdb5v13_04util8NodeMaskILj5EE8countOffEv.exit, label %vector.body, !llvm.loop !8579

_ZNK7openvdb5v13_04util8NodeMaskILj5EE8countOffEv.exit: ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.ah, %i.ag
  %i.aj = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx)
  %i.ak = sub i32 32768, %i.aj
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNK7openvdb5v13_04util8NodeMaskILj5EE8countOffEv.exit
  %i.al = phi i32 [ %i.ak, %_ZNK7openvdb5v13_04util8NodeMaskILj5EE8countOffEv.exit ], [ 32768, %bb.c ] ; 2 uses
  %i.am = zext i32 %i.al to i64
  %i.an = shl nuw nsw i64 %i.am, 3
  %i.ao = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.an) #30 ; 5 uses
  invoke void @_ZN7openvdb5v13_02io20readCompressedValuesIdNS0_4util8NodeMaskILj5EEEEEvRSiPT_jRKT0_b(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.ao, i32 noundef %i.al, ptr noundef nonnull align 8 dereferenceable(4096) %i.s, i1 noundef zeroext %2)
          to label %bb.e unwind label %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit56

end_hunk_2
begin_hunk_3_@_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE4fillERKNS0_4math9CoordBBoxERKdb:bb.a
  %i.y = phi i32 [ %i.ai, %._crit_edge227 ], [ %i.h, %.lr.ph231.split.preheader ] ; 6 uses
  %i.z = phi i32 [ %i.aj, %._crit_edge227 ], [ %i.h, %.lr.ph231.split.preheader ] ; 2 uses
  %i.aa = phi i32 [ %i.ak, %._crit_edge227 ], [ %i.m, %.lr.ph231.split.preheader ] ; 3 uses
  %i.ab = phi i32 [ %i.al, %._crit_edge227 ], [ %i.m, %.lr.ph231.split.preheader ] ; 3 uses
  %i.ac = phi i32 [ %i.am, %._crit_edge227 ], [ %i.h, %.lr.ph231.split.preheader ] ; 2 uses
  %.0230 = phi i32 [ %i.an, %._crit_edge227 ], [ %i.a, %.lr.ph231.split.preheader ] ; 9 uses
  %.sroa.0162.0229 = phi i64 [ %.sroa.0162.1.lcssa, %._crit_edge227 ], [ 0, %.lr.ph231.split.preheader ] ; 4 uses
  %i.ad = load i32, ptr %i.e, align 4, !tbaa !699 ; 2 uses
  %.not42222 = icmp sgt i32 %i.ad, %i.ac
  br i1 %.not42222, label %._crit_edge227, label %.lr.ph226

.lr.ph226:                                        ; preds = %.lr.ph231.split
  %i.ae = and i32 %.0230, -4096                   ; 2 uses
  %i.af = load i32, ptr %i.j, align 4, !tbaa !699
  %i.ag = icmp sgt i32 %i.af, %i.ab
  br i1 %i.ag, label %.lr.ph226.split.us, label %.lr.ph226.split.preheader

.lr.ph226.split.preheader:                        ; preds = %.lr.ph226
  %.sroa.0.0.insert.ext.i12.i.i = zext i32 %.0230 to i64
  br label %.lr.ph226.split

.lr.ph226.split.us:                               ; preds = %.lr.ph226
  %.sroa.0162.4.extract.shift.us = lshr i64 %.sroa.0162.0229, 32
  %.sroa.0162.4.extract.trunc.us = trunc nuw i64 %.sroa.0162.4.extract.shift.us to i32
  %.not42.us.not = icmp sle i32 %i.y, %.sroa.0162.4.extract.trunc.us
  call void @llvm.assume(i1 %.not42.us.not)
  br label %._crit_edge227

._crit_edge227.loopexit:                          ; preds = %bb.c
  %.pre257 = load i32, ptr %i.b, align 4, !tbaa !699
  br label %._crit_edge227

._crit_edge227:                                   ; preds = %.lr.ph226.split.us, %._crit_edge227.loopexit, %.lr.ph231.split
  %i.ah = phi i32 [ %i.x, %.lr.ph231.split ], [ %i.x, %.lr.ph226.split.us ], [ %.pre257, %._crit_edge227.loopexit ] ; 2 uses
  %i.ai = phi i32 [ %i.y, %.lr.ph231.split ], [ %i.y, %.lr.ph226.split.us ], [ %i.at, %._crit_edge227.loopexit ]
  %i.aj = phi i32 [ %i.z, %.lr.ph231.split ], [ %i.y, %.lr.ph226.split.us ], [ %i.au, %._crit_edge227.loopexit ]
  %i.ak = phi i32 [ %i.aa, %.lr.ph231.split ], [ %i.aa, %.lr.ph226.split.us ], [ %i.av, %._crit_edge227.loopexit ]
  %i.al = phi i32 [ %i.ab, %.lr.ph231.split ], [ %i.ab, %.lr.ph226.split.us ], [ %i.av, %._crit_edge227.loopexit ]
  %i.am = phi i32 [ %i.ac, %.lr.ph231.split ], [ %i.y, %.lr.ph226.split.us ], [ %i.au, %._crit_edge227.loopexit ]
  %.sroa.0162.1.lcssa = phi i64 [ %.sroa.0162.0229, %.lr.ph231.split ], [ %.sroa.0162.0229, %.lr.ph226.split.us ], [ %.sroa.0162.2.lcssa, %._crit_edge227.loopexit ] ; 2 uses
  %.sroa.0162.0.extract.trunc = trunc i64 %.sroa.0162.1.lcssa to i32 ; 2 uses
  %i.an = add nsw i32 %.sroa.0162.0.extract.trunc, 1
  %.not.not = icmp sgt i32 %i.ah, %.sroa.0162.0.extract.trunc
  br i1 %.not.not, label %.lr.ph231.split, label %_ZNK7openvdb5v13_04math9CoordBBox5emptyEv.exit.thread, !llvm.loop !8707

.lr.ph226.split:                                  ; preds = %.lr.ph226.split.preheader, %bb.c
  %i.ao = phi i32 [ %i.at, %bb.c ], [ %i.y, %.lr.ph226.split.preheader ]
  %i.ap = phi i32 [ %i.au, %bb.c ], [ %i.z, %.lr.ph226.split.preheader ]
  %i.aq = phi i32 [ %i.av, %bb.c ], [ %i.aa, %.lr.ph226.split.preheader ] ; 3 uses
  %.037224 = phi i32 [ %i.aw, %bb.c ], [ %i.ad, %.lr.ph226.split.preheader ] ; 8 uses
  %.sroa.0162.1223 = phi i64 [ %.sroa.0162.2.lcssa, %bb.c ], [ %.sroa.0162.0229, %.lr.ph226.split.preheader ]
  %i.ar = load i32, ptr %i.j, align 4, !tbaa !699 ; 2 uses
  %.not43217 = icmp sgt i32 %i.ar, %i.aq
  br i1 %.not43217, label %bb.c, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph226.split
  %i.as = and i32 %.037224, -4096                 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %bb.dk
  %.sroa.2.0.insert.ext.i.i.le = zext i32 %i.bi to i64
  %.sroa.2.0.insert.shift.i.i.le = shl nuw i64 %.sroa.2.0.insert.ext.i.i.le, 32
  %.sroa.0.0.insert.ext.i.i.le = zext i32 %i.bh to i64
  %.sroa.0.0.insert.insert.i.i.le = or disjoint i64 %.sroa.2.0.insert.shift.i.i.le, %.sroa.0.0.insert.ext.i.i.le
  %.pre = load i32, ptr %i.g, align 4, !tbaa !699 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %.lr.ph226.split
  %i.at = phi i32 [ %.pre, %._crit_edge ], [ %i.ao, %.lr.ph226.split ] ; 2 uses
  %i.au = phi i32 [ %.pre, %._crit_edge ], [ %i.ap, %.lr.ph226.split ] ; 4 uses
  %i.av = phi i32 [ %i.rf, %._crit_edge ], [ %i.aq, %.lr.ph226.split ] ; 3 uses
  %.sroa.0162.2.lcssa = phi i64 [ %.sroa.0.0.insert.insert.i.i.le, %._crit_edge ], [ %.sroa.0162.1223, %.lr.ph226.split ] ; 3 uses
  %.sroa.0162.4.extract.shift = lshr i64 %.sroa.0162.2.lcssa, 32
  %.sroa.0162.4.extract.trunc = trunc nuw i64 %.sroa.0162.4.extract.shift to i32 ; 2 uses
  %i.aw = add nsw i32 %.sroa.0162.4.extract.trunc, 1
  %.not42.not = icmp sgt i32 %i.au, %.sroa.0162.4.extract.trunc
  br i1 %.not42.not, label %.lr.ph226.split, label %._crit_edge227.loopexit, !llvm.loop !8708

bb.d:                                             ; preds = %.lr.ph, %bb.dk
  %i.ax = phi i32 [ %i.aq, %.lr.ph ], [ %i.rf, %bb.dk ]
  %.038218 = phi i32 [ %i.ar, %.lr.ph ], [ %i.re, %bb.dk ] ; 8 uses
  %i.ay = load i32, ptr %i.o, align 8, !tbaa !699
  %i.az = sub nsw i32 %.0230, %i.ay               ; 2 uses
  %i.ba = load i32, ptr %i.p, align 4, !tbaa !699
  %i.bb = sub nsw i32 %.037224, %i.ba             ; 2 uses
  %i.bc = load i32, ptr %i.q, align 8, !tbaa !699
  %i.bd = sub nsw i32 %.038218, %i.bc             ; 2 uses
  %i.be = and i32 %i.az, -4096                    ; 10 uses
  %i.bf = and i32 %i.bb, -4096                    ; 10 uses
  %i.bg = and i32 %i.bd, -4096                    ; 6 uses
  %.sroa.2.0.insert.ext.i10.i = zext i32 %i.bf to i64
  %.sroa.2.0.insert.shift.i11.i = shl nuw i64 %.sroa.2.0.insert.ext.i10.i, 32 ; 2 uses
  %i.bh = or i32 %i.az, 4095                      ; 3 uses
  %i.bi = or i32 %i.bb, 4095                      ; 3 uses
  %i.bj = or i32 %i.bd, 4095                      ; 4 uses
  %i.bk = icmp ne i32 %.0230, %i.be
  %i.bl = icmp ne i32 %.037224, %i.bf
  %or.cond.not193 = or i1 %i.bk, %i.bl
  %i.bm = icmp ne i32 %.038218, %i.bg
  %or.cond188 = select i1 %or.cond.not193, i1 true, i1 %i.bm
  br i1 %or.cond188, label %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bn = load i32, ptr %i.b, align 4, !tbaa !699
  %i.bo = icmp slt i32 %i.bn, %i.bh
  br i1 %i.bo, label %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bp = load i32, ptr %i.g, align 4, !tbaa !699
  %i.bq = icmp slt i32 %i.bp, %i.bi
  %i.br = icmp slt i32 %i.ax, %i.bj
  %or.cond189 = select i1 %i.bq, i1 true, i1 %i.br
  br i1 %or.cond189, label %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread, label %bb.bm

_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread: ; preds = %bb.e, %bb.f, %bb.d
  %i.bs = load ptr, ptr %i.s, align 8, !tbaa !771 ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not12.i.i.i.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.bs, %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.t, %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !699 ; 2 uses
  %i.bv = icmp slt i32 %i.bu, %i.be
  br i1 %i.bv, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bw = icmp sgt i32 %i.bu, %i.be
  br i1 %i.bw, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bx = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !699 ; 2 uses
  %i.bz = icmp slt i32 %i.by, %i.bf
  br i1 %i.bz, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ca = icmp sgt i32 %i.by, %i.bf
  br i1 %i.ca, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 40
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !699
  %i.cd = icmp slt i32 %i.cc, %i.bg
  br i1 %i.cd, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.h, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.i, %bb.g
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ 16, %bb.i ], [ 16, %bb.g ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.i ], [ %.014.i.i.i.i, %bb.g ], [ %.014.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ] ; 8 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.ce, align 8, !tbaa !860 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !44

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %i.cf = icmp eq ptr %.19.i.i.i.i, %i.t
  br i1 %i.cf, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !699 ; 2 uses
  %i.ci = icmp slt i32 %i.be, %i.ch
  br i1 %i.ci, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cj = icmp sgt i32 %i.be, %i.ch
  br i1 %i.cj, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ck = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !699 ; 2 uses
  %i.cm = icmp slt i32 %i.bf, %i.cl
  br i1 %i.cm, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cn = icmp sgt i32 %i.bf, %i.cl
  br i1 %i.cn, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i: ; preds = %bb.m
  %i.co = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !699
  %i.cq = icmp slt i32 %i.bg, %i.cp
  br i1 %i.cq, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread: ; preds = %bb.l, %bb.j, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread
  %i.cr = call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #30 ; 15 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 270336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.cr, i8 0, i64 270336, i1 false)
  %i.ct = and i32 %.038218, -4096
  store i32 %i.ae, ptr %i.cs, align 8, !tbaa !699
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 270340
  store i32 %i.as, ptr %i.cu, align 4, !tbaa !699
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 270344
  store i32 %i.ct, ptr %i.cv, align 8, !tbaa !699
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 270348
  store i32 0, ptr %i.cw, align 4, !tbaa !3096
  %5 = load <1 x double>, ptr %i.r, align 8
  %broadcast.splat = shufflevector <1 x double> %5, <1 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread
  %index = phi i64 [ 0, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store <2 x double> %broadcast.splat, ptr %i.cx, align 8, !tbaa !726
  store <2 x double> %broadcast.splat, ptr %i.cy, align 8, !tbaa !726
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 48
  store <2 x double> %broadcast.splat, ptr %i.da, align 8, !tbaa !726
  store <2 x double> %broadcast.splat, ptr %i.db, align 8, !tbaa !726
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 64
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 80
  store <2 x double> %broadcast.splat, ptr %i.dd, align 8, !tbaa !726
  store <2 x double> %broadcast.splat, ptr %i.de, align 8, !tbaa !726
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 96
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 112
  store <2 x double> %broadcast.splat, ptr %i.dg, align 8, !tbaa !726
  store <2 x double> %broadcast.splat, ptr %i.dh, align 8, !tbaa !726
  %index.next.3 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.di = icmp eq i64 %index.next.3, 32768
  br i1 %i.di, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit, label %vector.body, !llvm.loop !8709

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit: ; preds = %vector.body
  %i.dj = load ptr, ptr %i.s, align 8, !tbaa !771 ; 2 uses
  %.not12.i.i.i.i46 = icmp eq ptr %i.dj, null
  br i1 %.not12.i.i.i.i46, label %.critedge.i, label %.lr.ph.i.i.i.i47

.lr.ph.i.i.i.i47:                                 ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51
  %.014.i.i.i.i48 = phi ptr [ %.1.i.i.i.i54, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51 ], [ %i.dj, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ] ; 7 uses
  %.0813.i.i.i.i49 = phi ptr [ %.19.i.i.i.i53, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51 ], [ %i.t, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i48, i64 32
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !699 ; 2 uses
  %i.dm = icmp slt i32 %i.dl, %i.be
  br i1 %i.dm, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i56, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i47
  %i.dn = icmp sgt i32 %i.dl, %i.be
  br i1 %i.dn, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.do = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i48, i64 36
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !699 ; 2 uses
  %i.dq = icmp slt i32 %i.dp, %i.bf
  br i1 %i.dq, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i56, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dr = icmp sgt i32 %i.dp, %i.bf
  br i1 %i.dr, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i50

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i50: ; preds = %bb.p
  %i.ds = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i48, i64 40
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !699
  %i.du = icmp slt i32 %i.dt, %i.bg
  br i1 %i.du, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i56, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i56: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i50, %bb.o, %.lr.ph.i.i.i.i47
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i56, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i50, %bb.p, %bb.n
  %.sink.i.i.i.i52 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i56 ], [ 16, %bb.p ], [ 16, %bb.n ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i50 ]
  %.19.i.i.i.i53 = phi ptr [ %.0813.i.i.i.i49, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i56 ], [ %.014.i.i.i.i48, %bb.p ], [ %.014.i.i.i.i48, %bb.n ], [ %.014.i.i.i.i48, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i50 ] ; 9 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i48, i64 %.sink.i.i.i.i52
  %.1.i.i.i.i54 = load ptr, ptr %i.dv, align 8, !tbaa !860 ; 2 uses
  %.not.i.i.i.i55 = icmp eq ptr %.1.i.i.i.i54, null
  br i1 %.not.i.i.i.i55, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, label %.lr.ph.i.i.i.i47, !llvm.loop !44

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51
  %i.dw = icmp eq ptr %.19.i.i.i.i53, %i.t
  br i1 %i.dw, label %.critedge.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i
  %i.dx = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i53, i64 32
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !699 ; 2 uses
  %i.dz = icmp slt i32 %i.be, %i.dy
  br i1 %i.dz, label %.critedge.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ea = icmp sgt i32 %i.be, %i.dy
  br i1 %i.ea, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eb = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i53, i64 36
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !699 ; 2 uses
  %i.ed = icmp slt i32 %i.bf, %i.ec
  br i1 %i.ed, label %.critedge.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ee = icmp sgt i32 %i.bf, %i.ec
  br i1 %i.ee, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i: ; preds = %bb.t
  %i.ef = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i53, i64 40
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !699
  %i.eh = icmp slt i32 %i.bg, %i.eg
  br i1 %i.eh, label %.critedge.i, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

.critedge.i:                                      ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.s, %bb.q, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit
  %.08.lcssa.i.i.i20.i = phi ptr [ %i.t, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ], [ %.19.i.i.i.i53, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %.19.i.i.i.i53, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i ], [ %.19.i.i.i.i53, %bb.q ], [ %.19.i.i.i.i53, %bb.s ]
  %i.ei = call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #30 ; 9 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 32 ; 3 uses
  %.sroa.0145.sroa.0.0.insert.ext = zext i32 %i.be to i64
  %.sroa.0145.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift.i11.i, %.sroa.0145.sroa.0.0.insert.ext
  store i64 %.sroa.0145.sroa.0.0.insert.insert, ptr %i.ej, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 40 ; 2 uses
  store i32 %i.bg, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !726
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 48
  store ptr %i.cr, ptr %i.ek, align 8, !tbaa !922
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 56
  store double 0.000000e+00, ptr %i.el, align 8, !tbaa !1160
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 64
  store i8 0, ptr %i.em, align 8, !tbaa !1161
  %i.en = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISF_ERS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i20.i, ptr noundef nonnull align 4 dereferenceable(12) %i.ej)
          to label %bb.u unwind label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.u:                                             ; preds = %.critedge.i
  %i.eo = extractvalue { ptr, ptr } %i.en, 1      ; 6 uses
  %.not.i = icmp eq ptr %i.eo, null
  br i1 %.not.i, label %bb.ab, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ep = extractvalue { ptr, ptr } %i.en, 0
  %.not.i.i.i = icmp ne ptr %i.ep, null
  %i.eq = icmp eq ptr %i.eo, %i.t
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 true, i1 %i.eq
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  %i.es = load i32, ptr %i.ej, align 8, !tbaa !699 ; 2 uses
  %i.et = load i32, ptr %i.er, align 4, !tbaa !699 ; 2 uses
  %i.eu = icmp slt i32 %i.es, %i.et
  br i1 %i.eu, label %.thread.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ev = icmp sgt i32 %i.es, %i.et
  br i1 %i.ev, label %.thread.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ei, i64 36
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !699 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eo, i64 36
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !699 ; 2 uses
  %i.fa = icmp slt i32 %i.ex, %i.ez
  br i1 %i.fa, label %.thread.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fb = icmp sgt i32 %i.ex, %i.ez
  br i1 %i.fb, label %.thread.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fc = load i32, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !699
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !699
  %i.ff = icmp slt i32 %i.fc, %i.fe
  br label %.thread.i

.thread.i:                                        ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v
  %i.fg = phi i1 [ false, %bb.z ], [ true, %bb.v ], [ true, %bb.w ], [ false, %bb.x ], [ true, %bb.y ], [ %i.ff, %bb.aa ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.fg, ptr noundef nonnull %i.ei, ptr noundef nonnull %i.eo, ptr noundef nonnull align 8 dereferenceable(32) %i.t) #23
  %i.fh = load i64, ptr %i.u, align 8, !tbaa !774
  %i.fi = add i64 %i.fh, 1
  store i64 %i.fi, ptr %i.u, align 8, !tbaa !774
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

common.resume:                                    ; preds = %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit.i65, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit.i
  %.lcssa353.sink = phi ptr [ %i.lt, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit.i65 ], [ %i.ei, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit.i ]
  %common.resume.op = phi { ptr, i32 } [ %i.mu, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit.i65 ], [ %i.fj, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit.i ]
  call void @_ZdlPvm(ptr noundef nonnull %.lcssa353.sink, i64 noundef 72) #31
  resume { ptr, i32 } %common.resume.op

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.critedge.i
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.ab:                                            ; preds = %bb.u
  call void @_ZdlPvm(ptr noundef nonnull %i.ei, i64 noundef 72) #31
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit: ; preds = %bb.m, %bb.k, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i
  %i.fk = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 48 ; 3 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !922 ; 2 uses
  %i.fm = icmp eq ptr %i.fl, null
  br i1 %i.fm, label %bb.ac, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

bb.ac:                                            ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit
  %i.fn = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 56
  %i.fo = call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #30 ; 12 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 64
  %i.fq = load i8, ptr %i.fp, align 8, !tbaa !1161, !range !746, !noundef !747
  %i.fr = trunc nuw i8 %i.fq to i1
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 270336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.fo, i8 0, i64 270336, i1 false)
  %i.ft = and i32 %.038218, -4096
  store i32 %i.ae, ptr %i.fs, align 8, !tbaa !699
end_hunk_3
begin_hunk_4_@_ZN7openvdb5v13_05tools6lvlset16CapsuleVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE14setXYRangeDataERKj:bb.a

bb.t:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i43
  %i.jc = load double, ptr %i.hc, align 8, !tbaa !8970
  %i.jd = load double, ptr %i.hh, align 8, !tbaa !3672
  %i.je = fsub double %storemerge196, %i.jd
  %i.jf = fmul double %i.jc, %i.je
  %i.jg = fadd double %i.jf, 5.000000e-01
  %i.jh = tail call noundef double @llvm.floor.f64(double %i.jg)
  %i.ji = fptoui double %i.jh to i32
  %i.jj = zext i32 %i.ji to i64
  %i.jk = load ptr, ptr %i.ht, align 8, !tbaa !3624
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.jk, i64 %i.jj ; 2 uses
  %i.jm = load double, ptr %i.jl, align 8, !tbaa !1150
  %i.jn = fcmp ogt double %i.il, %i.jm
  br i1 %i.jn, label %bb.u, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit44

bb.u:                                             ; preds = %bb.t
  store double %i.il, ptr %i.jl, align 8, !tbaa !1150
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit44

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit44: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i43, %bb.t, %bb.u
  %i.jo = fadd double %storemerge196, %i.b        ; 2 uses
  %i.jp = fcmp ugt double %i.jo, %i.et
  br i1 %i.jp, label %._crit_edge, label %bb.q, !llvm.loop !8961

bb.v:                                             ; preds = %._crit_edge
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 3 uses
  %i.jr = load double, ptr %i.jq, align 8, !tbaa !3636
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.jt = load double, ptr %i.js, align 8, !tbaa !3637
  %i.ju = fcmp ogt double %i.jr, %i.jt
  %i.jv = fcmp olt double %i.ev, %i.eu
  %.sroa.speculated153 = select i1 %i.jv, double %i.ev, double %i.eu ; 3 uses
  %i.jw = extractelement <4 x double> %i.hg, i64 1 ; 3 uses
  %i.jx = fcmp ugt double %i.jw, %.sroa.speculated153 ; 2 uses
  br i1 %i.ju, label %.preheader192, label %.preheader194

.preheader194:                                    ; preds = %bb.v
  br i1 %i.jx, label %.loopexit193, label %.lr.ph198

.preheader192:                                    ; preds = %bb.v
  br i1 %i.jx, label %.loopexit193, label %.lr.ph200

.lr.ph200:                                        ; preds = %.preheader192, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit47
  %storemerge29199 = phi double [ %i.lr, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit47 ], [ %i.jw, %.preheader192 ] ; 4 uses
  %i.jy = load double, ptr %i.jq, align 8, !tbaa !3636 ; 2 uses
  %i.jz = load double, ptr %i.el, align 8, !tbaa !3639
  %i.ka = load double, ptr %i.c, align 8, !tbaa !3631
  %i.kb = fsub double %storemerge29199, %i.ka     ; 3 uses
  %i.kc = load double, ptr %i.e, align 8, !tbaa !3635 ; 3 uses
  %i.kd = load double, ptr %i.ep, align 8, !tbaa !3640
  %i.ke = fneg double %i.kd
  %i.kf = fmul double %i.kc, %i.ke
  %i.kg = tail call double @llvm.fmuladd.f64(double %i.jz, double %i.kb, double %i.kf)
  %i.kh = load double, ptr %i.hy, align 8, !tbaa !3638
  %i.ki = fdiv double %i.kg, %i.kh
  %i.kj = fadd double %i.jy, %i.ki                ; 3 uses
  %i.kk = fmul double %i.kc, %i.kc
  %i.kl = fmul double %i.kb, %i.kb
  %i.km = fsub double %i.kk, %i.kl
  %i.kn = tail call noundef double @sqrt(double noundef %i.km) #23
  %i.ko = fadd double %i.jy, %i.kn                ; 3 uses
  %i.kp = tail call double @llvm.fabs.f64(double %i.kj)
  %i.kq = fcmp ueq double %i.kp, +inf
  br i1 %i.kq, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i46, label %bb.w

bb.w:                                             ; preds = %.lr.ph200
  %i.kr = load double, ptr %i.hc, align 8, !tbaa !8970
  %i.ks = load double, ptr %i.hh, align 8, !tbaa !3672
  %i.kt = fsub double %storemerge29199, %i.ks
  %i.ku = fmul double %i.kr, %i.kt
  %i.kv = fadd double %i.ku, 5.000000e-01
  %i.kw = tail call noundef double @llvm.floor.f64(double %i.kv)
  %i.kx = fptoui double %i.kw to i32
  %i.ky = zext i32 %i.kx to i64
  %i.kz = load ptr, ptr %i.hr, align 8, !tbaa !3624
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %i.ky ; 2 uses
  %i.lb = load double, ptr %i.la, align 8, !tbaa !1150
  %i.lc = fcmp olt double %i.kj, %i.lb
  br i1 %i.lc, label %bb.x, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i46

bb.x:                                             ; preds = %bb.w
  store double %i.kj, ptr %i.la, align 8, !tbaa !1150
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i46

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i46: ; preds = %bb.x, %bb.w, %.lr.ph200
  %i.ld = tail call double @llvm.fabs.f64(double %i.ko)
  %i.le = fcmp ueq double %i.ld, +inf
  br i1 %i.le, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit47, label %bb.y

bb.y:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i46
  %i.lf = load double, ptr %i.hc, align 8, !tbaa !8970
  %i.lg = load double, ptr %i.hh, align 8, !tbaa !3672
  %i.lh = fsub double %storemerge29199, %i.lg
  %i.li = fmul double %i.lf, %i.lh
  %i.lj = fadd double %i.li, 5.000000e-01
  %i.lk = tail call noundef double @llvm.floor.f64(double %i.lj)
  %i.ll = fptoui double %i.lk to i32
  %i.lm = zext i32 %i.ll to i64
  %i.ln = load ptr, ptr %i.ht, align 8, !tbaa !3624
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %i.lm ; 2 uses
  %i.lp = load double, ptr %i.lo, align 8, !tbaa !1150
  %i.lq = fcmp ogt double %i.ko, %i.lp
  br i1 %i.lq, label %bb.z, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit47

bb.z:                                             ; preds = %bb.y
  store double %i.ko, ptr %i.lo, align 8, !tbaa !1150
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit47

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit47: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i46, %bb.y, %bb.z
  %i.lr = fadd double %storemerge29199, %i.b      ; 2 uses
  %i.ls = fcmp ugt double %i.lr, %.sroa.speculated153
  br i1 %i.ls, label %.loopexit193, label %.lr.ph200, !llvm.loop !8962

.lr.ph198:                                        ; preds = %.preheader194, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit50
  %storemerge28197 = phi double [ %i.nl, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit50 ], [ %i.jw, %.preheader194 ] ; 4 uses
  %i.lt = load double, ptr %i.jq, align 8, !tbaa !1150 ; 2 uses
  %i.lu = load double, ptr %i.e, align 8, !tbaa !1150 ; 3 uses
  %i.lv = fmul double %i.lu, %i.lu
  %i.lw = load double, ptr %i.c, align 8, !tbaa !1150
  %i.lx = fsub double %storemerge28197, %i.lw     ; 3 uses
  %i.ly = fmul double %i.lx, %i.lx
  %i.lz = fsub double %i.lv, %i.ly
  %i.ma = tail call noundef double @sqrt(double noundef %i.lz) #23
  %i.mb = fsub double %i.lt, %i.ma                ; 3 uses
  %i.mc = load double, ptr %i.el, align 8, !tbaa !3639
  %i.md = load double, ptr %i.ep, align 8, !tbaa !3640
  %i.me = fmul double %i.lu, %i.md
  %i.mf = tail call double @llvm.fmuladd.f64(double %i.mc, double %i.lx, double %i.me)
  %i.mg = load double, ptr %i.hy, align 8, !tbaa !3638
  %i.mh = fdiv double %i.mf, %i.mg
  %i.mi = fadd double %i.lt, %i.mh                ; 3 uses
  %i.mj = tail call double @llvm.fabs.f64(double %i.mb)
  %i.mk = fcmp ueq double %i.mj, +inf
  br i1 %i.mk, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i49, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph198
  %i.ml = load double, ptr %i.hc, align 8, !tbaa !8970
  %i.mm = load double, ptr %i.hh, align 8, !tbaa !3672
  %i.mn = fsub double %storemerge28197, %i.mm
  %i.mo = fmul double %i.ml, %i.mn
  %i.mp = fadd double %i.mo, 5.000000e-01
  %i.mq = tail call noundef double @llvm.floor.f64(double %i.mp)
  %i.mr = fptoui double %i.mq to i32
  %i.ms = zext i32 %i.mr to i64
  %i.mt = load ptr, ptr %i.hr, align 8, !tbaa !3624
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.mt, i64 %i.ms ; 2 uses
  %i.mv = load double, ptr %i.mu, align 8, !tbaa !1150
  %i.mw = fcmp olt double %i.mb, %i.mv
  br i1 %i.mw, label %bb.ab, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i49

bb.ab:                                            ; preds = %bb.aa
  store double %i.mb, ptr %i.mu, align 8, !tbaa !1150
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i49

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i49: ; preds = %bb.ab, %bb.aa, %.lr.ph198
  %i.mx = tail call double @llvm.fabs.f64(double %i.mi)
  %i.my = fcmp ueq double %i.mx, +inf
  br i1 %i.my, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit50, label %bb.ac

bb.ac:                                            ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i49
  %i.mz = load double, ptr %i.hc, align 8, !tbaa !8970
  %i.na = load double, ptr %i.hh, align 8, !tbaa !3672
  %i.nb = fsub double %storemerge28197, %i.na
  %i.nc = fmul double %i.mz, %i.nb
  %i.nd = fadd double %i.nc, 5.000000e-01
  %i.ne = tail call noundef double @llvm.floor.f64(double %i.nd)
  %i.nf = fptoui double %i.ne to i32
  %i.ng = zext i32 %i.nf to i64
  %i.nh = load ptr, ptr %i.ht, align 8, !tbaa !3624
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %i.nh, i64 %i.ng ; 2 uses
  %i.nj = load double, ptr %i.ni, align 8, !tbaa !1150
  %i.nk = fcmp ogt double %i.mi, %i.nj
  br i1 %i.nk, label %bb.ad, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit50

bb.ad:                                            ; preds = %bb.ac
  store double %i.mi, ptr %i.ni, align 8, !tbaa !1150
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit50

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit50: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i49, %bb.ac, %bb.ad
  %i.nl = fadd double %storemerge28197, %i.b      ; 2 uses
  %i.nm = fcmp ugt double %i.nl, %.sroa.speculated153
  br i1 %i.nm, label %.loopexit193, label %.lr.ph198, !llvm.loop !8963

.loopexit193:                                     ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit50, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit47, %.preheader194, %.preheader192, %._crit_edge
  %i.nn = fcmp olt double %i.eu, %i.ev
  br i1 %i.nn, label %.preheader, label %bb.aj

.preheader:                                       ; preds = %.loopexit193
  %i.no = extractelement <4 x double> %i.hg, i64 2 ; 2 uses
  %i.np = fcmp ugt double %i.no, %i.ev
  br i1 %i.np, label %.loopexit187, label %.lr.ph206

.lr.ph206:                                        ; preds = %.preheader
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 472
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph206, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit52
  %storemerge32205 = phi double [ %i.no, %.lr.ph206 ], [ %i.pm, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit52 ] ; 4 uses
  %i.nr = load double, ptr %i.nq, align 8, !tbaa !3636 ; 2 uses
  %2 = load <1 x double>, ptr %i.el, align 8
  %i.ns = load double, ptr %i.c, align 8, !tbaa !3631
  %i.nt = fsub double %storemerge32205, %i.ns
  %3 = load <1 x double>, ptr %i.e, align 8
  %i.nu = load double, ptr %i.ep, align 8, !tbaa !3640 ; 2 uses
  %i.nv = fneg double %i.nu
  %4 = load <1 x double>, ptr %i.hy, align 8
  %i.nw = shufflevector <1 x double> %3, <1 x double> poison, <2 x i32> zeroinitializer
  %i.nx = insertelement <2 x double> poison, double %i.nv, i64 0
  %i.ny = insertelement <2 x double> %i.nx, double %i.nu, i64 1
  %i.nz = fmul <2 x double> %i.nw, %i.ny
  %i.oa = shufflevector <1 x double> %2, <1 x double> poison, <2 x i32> zeroinitializer
  %i.ob = insertelement <2 x double> poison, double %i.nt, i64 0
  %i.oc = shufflevector <2 x double> %i.ob, <2 x double> poison, <2 x i32> zeroinitializer
  %i.od = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oa, <2 x double> %i.oc, <2 x double> %i.nz)
  %i.oe = shufflevector <1 x double> %4, <1 x double> poison, <2 x i32> zeroinitializer
  %i.of = fdiv <2 x double> %i.od, %i.oe          ; 2 uses
  %i.og = extractelement <2 x double> %i.of, i64 0
  %i.oh = fadd double %i.nr, %i.og                ; 3 uses
  %i.oi = extractelement <2 x double> %i.of, i64 1
  %i.oj = fadd double %i.nr, %i.oi                ; 3 uses
  %i.ok = tail call double @llvm.fabs.f64(double %i.oh)
  %i.ol = fcmp ueq double %i.ok, +inf
  br i1 %i.ol, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i51, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.om = load double, ptr %i.hc, align 8, !tbaa !8970
  %i.on = load double, ptr %i.hh, align 8, !tbaa !3672
  %i.oo = fsub double %storemerge32205, %i.on
  %i.op = fmul double %i.om, %i.oo
  %i.oq = fadd double %i.op, 5.000000e-01
  %i.or = tail call noundef double @llvm.floor.f64(double %i.oq)
  %i.os = fptoui double %i.or to i32
  %i.ot = zext i32 %i.os to i64
  %i.ou = load ptr, ptr %i.hr, align 8, !tbaa !3624
  %i.ov = getelementptr inbounds nuw [8 x i8], ptr %i.ou, i64 %i.ot ; 2 uses
  %i.ow = load double, ptr %i.ov, align 8, !tbaa !1150
  %i.ox = fcmp olt double %i.oh, %i.ow
  br i1 %i.ox, label %bb.ag, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i51

bb.ag:                                            ; preds = %bb.af
  store double %i.oh, ptr %i.ov, align 8, !tbaa !1150
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i51

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i51: ; preds = %bb.ag, %bb.af, %bb.ae
  %i.oy = tail call double @llvm.fabs.f64(double %i.oj)
  %i.oz = fcmp ueq double %i.oy, +inf
  br i1 %i.oz, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit52, label %bb.ah

bb.ah:                                            ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i51
  %i.pa = load double, ptr %i.hc, align 8, !tbaa !8970
  %i.pb = load double, ptr %i.hh, align 8, !tbaa !3672
  %i.pc = fsub double %storemerge32205, %i.pb
  %i.pd = fmul double %i.pa, %i.pc
  %i.pe = fadd double %i.pd, 5.000000e-01
  %i.pf = tail call noundef double @llvm.floor.f64(double %i.pe)
  %i.pg = fptoui double %i.pf to i32
  %i.ph = zext i32 %i.pg to i64
  %i.pi = load ptr, ptr %i.ht, align 8, !tbaa !3624
  %i.pj = getelementptr inbounds nuw [8 x i8], ptr %i.pi, i64 %i.ph ; 2 uses
  %i.pk = load double, ptr %i.pj, align 8, !tbaa !1150
  %i.pl = fcmp ogt double %i.oj, %i.pk
  br i1 %i.pl, label %bb.ai, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit52

bb.ai:                                            ; preds = %bb.ah
  store double %i.oj, ptr %i.pj, align 8, !tbaa !1150
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit52

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit52: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i51, %bb.ah, %bb.ai
  %i.pm = fadd double %storemerge32205, %i.b      ; 2 uses
  %i.pn = fcmp ugt double %i.pm, %i.ev
  br i1 %i.pn, label %.loopexit187, label %bb.ae, !llvm.loop !8964

bb.aj:                                            ; preds = %.loopexit193
  %i.po = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 3 uses
  %i.pp = load double, ptr %i.po, align 8, !tbaa !3637
  %i.pq = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 3 uses
  %i.pr = load double, ptr %i.pq, align 8, !tbaa !3636
  %i.ps = fcmp ugt double %i.pp, %i.pr
  %i.pt = extractelement <4 x double> %i.hg, i64 3 ; 3 uses
  %i.pu = fcmp ugt double %i.pt, %i.eu            ; 2 uses
  br i1 %i.ps, label %.preheader188, label %.preheader190

.preheader190:                                    ; preds = %bb.aj
  br i1 %i.pu, label %.loopexit187, label %.lr.ph202

.preheader188:                                    ; preds = %bb.aj
  br i1 %i.pu, label %.loopexit187, label %.lr.ph204

.lr.ph202:                                        ; preds = %.preheader190, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit54
  %storemerge31201 = phi double [ %i.rn, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit54 ], [ %i.pt, %.preheader190 ] ; 5 uses
  %i.pv = load double, ptr %i.po, align 8, !tbaa !1150
  %i.pw = load double, ptr %i.e, align 8, !tbaa !1150 ; 2 uses
  %i.px = fmul double %i.pw, %i.pw                ; 2 uses
  %i.py = load double, ptr %i.h, align 8, !tbaa !1150
  %i.pz = fsub double %storemerge31201, %i.py     ; 2 uses
  %i.qa = fmul double %i.pz, %i.pz
  %i.qb = fsub double %i.px, %i.qa
  %i.qc = tail call noundef double @sqrt(double noundef %i.qb) #23
  %i.qd = fsub double %i.pv, %i.qc                ; 3 uses
  %i.qe = load double, ptr %i.pq, align 8, !tbaa !1150
  %i.qf = load double, ptr %i.c, align 8, !tbaa !1150
  %i.qg = fsub double %storemerge31201, %i.qf     ; 2 uses
  %i.qh = fmul double %i.qg, %i.qg
  %i.qi = fsub double %i.px, %i.qh
  %i.qj = tail call noundef double @sqrt(double noundef %i.qi) #23
  %i.qk = fadd double %i.qe, %i.qj                ; 3 uses
  %i.ql = tail call double @llvm.fabs.f64(double %i.qd)
  %i.qm = fcmp ueq double %i.ql, +inf
  br i1 %i.qm, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i53, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph202
  %i.qn = load double, ptr %i.hc, align 8, !tbaa !8970
  %i.qo = load double, ptr %i.hh, align 8, !tbaa !3672
  %i.qp = fsub double %storemerge31201, %i.qo
  %i.qq = fmul double %i.qn, %i.qp
  %i.qr = fadd double %i.qq, 5.000000e-01
  %i.qs = tail call noundef double @llvm.floor.f64(double %i.qr)
  %i.qt = fptoui double %i.qs to i32
  %i.qu = zext i32 %i.qt to i64
  %i.qv = load ptr, ptr %i.hr, align 8, !tbaa !3624
  %i.qw = getelementptr inbounds nuw [8 x i8], ptr %i.qv, i64 %i.qu ; 2 uses
  %i.qx = load double, ptr %i.qw, align 8, !tbaa !1150
  %i.qy = fcmp olt double %i.qd, %i.qx
  br i1 %i.qy, label %bb.al, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i53

bb.al:                                            ; preds = %bb.ak
  store double %i.qd, ptr %i.qw, align 8, !tbaa !1150
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i53

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i53: ; preds = %bb.al, %bb.ak, %.lr.ph202
  %i.qz = tail call double @llvm.fabs.f64(double %i.qk)
  %i.ra = fcmp ueq double %i.qz, +inf
  br i1 %i.ra, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit54, label %bb.am

bb.am:                                            ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i53
  %i.rb = load double, ptr %i.hc, align 8, !tbaa !8970
  %i.rc = load double, ptr %i.hh, align 8, !tbaa !3672
  %i.rd = fsub double %storemerge31201, %i.rc
  %i.re = fmul double %i.rb, %i.rd
  %i.rf = fadd double %i.re, 5.000000e-01
  %i.rg = tail call noundef double @llvm.floor.f64(double %i.rf)
  %i.rh = fptoui double %i.rg to i32
  %i.ri = zext i32 %i.rh to i64
  %i.rj = load ptr, ptr %i.ht, align 8, !tbaa !3624
  %i.rk = getelementptr inbounds nuw [8 x i8], ptr %i.rj, i64 %i.ri ; 2 uses
  %i.rl = load double, ptr %i.rk, align 8, !tbaa !1150
  %i.rm = fcmp ogt double %i.qk, %i.rl
  br i1 %i.rm, label %bb.an, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit54

bb.an:                                            ; preds = %bb.am
  store double %i.qk, ptr %i.rk, align 8, !tbaa !1150
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit54

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit54: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i53, %bb.am, %bb.an
  %i.rn = fadd double %storemerge31201, %i.b      ; 2 uses
  %i.ro = fcmp ugt double %i.rn, %i.eu
  br i1 %i.ro, label %.loopexit187, label %.lr.ph202, !llvm.loop !8965

.lr.ph204:                                        ; preds = %.preheader188, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit56
  %storemerge30203 = phi double [ %i.th, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit56 ], [ %i.pt, %.preheader188 ] ; 5 uses
  %i.rp = load double, ptr %i.pq, align 8, !tbaa !1150
  %i.rq = load double, ptr %i.e, align 8, !tbaa !1150 ; 2 uses
  %i.rr = fmul double %i.rq, %i.rq                ; 2 uses
  %i.rs = load double, ptr %i.c, align 8, !tbaa !1150
  %i.rt = fsub double %storemerge30203, %i.rs     ; 2 uses
  %i.ru = fmul double %i.rt, %i.rt
  %i.rv = fsub double %i.rr, %i.ru
  %i.rw = tail call noundef double @sqrt(double noundef %i.rv) #23
  %i.rx = fsub double %i.rp, %i.rw                ; 3 uses
  %i.ry = load double, ptr %i.po, align 8, !tbaa !1150
  %i.rz = load double, ptr %i.h, align 8, !tbaa !1150
  %i.sa = fsub double %storemerge30203, %i.rz     ; 2 uses
  %i.sb = fmul double %i.sa, %i.sa
  %i.sc = fsub double %i.rr, %i.sb
  %i.sd = tail call noundef double @sqrt(double noundef %i.sc) #23
  %i.se = fadd double %i.ry, %i.sd                ; 3 uses
  %i.sf = tail call double @llvm.fabs.f64(double %i.rx)
  %i.sg = fcmp ueq double %i.sf, +inf
  br i1 %i.sg, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i55, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph204
  %i.sh = load double, ptr %i.hc, align 8, !tbaa !8970
  %i.si = load double, ptr %i.hh, align 8, !tbaa !3672
  %i.sj = fsub double %storemerge30203, %i.si
  %i.sk = fmul double %i.sh, %i.sj
  %i.sl = fadd double %i.sk, 5.000000e-01
  %i.sm = tail call noundef double @llvm.floor.f64(double %i.sl)
  %i.sn = fptoui double %i.sm to i32
  %i.so = zext i32 %i.sn to i64
  %i.sp = load ptr, ptr %i.hr, align 8, !tbaa !3624
  %i.sq = getelementptr inbounds nuw [8 x i8], ptr %i.sp, i64 %i.so ; 2 uses
  %i.sr = load double, ptr %i.sq, align 8, !tbaa !1150
  %i.ss = fcmp olt double %i.rx, %i.sr
  br i1 %i.ss, label %bb.ap, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i55

bb.ap:                                            ; preds = %bb.ao
  store double %i.rx, ptr %i.sq, align 8, !tbaa !1150
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i55

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i55: ; preds = %bb.ap, %bb.ao, %.lr.ph204
  %i.st = tail call double @llvm.fabs.f64(double %i.se)
  %i.su = fcmp ueq double %i.st, +inf
  br i1 %i.su, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit56, label %bb.aq

bb.aq:                                            ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i55
  %i.sv = load double, ptr %i.hc, align 8, !tbaa !8970
  %i.sw = load double, ptr %i.hh, align 8, !tbaa !3672
  %i.sx = fsub double %storemerge30203, %i.sw
  %i.sy = fmul double %i.sv, %i.sx
  %i.sz = fadd double %i.sy, 5.000000e-01
  %i.ta = tail call noundef double @llvm.floor.f64(double %i.sz)
  %i.tb = fptoui double %i.ta to i32
  %i.tc = zext i32 %i.tb to i64
  %i.td = load ptr, ptr %i.ht, align 8, !tbaa !3624
  %i.te = getelementptr inbounds nuw [8 x i8], ptr %i.td, i64 %i.tc ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE19setValueOffAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeIS6_EEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvRKNS0_4math5CoordERKdRT_:bb.a
  store <4 x i32> %i.an, ptr %i.ah, align 8, !tbaa !699
  br i1 %.not24, label %vector.ph, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 33280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.ao, i8 -1, i64 512, i1 false), !tbaa !1070
  br label %vector.ph

vector.ph:                                        ; preds = %._crit_edge, %bb.d
  %.pre.i = load double, ptr %i.ag, align 8, !tbaa !1150
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.pre.i, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <2 x double> %broadcast.splat, ptr %i.ap, align 8, !tbaa !726
  store <2 x double> %broadcast.splat, ptr %i.aq, align 8, !tbaa !726
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %index ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  store <2 x double> %broadcast.splat, ptr %i.as, align 8, !tbaa !726
  store <2 x double> %broadcast.splat, ptr %i.at, align 8, !tbaa !726
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 80
  store <2 x double> %broadcast.splat, ptr %i.av, align 8, !tbaa !726
  store <2 x double> %broadcast.splat, ptr %i.aw, align 8, !tbaa !726
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %index ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 96
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 112
  store <2 x double> %broadcast.splat, ptr %i.ay, align 8, !tbaa !726
  store <2 x double> %broadcast.splat, ptr %i.az, align 8, !tbaa !726
  %index.next.3 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.ba = icmp eq i64 %index.next.3, 4096
  br i1 %i.ba, label %.critedge, label %vector.body, !llvm.loop !9003

.critedge:                                        ; preds = %vector.body
  %i.bb = load i64, ptr %i.q, align 8, !tbaa !1070
  %i.bc = or i64 %i.bb, %i.u
  store i64 %i.bc, ptr %i.q, align 8, !tbaa !1070
  %i.bd = xor i64 %i.u, -1
  %i.be = load i64, ptr %i.x, align 8, !tbaa !1070
  %i.bf = and i64 %i.be, %i.bd
  store i64 %i.bf, ptr %i.x, align 8, !tbaa !1070
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !726
  %.pre26 = load i32, ptr %1, align 4, !tbaa !699
  %.pre27 = load i32, ptr %i.d, align 4, !tbaa !699
  %.pre28 = load i32, ptr %i.i, align 4, !tbaa !699
  br label %.critedge23

.critedge23:                                      ; preds = %..critedge23_crit_edge, %.critedge
  %i.bg = phi i32 [ %i.j, %..critedge23_crit_edge ], [ %.pre28, %.critedge ]
  %i.bh = phi i32 [ %i.e, %..critedge23_crit_edge ], [ %.pre27, %.critedge ]
  %i.bi = phi i32 [ %i.a, %..critedge23_crit_edge ], [ %.pre26, %.critedge ]
  %i.bj = phi ptr [ %.pre, %..critedge23_crit_edge ], [ %i.af, %.critedge ] ; 2 uses
  %i.bk = and i32 %i.bi, -128
  %i.bl = and i32 %i.bh, -128
  %i.bm = and i32 %i.bg, -128
  %.sroa.2.0.insert.ext.i = zext i32 %i.bl to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.bk to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.bn, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i32 %i.bm, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !726
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 80
  store ptr %i.bj, ptr %i.bo, align 8, !tbaa !1557
  tail call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE19setValueOffAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvRKNS0_4math5CoordERKdRT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.bj, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(96) %3)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %.critedge23
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE19setValueOffAndCacheINS1_17ValueAccessorImplINS1_4TreeIS8_EELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvRKNS0_4math5CoordERKdRT_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(96) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %1, align 4, !tbaa !699
  %i.c = load i32, ptr %i.a, align 8, !tbaa !699
  %i.d = sub nsw i32 %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !699
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.h = load i32, ptr %i.g, align 4, !tbaa !699
  %i.i = sub nsw i32 %i.f, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !699
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load i32, ptr %i.l, align 8, !tbaa !699
  %i.n = sub nsw i32 %i.k, %i.m
  %i.o = and i32 %i.d, -4096                      ; 9 uses
  %i.p = and i32 %i.i, -4096                      ; 9 uses
  %i.q = and i32 %i.n, -4096                      ; 5 uses
  %.sroa.2.0.insert.ext.i10.i = zext i32 %i.p to i64
  %.sroa.2.0.insert.shift.i11.i = shl nuw i64 %.sroa.2.0.insert.ext.i10.i, 32
  %.sroa.0.0.insert.ext.i12.i = zext i32 %i.o to i64
  %.sroa.0.0.insert.insert.i13.i = or disjoint i64 %.sroa.2.0.insert.shift.i11.i, %.sroa.0.0.insert.ext.i12.i
  store i64 %.sroa.0.0.insert.insert.i13.i, ptr %4, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.q, ptr %.sroa.2.0..sroa_idx, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !771  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not12.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not12.i.i.i.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.s, %bb.a ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.t, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.v = load i32, ptr %i.u, align 4, !tbaa !699  ; 2 uses
  %i.w = icmp slt i32 %i.v, %i.o
  br i1 %i.w, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.x = icmp sgt i32 %i.v, %i.o
  br i1 %i.x, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.z = load i32, ptr %i.y, align 4, !tbaa !699  ; 2 uses
  %i.aa = icmp slt i32 %i.z, %i.p
  br i1 %i.aa, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = icmp sgt i32 %i.z, %i.p
  br i1 %i.ab, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 40
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !699
  %i.ae = icmp slt i32 %i.ad, %i.q
  br i1 %i.ae, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.c, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.d, %bb.b
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ 16, %bb.d ], [ 16, %bb.b ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.d ], [ %.014.i.i.i.i, %bb.b ], [ %.014.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ] ; 9 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.af, align 8, !tbaa !860 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !44

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %i.ag = icmp eq ptr %.19.i.i.i.i, %i.t
  br i1 %i.ag, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !699 ; 2 uses
  %i.aj = icmp slt i32 %i.o, %i.ai
  br i1 %i.aj, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = icmp sgt i32 %i.o, %i.ai
  br i1 %i.ak, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.am = load i32, ptr %i.al, align 4, !tbaa !699 ; 2 uses
  %i.an = icmp slt i32 %i.p, %i.am
  br i1 %i.an, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = icmp sgt i32 %i.p, %i.am
  br i1 %i.ao, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i: ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !699
  %i.ar = icmp slt i32 %i.q, %i.aq
  br i1 %i.ar, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread: ; preds = %bb.g, %bb.e, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.at = load double, ptr %i.as, align 8, !tbaa !1150
  %i.au = load double, ptr %2, align 8, !tbaa !1150
  %i.av = fcmp oeq double %i.at, %i.au
  br i1 %i.av, label %bb.t, label %vector.ph66

vector.ph66:                                      ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread
  %i.aw = tail call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #30 ; 11 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 270336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.aw, i8 0, i64 270336, i1 false)
  %i.ay = load i32, ptr %i.j, align 4, !tbaa !699
  %i.az = load <2 x i32>, ptr %1, align 4, !tbaa !699
  %i.ba = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.ay, i64 2
  %i.bb = shufflevector <2 x i32> %i.az, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bc = shufflevector <4 x i32> %i.bb, <4 x i32> %i.ba, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bd = and <4 x i32> %i.bc, <i32 -4096, i32 -4096, i32 -4096, i32 0>
  store <4 x i32> %i.bd, ptr %i.ax, align 8, !tbaa !699
  %5 = load <1 x double>, ptr %i.as, align 8
  %broadcast.splat68 = shufflevector <1 x double> %5, <1 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body69

vector.body69:                                    ; preds = %vector.body69, %vector.ph66
  %index70 = phi i64 [ 0, %vector.ph66 ], [ %index.next71.3, %vector.body69 ] ; 5 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index70 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <2 x double> %broadcast.splat68, ptr %i.be, align 8, !tbaa !726
  store <2 x double> %broadcast.splat68, ptr %i.bf, align 8, !tbaa !726
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index70 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  store <2 x double> %broadcast.splat68, ptr %i.bh, align 8, !tbaa !726
  store <2 x double> %broadcast.splat68, ptr %i.bi, align 8, !tbaa !726
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index70 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 80
  store <2 x double> %broadcast.splat68, ptr %i.bk, align 8, !tbaa !726
  store <2 x double> %broadcast.splat68, ptr %i.bl, align 8, !tbaa !726
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index70 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 96
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 112
  store <2 x double> %broadcast.splat68, ptr %i.bn, align 8, !tbaa !726
  store <2 x double> %broadcast.splat68, ptr %i.bo, align 8, !tbaa !726
  %index.next71.3 = add nuw nsw i64 %index70, 16  ; 2 uses
  %i.bp = icmp eq i64 %index.next71.3, 32768
  br i1 %i.bp, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit, label %vector.body69, !llvm.loop !9004

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit: ; preds = %vector.body69
  %i.bq = load ptr, ptr %i.r, align 8, !tbaa !771 ; 2 uses
  %.not12.i.i.i.i21 = icmp eq ptr %i.bq, null
  br i1 %.not12.i.i.i.i21, label %.critedge.i, label %.lr.ph.i.i.i.i22

.lr.ph.i.i.i.i22:                                 ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26
  %.014.i.i.i.i23 = phi ptr [ %.1.i.i.i.i29, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26 ], [ %i.bq, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ] ; 7 uses
  %.0813.i.i.i.i24 = phi ptr [ %.19.i.i.i.i28, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26 ], [ %i.t, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ]
  %i.br = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i23, i64 32
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !699 ; 2 uses
  %i.bt = icmp slt i32 %i.bs, %i.o
  br i1 %i.bt, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i22
  %i.bu = icmp sgt i32 %i.bs, %i.o
  br i1 %i.bu, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i23, i64 36
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !699 ; 2 uses
  %i.bx = icmp slt i32 %i.bw, %i.p
  br i1 %i.bx, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.by = icmp sgt i32 %i.bw, %i.p
  br i1 %i.by, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25: ; preds = %bb.k
  %i.bz = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i23, i64 40
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !699
  %i.cb = icmp slt i32 %i.ca, %i.q
  br i1 %i.cb, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25, %bb.j, %.lr.ph.i.i.i.i22
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25, %bb.k, %bb.i
  %.sink.i.i.i.i27 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31 ], [ 16, %bb.k ], [ 16, %bb.i ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25 ]
  %.19.i.i.i.i28 = phi ptr [ %.0813.i.i.i.i24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31 ], [ %.014.i.i.i.i23, %bb.k ], [ %.014.i.i.i.i23, %bb.i ], [ %.014.i.i.i.i23, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25 ] ; 9 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i23, i64 %.sink.i.i.i.i27
  %.1.i.i.i.i29 = load ptr, ptr %i.cc, align 8, !tbaa !860 ; 2 uses
  %.not.i.i.i.i30 = icmp eq ptr %.1.i.i.i.i29, null
  br i1 %.not.i.i.i.i30, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, label %.lr.ph.i.i.i.i22, !llvm.loop !44

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26
  %i.cd = icmp eq ptr %.19.i.i.i.i28, %i.t
  br i1 %i.cd, label %.critedge.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i28, i64 32
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !699 ; 2 uses
  %i.cg = icmp slt i32 %i.o, %i.cf
  br i1 %i.cg, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ch = icmp sgt i32 %i.o, %i.cf
  br i1 %i.ch, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ci = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i28, i64 36
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !699 ; 2 uses
  %i.ck = icmp slt i32 %i.p, %i.cj
  br i1 %i.ck, label %.critedge.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cl = icmp sgt i32 %i.p, %i.cj
  br i1 %i.cl, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i: ; preds = %bb.o
  %i.cm = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i28, i64 40
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !699
  %i.co = icmp slt i32 %i.q, %i.cn
  br i1 %i.co, label %.critedge.i, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

.critedge.i:                                      ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.n, %bb.l, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit
  %.08.lcssa.i.i.i20.i = phi ptr [ %i.t, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ], [ %.19.i.i.i.i28, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %.19.i.i.i.i28, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i ], [ %.19.i.i.i.i28, %bb.l ], [ %.19.i.i.i.i28, %bb.n ]
  %i.cp = call ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE22_M_emplace_hint_uniqueIJRS5_RSC_EEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i20.i, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(270352) %i.aw) ; 0 uses
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit: ; preds = %bb.h, %bb.f, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 48 ; 3 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !922 ; 2 uses
  %.not = icmp eq ptr %i.cr, null
  br i1 %.not, label %bb.p, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

bb.p:                                             ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 64 ; 2 uses
  %i.ct = load i8, ptr %i.cs, align 8, !range !746
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cv = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 56
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !1150
  %i.cx = load double, ptr %2, align 8, !tbaa !1150
  %i.cy = fcmp oeq double %i.cw, %i.cx
  br i1 %i.cy, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cz = tail call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #30 ; 9 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 56
  %i.db = load ptr, ptr %i.cq, align 8, !tbaa !922
  %i.dc = icmp eq ptr %i.db, null
  %i.dd = load i8, ptr %i.cs, align 8, !range !746
  %i.de = trunc nuw i8 %i.dd to i1
  %i.df = select i1 %i.dc, i1 %i.de, i1 false
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cz, i64 270336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.cz, i8 0, i64 270336, i1 false)
  %i.dh = load i32, ptr %i.j, align 4, !tbaa !699
  %i.di = load <2 x i32>, ptr %1, align 4, !tbaa !699
  %i.dj = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.dh, i64 2
  %i.dk = shufflevector <2 x i32> %i.di, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dl = shufflevector <4 x i32> %i.dk, <4 x i32> %i.dj, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dm = and <4 x i32> %i.dl, <i32 -4096, i32 -4096, i32 -4096, i32 0>
  store <4 x i32> %i.dm, ptr %i.dg, align 8, !tbaa !699
  br i1 %i.df, label %bb.s, label %vector.ph

bb.s:                                             ; preds = %bb.r
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cz, i64 266240
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4096) %i.dn, i8 -1, i64 4096, i1 false), !tbaa !1070
  br label %vector.ph

vector.ph:                                        ; preds = %bb.r, %bb.s
  %.pre.i32 = load double, ptr %i.da, align 8, !tbaa !1150
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.pre.i32, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %index ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  store <2 x double> %broadcast.splat, ptr %i.do, align 8, !tbaa !726
  store <2 x double> %broadcast.splat, ptr %i.dp, align 8, !tbaa !726
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %index ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 32
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 48
  store <2 x double> %broadcast.splat, ptr %i.dr, align 8, !tbaa !726
  store <2 x double> %broadcast.splat, ptr %i.ds, align 8, !tbaa !726
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %index ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 80
  store <2 x double> %broadcast.splat, ptr %i.du, align 8, !tbaa !726
  store <2 x double> %broadcast.splat, ptr %i.dv, align 8, !tbaa !726
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %index ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 96
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 112
  store <2 x double> %broadcast.splat, ptr %i.dx, align 8, !tbaa !726
  store <2 x double> %broadcast.splat, ptr %i.dy, align 8, !tbaa !726
  %index.next.3 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.dz = icmp eq i64 %index.next.3, 32768
  br i1 %i.dz, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit36, label %vector.body, !llvm.loop !9005

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit36: ; preds = %vector.body
  tail call void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStruct3setERS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.cq, ptr noundef nonnull align 8 dereferenceable(270352) %i.cz)
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit: ; preds = %.critedge.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.o, %bb.m, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit36, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit
  %.0.ph = phi ptr [ %i.cr, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit ], [ %i.cz, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit36 ], [ %i.aw, %bb.m ], [ %i.aw, %bb.o ], [ %i.aw, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %i.aw, %.critedge.i ] ; 2 uses
  %i.ea = load i32, ptr %1, align 4, !tbaa !699
  %i.eb = and i32 %i.ea, -4096
  %i.ec = load i32, ptr %i.e, align 4, !tbaa !699
  %i.ed = and i32 %i.ec, -4096
  %i.ee = load i32, ptr %i.j, align 4, !tbaa !699
  %i.ef = and i32 %i.ee, -4096
  %.sroa.2.0.insert.ext.i = zext i32 %i.ed to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.eb to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.eg, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 %i.ef, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !726
end_hunk_5
begin_hunk_6_@_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE16setValueAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeIS6_EEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvRKNS0_4math5CoordERKdRT_:bb.a
  %i.ak = shufflevector <2 x i32> %i.ai, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.al = shufflevector <4 x i32> %i.ak, <4 x i32> %i.aj, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.am = and <4 x i32> %i.al, <i32 -128, i32 -128, i32 -128, i32 0>
  store <4 x i32> %i.am, ptr %i.ag, align 8, !tbaa !699
  br i1 %.not23, label %vector.ph, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 33280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.an, i8 -1, i64 512, i1 false), !tbaa !1070
  br label %vector.ph

vector.ph:                                        ; preds = %._crit_edge, %bb.d
  %.pre.i = load double, ptr %i.af, align 8, !tbaa !1150
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.pre.i, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %index ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store <2 x double> %broadcast.splat, ptr %i.ao, align 8, !tbaa !726
  store <2 x double> %broadcast.splat, ptr %i.ap, align 8, !tbaa !726
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  store <2 x double> %broadcast.splat, ptr %i.ar, align 8, !tbaa !726
  store <2 x double> %broadcast.splat, ptr %i.as, align 8, !tbaa !726
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 80
  store <2 x double> %broadcast.splat, ptr %i.au, align 8, !tbaa !726
  store <2 x double> %broadcast.splat, ptr %i.av, align 8, !tbaa !726
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %index ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 96
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 112
  store <2 x double> %broadcast.splat, ptr %i.ax, align 8, !tbaa !726
  store <2 x double> %broadcast.splat, ptr %i.ay, align 8, !tbaa !726
  %index.next.3 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.az = icmp eq i64 %index.next.3, 4096
  br i1 %i.az, label %.critedge, label %vector.body, !llvm.loop !9008

.critedge:                                        ; preds = %vector.body
  %i.ba = load i64, ptr %i.q, align 8, !tbaa !1070
  %i.bb = or i64 %i.ba, %i.u
  store i64 %i.bb, ptr %i.q, align 8, !tbaa !1070
  %i.bc = xor i64 %i.u, -1
  %i.bd = load i64, ptr %i.x, align 8, !tbaa !1070
  %i.be = and i64 %i.bd, %i.bc
  store i64 %i.be, ptr %i.x, align 8, !tbaa !1070
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !726
  %.pre25 = load i32, ptr %1, align 4, !tbaa !699
  %.pre26 = load i32, ptr %i.d, align 4, !tbaa !699
  %.pre27 = load i32, ptr %i.i, align 4, !tbaa !699
  br label %.critedge22

.critedge22:                                      ; preds = %..critedge22_crit_edge, %.critedge
  %.pre-phi = phi i64 [ %.phi.trans.insert, %..critedge22_crit_edge ], [ %.pre28, %.critedge ]
  %i.bf = phi i32 [ %i.j, %..critedge22_crit_edge ], [ %.pre27, %.critedge ]
  %i.bg = phi i32 [ %i.e, %..critedge22_crit_edge ], [ %.pre26, %.critedge ]
  %i.bh = phi i32 [ %i.a, %..critedge22_crit_edge ], [ %.pre25, %.critedge ]
  %i.bi = phi ptr [ %.pre, %..critedge22_crit_edge ], [ %i.ae, %.critedge ]
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.pre-phi
  %i.bk = and i32 %i.bh, -128
  %i.bl = and i32 %i.bg, -128
  %i.bm = and i32 %i.bf, -128
  %.sroa.2.0.insert.ext.i = zext i32 %i.bl to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.bk to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.bn, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i32 %i.bm, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !726
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 80
  store ptr %i.bi, ptr %i.bo, align 8, !tbaa !1557
  %i.bp = load ptr, ptr %i.bj, align 8, !tbaa !726
  tail call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE16setValueAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvRKNS0_4math5CoordERKdRT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.bp, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(96) %3)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %.critedge22
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE16setValueAndCacheINS1_17ValueAccessorImplINS1_4TreeIS8_EELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvRKNS0_4math5CoordERKdRT_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(96) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %1, align 4, !tbaa !699
  %i.c = load i32, ptr %i.a, align 8, !tbaa !699
  %i.d = sub nsw i32 %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !699
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.h = load i32, ptr %i.g, align 4, !tbaa !699
  %i.i = sub nsw i32 %i.f, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !699
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load i32, ptr %i.l, align 8, !tbaa !699
  %i.n = sub nsw i32 %i.k, %i.m
  %i.o = and i32 %i.d, -4096                      ; 9 uses
  %i.p = and i32 %i.i, -4096                      ; 9 uses
  %i.q = and i32 %i.n, -4096                      ; 5 uses
  %.sroa.2.0.insert.ext.i10.i = zext i32 %i.p to i64
  %.sroa.2.0.insert.shift.i11.i = shl nuw i64 %.sroa.2.0.insert.ext.i10.i, 32
  %.sroa.0.0.insert.ext.i12.i = zext i32 %i.o to i64
  %.sroa.0.0.insert.insert.i13.i = or disjoint i64 %.sroa.2.0.insert.shift.i11.i, %.sroa.0.0.insert.ext.i12.i
  store i64 %.sroa.0.0.insert.insert.i13.i, ptr %4, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.q, ptr %.sroa.2.0..sroa_idx, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !771  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not12.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not12.i.i.i.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.s, %bb.a ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.t, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.v = load i32, ptr %i.u, align 4, !tbaa !699  ; 2 uses
  %i.w = icmp slt i32 %i.v, %i.o
  br i1 %i.w, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.x = icmp sgt i32 %i.v, %i.o
  br i1 %i.x, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.z = load i32, ptr %i.y, align 4, !tbaa !699  ; 2 uses
  %i.aa = icmp slt i32 %i.z, %i.p
  br i1 %i.aa, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = icmp sgt i32 %i.z, %i.p
  br i1 %i.ab, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 40
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !699
  %i.ae = icmp slt i32 %i.ad, %i.q
  br i1 %i.ae, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.c, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.d, %bb.b
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ 16, %bb.d ], [ 16, %bb.b ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.d ], [ %.014.i.i.i.i, %bb.b ], [ %.014.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ] ; 9 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.af, align 8, !tbaa !860 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !44

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %i.ag = icmp eq ptr %.19.i.i.i.i, %i.t
  br i1 %i.ag, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !699 ; 2 uses
  %i.aj = icmp slt i32 %i.o, %i.ai
  br i1 %i.aj, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = icmp sgt i32 %i.o, %i.ai
  br i1 %i.ak, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.am = load i32, ptr %i.al, align 4, !tbaa !699 ; 2 uses
  %i.an = icmp slt i32 %i.p, %i.am
  br i1 %i.an, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = icmp sgt i32 %i.p, %i.am
  br i1 %i.ao, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i: ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !699
  %i.ar = icmp slt i32 %i.q, %i.aq
  br i1 %i.ar, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread: ; preds = %bb.g, %bb.e, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, %bb.a
  %i.as = tail call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #30 ; 11 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 270336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.as, i8 0, i64 270336, i1 false)
  %i.au = load i32, ptr %i.j, align 4, !tbaa !699
  %i.av = load <2 x i32>, ptr %1, align 4, !tbaa !699
  %i.aw = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.au, i64 2
  %i.ax = shufflevector <2 x i32> %i.av, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ay = shufflevector <4 x i32> %i.ax, <4 x i32> %i.aw, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.az = and <4 x i32> %i.ay, <i32 -4096, i32 -4096, i32 -4096, i32 0>
  store <4 x i32> %i.az, ptr %i.at, align 8, !tbaa !699
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  %5 = load <1 x double>, ptr %i.ba, align 8
  %broadcast.splat67 = shufflevector <1 x double> %5, <1 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body68

vector.body68:                                    ; preds = %vector.body68, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread
  %index69 = phi i64 [ 0, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread ], [ %index.next70.3, %vector.body68 ] ; 5 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index69 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store <2 x double> %broadcast.splat67, ptr %i.bb, align 8, !tbaa !726
  store <2 x double> %broadcast.splat67, ptr %i.bc, align 8, !tbaa !726
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index69 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  store <2 x double> %broadcast.splat67, ptr %i.be, align 8, !tbaa !726
  store <2 x double> %broadcast.splat67, ptr %i.bf, align 8, !tbaa !726
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index69 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 80
  store <2 x double> %broadcast.splat67, ptr %i.bh, align 8, !tbaa !726
  store <2 x double> %broadcast.splat67, ptr %i.bi, align 8, !tbaa !726
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index69 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 96
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 112
  store <2 x double> %broadcast.splat67, ptr %i.bk, align 8, !tbaa !726
  store <2 x double> %broadcast.splat67, ptr %i.bl, align 8, !tbaa !726
  %index.next70.3 = add nuw nsw i64 %index69, 16  ; 2 uses
  %i.bm = icmp eq i64 %index.next70.3, 32768
  br i1 %i.bm, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit, label %vector.body68, !llvm.loop !9009

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit: ; preds = %vector.body68
  %i.bn = load ptr, ptr %i.r, align 8, !tbaa !771 ; 2 uses
  %.not12.i.i.i.i20 = icmp eq ptr %i.bn, null
  br i1 %.not12.i.i.i.i20, label %.critedge.i, label %.lr.ph.i.i.i.i21

.lr.ph.i.i.i.i21:                                 ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i25
  %.014.i.i.i.i22 = phi ptr [ %.1.i.i.i.i28, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i25 ], [ %i.bn, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ] ; 7 uses
  %.0813.i.i.i.i23 = phi ptr [ %.19.i.i.i.i27, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i25 ], [ %i.t, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i22, i64 32
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !699 ; 2 uses
  %i.bq = icmp slt i32 %i.bp, %i.o
  br i1 %i.bq, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i30, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i21
  %i.br = icmp sgt i32 %i.bp, %i.o
  br i1 %i.br, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i25, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i22, i64 36
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !699 ; 2 uses
  %i.bu = icmp slt i32 %i.bt, %i.p
  br i1 %i.bu, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i30, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bv = icmp sgt i32 %i.bt, %i.p
  br i1 %i.bv, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i25, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i24

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i24: ; preds = %bb.k
  %i.bw = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i22, i64 40
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !699
  %i.by = icmp slt i32 %i.bx, %i.q
  br i1 %i.by, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i30, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i25

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i30: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i24, %bb.j, %.lr.ph.i.i.i.i21
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i25

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i25: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i30, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i24, %bb.k, %bb.i
  %.sink.i.i.i.i26 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i30 ], [ 16, %bb.k ], [ 16, %bb.i ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i24 ]
  %.19.i.i.i.i27 = phi ptr [ %.0813.i.i.i.i23, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i30 ], [ %.014.i.i.i.i22, %bb.k ], [ %.014.i.i.i.i22, %bb.i ], [ %.014.i.i.i.i22, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i24 ] ; 9 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i22, i64 %.sink.i.i.i.i26
  %.1.i.i.i.i28 = load ptr, ptr %i.bz, align 8, !tbaa !860 ; 2 uses
  %.not.i.i.i.i29 = icmp eq ptr %.1.i.i.i.i28, null
  br i1 %.not.i.i.i.i29, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, label %.lr.ph.i.i.i.i21, !llvm.loop !44

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i25
  %i.ca = icmp eq ptr %.19.i.i.i.i27, %i.t
  br i1 %i.ca, label %.critedge.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i27, i64 32
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !699 ; 2 uses
  %i.cd = icmp slt i32 %i.o, %i.cc
  br i1 %i.cd, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ce = icmp sgt i32 %i.o, %i.cc
  br i1 %i.ce, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cf = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i27, i64 36
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !699 ; 2 uses
  %i.ch = icmp slt i32 %i.p, %i.cg
  br i1 %i.ch, label %.critedge.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ci = icmp sgt i32 %i.p, %i.cg
  br i1 %i.ci, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i: ; preds = %bb.o
  %i.cj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i27, i64 40
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !699
  %i.cl = icmp slt i32 %i.q, %i.ck
  br i1 %i.cl, label %.critedge.i, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

.critedge.i:                                      ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.n, %bb.l, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit
  %.08.lcssa.i.i.i20.i = phi ptr [ %i.t, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ], [ %.19.i.i.i.i27, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %.19.i.i.i.i27, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i ], [ %.19.i.i.i.i27, %bb.l ], [ %.19.i.i.i.i27, %bb.n ]
  %i.cm = call ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE22_M_emplace_hint_uniqueIJRS5_RSC_EEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i20.i, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(270352) %i.as) ; 0 uses
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit: ; preds = %bb.h, %bb.f, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 48 ; 3 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !922 ; 2 uses
  %.not = icmp eq ptr %i.co, null
  br i1 %.not, label %bb.p, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

bb.p:                                             ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 64 ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 8, !range !746
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cs = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 56
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !1150
  %i.cu = load double, ptr %2, align 8, !tbaa !1150
  %i.cv = fcmp oeq double %i.ct, %i.cu
  br i1 %i.cv, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cw = tail call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #30 ; 9 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 56
  %i.cy = load ptr, ptr %i.cn, align 8, !tbaa !922
  %i.cz = icmp eq ptr %i.cy, null
  %i.da = load i8, ptr %i.cp, align 8, !range !746
  %i.db = trunc nuw i8 %i.da to i1
  %i.dc = select i1 %i.cz, i1 %i.db, i1 false
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 270336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.cw, i8 0, i64 270336, i1 false)
  %i.de = load i32, ptr %i.j, align 4, !tbaa !699
  %i.df = load <2 x i32>, ptr %1, align 4, !tbaa !699
  %i.dg = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.de, i64 2
  %i.dh = shufflevector <2 x i32> %i.df, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.di = shufflevector <4 x i32> %i.dh, <4 x i32> %i.dg, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dj = and <4 x i32> %i.di, <i32 -4096, i32 -4096, i32 -4096, i32 0>
  store <4 x i32> %i.dj, ptr %i.dd, align 8, !tbaa !699
  br i1 %i.dc, label %bb.s, label %vector.ph

bb.s:                                             ; preds = %bb.r
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cw, i64 266240
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4096) %i.dk, i8 -1, i64 4096, i1 false), !tbaa !1070
  br label %vector.ph

vector.ph:                                        ; preds = %bb.r, %bb.s
  %.pre.i31 = load double, ptr %i.cx, align 8, !tbaa !1150
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.pre.i31, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %index ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store <2 x double> %broadcast.splat, ptr %i.dl, align 8, !tbaa !726
  store <2 x double> %broadcast.splat, ptr %i.dm, align 8, !tbaa !726
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %index ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 48
  store <2 x double> %broadcast.splat, ptr %i.do, align 8, !tbaa !726
  store <2 x double> %broadcast.splat, ptr %i.dp, align 8, !tbaa !726
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %index ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 64
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 80
  store <2 x double> %broadcast.splat, ptr %i.dr, align 8, !tbaa !726
  store <2 x double> %broadcast.splat, ptr %i.ds, align 8, !tbaa !726
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %index ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 96
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 112
  store <2 x double> %broadcast.splat, ptr %i.du, align 8, !tbaa !726
  store <2 x double> %broadcast.splat, ptr %i.dv, align 8, !tbaa !726
  %index.next.3 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.dw = icmp eq i64 %index.next.3, 32768
  br i1 %i.dw, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit35, label %vector.body, !llvm.loop !9010

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit35: ; preds = %vector.body
  tail call void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStruct3setERS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, ptr noundef nonnull align 8 dereferenceable(270352) %i.cw)
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit: ; preds = %.critedge.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.o, %bb.m, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit35, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit
  %.0.ph = phi ptr [ %i.co, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit ], [ %i.cw, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit35 ], [ %i.as, %bb.m ], [ %i.as, %bb.o ], [ %i.as, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %i.as, %.critedge.i ] ; 2 uses
  %i.dx = load i32, ptr %1, align 4, !tbaa !699
  %i.dy = and i32 %i.dx, -4096
  %i.dz = load i32, ptr %i.e, align 4, !tbaa !699
  %i.ea = and i32 %i.dz, -4096
  %i.eb = load i32, ptr %i.j, align 4, !tbaa !699
  %i.ec = and i32 %i.eb, -4096
  %.sroa.2.0.insert.ext.i = zext i32 %i.ea to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.dy to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.ed, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 %i.ec, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !726
end_hunk_6
begin_hunk_7_@_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE15addTileAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeIS6_EEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvjRKNS0_4math5CoordERKdbRT_:bb.a
bb.i:                                             ; preds = %bb.b
  %i.bv = zext nneg i32 %i.n to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bv ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !726 ; 5 uses
  %.not = icmp eq i32 %1, 2
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.by = and i32 %i.b, -128
  %i.bz = and i32 %i.f, -128
  %i.ca = and i32 %i.k, -128
  %.sroa.2.0.insert.ext.i46 = zext i32 %i.bz to i64
  %.sroa.2.0.insert.shift.i47 = shl nuw i64 %.sroa.2.0.insert.ext.i46, 32
  %.sroa.0.0.insert.ext.i48 = zext i32 %i.by to i64
  %.sroa.0.0.insert.insert.i49 = or disjoint i64 %.sroa.2.0.insert.shift.i47, %.sroa.0.0.insert.ext.i48
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 36
  store i64 %.sroa.0.0.insert.insert.i49, ptr %i.cb, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 44
  store i32 %i.ca, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !726
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 80
  store ptr %i.bx, ptr %i.cc, align 8, !tbaa !1557
  tail call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE15addTileAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvjRKNS0_4math5CoordERKdbRT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.bx, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(96) %5)
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.cd = icmp eq ptr %i.bx, null
  br i1 %i.cd, label %_ZN7openvdb5v13_04util8NodeMaskILj5EE3setEjb.exit52, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EED2Ev(ptr noundef nonnull align 8 dead_on_return(33808) dereferenceable(33808) %i.bx) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef 33808) #31
  %.pre = load i64, ptr %i.r, align 8, !tbaa !1070
  br label %_ZN7openvdb5v13_04util8NodeMaskILj5EE3setEjb.exit52

_ZN7openvdb5v13_04util8NodeMaskILj5EE3setEjb.exit52: ; preds = %bb.l, %bb.k
  %i.ce = phi i64 [ %.pre, %bb.l ], [ %i.s, %bb.k ]
  %i.cf = xor i64 %i.v, -1                        ; 2 uses
  %i.cg = and i64 %i.ce, %i.cf
  store i64 %i.cg, ptr %i.r, align 8, !tbaa !1070
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 266240
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.q ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !1070 ; 2 uses
  %i.ck = or i64 %i.cj, %i.v
  %i.cl = and i64 %i.cj, %i.cf
  %.sink = select i1 %4, i64 %i.ck, i64 %i.cl
  store i64 %.sink, ptr %i.ci, align 8, !tbaa !1070
  %i.cm = load double, ptr %3, align 8, !tbaa !1150
  store double %i.cm, ptr %i.bw, align 8, !tbaa !726
  br label %bb.m

bb.m:                                             ; preds = %_ZN7openvdb5v13_04util8NodeMaskILj5EE3setEjb.exit, %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEC2ERKNS0_4math5CoordERKdb.exit, %_ZN7openvdb5v13_04util8NodeMaskILj5EE3setEjb.exit52, %bb.j, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE15addTileAndCacheINS1_17ValueAccessorImplINS1_4TreeIS8_EELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvjRKNS0_4math5CoordERKdbRT_(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(96) %5) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 6 uses
  %7 = alloca %"struct.openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<double, 3>, 4>, 5>>::Tile", align 8 ; 8 uses
  %8 = alloca %"struct.openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<double, 3>, 4>, 5>>::Tile", align 8 ; 5 uses
  %9 = alloca %"struct.openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<double, 3>, 4>, 5>>::Tile", align 8 ; 5 uses
  %i.a = icmp ult i32 %1, 4
  br i1 %i.a, label %bb.b, label %bb.ag

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load i32, ptr %2, align 4, !tbaa !699    ; 2 uses
  %i.d = load i32, ptr %i.b, align 8, !tbaa !699
  %i.e = sub nsw i32 %i.c, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !699  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !699
  %i.j = sub nsw i32 %i.g, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !699  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load i32, ptr %i.m, align 8, !tbaa !699
  %i.o = sub nsw i32 %i.l, %i.n
  %i.p = and i32 %i.e, -4096                      ; 13 uses
  %i.q = and i32 %i.j, -4096                      ; 13 uses
  %i.r = and i32 %i.o, -4096                      ; 7 uses
  %.sroa.2.0.insert.ext.i10.i = zext i32 %i.q to i64
  %.sroa.2.0.insert.shift.i11.i = shl nuw i64 %.sroa.2.0.insert.ext.i10.i, 32
  %.sroa.0.0.insert.ext.i12.i = zext i32 %i.p to i64
  %.sroa.0.0.insert.insert.i13.i = or disjoint i64 %.sroa.2.0.insert.shift.i11.i, %.sroa.0.0.insert.ext.i12.i
  store i64 %.sroa.0.0.insert.insert.i13.i, ptr %6, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %i.r, ptr %.sroa.2.0..sroa_idx, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !771  ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %.not12.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not12.i.i.i.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.t, %bb.b ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.u, %bb.b ]
  %i.v = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.w = load i32, ptr %i.v, align 4, !tbaa !699  ; 2 uses
  %i.x = icmp slt i32 %i.w, %i.p
  br i1 %i.x, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.y = icmp sgt i32 %i.w, %i.p
  br i1 %i.y, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !699 ; 2 uses
  %i.ab = icmp slt i32 %i.aa, %i.q
  br i1 %i.ab, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = icmp sgt i32 %i.aa, %i.q
  br i1 %i.ac, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 40
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !699
  %i.af = icmp slt i32 %i.ae, %i.r
  br i1 %i.af, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.d, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.e, %bb.c
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ 16, %bb.e ], [ 16, %bb.c ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.e ], [ %.014.i.i.i.i, %bb.c ], [ %.014.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ] ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.ag, align 8, !tbaa !860 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !44

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %i.ah = icmp eq ptr %.19.i.i.i.i, %i.u
  br i1 %i.ah, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !699 ; 2 uses
  %i.ak = icmp slt i32 %i.p, %i.aj
  br i1 %i.ak, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = icmp sgt i32 %i.p, %i.aj
  br i1 %i.al, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.an = load i32, ptr %i.am, align 4, !tbaa !699 ; 2 uses
  %i.ao = icmp slt i32 %i.q, %i.an
  br i1 %i.ao, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = icmp sgt i32 %i.q, %i.an
  br i1 %i.ap, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i: ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !699
  %i.as = icmp slt i32 %i.r, %i.ar
  br i1 %i.as, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread: ; preds = %bb.h, %bb.f, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i
  %.not50 = icmp eq i32 %1, 3
  br i1 %.not50, label %.lr.ph.i.i.i.i72, label %vector.ph140

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread.thread: ; preds = %bb.b
  %.not50116 = icmp eq i32 %1, 3
  br i1 %.not50116, label %.thread, label %vector.ph140

.thread:                                          ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.at = zext i1 %4 to i8
  %i.au = load double, ptr %3, align 8, !tbaa !1150
  store double %i.au, ptr %7, align 8, !tbaa !1160
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i8 %i.at, ptr %i.av, align 8, !tbaa !1161
  br label %.critedge.i87

vector.ph140:                                     ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread.thread, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread
  %i.aw = tail call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #30 ; 12 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 270336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.aw, i8 0, i64 270336, i1 false)
  %i.ay = load i32, ptr %2, align 4, !tbaa !699
  %i.az = and i32 %i.ay, -4096                    ; 2 uses
  %i.ba = load i32, ptr %i.f, align 4, !tbaa !699
  %i.bb = and i32 %i.ba, -4096                    ; 2 uses
  %i.bc = load i32, ptr %i.k, align 4, !tbaa !699
  %i.bd = and i32 %i.bc, -4096                    ; 2 uses
  store i32 %i.az, ptr %i.ax, align 8, !tbaa !699
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 270340
  store i32 %i.bb, ptr %i.be, align 4, !tbaa !699
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aw, i64 270344
  store i32 %i.bd, ptr %i.bf, align 8, !tbaa !699
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 270348
  store i32 0, ptr %i.bg, align 4, !tbaa !3096
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 48
  %10 = load <1 x double>, ptr %i.bh, align 8
  %broadcast.splat142 = shufflevector <1 x double> %10, <1 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body143

vector.body143:                                   ; preds = %vector.body143, %vector.ph140
  %index144 = phi i64 [ 0, %vector.ph140 ], [ %index.next145.3, %vector.body143 ] ; 5 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index144 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store <2 x double> %broadcast.splat142, ptr %i.bi, align 8, !tbaa !726
  store <2 x double> %broadcast.splat142, ptr %i.bj, align 8, !tbaa !726
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index144 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  store <2 x double> %broadcast.splat142, ptr %i.bl, align 8, !tbaa !726
  store <2 x double> %broadcast.splat142, ptr %i.bm, align 8, !tbaa !726
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index144 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 80
  store <2 x double> %broadcast.splat142, ptr %i.bo, align 8, !tbaa !726
  store <2 x double> %broadcast.splat142, ptr %i.bp, align 8, !tbaa !726
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index144 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 96
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 112
  store <2 x double> %broadcast.splat142, ptr %i.br, align 8, !tbaa !726
  store <2 x double> %broadcast.splat142, ptr %i.bs, align 8, !tbaa !726
  %index.next145.3 = add nuw nsw i64 %index144, 16 ; 2 uses
  %i.bt = icmp eq i64 %index.next145.3, 32768
  br i1 %i.bt, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit, label %vector.body143, !llvm.loop !9131

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit: ; preds = %vector.body143
  %.sroa.2.0.insert.ext.i = zext i32 %i.bb to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.az to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.bu, align 8
  %.sroa.4.0..sroa_idx.i57 = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i32 %i.bd, ptr %.sroa.4.0..sroa_idx.i57, align 8, !tbaa !726
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 72
  store ptr %i.aw, ptr %i.bv, align 8, !tbaa !1151
  %i.bw = load ptr, ptr %i.s, align 8, !tbaa !771 ; 2 uses
  %.not12.i.i.i.i58 = icmp eq ptr %i.bw, null
  br i1 %.not12.i.i.i.i58, label %.critedge.i, label %.lr.ph.i.i.i.i59

.lr.ph.i.i.i.i59:                                 ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i63
  %.014.i.i.i.i60 = phi ptr [ %.1.i.i.i.i66, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i63 ], [ %i.bw, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ] ; 7 uses
  %.0813.i.i.i.i61 = phi ptr [ %.19.i.i.i.i65, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i63 ], [ %i.u, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i60, i64 32
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !699 ; 2 uses
  %i.bz = icmp slt i32 %i.by, %i.p
  br i1 %i.bz, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i70, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i59
  %i.ca = icmp sgt i32 %i.by, %i.p
  br i1 %i.ca, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i63, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cb = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i60, i64 36
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !699 ; 2 uses
  %i.cd = icmp slt i32 %i.cc, %i.q
  br i1 %i.cd, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i70, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ce = icmp sgt i32 %i.cc, %i.q
  br i1 %i.ce, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i63, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i62

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i62: ; preds = %bb.l
  %i.cf = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i60, i64 40
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !699
  %i.ch = icmp slt i32 %i.cg, %i.r
  br i1 %i.ch, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i70, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i63

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i70: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i62, %bb.k, %.lr.ph.i.i.i.i59
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i63

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i63: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i70, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i62, %bb.l, %bb.j
  %.sink.i.i.i.i64 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i70 ], [ 16, %bb.l ], [ 16, %bb.j ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i62 ]
  %.19.i.i.i.i65 = phi ptr [ %.0813.i.i.i.i61, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i70 ], [ %.014.i.i.i.i60, %bb.l ], [ %.014.i.i.i.i60, %bb.j ], [ %.014.i.i.i.i60, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i62 ] ; 9 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i60, i64 %.sink.i.i.i.i64
  %.1.i.i.i.i66 = load ptr, ptr %i.ci, align 8, !tbaa !860 ; 2 uses
  %.not.i.i.i.i67 = icmp eq ptr %.1.i.i.i.i66, null
  br i1 %.not.i.i.i.i67, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, label %.lr.ph.i.i.i.i59, !llvm.loop !44

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i63
  %i.cj = icmp eq ptr %.19.i.i.i.i65, %i.u
  br i1 %i.cj, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i
  %i.ck = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i65, i64 32
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !699 ; 2 uses
  %i.cm = icmp slt i32 %i.p, %i.cl
  br i1 %i.cm, label %.critedge.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cn = icmp sgt i32 %i.p, %i.cl
  br i1 %i.cn, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i65, i64 36
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !699 ; 2 uses
  %i.cq = icmp slt i32 %i.q, %i.cp
  br i1 %i.cq, label %.critedge.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cr = icmp sgt i32 %i.q, %i.cp
  br i1 %i.cr, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i: ; preds = %bb.p
  %i.cs = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i65, i64 40
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !699
  %i.cu = icmp slt i32 %i.r, %i.ct
  br i1 %i.cu, label %.critedge.i, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

.critedge.i:                                      ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.o, %bb.m, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit
  %.08.lcssa.i.i.i20.i = phi ptr [ %i.u, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ], [ %.19.i.i.i.i65, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %.19.i.i.i.i65, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i ], [ %.19.i.i.i.i65, %bb.m ], [ %.19.i.i.i.i65, %bb.o ]
  %i.cv = call ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE22_M_emplace_hint_uniqueIJRS5_RSC_EEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i20.i, ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(270352) %i.aw) ; 0 uses
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit: ; preds = %bb.n, %bb.p, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %.critedge.i
  call void @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE15addTileAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeIS6_EEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvjRKNS0_4math5CoordERKdbRT_(ptr noundef nonnull align 8 dereferenceable(270352) %i.aw, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(96) %5)
  br label %bb.af

.lr.ph.i.i.i.i72:                                 ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.cw = zext i1 %4 to i8
  %i.cx = load double, ptr %3, align 8, !tbaa !1150
  store double %i.cx, ptr %7, align 8, !tbaa !1160
  %i.cy = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i8 %i.cw, ptr %i.cy, align 8, !tbaa !1161
  br label %bb.q

bb.q:                                             ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i76, %.lr.ph.i.i.i.i72
  %.014.i.i.i.i73 = phi ptr [ %i.t, %.lr.ph.i.i.i.i72 ], [ %.1.i.i.i.i79, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i76 ] ; 7 uses
  %.0813.i.i.i.i74 = phi ptr [ %i.u, %.lr.ph.i.i.i.i72 ], [ %.19.i.i.i.i78, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i76 ]
  %i.cz = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i73, i64 32
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !699 ; 2 uses
  %i.db = icmp slt i32 %i.da, %i.p
  br i1 %i.db, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i89, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dc = icmp sgt i32 %i.da, %i.p
  br i1 %i.dc, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i76, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dd = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i73, i64 36
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !699 ; 2 uses
  %i.df = icmp slt i32 %i.de, %i.q
  br i1 %i.df, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i89, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dg = icmp sgt i32 %i.de, %i.q
  br i1 %i.dg, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i76, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i75

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i75: ; preds = %bb.t
  %i.dh = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i73, i64 40
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !699
  %i.dj = icmp slt i32 %i.di, %i.r
  br i1 %i.dj, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i89, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i76

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i89: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i75, %bb.s, %bb.q
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i76

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i76: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i89, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i75, %bb.t, %bb.r
  %.sink.i.i.i.i77 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i89 ], [ 16, %bb.t ], [ 16, %bb.r ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i75 ]
  %.19.i.i.i.i78 = phi ptr [ %.0813.i.i.i.i74, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i89 ], [ %.014.i.i.i.i73, %bb.t ], [ %.014.i.i.i.i73, %bb.r ], [ %.014.i.i.i.i73, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i75 ] ; 9 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i73, i64 %.sink.i.i.i.i77
  %.1.i.i.i.i79 = load ptr, ptr %i.dk, align 8, !tbaa !860 ; 2 uses
  %.not.i.i.i.i80 = icmp eq ptr %.1.i.i.i.i79, null
  br i1 %.not.i.i.i.i80, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i81, label %bb.q, !llvm.loop !44

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i81: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i76
  %i.dl = icmp eq ptr %.19.i.i.i.i78, %i.u
  br i1 %i.dl, label %.critedge.i87, label %bb.u

bb.u:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i81
  %i.dm = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i78, i64 32
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !699 ; 2 uses
  %i.do = icmp slt i32 %i.p, %i.dn
  br i1 %i.do, label %.critedge.i87, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dp = icmp sgt i32 %i.p, %i.dn
  br i1 %i.dp, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dq = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i78, i64 36
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !699 ; 2 uses
  %i.ds = icmp slt i32 %i.q, %i.dr
  br i1 %i.ds, label %.critedge.i87, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dt = icmp sgt i32 %i.q, %i.dr
  br i1 %i.dt, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i82

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i82: ; preds = %bb.x
  %i.du = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i78, i64 40
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !699
  %i.dw = icmp slt i32 %i.r, %i.dv
  br i1 %i.dw, label %.critedge.i87, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

.critedge.i87:                                    ; preds = %.thread, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i82, %bb.w, %bb.u, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i81
  %.08.lcssa.i.i.i20.i88 = phi ptr [ %i.u, %.thread ], [ %.19.i.i.i.i78, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i82 ], [ %.19.i.i.i.i78, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i81 ], [ %.19.i.i.i.i78, %bb.u ], [ %.19.i.i.i.i78, %bb.w ]
end_hunk_7
begin_hunk_8_@_ZNK7openvdb5v13_05tools6lvlset23TaperedCapsuleVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE23taperedCapsuleBottomTopMUlRfSK_RKfSM_E_clESK_SK_SM_SM_:bb.a
  store float %i.el, ptr %1, align 4, !tbaa !1119
  %i.em = load float, ptr %2, align 4, !tbaa !1119 ; 2 uses
  %i.en = fcmp olt float %i.em, %i.ei
  %i.eo = select i1 %i.en, float %i.ei, float %i.em
  store float %i.eo, ptr %2, align 4, !tbaa !1119
  br label %bb.n

bb.j:                                             ; preds = %.critedge
  %i.ep = icmp eq i32 %i.dz, 2                    ; 2 uses
  %brmerge = or i1 %or.cond.not, %i.ep
  br i1 %brmerge, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.eq = load float, ptr %i.a, align 4, !tbaa !1119
  store float %i.eq, ptr %1, align 4, !tbaa !1119
  %i.er = load float, ptr %i.b, align 4, !tbaa !1119
  store float %i.er, ptr %2, align 4, !tbaa !1119
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.es = icmp eq i32 %i.dz, 0
  br i1 %i.es, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.et = load float, ptr %2, align 4, !tbaa !1119 ; 2 uses
  %i.eu = load float, ptr %i.a, align 4, !tbaa !1119 ; 4 uses
  %i.ev = fcmp olt float %i.et, %i.eu
  %i.ew = select i1 %i.ev, float %i.eu, float %i.et
  store float %i.ew, ptr %2, align 4, !tbaa !1119
  %i.ex = load float, ptr %1, align 4, !tbaa !1119 ; 2 uses
  %i.ey = fcmp olt float %i.eu, %i.ex
  %i.ez = select i1 %i.ey, float %i.eu, float %i.ex
  store float %i.ez, ptr %1, align 4, !tbaa !1119
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.h, %bb.i, %bb.g, %bb.m, %bb.k
  %.3 = phi i1 [ true, %bb.m ], [ %i.ep, %bb.k ], [ true, %bb.h ], [ true, %bb.g ], [ true, %bb.i ], [ true, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %.critedge69

.critedge69:                                      ; preds = %bb.f, %bb.e, %bb.n
  %.4 = phi i1 [ %.3, %bb.n ], [ true, %bb.e ], [ true, %bb.f ]
  ret i1 %.4
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_05tools6lvlset23TaperedCapsuleVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE24openConeFrustumBottomTopERfSJ_RiRKfSM_(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) local_unnamed_addr #3 comdat align 2 {
bb.a:
  store i32 0, ptr %3, align 4, !tbaa !699
  %i.a = load float, ptr %4, align 4, !tbaa !1119
  %i.b = fpext float %i.a to double
  %i.c = load float, ptr %5, align 4, !tbaa !1119
  %i.d = fpext float %i.c to double
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.i = load double, ptr %i.h, align 8, !tbaa !3761 ; 2 uses
  %i.j = load <3 x double>, ptr %i.f, align 8, !tbaa !1150, !noalias !9291
  %i.k = load <4 x double>, ptr %i.g, align 8, !tbaa !1150 ; 5 uses
  %i.l = load double, ptr %i.e, align 8, !tbaa !3762 ; 2 uses
  %i.m = insertelement <3 x double> poison, double %i.b, i64 0
  %i.n = insertelement <3 x double> %i.m, double %i.d, i64 1
  %i.o = shufflevector <4 x double> %i.k, <4 x double> poison, <3 x i32> <i32 poison, i32 poison, i32 3>
  %i.p = shufflevector <3 x double> %i.n, <3 x double> %i.o, <3 x i32> <i32 0, i32 1, i32 5>
  %i.q = fsub <3 x double> %i.p, %i.j             ; 6 uses
  %i.r = shufflevector <3 x double> %i.q, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.s = shufflevector <3 x double> %i.q, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison> ; 2 uses
  %i.t = shufflevector <4 x double> %i.k, <4 x double> %i.s, <2 x i32> <i32 1, i32 5>
  %i.u = fmul <2 x double> %i.r, %i.t
  %i.v = shufflevector <3 x double> %i.q, <3 x double> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>
  %i.w = shufflevector <4 x double> %i.k, <4 x double> %i.v, <2 x i32> <i32 0, i32 5>
  %i.x = shufflevector <3 x double> %i.q, <3 x double> poison, <2 x i32> zeroinitializer
  %i.y = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.w, <2 x double> %i.x, <2 x double> %i.u)
  %i.z = shufflevector <4 x double> %i.k, <4 x double> %i.s, <2 x i32> <i32 2, i32 6>
  %i.aa = shufflevector <3 x double> %i.q, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.ab = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.z, <2 x double> %i.aa, <2 x double> %i.y) ; 2 uses
  %i.ac = fneg <2 x double> %i.ab                 ; 2 uses
  %i.ad = extractelement <2 x double> %i.ac, i64 0
  %i.ae = extractelement <4 x double> %i.k, i64 2 ; 4 uses
  %i.af = fmul double %i.ae, %i.ad
  %i.ag = extractelement <3 x double> %i.q, i64 2
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.i, double %i.ag, double %i.af) ; 6 uses
  %i.ai = extractelement <2 x double> %i.ac, i64 1
  %i.aj = fmul double %i.i, %i.ai
  %i.ak = extractelement <2 x double> %i.ab, i64 0 ; 5 uses
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.ak, double %i.aj) ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.an = load double, ptr %i.am, align 8, !tbaa !3763 ; 2 uses
  %i.ao = fcmp une double %i.an, 0.000000e+00
  br i1 %i.ao, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.ap = fneg double %i.an
  %i.aq = fmul double %i.al, %i.ap
  %i.ar = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.ah, double %i.aq) ; 2 uses
  %i.as = fcmp ult double %i.ar, 0.000000e+00
  br i1 %i.as, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.at = tail call noundef double @sqrt(double noundef %i.ar) #23 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.av = load double, ptr %i.au, align 8, !tbaa !3764 ; 2 uses
  %i.aw = fneg double %i.ah
  %i.ax = fsub double %i.at, %i.ah
  %i.ay = fmul double %i.av, %i.ax                ; 3 uses
  %i.az = fneg double %i.ay
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.az, double %i.ae, double %i.ak) ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !3759 ; 2 uses
  %i.bd = fcmp ole double %i.bc, %i.ba
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  %i.bf = load double, ptr %i.be, align 8         ; 2 uses
  %i.bg = fcmp ole double %i.ba, %i.bf
  %i.bh = select i1 %i.bd, i1 %i.bg, i1 false
  br i1 %i.bh, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bi = load i32, ptr %3, align 4, !tbaa !699
  %i.bj = add nsw i32 %i.bi, 1
  store i32 %i.bj, ptr %3, align 4, !tbaa !699
  %i.bk = fsub double %i.l, %i.ay
  %i.bl = fptrunc double %i.bk to float
  store float %i.bl, ptr %1, align 4, !tbaa !1119
  %.pre = load double, ptr %i.be, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bm = phi double [ %.pre, %bb.d ], [ %i.bf, %bb.c ]
  %i.bn = fsub double %i.aw, %i.at
  %i.bo = fmul double %i.av, %i.bn                ; 4 uses
  %i.bp = fneg double %i.bo
  %i.bq = tail call double @llvm.fmuladd.f64(double %i.bp, double %i.ae, double %i.ak) ; 2 uses
  %i.br = fcmp ole double %i.bc, %i.bq
  %i.bs = fcmp ole double %i.bq, %i.bm
  %i.bt = select i1 %i.br, i1 %i.bs, i1 false
  br i1 %i.bt, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.bu = load i32, ptr %3, align 4, !tbaa !699
  %i.bv = add nsw i32 %i.bu, 1                    ; 2 uses
  store i32 %i.bv, ptr %3, align 4, !tbaa !699
  %i.bw = icmp eq i32 %i.bv, 2
  %i.bx = fcmp ogt double %i.ay, %i.bo
  %or.cond = and i1 %i.bx, %i.bw
  br i1 %or.cond, label %.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.by = load float, ptr %1, align 4, !tbaa !1119
  store float %i.by, ptr %2, align 4, !tbaa !1119
  br label %.sink.split

bb.h:                                             ; preds = %bb.a
  %i.bz = fcmp une double %i.ah, 0.000000e+00
  br i1 %i.bz, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ca = fneg double %i.al
  %i.cb = fmul double %i.ah, 2.000000e+00
  %i.cc = fdiv double %i.ca, %i.cb                ; 2 uses
  %i.cd = fneg double %i.cc
  %i.ce = tail call double @llvm.fmuladd.f64(double %i.cd, double %i.ae, double %i.ak) ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !3759
  %i.ch = fcmp ole double %i.cg, %i.ce
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.cj = load double, ptr %i.ci, align 8
  %i.ck = fcmp ole double %i.ce, %i.cj
  %i.cl = select i1 %i.ch, i1 %i.ck, i1 false
  br i1 %i.cl, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 1, ptr %3, align 4, !tbaa !699
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.g, %bb.j
  %.sink = phi double [ %i.cc, %bb.j ], [ %i.bo, %bb.g ], [ %i.bo, %bb.f ]
  %.sink51 = phi ptr [ %1, %bb.j ], [ %1, %bb.g ], [ %2, %bb.f ]
  %i.cm = fsub double %i.l, %.sink
  %i.cn = fptrunc double %i.cm to float
  store float %i.cn, ptr %.sink51, align 4, !tbaa !1119
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.i, %bb.e, %bb.b, %bb.h
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7openvdb5v13_05tools6lvlset23TaperedCapsuleVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE10initializeIfEEbRKNS0_4math4Vec3IT_EESP_RKSM_SR_(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::function.820", align 16 ; 11 uses
  %6 = alloca %"class.openvdb::v13_0::math::Vec3.198", align 4 ; 4 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %7 = alloca %"class.openvdb::v13_0::math::Vec3.198", align 8 ; 5 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.d = load float, ptr %i.c, align 8, !tbaa !1837 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 156
  %8 = load <1 x float>, ptr %i.e, align 4
  %i.f = load float, ptr %4, align 4, !tbaa !1119
  %i.g = load float, ptr %3, align 4, !tbaa !1119
  %i.h = fcmp ugt float %i.f, %i.g                ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224
  %. = select i1 %i.h, ptr %2, ptr %1             ; 2 uses
  %.223 = select i1 %i.h, ptr %1, ptr %2          ; 2 uses
  %.sroa.0186.0.copyload = load <2 x float>, ptr %., align 4
  %.sroa.4187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %., i64 8
  %.sroa.4187.0.copyload = load float, ptr %.sroa.4187.0..sroa_idx, align 4
  %i.j = insertelement <2 x float> poison, float %i.d, i64 0
  %i.k = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.l = fdiv <2 x float> %.sroa.0186.0.copyload, %i.k ; 8 uses
  %i.m = extractelement <2 x float> %i.l, i64 1
  %i.n = extractelement <2 x float> %i.l, i64 0
  %i.o = fdiv float %.sroa.4187.0.copyload, %i.d  ; 5 uses
  store <2 x float> %i.l, ptr %i.i, align 8
  store float %i.o, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.0184.0.copyload = load <2 x float>, ptr %.223, align 4
  %.sroa.4185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.223, i64 8
  %.sroa.4185.0.copyload = load float, ptr %.sroa.4185.0..sroa_idx, align 4
  %i.p = fdiv <2 x float> %.sroa.0184.0.copyload, %i.k ; 6 uses
  %i.q = fdiv float %.sroa.4185.0.copyload, %i.d  ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 228
  store <2 x float> %i.p, ptr %i.r, align 4
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 236
  store float %i.q, ptr %.sroa.430.0..sroa_idx, align 4
  %.val = load float, ptr %4, align 4
  %.val226 = load float, ptr %3, align 4
  %i.s = select i1 %i.h, float %.val, float %.val226
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.w = fdiv float %i.s, %i.d                    ; 3 uses
  store float %i.w, ptr %i.t, align 4, !tbaa !3765
  %.val227 = load float, ptr %3, align 4
  %.val228 = load float, ptr %4, align 4
  %.pn = select i1 %i.h, float %.val227, float %.val228
  %.sink = fdiv float %.pn, %i.d                  ; 3 uses
  store float %.sink, ptr %i.u, align 8, !tbaa !3766
  %i.x = shufflevector <1 x float> %8, <1 x float> poison, <2 x i32> zeroinitializer
  %i.y = insertelement <2 x float> poison, float %i.w, i64 0
  %i.z = insertelement <2 x float> %i.y, float %.sink, i64 1
  %i.aa = fadd <2 x float> %i.x, %i.z             ; 5 uses
  %i.ab = fmul <2 x float> %i.aa, %i.aa
  %i.ac = shufflevector <2 x float> %i.aa, <2 x float> %i.ab, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.ac, ptr %i.v, align 4, !tbaa !1119
  %i.ad = extractelement <2 x float> %i.aa, i64 0 ; 3 uses
  %i.ae = fcmp ugt float %i.ad, 0.000000e+00
  br i1 %i.ae, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.af = extractelement <2 x float> %i.aa, i64 1 ; 3 uses
  %i.ag = fcmp olt float %i.af, 0.000000e+00
  br i1 %i.ag, label %bb.c, label %_ZNK7openvdb5v13_04math4Vec3IdE8unitSafeEv.exit

bb.c:                                             ; preds = %bb.b
  %i.ah = load float, ptr %4, align 4, !tbaa !1119 ; 4 uses
  %i.ai = load float, ptr %3, align 4, !tbaa !1119 ; 4 uses
  %i.aj = fcmp ole float %i.ah, %i.ai             ; 3 uses
  %i.ak = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.al = insertelement <2 x float> %i.ak, float %i.ai, i64 1
  %i.am = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.an = insertelement <2 x float> %i.am, float %i.ah, i64 1 ; 2 uses
  %i.ao = fsub <2 x float> %i.al, %i.an
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.aq = fdiv <2 x float> %i.an, %i.ap           ; 2 uses
  %i.ar = extractelement <2 x float> %i.aq, i64 0
  %i.as = extractelement <2 x float> %i.aq, i64 1
  %i.at = select i1 %i.aj, float %i.as, float %i.ar ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.au = select i1 %i.aj, ptr %1, ptr %2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 4 dereferenceable(12) %i.au, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.av = select i1 %i.aj, float %i.ai, float %i.ah
  store float %i.av, ptr %i.a, align 4, !tbaa !1119
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %.sroa.0.0.copyload4.i.i = load <2 x float>, ptr %1, align 4
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload.i.i = load float, ptr %.sroa.6.0..sroa_idx.i.i, align 4
  %i.aw = fmul float %i.at, %.sroa.6.0.copyload.i.i
  %i.ax = fsub float 1.000000e+00, %i.at          ; 2 uses
  %.sroa.0.0.copyload4.i.i124 = load <2 x float>, ptr %2, align 4
  %.sroa.6.0..sroa_idx.i.i125 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload.i.i126 = load float, ptr %.sroa.6.0..sroa_idx.i.i125, align 4
  %i.ay = fmul float %i.ax, %.sroa.6.0.copyload.i.i126
  %i.az = insertelement <2 x float> poison, float %i.at, i64 0
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bb = fmul <2 x float> %i.ba, %.sroa.0.0.copyload4.i.i
  %i.bc = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.be = fmul <2 x float> %i.bd, %.sroa.0.0.copyload4.i.i124
  %i.bf = fadd <2 x float> %i.bb, %i.be
  %i.bg = fadd float %i.aw, %i.ay
  store <2 x float> %i.bf, ptr %7, align 8
  %.sroa.214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store float %i.bg, ptr %.sroa.214.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !1119
  %i.bh = call noundef zeroext i1 @_ZN7openvdb5v13_05tools6lvlset23TaperedCapsuleVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE10initializeIfEEbRKNS0_4math4Vec3IT_EESP_RKSM_SR_(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.k

_ZNK7openvdb5v13_04math4Vec3IdE8unitSafeEv.exit:  ; preds = %bb.b
  %i.bi = fsub float %i.q, %i.o                   ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 248
  store float %i.bi, ptr %.sroa.4.0..sroa_idx, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 344
  store float %i.n, ptr %i.bm, align 8, !tbaa !3767
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 348
  store float %i.m, ptr %i.bn, align 4, !tbaa !9292
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 352
  store float %i.o, ptr %i.bo, align 8, !tbaa !3757
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 356
  store <2 x float> %i.p, ptr %i.bp, align 4, !tbaa !1119
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 364
  store float %i.q, ptr %i.bq, align 4, !tbaa !3758
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.bs = fsub <2 x float> %i.p, %i.l             ; 3 uses
  store <2 x float> %i.bs, ptr %i.br, align 4, !tbaa !1119
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 316
  store float %i.bi, ptr %i.bt, align 4, !tbaa !9293
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 252
  store <2 x float> %i.l, ptr %i.bu, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 260
  store <2 x float> %i.p, ptr %i.bv, align 4
  %i.bw = fsub <2 x float> %i.p, %i.l
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 268
  store <2 x float> %i.bw, ptr %i.bx, align 4
  %i.by = fmul <2 x float> %i.bs, %i.bs
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.cc = fsub float %i.w, %.sink                 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 332
  store float %i.cc, ptr %i.cd, align 4, !tbaa !3768
  %i.ce = fmul float %i.cc, %i.cc                 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 336
  store float %i.ce, ptr %i.cf, align 8, !tbaa !3769
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 340
  %i.ch = fpext float %i.ce to double
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.cj = fpext float %i.af to double
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.cl = fpext float %i.ad to double             ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.cn = fpext float %i.bi to double             ; 3 uses
  %i.co = fneg double %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 392
  %.sroa.5173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.cq = fpext <2 x float> %i.l to <2 x double>
  %i.cr = fpext float %i.o to double
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ct = fsub <2 x float> %i.p, %i.l             ; 5 uses
  store <2 x float> %i.ct, ptr %i.bj, align 8
  %foldExtExtBinop = fmul <2 x float> %i.ct, %i.ct
  %i.cu = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.cv = extractelement <2 x float> %i.ct, i64 0 ; 2 uses
  %i.cw = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.by) ; 4 uses
  store float %i.cw, ptr %i.bz, align 4, !tbaa !3770
  %sqrt = tail call float @llvm.sqrt.f32(float %i.cw)
  store float %sqrt, ptr %i.ca, align 8, !tbaa !9294
  %i.cx = fcmp une float %i.cw, 0.000000e+00
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.cv, float %i.cv, float %i.cu)
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.bi, float %i.bi, float %i.cy) ; 5 uses
  %i.da = insertelement <2 x float> poison, float %i.cw, i64 0
  %i.db = insertelement <2 x float> %i.da, float %i.cz, i64 1
  %i.dc = fdiv <2 x float> splat (float 1.000000e+00), %i.db ; 2 uses
  %i.dd = extractelement <2 x float> %i.dc, i64 0
  %i.de = select i1 %i.cx, float %i.dd, float 1.000000e+00
  store float %i.de, ptr %i.cb, align 8, !tbaa !9295
  store float %i.cz, ptr %i.bk, align 4, !tbaa !3771
  %i.df = fcmp une float %i.cz, 0.000000e+00
  %i.dg = extractelement <2 x float> %i.dc, i64 1
  %i.dh = select i1 %i.df, float %i.dg, float 1.000000e+00
  store float %i.dh, ptr %i.bl, align 8, !tbaa !3772
  %i.di = fsub float %i.cz, %i.ce
  store float %i.di, ptr %i.cg, align 4, !tbaa !3773
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %i.cz) ; 2 uses
  %i.dj = insertelement <2 x float> poison, float %i.cc, i64 0
  %i.dk = insertelement <2 x float> %i.dj, float %sqrt.i, i64 1
  %i.dl = fpext <2 x float> %i.dk to <2 x double> ; 2 uses
  %i.dm = fpext float %sqrt.i to double           ; 2 uses
  %i.dn = shufflevector <2 x double> %i.dl, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.do = fdiv <2 x double> %i.dl, %i.dn          ; 2 uses
  %i.dp = fmul double %i.dm, %i.dm
  %i.dq = fdiv double %i.ch, %i.dp
  %i.dr = fsub double 1.000000e+00, %i.dq         ; 2 uses
  store double %i.dr, ptr %i.ci, align 8, !tbaa !3761
  %i.ds = extractelement <2 x double> %i.do, i64 0
  %i.dt = extractelement <2 x double> %i.do, i64 1 ; 2 uses
  %i.du = fsub double %i.dt, %i.ds                ; 2 uses
  %i.dv = fmul double %i.du, %i.cj
  store double %i.dv, ptr %i.ck, align 8, !tbaa !3759
  %i.dw = fmul double %i.du, %i.cl
  store double %i.dw, ptr %i.cm, align 8, !tbaa !3760
  %i.dx = fpext <2 x float> %i.ct to <2 x double> ; 4 uses
  %foldExtExtBinop230 = fmul <2 x double> %i.dx, %i.dx
  %i.dy = extractelement <2 x double> %foldExtExtBinop230, i64 1
  %i.dz = extractelement <2 x double> %i.dx, i64 0 ; 2 uses
  %i.ea = tail call double @llvm.fmuladd.f64(double %i.dz, double %i.dz, double %i.dy)
  %i.eb = tail call noundef double @llvm.fmuladd.f64(double %i.cn, double %i.cn, double %i.ea) ; 2 uses
  %i.ec = tail call double @llvm.fabs.f64(double %i.eb)
  %i.ed = fcmp ule double %i.ec, 1.000000e-15     ; 2 uses
  %sqrt.i155 = tail call double @llvm.sqrt.f64(double %i.eb) ; 2 uses
  %i.ee = fneg <2 x double> %i.dx
  %i.ef = insertelement <2 x double> poison, double %sqrt.i155, i64 0
  %i.eg = shufflevector <2 x double> %i.ef, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eh = fdiv <2 x double> %i.ee, %i.eg
  %i.ei = insertelement <2 x i1> poison, i1 %i.ed, i64 0
  %i.ej = shufflevector <2 x i1> %i.ei, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ek = select <2 x i1> %i.ej, <2 x double> <double -1.000000e+00, double -0.000000e+00>, <2 x double> %i.eh ; 2 uses
  %.neg193 = fdiv double %i.co, %sqrt.i155
  %i.el = select i1 %i.ed, double -0.000000e+00, double %.neg193 ; 4 uses
  store <2 x double> %i.ek, ptr %i.cp, align 8
  store double %i.el, ptr %.sroa.5173.0..sroa_idx, align 8
  %i.em = fmul double %i.dt, %i.cl                ; 2 uses
  %i.en = insertelement <2 x double> poison, double %i.em, i64 0
  %i.eo = shufflevector <2 x double> %i.en, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ep = fmul <2 x double> %i.eo, %i.ek
  %i.eq = fmul double %i.em, %i.el
  %i.er = fsub <2 x double> %i.cq, %i.ep
  %i.es = fsub double %i.cr, %i.eq
  store <2 x double> %i.er, ptr %i.cs, align 8
  %.sroa.9163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 384
  store double %i.es, ptr %.sroa.9163.0..sroa_idx, align 8
  %i.et = fadd float %i.ad, %i.o                  ; 2 uses
  %i.eu = fadd float %i.af, %i.q                  ; 2 uses
  %i.ev = fcmp olt float %i.et, %i.eu
  %.sroa.speculated = select i1 %i.ev, float %i.eu, float %i.et
  %i.ew = fpext float %.sroa.speculated to double
  %i.ex = fadd double %i.ew, 2.000000e+00
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 416
  store double %i.ex, ptr %i.ey, align 8, !tbaa !3762
  %i.ez = fmul double %i.el, %i.el
end_hunk_8
