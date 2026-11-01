Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/clouds?download=true
inline.NumInlined: 1459
inline.NumDeleted: 513
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN6Clouds10updateMeshEv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  %i.kq = add nsw i32 %i.jn, -1
  %i.kr = add nsw i32 %i.jj, 1                    ; 3 uses
  %i.ks = add nsw i32 %i.jn, 1                    ; 3 uses
  %i.kt = add nsw i32 %i.jj, -1
  %i.ku = insertelement <4 x float> <float poison, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, float %i.kc, i64 0 ; 3 uses
  %i.kv = insertelement <2 x float> poison, float %i.ka, i64 0
  %i.kw = insertelement <2 x float> <float 3.200000e+02, float poison>, float %i.kj, i64 1
  br label %bb.s

bb.q:                                             ; preds = %.loopexit582
  %.pre739 = load i16, ptr %i.cu, align 8, !tbaa !124 ; 2 uses
  br label %bb.at

bb.r:                                             ; preds = %._crit_edge.i.i
  %i.kx = landingpad { ptr, i32 }
          cleanup
  %i.ky = load ptr, ptr %1, align 8, !tbaa !98    ; 2 uses
  %i.kz = icmp eq ptr %i.ky, %i.ib
  br i1 %i.kz, label %.loopexit.split-lp584.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i356

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i356: ; preds = %bb.r
  %i.la = load i64, ptr %i.ib, align 8, !tbaa !65
  %i.lb = add i64 %i.la, 1
  call void @_ZdlPvm(ptr noundef %i.ky, i64 noundef %i.lb) #22
  br label %.loopexit.split-lp584.thread

.loopexit.split-lp584.thread:                     ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i356
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.cm

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.loopexit582
  %.sroa.136.0 = phi i32 [ -1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.sroa.136.6, %.loopexit582 ] ; 9 uses
  %.sroa.65.0 = phi i32 [ -1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.sroa.65.6, %.loopexit582 ] ; 9 uses
  %.0255629 = phi i32 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.sh, %.loopexit582 ] ; 2 uses
  %i.lc = phi <2 x i32> [ splat (i32 -1), %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.sg, %.loopexit582 ] ; 5 uses
  switch i32 %.0255629, label %default.unreachable [
    i32 0, label %.preheader.preheader
    i32 1, label %bb.t
    i32 2, label %bb.x
    i32 3, label %bb.aa
    i32 4, label %bb.ae
    i32 5, label %.preheader600.preheader
  ]

.preheader.preheader:                             ; preds = %bb.s
  br label %.preheader600.preheader

bb.t:                                             ; preds = %bb.s
  %i.ld = load i16, ptr %i.cu, align 8, !tbaa !124
  %i.le = zext i16 %i.ld to i32                   ; 6 uses
  %i.lf = sub nsw i32 0, %i.le                    ; 2 uses
  %.not307 = icmp sge i32 %i.jn, %i.lf
  %i.lg = icmp slt i32 %i.jn, %i.le
  %or.cond = and i1 %.not307, %i.lg
  br i1 %or.cond, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %.not308.not = icmp sle i32 %i.jj, %i.lf
  %.not309 = icmp sgt i32 %i.jj, %i.le
  %or.cond325 = or i1 %.not308.not, %.not309
  br i1 %or.cond325, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.lh = add nsw i32 %i.kt, %i.le
  %i.li = shl nuw nsw i32 %i.le, 1
  %i.lj = mul i32 %i.li, %i.lh
  %i.lk = add nsw i32 %i.le, %i.jn
  %i.ll = add i32 %i.lk, %i.lj                    ; 2 uses
  %i.lm = lshr i32 %i.ll, 6
  %.zext561 = zext nneg i32 %i.lm to i64
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0502.0, i64 %.zext561
  %i.lo = and i32 %i.ll, 63
  %i.lp = zext nneg i32 %i.lo to i64
  %i.lq = shl nuw i64 1, %i.lp
  %i.lr = load i64, ptr %i.ln, align 8, !tbaa !112
  %i.ls = and i64 %i.lr, %i.lq
  %.not581 = icmp eq i64 %i.ls, 0
  br i1 %.not581, label %bb.w, label %.loopexit582

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  br i1 %i.kl, label %.preheader588.preheader, label %.preheader600.preheader

.preheader588.preheader:                          ; preds = %bb.w
  br label %.preheader600.preheader

bb.x:                                             ; preds = %bb.s
  %i.lt = load i16, ptr %i.cu, align 8, !tbaa !124
  %i.lu = zext i16 %i.lt to i32                   ; 6 uses
  %i.lv = sub nsw i32 0, %i.lu                    ; 2 uses
  %.not303 = icmp sge i32 %i.ks, %i.lv
  %i.lw = icmp slt i32 %i.ks, %i.lu
  %or.cond326.not576.not579 = and i1 %.not303, %i.lw
  %.not304 = icmp sge i32 %i.jj, %i.lv
  %or.cond327.not577 = and i1 %.not304, %or.cond326.not576.not579
  %i.lx = icmp slt i32 %i.jj, %i.lu
  %or.cond328 = and i1 %i.lx, %or.cond327.not577
  br i1 %or.cond328, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ly = add nsw i32 %i.lu, %i.jj
  %i.lz = shl nuw nsw i32 %i.lu, 1
  %i.ma = mul i32 %i.lz, %i.ly
  %i.mb = add nsw i32 %i.ks, %i.lu
  %i.mc = add i32 %i.mb, %i.ma                    ; 2 uses
  %i.md = lshr i32 %i.mc, 6
  %.zext563 = zext nneg i32 %i.md to i64
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0502.0, i64 %.zext563
  %i.mf = and i32 %i.mc, 63
  %i.mg = zext nneg i32 %i.mf to i64
  %i.mh = shl nuw i64 1, %i.mg
  %i.mi = load i64, ptr %i.me, align 8, !tbaa !112
  %i.mj = and i64 %i.mi, %i.mh
  %.not580 = icmp eq i64 %i.mj, 0
  br i1 %.not580, label %bb.z, label %.loopexit582

bb.z:                                             ; preds = %bb.y, %bb.x
  br i1 %i.kl, label %.preheader591.preheader, label %.preheader600.preheader

.preheader591.preheader:                          ; preds = %bb.z
  br label %.preheader600.preheader

bb.aa:                                            ; preds = %bb.s
  %i.mk = load i16, ptr %i.cu, align 8, !tbaa !124
  %i.ml = zext i16 %i.mk to i32                   ; 6 uses
  %i.mm = sub nsw i32 0, %i.ml                    ; 2 uses
  %.not299 = icmp sge i32 %i.jn, %i.mm
  %i.mn = icmp slt i32 %i.jn, %i.ml
  %or.cond330 = and i1 %.not299, %i.mn
  br i1 %or.cond330, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %.not300 = icmp sge i32 %i.kr, %i.mm
  %i.mo = icmp slt i32 %i.kr, %i.ml
  %or.cond331 = and i1 %.not300, %i.mo
  br i1 %or.cond331, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.mp = add nsw i32 %i.kr, %i.ml
  %i.mq = shl nuw nsw i32 %i.ml, 1
  %i.mr = mul i32 %i.mq, %i.mp
  %i.ms = add nsw i32 %i.ml, %i.jn
  %i.mt = add i32 %i.ms, %i.mr                    ; 2 uses
  %i.mu = lshr i32 %i.mt, 6
  %.zext565 = zext nneg i32 %i.mu to i64
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0502.0, i64 %.zext565
  %i.mw = and i32 %i.mt, 63
  %i.mx = zext nneg i32 %i.mw to i64
  %i.my = shl nuw i64 1, %i.mx
  %i.mz = load i64, ptr %i.mv, align 8, !tbaa !112
  %i.na = and i64 %i.mz, %i.my
  %.not574 = icmp eq i64 %i.na, 0
  br i1 %.not574, label %bb.ad, label %.loopexit582

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  br i1 %i.kl, label %.preheader594.preheader, label %.preheader600.preheader

