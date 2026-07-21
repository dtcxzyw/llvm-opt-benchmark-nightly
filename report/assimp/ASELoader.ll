inline.NumInlined: 2170
inline.NumDeleted: 1074
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN6Assimp11ASEImporter25BuildUniqueRepresentationERNS_3ASE4MeshE:bb.a
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.0151.0171, i64 16
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.0151.0171, i64 112
  %i.id = mul i32 %i.ia, 3
  br label %bb.as

._crit_edge:                                      ; preds = %bb.ar, %_ZNSt6vectorIN6Assimp3ASE10BoneVertexESaIS2_EE6resizeEm.exit
  %i.ie = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI10aiVector3tIfESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.fx, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.br unwind label %bb.bx     ; 0 uses

bb.ar:                                            ; preds = %_ZN6Assimp3ASE10BoneVertexaSERKS1_.exit
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.0151.0171, i64 132 ; 2 uses
  %i.ig = add i32 %i.ia, 1                        ; 2 uses
  store i32 %i.ig, ptr %i.a, align 4
  %i.ih = load ptr, ptr %i.c, align 8
  %.not160 = icmp eq ptr %i.if, %i.ih
  br i1 %.not160, label %._crit_edge, label %.preheader162, !llvm.loop !22

bb.as:                                            ; preds = %.preheader162, %_ZN6Assimp3ASE10BoneVertexaSERKS1_.exit
  %indvars.iv = phi i64 [ 0, %.preheader162 ], [ %indvars.iv.next, %_ZN6Assimp3ASE10BoneVertexaSERKS1_.exit ] ; 5 uses
  %.164168 = phi i32 [ %.063172, %.preheader162 ], [ %i.qd, %_ZN6Assimp3ASE10BoneVertexaSERKS1_.exit ] ; 3 uses
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0151.0171, i64 %indvars.iv ; 3 uses
  %i.ij = load i32, ptr %i.ii, align 4
  %i.ik = zext i32 %i.ij to i64                   ; 2 uses
  %i.il = load ptr, ptr %i.hs, align 8
  %i.im = load ptr, ptr %1, align 8               ; 2 uses
  %i.in = ptrtoint ptr %i.il to i64
  %i.io = ptrtoint ptr %i.im to i64
  %i.ip = sub i64 %i.in, %i.io
  %i.iq = sdiv exact i64 %i.ip, 12
  %.not = icmp ugt i64 %i.iq, %i.ik
  br i1 %.not, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ir = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2IJRA35_KcRjRA2_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ir, ptr noundef nonnull align 1 dereferenceable(35) @.str.17, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(2) @.str.5)
          to label %bb.au unwind label %bb.av

bb.au:                                            ; preds = %bb.at
  invoke void @__cxa_throw(ptr nonnull %i.ir, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.dd unwind label %.loopexit.split-lp

bb.av:                                            ; preds = %bb.at
  %i.is = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ir) #22
  br label %bb.cq

.loopexit:                                        ; preds = %_ZNSt12_Vector_baseISt4pairIifESaIS1_EE11_M_allocateEm.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

