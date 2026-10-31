Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/unigram_model?download=true
inline.NumInlined: 4081
inline.NumDeleted: 1860
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN13sentencepiece7unigram7Lattice5NBestEmbf:bb.a
  %i.ie = ashr exact i64 %i.ib, 1                 ; 3 uses
  %i.if = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ie) #32
          to label %.noexc214 unwind label %.loopexit.split-lp550.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 8 uses

.noexc214:                                        ; preds = %bb.aq
  %i.ig = and i64 %i.ie, -4                       ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.if, i8 0, i64 %i.ig, i1 false), !tbaa !98
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %i.ic ; 5 uses
  %i.ii = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ie) #32
          to label %.noexc224 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit332.thread ; 8 uses

.noexc224:                                        ; preds = %.noexc214
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ii, i8 0, i64 %i.ig, i1 false), !tbaa !98
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %i.ic ; 4 uses
  %i.ik = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ib) #32
          to label %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit.thread unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit330.thread ; 6 uses

_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit.thread:     ; preds = %.noexc224
  %i.il = add i64 %i.hz, -8
  %i.im = sub i64 %i.il, %i.ia
  %i.in = and i64 %i.im, -8
  %i.io = add i64 %i.in, 8
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ik, i8 0, i64 %i.io, i1 false), !tbaa !122
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.ib ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  %i.ir = load i32, ptr %i.iq, align 8, !tbaa !76
  %i.is = zext i32 %i.ir to i64
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0438.0, i64 %i.is
  %i.iu = load float, ptr %i.it, align 4, !tbaa !98
  br i1 %3, label %.lr.ph, label %.loopexit543

.lr.ph:                                           ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit.thread
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ds, i64 20
  br label %bb.ar

.lr.ph773:                                        ; preds = %bb.as
  %i.iw = ashr exact i64 %i.ib, 3
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.iy = load float, ptr %i.ix, align 8, !tbaa !114 ; 2 uses
  br label %bb.at

.loopexit.split-lp550.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIPN13sentencepiece7unigram7Lattice4NodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i, %bb.aq, %bb.ah, %bb.ap
  %lpad.loopexit.split-lp1757 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit334

_ZNSt6vectorIfSaIfEED2Ev.exit332.thread:          ; preds = %.noexc214
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

_ZNSt6vectorIdSaIdEED2Ev.exit330.thread:          ; preds = %.noexc224
  %i.ja = landingpad { ptr, i32 }
          cleanup
  br label %bb.eg

bb.ar:                                            ; preds = %.lr.ph, %bb.as
  %i.jb = phi ptr [ %i.hy, %.lr.ph ], [ %i.kg, %bb.as ]
  %.0135771 = phi float [ -1.000000e+08, %.lr.ph ], [ %.1136, %bb.as ] ; 2 uses
  %.0137770 = phi i64 [ 0, %.lr.ph ], [ %i.jz, %bb.as ] ; 4 uses
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %.0137770
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !59 ; 2 uses
  %i.je = load float, ptr %i.iv, align 4, !tbaa !371
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 24
  %i.jg = load i32, ptr %i.jf, align 8, !tbaa !76
  %i.jh = zext i32 %i.jg to i64
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0438.0, i64 %i.jh
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !98
  %i.jk = fadd float %i.je, %i.jj
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jd, i64 32
  %i.jm = load float, ptr %i.jl, align 8, !tbaa !86
  %i.jn = call float @llvm.fmuladd.f32(float %4, float %i.jm, float %i.jk)
  %i.jo = fsub float %i.jn, %i.iu                 ; 2 uses
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %.0137770
  store float %i.jo, ptr %i.jp, align 4, !tbaa !98
  %i.jq = invoke noundef ptr @_ZN13sentencepiece6random18GetRandomGeneratorEv()
          to label %.noexc233 unwind label %.body241.thread

.noexc233:                                        ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store float 0.000000e+00, ptr %i.h, align 4, !tbaa !98
  store float 1.000000e+00, ptr %i.i, align 4, !tbaa !98
  %i.jr = invoke noundef float @_ZN4absl12lts_2026052615random_internal18DistributionCallerINS0_6BitGenEE4ImplINS1_26UniformDistributionWrapperIfEEJRfS8_EEENT_11result_typeESt17integral_constantIbLb0EEPS3_DpOT0_(ptr noundef nonnull align 8 dereferenceable(288) %i.jq, ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.i)
          to label %bb.as unwind label %.body241.thread

bb.as:                                            ; preds = %.noexc233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.js = fadd float %i.jr, 1.000000e-07
  %i.jt = call noundef float @logf(float noundef %i.js) #31
  %i.ju = fneg float %i.jt
  %i.jv = call noundef float @logf(float noundef %i.ju) #31
  %i.jw = fsub float %i.jo, %i.jv                 ; 3 uses
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %.0137770
  store float %i.jw, ptr %i.jx, align 4, !tbaa !98
  %i.jy = fcmp ogt float %i.jw, %.0135771
  %.1136 = select i1 %i.jy, float %i.jw, float %.0135771 ; 2 uses
  %i.jz = add nuw i64 %.0137770, 1                ; 2 uses
  %i.ka = load i32, ptr %i.hs, align 8, !tbaa !82 ; 2 uses
  %i.kb = sext i32 %i.ka to i64
  %i.kc = load ptr, ptr %i.cv, align 8, !tbaa !47 ; 2 uses
  %i.kd = getelementptr inbounds nuw [24 x i8], ptr %i.kc, i64 %i.kb ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !83
  %i.kg = load ptr, ptr %i.kd, align 8, !tbaa !52 ; 2 uses
  %i.kh = ptrtoint ptr %i.kf to i64
  %i.ki = ptrtoint ptr %i.kg to i64
  %i.kj = sub i64 %i.kh, %i.ki
  %i.kk = ashr exact i64 %i.kj, 3
  %i.kl = icmp ult i64 %i.jz, %i.kk
  br i1 %i.kl, label %bb.ar, label %.lr.ph773, !llvm.loop !323

bb.at:                                            ; preds = %.lr.ph773, %bb.at
  %.0138772 = phi i64 [ 0, %.lr.ph773 ], [ %i.ld, %bb.at ] ; 3 uses
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %.0138772
  %i.kn = load float, ptr %i.km, align 4, !tbaa !98 ; 2 uses
  %i.ko = fsub float %i.iy, %i.kn
  %i.kp = fsub float %i.kn, %.1136
  %i.kq = call noundef float @expf(float noundef %i.kp) #31
  %i.kr = fneg float %i.kq
  %i.ks = call noundef float @log1pf(float noundef %i.kr) #31
  %i.kt = fadd float %i.ko, %i.ks                 ; 3 uses
  %i.ku = fcmp ogt float %i.kt, 0.000000e+00
  %.sroa.speculated405 = select i1 %i.ku, float %i.kt, float 0.000000e+00
  %i.kv = fsub float %i.iy, %.sroa.speculated405
  %i.kw = call noundef float @llvm.fabs.f32(float %i.kt)
  %i.kx = fneg float %i.kw
  %i.ky = call noundef float @expf(float noundef %i.kx) #31
  %i.kz = call noundef float @log1pf(float noundef %i.ky) #31
  %i.la = fsub float %i.kv, %i.kz
  %i.lb = fpext float %i.la to double
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %.0138772
  store double %i.lb, ptr %i.lc, align 8, !tbaa !122
  %i.ld = add nuw i64 %.0138772, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ld, %i.iw
  br i1 %exitcond.not, label %.loopexit543, label %bb.at, !llvm.loop !324

.loopexit543:                                     ; preds = %bb.at, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i206, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit.thread
  %.sroa.13.01172 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i206 ], [ %i.ip, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit.thread ], [ %i.ip, %bb.at ] ; 2 uses
  %.sroa.0410.01165 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i206 ], [ %i.ik, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit.thread ], [ %i.ik, %bb.at ] ; 6 uses
  %.sroa.0429.04684741157 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i206 ], [ %i.if, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit.thread ], [ %i.if, %bb.at ] ; 6 uses
  %.sroa.12.04604791148 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i206 ], [ %i.ih, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit.thread ], [ %i.ih, %bb.at ] ; 3 uses
  %.sroa.14.04891140 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i206 ], [ %i.ij, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit.thread ], [ %i.ij, %bb.at ] ; 3 uses
  %.sroa.0418.04961133 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i206 ], [ %i.ii, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit.thread ], [ %i.ii, %bb.at ] ; 5 uses
  %i.le = phi ptr [ %i.fn, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i206 ], [ %i.fn, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit.thread ], [ %i.kc, %bb.at ]
  %i.lf = phi i32 [ %i.ht, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i206 ], [ %i.ht, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit.thread ], [ %i.ka, %bb.at ]
  %.promoted = load ptr, ptr %i.am, align 8       ; 2 uses
  %i.lg = sext i32 %i.lf to i64
  %i.lh = getelementptr inbounds nuw [24 x i8], ptr %i.le, i64 %i.lg ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !83
  %i.lk = load ptr, ptr %i.lh, align 8, !tbaa !52 ; 2 uses
  %.not830 = icmp eq ptr %i.lj, %i.lk
  br i1 %.not830, label %._crit_edge, label %.lr.ph797

.lr.ph797:                                        ; preds = %.loopexit543
  %i.ll = getelementptr inbounds nuw i8, ptr %i.ds, i64 20 ; 2 uses
  br label %bb.au