.preheader594.preheader:                          ; preds = %bb.ad
  br label %.preheader600.preheader

bb.ae:                                            ; preds = %bb.s
  %i.nb = load i16, ptr %i.cu, align 8, !tbaa !124
  %i.nc = zext i16 %i.nb to i32                   ; 6 uses
  %i.nd = sub nsw i32 0, %i.nc                    ; 2 uses
  %.not294.not = icmp sgt i32 %i.jn, %i.nd
  %.not295 = icmp sle i32 %i.jn, %i.nc
  %or.cond333.not572 = and i1 %.not294.not, %.not295
  %.not296 = icmp sge i32 %i.jj, %i.nd
  %or.cond334.not571 = and i1 %.not296, %or.cond333.not572
  %i.ne = icmp slt i32 %i.jj, %i.nc
  %or.cond335 = and i1 %i.ne, %or.cond334.not571
  br i1 %or.cond335, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.nf = add nsw i32 %i.nc, %i.jj
  %i.ng = shl nuw nsw i32 %i.nc, 1
  %i.nh = mul i32 %i.ng, %i.nf
  %i.ni = add nsw i32 %i.kq, %i.nc
  %i.nj = add i32 %i.ni, %i.nh                    ; 2 uses
  %i.nk = lshr i32 %i.nj, 6
  %.zext567 = zext nneg i32 %i.nk to i64
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0502.0, i64 %.zext567
  %i.nm = and i32 %i.nj, 63
  %i.nn = zext nneg i32 %i.nm to i64
  %i.no = shl nuw i64 1, %i.nn
  %i.np = load i64, ptr %i.nl, align 8, !tbaa !112
  %i.nq = and i64 %i.np, %i.no
  %.not573 = icmp eq i64 %i.nq, 0
  br i1 %.not573, label %bb.ag, label %.loopexit582

bb.ag:                                            ; preds = %bb.af, %bb.ae
  br i1 %i.kl, label %.preheader597.preheader, label %.preheader600.preheader

.preheader597.preheader:                          ; preds = %bb.ag
  br label %.preheader600.preheader

default.unreachable:                              ; preds = %bb.s
  unreachable

