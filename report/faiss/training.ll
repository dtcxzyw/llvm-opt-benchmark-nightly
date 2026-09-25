Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/training?download=true
inline.NumInlined: 631
inline.NumDeleted: 246
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN5faiss16scalar_quantizer13train_UniformENS_15ScalarQuantizer9RangeStatEfliPKfRSt6vectorIfSaIfEE:bb.a
  %i.dh = add nsw i64 %2, -1                      ; 2 uses
  %i.di = icmp eq i64 %i.dh, 0
  br i1 %i.di, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.dh, 2  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.dg, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !27
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.0.i.i.i.i.i = phi ptr [ %i.dj, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.dg, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 7 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.df, ptr align 4 %4, i64 %i.de, i1 false)
  %i.dk = uitofp nneg i64 %2 to float
  %i.dl = fmul float %1, %i.dk
  %i.dm = fptosi float %i.dl to i64
  %spec.store.select = tail call i64 @llvm.smax.i64(i64 %i.dm, i64 0) ; 3 uses
  %i.dn = sub nsw i64 %2, %spec.store.select
  %i.do = icmp sgt i64 %spec.store.select, %i.dn
  %i.dp = lshr i64 %2, 1
  %spec.select = select i1 %i.do, i64 %i.dp, i64 %spec.store.select ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %spec.select ; 3 uses
  %i.dr = icmp eq ptr %i.df, %.0.i.i.i.i.i        ; 2 uses
  %i.ds = icmp eq ptr %i.dq, %.0.i.i.i.i.i
  %or.cond.i = select i1 %i.dr, i1 true, i1 %i.ds
  br i1 %or.cond.i, label %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_S7_.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %i.dt = ptrtoint ptr %.0.i.i.i.i.i to i64
  %i.du = ptrtoint ptr %i.df to i64
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = ashr exact i64 %i.dv, 2
  %i.dx = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dw, i1 true)
  %i.dy = shl nuw nsw i64 %i.dx, 1
  %i.dz = xor i64 %i.dy, 126
  invoke void @_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_T1_(ptr nonnull %i.df, ptr nonnull %i.dq, ptr %.0.i.i.i.i.i, i64 noundef %i.dz)
          to label %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_S7_.exit unwind label %bb.ae

_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_S7_.exit: ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, %bb.ac
  %i.ea = load float, ptr %i.dq, align 4, !tbaa !27
  store float %i.ea, ptr %i.ab, align 4, !tbaa !27
  %i.eb = xor i64 %spec.select, -1
  %i.ec = getelementptr [4 x i8], ptr %i.df, i64 %2
  %i.ed = getelementptr [4 x i8], ptr %i.ec, i64 %i.eb ; 3 uses
  %i.ee = icmp eq ptr %i.ed, %.0.i.i.i.i.i
  %or.cond.i226 = select i1 %i.dr, i1 true, i1 %i.ee
  br i1 %or.cond.i226, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_S7_.exit
  %i.ef = ptrtoint ptr %.0.i.i.i.i.i to i64
  %i.eg = ptrtoint ptr %i.df to i64
  %i.eh = sub i64 %i.ef, %i.eg
  %i.ei = ashr exact i64 %i.eh, 2
  %i.ej = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ei, i1 true)
  %i.ek = shl nuw nsw i64 %i.ej, 1
  %i.el = xor i64 %i.ek, 126
  invoke void @_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_T1_(ptr nonnull %i.df, ptr nonnull %i.ed, ptr %.0.i.i.i.i.i, i64 noundef %i.el)
          to label %_ZNSt6vectorIfSaIfEED2Ev.exit unwind label %bb.af

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_S7_.exit, %bb.ad
  %i.em = load float, ptr %i.ed, align 4, !tbaa !27
  store float %i.em, ptr %i.ac, align 4, !tbaa !27
  tail call void @_ZdlPvm(ptr noundef nonnull %i.df, i64 noundef %i.de) #21
  %.pre313 = load float, ptr %i.ab, align 4, !tbaa !27
  %.pre314 = load float, ptr %i.ac, align 4, !tbaa !27
  br label %bb.ba

bb.ae:                                            ; preds = %bb.ac
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit230

bb.af:                                            ; preds = %bb.ad
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit230