.loopexit.split-lp:                               ; preds = %bb.au, %bb.bm
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.aw:                                            ; preds = %bb.as
  %i.it = getelementptr inbounds nuw [12 x i8], ptr %i.im, i64 %i.ik
  %i.iu = zext i32 %.164168 to i64                ; 13 uses
  %i.iv = load ptr, ptr %2, align 8
  %i.iw = getelementptr inbounds nuw [12 x i8], ptr %i.iv, i64 %i.iu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.iw, ptr noundef nonnull align 4 dereferenceable(12) %i.it, i64 12, i1 false)
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %indvars.iv ; 8 uses
  %i.ix = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.iy = load ptr, ptr %i.y, align 8
  %i.iz = icmp eq ptr %i.ix, %i.iy
  br i1 %i.iz, label %bb.bf, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ja = load i32, ptr %invariant.gep, align 4
  %i.jb = zext i32 %i.ja to i64
  %i.jc = getelementptr inbounds nuw [12 x i8], ptr %i.ix, i64 %i.jb
  %i.jd = load ptr, ptr %3, align 16
  %i.je = getelementptr inbounds nuw [12 x i8], ptr %i.jd, i64 %i.iu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.je, ptr noundef nonnull align 4 dereferenceable(12) %i.jc, i64 12, i1 false)
  %i.jf = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.jg = load ptr, ptr %i.ac, align 8
  %i.jh = icmp eq ptr %i.jf, %i.jg
  br i1 %i.jh, label %bb.bf, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 12
  %i.ji = load i32, ptr %gep.1, align 4
  %i.jj = zext i32 %i.ji to i64
  %i.jk = getelementptr inbounds nuw [12 x i8], ptr %i.jf, i64 %i.jj
  %i.jl = load ptr, ptr %i.ht, align 8
  %i.jm = getelementptr inbounds nuw [12 x i8], ptr %i.jl, i64 %i.iu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.jm, ptr noundef nonnull align 4 dereferenceable(12) %i.jk, i64 12, i1 false)
  %i.jn = load ptr, ptr %i.ar, align 8            ; 2 uses
  %i.jo = load ptr, ptr %i.at, align 8
  %i.jp = icmp eq ptr %i.jn, %i.jo
  br i1 %i.jp, label %bb.bf, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 24
  %i.jq = load i32, ptr %gep.2, align 4
  %i.jr = zext i32 %i.jq to i64
  %i.js = getelementptr inbounds nuw [12 x i8], ptr %i.jn, i64 %i.jr
  %i.jt = load ptr, ptr %i.hu, align 16
  %i.ju = getelementptr inbounds nuw [12 x i8], ptr %i.jt, i64 %i.iu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ju, ptr noundef nonnull align 4 dereferenceable(12) %i.js, i64 12, i1 false)
  %i.jv = load ptr, ptr %i.bi, align 8            ; 2 uses
  %i.jw = load ptr, ptr %i.bk, align 8
  %i.jx = icmp eq ptr %i.jv, %i.jw
  br i1 %i.jx, label %bb.bf, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %gep.3 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 36
  %i.jy = load i32, ptr %gep.3, align 4
  %i.jz = zext i32 %i.jy to i64
  %i.ka = getelementptr inbounds nuw [12 x i8], ptr %i.jv, i64 %i.jz
  %i.kb = load ptr, ptr %i.hv, align 8
  %i.kc = getelementptr inbounds nuw [12 x i8], ptr %i.kb, i64 %i.iu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.kc, ptr noundef nonnull align 4 dereferenceable(12) %i.ka, i64 12, i1 false)
  %i.kd = load ptr, ptr %i.bz, align 8            ; 2 uses
  %i.ke = load ptr, ptr %i.cb, align 8
  %i.kf = icmp eq ptr %i.kd, %i.ke
  br i1 %i.kf, label %bb.bf, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %gep.4 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 48
  %i.kg = load i32, ptr %gep.4, align 4
  %i.kh = zext i32 %i.kg to i64
  %i.ki = getelementptr inbounds nuw [12 x i8], ptr %i.kd, i64 %i.kh
  %i.kj = load ptr, ptr %i.hw, align 16
  %i.kk = getelementptr inbounds nuw [12 x i8], ptr %i.kj, i64 %i.iu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.kk, ptr noundef nonnull align 4 dereferenceable(12) %i.ki, i64 12, i1 false)
  %i.kl = load ptr, ptr %i.cq, align 8            ; 2 uses
  %i.km = load ptr, ptr %i.cs, align 8
  %i.kn = icmp eq ptr %i.kl, %i.km
  br i1 %i.kn, label %bb.bf, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %gep.5 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 60
  %i.ko = load i32, ptr %gep.5, align 4
  %i.kp = zext i32 %i.ko to i64
  %i.kq = getelementptr inbounds nuw [12 x i8], ptr %i.kl, i64 %i.kp
  %i.kr = load ptr, ptr %i.hx, align 8
  %i.ks = getelementptr inbounds nuw [12 x i8], ptr %i.kr, i64 %i.iu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ks, ptr noundef nonnull align 4 dereferenceable(12) %i.kq, i64 12, i1 false)
  %i.kt = load ptr, ptr %i.dh, align 8            ; 2 uses
  %i.ku = load ptr, ptr %i.dj, align 8
  %i.kv = icmp eq ptr %i.kt, %i.ku
  br i1 %i.kv, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %gep.6 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 72
  %i.kw = load i32, ptr %gep.6, align 4
  %i.kx = zext i32 %i.kw to i64
  %i.ky = getelementptr inbounds nuw [12 x i8], ptr %i.kt, i64 %i.kx
  %i.kz = load ptr, ptr %i.hy, align 16
  %i.la = getelementptr inbounds nuw [12 x i8], ptr %i.kz, i64 %i.iu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.la, ptr noundef nonnull align 4 dereferenceable(12) %i.ky, i64 12, i1 false)
  %i.lb = load ptr, ptr %i.dy, align 8            ; 2 uses
  %i.lc = load ptr, ptr %i.ea, align 8
  %i.ld = icmp eq ptr %i.lb, %i.lc
  br i1 %i.ld, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %gep.7 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 84
  %i.le = load i32, ptr %gep.7, align 4
  %i.lf = zext i32 %i.le to i64
  %i.lg = getelementptr inbounds nuw [12 x i8], ptr %i.lb, i64 %i.lf
  %i.lh = load ptr, ptr %i.hz, align 8
  %i.li = getelementptr inbounds nuw [12 x i8], ptr %i.lh, i64 %i.iu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.li, ptr noundef nonnull align 4 dereferenceable(12) %i.lg, i64 12, i1 false)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw
  %i.lj = load ptr, ptr %i.ep, align 8            ; 2 uses
  %i.lk = load ptr, ptr %i.er, align 8
  %i.ll = icmp eq ptr %i.lj, %i.lk
  br i1 %i.ll, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %indvars.iv
  %i.ln = load i32, ptr %i.lm, align 4
  %i.lo = zext i32 %i.ln to i64
  %i.lp = getelementptr inbounds nuw [16 x i8], ptr %i.lj, i64 %i.lo
  %i.lq = load ptr, ptr %4, align 8
  %i.lr = getelementptr inbounds nuw [16 x i8], ptr %i.lq, i64 %i.iu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.lr, ptr noundef nonnull align 4 dereferenceable(16) %i.lp, i64 16, i1 false)
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.ls = load ptr, ptr %i.fx, align 8            ; 2 uses
  %i.lt = load ptr, ptr %i.fz, align 8
  %i.lu = icmp eq ptr %i.ls, %i.lt
  br i1 %i.lu, label %_ZN10aiVector3tIfE9NormalizeEv.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.lv = trunc nuw nsw i64 %indvars.iv to i32
  %i.lw = add i32 %i.id, %i.lv
  %i.lx = zext i32 %i.lw to i64
  %i.ly = getelementptr inbounds nuw [12 x i8], ptr %i.ls, i64 %i.lx
  %i.lz = load ptr, ptr %5, align 8
  %i.ma = getelementptr inbounds nuw [12 x i8], ptr %i.lz, i64 %i.iu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ma, ptr noundef nonnull align 4 dereferenceable(12) %i.ly, i64 12, i1 false)
  %i.mb = load ptr, ptr %5, align 8
  %i.mc = getelementptr inbounds nuw [12 x i8], ptr %i.mb, i64 %i.iu ; 4 uses
  %7 = load float, ptr %i.mc, align 4             ; 3 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.mc, i64 4 ; 2 uses
  %9 = load float, ptr %8, align 4                ; 3 uses
  %10 = fmul float %9, %9
  %i.md = call float @llvm.fmuladd.f32(float %7, float %7, float %10)
  %i.me = getelementptr inbounds nuw i8, ptr %i.mc, i64 8 ; 2 uses
  %i.mf = load float, ptr %i.me, align 4          ; 3 uses
  %i.mg = call noundef float @llvm.fmuladd.f32(float %i.mf, float %i.mf, float %i.md) ; 2 uses
  %i.mh = fcmp oeq float %i.mg, 0.000000e+00
  br i1 %i.mh, label %_ZN10aiVector3tIfE9NormalizeEv.exit, label %_ZN10aiVector3tIfEdVEf.exit.i

_ZN10aiVector3tIfEdVEf.exit.i:                    ; preds = %bb.bi
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.mg)
  %i.mi = fdiv float 1.000000e+00, %sqrt.i.i      ; 3 uses
  %11 = fmul float %7, %i.mi
  store float %11, ptr %i.mc, align 4
  %12 = fmul float %9, %i.mi
  store float %12, ptr %8, align 4
  %i.mj = fmul float %i.mf, %i.mi
  store float %i.mj, ptr %i.me, align 4
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit

_ZN10aiVector3tIfE9NormalizeEv.exit:              ; preds = %_ZN10aiVector3tIfEdVEf.exit.i, %bb.bi, %bb.bh
  %i.mk = load i32, ptr %i.ii, align 4
  %i.ml = zext i32 %i.mk to i64                   ; 2 uses
  %i.mm = load ptr, ptr %i.hh, align 8
  %i.mn = load ptr, ptr %i.hf, align 8            ; 2 uses
  %i.mo = ptrtoint ptr %i.mm to i64
  %i.mp = ptrtoint ptr %i.mn to i64
  %i.mq = sub i64 %i.mo, %i.mp
  %i.mr = sdiv exact i64 %i.mq, 24
  %i.ms = icmp ugt i64 %i.mr, %i.ml
  br i1 %i.ms, label %bb.bj, label %_ZN6Assimp3ASE10BoneVertexaSERKS1_.exit

bb.bj:                                            ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit
  %i.mt = getelementptr inbounds nuw [24 x i8], ptr %i.mn, i64 %i.ml ; 4 uses
  %i.mu = getelementptr inbounds nuw [24 x i8], ptr %.pr.i, i64 %i.iu ; 8 uses
  %.not.i147 = icmp eq ptr %i.mt, %i.mu
  br i1 %.not.i147, label %_ZN6Assimp3ASE10BoneVertexaSERKS1_.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mt, i64 8 ; 2 uses
  %i.mw = load ptr, ptr %i.mv, align 8            ; 4 uses
  %i.mx = load ptr, ptr %i.mt, align 8            ; 17 uses
  %i.my = ptrtoint ptr %i.mw to i64               ; 2 uses
  %i.mz = ptrtoint ptr %i.mx to i64               ; 2 uses
  %i.na = sub i64 %i.my, %i.mz                    ; 7 uses
  %i.nb = ashr exact i64 %i.na, 3                 ; 8 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mu, i64 16 ; 2 uses
  %i.nd = load ptr, ptr %i.nc, align 8
  %i.ne = load ptr, ptr %i.mu, align 8            ; 16 uses
  %i.nf = ptrtoint ptr %i.nd to i64
  %i.ng = ptrtoint ptr %i.ne to i64               ; 2 uses
  %i.nh = sub i64 %i.nf, %i.ng                    ; 2 uses
  %i.ni = icmp ugt i64 %i.na, %i.nh
  br i1 %i.ni, label %bb.bl, label %bb.bo