.preheader600.preheader:                          ; preds = %.preheader597.preheader, %bb.ag, %.preheader594.preheader, %bb.ad, %.preheader591.preheader, %bb.z, %.preheader588.preheader, %bb.w, %bb.s, %.preheader.preheader
  %.sroa.271.4 = phi nsz float [ 0.000000e+00, %.preheader.preheader ], [ 0.000000e+00, %bb.s ], [ -1.000000e+00, %bb.w ], [ 0.000000e+00, %bb.z ], [ -1.000000e+00, %bb.ad ], [ -1.000000e+00, %.preheader588.preheader ], [ 0.000000e+00, %.preheader591.preheader ], [ -1.000000e+00, %.preheader594.preheader ], [ 0.000000e+00, %.preheader597.preheader ], [ 0.000000e+00, %bb.ag ] ; 5 uses
  %.sroa.260.4 = phi nsz float [ 1.000000e+00, %.preheader.preheader ], [ -1.000000e+00, %bb.s ], [ 0.000000e+00, %bb.w ], [ 0.000000e+00, %bb.z ], [ 0.000000e+00, %bb.ad ], [ 0.000000e+00, %.preheader588.preheader ], [ 0.000000e+00, %.preheader591.preheader ], [ 0.000000e+00, %.preheader594.preheader ], [ 0.000000e+00, %.preheader597.preheader ], [ 0.000000e+00, %bb.ag ] ; 5 uses
  %.sroa.249.4 = phi nsz float [ 0.000000e+00, %.preheader.preheader ], [ 0.000000e+00, %bb.s ], [ 0.000000e+00, %bb.w ], [ 1.000000e+00, %bb.z ], [ 0.000000e+00, %bb.ad ], [ 0.000000e+00, %.preheader588.preheader ], [ 1.000000e+00, %.preheader591.preheader ], [ 0.000000e+00, %.preheader594.preheader ], [ -1.000000e+00, %.preheader597.preheader ], [ -1.000000e+00, %bb.ag ] ; 5 uses
  %.sroa.220713.0 = phi nsz float [ 3.200000e+02, %.preheader.preheader ], [ 3.200000e+02, %bb.s ], [ -3.200000e+02, %bb.w ], [ 3.200000e+02, %bb.z ], [ 3.200000e+02, %bb.ad ], [ -3.200000e+02, %.preheader588.preheader ], [ 3.200000e+02, %.preheader591.preheader ], [ 3.200000e+02, %.preheader594.preheader ], [ -3.200000e+02, %.preheader597.preheader ], [ -3.200000e+02, %bb.ag ]
  %.sroa.165.0 = phi nsz float [ 3.200000e+02, %.preheader.preheader ], [ -3.200000e+02, %bb.s ], [ -3.200000e+02, %bb.w ], [ 3.200000e+02, %bb.z ], [ 3.200000e+02, %bb.ad ], [ -3.200000e+02, %.preheader588.preheader ], [ 3.200000e+02, %.preheader591.preheader ], [ 3.200000e+02, %.preheader594.preheader ], [ -3.200000e+02, %.preheader597.preheader ], [ -3.200000e+02, %bb.ag ]
  %.sroa.136.5 = phi i32 [ %.sroa.136.0, %.preheader.preheader ], [ %i.ik, %bb.s ], [ %i.il, %bb.w ], [ %i.im, %bb.z ], [ %i.il, %bb.ad ], [ %.sroa.136.0, %.preheader588.preheader ], [ %.sroa.136.0, %.preheader591.preheader ], [ %.sroa.136.0, %.preheader594.preheader ], [ %.sroa.136.0, %.preheader597.preheader ], [ %i.im, %bb.ag ] ; 4 uses
  %.sroa.85.0 = phi nsz float [ %i.kj, %.preheader.preheader ], [ 0.000000e+00, %bb.s ], [ %i.kj, %bb.w ], [ %i.kj, %bb.z ], [ %i.kj, %bb.ad ], [ %i.kj, %.preheader588.preheader ], [ %i.kj, %.preheader591.preheader ], [ %i.kj, %.preheader594.preheader ], [ %i.kj, %.preheader597.preheader ], [ %i.kj, %bb.ag ]
  %.sroa.74669.0 = phi nsz float [ -3.200000e+02, %.preheader.preheader ], [ -3.200000e+02, %bb.s ], [ 3.200000e+02, %bb.w ], [ 3.200000e+02, %bb.z ], [ -3.200000e+02, %bb.ad ], [ 3.200000e+02, %.preheader588.preheader ], [ 3.200000e+02, %.preheader591.preheader ], [ -3.200000e+02, %.preheader594.preheader ], [ -3.200000e+02, %.preheader597.preheader ], [ -3.200000e+02, %bb.ag ]
  %.sroa.65.5 = phi i32 [ %.sroa.65.0, %.preheader.preheader ], [ %i.ik, %bb.s ], [ %i.il, %bb.w ], [ %i.im, %bb.z ], [ %i.il, %bb.ad ], [ %.sroa.65.0, %.preheader588.preheader ], [ %.sroa.65.0, %.preheader591.preheader ], [ %.sroa.65.0, %.preheader594.preheader ], [ %.sroa.65.0, %.preheader597.preheader ], [ %i.im, %bb.ag ] ; 4 uses
  %.sroa.0.0 = phi nsz float [ -3.200000e+02, %.preheader.preheader ], [ 3.200000e+02, %bb.s ], [ -3.200000e+02, %bb.w ], [ 3.200000e+02, %bb.z ], [ 3.200000e+02, %bb.ad ], [ -3.200000e+02, %.preheader588.preheader ], [ 3.200000e+02, %.preheader591.preheader ], [ 3.200000e+02, %.preheader594.preheader ], [ -3.200000e+02, %.preheader597.preheader ], [ -3.200000e+02, %bb.ag ]
  %i.nr = phi <2 x i32> [ %i.lc, %.preheader.preheader ], [ %i.ih, %bb.s ], [ %i.ii, %bb.w ], [ %i.ij, %bb.z ], [ %i.ii, %bb.ad ], [ %i.ih, %.preheader588.preheader ], [ %i.ih, %.preheader591.preheader ], [ %i.ih, %.preheader594.preheader ], [ %i.ih, %.preheader597.preheader ], [ %i.ij, %bb.ag ] ; 6 uses
  %i.ns = phi <4 x float> [ <float -3.200000e+02, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, %.preheader.preheader ], [ <float -3.200000e+02, float 0.000000e+00, float -1.000000e+00, float 0.000000e+00>, %bb.s ], [ <float -3.200000e+02, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, %bb.w ], [ <float -3.200000e+02, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, %bb.z ], [ <float 3.200000e+02, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, %bb.ad ], [ <float -3.200000e+02, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, %.preheader588.preheader ], [ <float -3.200000e+02, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, %.preheader591.preheader ], [ <float 3.200000e+02, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, %.preheader594.preheader ], [ <float 3.200000e+02, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00>, %.preheader597.preheader ], [ <float 3.200000e+02, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00>, %bb.ag ]
  %i.nt = phi <2 x float> [ %i.kw, %.preheader.preheader ], [ <float -3.200000e+02, float 0.000000e+00>, %bb.s ], [ <float 3.200000e+02, float 0.000000e+00>, %bb.w ], [ <float 3.200000e+02, float 0.000000e+00>, %bb.z ], [ <float -3.200000e+02, float 0.000000e+00>, %bb.ad ], [ <float 3.200000e+02, float 0.000000e+00>, %.preheader588.preheader ], [ <float 3.200000e+02, float 0.000000e+00>, %.preheader591.preheader ], [ <float -3.200000e+02, float 0.000000e+00>, %.preheader594.preheader ], [ <float -3.200000e+02, float 0.000000e+00>, %.preheader597.preheader ], [ <float -3.200000e+02, float 0.000000e+00>, %bb.ag ]
  %i.nu = phi <4 x float> [ <float 3.200000e+02, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, %.preheader.preheader ], [ <float 3.200000e+02, float 0.000000e+00, float -1.000000e+00, float 0.000000e+00>, %bb.s ], [ <float -3.200000e+02, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, %bb.w ], [ <float 3.200000e+02, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, %bb.z ], [ <float 3.200000e+02, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, %bb.ad ], [ <float -3.200000e+02, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, %.preheader588.preheader ], [ <float 3.200000e+02, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, %.preheader591.preheader ], [ <float 3.200000e+02, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, %.preheader594.preheader ], [ <float -3.200000e+02, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00>, %.preheader597.preheader ], [ <float -3.200000e+02, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00>, %bb.ag ]
  %i.nv = phi <4 x float> [ <float -3.200000e+02, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, %.preheader.preheader ], [ <float 3.200000e+02, float 0.000000e+00, float -1.000000e+00, float 0.000000e+00>, %bb.s ], [ <float -3.200000e+02, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, %bb.w ], [ <float -3.200000e+02, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, %bb.z ], [ <float 3.200000e+02, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, %bb.ad ], [ <float -3.200000e+02, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, %.preheader588.preheader ], [ <float -3.200000e+02, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, %.preheader591.preheader ], [ <float 3.200000e+02, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, %.preheader594.preheader ], [ <float 3.200000e+02, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00>, %.preheader597.preheader ], [ <float 3.200000e+02, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00>, %bb.ag ]
  %i.nw = load float, ptr %i.id, align 8, !tbaa !113
  %i.nx = fmul nsz float %i.nw, 1.000000e+01      ; 2 uses
  %i.ny = fadd nsz float %i.ka, %.sroa.0.0        ; 2 uses
  %i.nz = fadd nsz float %i.nx, %.sroa.85.0       ; 4 uses
  %i.oa = fadd nsz <4 x float> %i.ku, %i.nv       ; 2 uses
  %i.ob = load ptr, ptr %i.hu, align 8, !tbaa !144 ; 13 uses
  %i.oc = load ptr, ptr %i.ea, align 8, !tbaa !142
  %.not.i = icmp eq ptr %i.ob, %i.oc
  br i1 %.not.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.preheader600.preheader
  store float %i.ny, ptr %i.ob, align 4, !tbaa !24
  %.sroa.14.0..sroa_idx649 = getelementptr inbounds nuw i8, ptr %i.ob, i64 4
  store float %i.nz, ptr %.sroa.14.0..sroa_idx649, align 4, !tbaa !24
  %.sroa.23.0..sroa_idx651 = getelementptr inbounds nuw i8, ptr %i.ob, i64 8
  %2 = extractelement <4 x float> %i.oa, i64 0
  store float %2, ptr %.sroa.23.0..sroa_idx651, align 4, !tbaa !24
  %.sroa.32.0..sroa_idx653 = getelementptr inbounds nuw i8, ptr %i.ob, i64 12
  store float %.sroa.249.4, ptr %.sroa.32.0..sroa_idx653, align 4, !tbaa !24
  %.sroa.43.0..sroa_idx655 = getelementptr inbounds nuw i8, ptr %i.ob, i64 16
  store float %.sroa.260.4, ptr %.sroa.43.0..sroa_idx655, align 4, !tbaa !24
  %.sroa.54.0..sroa_idx657 = getelementptr inbounds nuw i8, ptr %i.ob, i64 20
  store float %.sroa.271.4, ptr %.sroa.54.0..sroa_idx657, align 4, !tbaa !24
  %.sroa.65.0..sroa_idx659 = getelementptr inbounds nuw i8, ptr %i.ob, i64 24
  store i32 %.sroa.65.5, ptr %.sroa.65.0..sroa_idx659, align 4, !tbaa !109
  %.sroa.71.0..sroa_idx661 = getelementptr inbounds nuw i8, ptr %i.ob, i64 28
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.71.0..sroa_idx661, align 4, !tbaa !24
  %.sroa.73.0..sroa_idx665 = getelementptr inbounds nuw i8, ptr %i.ob, i64 36
  store i16 0, ptr %.sroa.73.0..sroa_idx665, align 4, !tbaa !115
  %i.od = load ptr, ptr %i.hu, align 8, !tbaa !144
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 40 ; 2 uses
  store ptr %i.oe, ptr %i.hu, align 8, !tbaa !144
  %.pre736 = load ptr, ptr %i.ea, align 8, !tbaa !142
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backERKS1_.exit