._crit_edge:                                      ; preds = %.loopexit529, %.loopexit543
  %.val180 = phi ptr [ %.promoted789, %.loopexit543 ], [ %i.pd, %.loopexit529 ] ; 3 uses
  %.val181 = phi ptr [ %i.fl, %.loopexit543 ], [ %.val.i244, %.loopexit529 ] ; 2 uses
  %.val.i237775.lcssa = phi ptr [ %.promoted, %.loopexit543 ], [ %.val.i237774, %.loopexit529 ]
  store ptr %.val.i237775.lcssa, ptr %i.am, align 8
  store ptr %.val181, ptr %i.ct, align 8
  store ptr %.val180, ptr %12, align 16
  %i.lm = load i64, ptr %i.an, align 8, !tbaa !111
  %i.ln = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !123
  %i.lo = mul i64 %i.ln, %i.lm
  %i.lp = load i64, ptr %i.cw, align 8, !tbaa !124
  %i.lq = add i64 %i.lo, %i.lp
  %i.lr = icmp ult i64 %i.lq, 1000000000
  %or.cond3 = select i1 %i.lr, i1 true, i1 %.0128820
  br i1 %or.cond3, label %bb.bu, label %bb.bm

bb.au:                                            ; preds = %.lr.ph797, %.loopexit529
  %i.ls = phi ptr [ %i.lk, %.lr.ph797 ], [ %i.pz, %.loopexit529 ]
  %.0139796 = phi i64 [ 0, %.lr.ph797 ], [ %i.ps, %.loopexit529 ] ; 4 uses
  %.val.i237775795 = phi ptr [ %.promoted, %.lr.ph797 ], [ %.val.i237774, %.loopexit529 ] ; 15 uses
  %i.lt = phi ptr [ %i.fl, %.lr.ph797 ], [ %.val.i244, %.loopexit529 ] ; 9 uses
  %i.lu = phi ptr [ %.promoted789, %.lr.ph797 ], [ %i.pd, %.loopexit529 ] ; 10 uses
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.ls, i64 %.0139796
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !59 ; 3 uses
  %i.lx = load i64, ptr %i.cw, align 8, !tbaa !124 ; 2 uses
  %i.ly = load i64, ptr %i.an, align 8, !tbaa !111 ; 2 uses
  %.not.i236 = icmp ult i64 %i.lx, %i.ly
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !123 ; 2 uses
  br i1 %.not.i236, label %._crit_edge.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.lz = add i64 %.pre.i, 1                      ; 2 uses
  store i64 %i.lz, ptr %.phi.trans.insert.i, align 8, !tbaa !123
  store i64 0, ptr %i.cw, align 8, !tbaa !124
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.av, %bb.au
  %i.ma = phi i64 [ 0, %bb.av ], [ %i.lx, %bb.au ] ; 3 uses
  %i.mb = phi i64 [ %i.lz, %bb.av ], [ %.pre.i, %bb.au ] ; 7 uses
  %.val3.i = load ptr, ptr %i.cx, align 8, !tbaa !125 ; 6 uses
  %i.mc = ptrtoint ptr %.val3.i to i64            ; 2 uses
  %i.md = ptrtoint ptr %.val.i237775795 to i64    ; 2 uses
  %i.me = sub i64 %i.mc, %i.md                    ; 4 uses
  %i.mf = ashr exact i64 %i.me, 3
  %i.mg = icmp eq i64 %i.mb, %i.mf
  br i1 %i.mg, label %bb.aw, label %bb.bb

bb.aw:                                            ; preds = %._crit_edge.i
  %i.mh = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ly, i64 24) ; 2 uses
  %i.mi = extractvalue { i64, i1 } %i.mh, 1
  %i.mj = extractvalue { i64, i1 } %i.mh, 0       ; 2 uses
  %i.mk = select i1 %i.mi, i64 -1, i64 %i.mj      ; 2 uses
  %i.ml = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.mk) #32
          to label %.noexc240 unwind label %.loopexit535 ; 5 uses

.noexc240:                                        ; preds = %bb.aw
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.ml, i8 0, i64 %i.mk, i1 false), !noalias !372
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ml, i8 0, i64 %i.mj, i1 false)
  %i.mm = load ptr, ptr %i.cy, align 8, !tbaa !126
  %.not.i.i.i238 = icmp eq ptr %.val3.i, %i.mm
  br i1 %.not.i.i.i238, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %.noexc240
  %i.mn = ptrtoint ptr %i.ml to i64
  store i64 %i.mn, ptr %.val3.i, align 8, !tbaa !117
  %i.mo = getelementptr inbounds nuw i8, ptr %.val3.i, i64 8
  store ptr %i.mo, ptr %i.cx, align 8, !tbaa !125
  br label %bb.bb

bb.ay:                                            ; preds = %.noexc240
  %i.mp = icmp eq i64 %i.me, 9223372036854775800
  br i1 %i.mp, label %bb.az, label %_ZNKSt6vectorISt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.az:                                            ; preds = %bb.ay
  store ptr %.val.i237775795, ptr %i.am, align 8
  store ptr %i.lt, ptr %i.ct, align 8
  store ptr %i.lu, ptr %12, align 16
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #33
          to label %.noexc.i unwind label %_ZNSt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS4_EED2Ev.exit10.i.loopexit.split-lp

.noexc.i:                                         ; preds = %bb.az
  unreachable

_ZNKSt6vectorISt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.ay
  %i.mq = icmp eq ptr %.val3.i, %.val.i237775795  ; 2 uses
  %.sroa.speculated.i.i.i.i.i = select i1 %i.mq, i64 1, i64 %i.mb
  %i.mr = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.mb ; 2 uses
  %i.ms = icmp ult i64 %i.mr, %i.mb
  %i.mt = call i64 @llvm.umin.i64(i64 %i.mr, i64 1152921504606846975)
  %i.mu = select i1 %i.ms, i64 1152921504606846975, i64 %i.mt ; 3 uses
  %.not.i.i.i.i.i239 = icmp ne i64 %i.mu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i239)
  %i.mv = shl nuw nsw i64 %i.mu, 3
  %i.mw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mv) #32
          to label %.noexc7.i unwind label %_ZNSt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS4_EED2Ev.exit10.i.loopexit ; 10 uses

.noexc7.i:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 %i.me
  %i.my = ptrtoint ptr %i.ml to i64
  store i64 %i.my, ptr %i.mx, align 8, !tbaa !117
  br i1 %i.mq, label %_ZNSt6vectorISt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit27.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc7.i
  %i.mz = add i64 %i.mc, -8
  %i.na = sub i64 %i.mz, %i.md                    ; 3 uses
  %i.nb = lshr i64 %i.na, 3
  %i.nc = add nuw nsw i64 %i.nb, 1                ; 2 uses
  %min.iters.check1738 = icmp ult i64 %i.na, 56
  br i1 %min.iters.check1738, label %.lr.ph.i.i.i.i.i.i.i.preheader1753, label %vector.memcheck1729

vector.memcheck1729:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.nd = and i64 %i.na, -8
  %23 = add i64 %i.nd, 8                          ; 2 uses
  %scevgep1732 = getelementptr i8, ptr %i.mw, i64 %23
  %scevgep1733 = getelementptr i8, ptr %.val.i237775795, i64 %23
  %bound01734 = icmp ult ptr %i.mw, %scevgep1733
  %bound11735 = icmp ult ptr %.val.i237775795, %scevgep1732
  %found.conflict1736 = and i1 %bound01734, %bound11735
  br i1 %found.conflict1736, label %.lr.ph.i.i.i.i.i.i.i.preheader1753, label %vector.ph1739

vector.ph1739:                                    ; preds = %vector.memcheck1729
  %n.vec1740 = and i64 %i.nc, 4611686018427387900 ; 3 uses
  %i.ne = shl i64 %n.vec1740, 3                   ; 2 uses
  %i.nf = getelementptr i8, ptr %i.mw, i64 %i.ne  ; 2 uses
  %i.ng = getelementptr i8, ptr %.val.i237775795, i64 %i.ne
  br label %vector.body1741

vector.body1741:                                  ; preds = %vector.body1741, %vector.ph1739
  %index1742 = phi i64 [ 0, %vector.ph1739 ], [ %index.next1747, %vector.body1741 ] ; 2 uses
  %i.nh = shl i64 %index1742, 3                   ; 2 uses
  %next.gep1743 = getelementptr i8, ptr %i.mw, i64 %i.nh ; 2 uses
  %next.gep1744 = getelementptr i8, ptr %.val.i237775795, i64 %i.nh ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !373)
  call void @llvm.experimental.noalias.scope.decl(metadata !374)
  %i.ni = getelementptr i8, ptr %next.gep1744, i64 16
  %wide.load1745 = load <2 x i64>, ptr %next.gep1744, align 8, !tbaa !117, !alias.scope !375
  %wide.load1746 = load <2 x i64>, ptr %i.ni, align 8, !tbaa !117, !alias.scope !375
  %i.nj = getelementptr i8, ptr %next.gep1743, i64 16
  store <2 x i64> %wide.load1745, ptr %next.gep1743, align 8, !tbaa !117, !alias.scope !376, !noalias !377
  store <2 x i64> %wide.load1746, ptr %i.nj, align 8, !tbaa !117, !alias.scope !376, !noalias !377
  %i.nk = getelementptr i8, ptr %next.gep1744, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1744, align 8, !tbaa !117, !alias.scope !375
  store <2 x ptr> splat (ptr null), ptr %i.nk, align 8, !tbaa !117, !alias.scope !375
  %index.next1747 = add nuw i64 %index1742, 4     ; 2 uses
  %i.nl = icmp eq i64 %index.next1747, %n.vec1740
  br i1 %i.nl, label %middle.block1748, label %vector.body1741, !llvm.loop !333