_ZNSt6vectorIfSaIfEED2Ev.exit230:                 ; preds = %bb.af, %bb.ae
  %.pn219 = phi { ptr, i32 } [ %i.eo, %bb.af ], [ %i.en, %bb.ae ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.df, i64 noundef %i.de) #21
  br label %bb.bb

.lr.ph:                                           ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  store <2 x float> <float +inf, float -inf>, ptr %i.ab, align 4, !tbaa !27
  %xtraiter = and i64 %2, 1
  %i.ep = icmp eq i64 %2, 1
  br i1 %i.ep, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %2, 9223372036854775806
  br label %bb.am

.preheader260.us.preheader.unr-lcssa:             ; preds = %bb.au
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader260.us.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader260.us.preheader.unr-lcssa, %.lr.ph
  %.epil.init = phi float [ -inf, %.lr.ph ], [ %i.hs, %.preheader260.us.preheader.unr-lcssa ] ; 2 uses
  %.epil.init373 = phi float [ +inf, %.lr.ph ], [ %i.hp, %.preheader260.us.preheader.unr-lcssa ] ; 2 uses
  %.0184262.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.hu, %.preheader260.us.preheader.unr-lcssa ]
  %.0185261.epil.init = phi float [ 0.000000e+00, %.lr.ph ], [ %i.ht, %.preheader260.us.preheader.unr-lcssa ]
  %lcmp.mod377 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod377)
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.0184262.epil.init ; 3 uses
  %i.er = load float, ptr %i.eq, align 4, !tbaa !27 ; 4 uses
  %i.es = fcmp olt float %i.er, %.epil.init373
  br i1 %i.es, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.epil.preheader
  store float %i.er, ptr %i.ab, align 4, !tbaa !27
  %.pre310.epil = load float, ptr %i.eq, align 4, !tbaa !27
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.epil.preheader
  %i.et = phi float [ %.pre310.epil, %bb.ag ], [ %i.er, %.epil.preheader ] ; 4 uses
  %i.eu = phi float [ %i.er, %bb.ag ], [ %.epil.init373, %.epil.preheader ]
  %i.ev = fcmp ogt float %i.et, %.epil.init
  br i1 %i.ev, label %bb.ai, label %.preheader260.us.preheader.epilog-lcssa

bb.ai:                                            ; preds = %bb.ah
  store float %i.et, ptr %i.ac, align 4, !tbaa !27
  %.pre311.epil = load float, ptr %i.eq, align 4, !tbaa !27
  br label %.preheader260.us.preheader.epilog-lcssa

.preheader260.us.preheader.epilog-lcssa:          ; preds = %bb.ai, %bb.ah
  %i.ew = phi float [ %.pre311.epil, %bb.ai ], [ %i.et, %bb.ah ]
  %i.ex = phi float [ %i.et, %bb.ai ], [ %.epil.init, %bb.ah ]
  %i.ey = fadd float %.0185261.epil.init, %i.ew
  br label %.preheader260.us.preheader

.preheader260.us.preheader:                       ; preds = %.preheader260.us.preheader.unr-lcssa, %.preheader260.us.preheader.epilog-lcssa
  %.lcssa371 = phi float [ %i.hs, %.preheader260.us.preheader.unr-lcssa ], [ %i.ex, %.preheader260.us.preheader.epilog-lcssa ]
  %.lcssa370 = phi float [ %i.ht, %.preheader260.us.preheader.unr-lcssa ], [ %i.ey, %.preheader260.us.preheader.epilog-lcssa ] ; 2 uses
  %.lcssa369 = phi float [ %i.hp, %.preheader260.us.preheader.unr-lcssa ], [ %i.eu, %.preheader260.us.preheader.epilog-lcssa ] ; 2 uses
  %i.ez = add nsw i32 %3, -1
  %i.fa = sitofp i32 %i.ez to float               ; 3 uses
  %i.fb = sitofp i32 %3 to float
  %i.fc = uitofp nneg i64 %2 to float             ; 2 uses
  %i.fd = fneg float %i.fc
  %i.fe = fneg float %.lcssa370
  %i.ff = fsub float %.lcssa371, %.lcssa369
  %i.fg = fdiv float %i.ff, %i.fa
  %i.fh = insertelement <2 x float> poison, float %i.fg, i64 0
  %i.fi = insertelement <2 x float> %i.fh, float %.lcssa369, i64 1
  br label %.preheader260.us