bb.bl:                                            ; preds = %bb.bk
  %i.nj = icmp ugt i64 %i.nb, 1152921504606846975
  br i1 %i.nj, label %bb.bm, label %_ZNSt12_Vector_baseISt4pairIifESaIS1_EE11_M_allocateEm.exit.i.i, !prof !23

bb.bm:                                            ; preds = %bb.bl
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc149 unwind label %.loopexit.split-lp

.noexc149:                                        ; preds = %bb.bm
  unreachable

_ZNSt12_Vector_baseISt4pairIifESaIS1_EE11_M_allocateEm.exit.i.i: ; preds = %bb.bl
  %i.nk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.na) #25
          to label %.noexc150 unwind label %.loopexit ; 3 uses

.noexc150:                                        ; preds = %_ZNSt12_Vector_baseISt4pairIifESaIS1_EE11_M_allocateEm.exit.i.i
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.mx, %i.mw
  br i1 %.not7.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIifESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit.i, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %.noexc150
  %i.nl = add i64 %i.my, -8
  %i.nm = sub i64 %i.nl, %i.mz
  %i.nn = and i64 %i.nm, -8
  %i.no = add i64 %i.nn, 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.nk, ptr align 4 %i.mx, i64 %i.no, i1 false)
  br label %_ZNSt6vectorISt4pairIifESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit.i

_ZNSt6vectorISt4pairIifESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit.i: ; preds = %.lr.ph.i.i.i.i.preheader.i.i, %.noexc150
  %.not.i.i148 = icmp eq ptr %i.ne, null
  br i1 %.not.i.i148, label %_ZNSt12_Vector_baseISt4pairIifESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt6vectorISt4pairIifESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ne, i64 noundef %i.nh) #23
  br label %_ZNSt12_Vector_baseISt4pairIifESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseISt4pairIifESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.bn, %_ZNSt6vectorISt4pairIifESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit.i
  store ptr %i.nk, ptr %i.mu, align 8
  %i.np = getelementptr inbounds nuw i8, ptr %i.nk, i64 %i.na
  store ptr %i.np, ptr %i.nc, align 8
  br label %_ZSt22__uninitialized_copy_aIPSt4pairIifES2_S1_ET0_T_S4_S3_RSaIT1_E.exit.i

bb.bo:                                            ; preds = %bb.bk
  %i.nq = getelementptr inbounds nuw i8, ptr %i.mu, i64 8 ; 2 uses
  %i.nr = load ptr, ptr %i.nq, align 8            ; 3 uses
  %i.ns = ptrtoint ptr %i.nr to i64
  %i.nt = sub i64 %i.ns, %i.ng                    ; 4 uses
  %.not24.i = icmp ult i64 %i.nt, %i.na
  br i1 %.not24.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.nu = icmp sgt i64 %i.nb, 0
  br i1 %i.nu, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZSt22__uninitialized_copy_aIPSt4pairIifES2_S1_ET0_T_S4_S3_RSaIT1_E.exit.i

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.bp
  %min.iters.check313 = icmp ult i64 %i.nb, 4
  br i1 %min.iters.check313, label %.lr.ph.i.i.i.i.i.i.preheader343, label %vector.memcheck306

vector.memcheck306:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %scevgep307 = getelementptr i8, ptr %i.ne, i64 %i.na
  %bound0309 = icmp ult ptr %i.ne, %i.mw
  %bound1310 = icmp ult ptr %i.mx, %scevgep307
  %found.conflict311 = and i1 %bound0309, %bound1310
  br i1 %found.conflict311, label %.lr.ph.i.i.i.i.i.i.preheader343, label %vector.ph314

vector.ph314:                                     ; preds = %vector.memcheck306
  %n.vec316 = and i64 %i.nb, 9223372036854775804  ; 3 uses
  %i.nv = and i64 %i.nb, 3
  %i.nw = shl i64 %n.vec316, 3                    ; 2 uses
  %i.nx = getelementptr i8, ptr %i.ne, i64 %i.nw
  %i.ny = getelementptr i8, ptr %i.mx, i64 %i.nw
  br label %vector.body317

vector.body317:                                   ; preds = %vector.body317, %vector.ph314
  %index318 = phi i64 [ 0, %vector.ph314 ], [ %index.next331, %vector.body317 ] ; 2 uses
  %i.nz = shl i64 %index318, 3                    ; 3 uses
  %i.oa = or disjoint i64 %i.nz, 16               ; 2 uses
  %next.gep319 = getelementptr i8, ptr %i.ne, i64 %i.nz
  %next.gep320 = getelementptr i8, ptr %i.ne, i64 %i.oa
  %next.gep321 = getelementptr i8, ptr %i.mx, i64 %i.nz
  %next.gep322 = getelementptr i8, ptr %i.mx, i64 %i.oa
  %wide.vec323337 = load <4 x float>, ptr %next.gep321, align 4, !alias.scope !24
  %wide.vec326338 = load <4 x float>, ptr %next.gep322, align 4, !alias.scope !24
  store <4 x float> %wide.vec323337, ptr %next.gep319, align 4, !alias.scope !27, !noalias !24
  store <4 x float> %wide.vec326338, ptr %next.gep320, align 4, !alias.scope !27, !noalias !24
  %index.next331 = add nuw i64 %index318, 4       ; 2 uses
  %i.ob = icmp eq i64 %index.next331, %n.vec316
  br i1 %i.ob, label %middle.block332, label %vector.body317, !llvm.loop !29

middle.block332:                                  ; preds = %vector.body317
  %cmp.n333 = icmp eq i64 %i.nb, %n.vec316
  br i1 %cmp.n333, label %_ZSt22__uninitialized_copy_aIPSt4pairIifES2_S1_ET0_T_S4_S3_RSaIT1_E.exit.i, label %.lr.ph.i.i.i.i.i.i.preheader343

.lr.ph.i.i.i.i.i.i.preheader343:                  ; preds = %vector.memcheck306, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block332
  %.012.i.i.i.i.i.i.ph = phi i64 [ %i.nb, %vector.memcheck306 ], [ %i.nb, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.nv, %middle.block332 ]
  %.0811.i.i.i.i.i.i.ph = phi ptr [ %i.ne, %vector.memcheck306 ], [ %i.ne, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.nx, %middle.block332 ]
  %.0910.i.i.i.i.i.i.ph = phi ptr [ %i.mx, %vector.memcheck306 ], [ %i.mx, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ny, %middle.block332 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader343, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.oi, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader343 ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.oh, %.lr.ph.i.i.i.i.i.i ], [ %.0811.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader343 ] ; 3 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.og, %.lr.ph.i.i.i.i.i.i ], [ %.0910.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader343 ] ; 3 uses
  %i.oc = load i32, ptr %.0910.i.i.i.i.i.i, align 4
  store i32 %i.oc, ptr %.0811.i.i.i.i.i.i, align 4
  %i.od = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 4
  %i.oe = load float, ptr %i.od, align 4
  %i.of = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 4
  store float %i.oe, ptr %i.of, align 4
  %i.og = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 8
  %i.oh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 8
  %i.oi = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.oj = icmp samesign ugt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.oj, label %.lr.ph.i.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPSt4pairIifES2_S1_ET0_T_S4_S3_RSaIT1_E.exit.i, !llvm.loop !32