middle.block1748:                                 ; preds = %vector.body1741
  %cmp.n1749 = icmp eq i64 %i.nc, %n.vec1740
  br i1 %cmp.n1749, label %_ZNSt6vectorISt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit27.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader1753

.lr.ph.i.i.i.i.i.i.i.preheader1753:               ; preds = %vector.memcheck1729, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block1748
  %.03.i.i.i.i.i.i.i.ph = phi ptr [ %i.mw, %vector.memcheck1729 ], [ %i.mw, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.nf, %middle.block1748 ]
  %.092.i.i.i.i.i.i.i.ph = phi ptr [ %.val.i237775795, %vector.memcheck1729 ], [ %.val.i237775795, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ng, %middle.block1748 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader1753, %.lr.ph.i.i.i.i.i.i.i
  %.03.i.i.i.i.i.i.i = phi ptr [ %i.nn, %.lr.ph.i.i.i.i.i.i.i ], [ %.03.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader1753 ] ; 2 uses
  %.092.i.i.i.i.i.i.i = phi ptr [ %i.nm, %.lr.ph.i.i.i.i.i.i.i ], [ %.092.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader1753 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !373)
  call void @llvm.experimental.noalias.scope.decl(metadata !374)
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.092.i.i.i.i.i.i.i, align 8, !tbaa !117, !alias.scope !374
  store i64 %.val.i.i.i.i.i.i.i.i.i.i.i, ptr %.03.i.i.i.i.i.i.i, align 8, !tbaa !117, !alias.scope !373
  store ptr null, ptr %.092.i.i.i.i.i.i.i, align 8, !tbaa !117, !alias.scope !374
  %i.nm = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.nm, %.val3.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit27.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !334

_ZNSt6vectorISt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit27.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block1748, %.noexc7.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.mw, %.noexc7.i ], [ %i.nf, %middle.block1748 ], [ %i.nn, %.lr.ph.i.i.i.i.i.i.i ]
  %i.no = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i28.i.i.i.i = icmp eq ptr %.val.i237775795, null
  br i1 %.not.i28.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit27.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.val.i237775795, i64 noundef %i.me) #30
  %.pre13.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !123
  %.pre15.pre.i = load i64, ptr %i.cw, align 8, !tbaa !124
  br label %_ZNSt6vectorISt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i

_ZNSt6vectorISt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i: ; preds = %bb.ba, %_ZNSt6vectorISt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit27.i.i.i.i
  %.pre15.i = phi i64 [ %.pre15.pre.i, %bb.ba ], [ %i.ma, %_ZNSt6vectorISt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit27.i.i.i.i ]
  %.pre13.i = phi i64 [ %.pre13.pre.i, %bb.ba ], [ %i.mb, %_ZNSt6vectorISt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit27.i.i.i.i ]
  store ptr %i.no, ptr %i.cx, align 8, !tbaa !125
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.mw, i64 %i.mu
  store ptr %i.np, ptr %i.cy, align 8, !tbaa !126
  br label %bb.bb

_ZNSt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS4_EED2Ev.exit10.i.loopexit: ; preds = %_ZNKSt6vectorISt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit540 = landingpad { ptr, i32 }
          cleanup
  store ptr %.val.i237775795, ptr %i.am, align 8
  store ptr %i.lt, ptr %i.ct, align 8
  store ptr %i.lu, ptr %12, align 16
  br label %_ZNSt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS4_EED2Ev.exit10.i

_ZNSt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS4_EED2Ev.exit10.i.loopexit.split-lp: ; preds = %bb.az
  %lpad.loopexit.split-lp541 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS4_EED2Ev.exit10.i

_ZNSt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS4_EED2Ev.exit10.i: ; preds = %_ZNSt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS4_EED2Ev.exit10.i.loopexit.split-lp, %_ZNSt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS4_EED2Ev.exit10.i.loopexit
  %lpad.phi542 = phi { ptr, i32 } [ %lpad.loopexit540, %_ZNSt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS4_EED2Ev.exit10.i.loopexit ], [ %lpad.loopexit.split-lp541, %_ZNSt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS4_EED2Ev.exit10.i.loopexit.split-lp ]
  call void @_ZdaPv(ptr noundef nonnull %i.ml) #30
  br label %.body241

bb.bb:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i, %bb.ax, %._crit_edge.i
  %.val.i237774 = phi ptr [ %i.mw, %_ZNSt6vectorISt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i ], [ %.val.i237775795, %bb.ax ], [ %.val.i237775795, %._crit_edge.i ] ; 5 uses
  %i.nq = phi i64 [ %.pre15.i, %_ZNSt6vectorISt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i ], [ %i.ma, %bb.ax ], [ %i.ma, %._crit_edge.i ] ; 2 uses
  %i.nr = phi i64 [ %.pre13.i, %_ZNSt6vectorISt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i ], [ %i.mb, %bb.ax ], [ %i.mb, %._crit_edge.i ]
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %.val.i237774, i64 %i.nr
  %.val4.i = load ptr, ptr %i.ns, align 8, !tbaa !117
  %i.nt = getelementptr inbounds nuw [24 x i8], ptr %.val4.i, i64 %i.nq ; 8 uses
  %i.nu = add i64 %i.nq, 1
  store i64 %i.nu, ptr %i.cw, align 8, !tbaa !124
  store ptr %i.lw, ptr %i.nt, align 8, !tbaa !369
  br i1 %3, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0429.04684741157, i64 %.0139796
  %i.nw = load float, ptr %i.nv, align 4, !tbaa !98
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nt, i64 20
  store float %i.nw, ptr %i.nx, align 4, !tbaa !371
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0410.01165, i64 %.0139796
  %i.nz = load double, ptr %i.ny, align 8, !tbaa !122
  %i.oa = fptrunc double %i.nz to float
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb
  %i.ob = getelementptr inbounds nuw i8, ptr %i.lw, i64 32
  %i.oc = load float, ptr %i.ob, align 8, !tbaa !86
  %i.od = load float, ptr %i.ll, align 4, !tbaa !371
  %i.oe = fadd float %i.oc, %i.od
  %i.of = getelementptr inbounds nuw i8, ptr %i.nt, i64 20
  store float %i.oe, ptr %i.of, align 4, !tbaa !371
  %i.og = getelementptr inbounds nuw i8, ptr %i.lw, i64 36
  %i.oh = load float, ptr %i.og, align 4, !tbaa !87
  %i.oi = load float, ptr %i.ll, align 4, !tbaa !371
  %i.oj = fadd float %i.oh, %i.oi
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.sink = phi float [ %i.oa, %bb.bc ], [ %i.oj, %bb.bd ]
  %i.ok = getelementptr inbounds nuw i8, ptr %i.nt, i64 16
  store float %.sink, ptr %i.ok, align 8, !tbaa !114
  %i.ol = getelementptr inbounds nuw i8, ptr %i.nt, i64 8
  store ptr %i.ds, ptr %i.ol, align 8, !tbaa !370
  %i.om = load ptr, ptr %i.cz, align 16, !tbaa !127
  %.not.i.i243 = icmp eq ptr %i.lt, %i.om
  br i1 %.not.i.i243, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  store ptr %i.nt, ptr %i.lt, align 8, !tbaa !117
  br label %_ZNSt6vectorIPN13sentencepiece7unigram12_GLOBAL__N_110HypothesisESaIS4_EE9push_backERKS4_.exit.i

bb.bg:                                            ; preds = %bb.be
  %i.on = ptrtoint ptr %i.lt to i64
  %i.oo = ptrtoint ptr %i.lu to i64
  %i.op = sub i64 %i.on, %i.oo                    ; 6 uses
  %i.oq = icmp eq i64 %i.op, 9223372036854775800
  br i1 %i.oq, label %bb.bh, label %_ZNKSt6vectorIPN13sentencepiece7unigram12_GLOBAL__N_110HypothesisESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.bh:                                            ; preds = %bb.bg
  store ptr %.val.i237774, ptr %i.am, align 8
  store ptr %i.lt, ptr %i.ct, align 8
  store ptr %i.lu, ptr %12, align 16
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #33
          to label %.noexc247 unwind label %.loopexit.split-lp536.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc247:                                        ; preds = %bb.bh
  unreachable

_ZNKSt6vectorIPN13sentencepiece7unigram12_GLOBAL__N_110HypothesisESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bg
  %i.or = ashr exact i64 %i.op, 3                 ; 3 uses
  %i.os = icmp eq ptr %i.lt, %i.lu
  %.sroa.speculated.i.i.i.i = select i1 %i.os, i64 1, i64 %i.or
  %i.ot = add nsw i64 %.sroa.speculated.i.i.i.i, %i.or ; 2 uses
  %i.ou = icmp ult i64 %i.ot, %i.or
  %i.ov = call i64 @llvm.umin.i64(i64 %i.ot, i64 1152921504606846975)
  %i.ow = select i1 %i.ou, i64 1152921504606846975, i64 %i.ov ; 3 uses
  %.not.i.i.i.i246 = icmp ne i64 %i.ow, 0
  call void @llvm.assume(i1 %.not.i.i.i.i246)
  %i.ox = shl nuw nsw i64 %i.ow, 3
  %i.oy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ox) #32
          to label %.noexc248 unwind label %.loopexit535 ; 4 uses