.preheader260.us:                                 ; preds = %.preheader260.us.preheader, %bb.al
  %.0178279.us = phi i32 [ %i.gx, %bb.al ], [ 0, %.preheader260.us.preheader ]
  %.0179278.us = phi i32 [ %.1180.us, %bb.al ], [ 0, %.preheader260.us.preheader ]
  %.0181277.us = phi float [ %.1182.us, %bb.al ], [ -1.000000e+00, %.preheader260.us.preheader ] ; 2 uses
  %i.fj = phi <2 x float> [ %i.gw, %bb.al ], [ %i.fi, %.preheader260.us.preheader ] ; 3 uses
  %i.fk = extractelement <2 x float> %i.fj, i64 0 ; 2 uses
  %i.fl = extractelement <2 x float> %i.fj, i64 1 ; 2 uses
  br label %bb.aj

bb.aj:                                            ; preds = %.preheader260.us, %bb.aj
  %.0172268.us = phi i64 [ 0, %.preheader260.us ], [ %i.gg, %bb.aj ] ; 2 uses
  %.0173267.us = phi float [ 0.000000e+00, %.preheader260.us ], [ %i.ga, %bb.aj ]
  %.0176264.us = phi float [ 0.000000e+00, %.preheader260.us ], [ %i.gb, %bb.aj ]
  %i.fm = phi <2 x float> [ zeroinitializer, %.preheader260.us ], [ %i.gf, %bb.aj ]
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.0172268.us
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !27 ; 3 uses
  %i.fp = fsub float %i.fo, %i.fl
  %i.fq = fdiv float %i.fp, %i.fk
  %i.fr = fpext float %i.fq to double
  %i.fs = fadd double %i.fr, 5.000000e-01
  %i.ft = tail call double @llvm.floor.f64(double %i.fs) ; 2 uses
  %i.fu = fptrunc double %i.ft to float
  %i.fv = fcmp olt double %i.ft, f0xB690000000000000
  %spec.store.select1.us = select i1 %i.fv, float 0.000000e+00, float %i.fu ; 2 uses
  %i.fw = fcmp ult float %spec.store.select1.us, %i.fb
  %.0171.us = select i1 %i.fw, float %spec.store.select1.us, float %i.fa ; 3 uses
  %i.fx = tail call float @llvm.fmuladd.f32(float %.0171.us, float %i.fk, float %i.fl)
  %i.fy = fsub float %i.fo, %i.fx                 ; 2 uses
  %i.fz = fmul float %i.fy, %i.fy
  %i.ga = fadd float %.0173267.us, %i.fz          ; 3 uses
  %i.gb = fadd float %.0176264.us, %.0171.us      ; 5 uses
  %i.gc = insertelement <2 x float> poison, float %.0171.us, i64 0
  %i.gd = shufflevector <2 x float> %i.gc, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ge = insertelement <2 x float> %i.gd, float %i.fo, i64 0
  %i.gf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gd, <2 x float> %i.ge, <2 x float> %i.fm) ; 3 uses
  %i.gg = add nuw nsw i64 %.0172268.us, 1         ; 2 uses
  %exitcond304.not = icmp eq i64 %i.gg, %2
  br i1 %exitcond304.not, label %._crit_edge270.us, label %bb.aj, !llvm.loop !92

bb.ak:                                            ; preds = %._crit_edge270.us
  %i.gh = add nsw i32 %.0179278.us, 1             ; 2 uses
  %i.gi = icmp eq i32 %i.gh, 16
  br i1 %i.gi, label %.split281.us, label %bb.al