bb.bq:                                            ; preds = %bb.bo
  %i.ok = ashr exact i64 %i.nt, 3                 ; 7 uses
  %i.ol = icmp sgt i64 %i.ok, 0
  br i1 %i.ol, label %.lr.ph.i.i.i.i.i26.i.preheader, label %_ZSt4copyIPSt4pairIifES2_ET0_T_S4_S3_.exit.i

.lr.ph.i.i.i.i.i26.i.preheader:                   ; preds = %bb.bq
  %min.iters.check285 = icmp ult i64 %i.ok, 4
  br i1 %min.iters.check285, label %.lr.ph.i.i.i.i.i26.i.preheader342, label %vector.memcheck282

vector.memcheck282:                               ; preds = %.lr.ph.i.i.i.i.i26.i.preheader
  %scevgep283 = getelementptr i8, ptr %i.mx, i64 %i.nt
  %bound0 = icmp ult ptr %i.ne, %scevgep283
  %bound1 = icmp ult ptr %i.mx, %i.nr
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i26.i.preheader342, label %vector.ph286

vector.ph286:                                     ; preds = %vector.memcheck282
  %n.vec288 = and i64 %i.ok, 9223372036854775804  ; 3 uses
  %i.om = and i64 %i.ok, 3
  %i.on = shl i64 %n.vec288, 3                    ; 2 uses
  %i.oo = getelementptr i8, ptr %i.ne, i64 %i.on
  %i.op = getelementptr i8, ptr %i.mx, i64 %i.on
  br label %vector.body289

vector.body289:                                   ; preds = %vector.body289, %vector.ph286
  %index290 = phi i64 [ 0, %vector.ph286 ], [ %index.next300, %vector.body289 ] ; 2 uses
  %i.oq = shl i64 %index290, 3                    ; 3 uses
  %i.or = or disjoint i64 %i.oq, 16               ; 2 uses
  %next.gep291 = getelementptr i8, ptr %i.ne, i64 %i.oq
  %next.gep292 = getelementptr i8, ptr %i.ne, i64 %i.or
  %next.gep293 = getelementptr i8, ptr %i.mx, i64 %i.oq
  %next.gep294 = getelementptr i8, ptr %i.mx, i64 %i.or
  %wide.vec339 = load <4 x float>, ptr %next.gep293, align 4, !alias.scope !33
  %wide.vec296340 = load <4 x float>, ptr %next.gep294, align 4, !alias.scope !33
  store <4 x float> %wide.vec339, ptr %next.gep291, align 4, !alias.scope !36, !noalias !33
  store <4 x float> %wide.vec296340, ptr %next.gep292, align 4, !alias.scope !36, !noalias !33
  %index.next300 = add nuw i64 %index290, 4       ; 2 uses
  %i.os = icmp eq i64 %index.next300, %n.vec288
  br i1 %i.os, label %middle.block301, label %vector.body289, !llvm.loop !38

middle.block301:                                  ; preds = %vector.body289
  %cmp.n302 = icmp eq i64 %i.ok, %n.vec288
  br i1 %cmp.n302, label %_ZSt4copyIPSt4pairIifES2_ET0_T_S4_S3_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i26.i.preheader342

.lr.ph.i.i.i.i.i26.i.preheader342:                ; preds = %vector.memcheck282, %.lr.ph.i.i.i.i.i26.i.preheader, %middle.block301
  %.012.i.i.i.i.i27.i.ph = phi i64 [ %i.ok, %vector.memcheck282 ], [ %i.ok, %.lr.ph.i.i.i.i.i26.i.preheader ], [ %i.om, %middle.block301 ]
  %.0811.i.i.i.i.i28.i.ph = phi ptr [ %i.ne, %vector.memcheck282 ], [ %i.ne, %.lr.ph.i.i.i.i.i26.i.preheader ], [ %i.oo, %middle.block301 ]
end_hunk_0
begin_hunk_1_@_Z34ComputeNormalsWithSmoothingsGroupsIN6Assimp3ASE4FaceEEvR23MeshWithSmoothingGroupsIT_E:bb.a
  %i.dx = load ptr, ptr %i.v, align 8
  %.not231 = icmp eq ptr %i.dw, %i.dx
  br i1 %.not231, label %._crit_edge233, label %.preheader

.preheader:                                       ; preds = %bb.f, %bb.j
  %.sroa.0166.0232 = phi ptr [ %i.er, %bb.j ], [ %i.dw, %bb.f ] ; 5 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0166.0232, i64 12 ; 3 uses
  %i.dz = load i32, ptr %.sroa.0166.0232, align 4 ; 2 uses
  %i.ea = zext i32 %i.dz to i64
  %i.eb = load ptr, ptr %0, align 8
  %i.ec = getelementptr inbounds nuw [12 x i8], ptr %i.eb, i64 %i.ea
  %i.ed = load i32, ptr %i.dy, align 4
  invoke void @_ZN6Assimp13SGSpatialSort3AddERK10aiVector3tIfEjj(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 4 dereferenceable(12) %i.ec, i32 noundef %i.dz, i32 noundef %i.ed)
          to label %bb.h unwind label %bb.k

._crit_edge233:                                   ; preds = %bb.j, %bb.f
  invoke void @_ZN6Assimp13SGSpatialSort7PrepareEv(ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %bb.l unwind label %bb.n

bb.g:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.h:                                             ; preds = %.preheader
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0166.0232, i64 4
  %i.eg = load i32, ptr %i.ef, align 4            ; 2 uses
  %i.eh = zext i32 %i.eg to i64
  %i.ei = load ptr, ptr %0, align 8
  %i.ej = getelementptr inbounds nuw [12 x i8], ptr %i.ei, i64 %i.eh
  %i.ek = load i32, ptr %i.dy, align 4
  invoke void @_ZN6Assimp13SGSpatialSort3AddERK10aiVector3tIfEjj(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 4 dereferenceable(12) %i.ej, i32 noundef %i.eg, i32 noundef %i.ek)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.0166.0232, i64 8
  %i.em = load i32, ptr %i.el, align 4            ; 2 uses
  %i.en = zext i32 %i.em to i64
  %i.eo = load ptr, ptr %0, align 8
  %i.ep = getelementptr inbounds nuw [12 x i8], ptr %i.eo, i64 %i.en
  %i.eq = load i32, ptr %i.dy, align 4
  invoke void @_ZN6Assimp13SGSpatialSort3AddERK10aiVector3tIfEjj(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 4 dereferenceable(12) %i.ep, i32 noundef %i.em, i32 noundef %i.eq)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.0166.0232, i64 132 ; 2 uses
  %i.es = load ptr, ptr %i.v, align 8
  %.not = icmp eq ptr %i.er, %i.es
  br i1 %.not, label %._crit_edge233, label %.preheader, !llvm.loop !132

bb.k:                                             ; preds = %bb.i, %bb.h, %.preheader
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit127

bb.l:                                             ; preds = %._crit_edge233
  %i.eu = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ev = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i.i114 = icmp eq ptr %i.eu, %i.ev
  br i1 %.not.i.i114, label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = sub i64 %i.ew, %i.ex
  %i.ez = sdiv exact i64 %i.ey, 12
  %i.fa = add nsw i64 %i.ez, 63                   ; 2 uses
  %i.fb = lshr i64 %i.fa, 3
  %i.fc = and i64 %i.fb, 2305843009213693944
  %i.fd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fc) #25
          to label %.noexc115 unwind label %bb.o  ; 3 uses