.noexc248:                                        ; preds = %_ZNKSt6vectorIPN13sentencepiece7unigram12_GLOBAL__N_110HypothesisESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.oz = getelementptr inbounds i8, ptr %i.oy, i64 %i.op ; 3 uses
  store ptr %i.nt, ptr %i.oz, align 8, !tbaa !117
  %i.pa = icmp sgt i64 %i.op, 0
  br i1 %i.pa, label %bb.bi, label %_ZNSt6vectorIPN13sentencepiece7unigram12_GLOBAL__N_110HypothesisESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit20.i.i.i

bb.bi:                                            ; preds = %.noexc248
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.oy, ptr align 8 %i.lu, i64 %i.op, i1 false)
  br label %_ZNSt6vectorIPN13sentencepiece7unigram12_GLOBAL__N_110HypothesisESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit20.i.i.i

_ZNSt6vectorIPN13sentencepiece7unigram12_GLOBAL__N_110HypothesisESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit20.i.i.i: ; preds = %bb.bi, %.noexc248
  %.not.i21.i.i.i = icmp eq ptr %i.lu, null
  br i1 %.not.i21.i.i.i, label %_ZNSt6vectorIPN13sentencepiece7unigram12_GLOBAL__N_110HypothesisESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt6vectorIPN13sentencepiece7unigram12_GLOBAL__N_110HypothesisESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit20.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.lu, i64 noundef %i.op) #30
  br label %_ZNSt6vectorIPN13sentencepiece7unigram12_GLOBAL__N_110HypothesisESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIPN13sentencepiece7unigram12_GLOBAL__N_110HypothesisESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.bj, %_ZNSt6vectorIPN13sentencepiece7unigram12_GLOBAL__N_110HypothesisESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit20.i.i.i
  %i.pb = getelementptr inbounds nuw [8 x i8], ptr %i.oy, i64 %i.ow
  store ptr %i.pb, ptr %i.cz, align 16, !tbaa !127
  %.pre = load ptr, ptr %i.oz, align 8, !tbaa !117
  br label %_ZNSt6vectorIPN13sentencepiece7unigram12_GLOBAL__N_110HypothesisESaIS4_EE9push_backERKS4_.exit.i

_ZNSt6vectorIPN13sentencepiece7unigram12_GLOBAL__N_110HypothesisESaIS4_EE9push_backERKS4_.exit.i: ; preds = %_ZNSt6vectorIPN13sentencepiece7unigram12_GLOBAL__N_110HypothesisESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.bf
  %i.pc = phi ptr [ %i.nt, %bb.bf ], [ %.pre, %_ZNSt6vectorIPN13sentencepiece7unigram12_GLOBAL__N_110HypothesisESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ] ; 2 uses
  %i.pd = phi ptr [ %i.lu, %bb.bf ], [ %i.oy, %_ZNSt6vectorIPN13sentencepiece7unigram12_GLOBAL__N_110HypothesisESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ] ; 6 uses
  %.pn831 = phi ptr [ %i.lt, %bb.bf ], [ %i.oz, %_ZNSt6vectorIPN13sentencepiece7unigram12_GLOBAL__N_110HypothesisESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ]
  %.val.i244 = getelementptr inbounds nuw i8, ptr %.pn831, i64 8 ; 3 uses
  %i.pe = ptrtoint ptr %.val.i244 to i64
end_hunk_0
begin_hunk_1_@_ZN13sentencepiece7unigram7Lattice5NBestEmbf:bb.a
  %i.rz = add nsw i32 %.0124821, 1                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #31
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessageC1EPKciNS2_10WarningTagE(ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull @.str.1, i32 noundef 522) #34
          to label %bb.cn unwind label %bb.cu

bb.cn:                                            ; preds = %bb.cm
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %22, i64 20, ptr nonnull @.str.9)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi21EEERS2_RAT__Kc.exit unwind label %bb.cv

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi21EEERS2_RAT__Kc.exit: ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %i.qu, ptr %i.d, align 8, !tbaa !79
  %i.sa = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessagelsImEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.co unwind label %bb.cv     ; 2 uses

bb.co:                                            ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi21EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.sa, i64 19, ptr nonnull @.str.10)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi20EEERS2_RAT__Kc.exit unwind label %bb.cv

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi20EEERS2_RAT__Kc.exit: ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %i.rz, ptr %i.c, align 4, !tbaa !128
  %i.sb = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessagelsIiEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.sa, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.cp unwind label %bb.cv     ; 2 uses

bb.cp:                                            ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi20EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.sb, i64 10, ptr nonnull @.str.11)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi11EEERS2_RAT__Kc.exit unwind label %bb.cv

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi11EEERS2_RAT__Kc.exit: ; preds = %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %.sroa.speculated, ptr %i.b, align 8, !tbaa !79
  %i.sc = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessagelsImEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.sb, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.cq unwind label %bb.cv     ; 2 uses

bb.cq:                                            ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi11EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.sc, i64 1, ptr nonnull @.str.12)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit unwind label %bb.cv

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit: ; preds = %bb.cq
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.sc)
          to label %_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit284 unwind label %bb.cv

_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit284: ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2026052612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %22) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #31
  br i1 %.not827, label %._crit_edge812, label %.lr.ph811

._crit_edge812.loopexit:                          ; preds = %bb.dz
  %.pre1056 = load ptr, ptr %12, align 16, !tbaa !129
  %i.sd = load <2 x ptr>, ptr %19, align 16, !tbaa !116
  %.pre1059 = load ptr, ptr %i.dp, align 16, !tbaa !127
  br label %._crit_edge812

._crit_edge812:                                   ; preds = %._crit_edge812.loopexit, %_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit284
  %i.se = phi ptr [ %i.zb, %._crit_edge812.loopexit ], [ null, %_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit284 ]
  %i.sf = phi ptr [ %.val3.i3671053, %._crit_edge812.loopexit ], [ null, %_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit284 ]
  %i.sg = phi ptr [ %.promoted8011041, %._crit_edge812.loopexit ], [ null, %_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit284 ]
  %i.sh = phi ptr [ %.pre1059, %._crit_edge812.loopexit ], [ null, %_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit284 ]
  %i.si = phi ptr [ %.pre1056, %._crit_edge812.loopexit ], [ %.val180, %_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit284 ] ; 3 uses
  %i.sj = phi <2 x ptr> [ %i.sd, %._crit_edge812.loopexit ], [ splat (ptr null), %_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit284 ]
  %i.sk = load ptr, ptr %i.cz, align 16, !tbaa !127
  store <2 x ptr> %i.sj, ptr %12, align 16, !tbaa !116
  store ptr %i.sh, ptr %i.cz, align 16, !tbaa !127
  %.not.i.i.i.i.i.i = icmp eq ptr %i.si, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(25) %19, i8 0, i64 24, i1 false)
  %i.sl = insertelement <2 x ptr> poison, ptr %i.sf, i64 0
  %i.sm = insertelement <2 x ptr> %i.sl, ptr %i.se, i64 1
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt14priority_queueIPN13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt6vectorIS4_SaIS4_EEZNS1_7Lattice5NBestEmbfE20HypothesisComparatorEaSEOSA_.exit, label %bb.cr

bb.cr:                                            ; preds = %._crit_edge812
  %i.sn = ptrtoint ptr %i.sk to i64
  %i.so = ptrtoint ptr %i.si to i64
  %i.sp = sub i64 %i.sn, %i.so
  call void @_ZdlPvm(ptr noundef nonnull %i.si, i64 noundef %i.sp) #30
  %.pre1060 = load ptr, ptr %i.df, align 8, !tbaa !130
  %i.sq = load <2 x ptr>, ptr %i.dn, align 8, !tbaa !378
  br label %_ZNSt14priority_queueIPN13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt6vectorIS4_SaIS4_EEZNS1_7Lattice5NBestEmbfE20HypothesisComparatorEaSEOSA_.exit

_ZNSt14priority_queueIPN13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt6vectorIS4_SaIS4_EEZNS1_7Lattice5NBestEmbfE20HypothesisComparatorEaSEOSA_.exit: ; preds = %._crit_edge812, %bb.cr
  %i.sr = phi ptr [ %i.sg, %._crit_edge812 ], [ %.pre1060, %bb.cr ]
  %i.ss = phi <2 x ptr> [ %i.sm, %._crit_edge812 ], [ %i.sq, %bb.cr ]
  %i.st = load ptr, ptr %i.am, align 8, !tbaa !130 ; 5 uses
  %i.su = load ptr, ptr %i.cx, align 8, !tbaa !125 ; 2 uses
  %i.sv = load ptr, ptr %i.cy, align 8, !tbaa !126
  store ptr %i.sr, ptr %i.am, align 8, !tbaa !130
  store <2 x ptr> %i.ss, ptr %i.cx, align 8, !tbaa !378
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.st, %i.su
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt14priority_queueIPN13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt6vectorIS4_SaIS4_EEZNS1_7Lattice5NBestEmbfE20HypothesisComparatorEaSEOSA_.exit, %_ZSt8_DestroyISt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS5_EEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.sw, %_ZSt8_DestroyISt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS5_EEEvPT_.exit.i.i.i.i.i.i ], [ %i.st, %_ZNSt14priority_queueIPN13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt6vectorIS4_SaIS4_EEZNS1_7Lattice5NBestEmbfE20HypothesisComparatorEaSEOSA_.exit ] ; 2 uses
  %.0.val.i.i.i.i.i.i = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !117 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.0.val.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS5_EEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  call void @_ZdaPv(ptr noundef nonnull %.0.val.i.i.i.i.i.i) #30
  br label %_ZSt8_DestroyISt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS5_EEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS5_EEEvPT_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.sw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i285 = icmp eq ptr %i.sw, %i.su
  br i1 %.not.i.i.i.i.i.i285, label %_ZSt8_DestroyIPSt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !5