bb.al:                                            ; preds = %bb.ak, %._crit_edge270.us
  %.1182.us = phi float [ %.0181277.us, %bb.ak ], [ %i.ga, %._crit_edge270.us ]
  %.1180.us = phi i32 [ %i.gh, %bb.ak ], [ 0, %._crit_edge270.us ]
  %i.gj = fmul float %i.gb, %i.gb
  %i.gk = extractelement <2 x float> %i.gf, i64 0 ; 2 uses
  %i.gl = fmul float %i.gk, %i.fd
  %i.gm = extractelement <2 x float> %i.gf, i64 1 ; 2 uses
  %i.gn = fneg float %i.gm
  %i.go = tail call float @llvm.fmuladd.f32(float %i.gn, float %i.fc, float %i.gj)
  %i.gp = fmul float %i.gm, %i.fe
  %i.gq = tail call float @llvm.fmuladd.f32(float %i.gb, float %i.gk, float %i.gp)
  %i.gr = tail call float @llvm.fmuladd.f32(float %i.gb, float %.lcssa370, float %i.gl)
  %i.gs = insertelement <2 x float> poison, float %i.go, i64 0
  %i.gt = shufflevector <2 x float> %i.gs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gu = insertelement <2 x float> poison, float %i.gr, i64 0
  %i.gv = insertelement <2 x float> %i.gu, float %i.gq, i64 1
  %i.gw = fdiv <2 x float> %i.gv, %i.gt           ; 2 uses
  %i.gx = add nuw nsw i32 %.0178279.us, 1         ; 2 uses
  %exitcond305.not = icmp eq i32 %i.gx, 2000
  br i1 %exitcond305.not, label %.split281.us, label %.preheader260.us, !llvm.loop !93

._crit_edge270.us:                                ; preds = %bb.aj
  %i.gy = fcmp oeq float %i.ga, %.0181277.us
  br i1 %i.gy, label %bb.ak, label %bb.al

bb.am:                                            ; preds = %bb.au, %.lr.ph.new
  %i.gz = phi float [ -inf, %.lr.ph.new ], [ %i.hs, %bb.au ] ; 2 uses
  %i.ha = phi float [ +inf, %.lr.ph.new ], [ %i.hp, %bb.au ] ; 2 uses
  %.0184262 = phi i64 [ 0, %.lr.ph.new ], [ %i.hu, %bb.au ] ; 3 uses
  %.0185261 = phi float [ 0.000000e+00, %.lr.ph.new ], [ %i.ht, %bb.au ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.au ]
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.0184262 ; 3 uses
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !27 ; 4 uses
  %i.hd = fcmp olt float %i.hc, %i.ha
  br i1 %i.hd, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store float %i.hc, ptr %i.ab, align 4, !tbaa !27
  %.pre310 = load float, ptr %i.hb, align 4, !tbaa !27
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.he = phi float [ %.pre310, %bb.an ], [ %i.hc, %bb.am ] ; 4 uses
  %i.hf = phi float [ %i.hc, %bb.an ], [ %i.ha, %bb.am ] ; 2 uses
  %i.hg = fcmp ogt float %i.he, %i.gz
  br i1 %i.hg, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store float %i.he, ptr %i.ac, align 4, !tbaa !27
  %.pre311 = load float, ptr %i.hb, align 4, !tbaa !27
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.hh = phi float [ %.pre311, %bb.ap ], [ %i.he, %bb.ao ]
  %i.hi = phi float [ %i.he, %bb.ap ], [ %i.gz, %bb.ao ] ; 2 uses
  %i.hj = fadd float %.0185261, %i.hh
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.0184262
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 4 ; 3 uses
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !27 ; 4 uses
  %i.hn = fcmp olt float %i.hm, %i.hf
  br i1 %i.hn, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store float %i.hm, ptr %i.ab, align 4, !tbaa !27
  %.pre310.1 = load float, ptr %i.hl, align 4, !tbaa !27
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.ho = phi float [ %.pre310.1, %bb.ar ], [ %i.hm, %bb.aq ] ; 4 uses
  %i.hp = phi float [ %i.hm, %bb.ar ], [ %i.hf, %bb.aq ] ; 3 uses
  %i.hq = fcmp ogt float %i.ho, %i.hi
  br i1 %i.hq, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store float %i.ho, ptr %i.ac, align 4, !tbaa !27
  %.pre311.1 = load float, ptr %i.hl, align 4, !tbaa !27
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.hr = phi float [ %.pre311.1, %bb.at ], [ %i.ho, %bb.as ]
  %i.hs = phi float [ %i.ho, %bb.at ], [ %i.hi, %bb.as ] ; 3 uses
  %i.ht = fadd float %i.hj, %i.hr                 ; 3 uses
  %i.hu = add nuw nsw i64 %.0184262, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader260.us.preheader.unr-lcssa, label %bb.am, !llvm.loop !94