bb.ai:                                            ; preds = %.preheader600.preheader
  %i.of = load ptr, ptr %i.ds, align 8, !tbaa !143 ; 5 uses
  %i.og = ptrtoint ptr %i.ob to i64
  %i.oh = ptrtoint ptr %i.of to i64               ; 2 uses
  %i.oi = sub i64 %i.og, %i.oh                    ; 3 uses
  %i.oj = icmp eq i64 %i.oi, 9223372036854775800
  br i1 %i.oj, label %.invoke, label %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i

.invoke:                                          ; preds = %bb.ai, %bb.al, %bb.ao, %bb.ar, %bb.bc, %bb.bg, %bb.bk, %bb.bo, %bb.bs, %bb.bw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #26
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ai
  %i.ok = sdiv exact i64 %i.oi, 40                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ok, i64 1)
  %i.ol = add nsw i64 %.sroa.speculated.i.i.i, %i.ok ; 2 uses
  %i.om = icmp ult i64 %i.ol, %i.ok
  %i.on = call i64 @llvm.umin.i64(i64 %i.ol, i64 230584300921369395)
  %i.oo = select i1 %i.om, i64 230584300921369395, i64 %i.on ; 3 uses
  %.not.i.i.i375 = icmp ne i64 %i.oo, 0
  call void @llvm.assume(i1 %.not.i.i.i375)
  %i.op = mul nuw nsw i64 %i.oo, 40
  %i.oq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.op) #25
          to label %.noexc377 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc377:                                        ; preds = %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 %i.oi ; 6 uses
  store float %i.ny, ptr %i.or, align 4, !tbaa !24
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.or, i64 4
  store float %i.nz, ptr %.sroa.14.0..sroa_idx, align 4, !tbaa !24
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.or, i64 8
  store <4 x float> %i.oa, ptr %.sroa.23.0..sroa_idx, align 4, !tbaa !24
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.or, i64 24
  store i32 %.sroa.65.5, ptr %.sroa.65.0..sroa_idx, align 4, !tbaa !109
  %.sroa.71.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.or, i64 28
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.71.0..sroa_idx, align 4, !tbaa !24
  %.sroa.73.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.or, i64 36
  store i16 0, ptr %.sroa.73.0..sroa_idx, align 4, !tbaa !115
  %.not10.i.i.i.i.i = icmp eq ptr %i.of, %i.ob
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc377, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ot, %.lr.ph.i.i.i.i.i ], [ %i.oq, %.noexc377 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.os, %.lr.ph.i.i.i.i.i ], [ %i.of, %.noexc377 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(40) %.0911.i.i.i.i.i, i64 40, i1 false), !tbaa.struct !145, !alias.scope !219
  %i.os = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 40 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.os, %i.ob
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !204

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc377
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.oq, %.noexc377 ], [ %i.ot, %.lr.ph.i.i.i.i.i ]
  %i.ou = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.of, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.ov = load ptr, ptr %i.ea, align 8, !tbaa !142
  %i.ow = ptrtoint ptr %i.ov to i64
  %i.ox = sub i64 %i.ow, %i.oh
  call void @_ZdlPvm(ptr noundef nonnull %i.of, i64 noundef %i.ox) #22
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.aj, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.oq, ptr %i.ds, align 8, !tbaa !143
  store ptr %i.ou, ptr %i.hu, align 8, !tbaa !144
  %i.oy = getelementptr inbounds nuw [40 x i8], ptr %i.oq, i64 %i.oo ; 2 uses
  store ptr %i.oy, ptr %i.ea, align 8, !tbaa !142
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.ah
  %i.oz = phi ptr [ %i.oy, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.pre736, %bb.ah ] ; 4 uses
  %i.pa = phi ptr [ %i.ou, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.oe, %bb.ah ] ; 10 uses
  %i.pb = fadd nsz float %i.ka, %.sroa.74669.0    ; 2 uses
  %i.pc = fadd nsz <4 x float> %i.ku, %i.nu       ; 2 uses
  %.not.i.1 = icmp eq ptr %i.pa, %i.oz
  br i1 %.not.i.1, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backERKS1_.exit
  store float %i.pb, ptr %i.pa, align 4, !tbaa !24
  %.sroa.85.40..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pa, i64 4
  store float %i.nz, ptr %.sroa.85.40..sroa_idx, align 4, !tbaa !24
  %.sroa.94.40..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pa, i64 8
  %3 = extractelement <4 x float> %i.pc, i64 0
  store float %3, ptr %.sroa.94.40..sroa_idx, align 4, !tbaa !24
  %.sroa.103.40..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pa, i64 12
  store float %.sroa.249.4, ptr %.sroa.103.40..sroa_idx, align 4, !tbaa !24
  %.sroa.114.40..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pa, i64 16
  store float %.sroa.260.4, ptr %.sroa.114.40..sroa_idx, align 4, !tbaa !24
  %.sroa.125.40..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pa, i64 20
  store float %.sroa.271.4, ptr %.sroa.125.40..sroa_idx, align 4, !tbaa !24
  %.sroa.136.40..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pa, i64 24
  store i32 %.sroa.136.5, ptr %.sroa.136.40..sroa_idx, align 4, !tbaa !109
  %.sroa.142.40..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pa, i64 28
  store <2 x float> splat (float 1.000000e+00), ptr %.sroa.142.40..sroa_idx, align 4, !tbaa !24
  %.sroa.144.40..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pa, i64 36
  store i16 0, ptr %.sroa.144.40..sroa_idx, align 4, !tbaa !115
  %i.pd = load ptr, ptr %i.hu, align 8, !tbaa !144
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 40 ; 2 uses
  store ptr %i.pe, ptr %i.hu, align 8, !tbaa !144
  %.pre737 = load ptr, ptr %i.ea, align 8, !tbaa !142
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backERKS1_.exit.1

bb.al:                                            ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backERKS1_.exit
  %i.pf = load ptr, ptr %i.ds, align 8, !tbaa !143 ; 5 uses
  %i.pg = ptrtoint ptr %i.oz to i64
  %i.ph = ptrtoint ptr %i.pf to i64               ; 2 uses
  %i.pi = sub i64 %i.pg, %i.ph                    ; 3 uses
  %i.pj = icmp eq i64 %i.pi, 9223372036854775800
  br i1 %i.pj, label %.invoke, label %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.1