.noexc115:                                        ; preds = %bb.m
  %i.fe = lshr i64 %i.fa, 6                       ; 2 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.fe
  %.idx.i = shl nuw nsw i64 %i.fe, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.fd, i8 0, i64 %.idx.i, i1 false)
  br label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit

_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit:            ; preds = %.noexc115, %bb.l
  %.sroa.0157.0 = phi ptr [ null, %bb.l ], [ %i.fd, %.noexc115 ] ; 10 uses
  %.sroa.15163.0 = phi ptr [ null, %bb.l ], [ %i.ff, %.noexc115 ] ; 4 uses
  %i.fg = load ptr, ptr %i.u, align 8             ; 2 uses
  %i.fh = load ptr, ptr %i.v, align 8
  %.not208249 = icmp eq ptr %i.fg, %i.fh
  br i1 %.not208249, label %._crit_edge252, label %.lr.ph251

.lr.ph251:                                        ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %i.fi = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %bb.p

._crit_edge252:                                   ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %i.fk = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI10aiVector3tIfESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.ac unwind label %bb.ag     ; 0 uses

bb.n:                                             ; preds = %._crit_edge233
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit127

bb.o:                                             ; preds = %bb.m
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit127

bb.p:                                             ; preds = %.lr.ph251, %_ZNSt6vectorIjSaIjEED2Ev.exit
  %.sroa.0152.0250 = phi ptr [ %i.fg, %.lr.ph251 ], [ %i.ga, %_ZNSt6vectorIjSaIjEED2Ev.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.0152.0250, i64 12 ; 3 uses
  %i.fo = load i32, ptr %.sroa.0152.0250, align 4 ; 2 uses
  %i.fp = zext i32 %i.fo to i64                   ; 2 uses
  %i.fq = lshr i32 %i.fo, 6
  %.zext = zext nneg i32 %i.fq to i64
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0157.0, i64 %.zext
  %i.fs = and i64 %i.fp, 63
  %i.ft = shl nuw i64 1, %i.fs
  %i.fu = load i64, ptr %i.fr, align 8
  %i.fv = and i64 %i.ft, %i.fu
  %.not209 = icmp eq i64 %i.fv, 0
  br i1 %.not209, label %bb.r, label %.loopexit

bb.q:                                             ; preds = %.loopexit.2
  %i.fw = load ptr, ptr %i.fj, align 8
  %i.fx = ptrtoint ptr %i.fw to i64
  %i.fy = ptrtoint ptr %i.li to i64
  %i.fz = sub i64 %i.fx, %i.fy
  call void @_ZdlPvm(ptr noundef nonnull %i.li, i64 noundef %i.fz) #23
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %.loopexit.2, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.0152.0250, i64 132 ; 2 uses
  %i.gb = load ptr, ptr %i.v, align 8
  %.not208 = icmp eq ptr %i.ga, %i.gb
  br i1 %.not208, label %._crit_edge252, label %bb.p, !llvm.loop !133

bb.r:                                             ; preds = %bb.p
  %i.gc = load ptr, ptr %0, align 8
  %i.gd = getelementptr inbounds nuw [12 x i8], ptr %i.gc, i64 %i.fp
  %i.ge = load i32, ptr %i.fn, align 4
  invoke void @_ZNK6Assimp13SGSpatialSort13FindPositionsERK10aiVector3tIfEjfRSt6vectorIjSaIjEEb(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 4 dereferenceable(12) %i.gd, i32 noundef %i.ge, float noundef %sqrt.i, ptr noundef nonnull align 8 dereferenceable(24) %4, i1 noundef zeroext false)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.gf = load ptr, ptr %4, align 8               ; 3 uses
  %i.gg = load ptr, ptr %i.fi, align 8            ; 2 uses
  %.not210234 = icmp eq ptr %i.gf, %i.gg          ; 2 uses
  br i1 %.not210234, label %._crit_edge241, label %.lr.ph240

.lr.ph240:                                        ; preds = %bb.s
  %i.gh = load ptr, ptr %i.a, align 8
  br label %bb.u

._crit_edge241:                                   ; preds = %bb.u, %bb.s
  %.sroa.14.0.lcssa = phi float [ 0.000000e+00, %bb.s ], [ %i.hd, %bb.u ] ; 4 uses
  %i.gi = phi <2 x float> [ zeroinitializer, %bb.s ], [ %i.ha, %bb.u ] ; 5 uses
  %foldExtExtBinop326 = fmul <2 x float> %i.gi, %i.gi
  %i.gj = extractelement <2 x float> %foldExtExtBinop326, i64 1
  %i.gk = extractelement <2 x float> %i.gi, i64 0 ; 2 uses
  %i.gl = call float @llvm.fmuladd.f32(float %i.gk, float %i.gk, float %i.gj)
  %i.gm = call noundef float @llvm.fmuladd.f32(float %.sroa.14.0.lcssa, float %.sroa.14.0.lcssa, float %i.gl) ; 2 uses
  %i.gn = fcmp ogt float %i.gm, 0.000000e+00
  br i1 %i.gn, label %_ZN10aiVector3tIfEdVEf.exit.i, label %_ZN10aiVector3tIfE13NormalizeSafeEv.exit

_ZN10aiVector3tIfEdVEf.exit.i:                    ; preds = %._crit_edge241
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.gm)
  %i.go = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.gp = insertelement <2 x float> poison, float %i.go, i64 0
  %i.gq = shufflevector <2 x float> %i.gp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gr = fmul <2 x float> %i.gi, %i.gq
  %i.gs = fmul float %.sroa.14.0.lcssa, %i.go
  br label %_ZN10aiVector3tIfE13NormalizeSafeEv.exit

bb.t:                                             ; preds = %bb.y, %bb.v, %bb.r
  %i.gt = landingpad { ptr, i32 }
          cleanup
  %i.gu = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i122 = icmp eq ptr %i.gu, null
  br i1 %.not.i.i.i122, label %.thread, label %bb.ab

bb.u:                                             ; preds = %.lr.ph240, %bb.u
  %.sroa.0142.0238 = phi ptr [ %i.gf, %.lr.ph240 ], [ %i.he, %bb.u ] ; 2 uses
  %.sroa.14.0235 = phi float [ 0.000000e+00, %.lr.ph240 ], [ %i.hd, %bb.u ]
  %i.gv = phi <2 x float> [ zeroinitializer, %.lr.ph240 ], [ %i.ha, %bb.u ]
  %i.gw = load i32, ptr %.sroa.0142.0238, align 4
  %i.gx = zext i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw [12 x i8], ptr %i.gh, i64 %i.gx ; 2 uses
  %i.gz = load <2 x float>, ptr %i.gy, align 4
  %i.ha = fadd <2 x float> %i.gv, %i.gz           ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.hc = load float, ptr %i.hb, align 4
  %i.hd = fadd float %.sroa.14.0235, %i.hc        ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.0142.0238, i64 4 ; 2 uses
  %.not210 = icmp eq ptr %i.he, %i.gg
  br i1 %.not210, label %._crit_edge241, label %bb.u, !llvm.loop !134