_ZSt8_DestroyIPSt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS5_EEEvPT_.exit.i.i.i.i.i.i, %_ZNSt14priority_queueIPN13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt6vectorIS4_SaIS4_EEZNS1_7Lattice5NBestEmbfE20HypothesisComparatorEaSEOSA_.exit
  %.not.i.i2.i.i.i.i = icmp eq ptr %i.st, null
  br i1 %.not.i.i2.i.i.i.i, label %_ZN13sentencepiece5model8FreeListINS_7unigram12_GLOBAL__N_110HypothesisEEaSEOS5_.exit, label %bb.cs

bb.cs:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i.i
  %i.sx = ptrtoint ptr %i.sv to i64
  %i.sy = ptrtoint ptr %i.st to i64
  %i.sz = sub i64 %i.sx, %i.sy
  call void @_ZdlPvm(ptr noundef nonnull %i.st, i64 noundef %i.sz) #30
  br label %_ZN13sentencepiece5model8FreeListINS_7unigram12_GLOBAL__N_110HypothesisEEaSEOS5_.exit

_ZN13sentencepiece5model8FreeListINS_7unigram12_GLOBAL__N_110HypothesisEEaSEOS5_.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i.i, %bb.cs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cw, ptr noundef nonnull align 8 dereferenceable(24) %i.dm, i64 24, i1 false)
  %.val.i.i = load i64, ptr %21, align 8          ; 3 uses
  %i.ta = and i64 %.val.i.i, 255                  ; 2 uses
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.ta      ; 4 uses
  %i.tb = add nsw i64 %notmask.i.i.i.i.i, 281474976710655
  %i.tc = or i64 %i.tb, %notmask.i.i.i.i.i
  %i.td = icmp eq i64 %i.tc, -1
  call void @llvm.assume(i1 %i.td)
  %i.te = icmp ne i64 %i.ta, 0
  call void @llvm.assume(i1 %i.te)
  %i.tf = icmp samesign ugt i64 %notmask.i.i.i.i.i, -281474976710657
  call void @llvm.assume(i1 %i.tf)
  %i.tg = and i64 %.val.i.i, 254
  %i.th = icmp eq i64 %i.tg, 0
  br i1 %i.th, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN13sentencepiece7unigram12_GLOBAL__N_110HypothesisEPS7_EEJEED2Ev.exit, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN13sentencepiece7unigram12_GLOBAL__N_110HypothesisEPS7_EEJEE7deallocEv.exit.i.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN13sentencepiece7unigram12_GLOBAL__N_110HypothesisEPS7_EEJEE7deallocEv.exit.i.i: ; preds = %_ZN13sentencepiece5model8FreeListINS_7unigram12_GLOBAL__N_110HypothesisEEaSEOS5_.exit
  %i.ti = and i64 %.val.i.i, 65536
  %.not.i.i.i.i.i286 = icmp ne i64 %i.ti, 0
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.di, align 8, !tbaa !80
  %i.tj = xor i64 %notmask.i.i.i.i.i, -1
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(24) %21, i64 noundef %i.tj, ptr noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 noundef 16, i64 noundef 8, i1 noundef zeroext %.not.i.i.i.i.i286)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN13sentencepiece7unigram12_GLOBAL__N_110HypothesisEPS7_EEJEED2Ev.exit unwind label %bb.ct

bb.ct:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN13sentencepiece7unigram12_GLOBAL__N_110HypothesisEPS7_EEJEE7deallocEv.exit.i.i
  %i.tk = landingpad { ptr, i32 }
          catch ptr null
  %i.tl = extractvalue { ptr, i32 } %i.tk, 0
  call void @__clang_call_terminate(ptr %i.tl) #36
  unreachable

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN13sentencepiece7unigram12_GLOBAL__N_110HypothesisEPS7_EEJEED2Ev.exit: ; preds = %_ZN13sentencepiece5model8FreeListINS_7unigram12_GLOBAL__N_110HypothesisEEaSEOS5_.exit, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN13sentencepiece7unigram12_GLOBAL__N_110HypothesisEPS7_EEJEE7deallocEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #31
  br label %bb.eb

bb.cu:                                            ; preds = %bb.cm
  %i.tm = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.cv:                                            ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit, %bb.cq, %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi11EEERS2_RAT__Kc.exit, %bb.cp, %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi20EEERS2_RAT__Kc.exit, %bb.co, %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi21EEERS2_RAT__Kc.exit, %bb.cn
  %i.tn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2026052612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %22) #35
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.pn152 = phi { ptr, i32 } [ %i.tn, %bb.cv ], [ %i.tm, %bb.cu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #31
  br label %.body391

.lr.ph811:                                        ; preds = %_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit284, %bb.dz
  %i.to = phi ptr [ %i.zb, %bb.dz ], [ null, %_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit284 ] ; 2 uses
  %.val3.i3671052 = phi ptr [ %.val3.i3671053, %bb.dz ], [ null, %_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit284 ] ; 2 uses
  %.pre.i3641046 = phi i64 [ %.pre.i3641047, %bb.dz ], [ 0, %_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit284 ] ; 2 uses
  %i.tp = phi i64 [ %i.zc, %bb.dz ], [ 0, %_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit284 ] ; 2 uses
  %.promoted801 = phi ptr [ %.promoted8011041, %bb.dz ], [ null, %_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit284 ] ; 2 uses
  %.0810 = phi i64 [ %i.aax, %bb.dz ], [ 0, %_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit284 ]
  %.val176 = load ptr, ptr %12, align 16, !tbaa !116 ; 12 uses
  %i.tq = load ptr, ptr %.val176, align 8, !tbaa !117 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr null, ptr %i.a, align 8, !tbaa !117
  %.not39.i = icmp eq ptr %i.tq, null
  br i1 %.not39.i, label %bb.ds, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph811
  %.val.i.i293.pre1043 = load i64, ptr %21, align 8
  br label %bb.cx

bb.cx:                                            ; preds = %bb.dr, %.lr.ph.i
  %i.tr = phi ptr [ %i.to, %.lr.ph.i ], [ %i.wy, %bb.dr ] ; 7 uses
  %.val3.i367 = phi ptr [ %.val3.i3671052, %.lr.ph.i ], [ %.val3.i3671055, %bb.dr ] ; 6 uses
  %.pre.i364 = phi i64 [ %.pre.i3641046, %.lr.ph.i ], [ %.pre.i3641049, %bb.dr ] ; 3 uses
  %i.ts = phi i64 [ %i.tp, %.lr.ph.i ], [ %i.xc, %bb.dr ] ; 3 uses
  %.val.i.i293 = phi i64 [ %.val.i.i293.pre1043, %.lr.ph.i ], [ %.val.i.i2931045, %bb.dr ] ; 4 uses
  %.val.i366803 = phi ptr [ %.promoted801, %.lr.ph.i ], [ %.val.i366802, %bb.dr ] ; 17 uses
  %.0641.i = phi ptr [ %i.a, %.lr.ph.i ], [ %i.za, %bb.dr ] ; 2 uses
  %.02040.i = phi ptr [ %i.tq, %.lr.ph.i ], [ %i.yz, %bb.dr ] ; 9 uses
  %i.tt = ptrtoaddr ptr %i.tr to i64
  %i.tu = and i64 %.val.i.i293, 254
  %i.tv = icmp eq i64 %i.tu, 0
  br i1 %i.tv, label %bb.cy, label %bb.da

bb.cy:                                            ; preds = %bb.cx
  %.not.i.i.i.i297 = icmp ult i64 %.val.i.i293, 131072
  br i1 %.not.i.i.i.i297, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN13sentencepiece7unigram12_GLOBAL__N_110HypothesisEPS7_EEJEE4findIS9_EENSC_8iteratorERKT_.exit.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %.val4.i.i.i = load ptr, ptr %i.di, align 8, !tbaa !117
  %i.tw = icmp eq ptr %.val4.i.i.i, %.02040.i
  %spec.select.i.i.i = select i1 %i.tw, { ptr, ptr } %.fca.1.insert.i.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN13sentencepiece7unigram12_GLOBAL__N_110HypothesisEPS7_EEJEE4findIS9_EENSC_8iteratorERKT_.exit.i

bb.da:                                            ; preds = %bb.cx
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.di, align 8, !tbaa !80 ; 4 uses
  %i.tx = and i64 %.val.i.i293, 255
  %notmask.i.i.i.i.i.i.i = shl nsw i64 -1, %i.tx
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.ty = lshr i64 %.val.i.i293, 8
  %i.tz = and i64 %i.ty, 255
  %i.ua = ptrtoint ptr %.02040.i to i64
  %i.ub = xor i64 %i.ua, ptrtoint (ptr @_ZN4absl12lts_2026052613hash_internal15MixingHashState5kSeedE to i64)
  %i.uc = zext i64 %i.ub to i128
  %i.ud = mul nuw nsw i128 %i.uc, 8779197792823184629 ; 2 uses
  %i.ue = lshr i128 %i.ud, 64
  %i.uf = xor i128 %i.ue, %i.ud
  %i.ug = trunc i128 %i.uf to i64                 ; 2 uses
  %i.uh = xor i64 %i.tz, %i.ug
  %i.ui = xor i64 %notmask.i.i.i.i.i.i.i, -1      ; 2 uses
  %i.uj = lshr i64 %i.ug, 57
  %i.uk = trunc nuw nsw i64 %i.uj to i8
  %.val14.i.i.i = load ptr, ptr %i.dj, align 8, !tbaa !80 ; 2 uses
  %i.ul = insertelement <16 x i8> poison, i8 %i.uk, i64 0
  %i.um = shufflevector <16 x i8> %i.ul, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.db

bb.db:                                            ; preds = %bb.dd, %bb.da
  %.pn.i9.i.i = phi i64 [ %i.uh, %bb.da ], [ %i.vi, %bb.dd ]
  %.sroa.13.0.i.i.i = phi i64 [ 0, %bb.da ], [ %i.vh, %bb.dd ]
  %.sroa.629.0.i.i.i = and i64 %.pn.i9.i.i, %i.ui ; 4 uses
  %i.un = getelementptr inbounds nuw [16 x i8], ptr %.val14.i.i.i, i64 %.sroa.629.0.i.i.i
  call void @llvm.prefetch.p0(ptr %i.un, i32 0, i32 3, i32 1)
  %i.uo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %.sroa.629.0.i.i.i
  %i.up = load <16 x i8>, ptr %i.uo, align 1, !tbaa !80 ; 2 uses
  %i.uq = icmp eq <16 x i8> %i.um, %i.up
  %i.ur = bitcast <16 x i1> %i.uq to i16
  %i.us = zext i16 %i.ur to i32
  %i.ut = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.us) #26, !srcloc !131 ; 2 uses
  %.not50.i.i.i = icmp eq i32 %i.ut, 0
  br i1 %.not50.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i294