_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.1: ; preds = %bb.al
  %i.pk = sdiv exact i64 %i.pi, 40                ; 3 uses
  %.sroa.speculated.i.i.i.1 = call i64 @llvm.umax.i64(i64 %i.pk, i64 1)
  %i.pl = add nsw i64 %.sroa.speculated.i.i.i.1, %i.pk ; 2 uses
  %i.pm = icmp ult i64 %i.pl, %i.pk
  %i.pn = call i64 @llvm.umin.i64(i64 %i.pl, i64 230584300921369395)
  %i.po = select i1 %i.pm, i64 230584300921369395, i64 %i.pn ; 3 uses
  %.not.i.i.i375.1 = icmp ne i64 %i.po, 0
  call void @llvm.assume(i1 %.not.i.i.i375.1)
  %i.pp = mul nuw nsw i64 %i.po, 40
  %i.pq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pp) #25
          to label %.noexc377.1 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc377.1:                                      ; preds = %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.1
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.pi ; 6 uses
  store float %i.pb, ptr %i.pr, align 4, !tbaa !24
  %.sroa.85.40..sroa_idx671 = getelementptr inbounds nuw i8, ptr %i.pr, i64 4
  store float %i.nz, ptr %.sroa.85.40..sroa_idx671, align 4, !tbaa !24
  %.sroa.94.40..sroa_idx673 = getelementptr inbounds nuw i8, ptr %i.pr, i64 8
  store <4 x float> %i.pc, ptr %.sroa.94.40..sroa_idx673, align 4, !tbaa !24
  %.sroa.136.40..sroa_idx681 = getelementptr inbounds nuw i8, ptr %i.pr, i64 24
  store i32 %.sroa.136.5, ptr %.sroa.136.40..sroa_idx681, align 4, !tbaa !109
  %.sroa.142.40..sroa_idx683 = getelementptr inbounds nuw i8, ptr %i.pr, i64 28
  store <2 x float> splat (float 1.000000e+00), ptr %.sroa.142.40..sroa_idx683, align 4, !tbaa !24
  %.sroa.144.40..sroa_idx687 = getelementptr inbounds nuw i8, ptr %i.pr, i64 36
  store i16 0, ptr %.sroa.144.40..sroa_idx687, align 4, !tbaa !115
  %.not10.i.i.i.i.i.1 = icmp eq ptr %i.pf, %i.oz
  br i1 %.not10.i.i.i.i.i.1, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.1, label %.lr.ph.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.1:                               ; preds = %.noexc377.1, %.lr.ph.i.i.i.i.i.1
  %.012.i.i.i.i.i.1 = phi ptr [ %i.pt, %.lr.ph.i.i.i.i.i.1 ], [ %i.pq, %.noexc377.1 ] ; 2 uses
  %.0911.i.i.i.i.i.1 = phi ptr [ %i.ps, %.lr.ph.i.i.i.i.i.1 ], [ %i.pf, %.noexc377.1 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.012.i.i.i.i.i.1, ptr noundef nonnull align 4 dereferenceable(40) %.0911.i.i.i.i.i.1, i64 40, i1 false), !tbaa.struct !145, !alias.scope !219
  %i.ps = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.1, i64 40 ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.1, i64 40 ; 2 uses
  %.not.i.i.i.i.i.1 = icmp eq ptr %i.ps, %i.oz
  br i1 %.not.i.i.i.i.i.1, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.1, label %.lr.ph.i.i.i.i.i.1, !llvm.loop !204

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.1: ; preds = %.lr.ph.i.i.i.i.i.1, %.noexc377.1
  %.0.lcssa.i.i.i.i.i.1 = phi ptr [ %i.pq, %.noexc377.1 ], [ %i.pt, %.lr.ph.i.i.i.i.i.1 ]
  %i.pu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.1, i64 40 ; 2 uses
  %.not.i23.i.i.1 = icmp eq ptr %i.pf, null
  br i1 %.not.i23.i.i.1, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.1, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.1
  %i.pv = load ptr, ptr %i.ea, align 8, !tbaa !142
  %i.pw = ptrtoint ptr %i.pv to i64
  %i.px = sub i64 %i.pw, %i.ph
  call void @_ZdlPvm(ptr noundef nonnull %i.pf, i64 noundef %i.px) #22
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.1

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.1: ; preds = %bb.am, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.1
  store ptr %i.pq, ptr %i.ds, align 8, !tbaa !143
  store ptr %i.pu, ptr %i.hu, align 8, !tbaa !144
  %i.py = getelementptr inbounds nuw [40 x i8], ptr %i.pq, i64 %i.po ; 2 uses
  store ptr %i.py, ptr %i.ea, align 8, !tbaa !142
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backERKS1_.exit.1

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backERKS1_.exit.1: ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.1, %bb.ak
  %i.pz = phi ptr [ %i.py, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.1 ], [ %.pre737, %bb.ak ] ; 4 uses
  %i.qa = phi ptr [ %i.pu, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.1 ], [ %i.pe, %bb.ak ] ; 9 uses
  %i.qb = insertelement <2 x float> %i.kv, float %i.nx, i64 1
  %i.qc = fadd nsz <2 x float> %i.qb, %i.nt       ; 4 uses
  %i.qd = fadd nsz float %i.kc, %.sroa.165.0      ; 2 uses
  %.not.i.2 = icmp eq ptr %i.qa, %i.pz
  br i1 %.not.i.2, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backERKS1_.exit.1
  store <2 x float> %i.qc, ptr %i.qa, align 4, !tbaa !24
  %.sroa.165.80..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qa, i64 8
  store float %i.qd, ptr %.sroa.165.80..sroa_idx, align 4, !tbaa !24
  %.sroa.174.80..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qa, i64 12
  store float %.sroa.249.4, ptr %.sroa.174.80..sroa_idx, align 4, !tbaa !24
  %.sroa.185.80..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qa, i64 16
  store float %.sroa.260.4, ptr %.sroa.185.80..sroa_idx, align 4, !tbaa !24
  %.sroa.196.80..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qa, i64 20
  store float %.sroa.271.4, ptr %.sroa.196.80..sroa_idx, align 4, !tbaa !24
  %.sroa.207.80..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qa, i64 24
  %i.qe = extractelement <2 x i32> %i.nr, i64 1
  store i32 %i.qe, ptr %.sroa.207.80..sroa_idx, align 4, !tbaa !109
  %.sroa.217.80..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qa, i64 28
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %.sroa.217.80..sroa_idx, align 4, !tbaa !24
  %.sroa.219.80..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qa, i64 36
  store i16 0, ptr %.sroa.219.80..sroa_idx, align 4, !tbaa !115
  %i.qf = load ptr, ptr %i.hu, align 8, !tbaa !144
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 40 ; 2 uses
  store ptr %i.qg, ptr %i.hu, align 8, !tbaa !144
  %.pre738 = load ptr, ptr %i.ea, align 8, !tbaa !142
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backERKS1_.exit.2

bb.ao:                                            ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backERKS1_.exit.1
  %i.qh = load ptr, ptr %i.ds, align 8, !tbaa !143 ; 5 uses
  %i.qi = ptrtoint ptr %i.pz to i64
  %i.qj = ptrtoint ptr %i.qh to i64               ; 2 uses
  %i.qk = sub i64 %i.qi, %i.qj                    ; 3 uses
  %i.ql = icmp eq i64 %i.qk, 9223372036854775800
  br i1 %i.ql, label %.invoke, label %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.2