_ZN10aiVector3tIfE13NormalizeSafeEv.exit:         ; preds = %_ZN10aiVector3tIfEdVEf.exit.i, %._crit_edge241
  %.sroa.14.1 = phi float [ %i.gs, %_ZN10aiVector3tIfEdVEf.exit.i ], [ %.sroa.14.0.lcssa, %._crit_edge241 ]
  %i.hf = phi <2 x float> [ %i.gr, %_ZN10aiVector3tIfEdVEf.exit.i ], [ %i.gi, %._crit_edge241 ] ; 2 uses
  br i1 %.not210234, label %.loopexit, label %.lr.ph247.preheader

.lr.ph247.preheader:                              ; preds = %_ZN10aiVector3tIfE13NormalizeSafeEv.exit
  %i.hg = load ptr, ptr %i.fi, align 8
  %5 = extractelement <2 x float> %i.hf, i64 0
  %6 = extractelement <2 x float> %i.hf, i64 1
  br label %.lr.ph247

.lr.ph247:                                        ; preds = %.lr.ph247.preheader, %.lr.ph247
  %.sroa.0137.0246 = phi ptr [ %i.hq, %.lr.ph247 ], [ %i.gf, %.lr.ph247.preheader ] ; 2 uses
  %i.hh = load i32, ptr %.sroa.0137.0246, align 4 ; 2 uses
  %i.hi = zext i32 %i.hh to i64                   ; 2 uses
  %i.hj = getelementptr inbounds nuw [12 x i8], ptr %i.dv, i64 %i.hi ; 3 uses
  store float %5, ptr %i.hj, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hj, i64 4
  store float %6, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  store float %.sroa.14.1, ptr %.sroa.14.0..sroa_idx, align 4
  %i.hk = lshr i32 %i.hh, 6
  %.zext207 = zext nneg i32 %i.hk to i64
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0157.0, i64 %.zext207 ; 2 uses
  %i.hm = and i64 %i.hi, 63
  %i.hn = shl nuw i64 1, %i.hm
  %i.ho = load i64, ptr %i.hl, align 8
  %i.hp = or i64 %i.ho, %i.hn
  store i64 %i.hp, ptr %i.hl, align 8
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.0137.0246, i64 4 ; 2 uses
  %.not211 = icmp eq ptr %i.hq, %i.hg
  br i1 %.not211, label %.loopexit, label %.lr.ph247, !llvm.loop !135

.loopexit:                                        ; preds = %.lr.ph247, %_ZN10aiVector3tIfE13NormalizeSafeEv.exit, %bb.p
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.0152.0250, i64 4
  %i.hs = load i32, ptr %i.hr, align 4            ; 2 uses
  %i.ht = zext i32 %i.hs to i64                   ; 2 uses
  %i.hu = lshr i32 %i.hs, 6
  %.zext.1 = zext nneg i32 %i.hu to i64
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0157.0, i64 %.zext.1
  %i.hw = and i64 %i.ht, 63
  %i.hx = shl nuw i64 1, %i.hw
  %i.hy = load i64, ptr %i.hv, align 8
  %i.hz = and i64 %i.hx, %i.hy
  %.not209.1 = icmp eq i64 %i.hz, 0
  br i1 %.not209.1, label %bb.v, label %.loopexit.1

bb.v:                                             ; preds = %.loopexit
  %i.ia = load ptr, ptr %0, align 8
  %i.ib = getelementptr inbounds nuw [12 x i8], ptr %i.ia, i64 %i.ht
  %i.ic = load i32, ptr %i.fn, align 4
  invoke void @_ZNK6Assimp13SGSpatialSort13FindPositionsERK10aiVector3tIfEjfRSt6vectorIjSaIjEEb(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 4 dereferenceable(12) %i.ib, i32 noundef %i.ic, float noundef %sqrt.i, ptr noundef nonnull align 8 dereferenceable(24) %4, i1 noundef zeroext false)
          to label %bb.w unwind label %bb.t

bb.w:                                             ; preds = %bb.v
  %i.id = load ptr, ptr %4, align 8               ; 3 uses
  %i.ie = load ptr, ptr %i.fi, align 8            ; 2 uses
  %.not210234.1 = icmp eq ptr %i.id, %i.ie        ; 2 uses
  br i1 %.not210234.1, label %._crit_edge241.1, label %.lr.ph240.1

.lr.ph240.1:                                      ; preds = %bb.w
  %i.if = load ptr, ptr %i.a, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.lr.ph240.1
  %.sroa.0142.0238.1 = phi ptr [ %i.id, %.lr.ph240.1 ], [ %i.ip, %bb.x ] ; 2 uses
  %.sroa.14.0235.1 = phi float [ 0.000000e+00, %.lr.ph240.1 ], [ %i.io, %bb.x ]
  %i.ig = phi <2 x float> [ zeroinitializer, %.lr.ph240.1 ], [ %i.il, %bb.x ]
  %i.ih = load i32, ptr %.sroa.0142.0238.1, align 4
  %i.ii = zext i32 %i.ih to i64
  %i.ij = getelementptr inbounds nuw [12 x i8], ptr %i.if, i64 %i.ii ; 2 uses
  %i.ik = load <2 x float>, ptr %i.ij, align 4
  %i.il = fadd <2 x float> %i.ig, %i.ik           ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.in = load float, ptr %i.im, align 4
  %i.io = fadd float %.sroa.14.0235.1, %i.in      ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.sroa.0142.0238.1, i64 4 ; 2 uses
  %.not210.1 = icmp eq ptr %i.ip, %i.ie
  br i1 %.not210.1, label %._crit_edge241.1, label %bb.x, !llvm.loop !134

._crit_edge241.1:                                 ; preds = %bb.x, %bb.w
  %.sroa.14.0.lcssa.1 = phi float [ 0.000000e+00, %bb.w ], [ %i.io, %bb.x ] ; 4 uses
  %i.iq = phi <2 x float> [ zeroinitializer, %bb.w ], [ %i.il, %bb.x ] ; 5 uses
  %foldExtExtBinop328 = fmul <2 x float> %i.iq, %i.iq
  %i.ir = extractelement <2 x float> %foldExtExtBinop328, i64 1
  %i.is = extractelement <2 x float> %i.iq, i64 0 ; 2 uses
  %i.it = call float @llvm.fmuladd.f32(float %i.is, float %i.is, float %i.ir)
  %i.iu = call noundef float @llvm.fmuladd.f32(float %.sroa.14.0.lcssa.1, float %.sroa.14.0.lcssa.1, float %i.it) ; 2 uses
  %i.iv = fcmp ogt float %i.iu, 0.000000e+00
  br i1 %i.iv, label %_ZN10aiVector3tIfEdVEf.exit.i.1, label %_ZN10aiVector3tIfE13NormalizeSafeEv.exit.1

_ZN10aiVector3tIfEdVEf.exit.i.1:                  ; preds = %._crit_edge241.1
  %sqrt.i.i.1 = call noundef float @llvm.sqrt.f32(float %i.iu)
  %i.iw = fdiv float 1.000000e+00, %sqrt.i.i.1    ; 2 uses
  %i.ix = insertelement <2 x float> poison, float %i.iw, i64 0
  %i.iy = shufflevector <2 x float> %i.ix, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iz = fmul <2 x float> %i.iq, %i.iy
  %i.ja = fmul float %.sroa.14.0.lcssa.1, %i.iw
  br label %_ZN10aiVector3tIfE13NormalizeSafeEv.exit.1