.lr.ph.i.i.i294:                                  ; preds = %bb.db, %bb.dc
  %.sroa.020.051.i.i.i = phi i32 [ %i.vc, %bb.dc ], [ %i.ut, %bb.db ] ; 3 uses
  %i.uu = call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.020.051.i.i.i, i1 true)
  %i.uv = zext nneg i32 %i.uu to i64
  %i.uw = add nuw i64 %.sroa.629.0.i.i.i, %i.uv
  %i.ux = and i64 %i.uw, %i.ui                    ; 2 uses
  %i.uy = getelementptr inbounds nuw [16 x i8], ptr %.val14.i.i.i, i64 %i.ux ; 2 uses
  %.val16.i.i.i = load ptr, ptr %i.uy, align 8, !tbaa !117
  %i.uz = icmp eq ptr %.val16.i.i.i, %.02040.i
  br i1 %i.uz, label %.thread37.i.i.i, label %bb.dc, !prof !132

.thread37.i.i.i:                                  ; preds = %.lr.ph.i.i.i294
  %i.va = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.ux
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.i) ]
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN13sentencepiece7unigram12_GLOBAL__N_110HypothesisEPS7_EEJEE10find_largeIS9_EENSC_8iteratorERKT_m.exit.i.i

bb.dc:                                            ; preds = %.lr.ph.i.i.i294
  %i.vb = add i32 %.sroa.020.051.i.i.i, -1
  %i.vc = and i32 %i.vb, %.sroa.020.051.i.i.i     ; 2 uses
  %.not.i.i.i295 = icmp eq i32 %i.vc, 0
  br i1 %.not.i.i.i295, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i294

._crit_edge.i.i.i:                                ; preds = %bb.dc, %bb.db
  %i.vd = icmp eq <16 x i8> %i.up, splat (i8 -128)
  %i.ve = bitcast <16 x i1> %i.vd to i16
  %i.vf = zext i16 %i.ve to i32
  %i.vg = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.vf) #26, !srcloc !131
  %.not48.i.i.i = icmp eq i32 %i.vg, 0
  br i1 %.not48.i.i.i, label %bb.dd, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN13sentencepiece7unigram12_GLOBAL__N_110HypothesisEPS7_EEJEE10find_largeIS9_EENSC_8iteratorERKT_m.exit.i.i, !prof !88

bb.dd:                                            ; preds = %._crit_edge.i.i.i
  %i.vh = add i64 %.sroa.13.0.i.i.i, 16           ; 2 uses
  %i.vi = add i64 %i.vh, %.sroa.629.0.i.i.i
  br label %bb.db, !llvm.loop !336

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN13sentencepiece7unigram12_GLOBAL__N_110HypothesisEPS7_EEJEE10find_largeIS9_EENSC_8iteratorERKT_m.exit.i.i: ; preds = %._crit_edge.i.i.i, %.thread37.i.i.i
  %.sroa.0.4.ph.i.i.i = phi ptr [ %i.va, %.thread37.i.i.i ], [ null, %._crit_edge.i.i.i ]
  %.sroa.3.4.ph.i.i.i = phi ptr [ %i.uy, %.thread37.i.i.i ], [ undef, %._crit_edge.i.i.i ]
  %.fca.0.insert.i.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i.i, 0
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i, ptr %.sroa.3.4.ph.i.i.i, 1
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN13sentencepiece7unigram12_GLOBAL__N_110HypothesisEPS7_EEJEE4findIS9_EENSC_8iteratorERKT_.exit.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN13sentencepiece7unigram12_GLOBAL__N_110HypothesisEPS7_EEJEE4findIS9_EENSC_8iteratorERKT_.exit.i: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN13sentencepiece7unigram12_GLOBAL__N_110HypothesisEPS7_EEJEE10find_largeIS9_EENSC_8iteratorERKT_m.exit.i.i, %bb.cz, %bb.cy
  %.pn.i.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN13sentencepiece7unigram12_GLOBAL__N_110HypothesisEPS7_EEJEE10find_largeIS9_EENSC_8iteratorERKT_m.exit.i.i ], [ { ptr null, ptr undef }, %bb.cy ], [ %spec.select.i.i.i, %bb.cz ] ; 2 uses
  %i.vj = extractvalue { ptr, ptr } %.pn.i.i, 0
  %.not31.i = icmp eq ptr %i.vj, null
  br i1 %.not31.i, label %bb.de, label %.thread.i

.thread.i:                                        ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN13sentencepiece7unigram12_GLOBAL__N_110HypothesisEPS7_EEJEE4findIS9_EENSC_8iteratorERKT_.exit.i
  store ptr %.val.i366803, ptr %i.df, align 8
  %i.vk = extractvalue { ptr, ptr } %.pn.i.i, 1
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 8
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !380
  store ptr %i.vm, ptr %.0641.i, align 8, !tbaa !117
  br label %bb.ds

bb.de:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN13sentencepiece7unigram12_GLOBAL__N_110HypothesisEPS7_EEJEE4findIS9_EENSC_8iteratorERKT_.exit.i
  %.not.i362 = icmp ult i64 %i.ts, 512
  br i1 %.not.i362, label %._crit_edge.i365, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.vn = add i64 %.pre.i364, 1                   ; 2 uses
  store i64 %i.vn, ptr %.phi.trans.insert.i363, align 8, !tbaa !123
  store i64 0, ptr %i.dm, align 8, !tbaa !124
  br label %._crit_edge.i365

._crit_edge.i365:                                 ; preds = %bb.df, %bb.de
  %.pre.i3641051 = phi i64 [ %i.vn, %bb.df ], [ %.pre.i364, %bb.de ] ; 7 uses
  %i.vo = phi i64 [ 0, %bb.df ], [ %i.ts, %bb.de ] ; 3 uses
  %i.vp = ptrtoint ptr %.val3.i367 to i64
  %i.vq = ptrtoint ptr %.val.i366803 to i64       ; 2 uses
  %i.vr = sub i64 %i.vp, %i.vq                    ; 4 uses
  %i.vs = ashr exact i64 %i.vr, 3
  %i.vt = icmp eq i64 %.pre.i3641051, %i.vs
  br i1 %i.vt, label %bb.dg, label %.noexc298

bb.dg:                                            ; preds = %._crit_edge.i365
  %i.vu = invoke noalias noundef nonnull dereferenceable(12288) ptr @_Znam(i64 noundef 12288) #32
          to label %.noexc390 unwind label %.loopexit524 ; 4 uses

.noexc390:                                        ; preds = %bb.dg
  %.not.i.i.i370 = icmp eq ptr %.val3.i367, %i.tr
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12288) %i.vu, i8 0, i64 12288, i1 false)
  br i1 %.not.i.i.i370, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %.noexc390
  %i.vv = ptrtoint ptr %i.vu to i64
  store i64 %i.vv, ptr %.val3.i367, align 8, !tbaa !117
  %i.vw = getelementptr inbounds nuw i8, ptr %.val3.i367, i64 8 ; 2 uses
  store ptr %i.vw, ptr %i.dn, align 8, !tbaa !125
  br label %.noexc298

bb.di:                                            ; preds = %.noexc390
  %i.vx = icmp eq i64 %i.vr, 9223372036854775800
  br i1 %i.vx, label %bb.dj, label %_ZNKSt6vectorISt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i371