_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.2: ; preds = %bb.ao
  %i.qm = sdiv exact i64 %i.qk, 40                ; 3 uses
  %.sroa.speculated.i.i.i.2 = call i64 @llvm.umax.i64(i64 %i.qm, i64 1)
  %i.qn = add nsw i64 %.sroa.speculated.i.i.i.2, %i.qm ; 2 uses
  %i.qo = icmp ult i64 %i.qn, %i.qm
  %i.qp = call i64 @llvm.umin.i64(i64 %i.qn, i64 230584300921369395)
  %i.qq = select i1 %i.qo, i64 230584300921369395, i64 %i.qp ; 3 uses
  %.not.i.i.i375.2 = icmp ne i64 %i.qq, 0
  call void @llvm.assume(i1 %.not.i.i.i375.2)
  %i.qr = mul nuw nsw i64 %i.qq, 40
  %i.qs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qr) #25
          to label %.noexc377.2 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc377.2:                                      ; preds = %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.2
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 %i.qk ; 8 uses
  store <2 x float> %i.qc, ptr %i.qt, align 4, !tbaa !24
  %.sroa.165.80..sroa_idx695 = getelementptr inbounds nuw i8, ptr %i.qt, i64 8
  store float %i.qd, ptr %.sroa.165.80..sroa_idx695, align 4, !tbaa !24
  %.sroa.174.80..sroa_idx697 = getelementptr inbounds nuw i8, ptr %i.qt, i64 12
  store float %.sroa.249.4, ptr %.sroa.174.80..sroa_idx697, align 4, !tbaa !24
  %.sroa.185.80..sroa_idx699 = getelementptr inbounds nuw i8, ptr %i.qt, i64 16
  store float %.sroa.260.4, ptr %.sroa.185.80..sroa_idx699, align 4, !tbaa !24
  %.sroa.196.80..sroa_idx701 = getelementptr inbounds nuw i8, ptr %i.qt, i64 20
  store float %.sroa.271.4, ptr %.sroa.196.80..sroa_idx701, align 4, !tbaa !24
  %.sroa.207.80..sroa_idx703 = getelementptr inbounds nuw i8, ptr %i.qt, i64 24
  %i.qu = extractelement <2 x i32> %i.nr, i64 1
  store i32 %i.qu, ptr %.sroa.207.80..sroa_idx703, align 4, !tbaa !109
  %.sroa.217.80..sroa_idx705 = getelementptr inbounds nuw i8, ptr %i.qt, i64 28
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %.sroa.217.80..sroa_idx705, align 4, !tbaa !24
  %.sroa.219.80..sroa_idx709 = getelementptr inbounds nuw i8, ptr %i.qt, i64 36
  store i16 0, ptr %.sroa.219.80..sroa_idx709, align 4, !tbaa !115
  %.not10.i.i.i.i.i.2 = icmp eq ptr %i.qh, %i.pz
  br i1 %.not10.i.i.i.i.i.2, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.2, label %.lr.ph.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.2:                               ; preds = %.noexc377.2, %.lr.ph.i.i.i.i.i.2
  %.012.i.i.i.i.i.2 = phi ptr [ %i.qw, %.lr.ph.i.i.i.i.i.2 ], [ %i.qs, %.noexc377.2 ] ; 2 uses
  %.0911.i.i.i.i.i.2 = phi ptr [ %i.qv, %.lr.ph.i.i.i.i.i.2 ], [ %i.qh, %.noexc377.2 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.012.i.i.i.i.i.2, ptr noundef nonnull align 4 dereferenceable(40) %.0911.i.i.i.i.i.2, i64 40, i1 false), !tbaa.struct !145, !alias.scope !219
  %i.qv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.2, i64 40 ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.2, i64 40 ; 2 uses
  %.not.i.i.i.i.i.2 = icmp eq ptr %i.qv, %i.pz
  br i1 %.not.i.i.i.i.i.2, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.2, label %.lr.ph.i.i.i.i.i.2, !llvm.loop !204

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.2: ; preds = %.lr.ph.i.i.i.i.i.2, %.noexc377.2
  %.0.lcssa.i.i.i.i.i.2 = phi ptr [ %i.qs, %.noexc377.2 ], [ %i.qw, %.lr.ph.i.i.i.i.i.2 ]
  %i.qx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.2, i64 40 ; 2 uses
  %.not.i23.i.i.2 = icmp eq ptr %i.qh, null
  br i1 %.not.i23.i.i.2, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.2, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.2
  %i.qy = load ptr, ptr %i.ea, align 8, !tbaa !142
  %i.qz = ptrtoint ptr %i.qy to i64
  %i.ra = sub i64 %i.qz, %i.qj
  call void @_ZdlPvm(ptr noundef nonnull %i.qh, i64 noundef %i.ra) #22
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.2

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.2: ; preds = %bb.ap, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.2
  store ptr %i.qs, ptr %i.ds, align 8, !tbaa !143
  store ptr %i.qx, ptr %i.hu, align 8, !tbaa !144
  %i.rb = getelementptr inbounds nuw [40 x i8], ptr %i.qs, i64 %i.qq ; 2 uses
  store ptr %i.rb, ptr %i.ea, align 8, !tbaa !142
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backERKS1_.exit.2

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backERKS1_.exit.2: ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.2, %bb.an
  %i.rc = phi ptr [ %i.rb, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.2 ], [ %.pre738, %bb.an ] ; 4 uses
  %i.rd = phi ptr [ %i.qx, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.2 ], [ %i.qg, %bb.an ] ; 10 uses
  %i.re = fadd nsz float %i.ka, %.sroa.220713.0   ; 2 uses
  %i.rf = fadd nsz <4 x float> %i.ku, %i.ns       ; 2 uses
  %.not.i.3 = icmp eq ptr %i.rd, %i.rc
  br i1 %.not.i.3, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backERKS1_.exit.2
  store float %i.re, ptr %i.rd, align 4, !tbaa !24
  %.sroa.231.120..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rd, i64 4
  %i.rg = extractelement <2 x float> %i.qc, i64 1
  store float %i.rg, ptr %.sroa.231.120..sroa_idx, align 4, !tbaa !24
  %.sroa.240.120..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rd, i64 8
  %4 = extractelement <4 x float> %i.rf, i64 0
  store float %4, ptr %.sroa.240.120..sroa_idx, align 4, !tbaa !24
  %.sroa.249.120..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rd, i64 12
  store float %.sroa.249.4, ptr %.sroa.249.120..sroa_idx, align 4, !tbaa !24
  %.sroa.260.120..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rd, i64 16
  store float %.sroa.260.4, ptr %.sroa.260.120..sroa_idx, align 4, !tbaa !24
  %.sroa.271.120..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rd, i64 20
  store float %.sroa.271.4, ptr %.sroa.271.120..sroa_idx, align 4, !tbaa !24
  %.sroa.282.120..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rd, i64 24
  %i.rh = extractelement <2 x i32> %i.nr, i64 0
  store i32 %i.rh, ptr %.sroa.282.120..sroa_idx, align 4, !tbaa !109
  %.sroa.292.120..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rd, i64 28
  store <2 x float> zeroinitializer, ptr %.sroa.292.120..sroa_idx, align 4, !tbaa !24
  %.sroa.294.120..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rd, i64 36
  store i16 0, ptr %.sroa.294.120..sroa_idx, align 4, !tbaa !115
  %i.ri = load ptr, ptr %i.hu, align 8, !tbaa !144
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 40
  store ptr %i.rj, ptr %i.hu, align 8, !tbaa !144
  br label %.loopexit582