_ZN10aiVector3tIfE13NormalizeSafeEv.exit.1:       ; preds = %_ZN10aiVector3tIfEdVEf.exit.i.1, %._crit_edge241.1
  %.sroa.14.1.1 = phi float [ %i.ja, %_ZN10aiVector3tIfEdVEf.exit.i.1 ], [ %.sroa.14.0.lcssa.1, %._crit_edge241.1 ]
  %i.jb = phi <2 x float> [ %i.iz, %_ZN10aiVector3tIfEdVEf.exit.i.1 ], [ %i.iq, %._crit_edge241.1 ] ; 2 uses
  br i1 %.not210234.1, label %.loopexit.1, label %.lr.ph247.preheader.1

.lr.ph247.preheader.1:                            ; preds = %_ZN10aiVector3tIfE13NormalizeSafeEv.exit.1
  %i.jc = load ptr, ptr %i.fi, align 8
  %7 = extractelement <2 x float> %i.jb, i64 0
  %8 = extractelement <2 x float> %i.jb, i64 1
  br label %.lr.ph247.1

.lr.ph247.1:                                      ; preds = %.lr.ph247.1, %.lr.ph247.preheader.1
  %.sroa.0137.0246.1 = phi ptr [ %i.jm, %.lr.ph247.1 ], [ %i.id, %.lr.ph247.preheader.1 ] ; 2 uses
  %i.jd = load i32, ptr %.sroa.0137.0246.1, align 4 ; 2 uses
  %i.je = zext i32 %i.jd to i64                   ; 2 uses
  %i.jf = getelementptr inbounds nuw [12 x i8], ptr %i.dv, i64 %i.je ; 3 uses
  store float %7, ptr %i.jf, align 4
  %.sroa.9.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.jf, i64 4
  store float %8, ptr %.sroa.9.0..sroa_idx.1, align 4
  %.sroa.14.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  store float %.sroa.14.1.1, ptr %.sroa.14.0..sroa_idx.1, align 4
  %i.jg = lshr i32 %i.jd, 6
  %.zext207.1 = zext nneg i32 %i.jg to i64
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0157.0, i64 %.zext207.1 ; 2 uses
  %i.ji = and i64 %i.je, 63
  %i.jj = shl nuw i64 1, %i.ji
  %i.jk = load i64, ptr %i.jh, align 8
  %i.jl = or i64 %i.jk, %i.jj
  store i64 %i.jl, ptr %i.jh, align 8
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.0137.0246.1, i64 4 ; 2 uses
  %.not211.1 = icmp eq ptr %i.jm, %i.jc
  br i1 %.not211.1, label %.loopexit.1, label %.lr.ph247.1, !llvm.loop !135

.loopexit.1:                                      ; preds = %.lr.ph247.1, %_ZN10aiVector3tIfE13NormalizeSafeEv.exit.1, %.loopexit
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.0152.0250, i64 8
  %i.jo = load i32, ptr %i.jn, align 4            ; 2 uses
  %i.jp = zext i32 %i.jo to i64                   ; 2 uses
  %i.jq = lshr i32 %i.jo, 6
  %.zext.2 = zext nneg i32 %i.jq to i64
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0157.0, i64 %.zext.2
  %i.js = and i64 %i.jp, 63
  %i.jt = shl nuw i64 1, %i.js
  %i.ju = load i64, ptr %i.jr, align 8
  %i.jv = and i64 %i.jt, %i.ju
  %.not209.2 = icmp eq i64 %i.jv, 0
  br i1 %.not209.2, label %bb.y, label %.loopexit.1..loopexit.2_crit_edge

.loopexit.1..loopexit.2_crit_edge:                ; preds = %.loopexit.1
  %.pre = load ptr, ptr %4, align 8
  br label %.loopexit.2

bb.y:                                             ; preds = %.loopexit.1
  %i.jw = load ptr, ptr %0, align 8
  %i.jx = getelementptr inbounds nuw [12 x i8], ptr %i.jw, i64 %i.jp
  %i.jy = load i32, ptr %i.fn, align 4
  invoke void @_ZNK6Assimp13SGSpatialSort13FindPositionsERK10aiVector3tIfEjfRSt6vectorIjSaIjEEb(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 4 dereferenceable(12) %i.jx, i32 noundef %i.jy, float noundef %sqrt.i, ptr noundef nonnull align 8 dereferenceable(24) %4, i1 noundef zeroext false)
          to label %bb.z unwind label %bb.t

bb.z:                                             ; preds = %bb.y
  %i.jz = load ptr, ptr %4, align 8               ; 5 uses
  %i.ka = load ptr, ptr %i.fi, align 8            ; 3 uses
  %.not210234.2 = icmp eq ptr %i.jz, %i.ka        ; 2 uses
  br i1 %.not210234.2, label %._crit_edge241.2, label %.lr.ph240.2

.lr.ph240.2:                                      ; preds = %bb.z
  %i.kb = load ptr, ptr %i.a, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.lr.ph240.2
  %.sroa.0142.0238.2 = phi ptr [ %i.jz, %.lr.ph240.2 ], [ %i.kl, %bb.aa ] ; 2 uses
  %.sroa.14.0235.2 = phi float [ 0.000000e+00, %.lr.ph240.2 ], [ %i.kk, %bb.aa ]
  %i.kc = phi <2 x float> [ zeroinitializer, %.lr.ph240.2 ], [ %i.kh, %bb.aa ]
  %i.kd = load i32, ptr %.sroa.0142.0238.2, align 4
  %i.ke = zext i32 %i.kd to i64
  %i.kf = getelementptr inbounds nuw [12 x i8], ptr %i.kb, i64 %i.ke ; 2 uses
  %i.kg = load <2 x float>, ptr %i.kf, align 4
  %i.kh = fadd <2 x float> %i.kc, %i.kg           ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %i.kj = load float, ptr %i.ki, align 4
  %i.kk = fadd float %.sroa.14.0235.2, %i.kj      ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.0142.0238.2, i64 4 ; 2 uses
  %.not210.2 = icmp eq ptr %i.kl, %i.ka
  br i1 %.not210.2, label %._crit_edge241.2, label %bb.aa, !llvm.loop !134

._crit_edge241.2:                                 ; preds = %bb.aa, %bb.z
  %.sroa.14.0.lcssa.2 = phi float [ 0.000000e+00, %bb.z ], [ %i.kk, %bb.aa ] ; 4 uses
  %i.km = phi <2 x float> [ zeroinitializer, %bb.z ], [ %i.kh, %bb.aa ] ; 5 uses
  %foldExtExtBinop330 = fmul <2 x float> %i.km, %i.km
  %i.kn = extractelement <2 x float> %foldExtExtBinop330, i64 1
  %i.ko = extractelement <2 x float> %i.km, i64 0 ; 2 uses
  %i.kp = call float @llvm.fmuladd.f32(float %i.ko, float %i.ko, float %i.kn)
  %i.kq = call noundef float @llvm.fmuladd.f32(float %.sroa.14.0.lcssa.2, float %.sroa.14.0.lcssa.2, float %i.kp) ; 2 uses
  %i.kr = fcmp ogt float %i.kq, 0.000000e+00
  br i1 %i.kr, label %_ZN10aiVector3tIfEdVEf.exit.i.2, label %_ZN10aiVector3tIfE13NormalizeSafeEv.exit.2