bb.dj:                                            ; preds = %bb.di
  store ptr %.val.i366803, ptr %i.df, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #33
          to label %.noexc.i389 unwind label %_ZNSt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS4_EED2Ev.exit10.i374.loopexit.split-lp

.noexc.i389:                                      ; preds = %bb.dj
  unreachable

_ZNKSt6vectorISt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i371: ; preds = %bb.di
  %i.vy = icmp eq ptr %i.tr, %.val.i366803        ; 2 uses
  %.sroa.speculated.i.i.i.i.i372 = select i1 %i.vy, i64 1, i64 %.pre.i3641051
  %i.vz = add nsw i64 %.sroa.speculated.i.i.i.i.i372, %.pre.i3641051 ; 2 uses
  %i.wa = icmp ult i64 %i.vz, %.pre.i3641051
  %i.wb = call i64 @llvm.umin.i64(i64 %i.vz, i64 1152921504606846975)
  %i.wc = select i1 %i.wa, i64 1152921504606846975, i64 %i.wb ; 3 uses
  %.not.i.i.i.i.i373 = icmp ne i64 %i.wc, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i373)
  %i.wd = shl nuw nsw i64 %i.wc, 3
  %i.we = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.wd) #32
          to label %.noexc7.i375 unwind label %_ZNSt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS4_EED2Ev.exit10.i374.loopexit ; 10 uses

.noexc7.i375:                                     ; preds = %_ZNKSt6vectorISt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i371
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 %i.vr
  %i.wg = ptrtoint ptr %i.vu to i64
  store i64 %i.wg, ptr %i.wf, align 8, !tbaa !117
  br i1 %i.vy, label %_ZNSt6vectorISt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit27.i.i.i.i381, label %.lr.ph.i.i.i.i.i.i.i376.preheader

.lr.ph.i.i.i.i.i.i.i376.preheader:                ; preds = %.noexc7.i375
  %i.wh = add i64 %i.tt, -8
  %i.wi = sub i64 %i.wh, %i.vq                    ; 3 uses
  %i.wj = lshr i64 %i.wi, 3
  %i.wk = add nuw nsw i64 %i.wj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.wi, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i376.preheader1752, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i376.preheader
  %i.wl = and i64 %i.wi, -8
  %24 = add i64 %i.wl, 8                          ; 2 uses
  %scevgep1724 = getelementptr i8, ptr %i.we, i64 %24
  %scevgep1725 = getelementptr i8, ptr %.val.i366803, i64 %24
  %bound0 = icmp ult ptr %i.we, %scevgep1725
  %bound1 = icmp ult ptr %.val.i366803, %scevgep1724
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i376.preheader1752, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.wk, 4611686018427387900     ; 3 uses
  %i.wm = shl i64 %n.vec, 3                       ; 2 uses
  %i.wn = getelementptr i8, ptr %i.we, i64 %i.wm  ; 2 uses
  %i.wo = getelementptr i8, ptr %.val.i366803, i64 %i.wm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.wp = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.we, i64 %i.wp ; 2 uses
  %next.gep1726 = getelementptr i8, ptr %.val.i366803, i64 %i.wp ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !381)
  call void @llvm.experimental.noalias.scope.decl(metadata !382)
  %i.wq = getelementptr i8, ptr %next.gep1726, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep1726, align 8, !tbaa !117, !alias.scope !383
  %wide.load1727 = load <2 x i64>, ptr %i.wq, align 8, !tbaa !117, !alias.scope !383
  %i.wr = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !117, !alias.scope !384, !noalias !385
  store <2 x i64> %wide.load1727, ptr %i.wr, align 8, !tbaa !117, !alias.scope !384, !noalias !385
  %i.ws = getelementptr i8, ptr %next.gep1726, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1726, align 8, !tbaa !117, !alias.scope !383
  store <2 x ptr> splat (ptr null), ptr %i.ws, align 8, !tbaa !117, !alias.scope !383
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.wt = icmp eq i64 %index.next, %n.vec
  br i1 %i.wt, label %middle.block, label %vector.body, !llvm.loop !343

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.wk, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit27.i.i.i.i381, label %.lr.ph.i.i.i.i.i.i.i376.preheader1752

.lr.ph.i.i.i.i.i.i.i376.preheader1752:            ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i376.preheader, %middle.block
  %.03.i.i.i.i.i.i.i377.ph = phi ptr [ %i.we, %vector.memcheck ], [ %i.we, %.lr.ph.i.i.i.i.i.i.i376.preheader ], [ %i.wn, %middle.block ]
  %.092.i.i.i.i.i.i.i378.ph = phi ptr [ %.val.i366803, %vector.memcheck ], [ %.val.i366803, %.lr.ph.i.i.i.i.i.i.i376.preheader ], [ %i.wo, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i376

.lr.ph.i.i.i.i.i.i.i376:                          ; preds = %.lr.ph.i.i.i.i.i.i.i376.preheader1752, %.lr.ph.i.i.i.i.i.i.i376
  %.03.i.i.i.i.i.i.i377 = phi ptr [ %i.wv, %.lr.ph.i.i.i.i.i.i.i376 ], [ %.03.i.i.i.i.i.i.i377.ph, %.lr.ph.i.i.i.i.i.i.i376.preheader1752 ] ; 2 uses
  %.092.i.i.i.i.i.i.i378 = phi ptr [ %i.wu, %.lr.ph.i.i.i.i.i.i.i376 ], [ %.092.i.i.i.i.i.i.i378.ph, %.lr.ph.i.i.i.i.i.i.i376.preheader1752 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !381)
  call void @llvm.experimental.noalias.scope.decl(metadata !382)
  %.val.i.i.i.i.i.i.i.i.i.i.i379 = load i64, ptr %.092.i.i.i.i.i.i.i378, align 8, !tbaa !117, !alias.scope !382
  store i64 %.val.i.i.i.i.i.i.i.i.i.i.i379, ptr %.03.i.i.i.i.i.i.i377, align 8, !tbaa !117, !alias.scope !381
  store ptr null, ptr %.092.i.i.i.i.i.i.i378, align 8, !tbaa !117, !alias.scope !382
  %i.wu = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i378, i64 8 ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i377, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i380 = icmp eq ptr %i.wu, %i.tr
  br i1 %.not.i.i.i.i.i.i.i380, label %_ZNSt6vectorISt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit27.i.i.i.i381, label %.lr.ph.i.i.i.i.i.i.i376, !llvm.loop !344

_ZNSt6vectorISt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit27.i.i.i.i381: ; preds = %.lr.ph.i.i.i.i.i.i.i376, %middle.block, %.noexc7.i375
  %.0.lcssa.i.i.i.i.i.i.i382 = phi ptr [ %i.we, %.noexc7.i375 ], [ %i.wn, %middle.block ], [ %i.wv, %.lr.ph.i.i.i.i.i.i.i376 ]
  %i.ww = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i382, i64 8 ; 2 uses
  %.not.i28.i.i.i.i383 = icmp eq ptr %.val.i366803, null
  br i1 %.not.i28.i.i.i.i383, label %_ZNSt6vectorISt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i386, label %bb.dk

bb.dk:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit27.i.i.i.i381
  call void @_ZdlPvm(ptr noundef nonnull %.val.i366803, i64 noundef %i.vr) #30
  %.pre13.pre.i384 = load i64, ptr %.phi.trans.insert.i363, align 8, !tbaa !123
  %.pre15.pre.i385 = load i64, ptr %i.dm, align 8, !tbaa !124
  br label %_ZNSt6vectorISt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i386

_ZNSt6vectorISt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i386: ; preds = %bb.dk, %_ZNSt6vectorISt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit27.i.i.i.i381
  %.pre.i3641050 = phi i64 [ %.pre13.pre.i384, %bb.dk ], [ %.pre.i3641051, %_ZNSt6vectorISt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit27.i.i.i.i381 ]
  %.pre15.i387 = phi i64 [ %.pre15.pre.i385, %bb.dk ], [ %i.vo, %_ZNSt6vectorISt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit27.i.i.i.i381 ]
  store ptr %i.ww, ptr %i.dn, align 8, !tbaa !125
  %i.wx = getelementptr inbounds nuw [8 x i8], ptr %i.we, i64 %i.wc ; 2 uses
  store ptr %i.wx, ptr %i.do, align 8, !tbaa !126
  br label %.noexc298

_ZNSt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS4_EED2Ev.exit10.i374.loopexit: ; preds = %_ZNKSt6vectorISt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i371
  %lpad.loopexit525 = landingpad { ptr, i32 }
          cleanup
  store ptr %.val.i366803, ptr %i.df, align 8
  br label %_ZNSt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS4_EED2Ev.exit10.i374

_ZNSt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS4_EED2Ev.exit10.i374.loopexit.split-lp: ; preds = %bb.dj
  %lpad.loopexit.split-lp526 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS4_EED2Ev.exit10.i374

_ZNSt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS4_EED2Ev.exit10.i374: ; preds = %_ZNSt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS4_EED2Ev.exit10.i374.loopexit.split-lp, %_ZNSt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS4_EED2Ev.exit10.i374.loopexit
  %lpad.phi527 = phi { ptr, i32 } [ %lpad.loopexit525, %_ZNSt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS4_EED2Ev.exit10.i374.loopexit ], [ %lpad.loopexit.split-lp526, %_ZNSt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS4_EED2Ev.exit10.i374.loopexit.split-lp ]
  call void @_ZdaPv(ptr noundef nonnull %i.vu) #30
  br label %.body391

.noexc298:                                        ; preds = %_ZNSt6vectorISt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i386, %bb.dh, %._crit_edge.i365
  %i.wy = phi ptr [ %i.wx, %_ZNSt6vectorISt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i386 ], [ %i.tr, %bb.dh ], [ %i.tr, %._crit_edge.i365 ] ; 2 uses
  %.val3.i3671055 = phi ptr [ %i.ww, %_ZNSt6vectorISt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i386 ], [ %i.vw, %bb.dh ], [ %.val3.i367, %._crit_edge.i365 ] ; 2 uses
  %.pre.i3641049 = phi i64 [ %.pre.i3641050, %_ZNSt6vectorISt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i386 ], [ %.pre.i3641051, %bb.dh ], [ %.pre.i3641051, %._crit_edge.i365 ] ; 3 uses
  %.val.i366802 = phi ptr [ %i.we, %_ZNSt6vectorISt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i386 ], [ %.val.i366803, %bb.dh ], [ %.val.i366803, %._crit_edge.i365 ] ; 6 uses
  %i.wz = phi i64 [ %.pre15.i387, %_ZNSt6vectorISt10unique_ptrIA_N13sentencepiece7unigram12_GLOBAL__N_110HypothesisESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i386 ], [ %i.vo, %bb.dh ], [ %i.vo, %._crit_edge.i365 ] ; 2 uses
  %i.xa = getelementptr inbounds nuw [8 x i8], ptr %.val.i366802, i64 %.pre.i3641049
  %.val4.i369 = load ptr, ptr %i.xa, align 8, !tbaa !117
  %i.xb = getelementptr inbounds nuw [24 x i8], ptr %.val4.i369, i64 %i.wz ; 4 uses
  %i.xc = add i64 %i.wz, 1                        ; 3 uses
  store i64 %i.xc, ptr %i.dm, align 8, !tbaa !124
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.xb, ptr noundef nonnull align 8 dereferenceable(24) %.02040.i, i64 24, i1 false), !tbaa.struct !386
  store ptr %i.xb, ptr %.0641.i, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  store ptr %.02040.i, ptr %6, align 8, !tbaa !388
  store ptr %i.xb, ptr %i.dk, align 8, !tbaa !389
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %21, align 8, !noalias !390 ; 7 uses
  %i.xd = and i64 %.val.i.i.i.i.i.i.i.i.i, 254
  %i.xe = icmp eq i64 %i.xd, 0
  br i1 %i.xe, label %bb.dl, label %bb.do