bb.ar:                                            ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backERKS1_.exit.2
  %i.rk = load ptr, ptr %i.ds, align 8, !tbaa !143 ; 5 uses
  %i.rl = ptrtoint ptr %i.rc to i64
  %i.rm = ptrtoint ptr %i.rk to i64               ; 2 uses
  %i.rn = sub i64 %i.rl, %i.rm                    ; 3 uses
  %i.ro = icmp eq i64 %i.rn, 9223372036854775800
  br i1 %i.ro, label %.invoke, label %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.3

_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.3: ; preds = %bb.ar
  %i.rp = sdiv exact i64 %i.rn, 40                ; 3 uses
  %.sroa.speculated.i.i.i.3 = call i64 @llvm.umax.i64(i64 %i.rp, i64 1)
  %i.rq = add nsw i64 %.sroa.speculated.i.i.i.3, %i.rp ; 2 uses
  %i.rr = icmp ult i64 %i.rq, %i.rp
  %i.rs = call i64 @llvm.umin.i64(i64 %i.rq, i64 230584300921369395)
  %i.rt = select i1 %i.rr, i64 230584300921369395, i64 %i.rs ; 3 uses
  %.not.i.i.i375.3 = icmp ne i64 %i.rt, 0
  call void @llvm.assume(i1 %.not.i.i.i375.3)
  %i.ru = mul nuw nsw i64 %i.rt, 40
  %i.rv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ru) #25
          to label %.noexc377.3 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc377.3:                                      ; preds = %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.3
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 %i.rn ; 6 uses
  store float %i.re, ptr %i.rw, align 4, !tbaa !24
  %.sroa.231.120..sroa_idx715 = getelementptr inbounds nuw i8, ptr %i.rw, i64 4
  %i.rx = extractelement <2 x float> %i.qc, i64 1
  store float %i.rx, ptr %.sroa.231.120..sroa_idx715, align 4, !tbaa !24
  %.sroa.240.120..sroa_idx717 = getelementptr inbounds nuw i8, ptr %i.rw, i64 8
  store <4 x float> %i.rf, ptr %.sroa.240.120..sroa_idx717, align 4, !tbaa !24
  %.sroa.282.120..sroa_idx725 = getelementptr inbounds nuw i8, ptr %i.rw, i64 24
  %i.ry = extractelement <2 x i32> %i.nr, i64 0
  store i32 %i.ry, ptr %.sroa.282.120..sroa_idx725, align 4, !tbaa !109
  %.sroa.292.120..sroa_idx727 = getelementptr inbounds nuw i8, ptr %i.rw, i64 28
  store <2 x float> zeroinitializer, ptr %.sroa.292.120..sroa_idx727, align 4, !tbaa !24
  %.sroa.294.120..sroa_idx731 = getelementptr inbounds nuw i8, ptr %i.rw, i64 36
  store i16 0, ptr %.sroa.294.120..sroa_idx731, align 4, !tbaa !115
  %.not10.i.i.i.i.i.3 = icmp eq ptr %i.rk, %i.rc
  br i1 %.not10.i.i.i.i.i.3, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.3, label %.lr.ph.i.i.i.i.i.3

.lr.ph.i.i.i.i.i.3:                               ; preds = %.noexc377.3, %.lr.ph.i.i.i.i.i.3
  %.012.i.i.i.i.i.3 = phi ptr [ %i.sa, %.lr.ph.i.i.i.i.i.3 ], [ %i.rv, %.noexc377.3 ] ; 2 uses
  %.0911.i.i.i.i.i.3 = phi ptr [ %i.rz, %.lr.ph.i.i.i.i.i.3 ], [ %i.rk, %.noexc377.3 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.012.i.i.i.i.i.3, ptr noundef nonnull align 4 dereferenceable(40) %.0911.i.i.i.i.i.3, i64 40, i1 false), !tbaa.struct !145, !alias.scope !219
  %i.rz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.3, i64 40 ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.3, i64 40 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq ptr %i.rz, %i.rc
  br i1 %.not.i.i.i.i.i.3, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.3, label %.lr.ph.i.i.i.i.i.3, !llvm.loop !204

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.3: ; preds = %.lr.ph.i.i.i.i.i.3, %.noexc377.3
  %.0.lcssa.i.i.i.i.i.3 = phi ptr [ %i.rv, %.noexc377.3 ], [ %i.sa, %.lr.ph.i.i.i.i.i.3 ]
  %i.sb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.3, i64 40
  %.not.i23.i.i.3 = icmp eq ptr %i.rk, null
  br i1 %.not.i23.i.i.3, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.3, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.3
  %i.sc = load ptr, ptr %i.ea, align 8, !tbaa !142
  %i.sd = ptrtoint ptr %i.sc to i64
  %i.se = sub i64 %i.sd, %i.rm
  call void @_ZdlPvm(ptr noundef nonnull %i.rk, i64 noundef %i.se) #22
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.3

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.3: ; preds = %bb.as, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.3
  store ptr %i.rv, ptr %i.ds, align 8, !tbaa !143
  store ptr %i.sb, ptr %i.hu, align 8, !tbaa !144
  %i.sf = getelementptr inbounds nuw [40 x i8], ptr %i.rv, i64 %i.rt
  store ptr %i.sf, ptr %i.ea, align 8, !tbaa !142
  br label %.loopexit582

.loopexit582:                                     ; preds = %bb.aq, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.3, %bb.af, %bb.ac, %bb.y, %bb.v
  %.sroa.136.6 = phi i32 [ %.sroa.136.0, %bb.af ], [ %.sroa.136.0, %bb.v ], [ %.sroa.136.0, %bb.y ], [ %.sroa.136.0, %bb.ac ], [ %.sroa.136.5, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.3 ], [ %.sroa.136.5, %bb.aq ]
  %.sroa.65.6 = phi i32 [ %.sroa.65.0, %bb.af ], [ %.sroa.65.0, %bb.v ], [ %.sroa.65.0, %bb.y ], [ %.sroa.65.0, %bb.ac ], [ %.sroa.65.5, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.3 ], [ %.sroa.65.5, %bb.aq ]
  %i.sg = phi <2 x i32> [ %i.lc, %bb.af ], [ %i.lc, %bb.v ], [ %i.lc, %bb.y ], [ %i.lc, %bb.ac ], [ %i.nr, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.3 ], [ %i.nr, %bb.aq ]
  %i.sh = add nuw nsw i32 %.0255629, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.sh, %i.at
  br i1 %exitcond.not, label %bb.q, label %bb.s, !llvm.loop !212