.split281.us:                                     ; preds = %bb.ak, %bb.al
  %i.hv = phi <2 x float> [ %i.fj, %bb.ak ], [ %i.gw, %bb.al ] ; 2 uses
  %i.hw = extractelement <2 x float> %i.hv, i64 1 ; 3 uses
  store float %i.hw, ptr %i.ab, align 4, !tbaa !27
  %i.hx = extractelement <2 x float> %i.hv, i64 0
  %i.hy = tail call float @llvm.fmuladd.f32(float %i.hx, float %i.fa, float %i.hw) ; 2 uses
  store float %i.hy, ptr %i.ac, align 4, !tbaa !27
  br label %bb.ba

bb.av:                                            ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %i.hz = tail call ptr @__cxa_allocate_exception(i64 40) #18 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.aw unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233.thread

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.hz, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss16scalar_quantizer13train_UniformENS_15ScalarQuantizer9RangeStatEfliPKfRSt6vectorIfSaIfEE, ptr noundef nonnull @.str.2, i32 noundef 329)
          to label %bb.ax unwind label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  invoke void @__cxa_throw(ptr nonnull %i.hz, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #20
          to label %bb.bc unwind label %bb.ay

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233.thread: ; preds = %bb.av
  %i.ia = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.az

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.0 = phi i1 [ false, %bb.ax ], [ true, %bb.aw ] ; 2 uses
  %i.ib = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ic = load ptr, ptr %7, align 8, !tbaa !21    ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ie = icmp eq ptr %i.ic, %i.id
  br i1 %i.ie, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231: ; preds = %bb.ay
  %i.if = load i64, ptr %i.id, align 8, !tbaa !20
  %i.ig = add i64 %i.if, 1
  call void @_ZdlPvm(ptr noundef %i.ic, i64 noundef %i.ig) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br i1 %.0, label %bb.az, label %bb.bb

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233: ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br i1 %.0, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233
  %.pn217258 = phi { ptr, i32 } [ %i.ia, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233.thread ], [ %i.ib, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233 ], [ %i.ib, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231 ]
  call void @__cxa_free_exception(ptr %i.hz) #18
  br label %bb.bb

bb.ba:                                            ; preds = %bb.aa, %.split281.us, %_ZNSt6vectorIfSaIfEED2Ev.exit, %._crit_edge293
  %i.ih = phi float [ %i.dc, %bb.aa ], [ %i.hy, %.split281.us ], [ %.pre314, %_ZNSt6vectorIfSaIfEED2Ev.exit ], [ %i.ao, %._crit_edge293 ]
  %i.ii = phi float [ %i.db, %bb.aa ], [ %i.hw, %.split281.us ], [ %.pre313, %_ZNSt6vectorIfSaIfEED2Ev.exit ], [ %i.an, %._crit_edge293 ]
  %i.ij = fsub float %i.ih, %i.ii
  store float %i.ij, ptr %i.ac, align 4, !tbaa !27
  ret void

bb.bb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231, %_ZNSt6vectorIfSaIfEED2Ev.exit230, %bb.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn219.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ib, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233 ], [ %.pn217258, %bb.az ], [ %.pn219, %_ZNSt6vectorIfSaIfEED2Ev.exit230 ], [ %i.ib, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231 ]
  resume { ptr, i32 } %.pn219.pn.pn.pn

bb.bc:                                            ; preds = %bb.ax, %bb.g
  unreachable
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !16
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.14) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #18 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %.noexc, label %bb.e

.noexc:                                           ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #20
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc11, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !34

.noexc11:                                         ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.e
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #22 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !21
  store i64 %i.c, ptr %i.a, align 8, !tbaa !20
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i ], [ %i.a, %bb.c ] ; 3 uses
  switch i64 %i.c, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i
  %i.j = load i8, ptr %1, align 1, !tbaa !20
  store i8 %i.j, ptr %i.i, align 1, !tbaa !20
end_hunk_0