bb.dl:                                            ; preds = %.noexc298
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i.i.i.i, 131072
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN13sentencepiece7unigram12_GLOBAL__N_110HypothesisEPS7_EEJEE17should_sample_sooEv.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.dm

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN13sentencepiece7unigram12_GLOBAL__N_110HypothesisEPS7_EEJEE17should_sample_sooEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dl
  %i.xf = or i64 %.val.i.i.i.i.i.i.i.i.i, 131328
  store i64 %i.xf, ptr %21, align 8, !noalias !391
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN13sentencepiece7unigram12_GLOBAL__N_110HypothesisEPS7_EEJEE22find_or_prepare_insertIS9_EESt4pairINSC_8iteratorEbERKT_.exit.thread.i.i.i.i.i.i.i.i

bb.dm:                                            ; preds = %bb.dl
  %.val5.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.di, align 8, !tbaa !117, !noalias !391
  %i.xg = icmp eq ptr %.val5.i.i.i.i.i.i.i.i.i.i.i, %.02040.i
  br i1 %i.xg, label %bb.dr, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31, !noalias !391
  store ptr %21, ptr %5, align 8, !tbaa !392, !noalias !391
  store ptr %6, ptr %i.dl, align 8, !tbaa !116, !noalias !391
  %i.xh = invoke noundef i64 @_ZN4absl12lts_2026052618container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm16ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN13sentencepiece7unigram12_GLOBAL__N_110HypothesisEPS7_EEJEE18GetPolicyFunctionsEvE5value, ptr nonnull %5, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyINS3_6HashEqIPKN13sentencepiece7unigram12_GLOBAL__N_110HypothesisEvE4HashESB_Lb0EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE, i1 noundef zeroext false)
          to label %.noexc299 unwind label %.loopexit524

.noexc299:                                        ; preds = %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !391
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.dj, align 8, !tbaa !80, !noalias !391
  %i.xi = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.xh
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN13sentencepiece7unigram12_GLOBAL__N_110HypothesisEPS7_EEJEE22find_or_prepare_insertIS9_EESt4pairINSC_8iteratorEbERKT_.exit.thread.i.i.i.i.i.i.i.i

bb.do:                                            ; preds = %.noexc298
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.di, align 8, !tbaa !80, !noalias !393 ; 3 uses
  %i.xj = and i64 %.val.i.i.i.i.i.i.i.i.i, 255
  %notmask.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.xj
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !393
  %i.xk = lshr i64 %.val.i.i.i.i.i.i.i.i.i, 8
  %i.xl = and i64 %i.xk, 255
  %i.xm = ptrtoint ptr %.02040.i to i64
  %i.xn = xor i64 %i.xm, ptrtoint (ptr @_ZN4absl12lts_2026052613hash_internal15MixingHashState5kSeedE to i64)
  %i.xo = zext i64 %i.xn to i128
  %i.xp = mul nuw nsw i128 %i.xo, 8779197792823184629 ; 2 uses
  %i.xq = lshr i128 %i.xp, 64
  %i.xr = xor i128 %i.xq, %i.xp
  %i.xs = trunc i128 %i.xr to i64                 ; 2 uses
  %i.xt = xor i64 %i.xl, %i.xs                    ; 2 uses
  %i.xu = xor i64 %notmask.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.xv = lshr i64 %i.xs, 57
  %i.xw = trunc nuw nsw i64 %i.xv to i8
  %.val3.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.dj, align 8, !tbaa !80, !noalias !393 ; 2 uses
  %i.xx = insertelement <16 x i8> poison, i8 %i.xw, i64 0
  %i.xy = shufflevector <16 x i8> %i.xx, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.dp

bb.dp:                                            ; preds = %bb.dq, %bb.do
  %.pn.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.xt, %bb.do ], [ %i.yv, %bb.dq ]
  %.sroa.14.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.do ], [ %i.yu, %bb.dq ] ; 2 uses
  %.sroa.642.0.i.i.i.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i.i.i.i, %i.xu ; 5 uses
  %i.xz = getelementptr inbounds nuw [16 x i8], ptr %.val3.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.642.0.i.i.i.i.i.i.i.i.i.i
  call void @llvm.prefetch.p0(ptr %i.xz, i32 0, i32 3, i32 1), !noalias !393
  %i.ya = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.642.0.i.i.i.i.i.i.i.i.i.i
  %i.yb = load <16 x i8>, ptr %i.ya, align 1, !tbaa !80, !noalias !393 ; 2 uses
  %i.yc = icmp eq <16 x i8> %i.xy, %i.yb
  %i.yd = bitcast <16 x i1> %i.yc to i16
  %i.ye = zext i16 %i.yd to i32
  %i.yf = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ye) #26, !srcloc !131 ; 2 uses
  %.not70.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.yf, 0
  br i1 %.not70.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.dp, %.critedge.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.027.071.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.yn, %.critedge.i.i.i.i.i.i.i.i.i.i.i ], [ %i.yf, %bb.dp ] ; 3 uses
  %i.yg = call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.027.071.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.yh = zext nneg i32 %i.yg to i64
  %i.yi = add nuw i64 %.sroa.642.0.i.i.i.i.i.i.i.i.i.i, %i.yh
  %i.yj = and i64 %i.yi, %i.xu
  %i.yk = getelementptr inbounds nuw [16 x i8], ptr %.val3.i.i.i.i.i.i.i.i.i.i, i64 %i.yj
  %.val5.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.yk, align 8, !tbaa !117, !noalias !393
  %i.yl = icmp eq ptr %.val5.i.i.i.i.i.i.i.i.i.i, %.02040.i
  br i1 %i.yl, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN13sentencepiece7unigram12_GLOBAL__N_110HypothesisEPS7_EEJEE22find_or_prepare_insertIS9_EESt4pairINSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i.i.i.i.i, !prof !132

.critedge.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ym = add i32 %.sroa.027.071.i.i.i.i.i.i.i.i.i.i, -1
  %i.yn = and i32 %i.ym, %.sroa.027.071.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.yn, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.critedge.i.i.i.i.i.i.i.i.i.i.i, %bb.dp
  %i.yo = icmp eq <16 x i8> %i.yb, splat (i8 -128)
  %i.yp = bitcast <16 x i1> %i.yo to i16
  %i.yq = zext i16 %i.yp to i32
  %i.yr = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.yq) #26, !srcloc !131 ; 2 uses
  %.not64.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.yr, 0
  br i1 %.not64.i.i.i.i.i.i.i.i.i.i, label %bb.dq, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN13sentencepiece7unigram12_GLOBAL__N_110HypothesisEPS7_EEJEE22find_or_prepare_insertIS9_EESt4pairINSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread.i, !prof !88

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN13sentencepiece7unigram12_GLOBAL__N_110HypothesisEPS7_EEJEE22find_or_prepare_insertIS9_EESt4pairINSC_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
end_hunk_1