bb.at:                                            ; preds = %bb.o, %bb.q
  %i.si = phi i16 [ %i.jc, %bb.o ], [ %.pre739, %bb.q ] ; 3 uses
  %i.sj = phi i16 [ %i.jd, %bb.o ], [ %.pre739, %bb.q ] ; 2 uses
  %i.sk = add i16 %.0260630, 1                    ; 2 uses
  %i.sl = sext i16 %i.sk to i32
  %i.sm = zext i16 %i.sj to i32                   ; 2 uses
  %i.sn = icmp slt i32 %i.sl, %i.sm
  br i1 %i.sn, label %bb.o, label %._crit_edge633.loopexit, !llvm.loop !213

_ZN5scene11IMeshBuffer8setDirtyENS_13E_BUFFER_TYPEE.exit: ; preds = %.noexc345
  %i.so = load ptr, ptr %i.dp, align 8, !tbaa !19
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 16
  %i.sq = load ptr, ptr %i.sp, align 8
  %i.sr = invoke noundef ptr %i.sq(ptr noundef nonnull align 8 dereferenceable(8) %i.dp)
          to label %.noexc378 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !5 ; 2 uses

.noexc378:                                        ; preds = %_ZN5scene11IMeshBuffer8setDirtyENS_13E_BUFFER_TYPEE.exit
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !19
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 16
  %i.su = load ptr, ptr %i.st, align 8
  %i.sv = invoke noundef i32 %i.su(ptr noundef nonnull align 8 dereferenceable(28) %i.sr)
          to label %_ZNK5scene11IMeshBuffer14getVertexCountEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !5

_ZNK5scene11IMeshBuffer14getVertexCountEv.exit:   ; preds = %.noexc378
  %i.sw = lshr i32 %i.sv, 2                       ; 3 uses
  %i.sx = mul i32 %i.sw, 6                        ; 3 uses
  %i.sy = load ptr, ptr %i.dp, align 8, !tbaa !19
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 32
  %i.ta = load ptr, ptr %i.sz, align 8
  %i.tb = invoke noundef ptr %i.ta(ptr noundef nonnull align 8 dereferenceable(8) %i.dp)
          to label %.noexc380 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !6 ; 2 uses

.noexc380:                                        ; preds = %_ZNK5scene11IMeshBuffer14getVertexCountEv.exit
  %i.tc = load ptr, ptr %i.tb, align 8, !tbaa !19
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 16
  %i.te = load ptr, ptr %i.td, align 8
  %i.tf = invoke noundef i32 %i.te(ptr noundef nonnull align 8 dereferenceable(28) %i.tb)
          to label %_ZNK5scene11IMeshBuffer13getIndexCountEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !6

_ZNK5scene11IMeshBuffer13getIndexCountEv.exit:    ; preds = %.noexc380
  %i.tg = icmp ugt i32 %i.tf, %i.sx
  br i1 %i.tg, label %bb.au, label %bb.ay

bb.au:                                            ; preds = %_ZNK5scene11IMeshBuffer13getIndexCountEv.exit
  %i.th = zext i32 %i.sx to i64                   ; 4 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.du, i64 40 ; 2 uses
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !151 ; 2 uses
  %i.tk = load ptr, ptr %i.dv, align 8, !tbaa !150 ; 2 uses
  %i.tl = ptrtoint ptr %i.tj to i64
  %i.tm = ptrtoint ptr %i.tk to i64
  %i.tn = sub i64 %i.tl, %i.tm
  %i.to = ashr exact i64 %i.tn, 1                 ; 3 uses
  %i.tp = icmp ult i64 %i.to, %i.th
  br i1 %i.tp, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.tq = sub nuw nsw i64 %i.th, %i.to
  invoke void @_ZNSt6vectorItSaItEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dv, i64 noundef %i.tq)
          to label %_ZNSt6vectorItSaItEE6resizeEm.exit.invoke unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aw:                                            ; preds = %bb.au
  %i.tr = icmp ugt i64 %i.to, %i.th
  br i1 %i.tr, label %bb.ax, label %_ZNSt6vectorItSaItEE6resizeEm.exit.invoke

bb.ax:                                            ; preds = %bb.aw
  %i.ts = getelementptr inbounds nuw [2 x i8], ptr %i.tk, i64 %i.th ; 2 uses
  %.not.i.i382 = icmp eq ptr %i.tj, %i.ts
  br i1 %.not.i.i382, label %_ZNSt6vectorItSaItEE6resizeEm.exit.invoke, label %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.ax
  store ptr %i.ts, ptr %i.ti, align 8, !tbaa !151
  br label %_ZNSt6vectorItSaItEE6resizeEm.exit.invoke

_ZNSt6vectorItSaItEE6resizeEm.exit.invoke:        ; preds = %_ZNSt6vectorItSaItEE9push_backEOt.exit449, %bb.av, %bb.aw, %bb.ax, %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i, %_ZNK5scene11IMeshBuffer13getIndexCountEv.exit392
  %i.tt = load ptr, ptr %i.dp, align 8, !tbaa !19
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 40
  %i.tv = load ptr, ptr %i.tu, align 8
  %i.tw = invoke noundef ptr %i.tv(ptr noundef nonnull align 8 dereferenceable(8) %i.dp)
          to label %.noexc384.invoke unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !207

.noexc384.invoke:                                 ; preds = %_ZNSt6vectorItSaItEE6resizeEm.exit.invoke
  invoke void @_ZN5scene8HWBuffer8setDirtyEv(ptr noundef nonnull align 8 dereferenceable(28) %i.tw)
          to label %_ZN5scene11IMeshBuffer8setDirtyENS_13E_BUFFER_TYPEE.exit386 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ay:                                            ; preds = %_ZNK5scene11IMeshBuffer13getIndexCountEv.exit
  %i.tx = load ptr, ptr %i.dp, align 8, !tbaa !19
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 32
  %i.tz = load ptr, ptr %i.ty, align 8
  %i.ua = invoke noundef ptr %i.tz(ptr noundef nonnull align 8 dereferenceable(8) %i.dp)
          to label %.noexc387 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !6 ; 2 uses

.noexc387:                                        ; preds = %bb.ay
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !19
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 16
  %i.ud = load ptr, ptr %i.uc, align 8
  %i.ue = invoke noundef i32 %i.ud(ptr noundef nonnull align 8 dereferenceable(28) %i.ua)
          to label %_ZNK5scene11IMeshBuffer13getIndexCountEv.exit389 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !6

_ZNK5scene11IMeshBuffer13getIndexCountEv.exit389: ; preds = %.noexc387
  %i.uf = icmp ult i32 %i.ue, %i.sx
  br i1 %i.uf, label %bb.az, label %_ZN5scene11IMeshBuffer8setDirtyENS_13E_BUFFER_TYPEE.exit386

bb.az:                                            ; preds = %_ZNK5scene11IMeshBuffer13getIndexCountEv.exit389
  %i.ug = load ptr, ptr %i.dp, align 8, !tbaa !19
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 32
  %i.ui = load ptr, ptr %i.uh, align 8
  %i.uj = invoke noundef ptr %i.ui(ptr noundef nonnull align 8 dereferenceable(8) %i.dp)
          to label %.noexc390 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !6 ; 2 uses

.noexc390:                                        ; preds = %bb.az
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !19
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 16
end_hunk_0