_ZN10aiVector3tIfEdVEf.exit.i.2:                  ; preds = %._crit_edge241.2
  %sqrt.i.i.2 = call noundef float @llvm.sqrt.f32(float %i.kq)
  %i.ks = fdiv float 1.000000e+00, %sqrt.i.i.2    ; 2 uses
  %i.kt = insertelement <2 x float> poison, float %i.ks, i64 0
  %i.ku = shufflevector <2 x float> %i.kt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kv = fmul <2 x float> %i.km, %i.ku
  %i.kw = fmul float %.sroa.14.0.lcssa.2, %i.ks
  br label %_ZN10aiVector3tIfE13NormalizeSafeEv.exit.2

_ZN10aiVector3tIfE13NormalizeSafeEv.exit.2:       ; preds = %_ZN10aiVector3tIfEdVEf.exit.i.2, %._crit_edge241.2
  %.sroa.14.1.2 = phi float [ %i.kw, %_ZN10aiVector3tIfEdVEf.exit.i.2 ], [ %.sroa.14.0.lcssa.2, %._crit_edge241.2 ]
  %i.kx = phi <2 x float> [ %i.kv, %_ZN10aiVector3tIfEdVEf.exit.i.2 ], [ %i.km, %._crit_edge241.2 ]
  br i1 %.not210234.2, label %.loopexit.2, label %.lr.ph247.2

.lr.ph247.2:                                      ; preds = %_ZN10aiVector3tIfE13NormalizeSafeEv.exit.2, %.lr.ph247.2
  %.sroa.0137.0246.2 = phi ptr [ %i.lh, %.lr.ph247.2 ], [ %i.jz, %_ZN10aiVector3tIfE13NormalizeSafeEv.exit.2 ] ; 2 uses
  %i.ky = load i32, ptr %.sroa.0137.0246.2, align 4 ; 2 uses
  %i.kz = zext i32 %i.ky to i64                   ; 2 uses
  %i.la = getelementptr inbounds nuw [12 x i8], ptr %i.dv, i64 %i.kz ; 2 uses
  store <2 x float> %i.kx, ptr %i.la, align 4
  %.sroa.14.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  store float %.sroa.14.1.2, ptr %.sroa.14.0..sroa_idx.2, align 4
  %i.lb = lshr i32 %i.ky, 6
  %.zext207.2 = zext nneg i32 %i.lb to i64
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0157.0, i64 %.zext207.2 ; 2 uses
  %i.ld = and i64 %i.kz, 63
  %i.le = shl nuw i64 1, %i.ld
  %i.lf = load i64, ptr %i.lc, align 8
  %i.lg = or i64 %i.lf, %i.le
  store i64 %i.lg, ptr %i.lc, align 8
  %i.lh = getelementptr inbounds nuw i8, ptr %.sroa.0137.0246.2, i64 4 ; 2 uses
  %.not211.2 = icmp eq ptr %i.lh, %i.ka
  br i1 %.not211.2, label %.loopexit.2, label %.lr.ph247.2, !llvm.loop !135

.loopexit.2:                                      ; preds = %.lr.ph247.2, %.loopexit.1..loopexit.2_crit_edge, %_ZN10aiVector3tIfE13NormalizeSafeEv.exit.2
  %i.li = phi ptr [ %.pre, %.loopexit.1..loopexit.2_crit_edge ], [ %i.jz, %_ZN10aiVector3tIfE13NormalizeSafeEv.exit.2 ], [ %i.jz, %.lr.ph247.2 ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.li, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.q

bb.ab:                                            ; preds = %bb.t
  %i.lj = load ptr, ptr %i.fj, align 8
  %i.lk = ptrtoint ptr %i.lj to i64
  %i.ll = ptrtoint ptr %i.gu to i64
  %i.lm = sub i64 %i.lk, %i.ll
  call void @_ZdlPvm(ptr noundef nonnull %i.gu, i64 noundef %i.lm) #23
  br label %.thread

.thread:                                          ; preds = %bb.ab, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.ah

bb.ac:                                            ; preds = %._crit_edge252
  %.not.i.i124 = icmp eq ptr %.sroa.0157.0, null
  br i1 %.not.i.i124, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ln = ptrtoint ptr %.sroa.15163.0 to i64
  %i.lo = ptrtoint ptr %.sroa.0157.0 to i64
  %i.lp = sub i64 %i.ln, %i.lo                    ; 2 uses
  %i.lq = ashr exact i64 %i.lp, 3
  %i.lr = sub nsw i64 0, %i.lq
  %i.ls = getelementptr inbounds [8 x i8], ptr %.sroa.15163.0, i64 %i.lr
  call void @_ZdlPvm(ptr noundef %i.ls, i64 noundef %i.lp) #23
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.ac, %bb.ad
  %i.lt = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.lu = load ptr, ptr %i.lt, align 8            ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.lu, null
  br i1 %.not.i.i.i.i, label %_ZN6Assimp13SGSpatialSortD2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.lv = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.lw = load ptr, ptr %i.lv, align 8
  %i.lx = ptrtoint ptr %i.lw to i64
  %i.ly = ptrtoint ptr %i.lu to i64
  %i.lz = sub i64 %i.lx, %i.ly
  call void @_ZdlPvm(ptr noundef nonnull %i.lu, i64 noundef %i.lz) #23
  br label %_ZN6Assimp13SGSpatialSortD2Ev.exit

_ZN6Assimp13SGSpatialSortD2Ev.exit:               ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.ma = load ptr, ptr %2, align 8               ; 3 uses
  %.not.i.i.i125 = icmp eq ptr %i.ma, null
  br i1 %.not.i.i.i125, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZN6Assimp13SGSpatialSortD2Ev.exit
  %i.mb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.mc = load ptr, ptr %i.mb, align 8
  %i.md = ptrtoint ptr %i.mc to i64
  %i.me = ptrtoint ptr %i.ma to i64
  %i.mf = sub i64 %i.md, %i.me
  call void @_ZdlPvm(ptr noundef nonnull %i.ma, i64 noundef %i.mf) #23
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit:    ; preds = %_ZN6Assimp13SGSpatialSortD2Ev.exit, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void

bb.ag:                                            ; preds = %._crit_edge252
  %i.mg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i126 = icmp eq ptr %.sroa.0157.0, null
  br i1 %.not.i.i126, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit127, label %bb.ah

bb.ah:                                            ; preds = %.thread, %bb.ag
  %.pn.pn.pn204 = phi { ptr, i32 } [ %i.gt, %.thread ], [ %i.mg, %bb.ag ]
  %i.mh = ptrtoint ptr %.sroa.15163.0 to i64
  %i.mi = ptrtoint ptr %.sroa.0157.0 to i64
  %i.mj = sub i64 %i.mh, %i.mi                    ; 2 uses
  %i.mk = ashr exact i64 %i.mj, 3
  %i.ml = sub nsw i64 0, %i.mk
  %i.mm = getelementptr inbounds [8 x i8], ptr %.sroa.15163.0, i64 %i.ml
  call void @_ZdlPvm(ptr noundef %i.mm, i64 noundef %i.mj) #23
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit127

_ZNSt13_Bvector_baseISaIbEED2Ev.exit127:          ; preds = %bb.o, %bb.ag, %bb.ah, %bb.n, %bb.k
  %.pn91 = phi { ptr, i32 } [ %i.et, %bb.k ], [ %i.fl, %bb.n ], [ %i.fm, %bb.o ], [ %i.mg, %bb.ag ], [ %.pn.pn.pn204, %bb.ah ] ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.mo = load ptr, ptr %i.mn, align 8            ; 3 uses
  %.not.i.i.i.i128 = icmp eq ptr %i.mo, null
  br i1 %.not.i.i.i.i128, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit127
end_hunk_1
