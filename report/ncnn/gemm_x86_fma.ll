Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm_x86_fma?download=true
inline.NumInlined: 233
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 136
loop-unroll.NumUnrolled: 140
begin_hunk_0_@_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_S2_RS0_S3_iiiiiiib:bb.a
  %i.cik = getelementptr i8, ptr %i.cga, i64 108
  %i.cil = load float, ptr %i.cih, align 4, !tbaa !68
  %i.cim = load float, ptr %i.cii, align 4, !tbaa !68
  %i.cin = load float, ptr %i.cij, align 4, !tbaa !68
  %i.cio = load float, ptr %i.cik, align 4, !tbaa !68
  %i.cip = insertelement <4 x float> poison, float %i.cil, i64 0
  %i.ciq = insertelement <4 x float> %i.cip, float %i.cim, i64 1
  %i.cir = insertelement <4 x float> %i.ciq, float %i.cin, i64 2
  %i.cis = insertelement <4 x float> %i.cir, float %i.cio, i64 3
  %i.cit = fmul fast <4 x float> %i.cis, %i.chs
  %i.ciu = fadd fast <4 x float> %i.cit, %vec.phi2882 ; 2 uses
  %i.civ = getelementptr inbounds nuw i8, ptr %next.gep2888, i64 8
  %i.ciw = getelementptr i8, ptr %i.cfu, i64 24
  %i.cix = getelementptr i8, ptr %i.cfv, i64 40
  %i.ciy = getelementptr i8, ptr %i.cfw, i64 56
  %i.ciz = load float, ptr %i.civ, align 4, !tbaa !68
  %i.cja = load float, ptr %i.ciw, align 4, !tbaa !68
  %i.cjb = load float, ptr %i.cix, align 4, !tbaa !68
  %i.cjc = load float, ptr %i.ciy, align 4, !tbaa !68
  %i.cjd = insertelement <4 x float> poison, float %i.ciz, i64 0
  %i.cje = insertelement <4 x float> %i.cjd, float %i.cja, i64 1
  %i.cjf = insertelement <4 x float> %i.cje, float %i.cjb, i64 2
  %i.cjg = insertelement <4 x float> %i.cjf, float %i.cjc, i64 3 ; 2 uses
  %i.cjh = getelementptr inbounds nuw i8, ptr %next.gep2892, i64 16
  %i.cji = getelementptr i8, ptr %i.cfy, i64 48
  %i.cjj = getelementptr i8, ptr %i.cfz, i64 80
  %i.cjk = getelementptr i8, ptr %i.cga, i64 112
  %i.cjl = load float, ptr %i.cjh, align 4, !tbaa !68
  %i.cjm = load float, ptr %i.cji, align 4, !tbaa !68
  %i.cjn = load float, ptr %i.cjj, align 4, !tbaa !68
  %i.cjo = load float, ptr %i.cjk, align 4, !tbaa !68
  %i.cjp = insertelement <4 x float> poison, float %i.cjl, i64 0
  %i.cjq = insertelement <4 x float> %i.cjp, float %i.cjm, i64 1
  %i.cjr = insertelement <4 x float> %i.cjq, float %i.cjn, i64 2
  %i.cjs = insertelement <4 x float> %i.cjr, float %i.cjo, i64 3
  %i.cjt = fmul fast <4 x float> %i.cjs, %i.cjg
  %i.cju = fadd fast <4 x float> %i.cjt, %vec.phi2885 ; 2 uses
  %i.cjv = getelementptr inbounds nuw i8, ptr %next.gep2892, i64 20
  %i.cjw = getelementptr i8, ptr %i.cfy, i64 52
  %i.cjx = getelementptr i8, ptr %i.cfz, i64 84
  %i.cjy = getelementptr i8, ptr %i.cga, i64 116
  %i.cjz = load float, ptr %i.cjv, align 4, !tbaa !68
  %i.cka = load float, ptr %i.cjw, align 4, !tbaa !68
  %i.ckb = load float, ptr %i.cjx, align 4, !tbaa !68
  %i.ckc = load float, ptr %i.cjy, align 4, !tbaa !68
  %i.ckd = insertelement <4 x float> poison, float %i.cjz, i64 0
  %i.cke = insertelement <4 x float> %i.ckd, float %i.cka, i64 1
  %i.ckf = insertelement <4 x float> %i.cke, float %i.ckb, i64 2
  %i.ckg = insertelement <4 x float> %i.ckf, float %i.ckc, i64 3
  %i.ckh = fmul fast <4 x float> %i.ckg, %i.cjg
  %i.cki = fadd fast <4 x float> %i.ckh, %vec.phi2881 ; 2 uses
  %i.ckj = getelementptr inbounds nuw i8, ptr %next.gep2888, i64 12
  %i.ckk = getelementptr i8, ptr %i.cfu, i64 28
  %i.ckl = getelementptr i8, ptr %i.cfv, i64 44
  %i.ckm = getelementptr i8, ptr %i.cfw, i64 60
  %i.ckn = load float, ptr %i.ckj, align 4, !tbaa !68
  %i.cko = load float, ptr %i.ckk, align 4, !tbaa !68
  %i.ckp = load float, ptr %i.ckl, align 4, !tbaa !68
  %i.ckq = load float, ptr %i.ckm, align 4, !tbaa !68
  %i.ckr = insertelement <4 x float> poison, float %i.ckn, i64 0
  %i.cks = insertelement <4 x float> %i.ckr, float %i.cko, i64 1
  %i.ckt = insertelement <4 x float> %i.cks, float %i.ckp, i64 2
  %i.cku = insertelement <4 x float> %i.ckt, float %i.ckq, i64 3 ; 2 uses
  %i.ckv = getelementptr inbounds nuw i8, ptr %next.gep2892, i64 24
  %i.ckw = getelementptr i8, ptr %i.cfy, i64 56
  %i.ckx = getelementptr i8, ptr %i.cfz, i64 88
  %i.cky = getelementptr i8, ptr %i.cga, i64 120
  %i.ckz = load float, ptr %i.ckv, align 4, !tbaa !68
  %i.cla = load float, ptr %i.ckw, align 4, !tbaa !68
  %i.clb = load float, ptr %i.ckx, align 4, !tbaa !68
  %i.clc = load float, ptr %i.cky, align 4, !tbaa !68
  %i.cld = insertelement <4 x float> poison, float %i.ckz, i64 0
  %i.cle = insertelement <4 x float> %i.cld, float %i.cla, i64 1
  %i.clf = insertelement <4 x float> %i.cle, float %i.clb, i64 2
  %i.clg = insertelement <4 x float> %i.clf, float %i.clc, i64 3
  %i.clh = fmul fast <4 x float> %i.clg, %i.cku
  %i.cli = fadd fast <4 x float> %i.clh, %vec.phi2884 ; 2 uses
  %i.clj = getelementptr inbounds nuw i8, ptr %next.gep2892, i64 28
  %i.clk = getelementptr i8, ptr %i.cfy, i64 60
  %i.cll = getelementptr i8, ptr %i.cfz, i64 92
  %i.clm = getelementptr i8, ptr %i.cga, i64 124
  %i.cln = load float, ptr %i.clj, align 4, !tbaa !68
  %i.clo = load float, ptr %i.clk, align 4, !tbaa !68
  %i.clp = load float, ptr %i.cll, align 4, !tbaa !68
  %i.clq = load float, ptr %i.clm, align 4, !tbaa !68
  %i.clr = insertelement <4 x float> poison, float %i.cln, i64 0
  %i.cls = insertelement <4 x float> %i.clr, float %i.clo, i64 1
  %i.clt = insertelement <4 x float> %i.cls, float %i.clp, i64 2
  %i.clu = insertelement <4 x float> %i.clt, float %i.clq, i64 3
  %i.clv = fmul fast <4 x float> %i.clu, %i.cku
  %i.clw = fadd fast <4 x float> %i.clv, %vec.phi2880 ; 2 uses
  %index.next2896 = add nuw i64 %index2879, 4     ; 2 uses
  %i.clx = icmp eq i64 %index.next2896, %n.vec2877
  br i1 %i.clx, label %middle.block2897, label %vector.body2878, !llvm.loop !430

middle.block2897:                                 ; preds = %vector.body2878
  %i.cly = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.clw)
  %i.clz = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.cki)
  %i.cma = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.ciu)
  %i.cmb = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.chg)
  %i.cmc = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.cli)
  %i.cmd = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.cju)
  %i.cme = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.cig)
  %i.cmf = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.cgs)
  %i.cmg = insertelement <2 x float> poison, float %i.cmf, i64 0
  %i.cmh = insertelement <2 x float> %i.cmg, float %i.cmb, i64 1 ; 2 uses
  %i.cmi = insertelement <2 x float> poison, float %i.cme, i64 0
  %i.cmj = insertelement <2 x float> %i.cmi, float %i.cma, i64 1 ; 2 uses
  %i.cmk = insertelement <2 x float> poison, float %i.cmd, i64 0
  %i.cml = insertelement <2 x float> %i.cmk, float %i.clz, i64 1 ; 2 uses
  %i.cmm = insertelement <2 x float> poison, float %i.cmc, i64 0
  %i.cmn = insertelement <2 x float> %i.cmm, float %i.cly, i64 1 ; 2 uses
  br i1 %cmp.n2898, label %._crit_edge2014.loopexit, label %.lr.ph2013.preheader2912

.lr.ph2013.preheader2912:                         ; preds = %.lr.ph2013.preheader, %middle.block2897
  %.018352003.ph = phi i32 [ 0, %.lr.ph2013.preheader ], [ %i.bco, %middle.block2897 ]
  %.018372002.ph = phi ptr [ %.319142086, %.lr.ph2013.preheader ], [ %i.cby, %middle.block2897 ]
  %.102001.ph = phi ptr [ %.92040, %.lr.ph2013.preheader ], [ %i.cfs, %middle.block2897 ]
  %.ph2913 = phi <2 x float> [ zeroinitializer, %.lr.ph2013.preheader ], [ %i.cmh, %middle.block2897 ]
  %.ph2914 = phi <2 x float> [ zeroinitializer, %.lr.ph2013.preheader ], [ %i.cmj, %middle.block2897 ]
  %.ph2915 = phi <2 x float> [ zeroinitializer, %.lr.ph2013.preheader ], [ %i.cml, %middle.block2897 ]
  %.ph2916 = phi <2 x float> [ zeroinitializer, %.lr.ph2013.preheader ], [ %i.cmn, %middle.block2897 ]
  br label %.lr.ph2013

.lr.ph2013:                                       ; preds = %.lr.ph2013.preheader2912, %.lr.ph2013
  %.018352003 = phi i32 [ %i.cno, %.lr.ph2013 ], [ %.018352003.ph, %.lr.ph2013.preheader2912 ]
  %.018372002 = phi ptr [ %i.cnm, %.lr.ph2013 ], [ %.018372002.ph, %.lr.ph2013.preheader2912 ] ; 2 uses
  %.102001 = phi ptr [ %i.cnn, %.lr.ph2013 ], [ %.102001.ph, %.lr.ph2013.preheader2912 ] ; 5 uses
  %i.cmo = phi <2 x float> [ %i.cmz, %.lr.ph2013 ], [ %.ph2913, %.lr.ph2013.preheader2912 ]
  %i.cmp = phi <2 x float> [ %i.cnd, %.lr.ph2013 ], [ %.ph2914, %.lr.ph2013.preheader2912 ]
  %i.cmq = phi <2 x float> [ %i.cnh, %.lr.ph2013 ], [ %.ph2915, %.lr.ph2013.preheader2912 ]
  %i.cmr = phi <2 x float> [ %i.cnl, %.lr.ph2013 ], [ %.ph2916, %.lr.ph2013.preheader2912 ]
  %i.cms = getelementptr inbounds nuw i8, ptr %.102001, i64 8
  %i.cmt = getelementptr inbounds nuw i8, ptr %.102001, i64 16
  %i.cmu = getelementptr inbounds nuw i8, ptr %.102001, i64 24
  %i.cmv = load <2 x float>, ptr %.102001, align 4, !tbaa !68
  %i.cmw = load <4 x float>, ptr %.018372002, align 4, !tbaa !68 ; 4 uses
  %i.cmx = shufflevector <4 x float> %i.cmw, <4 x float> poison, <2 x i32> zeroinitializer
  %i.cmy = fmul fast <2 x float> %i.cmv, %i.cmx
  %i.cmz = fadd fast <2 x float> %i.cmy, %i.cmo   ; 2 uses
  %i.cna = load <2 x float>, ptr %i.cms, align 4, !tbaa !68
  %i.cnb = shufflevector <4 x float> %i.cmw, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cnc = fmul fast <2 x float> %i.cna, %i.cnb
  %i.cnd = fadd fast <2 x float> %i.cnc, %i.cmp   ; 2 uses
  %i.cne = load <2 x float>, ptr %i.cmt, align 4, !tbaa !68
  %i.cnf = shufflevector <4 x float> %i.cmw, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.cng = fmul fast <2 x float> %i.cne, %i.cnf
  %i.cnh = fadd fast <2 x float> %i.cng, %i.cmq   ; 2 uses
  %i.cni = load <2 x float>, ptr %i.cmu, align 4, !tbaa !68
  %i.cnj = shufflevector <4 x float> %i.cmw, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.cnk = fmul fast <2 x float> %i.cni, %i.cnj
  %i.cnl = fadd fast <2 x float> %i.cnk, %i.cmr   ; 2 uses
  %i.cnm = getelementptr inbounds nuw i8, ptr %.018372002, i64 16 ; 2 uses
  %i.cnn = getelementptr inbounds nuw i8, ptr %.102001, i64 32
  %i.cno = add nuw nsw i32 %.018352003, 4         ; 2 uses
  %i.cnp = or disjoint i32 %i.cno, 3
  %i.cnq = icmp slt i32 %i.cnp, %8
  br i1 %i.cnq, label %.lr.ph2013, label %._crit_edge2014.loopexit, !llvm.loop !431

._crit_edge2014.loopexit:                         ; preds = %.lr.ph2013, %middle.block2897
  %.lcssa2589 = phi ptr [ %i.cby, %middle.block2897 ], [ %i.cnm, %.lr.ph2013 ]
  %i.cnr = phi <2 x float> [ %i.cmh, %middle.block2897 ], [ %i.cmz, %.lr.ph2013 ]
  %i.cns = phi <2 x float> [ %i.cmj, %middle.block2897 ], [ %i.cnd, %.lr.ph2013 ]
  %i.cnt = phi <2 x float> [ %i.cml, %middle.block2897 ], [ %i.cnh, %.lr.ph2013 ]
  %i.cnu = phi <2 x float> [ %i.cmn, %middle.block2897 ], [ %i.cnl, %.lr.ph2013 ]
  %i.cnv = getelementptr i8, ptr %.92040, i64 %i.bcj
  %scevgep2322 = getelementptr i8, ptr %i.cnv, i64 32
  %i.cnw = fadd fast <2 x float> %i.cnr, %i.cfr
  %i.cnx = fadd fast <2 x float> %i.cnw, %i.cns
  %i.cny = fadd fast <2 x float> %i.cnx, %i.cnt
  %i.cnz = fadd fast <2 x float> %i.cny, %i.cnu
  br label %._crit_edge2014

._crit_edge2014:                                  ; preds = %._crit_edge2014.loopexit, %bb.hu
  %.10.lcssa = phi ptr [ %.92040, %bb.hu ], [ %scevgep2322, %._crit_edge2014.loopexit ] ; 5 uses
  %.01837.lcssa = phi ptr [ %.319142086, %bb.hu ], [ %.lcssa2589, %._crit_edge2014.loopexit ] ; 3 uses
  %.01835.lcssa = phi i32 [ 0, %bb.hu ], [ %i.bce, %._crit_edge2014.loopexit ] ; 4 uses
  %i.coa = phi <2 x float> [ %i.cfr, %bb.hu ], [ %i.cnz, %._crit_edge2014.loopexit ] ; 3 uses
  %i.cob = icmp slt i32 %.01835.lcssa, %8
  %i.coc = extractelement <2 x float> %i.coa, i64 0 ; 2 uses
  %i.cod = extractelement <2 x float> %i.coa, i64 1 ; 2 uses
  br i1 %i.cob, label %.lr.ph2032.preheader, label %._crit_edge2033

.lr.ph2032.preheader:                             ; preds = %._crit_edge2014
  %i.coe = xor i32 %.01835.lcssa, -1
  %i.cof = add i32 %8, %i.coe                     ; 2 uses
  %i.cog = zext i32 %i.cof to i64
  %i.coh = add nuw nsw i64 %i.cog, 1              ; 2 uses
  %min.iters.check2844 = icmp ult i32 %i.cof, 7
  br i1 %min.iters.check2844, label %.lr.ph2032.preheader2911, label %vector.ph2845

vector.ph2845:                                    ; preds = %.lr.ph2032.preheader
  %n.vec2846 = and i64 %i.coh, 8589934584         ; 5 uses
  %i.coi = trunc i64 %n.vec2846 to i32
  %i.coj = add i32 %.01835.lcssa, %i.coi
  %i.cok = shl nuw nsw i64 %n.vec2846, 2
  %i.col = getelementptr i8, ptr %.01837.lcssa, i64 %i.cok
  %i.com = shl nuw nsw i64 %n.vec2846, 3
  %i.con = getelementptr i8, ptr %.10.lcssa, i64 %i.com ; 2 uses
  %i.coo = shufflevector <2 x float> %i.coa, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %10 = shufflevector <4 x float> %i.coo, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 1, i32 5, i32 6, i32 7>
  %i.cop = shufflevector <4 x float> %i.coo, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body2847

vector.body2847:                                  ; preds = %vector.body2847, %vector.ph2845
  %index2848 = phi i64 [ 0, %vector.ph2845 ], [ %index.next2864, %vector.body2847 ] ; 3 uses
  %vec.phi2849 = phi <4 x float> [ %10, %vector.ph2845 ], [ %i.cpa, %vector.body2847 ]
  %vec.phi2850 = phi <4 x float> [ zeroinitializer, %vector.ph2845 ], [ %i.cpb, %vector.body2847 ]
  %vec.phi2851 = phi <4 x float> [ %i.cop, %vector.ph2845 ], [ %i.cow, %vector.body2847 ]
  %vec.phi2852 = phi <4 x float> [ zeroinitializer, %vector.ph2845 ], [ %i.cox, %vector.body2847 ]
  %i.coq = shl i64 %index2848, 2
  %next.gep2853 = getelementptr i8, ptr %.01837.lcssa, i64 %i.coq ; 2 uses
  %i.cor = shl i64 %index2848, 3                  ; 2 uses
  %next.gep2854 = getelementptr i8, ptr %.10.lcssa, i64 %i.cor
  %i.cos = getelementptr i8, ptr %.10.lcssa, i64 %i.cor
  %next.gep2855 = getelementptr i8, ptr %i.cos, i64 32
  %i.cot = getelementptr i8, ptr %next.gep2853, i64 16
  %wide.load2856 = load <4 x float>, ptr %next.gep2853, align 4, !tbaa !68 ; 2 uses
  %wide.load2857 = load <4 x float>, ptr %i.cot, align 4, !tbaa !68 ; 2 uses
  %wide.vec2858 = load <8 x float>, ptr %next.gep2854, align 4, !tbaa !68 ; 2 uses
  %strided.vec2859 = shufflevector <8 x float> %wide.vec2858, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec2860 = shufflevector <8 x float> %wide.vec2858, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec2861 = load <8 x float>, ptr %next.gep2855, align 4, !tbaa !68 ; 2 uses
  %strided.vec2862 = shufflevector <8 x float> %wide.vec2861, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec2863 = shufflevector <8 x float> %wide.vec2861, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.cou = fmul fast <4 x float> %strided.vec2859, %wide.load2856
  %i.cov = fmul fast <4 x float> %strided.vec2862, %wide.load2857
  %i.cow = fadd fast <4 x float> %i.cou, %vec.phi2851 ; 2 uses
  %i.cox = fadd fast <4 x float> %i.cov, %vec.phi2852 ; 2 uses
  %i.coy = fmul fast <4 x float> %strided.vec2860, %wide.load2856
  %i.coz = fmul fast <4 x float> %strided.vec2863, %wide.load2857
  %i.cpa = fadd fast <4 x float> %i.coy, %vec.phi2849 ; 2 uses
  %i.cpb = fadd fast <4 x float> %i.coz, %vec.phi2850 ; 2 uses
  %index.next2864 = add nuw i64 %index2848, 8     ; 2 uses
  %i.cpc = icmp eq i64 %index.next2864, %n.vec2846
  br i1 %i.cpc, label %middle.block2865, label %vector.body2847, !llvm.loop !432

middle.block2865:                                 ; preds = %vector.body2847
  %bin.rdx2866 = fadd fast <4 x float> %i.cpb, %i.cpa
  %i.cpd = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx2866) ; 2 uses
  %bin.rdx2867 = fadd fast <4 x float> %i.cox, %i.cow
  %i.cpe = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx2867) ; 2 uses
  %cmp.n2868 = icmp eq i64 %i.coh, %n.vec2846
  br i1 %cmp.n2868, label %._crit_edge2033, label %.lr.ph2032.preheader2911

.lr.ph2032.preheader2911:                         ; preds = %.lr.ph2032.preheader, %middle.block2865
  %.118362030.ph = phi i32 [ %.01835.lcssa, %.lr.ph2032.preheader ], [ %i.coj, %middle.block2865 ]
  %.118382029.ph = phi ptr [ %.01837.lcssa, %.lr.ph2032.preheader ], [ %i.col, %middle.block2865 ]
  %.218412028.ph = phi float [ %i.cod, %.lr.ph2032.preheader ], [ %i.cpd, %middle.block2865 ]
  %.218442027.ph = phi float [ %i.coc, %.lr.ph2032.preheader ], [ %i.cpe, %middle.block2865 ]
  %.112026.ph = phi ptr [ %.10.lcssa, %.lr.ph2032.preheader ], [ %i.con, %middle.block2865 ]
  br label %.lr.ph2032

.lr.ph2032:                                       ; preds = %.lr.ph2032.preheader2911, %.lr.ph2032
  %.118362030 = phi i32 [ %i.cpp, %.lr.ph2032 ], [ %.118362030.ph, %.lr.ph2032.preheader2911 ]
  %.118382029 = phi ptr [ %i.cpn, %.lr.ph2032 ], [ %.118382029.ph, %.lr.ph2032.preheader2911 ] ; 2 uses
  %.218412028 = phi float [ %i.cpm, %.lr.ph2032 ], [ %.218412028.ph, %.lr.ph2032.preheader2911 ]
  %.218442027 = phi float [ %i.cpi, %.lr.ph2032 ], [ %.218442027.ph, %.lr.ph2032.preheader2911 ]
  %.112026 = phi ptr [ %i.cpo, %.lr.ph2032 ], [ %.112026.ph, %.lr.ph2032.preheader2911 ] ; 3 uses
  %i.cpf = load float, ptr %.118382029, align 4, !tbaa !68 ; 2 uses
  %i.cpg = load float, ptr %.112026, align 4, !tbaa !68
  %i.cph = fmul fast float %i.cpg, %i.cpf
  %i.cpi = fadd fast float %i.cph, %.218442027    ; 2 uses
  %i.cpj = getelementptr inbounds nuw i8, ptr %.112026, i64 4
  %i.cpk = load float, ptr %i.cpj, align 4, !tbaa !68
  %i.cpl = fmul fast float %i.cpk, %i.cpf
  %i.cpm = fadd fast float %i.cpl, %.218412028    ; 2 uses
  %i.cpn = getelementptr inbounds nuw i8, ptr %.118382029, i64 4
  %i.cpo = getelementptr inbounds nuw i8, ptr %.112026, i64 8 ; 2 uses
  %i.cpp = add nuw nsw i32 %.118362030, 1         ; 2 uses
  %exitcond2323.not = icmp eq i32 %i.cpp, %8
  br i1 %exitcond2323.not, label %._crit_edge2033, label %.lr.ph2032, !llvm.loop !433

._crit_edge2033:                                  ; preds = %.lr.ph2032, %middle.block2865, %._crit_edge2014
  %.11.lcssa = phi ptr [ %.10.lcssa, %._crit_edge2014 ], [ %i.con, %middle.block2865 ], [ %i.cpo, %.lr.ph2032 ] ; 2 uses
  %.21844.lcssa = phi float [ %i.coc, %._crit_edge2014 ], [ %i.cpe, %middle.block2865 ], [ %i.cpi, %.lr.ph2032 ] ; 2 uses
  %.21841.lcssa = phi float [ %i.cod, %._crit_edge2014 ], [ %i.cpd, %middle.block2865 ], [ %i.cpm, %.lr.ph2032 ] ; 2 uses
  br i1 %9, label %bb.hv, label %bb.hw

bb.hv:                                            ; preds = %._crit_edge2033
  store float %.21844.lcssa, ptr %.618712039, align 4, !tbaa !68
  %i.cpq = getelementptr inbounds nuw i8, ptr %.618712039, i64 4
  store float %.21841.lcssa, ptr %i.cpq, align 4, !tbaa !68
  %i.cpr = getelementptr inbounds nuw i8, ptr %.618712039, i64 8
  br label %bb.hx

bb.hw:                                            ; preds = %._crit_edge2033
  store float %.21844.lcssa, ptr %.2219522037, align 4, !tbaa !68
  %i.cps = getelementptr inbounds nuw i8, ptr %.2219522037, i64 4
  store float %.21841.lcssa, ptr %i.cps, align 4, !tbaa !68
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hw, %bb.hv
  %.71872 = phi ptr [ %i.cpr, %bb.hv ], [ %.618712039, %bb.hw ] ; 2 uses
  %i.cpt = getelementptr inbounds nuw i8, ptr %.2219522037, i64 8 ; 2 uses
  %i.cpu = add nuw nsw i32 %.32041, 2             ; 3 uses
  %i.cpv = or disjoint i32 %i.cpu, 1
  %i.cpw = icmp slt i32 %i.cpv, %6
  br i1 %i.cpw, label %.lr.ph2042, label %.preheader, !llvm.loop !434

.lr.ph2079:                                       ; preds = %.lr.ph2079.preheader, %bb.ig
  %.42078 = phi i32 [ %i.dam, %bb.ig ], [ %.3.lcssa, %.lr.ph2079.preheader ]
  %.122077 = phi ptr [ %.14.lcssa, %bb.ig ], [ %.9.lcssa, %.lr.ph2079.preheader ] ; 12 uses
  %.818732076 = phi ptr [ %.91874, %bb.ig ], [ %.61871.lcssa, %.lr.ph2079.preheader ] ; 3 uses
  %.652075 = phi ptr [ %.66, %bb.ig ], [ %.63.lcssa, %.lr.ph2079.preheader ] ; 7 uses
  %.2319532074 = phi ptr [ %i.dal, %bb.ig ], [ %.221952.lcssa, %.lr.ph2079.preheader ] ; 3 uses
  br i1 %i.bby, label %bb.hy, label %bb.ic

bb.hy:                                            ; preds = %.lr.ph2079
  %.not2077 = icmp eq ptr %.652075, null
  br i1 %.not2077, label %bb.id, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  br i1 %or.cond41, label %.thread1409, label %bb.ia

.thread1409:                                      ; preds = %bb.hz
  %i.cpx = load float, ptr %.652075, align 4, !tbaa !68
  br label %bb.id

bb.ia:                                            ; preds = %bb.hz
  br i1 %or.cond43, label %bb.ib, label %bb.id

bb.ib:                                            ; preds = %bb.ia
  %i.cpy = load float, ptr %.652075, align 4, !tbaa !68
  %i.cpz = getelementptr inbounds nuw i8, ptr %.652075, i64 4
  br label %bb.id

bb.ic:                                            ; preds = %.lr.ph2079
  %i.cqa = load float, ptr %.2319532074, align 4, !tbaa !68
  br label %bb.id

bb.id:                                            ; preds = %.thread1409, %bb.hy, %bb.ia, %bb.ib, %bb.ic
  %.66 = phi ptr [ %i.cpz, %bb.ib ], [ %.652075, %bb.ia ], [ null, %bb.hy ], [ %.652075, %bb.ic ], [ %.652075, %.thread1409 ] ; 2 uses
  %.11826 = phi nsz float [ %i.cpy, %bb.ib ], [ 0.000000e+00, %bb.ia ], [ 0.000000e+00, %bb.hy ], [ %i.cqa, %bb.ic ], [ %i.cpx, %.thread1409 ] ; 2 uses
  br i1 %i.bca, label %.lr.ph2056.preheader, label %._crit_edge2057

.lr.ph2056.preheader:                             ; preds = %bb.id
  br i1 %min.iters.check2800, label %.lr.ph2056.preheader2910, label %vector.ph2801

vector.ph2801:                                    ; preds = %.lr.ph2056.preheader
  %i.cqb = getelementptr i8, ptr %.122077, i64 %i.bcu
  br label %vector.body2803

vector.body2803:                                  ; preds = %vector.body2803, %vector.ph2801
  %index2804 = phi i64 [ 0, %vector.ph2801 ], [ %index.next2829, %vector.body2803 ] ; 2 uses
  %vec.phi2805 = phi <4 x float> [ zeroinitializer, %vector.ph2801 ], [ %i.cxs, %vector.body2803 ]
  %vec.phi2806 = phi <4 x float> [ zeroinitializer, %vector.ph2801 ], [ %i.cxt, %vector.body2803 ]
  %vec.phi2807 = phi <4 x float> [ zeroinitializer, %vector.ph2801 ], [ %i.cvs, %vector.body2803 ]
  %vec.phi2808 = phi <4 x float> [ zeroinitializer, %vector.ph2801 ], [ %i.cvt, %vector.body2803 ]
  %vec.phi2809 = phi <4 x float> [ zeroinitializer, %vector.ph2801 ], [ %i.cts, %vector.body2803 ]
  %vec.phi2810 = phi <4 x float> [ zeroinitializer, %vector.ph2801 ], [ %i.ctt, %vector.body2803 ]
  %vec.phi2811 = phi <4 x float> [ zeroinitializer, %vector.ph2801 ], [ %i.crs, %vector.body2803 ]
  %vec.phi2812 = phi <4 x float> [ zeroinitializer, %vector.ph2801 ], [ %i.crt, %vector.body2803 ]
  %i.cqc = shl i64 %index2804, 4                  ; 9 uses
  %i.cqd = or disjoint i64 %i.cqc, 16             ; 2 uses
  %i.cqe = or disjoint i64 %i.cqc, 32             ; 2 uses
  %i.cqf = or disjoint i64 %i.cqc, 48             ; 2 uses
  %i.cqg = or disjoint i64 %i.cqc, 64             ; 2 uses
  %i.cqh = or disjoint i64 %i.cqc, 80             ; 2 uses
  %i.cqi = or disjoint i64 %i.cqc, 96             ; 2 uses
  %i.cqj = or disjoint i64 %i.cqc, 112            ; 2 uses
  %next.gep2813 = getelementptr i8, ptr %.319142086, i64 %i.cqc ; 4 uses
  %next.gep2814 = getelementptr i8, ptr %.319142086, i64 %i.cqd ; 4 uses
  %next.gep2815 = getelementptr i8, ptr %.319142086, i64 %i.cqe ; 4 uses
  %next.gep2816 = getelementptr i8, ptr %.319142086, i64 %i.cqf ; 4 uses
  %next.gep2817 = getelementptr i8, ptr %.319142086, i64 %i.cqg ; 4 uses
  %next.gep2818 = getelementptr i8, ptr %.319142086, i64 %i.cqh ; 4 uses
  %next.gep2819 = getelementptr i8, ptr %.319142086, i64 %i.cqi ; 4 uses
  %next.gep2820 = getelementptr i8, ptr %.319142086, i64 %i.cqj ; 4 uses
  %next.gep2821 = getelementptr i8, ptr %.122077, i64 %i.cqc ; 4 uses
  %next.gep2822 = getelementptr i8, ptr %.122077, i64 %i.cqd ; 4 uses
  %next.gep2823 = getelementptr i8, ptr %.122077, i64 %i.cqe ; 4 uses
  %next.gep2824 = getelementptr i8, ptr %.122077, i64 %i.cqf ; 4 uses
  %next.gep2825 = getelementptr i8, ptr %.122077, i64 %i.cqg ; 4 uses
  %next.gep2826 = getelementptr i8, ptr %.122077, i64 %i.cqh ; 4 uses
  %next.gep2827 = getelementptr i8, ptr %.122077, i64 %i.cqi ; 4 uses
  %next.gep2828 = getelementptr i8, ptr %.122077, i64 %i.cqj ; 4 uses
  %i.cqk = load float, ptr %next.gep2813, align 4, !tbaa !68
  %i.cql = load float, ptr %next.gep2814, align 4, !tbaa !68
  %i.cqm = load float, ptr %next.gep2815, align 4, !tbaa !68
  %i.cqn = load float, ptr %next.gep2816, align 4, !tbaa !68
  %i.cqo = insertelement <4 x float> poison, float %i.cqk, i64 0
  %i.cqp = insertelement <4 x float> %i.cqo, float %i.cql, i64 1
  %i.cqq = insertelement <4 x float> %i.cqp, float %i.cqm, i64 2
  %i.cqr = insertelement <4 x float> %i.cqq, float %i.cqn, i64 3
  %i.cqs = load float, ptr %next.gep2817, align 4, !tbaa !68
  %i.cqt = load float, ptr %next.gep2818, align 4, !tbaa !68
  %i.cqu = load float, ptr %next.gep2819, align 4, !tbaa !68
  %i.cqv = load float, ptr %next.gep2820, align 4, !tbaa !68
  %i.cqw = insertelement <4 x float> poison, float %i.cqs, i64 0
  %i.cqx = insertelement <4 x float> %i.cqw, float %i.cqt, i64 1
  %i.cqy = insertelement <4 x float> %i.cqx, float %i.cqu, i64 2
  %i.cqz = insertelement <4 x float> %i.cqy, float %i.cqv, i64 3
  %i.cra = load float, ptr %next.gep2821, align 4, !tbaa !68
  %i.crb = load float, ptr %next.gep2822, align 4, !tbaa !68
  %i.crc = load float, ptr %next.gep2823, align 4, !tbaa !68
  %i.crd = load float, ptr %next.gep2824, align 4, !tbaa !68
  %i.cre = insertelement <4 x float> poison, float %i.cra, i64 0
  %i.crf = insertelement <4 x float> %i.cre, float %i.crb, i64 1
  %i.crg = insertelement <4 x float> %i.crf, float %i.crc, i64 2
  %i.crh = insertelement <4 x float> %i.crg, float %i.crd, i64 3
end_hunk_0
begin_hunk_1_@_ZN4ncnnL20gemm_AT_BT_x86_bf16sERKNS_3MatES2_S2_RS0_iiiiiffiiiiiRKNS_6OptionE.omp_outlined:bb.a

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnn3MatD2Ev.exit58, %.noexc84
  %i.ao = load i32, ptr %15, align 4, !tbaa !50
  %i.ap = load float, ptr %16, align 4, !tbaa !68
  %i.aq = load float, ptr %17, align 4, !tbaa !68
  %i.ar = load i32, ptr %18, align 4, !tbaa !50
  %i.as = load i32, ptr %19, align 4, !tbaa !50
  call fastcc void @_ZN4ncnnL31unpack_output_tile_fp32_to_bf16ERKNS_3MatES2_RS0_iiiiiffii(ptr %i.al, ptr noundef nonnull align 8 dereferenceable(72) %13, ptr noundef nonnull align 8 dereferenceable(72) %14, i32 noundef %i.ao, i32 noundef %i.x, i32 noundef %.sroa.speculated158, i32 noundef %i.z, i32 noundef %.sroa.speculated154, float noundef nofpclass(nan inf) %i.ap, float noundef nofpclass(nan inf) %i.aq, i32 noundef %i.ar, i32 noundef %i.as)
  %i.at = add nsw i32 %.054163, 1
  %i.au = load i32, ptr %i.b, align 4, !tbaa !50
  %.not.not = icmp slt i32 %.054163, %i.au
  br i1 %.not.not, label %bb.c, label %._crit_edge

_ZN4ncnn3MatD2Ev.exit58:                          ; preds = %_ZN4ncnn3MatD2Ev.exit58.preheader, %_ZN4ncnn3MatD2Ev.exit58
  %i.av = phi i32 [ %i.cc, %_ZN4ncnn3MatD2Ev.exit58 ], [ %.pre, %_ZN4ncnn3MatD2Ev.exit58.preheader ] ; 2 uses
  %i.aw = phi i32 [ %i.ce, %_ZN4ncnn3MatD2Ev.exit58 ], [ %i.am, %_ZN4ncnn3MatD2Ev.exit58.preheader ]
  %.0161 = phi i32 [ %i.cd, %_ZN4ncnn3MatD2Ev.exit58 ], [ 0, %_ZN4ncnn3MatD2Ev.exit58.preheader ] ; 4 uses
  %i.ax = sub nsw i32 %i.aw, %.0161
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.av, i32 %i.ax)
  %i.ay = load i32, ptr %4, align 4, !tbaa !50
  %i.az = sdiv i32 %i.x, %i.ay
  %i.ba = load i32, ptr %i.n, align 4, !tbaa !77, !noalias !1183
  %i.bb = load ptr, ptr %11, align 8, !tbaa !24, !noalias !1183
  %i.bc = load i64, ptr %i.o, align 8, !tbaa !25, !noalias !1183
  %i.bd = sext i32 %i.az to i64
  %i.be = mul i64 %i.bc, %i.bd
  %i.bf = load i64, ptr %i.p, align 8, !tbaa !63, !noalias !1183 ; 2 uses
  %i.bg = mul i64 %i.be, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bg
  %i.bi = sext i32 %i.ba to i64
  %i.bj = sdiv i32 %.0161, %i.av
  %i.bk = sext i32 %i.bj to i64                   ; 2 uses
  %i.bl = mul i64 %i.bf, %i.bi
  %i.bm = mul i64 %i.bl, %i.bk
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bm
  %i.bo = load i32, ptr %5, align 4, !tbaa !50
  %i.bp = sdiv i32 %i.z, %i.bo
  %i.bq = load i32, ptr %i.q, align 4, !tbaa !77, !noalias !1184
  %i.br = load ptr, ptr %12, align 8, !tbaa !24, !noalias !1184
  %i.bs = load i64, ptr %i.r, align 8, !tbaa !25, !noalias !1184
  %i.bt = sext i32 %i.bp to i64
  %i.bu = mul i64 %i.bs, %i.bt
  %i.bv = load i64, ptr %i.s, align 8, !tbaa !63, !noalias !1184 ; 2 uses
  %i.bw = mul i64 %i.bu, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bw
  %i.by = sext i32 %i.bq to i64
  %i.bz = mul i64 %i.bv, %i.by
  %i.ca = mul i64 %i.bz, %i.bk
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.ca
  call fastcc void @_ZN4ncnnL29gemm_transB_packed_tile_bf16sERKNS_3MatES2_RS0_iiiiii(ptr %i.bn, ptr %i.cb, ptr %i.al, i32 noundef %.sroa.speculated158, i32 noundef %.sroa.speculated154, i32 noundef %.0161, i32 noundef %.sroa.speculated)
  %i.cc = load i32, ptr %10, align 4, !tbaa !50   ; 2 uses
  %i.cd = add nsw i32 %i.cc, %.0161               ; 2 uses
  %i.ce = load i32, ptr %9, align 4, !tbaa !50    ; 2 uses
  %i.cf = icmp slt i32 %i.cd, %i.ce
  br i1 %i.cf, label %_ZN4ncnn3MatD2Ev.exit58, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !1181

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.e:                                             ; preds = %bb.c
  %i.cg = landingpad { ptr, i32 }
          catch ptr null
  %i.ch = extractvalue { ptr, i32 } %i.cg, 0
  call void @__clang_call_terminate(ptr %i.ch) #26
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL29gemm_transB_packed_tile_bf16sERKNS_3MatES2_RS0_iiiiii(ptr nofree readonly captures(none) %.0.val, ptr nofree readonly %.0.val1, ptr nofree %.0.val3, i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #10 {
bb.a:
  %i.a = icmp sgt i32 %0, 7
  br i1 %i.a, label %.preheader308.lr.ph, label %.preheader304

.preheader308.lr.ph:                              ; preds = %bb.a
  %i.b = icmp sgt i32 %1, 7
  %.not594 = icmp eq i32 %2, 0                    ; 6 uses
  %i.c = icmp sgt i32 %3, 0                       ; 4 uses
  %i.d = shl nsw i32 %3, 3
  %i.e = sext i32 %i.d to i64
  %i.f = add i32 %3, -1
  %i.g = zext i32 %i.f to i64                     ; 4 uses
  %i.h = shl nuw nsw i64 %i.g, 4
  %i.i = and i32 %1, -8
  %i.j = shl nuw nsw i64 %i.g, 3
  %i.k = add i32 %1, -2
  %i.l = shl nuw nsw i64 %i.g, 2
  %i.m = add nsw i32 %1, -1                       ; 2 uses
  %i.n = shl nuw nsw i64 %i.g, 1
  br label %.preheader308

.preheader308:                                    ; preds = %.preheader308.lr.ph, %._crit_edge400
  %.0454410 = phi ptr [ %.0.val, %.preheader308.lr.ph ], [ %i.fv, %._crit_edge400 ] ; 5 uses
  %.0456409 = phi ptr [ %.0.val3, %.preheader308.lr.ph ], [ %.4.lcssa, %._crit_edge400 ] ; 2 uses
  %.0460408 = phi i32 [ 0, %.preheader308.lr.ph ], [ %i.fw, %._crit_edge400 ]
  br i1 %i.b, label %.lr.ph331, label %.preheader307

.preheader304.loopexit:                           ; preds = %._crit_edge400
  %i.o = and i32 %0, 2147483640
  br label %.preheader304

.preheader304:                                    ; preds = %.preheader304.loopexit, %bb.a
  %.0460.lcssa = phi i32 [ 0, %bb.a ], [ %i.o, %.preheader304.loopexit ] ; 3 uses
  %.0456.lcssa = phi ptr [ %.0.val3, %bb.a ], [ %.4.lcssa, %.preheader304.loopexit ] ; 2 uses
  %.0454.lcssa = phi ptr [ %.0.val, %bb.a ], [ %i.fv, %.preheader304.loopexit ] ; 2 uses
  %i.p = or disjoint i32 %.0460.lcssa, 3
  %i.q = icmp slt i32 %i.p, %0
  br i1 %i.q, label %.preheader303.lr.ph, label %.preheader299

.preheader303.lr.ph:                              ; preds = %.preheader304
  %i.r = icmp sgt i32 %1, 7
  %.not590 = icmp eq i32 %2, 0                    ; 6 uses
  %i.s = icmp sgt i32 %3, 0                       ; 4 uses
  %i.t = shl nsw i32 %3, 2
  %i.u = sext i32 %i.t to i64
  %i.v = add i32 %3, -1
  %i.w = zext i32 %i.v to i64                     ; 4 uses
  %i.x = shl nuw nsw i64 %i.w, 4
  %i.y = and i32 %1, -8
  %i.z = shl nuw nsw i64 %i.w, 3
  %i.aa = add i32 %1, -2
  %i.ab = shl nuw nsw i64 %i.w, 2
  %i.ac = add nsw i32 %1, -1                      ; 2 uses
  %i.ad = shl nuw nsw i64 %i.w, 1
  %i.ae = add i32 %3, -1                          ; 2 uses
  %xtraiter = and i32 %3, 1
  %i.af = icmp eq i32 %i.ae, 0
  %unroll_iter = and i32 %3, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod446 = trunc i32 %3 to i1
  %xtraiter447 = and i32 %3, 1
  %i.ag = icmp eq i32 %i.ae, 0
  %unroll_iter451 = and i32 %3, 2147483646
  %lcmp.mod448.not = icmp eq i32 %xtraiter447, 0
  %lcmp.mod450 = trunc i32 %3 to i1
  br label %.preheader303

.preheader307:                                    ; preds = %._crit_edge, %.preheader308
  %.0518.lcssa = phi i32 [ 0, %.preheader308 ], [ %i.i, %._crit_edge ] ; 3 uses
  %.0464.lcssa = phi ptr [ %.0.val1, %.preheader308 ], [ %.1465.lcssa, %._crit_edge ] ; 2 uses
  %.1457.lcssa = phi ptr [ %.0456409, %.preheader308 ], [ %i.cb, %._crit_edge ] ; 2 uses
  %i.ah = or disjoint i32 %.0518.lcssa, 3
  %i.ai = icmp slt i32 %i.ah, %1
  br i1 %i.ai, label %.lr.ph353, label %.preheader306

.lr.ph331:                                        ; preds = %.preheader308, %._crit_edge
  %.1457330 = phi ptr [ %i.cb, %._crit_edge ], [ %.0456409, %.preheader308 ] ; 17 uses
  %.0464329 = phi ptr [ %.1465.lcssa, %._crit_edge ], [ %.0.val1, %.preheader308 ] ; 3 uses
  %.0518328 = phi i32 [ %i.cc, %._crit_edge ], [ 0, %.preheader308 ]
  br i1 %.not594, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph331
  %i.aj = load <8 x float>, ptr %.1457330, align 32, !tbaa !89
  %i.ak = getelementptr inbounds nuw i8, ptr %.1457330, i64 32
  %i.al = load <8 x float>, ptr %i.ak, align 32, !tbaa !89
  %i.am = getelementptr inbounds nuw i8, ptr %.1457330, i64 64
  %i.an = load <8 x float>, ptr %i.am, align 32, !tbaa !89
  %i.ao = getelementptr inbounds nuw i8, ptr %.1457330, i64 96
  %i.ap = load <8 x float>, ptr %i.ao, align 32, !tbaa !89
  %i.aq = getelementptr inbounds nuw i8, ptr %.1457330, i64 128
  %i.ar = load <8 x float>, ptr %i.aq, align 32, !tbaa !89
  %i.as = getelementptr inbounds nuw i8, ptr %.1457330, i64 160
  %i.at = load <8 x float>, ptr %i.as, align 32, !tbaa !89
  %i.au = getelementptr inbounds nuw i8, ptr %.1457330, i64 192
  %i.av = load <8 x float>, ptr %i.au, align 32, !tbaa !89
  %i.aw = getelementptr inbounds nuw i8, ptr %.1457330, i64 224
  %i.ax = load <8 x float>, ptr %i.aw, align 32, !tbaa !89
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph331
  %.0233 = phi nsz <8 x float> [ zeroinitializer, %.lr.ph331 ], [ %i.ax, %bb.b ] ; 2 uses
  %.0231 = phi nsz <8 x float> [ zeroinitializer, %.lr.ph331 ], [ %i.av, %bb.b ] ; 2 uses
  %.0229 = phi nsz <8 x float> [ zeroinitializer, %.lr.ph331 ], [ %i.at, %bb.b ] ; 2 uses
  %.0227 = phi nsz <8 x float> [ zeroinitializer, %.lr.ph331 ], [ %i.ar, %bb.b ] ; 2 uses
  %.0225 = phi nsz <8 x float> [ zeroinitializer, %.lr.ph331 ], [ %i.ap, %bb.b ] ; 2 uses
  %.0223 = phi nsz <8 x float> [ zeroinitializer, %.lr.ph331 ], [ %i.an, %bb.b ] ; 2 uses
  %.0221 = phi nsz <8 x float> [ zeroinitializer, %.lr.ph331 ], [ %i.al, %bb.b ] ; 2 uses
  %.0219 = phi nsz <8 x float> [ zeroinitializer, %.lr.ph331 ], [ %i.aj, %bb.b ] ; 2 uses
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.1465319 = phi ptr [ %i.br, %.lr.ph ], [ %.0464329, %bb.c ] ; 2 uses
  %.0522318 = phi ptr [ %i.bq, %.lr.ph ], [ %.0454410, %bb.c ] ; 2 uses
  %.0523317 = phi i32 [ %i.bs, %.lr.ph ], [ 0, %bb.c ]
  %.1220316 = phi <8 x float> [ %i.bi, %.lr.ph ], [ %.0219, %bb.c ]
  %.1222315 = phi <8 x float> [ %i.bj, %.lr.ph ], [ %.0221, %bb.c ]
  %.1224314 = phi <8 x float> [ %i.bk, %.lr.ph ], [ %.0223, %bb.c ]
  %.1226313 = phi <8 x float> [ %i.bl, %.lr.ph ], [ %.0225, %bb.c ]
  %.1228312 = phi <8 x float> [ %i.bm, %.lr.ph ], [ %.0227, %bb.c ]
  %.1230311 = phi <8 x float> [ %i.bn, %.lr.ph ], [ %.0229, %bb.c ]
  %.1232310 = phi <8 x float> [ %i.bo, %.lr.ph ], [ %.0231, %bb.c ]
  %.1234309 = phi <8 x float> [ %i.bp, %.lr.ph ], [ %.0233, %bb.c ]
  %i.ay = load <8 x i16>, ptr %.0522318, align 1, !tbaa !89 ; 2 uses
  %4 = shufflevector <8 x i16> %i.ay, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %5 = shufflevector <8 x i16> %i.ay, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.az = shufflevector <8 x i16> %4, <8 x i16> %5, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ba = bitcast <16 x i16> %i.az to <8 x float> ; 5 uses
  %i.bb = load <8 x i16>, ptr %.1465319, align 1, !tbaa !89 ; 2 uses
  %6 = shufflevector <8 x i16> %i.bb, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %7 = shufflevector <8 x i16> %i.bb, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.bc = shufflevector <8 x i16> %6, <8 x i16> %7, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bd = bitcast <16 x i16> %i.bc to <8 x float> ; 4 uses
  %i.be = shufflevector <8 x float> %i.ba, <8 x float> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5> ; 4 uses
  %i.bf = shufflevector <8 x float> %i.bd, <8 x float> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4> ; 2 uses
  %i.bg = shufflevector <8 x float> %i.bd, <8 x float> poison, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3> ; 3 uses
  %i.bh = shufflevector <8 x float> %i.bg, <8 x float> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4> ; 2 uses
  %i.bi = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ba, <8 x float> nofpclass(nan inf) %i.bd, <8 x float> nofpclass(nan inf) %.1220316) ; 2 uses
  %i.bj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ba, <8 x float> nofpclass(nan inf) %i.bf, <8 x float> nofpclass(nan inf) %.1222315) ; 2 uses
  %i.bk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.be, <8 x float> nofpclass(nan inf) %i.bd, <8 x float> nofpclass(nan inf) %.1224314) ; 2 uses
  %i.bl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.be, <8 x float> nofpclass(nan inf) %i.bf, <8 x float> nofpclass(nan inf) %.1226313) ; 2 uses
  %i.bm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ba, <8 x float> nofpclass(nan inf) %i.bg, <8 x float> nofpclass(nan inf) %.1228312) ; 2 uses
  %i.bn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ba, <8 x float> nofpclass(nan inf) %i.bh, <8 x float> nofpclass(nan inf) %.1230311) ; 2 uses
  %i.bo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.be, <8 x float> nofpclass(nan inf) %i.bg, <8 x float> nofpclass(nan inf) %.1232310) ; 2 uses
  %i.bp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.be, <8 x float> nofpclass(nan inf) %i.bh, <8 x float> nofpclass(nan inf) %.1234309) ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0522318, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %.1465319, i64 16
  %i.bs = add nuw nsw i32 %.0523317, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.bs, %3
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !1185

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.bt = getelementptr i8, ptr %.0464329, i64 %i.h
  %scevgep = getelementptr i8, ptr %i.bt, i64 16
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.1234.lcssa = phi <8 x float> [ %.0233, %bb.c ], [ %i.bp, %._crit_edge.loopexit ]
  %.1232.lcssa = phi <8 x float> [ %.0231, %bb.c ], [ %i.bo, %._crit_edge.loopexit ]
  %.1230.lcssa = phi <8 x float> [ %.0229, %bb.c ], [ %i.bn, %._crit_edge.loopexit ]
  %.1228.lcssa = phi <8 x float> [ %.0227, %bb.c ], [ %i.bm, %._crit_edge.loopexit ]
  %.1226.lcssa = phi <8 x float> [ %.0225, %bb.c ], [ %i.bl, %._crit_edge.loopexit ]
  %.1224.lcssa = phi <8 x float> [ %.0223, %bb.c ], [ %i.bk, %._crit_edge.loopexit ]
  %.1222.lcssa = phi <8 x float> [ %.0221, %bb.c ], [ %i.bj, %._crit_edge.loopexit ]
  %.1220.lcssa = phi <8 x float> [ %.0219, %bb.c ], [ %i.bi, %._crit_edge.loopexit ]
  %.1465.lcssa = phi ptr [ %.0464329, %bb.c ], [ %scevgep, %._crit_edge.loopexit ] ; 2 uses
  store <8 x float> %.1220.lcssa, ptr %.1457330, align 32, !tbaa !89
  %i.bu = getelementptr inbounds nuw i8, ptr %.1457330, i64 32
  store <8 x float> %.1222.lcssa, ptr %i.bu, align 32, !tbaa !89
  %i.bv = getelementptr inbounds nuw i8, ptr %.1457330, i64 64
  store <8 x float> %.1224.lcssa, ptr %i.bv, align 32, !tbaa !89
  %i.bw = getelementptr inbounds nuw i8, ptr %.1457330, i64 96
  store <8 x float> %.1226.lcssa, ptr %i.bw, align 32, !tbaa !89
  %i.bx = getelementptr inbounds nuw i8, ptr %.1457330, i64 128
  store <8 x float> %.1228.lcssa, ptr %i.bx, align 32, !tbaa !89
  %i.by = getelementptr inbounds nuw i8, ptr %.1457330, i64 160
  store <8 x float> %.1230.lcssa, ptr %i.by, align 32, !tbaa !89
  %i.bz = getelementptr inbounds nuw i8, ptr %.1457330, i64 192
  store <8 x float> %.1232.lcssa, ptr %i.bz, align 32, !tbaa !89
  %i.ca = getelementptr inbounds nuw i8, ptr %.1457330, i64 224
  store <8 x float> %.1234.lcssa, ptr %i.ca, align 32, !tbaa !89
  %i.cb = getelementptr inbounds nuw i8, ptr %.1457330, i64 256 ; 2 uses
  %i.cc = add nuw nsw i32 %.0518328, 8            ; 2 uses
  %i.cd = or disjoint i32 %i.cc, 7
  %i.ce = icmp slt i32 %i.cd, %1
  br i1 %i.ce, label %.lr.ph331, label %.preheader307, !llvm.loop !1186

.preheader306:                                    ; preds = %._crit_edge344, %.preheader307
  %.1519.lcssa = phi i32 [ %.0518.lcssa, %.preheader307 ], [ %i.ep, %._crit_edge344 ] ; 6 uses
  %.2466.lcssa = phi ptr [ %.0464.lcssa, %.preheader307 ], [ %.3467.lcssa, %._crit_edge344 ] ; 4 uses
  %.2458.lcssa = phi ptr [ %.1457.lcssa, %.preheader307 ], [ %i.eo, %._crit_edge344 ] ; 5 uses
  %i.cf = or disjoint i32 %.1519.lcssa, 1
  %i.cg = icmp slt i32 %i.cf, %1
  br i1 %i.cg, label %.lr.ph371, label %.preheader305

.lr.ph371:                                        ; preds = %.preheader306
  br i1 %i.c, label %.lr.ph371.split.us, label %.lr.ph371.split

.lr.ph371.split.us:                               ; preds = %.lr.ph371, %._crit_edge364.us
  %.3459370.us = phi ptr [ %i.da, %._crit_edge364.us ], [ %.2458.lcssa, %.lr.ph371 ] ; 5 uses
  %.4468369.us = phi ptr [ %scevgep909, %._crit_edge364.us ], [ %.2466.lcssa, %.lr.ph371 ] ; 2 uses
  %.2520368.us = phi i32 [ %i.db, %._crit_edge364.us ], [ %.1519.lcssa, %.lr.ph371 ]
  br i1 %.not594, label %.lr.ph363.us.preheader, label %bb.d

bb.d:                                             ; preds = %.lr.ph371.split.us
  %i.ch = load <8 x float>, ptr %.3459370.us, align 32, !tbaa !89
  %i.ci = getelementptr inbounds nuw i8, ptr %.3459370.us, i64 32
  %i.cj = load <8 x float>, ptr %i.ci, align 32, !tbaa !89
  br label %.lr.ph363.us.preheader

.lr.ph363.us.preheader:                           ; preds = %bb.d, %.lr.ph371.split.us
  %.1244358.us.ph = phi <8 x float> [ zeroinitializer, %.lr.ph371.split.us ], [ %i.ch, %bb.d ]
  %.1246357.us.ph = phi <8 x float> [ zeroinitializer, %.lr.ph371.split.us ], [ %i.cj, %bb.d ]
  br label %.lr.ph363.us

.lr.ph363.us:                                     ; preds = %.lr.ph363.us.preheader, %.lr.ph363.us
  %.5469361.us = phi ptr [ %i.cw, %.lr.ph363.us ], [ %.4468369.us, %.lr.ph363.us.preheader ] ; 2 uses
  %.0573360.us = phi i32 [ %i.cx, %.lr.ph363.us ], [ 0, %.lr.ph363.us.preheader ]
  %.0574359.us = phi ptr [ %i.cv, %.lr.ph363.us ], [ %.0454410, %.lr.ph363.us.preheader ] ; 2 uses
  %.1244358.us = phi <8 x float> [ %i.ct, %.lr.ph363.us ], [ %.1244358.us.ph, %.lr.ph363.us.preheader ]
  %.1246357.us = phi <8 x float> [ %i.cu, %.lr.ph363.us ], [ %.1246357.us.ph, %.lr.ph363.us.preheader ]
  %i.ck = load <8 x i16>, ptr %.0574359.us, align 1, !tbaa !89 ; 2 uses
  %8 = shufflevector <8 x i16> %i.ck, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %9 = shufflevector <8 x i16> %i.ck, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.cl = shufflevector <8 x i16> %8, <8 x i16> %9, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cm = bitcast <16 x i16> %i.cl to <8 x float> ; 2 uses
  %i.cn = load float, ptr %.5469361.us, align 1, !tbaa !89
  %i.co = insertelement <4 x float> poison, float %i.cn, i64 0
  %i.cp = bitcast <4 x float> %i.co to <8 x i16>  ; 2 uses
  %10 = shufflevector <8 x i16> %i.cp, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 0, i32 11, i32 1>
  %11 = shufflevector <8 x i16> %i.cp, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 0, i32 13, i32 1, i32 14, i32 0, i32 15, i32 1>
  %i.cq = shufflevector <8 x i16> %10, <8 x i16> %11, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cr = bitcast <16 x i16> %i.cq to <8 x float> ; 2 uses
  %i.cs = shufflevector <8 x float> %i.cr, <8 x float> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %i.ct = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cm, <8 x float> nofpclass(nan inf) %i.cr, <8 x float> nofpclass(nan inf) %.1244358.us) ; 2 uses
  %i.cu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cm, <8 x float> nofpclass(nan inf) %i.cs, <8 x float> nofpclass(nan inf) %.1246357.us) ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.0574359.us, i64 16
  %i.cw = getelementptr inbounds nuw i8, ptr %.5469361.us, i64 4
  %i.cx = add nuw nsw i32 %.0573360.us, 1         ; 2 uses
  %exitcond910.not = icmp eq i32 %i.cx, %3
  br i1 %exitcond910.not, label %._crit_edge364.us, label %.lr.ph363.us, !llvm.loop !1187

._crit_edge364.us:                                ; preds = %.lr.ph363.us
  %i.cy = getelementptr i8, ptr %.4468369.us, i64 %i.l
  %scevgep909 = getelementptr i8, ptr %i.cy, i64 4 ; 2 uses
  store <8 x float> %i.ct, ptr %.3459370.us, align 32, !tbaa !89
  %i.cz = getelementptr inbounds nuw i8, ptr %.3459370.us, i64 32
  store <8 x float> %i.cu, ptr %i.cz, align 32, !tbaa !89
  %i.da = getelementptr inbounds nuw i8, ptr %.3459370.us, i64 64 ; 2 uses
  %i.db = add nuw nsw i32 %.2520368.us, 2         ; 3 uses
  %i.dc = or disjoint i32 %i.db, 1
  %i.dd = icmp slt i32 %i.dc, %1
  br i1 %i.dd, label %.lr.ph371.split.us, label %.preheader305, !llvm.loop !1188

.lr.ph371.split:                                  ; preds = %.lr.ph371
  br i1 %.not594, label %.lr.ph371.split.split.us.preheader, label %.lr.ph371.split.split

.lr.ph371.split.split.us.preheader:               ; preds = %.lr.ph371.split
  %i.de = sub i32 %i.k, %.1519.lcssa              ; 2 uses
  %i.df = lshr i32 %i.de, 1
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = shl nuw nsw i64 %i.dg, 6                ; 2 uses
  %i.di = add nuw nsw i64 %i.dh, 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(1) %.2458.lcssa, i8 0, i64 %i.di, i1 false), !tbaa !89
  %scevgep907 = getelementptr i8, ptr %.2458.lcssa, i64 64
  %scevgep908 = getelementptr i8, ptr %scevgep907, i64 %i.dh
  %i.dj = add i32 %.1519.lcssa, 2
  %i.dk = and i32 %i.de, -2
  %i.dl = add i32 %i.dj, %i.dk
  br label %.preheader305

.lr.ph353:                                        ; preds = %.preheader307, %._crit_edge344
  %.2458352 = phi ptr [ %i.eo, %._crit_edge344 ], [ %.1457.lcssa, %.preheader307 ] ; 9 uses
  %.2466351 = phi ptr [ %.3467.lcssa, %._crit_edge344 ], [ %.0464.lcssa, %.preheader307 ] ; 3 uses
  %.1519350 = phi i32 [ %i.ep, %._crit_edge344 ], [ %.0518.lcssa, %.preheader307 ]
  br i1 %.not594, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph353
  %i.dm = load <8 x float>, ptr %.2458352, align 32, !tbaa !89
  %i.dn = getelementptr inbounds nuw i8, ptr %.2458352, i64 32
  %i.do = load <8 x float>, ptr %i.dn, align 32, !tbaa !89
  %i.dp = getelementptr inbounds nuw i8, ptr %.2458352, i64 64
  %i.dq = load <8 x float>, ptr %i.dp, align 32, !tbaa !89
  %i.dr = getelementptr inbounds nuw i8, ptr %.2458352, i64 96
  %i.ds = load <8 x float>, ptr %i.dr, align 32, !tbaa !89
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph353
  %.0241 = phi nsz <8 x float> [ zeroinitializer, %.lr.ph353 ], [ %i.ds, %bb.e ] ; 2 uses
  %.0239 = phi nsz <8 x float> [ zeroinitializer, %.lr.ph353 ], [ %i.dq, %bb.e ] ; 2 uses
  %.0237 = phi nsz <8 x float> [ zeroinitializer, %.lr.ph353 ], [ %i.do, %bb.e ] ; 2 uses
  %.0235 = phi nsz <8 x float> [ zeroinitializer, %.lr.ph353 ], [ %i.dm, %bb.e ] ; 2 uses
  br i1 %i.c, label %.lr.ph343, label %._crit_edge344

.lr.ph343:                                        ; preds = %bb.f, %.lr.ph343
  %.3467341 = phi ptr [ %i.ei, %.lr.ph343 ], [ %.2466351, %bb.f ] ; 2 uses
  %.0524340 = phi ptr [ %i.eh, %.lr.ph343 ], [ %.0454410, %bb.f ] ; 2 uses
  %.0575339 = phi i32 [ %i.ej, %.lr.ph343 ], [ 0, %bb.f ]
  %.1236338 = phi <8 x float> [ %i.ed, %.lr.ph343 ], [ %.0235, %bb.f ]
  %.1238337 = phi <8 x float> [ %i.ee, %.lr.ph343 ], [ %.0237, %bb.f ]
  %.1240336 = phi <8 x float> [ %i.ef, %.lr.ph343 ], [ %.0239, %bb.f ]
  %.1242335 = phi <8 x float> [ %i.eg, %.lr.ph343 ], [ %.0241, %bb.f ]
  %i.dt = load <8 x i16>, ptr %.0524340, align 1, !tbaa !89 ; 2 uses
  %12 = shufflevector <8 x i16> %i.dt, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %13 = shufflevector <8 x i16> %i.dt, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.du = shufflevector <8 x i16> %12, <8 x i16> %13, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dv = bitcast <16 x i16> %i.du to <8 x float> ; 3 uses
  %i.dw = load i64, ptr %.3467341, align 1, !tbaa !89
  %i.dx = insertelement <2 x i64> poison, i64 %i.dw, i64 0
  %i.dy = bitcast <2 x i64> %i.dx to <8 x i16>
  %14 = shufflevector <8 x i16> %i.dy, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.dz = bitcast <8 x i16> %14 to <4 x float>    ; 2 uses
  %i.ea = shufflevector <4 x float> %i.dz, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.eb = shufflevector <8 x float> %i.dv, <8 x float> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5> ; 2 uses
  %i.ec = shufflevector <4 x float> %i.dz, <4 x float> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.ed = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.dv, <8 x float> nofpclass(nan inf) %i.ea, <8 x float> nofpclass(nan inf) %.1236338) ; 2 uses
  %i.ee = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.dv, <8 x float> nofpclass(nan inf) %i.ec, <8 x float> nofpclass(nan inf) %.1238337) ; 2 uses
  %i.ef = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.eb, <8 x float> nofpclass(nan inf) %i.ea, <8 x float> nofpclass(nan inf) %.1240336) ; 2 uses
  %i.eg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.eb, <8 x float> nofpclass(nan inf) %i.ec, <8 x float> nofpclass(nan inf) %.1242335) ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.0524340, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %.3467341, i64 8
  %i.ej = add nuw nsw i32 %.0575339, 1            ; 2 uses
  %exitcond906.not = icmp eq i32 %i.ej, %3
  br i1 %exitcond906.not, label %._crit_edge344.loopexit, label %.lr.ph343, !llvm.loop !1189

._crit_edge344.loopexit:                          ; preds = %.lr.ph343
  %i.ek = getelementptr i8, ptr %.2466351, i64 %i.j
  %scevgep905 = getelementptr i8, ptr %i.ek, i64 8
  br label %._crit_edge344

._crit_edge344:                                   ; preds = %._crit_edge344.loopexit, %bb.f
  %.1242.lcssa = phi <8 x float> [ %.0241, %bb.f ], [ %i.eg, %._crit_edge344.loopexit ]
  %.1240.lcssa = phi <8 x float> [ %.0239, %bb.f ], [ %i.ef, %._crit_edge344.loopexit ]
  %.1238.lcssa = phi <8 x float> [ %.0237, %bb.f ], [ %i.ee, %._crit_edge344.loopexit ]
  %.1236.lcssa = phi <8 x float> [ %.0235, %bb.f ], [ %i.ed, %._crit_edge344.loopexit ]
  %.3467.lcssa = phi ptr [ %.2466351, %bb.f ], [ %scevgep905, %._crit_edge344.loopexit ] ; 2 uses
  store <8 x float> %.1236.lcssa, ptr %.2458352, align 32, !tbaa !89
  %i.el = getelementptr inbounds nuw i8, ptr %.2458352, i64 32
  store <8 x float> %.1238.lcssa, ptr %i.el, align 32, !tbaa !89
  %i.em = getelementptr inbounds nuw i8, ptr %.2458352, i64 64
  store <8 x float> %.1240.lcssa, ptr %i.em, align 32, !tbaa !89
  %i.en = getelementptr inbounds nuw i8, ptr %.2458352, i64 96
  store <8 x float> %.1242.lcssa, ptr %i.en, align 32, !tbaa !89
  %i.eo = getelementptr inbounds nuw i8, ptr %.2458352, i64 128 ; 2 uses
  %i.ep = add nuw nsw i32 %.1519350, 4            ; 3 uses
  %i.eq = or disjoint i32 %i.ep, 3
  %i.er = icmp slt i32 %i.eq, %1
  br i1 %i.er, label %.lr.ph353, label %.preheader306, !llvm.loop !1190

.preheader305:                                    ; preds = %.lr.ph371.split.split, %._crit_edge364.us, %.lr.ph371.split.split.us.preheader, %.preheader306
  %.2520.lcssa = phi i32 [ %.1519.lcssa, %.preheader306 ], [ %i.dl, %.lr.ph371.split.split.us.preheader ], [ %i.db, %._crit_edge364.us ], [ %i.fs, %.lr.ph371.split.split ] ; 4 uses
  %.4468.lcssa = phi ptr [ %.2466.lcssa, %.preheader306 ], [ %.2466.lcssa, %.lr.ph371.split.split.us.preheader ], [ %scevgep909, %._crit_edge364.us ], [ %.2466.lcssa, %.lr.ph371.split.split ]
  %.3459.lcssa = phi ptr [ %.2458.lcssa, %.preheader306 ], [ %scevgep908, %.lr.ph371.split.split.us.preheader ], [ %i.da, %._crit_edge364.us ], [ %i.fr, %.lr.ph371.split.split ] ; 5 uses
  %i.es = icmp slt i32 %.2520.lcssa, %1
  br i1 %i.es, label %.lr.ph399, label %._crit_edge400

.lr.ph399:                                        ; preds = %.preheader305
  br i1 %i.c, label %.lr.ph399.split.us, label %.lr.ph399.split

.lr.ph399.split.us:                               ; preds = %.lr.ph399, %._crit_edge393.us
  %.4398.us = phi ptr [ %i.fi, %._crit_edge393.us ], [ %.3459.lcssa, %.lr.ph399 ] ; 3 uses
  %.6470397.us = phi ptr [ %scevgep915, %._crit_edge393.us ], [ %.4468.lcssa, %.lr.ph399 ] ; 2 uses
  %.3521396.us = phi i32 [ %i.fj, %._crit_edge393.us ], [ %.2520.lcssa, %.lr.ph399 ]
  br i1 %.not594, label %.lr.ph392.us.preheader, label %bb.g

bb.g:                                             ; preds = %.lr.ph399.split.us
  %i.et = load <8 x float>, ptr %.4398.us, align 32, !tbaa !89
  br label %.lr.ph392.us.preheader

.lr.ph392.us.preheader:                           ; preds = %bb.g, %.lr.ph399.split.us
  %.1248387.us.ph = phi <8 x float> [ zeroinitializer, %.lr.ph399.split.us ], [ %i.et, %bb.g ]
  br label %.lr.ph392.us

.lr.ph392.us:                                     ; preds = %.lr.ph392.us.preheader, %.lr.ph392.us
  %.7471390.us = phi ptr [ %i.ff, %.lr.ph392.us ], [ %.6470397.us, %.lr.ph392.us.preheader ] ; 2 uses
  %.0571389.us = phi i32 [ %i.fg, %.lr.ph392.us ], [ 0, %.lr.ph392.us.preheader ]
  %.0572388.us = phi ptr [ %i.fe, %.lr.ph392.us ], [ %.0454410, %.lr.ph392.us.preheader ] ; 2 uses
  %.1248387.us = phi <8 x float> [ %i.fd, %.lr.ph392.us ], [ %.1248387.us.ph, %.lr.ph392.us.preheader ]
  %i.eu = load <8 x i16>, ptr %.0572388.us, align 1, !tbaa !89 ; 2 uses
  %15 = shufflevector <8 x i16> %i.eu, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %16 = shufflevector <8 x i16> %i.eu, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.ev = shufflevector <8 x i16> %15, <8 x i16> %16, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ew = bitcast <16 x i16> %i.ev to <8 x float>
  %i.ex = load i16, ptr %.7471390.us, align 2, !tbaa !108
  %i.ey = zext i16 %i.ex to i32
  %i.ez = shl nuw i32 %i.ey, 16
  %i.fa = insertelement <8 x i32> poison, i32 %i.ez, i64 0
  %i.fb = bitcast <8 x i32> %i.fa to <8 x float>
  %i.fc = shufflevector <8 x float> %i.fb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ew, <8 x float> nofpclass(nan inf) %i.fc, <8 x float> nofpclass(nan inf) %.1248387.us) ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.0572388.us, i64 16
  %i.ff = getelementptr inbounds nuw i8, ptr %.7471390.us, i64 2
  %i.fg = add nuw nsw i32 %.0571389.us, 1         ; 2 uses
  %exitcond916.not = icmp eq i32 %i.fg, %3
  br i1 %exitcond916.not, label %._crit_edge393.us, label %.lr.ph392.us, !llvm.loop !1191

._crit_edge393.us:                                ; preds = %.lr.ph392.us
  %i.fh = getelementptr i8, ptr %.6470397.us, i64 %i.n
  %scevgep915 = getelementptr i8, ptr %i.fh, i64 2
  store <8 x float> %i.fd, ptr %.4398.us, align 32, !tbaa !89
  %i.fi = getelementptr inbounds nuw i8, ptr %.4398.us, i64 32 ; 2 uses
  %i.fj = add nuw nsw i32 %.3521396.us, 1         ; 2 uses
  %exitcond917.not = icmp eq i32 %i.fj, %1
  br i1 %exitcond917.not, label %._crit_edge400, label %.lr.ph399.split.us, !llvm.loop !1192

.lr.ph399.split:                                  ; preds = %.lr.ph399
  br i1 %.not594, label %.lr.ph399.split.split.us.preheader, label %.lr.ph399.split.split.preheader

.lr.ph399.split.split.preheader:                  ; preds = %.lr.ph399.split
  %scevgep911 = getelementptr i8, ptr %.3459.lcssa, i64 32
  %i.fk = sub i32 %i.m, %.2520.lcssa
  %i.fl = zext i32 %i.fk to i64
  %i.fm = shl nuw nsw i64 %i.fl, 5
  %scevgep912 = getelementptr i8, ptr %scevgep911, i64 %i.fm
  br label %._crit_edge400

.lr.ph399.split.split.us.preheader:               ; preds = %.lr.ph399.split
  %i.fn = sub i32 %i.m, %.2520.lcssa
  %i.fo = zext i32 %i.fn to i64
  %i.fp = shl nuw nsw i64 %i.fo, 5                ; 2 uses
  %i.fq = add nuw nsw i64 %i.fp, 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(1) %.3459.lcssa, i8 0, i64 %i.fq, i1 false), !tbaa !89
  %scevgep913 = getelementptr i8, ptr %.3459.lcssa, i64 32
  %scevgep914 = getelementptr i8, ptr %scevgep913, i64 %i.fp
  br label %._crit_edge400

.lr.ph371.split.split:                            ; preds = %.lr.ph371.split, %.lr.ph371.split.split
  %.3459370 = phi ptr [ %i.fr, %.lr.ph371.split.split ], [ %.2458.lcssa, %.lr.ph371.split ]
  %.2520368 = phi i32 [ %i.fs, %.lr.ph371.split.split ], [ %.1519.lcssa, %.lr.ph371.split ]
  %i.fr = getelementptr inbounds nuw i8, ptr %.3459370, i64 64 ; 2 uses
  %i.fs = add nuw nsw i32 %.2520368, 2            ; 3 uses
  %i.ft = or disjoint i32 %i.fs, 1
  %i.fu = icmp slt i32 %i.ft, %1
  br i1 %i.fu, label %.lr.ph371.split.split, label %.preheader305, !llvm.loop !1188

._crit_edge400:                                   ; preds = %._crit_edge393.us, %.lr.ph399.split.split.preheader, %.lr.ph399.split.split.us.preheader, %.preheader305
  %.4.lcssa = phi ptr [ %.3459.lcssa, %.preheader305 ], [ %scevgep914, %.lr.ph399.split.split.us.preheader ], [ %scevgep912, %.lr.ph399.split.split.preheader ], [ %i.fi, %._crit_edge393.us ] ; 2 uses
  %i.fv = getelementptr inbounds [2 x i8], ptr %.0454410, i64 %i.e ; 2 uses
  %i.fw = add nuw nsw i32 %.0460408, 8            ; 2 uses
  %i.fx = or disjoint i32 %i.fw, 7
  %i.fy = icmp slt i32 %i.fx, %0
  br i1 %i.fy, label %.preheader308, label %.preheader304.loopexit, !llvm.loop !1193

.preheader303:                                    ; preds = %.preheader303.lr.ph, %._crit_edge503
  %.1455513 = phi ptr [ %.0454.lcssa, %.preheader303.lr.ph ], [ %i.nx, %._crit_edge503 ] ; 7 uses
  %.5512 = phi ptr [ %.0456.lcssa, %.preheader303.lr.ph ], [ %.9.lcssa, %._crit_edge503 ] ; 2 uses
  %.1461511 = phi i32 [ %.0460.lcssa, %.preheader303.lr.ph ], [ %i.ny, %._crit_edge503 ]
  br i1 %i.r, label %.lr.ph433, label %.preheader302

.preheader299:                                    ; preds = %._crit_edge503, %.preheader304
  %.1461.lcssa = phi i32 [ %.0460.lcssa, %.preheader304 ], [ %i.ny, %._crit_edge503 ] ; 3 uses
  %.5.lcssa = phi ptr [ %.0456.lcssa, %.preheader304 ], [ %.9.lcssa, %._crit_edge503 ] ; 2 uses
  %.1455.lcssa = phi ptr [ %.0454.lcssa, %.preheader304 ], [ %i.nx, %._crit_edge503 ] ; 2 uses
  %i.fz = or disjoint i32 %.1461.lcssa, 1
  %i.ga = icmp slt i32 %i.fz, %0
  br i1 %i.ga, label %.preheader298.lr.ph, label %.preheader294

.preheader298.lr.ph:                              ; preds = %.preheader299
  %i.gb = icmp sgt i32 %1, 7
  %.not586 = icmp eq i32 %2, 0                    ; 5 uses
  %i.gc = icmp sgt i32 %3, 0                      ; 4 uses
  %i.gd = shl nsw i32 %3, 1
  %i.ge = sext i32 %i.gd to i64
  %i.gf = add i32 %1, -8                          ; 2 uses
  %i.gg = and i32 %i.gf, -8
  %i.gh = add nuw i32 %i.gg, 8                    ; 4 uses
  %i.gi = lshr i32 %i.gf, 3
  %i.gj = zext nneg i32 %i.gi to i64
  %i.gk = shl nuw nsw i64 %i.gj, 6
  %i.gl = add nuw nsw i64 %i.gk, 64               ; 2 uses
  %i.gm = add i32 %3, -1
  %i.gn = zext i32 %i.gm to i64                   ; 4 uses
  %i.go = shl nuw nsw i64 %i.gn, 4
  %i.gp = shl nuw nsw i64 %i.gn, 3
  %i.gq = shl nuw nsw i64 %i.gn, 2
  %i.gr = shl nuw nsw i64 %i.gn, 1
  %i.gs = add i32 %1, -8                          ; 2 uses
  %i.gt = lshr i32 %i.gs, 3
  %i.gu = add nuw nsw i32 %i.gt, 1                ; 2 uses
  %xtraiter453 = and i32 %i.gu, 7                 ; 3 uses
  %i.gv = icmp ult i32 %i.gs, 56
  %unroll_iter457 = and i32 %i.gu, 1073741816
  %lcmp.mod454.not = icmp eq i32 %xtraiter453, 0
  %lcmp.mod456 = icmp ne i32 %xtraiter453, 0
  %xtraiter459 = and i32 %3, 1
  %i.gw = icmp eq i32 %3, 1
  %unroll_iter465 = and i32 %3, 2147483646
  %lcmp.mod461.not = icmp eq i32 %xtraiter459, 0
  %lcmp.mod464 = trunc i32 %3 to i1
  %i.gx = zext nneg i32 %3 to i64                 ; 2 uses
  %min.iters.check122 = icmp ult i32 %3, 4
  %n.vec124 = and i64 %i.gx, 2147483644           ; 4 uses
  %i.gy = trunc nuw nsw i64 %n.vec124 to i32
  %i.gz = shl nuw nsw i64 %n.vec124, 2            ; 2 uses
  %cmp.n141 = icmp eq i64 %n.vec124, %i.gx
  %i.ha = zext nneg i32 %3 to i64                 ; 2 uses
  %min.iters.check = icmp ult i32 %3, 8
  %n.vec = and i64 %i.ha, 2147483640              ; 5 uses
  %i.hb = trunc nuw nsw i64 %n.vec to i32
  %i.hc = shl nuw nsw i64 %n.vec, 2
  %i.hd = shl nuw nsw i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %i.ha
  br label %.preheader298

.preheader302:                                    ; preds = %._crit_edge424, %.preheader303
  %.0563.lcssa = phi ptr [ %.0.val1, %.preheader303 ], [ %.1564.lcssa, %._crit_edge424 ] ; 2 uses
  %.0559.lcssa = phi i32 [ 0, %.preheader303 ], [ %i.y, %._crit_edge424 ] ; 3 uses
  %.6.lcssa = phi ptr [ %.5512, %.preheader303 ], [ %i.ii, %._crit_edge424 ] ; 2 uses
  %i.he = or disjoint i32 %.0559.lcssa, 3
  %i.hf = icmp slt i32 %i.he, %1
  br i1 %i.hf, label %.lr.ph455, label %.preheader301

.lr.ph433:                                        ; preds = %.preheader303, %._crit_edge424
  %.6432 = phi ptr [ %i.ii, %._crit_edge424 ], [ %.5512, %.preheader303 ] ; 9 uses
  %.0559431 = phi i32 [ %i.ij, %._crit_edge424 ], [ 0, %.preheader303 ]
  %.0563430 = phi ptr [ %.1564.lcssa, %._crit_edge424 ], [ %.0.val1, %.preheader303 ] ; 3 uses
  br i1 %.not590, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph433
  %i.hg = load <8 x float>, ptr %.6432, align 32, !tbaa !89
  %i.hh = getelementptr inbounds nuw i8, ptr %.6432, i64 32
  %i.hi = load <8 x float>, ptr %i.hh, align 32, !tbaa !89
  %i.hj = getelementptr inbounds nuw i8, ptr %.6432, i64 64
  %i.hk = load <8 x float>, ptr %i.hj, align 32, !tbaa !89
  %i.hl = getelementptr inbounds nuw i8, ptr %.6432, i64 96
  %i.hm = load <8 x float>, ptr %i.hl, align 32, !tbaa !89
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph433
  %.0261 = phi nsz <8 x float> [ zeroinitializer, %.lr.ph433 ], [ %i.hm, %bb.h ] ; 2 uses
  %.0259 = phi nsz <8 x float> [ zeroinitializer, %.lr.ph433 ], [ %i.hk, %bb.h ] ; 2 uses
  %.0257 = phi nsz <8 x float> [ zeroinitializer, %.lr.ph433 ], [ %i.hi, %bb.h ] ; 2 uses
  %.0255 = phi nsz <8 x float> [ zeroinitializer, %.lr.ph433 ], [ %i.hg, %bb.h ] ; 2 uses
  br i1 %i.s, label %.lr.ph423, label %._crit_edge424

.lr.ph423:                                        ; preds = %bb.i, %.lr.ph423
  %.0557421 = phi i32 [ %i.id, %.lr.ph423 ], [ 0, %bb.i ]
  %.0558420 = phi ptr [ %i.ib, %.lr.ph423 ], [ %.1455513, %bb.i ] ; 2 uses
  %.1564419 = phi ptr [ %i.ic, %.lr.ph423 ], [ %.0563430, %bb.i ] ; 2 uses
  %.1256418 = phi <8 x float> [ %i.hx, %.lr.ph423 ], [ %.0255, %bb.i ]
  %.1258417 = phi <8 x float> [ %i.hy, %.lr.ph423 ], [ %.0257, %bb.i ]
  %.1260416 = phi <8 x float> [ %i.hz, %.lr.ph423 ], [ %.0259, %bb.i ]
  %.1262415 = phi <8 x float> [ %i.ia, %.lr.ph423 ], [ %.0261, %bb.i ]
  %i.hn = load i64, ptr %.0558420, align 1, !tbaa !89
  %i.ho = insertelement <2 x i64> poison, i64 %i.hn, i64 0
  %i.hp = bitcast <2 x i64> %i.ho to <8 x i16>
  %17 = shufflevector <8 x i16> %i.hp, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.hq = bitcast <8 x i16> %17 to <4 x float>    ; 2 uses
  %i.hr = shufflevector <4 x float> %i.hq, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.hs = load <8 x i16>, ptr %.1564419, align 1, !tbaa !89 ; 2 uses
  %18 = shufflevector <8 x i16> %i.hs, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %19 = shufflevector <8 x i16> %i.hs, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.ht = shufflevector <8 x i16> %18, <8 x i16> %19, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.hu = bitcast <16 x i16> %i.ht to <8 x float> ; 3 uses
  %i.hv = shufflevector <4 x float> %i.hq, <4 x float> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.hw = shufflevector <8 x float> %i.hu, <8 x float> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4> ; 2 uses
  %i.hx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hr, <8 x float> nofpclass(nan inf) %i.hu, <8 x float> nofpclass(nan inf) %.1256418) ; 2 uses
  %i.hy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hv, <8 x float> nofpclass(nan inf) %i.hu, <8 x float> nofpclass(nan inf) %.1258417) ; 2 uses
  %i.hz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hr, <8 x float> nofpclass(nan inf) %i.hw, <8 x float> nofpclass(nan inf) %.1260416) ; 2 uses
  %i.ia = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hv, <8 x float> nofpclass(nan inf) %i.hw, <8 x float> nofpclass(nan inf) %.1262415) ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.0558420, i64 8
  %i.ic = getelementptr inbounds nuw i8, ptr %.1564419, i64 16
  %i.id = add nuw nsw i32 %.0557421, 1            ; 2 uses
  %exitcond919.not = icmp eq i32 %i.id, %3
  br i1 %exitcond919.not, label %._crit_edge424.loopexit, label %.lr.ph423, !llvm.loop !1194

._crit_edge424.loopexit:                          ; preds = %.lr.ph423
  %i.ie = getelementptr i8, ptr %.0563430, i64 %i.x
  %scevgep918 = getelementptr i8, ptr %i.ie, i64 16
  br label %._crit_edge424

._crit_edge424:                                   ; preds = %._crit_edge424.loopexit, %bb.i
  %.1262.lcssa = phi <8 x float> [ %.0261, %bb.i ], [ %i.ia, %._crit_edge424.loopexit ]
  %.1260.lcssa = phi <8 x float> [ %.0259, %bb.i ], [ %i.hz, %._crit_edge424.loopexit ]
  %.1258.lcssa = phi <8 x float> [ %.0257, %bb.i ], [ %i.hy, %._crit_edge424.loopexit ]
  %.1256.lcssa = phi <8 x float> [ %.0255, %bb.i ], [ %i.hx, %._crit_edge424.loopexit ]
  %.1564.lcssa = phi ptr [ %.0563430, %bb.i ], [ %scevgep918, %._crit_edge424.loopexit ] ; 2 uses
  store <8 x float> %.1256.lcssa, ptr %.6432, align 32, !tbaa !89
  %i.if = getelementptr inbounds nuw i8, ptr %.6432, i64 32
  store <8 x float> %.1258.lcssa, ptr %i.if, align 32, !tbaa !89
  %i.ig = getelementptr inbounds nuw i8, ptr %.6432, i64 64
  store <8 x float> %.1260.lcssa, ptr %i.ig, align 32, !tbaa !89
  %i.ih = getelementptr inbounds nuw i8, ptr %.6432, i64 96
  store <8 x float> %.1262.lcssa, ptr %i.ih, align 32, !tbaa !89
  %i.ii = getelementptr inbounds nuw i8, ptr %.6432, i64 128 ; 2 uses
  %i.ij = add nuw nsw i32 %.0559431, 8            ; 2 uses
  %i.ik = or disjoint i32 %i.ij, 7
  %i.il = icmp slt i32 %i.ik, %1
  br i1 %i.il, label %.lr.ph433, label %.preheader302, !llvm.loop !1195

.preheader301:                                    ; preds = %._crit_edge446, %.preheader302
  %.2565.lcssa = phi ptr [ %.0563.lcssa, %.preheader302 ], [ %.3566.lcssa, %._crit_edge446 ] ; 4 uses
  %.1560.lcssa = phi i32 [ %.0559.lcssa, %.preheader302 ], [ %i.lt, %._crit_edge446 ] ; 6 uses
  %.7.lcssa = phi ptr [ %.6.lcssa, %.preheader302 ], [ %i.ls, %._crit_edge446 ] ; 5 uses
  %i.im = or disjoint i32 %.1560.lcssa, 1
  %i.in = icmp slt i32 %i.im, %1
  br i1 %i.in, label %.lr.ph473, label %.preheader300

.lr.ph473:                                        ; preds = %.preheader301
  br i1 %i.s, label %.lr.ph473.split.us, label %.lr.ph473.split

.lr.ph473.split.us:                               ; preds = %.lr.ph473, %._crit_edge466.us
  %.8472.us = phi ptr [ %i.ke, %._crit_edge466.us ], [ %.7.lcssa, %.lr.ph473 ] ; 5 uses
  %.2561471.us = phi i32 [ %i.kf, %._crit_edge466.us ], [ %.1560.lcssa, %.lr.ph473 ]
  %.4567470.us = phi ptr [ %scevgep924, %._crit_edge466.us ], [ %.2565.lcssa, %.lr.ph473 ] ; 3 uses
  br i1 %.not590, label %.lr.ph465.us.preheader, label %bb.j

bb.j:                                             ; preds = %.lr.ph473.split.us
  %i.io = load <4 x float>, ptr %.8472.us, align 16, !tbaa !89
  %i.ip = getelementptr inbounds nuw i8, ptr %.8472.us, i64 16
  %i.iq = load <4 x float>, ptr %i.ip, align 16, !tbaa !89
  br label %.lr.ph465.us.preheader

.lr.ph465.us.preheader:                           ; preds = %bb.j, %.lr.ph473.split.us
  %.1272460.us.ph = phi <4 x float> [ zeroinitializer, %.lr.ph473.split.us ], [ %i.io, %bb.j ] ; 2 uses
  %.1274459.us.ph = phi <4 x float> [ zeroinitializer, %.lr.ph473.split.us ], [ %i.iq, %bb.j ] ; 2 uses
  br i1 %i.af, label %.lr.ph465.us.epil.preheader, label %.lr.ph465.us

.lr.ph465.us:                                     ; preds = %.lr.ph465.us.preheader, %.lr.ph465.us
  %.0554462.us = phi ptr [ %i.jp, %.lr.ph465.us ], [ %.1455513, %.lr.ph465.us.preheader ] ; 3 uses
  %.5568461.us = phi ptr [ %i.jq, %.lr.ph465.us ], [ %.4567470.us, %.lr.ph465.us.preheader ] ; 3 uses
  %.1272460.us = phi <4 x float> [ %i.jn, %.lr.ph465.us ], [ %.1272460.us.ph, %.lr.ph465.us.preheader ]
  %.1274459.us = phi <4 x float> [ %i.jo, %.lr.ph465.us ], [ %.1274459.us.ph, %.lr.ph465.us.preheader ]
  %niter = phi i32 [ %niter.next.1, %.lr.ph465.us ], [ 0, %.lr.ph465.us.preheader ]
  %i.ir = load i64, ptr %.0554462.us, align 1, !tbaa !89
  %i.is = insertelement <2 x i64> poison, i64 %i.ir, i64 0
  %i.it = bitcast <2 x i64> %i.is to <8 x i16>
  %20 = shufflevector <8 x i16> %i.it, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.iu = bitcast <8 x i16> %20 to <4 x float>    ; 2 uses
  %i.iv = load float, ptr %.5568461.us, align 1, !tbaa !89
  %i.iw = insertelement <4 x float> poison, float %i.iv, i64 0
  %i.ix = bitcast <4 x float> %i.iw to <8 x i16>
  %21 = shufflevector <8 x i16> %i.ix, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 0, i32 11, i32 1>
  %i.iy = bitcast <8 x i16> %21 to <4 x float>    ; 2 uses
  %i.iz = shufflevector <4 x float> %i.iy, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.ja = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.iu, <4 x float> nofpclass(nan inf) %i.iy, <4 x float> nofpclass(nan inf) %.1272460.us)
  %i.jb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.iu, <4 x float> nofpclass(nan inf) %i.iz, <4 x float> nofpclass(nan inf) %.1274459.us)
  %i.jc = getelementptr inbounds nuw i8, ptr %.0554462.us, i64 8
  %i.jd = getelementptr inbounds nuw i8, ptr %.5568461.us, i64 4
  %i.je = load i64, ptr %i.jc, align 1, !tbaa !89
  %i.jf = insertelement <2 x i64> poison, i64 %i.je, i64 0
  %i.jg = bitcast <2 x i64> %i.jf to <8 x i16>
  %22 = shufflevector <8 x i16> %i.jg, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.jh = bitcast <8 x i16> %22 to <4 x float>    ; 2 uses
  %i.ji = load float, ptr %i.jd, align 1, !tbaa !89
  %i.jj = insertelement <4 x float> poison, float %i.ji, i64 0
  %i.jk = bitcast <4 x float> %i.jj to <8 x i16>
  %23 = shufflevector <8 x i16> %i.jk, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 0, i32 11, i32 1>
  %i.jl = bitcast <8 x i16> %23 to <4 x float>    ; 2 uses
  %i.jm = shufflevector <4 x float> %i.jl, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.jn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jh, <4 x float> nofpclass(nan inf) %i.jl, <4 x float> nofpclass(nan inf) %i.ja) ; 3 uses
  %i.jo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jh, <4 x float> nofpclass(nan inf) %i.jm, <4 x float> nofpclass(nan inf) %i.jb) ; 3 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.0554462.us, i64 16 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.5568461.us, i64 8 ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge466.us.unr-lcssa, label %.lr.ph465.us, !llvm.loop !1196

._crit_edge466.us.unr-lcssa:                      ; preds = %.lr.ph465.us
  br i1 %lcmp.mod.not, label %._crit_edge466.us, label %.lr.ph465.us.epil.preheader

.lr.ph465.us.epil.preheader:                      ; preds = %._crit_edge466.us.unr-lcssa, %.lr.ph465.us.preheader
  %.0554462.us.epil.init = phi ptr [ %.1455513, %.lr.ph465.us.preheader ], [ %i.jp, %._crit_edge466.us.unr-lcssa ]
  %.5568461.us.epil.init = phi ptr [ %.4567470.us, %.lr.ph465.us.preheader ], [ %i.jq, %._crit_edge466.us.unr-lcssa ]
  %.1272460.us.epil.init = phi <4 x float> [ %.1272460.us.ph, %.lr.ph465.us.preheader ], [ %i.jn, %._crit_edge466.us.unr-lcssa ]
  %.1274459.us.epil.init = phi <4 x float> [ %.1274459.us.ph, %.lr.ph465.us.preheader ], [ %i.jo, %._crit_edge466.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod446)
  %i.jr = load i64, ptr %.0554462.us.epil.init, align 1, !tbaa !89
  %i.js = insertelement <2 x i64> poison, i64 %i.jr, i64 0
  %i.jt = bitcast <2 x i64> %i.js to <8 x i16>
  %24 = shufflevector <8 x i16> %i.jt, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.ju = bitcast <8 x i16> %24 to <4 x float>    ; 2 uses
  %i.jv = load float, ptr %.5568461.us.epil.init, align 1, !tbaa !89
  %i.jw = insertelement <4 x float> poison, float %i.jv, i64 0
  %i.jx = bitcast <4 x float> %i.jw to <8 x i16>
  %25 = shufflevector <8 x i16> %i.jx, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 0, i32 11, i32 1>
  %i.jy = bitcast <8 x i16> %25 to <4 x float>    ; 2 uses
  %i.jz = shufflevector <4 x float> %i.jy, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.ka = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ju, <4 x float> nofpclass(nan inf) %i.jy, <4 x float> nofpclass(nan inf) %.1272460.us.epil.init)
  %i.kb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ju, <4 x float> nofpclass(nan inf) %i.jz, <4 x float> nofpclass(nan inf) %.1274459.us.epil.init)
  br label %._crit_edge466.us

._crit_edge466.us:                                ; preds = %._crit_edge466.us.unr-lcssa, %.lr.ph465.us.epil.preheader
  %.lcssa412 = phi <4 x float> [ %i.jn, %._crit_edge466.us.unr-lcssa ], [ %i.ka, %.lr.ph465.us.epil.preheader ]
  %.lcssa411 = phi <4 x float> [ %i.jo, %._crit_edge466.us.unr-lcssa ], [ %i.kb, %.lr.ph465.us.epil.preheader ]
  %i.kc = getelementptr i8, ptr %.4567470.us, i64 %i.ab
  %scevgep924 = getelementptr i8, ptr %i.kc, i64 4 ; 2 uses
  store <4 x float> %.lcssa412, ptr %.8472.us, align 16, !tbaa !89
  %i.kd = getelementptr inbounds nuw i8, ptr %.8472.us, i64 16
  store <4 x float> %.lcssa411, ptr %i.kd, align 16, !tbaa !89
  %i.ke = getelementptr inbounds nuw i8, ptr %.8472.us, i64 32 ; 2 uses
  %i.kf = add nuw nsw i32 %.2561471.us, 2         ; 3 uses
  %i.kg = or disjoint i32 %i.kf, 1
  %i.kh = icmp slt i32 %i.kg, %1
  br i1 %i.kh, label %.lr.ph473.split.us, label %.preheader300, !llvm.loop !1197

.lr.ph473.split:                                  ; preds = %.lr.ph473
  br i1 %.not590, label %.lr.ph473.split.split.us.preheader, label %.lr.ph473.split.split

.lr.ph473.split.split.us.preheader:               ; preds = %.lr.ph473.split
  %i.ki = sub i32 %i.aa, %.1560.lcssa             ; 2 uses
  %i.kj = lshr i32 %i.ki, 1
  %i.kk = zext nneg i32 %i.kj to i64
  %i.kl = shl nuw nsw i64 %i.kk, 5                ; 2 uses
  %i.km = add nuw nsw i64 %i.kl, 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %.7.lcssa, i8 0, i64 %i.km, i1 false), !tbaa !89
  %scevgep922 = getelementptr i8, ptr %.7.lcssa, i64 32
  %scevgep923 = getelementptr i8, ptr %scevgep922, i64 %i.kl
  %i.kn = add i32 %.1560.lcssa, 2
  %i.ko = and i32 %i.ki, -2
  %i.kp = add i32 %i.kn, %i.ko
  br label %.preheader300

.lr.ph455:                                        ; preds = %.preheader302, %._crit_edge446
  %.7454 = phi ptr [ %i.ls, %._crit_edge446 ], [ %.6.lcssa, %.preheader302 ] ; 9 uses
  %.1560453 = phi i32 [ %i.lt, %._crit_edge446 ], [ %.0559.lcssa, %.preheader302 ]
  %.2565452 = phi ptr [ %.3566.lcssa, %._crit_edge446 ], [ %.0563.lcssa, %.preheader302 ] ; 3 uses
  br i1 %.not590, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph455
  %i.kq = load <4 x float>, ptr %.7454, align 16, !tbaa !89
  %i.kr = getelementptr inbounds nuw i8, ptr %.7454, i64 16
  %i.ks = load <4 x float>, ptr %i.kr, align 16, !tbaa !89
  %i.kt = getelementptr inbounds nuw i8, ptr %.7454, i64 32
  %i.ku = load <4 x float>, ptr %i.kt, align 16, !tbaa !89
  %i.kv = getelementptr inbounds nuw i8, ptr %.7454, i64 48
  %i.kw = load <4 x float>, ptr %i.kv, align 16, !tbaa !89
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph455
  %.0269 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph455 ], [ %i.kw, %bb.k ] ; 2 uses
  %.0267 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph455 ], [ %i.ku, %bb.k ] ; 2 uses
  %.0265 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph455 ], [ %i.ks, %bb.k ] ; 2 uses
  %.0263 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph455 ], [ %i.kq, %bb.k ] ; 2 uses
  br i1 %i.s, label %.lr.ph445, label %._crit_edge446

.lr.ph445:                                        ; preds = %bb.l, %.lr.ph445
  %.0555443 = phi i32 [ %i.ln, %.lr.ph445 ], [ 0, %bb.l ]
  %.0556442 = phi ptr [ %i.ll, %.lr.ph445 ], [ %.1455513, %bb.l ] ; 2 uses
  %.3566441 = phi ptr [ %i.lm, %.lr.ph445 ], [ %.2565452, %bb.l ] ; 2 uses
  %.1264440 = phi <4 x float> [ %i.lh, %.lr.ph445 ], [ %.0263, %bb.l ]
  %.1266439 = phi <4 x float> [ %i.li, %.lr.ph445 ], [ %.0265, %bb.l ]
  %.1268438 = phi <4 x float> [ %i.lj, %.lr.ph445 ], [ %.0267, %bb.l ]
  %.1270437 = phi <4 x float> [ %i.lk, %.lr.ph445 ], [ %.0269, %bb.l ]
  %i.kx = load i64, ptr %.0556442, align 1, !tbaa !89
  %i.ky = insertelement <2 x i64> poison, i64 %i.kx, i64 0
  %i.kz = bitcast <2 x i64> %i.ky to <8 x i16>
  %26 = shufflevector <8 x i16> %i.kz, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.la = bitcast <8 x i16> %26 to <4 x float>    ; 3 uses
  %i.lb = load i64, ptr %.3566441, align 1, !tbaa !89
  %i.lc = insertelement <2 x i64> poison, i64 %i.lb, i64 0
  %i.ld = bitcast <2 x i64> %i.lc to <8 x i16>
  %27 = shufflevector <8 x i16> %i.ld, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.le = bitcast <8 x i16> %27 to <4 x float>    ; 3 uses
  %i.lf = shufflevector <4 x float> %i.la, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.lg = shufflevector <4 x float> %i.le, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.lh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.la, <4 x float> nofpclass(nan inf) %i.le, <4 x float> nofpclass(nan inf) %.1264440) ; 2 uses
  %i.li = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.la, <4 x float> nofpclass(nan inf) %i.lg, <4 x float> nofpclass(nan inf) %.1266439) ; 2 uses
  %i.lj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lf, <4 x float> nofpclass(nan inf) %i.le, <4 x float> nofpclass(nan inf) %.1268438) ; 2 uses
  %i.lk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lf, <4 x float> nofpclass(nan inf) %i.lg, <4 x float> nofpclass(nan inf) %.1270437) ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %.0556442, i64 8
  %i.lm = getelementptr inbounds nuw i8, ptr %.3566441, i64 8
  %i.ln = add nuw nsw i32 %.0555443, 1            ; 2 uses
  %exitcond921.not = icmp eq i32 %i.ln, %3
  br i1 %exitcond921.not, label %._crit_edge446.loopexit, label %.lr.ph445, !llvm.loop !1198

._crit_edge446.loopexit:                          ; preds = %.lr.ph445
  %i.lo = getelementptr i8, ptr %.2565452, i64 %i.z
  %scevgep920 = getelementptr i8, ptr %i.lo, i64 8
  br label %._crit_edge446

._crit_edge446:                                   ; preds = %._crit_edge446.loopexit, %bb.l
  %.1270.lcssa = phi <4 x float> [ %.0269, %bb.l ], [ %i.lk, %._crit_edge446.loopexit ]
  %.1268.lcssa = phi <4 x float> [ %.0267, %bb.l ], [ %i.lj, %._crit_edge446.loopexit ]
  %.1266.lcssa = phi <4 x float> [ %.0265, %bb.l ], [ %i.li, %._crit_edge446.loopexit ]
  %.1264.lcssa = phi <4 x float> [ %.0263, %bb.l ], [ %i.lh, %._crit_edge446.loopexit ]
  %.3566.lcssa = phi ptr [ %.2565452, %bb.l ], [ %scevgep920, %._crit_edge446.loopexit ] ; 2 uses
  store <4 x float> %.1264.lcssa, ptr %.7454, align 16, !tbaa !89
  %i.lp = getelementptr inbounds nuw i8, ptr %.7454, i64 16
  store <4 x float> %.1266.lcssa, ptr %i.lp, align 16, !tbaa !89
  %i.lq = getelementptr inbounds nuw i8, ptr %.7454, i64 32
  store <4 x float> %.1268.lcssa, ptr %i.lq, align 16, !tbaa !89
  %i.lr = getelementptr inbounds nuw i8, ptr %.7454, i64 48
  store <4 x float> %.1270.lcssa, ptr %i.lr, align 16, !tbaa !89
  %i.ls = getelementptr inbounds nuw i8, ptr %.7454, i64 64 ; 2 uses
  %i.lt = add nuw nsw i32 %.1560453, 4            ; 3 uses
  %i.lu = or disjoint i32 %i.lt, 3
  %i.lv = icmp slt i32 %i.lu, %1
  br i1 %i.lv, label %.lr.ph455, label %.preheader301, !llvm.loop !1199

.preheader300:                                    ; preds = %.lr.ph473.split.split, %._crit_edge466.us, %.lr.ph473.split.split.us.preheader, %.preheader301
  %.4567.lcssa = phi ptr [ %.2565.lcssa, %.preheader301 ], [ %scevgep924, %._crit_edge466.us ], [ %.2565.lcssa, %.lr.ph473.split.split.us.preheader ], [ %.2565.lcssa, %.lr.ph473.split.split ]
  %.2561.lcssa = phi i32 [ %.1560.lcssa, %.preheader301 ], [ %i.kf, %._crit_edge466.us ], [ %i.kp, %.lr.ph473.split.split.us.preheader ], [ %i.nu, %.lr.ph473.split.split ] ; 4 uses
  %.8.lcssa = phi ptr [ %.7.lcssa, %.preheader301 ], [ %i.ke, %._crit_edge466.us ], [ %scevgep923, %.lr.ph473.split.split.us.preheader ], [ %i.nt, %.lr.ph473.split.split ] ; 5 uses
  %i.lw = icmp slt i32 %.2561.lcssa, %1
  br i1 %i.lw, label %.lr.ph502, label %._crit_edge503

.lr.ph502:                                        ; preds = %.preheader300
  br i1 %i.s, label %.lr.ph502.split.us, label %.lr.ph502.split

.lr.ph502.split.us:                               ; preds = %.lr.ph502, %._crit_edge496.us
  %.9501.us = phi ptr [ %i.nk, %._crit_edge496.us ], [ %.8.lcssa, %.lr.ph502 ] ; 3 uses
  %.3562500.us = phi i32 [ %i.nl, %._crit_edge496.us ], [ %.2561.lcssa, %.lr.ph502 ]
  %.6569499.us = phi ptr [ %scevgep930, %._crit_edge496.us ], [ %.4567.lcssa, %.lr.ph502 ] ; 3 uses
  br i1 %.not590, label %.lr.ph495.us.preheader, label %bb.m

bb.m:                                             ; preds = %.lr.ph502.split.us
  %i.lx = load <4 x float>, ptr %.9501.us, align 16, !tbaa !89
  br label %.lr.ph495.us.preheader

.lr.ph495.us.preheader:                           ; preds = %bb.m, %.lr.ph502.split.us
  %.1276490.us.ph = phi <4 x float> [ zeroinitializer, %.lr.ph502.split.us ], [ %i.lx, %bb.m ] ; 2 uses
  br i1 %i.ag, label %.lr.ph495.us.epil.preheader, label %.lr.ph495.us

.lr.ph495.us:                                     ; preds = %.lr.ph495.us.preheader, %.lr.ph495.us
  %.0552492.us = phi ptr [ %i.mw, %.lr.ph495.us ], [ %.1455513, %.lr.ph495.us.preheader ] ; 3 uses
  %.7570491.us = phi ptr [ %i.mx, %.lr.ph495.us ], [ %.6569499.us, %.lr.ph495.us.preheader ] ; 3 uses
  %.1276490.us = phi <4 x float> [ %i.mv, %.lr.ph495.us ], [ %.1276490.us.ph, %.lr.ph495.us.preheader ]
  %niter452 = phi i32 [ %niter452.next.1, %.lr.ph495.us ], [ 0, %.lr.ph495.us.preheader ]
  %i.ly = load i64, ptr %.0552492.us, align 1, !tbaa !89
  %i.lz = insertelement <2 x i64> poison, i64 %i.ly, i64 0
  %i.ma = bitcast <2 x i64> %i.lz to <8 x i16>
  %28 = shufflevector <8 x i16> %i.ma, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.mb = bitcast <8 x i16> %28 to <4 x float>
  %i.mc = load i16, ptr %.7570491.us, align 2, !tbaa !108
  %i.md = zext i16 %i.mc to i32
  %i.me = shl nuw i32 %i.md, 16
  %i.mf = insertelement <4 x i32> poison, i32 %i.me, i64 0
  %i.mg = bitcast <4 x i32> %i.mf to <4 x float>
  %i.mh = shufflevector <4 x float> %i.mg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mi = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mb, <4 x float> nofpclass(nan inf) %i.mh, <4 x float> nofpclass(nan inf) %.1276490.us)
  %i.mj = getelementptr inbounds nuw i8, ptr %.0552492.us, i64 8
  %i.mk = getelementptr inbounds nuw i8, ptr %.7570491.us, i64 2
  %i.ml = load i64, ptr %i.mj, align 1, !tbaa !89
  %i.mm = insertelement <2 x i64> poison, i64 %i.ml, i64 0
  %i.mn = bitcast <2 x i64> %i.mm to <8 x i16>
  %29 = shufflevector <8 x i16> %i.mn, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.mo = bitcast <8 x i16> %29 to <4 x float>
  %i.mp = load i16, ptr %i.mk, align 2, !tbaa !108
  %i.mq = zext i16 %i.mp to i32
  %i.mr = shl nuw i32 %i.mq, 16
  %i.ms = insertelement <4 x i32> poison, i32 %i.mr, i64 0
  %i.mt = bitcast <4 x i32> %i.ms to <4 x float>
  %i.mu = shufflevector <4 x float> %i.mt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mo, <4 x float> nofpclass(nan inf) %i.mu, <4 x float> nofpclass(nan inf) %i.mi) ; 3 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %.0552492.us, i64 16 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %.7570491.us, i64 4 ; 2 uses
  %niter452.next.1 = add nuw nsw i32 %niter452, 2 ; 2 uses
  %niter452.ncmp.1 = icmp eq i32 %niter452.next.1, %unroll_iter451
  br i1 %niter452.ncmp.1, label %._crit_edge496.us.unr-lcssa, label %.lr.ph495.us, !llvm.loop !1200

._crit_edge496.us.unr-lcssa:                      ; preds = %.lr.ph495.us
  br i1 %lcmp.mod448.not, label %._crit_edge496.us, label %.lr.ph495.us.epil.preheader

.lr.ph495.us.epil.preheader:                      ; preds = %._crit_edge496.us.unr-lcssa, %.lr.ph495.us.preheader
  %.0552492.us.epil.init = phi ptr [ %.1455513, %.lr.ph495.us.preheader ], [ %i.mw, %._crit_edge496.us.unr-lcssa ]
  %.7570491.us.epil.init = phi ptr [ %.6569499.us, %.lr.ph495.us.preheader ], [ %i.mx, %._crit_edge496.us.unr-lcssa ]
  %.1276490.us.epil.init = phi <4 x float> [ %.1276490.us.ph, %.lr.ph495.us.preheader ], [ %i.mv, %._crit_edge496.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod450)
  %i.my = load i64, ptr %.0552492.us.epil.init, align 1, !tbaa !89
  %i.mz = insertelement <2 x i64> poison, i64 %i.my, i64 0
  %i.na = bitcast <2 x i64> %i.mz to <8 x i16>
  %30 = shufflevector <8 x i16> %i.na, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.nb = bitcast <8 x i16> %30 to <4 x float>
  %i.nc = load i16, ptr %.7570491.us.epil.init, align 2, !tbaa !108
  %i.nd = zext i16 %i.nc to i32
  %i.ne = shl nuw i32 %i.nd, 16
  %i.nf = insertelement <4 x i32> poison, i32 %i.ne, i64 0
  %i.ng = bitcast <4 x i32> %i.nf to <4 x float>
  %i.nh = shufflevector <4 x float> %i.ng, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ni = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nb, <4 x float> nofpclass(nan inf) %i.nh, <4 x float> nofpclass(nan inf) %.1276490.us.epil.init)
  br label %._crit_edge496.us

._crit_edge496.us:                                ; preds = %._crit_edge496.us.unr-lcssa, %.lr.ph495.us.epil.preheader
  %.lcssa415 = phi <4 x float> [ %i.mv, %._crit_edge496.us.unr-lcssa ], [ %i.ni, %.lr.ph495.us.epil.preheader ]
  %i.nj = getelementptr i8, ptr %.6569499.us, i64 %i.ad
  %scevgep930 = getelementptr i8, ptr %i.nj, i64 2
  store <4 x float> %.lcssa415, ptr %.9501.us, align 16, !tbaa !89
  %i.nk = getelementptr inbounds nuw i8, ptr %.9501.us, i64 16 ; 2 uses
  %i.nl = add nuw nsw i32 %.3562500.us, 1         ; 2 uses
  %exitcond932.not = icmp eq i32 %i.nl, %1
  br i1 %exitcond932.not, label %._crit_edge503, label %.lr.ph502.split.us, !llvm.loop !1201

.lr.ph502.split:                                  ; preds = %.lr.ph502
  br i1 %.not590, label %.lr.ph502.split.split.us.preheader, label %.lr.ph502.split.split.preheader

.lr.ph502.split.split.preheader:                  ; preds = %.lr.ph502.split
  %scevgep926 = getelementptr i8, ptr %.8.lcssa, i64 16
  %i.nm = sub i32 %i.ac, %.2561.lcssa
  %i.nn = zext i32 %i.nm to i64
  %i.no = shl nuw nsw i64 %i.nn, 4
  %scevgep927 = getelementptr i8, ptr %scevgep926, i64 %i.no
  br label %._crit_edge503

.lr.ph502.split.split.us.preheader:               ; preds = %.lr.ph502.split
  %i.np = sub i32 %i.ac, %.2561.lcssa
  %i.nq = zext i32 %i.np to i64
  %i.nr = shl nuw nsw i64 %i.nq, 4                ; 2 uses
  %i.ns = add nuw nsw i64 %i.nr, 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %.8.lcssa, i8 0, i64 %i.ns, i1 false), !tbaa !89
  %scevgep928 = getelementptr i8, ptr %.8.lcssa, i64 16
  %scevgep929 = getelementptr i8, ptr %scevgep928, i64 %i.nr
  br label %._crit_edge503

.lr.ph473.split.split:                            ; preds = %.lr.ph473.split, %.lr.ph473.split.split
  %.8472 = phi ptr [ %i.nt, %.lr.ph473.split.split ], [ %.7.lcssa, %.lr.ph473.split ]
  %.2561471 = phi i32 [ %i.nu, %.lr.ph473.split.split ], [ %.1560.lcssa, %.lr.ph473.split ]
  %i.nt = getelementptr inbounds nuw i8, ptr %.8472, i64 32 ; 2 uses
  %i.nu = add nuw nsw i32 %.2561471, 2            ; 3 uses
  %i.nv = or disjoint i32 %i.nu, 1
  %i.nw = icmp slt i32 %i.nv, %1
  br i1 %i.nw, label %.lr.ph473.split.split, label %.preheader300, !llvm.loop !1197

._crit_edge503:                                   ; preds = %._crit_edge496.us, %.lr.ph502.split.split.preheader, %.lr.ph502.split.split.us.preheader, %.preheader300
  %.9.lcssa = phi ptr [ %.8.lcssa, %.preheader300 ], [ %scevgep929, %.lr.ph502.split.split.us.preheader ], [ %scevgep927, %.lr.ph502.split.split.preheader ], [ %i.nk, %._crit_edge496.us ] ; 2 uses
  %i.nx = getelementptr inbounds [2 x i8], ptr %.1455513, i64 %i.u ; 2 uses
  %i.ny = add nuw nsw i32 %.1461511, 4            ; 3 uses
  %i.nz = or disjoint i32 %i.ny, 3
  %i.oa = icmp slt i32 %i.nz, %0
  br i1 %i.oa, label %.preheader303, label %.preheader299, !llvm.loop !1202

.preheader298:                                    ; preds = %.preheader298.lr.ph, %._crit_edge604
  %.2608 = phi ptr [ %.1455.lcssa, %.preheader298.lr.ph ], [ %i.wr, %._crit_edge604 ] ; 11 uses
  %.10607 = phi ptr [ %.5.lcssa, %.preheader298.lr.ph ], [ %.14.lcssa, %._crit_edge604 ] ; 6 uses
  %.2462606 = phi i32 [ %.1461.lcssa, %.preheader298.lr.ph ], [ %i.ws, %._crit_edge604 ]
  br i1 %i.gb, label %.lr.ph532, label %.preheader297

.lr.ph532:                                        ; preds = %.preheader298
  br i1 %i.gc, label %.lr.ph532.split.us, label %.lr.ph532.split

.lr.ph532.split.us:                               ; preds = %.lr.ph532, %._crit_edge525.us
  %.11531.us = phi ptr [ %i.ou, %._crit_edge525.us ], [ %.10607, %.lr.ph532 ] ; 5 uses
  %.0539530.us = phi i32 [ %i.ov, %._crit_edge525.us ], [ 0, %.lr.ph532 ]
  %.0543529.us = phi ptr [ %scevgep934, %._crit_edge525.us ], [ %.0.val1, %.lr.ph532 ] ; 2 uses
  br i1 %.not586, label %.lr.ph524.us.preheader, label %bb.n

bb.n:                                             ; preds = %.lr.ph532.split.us
  %i.ob = load <8 x float>, ptr %.11531.us, align 1, !tbaa !89
  %i.oc = getelementptr inbounds nuw i8, ptr %.11531.us, i64 32
  %i.od = load <8 x float>, ptr %i.oc, align 1, !tbaa !89
  br label %.lr.ph524.us.preheader

.lr.ph524.us.preheader:                           ; preds = %bb.n, %.lr.ph532.split.us
  %.1278519.us.ph = phi <8 x float> [ zeroinitializer, %.lr.ph532.split.us ], [ %i.ob, %bb.n ]
  %.1280518.us.ph = phi <8 x float> [ zeroinitializer, %.lr.ph532.split.us ], [ %i.od, %bb.n ]
  br label %.lr.ph524.us

.lr.ph524.us:                                     ; preds = %.lr.ph524.us.preheader, %.lr.ph524.us
  %.0537522.us = phi i32 [ %i.or, %.lr.ph524.us ], [ 0, %.lr.ph524.us.preheader ]
  %.0538521.us = phi ptr [ %i.op, %.lr.ph524.us ], [ %.2608, %.lr.ph524.us.preheader ] ; 2 uses
  %.1544520.us = phi ptr [ %i.oq, %.lr.ph524.us ], [ %.0543529.us, %.lr.ph524.us.preheader ] ; 2 uses
  %.1278519.us = phi <8 x float> [ %i.on, %.lr.ph524.us ], [ %.1278519.us.ph, %.lr.ph524.us.preheader ]
  %.1280518.us = phi <8 x float> [ %i.oo, %.lr.ph524.us ], [ %.1280518.us.ph, %.lr.ph524.us.preheader ]
  %i.oe = load float, ptr %.0538521.us, align 1, !tbaa !89
  %i.of = insertelement <4 x float> poison, float %i.oe, i64 0
  %i.og = load <8 x i16>, ptr %.1544520.us, align 1, !tbaa !89 ; 2 uses
  %i.oh = bitcast <4 x float> %i.of to <8 x i16>  ; 2 uses
  %31 = shufflevector <8 x i16> %i.oh, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 0, i32 11, i32 1>
  %32 = shufflevector <8 x i16> %i.oh, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 0, i32 13, i32 1, i32 14, i32 0, i32 15, i32 1>
  %i.oi = shufflevector <8 x i16> %31, <8 x i16> %32, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.oj = bitcast <16 x i16> %i.oi to <8 x float> ; 2 uses
  %i.ok = shufflevector <8 x float> %i.oj, <8 x float> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %33 = shufflevector <8 x i16> %i.og, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %34 = shufflevector <8 x i16> %i.og, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.ol = shufflevector <8 x i16> %33, <8 x i16> %34, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.om = bitcast <16 x i16> %i.ol to <8 x float> ; 2 uses
  %i.on = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.oj, <8 x float> nofpclass(nan inf) %i.om, <8 x float> nofpclass(nan inf) %.1278519.us) ; 2 uses
  %i.oo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ok, <8 x float> nofpclass(nan inf) %i.om, <8 x float> nofpclass(nan inf) %.1280518.us) ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %.0538521.us, i64 4
  %i.oq = getelementptr inbounds nuw i8, ptr %.1544520.us, i64 16
  %i.or = add nuw nsw i32 %.0537522.us, 1         ; 2 uses
  %exitcond935.not = icmp eq i32 %i.or, %3
  br i1 %exitcond935.not, label %._crit_edge525.us, label %.lr.ph524.us, !llvm.loop !1203

._crit_edge525.us:                                ; preds = %.lr.ph524.us
  %i.os = getelementptr i8, ptr %.0543529.us, i64 %i.go
  %scevgep934 = getelementptr i8, ptr %i.os, i64 16 ; 2 uses
  store <8 x float> %i.on, ptr %.11531.us, align 1, !tbaa !89
  %i.ot = getelementptr inbounds nuw i8, ptr %.11531.us, i64 32
  store <8 x float> %i.oo, ptr %i.ot, align 1, !tbaa !89
  %i.ou = getelementptr inbounds nuw i8, ptr %.11531.us, i64 64 ; 2 uses
  %i.ov = add nuw nsw i32 %.0539530.us, 8         ; 2 uses
  %i.ow = or disjoint i32 %i.ov, 7
  %i.ox = icmp slt i32 %i.ow, %1
  br i1 %i.ox, label %.lr.ph532.split.us, label %.preheader297, !llvm.loop !1204

.lr.ph532.split:                                  ; preds = %.lr.ph532
  br i1 %.not586, label %.lr.ph532.split.split.us.preheader, label %.lr.ph532.split.split.preheader

.lr.ph532.split.split.preheader:                  ; preds = %.lr.ph532.split
  br i1 %i.gv, label %.lr.ph532.split.split.epil.preheader, label %.lr.ph532.split.split

.lr.ph532.split.split.us.preheader:               ; preds = %.lr.ph532.split
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.10607, i8 0, i64 %i.gl, i1 false), !tbaa !89
  %scevgep933 = getelementptr i8, ptr %.10607, i64 %i.gl
  br label %.preheader297

.preheader294:                                    ; preds = %._crit_edge604, %.preheader299
  %.2462.lcssa = phi i32 [ %.1461.lcssa, %.preheader299 ], [ %i.ws, %._crit_edge604 ] ; 2 uses
  %.10.lcssa = phi ptr [ %.5.lcssa, %.preheader299 ], [ %.14.lcssa, %._crit_edge604 ]
  %.2.lcssa = phi ptr [ %.1455.lcssa, %.preheader299 ], [ %i.wr, %._crit_edge604 ]
  %i.oy = icmp slt i32 %.2462.lcssa, %0
  br i1 %i.oy, label %.preheader293.lr.ph, label %._crit_edge756

.preheader293.lr.ph:                              ; preds = %.preheader294
  %i.oz = icmp sgt i32 %1, 7
  %.not582 = icmp eq i32 %2, 0                    ; 4 uses
  %i.pa = icmp sgt i32 %3, 3                      ; 4 uses
  %i.pb = sext i32 %3 to i64
  %i.pc = add i32 %3, -4                          ; 4 uses
  %i.pd = and i32 %i.pc, -4
  %i.pe = add i32 %i.pd, 4                        ; 4 uses
  %i.pf = and i32 %1, -8
  %i.pg = lshr i32 %i.pc, 2
  %i.ph = zext nneg i32 %i.pg to i64              ; 5 uses
  %i.pi = shl nuw nsw i64 %i.ph, 5
  %i.pj = shl nuw nsw i64 %i.ph, 4
  %i.pk = shl nuw nsw i64 %i.ph, 3
  %i.pl = add nuw nsw i64 %i.ph, 1                ; 2 uses
  %min.iters.check266 = icmp ult i32 %i.pc, 12
  %n.vec268 = and i64 %i.pl, 2147483644           ; 5 uses
  %i.pm = trunc nuw nsw i64 %n.vec268 to i32
  %i.pn = shl i32 %i.pm, 2
  %i.po = shl nuw nsw i64 %n.vec268, 3
  %i.pp = shl nuw nsw i64 %n.vec268, 4
  %cmp.n289 = icmp eq i64 %i.pl, %n.vec268
  %i.pq = add nuw nsw i64 %i.ph, 1                ; 2 uses
  %min.iters.check191 = icmp ult i32 %i.pc, 28
  %n.vec193 = and i64 %i.pq, 2147483640           ; 4 uses
  %i.pr = trunc nuw nsw i64 %n.vec193 to i32
  %i.ps = shl i32 %i.pr, 2
  %i.pt = shl nuw nsw i64 %n.vec193, 3            ; 2 uses
  %cmp.n226 = icmp eq i64 %i.pq, %n.vec193
  br label %.preheader293

.preheader297.loopexit372.unr-lcssa:              ; preds = %.lr.ph532.split.split
  br i1 %lcmp.mod454.not, label %.preheader297, label %.lr.ph532.split.split.epil.preheader

.lr.ph532.split.split.epil.preheader:             ; preds = %.preheader297.loopexit372.unr-lcssa, %.lr.ph532.split.split.preheader
  %.11531.epil.init = phi ptr [ %.10607, %.lr.ph532.split.split.preheader ], [ %i.px, %.preheader297.loopexit372.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod456)
  br label %.lr.ph532.split.split.epil

.lr.ph532.split.split.epil:                       ; preds = %.lr.ph532.split.split.epil, %.lr.ph532.split.split.epil.preheader
  %.11531.epil = phi ptr [ %i.pu, %.lr.ph532.split.split.epil ], [ %.11531.epil.init, %.lr.ph532.split.split.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph532.split.split.epil ], [ 0, %.lr.ph532.split.split.epil.preheader ]
  %i.pu = getelementptr inbounds nuw i8, ptr %.11531.epil, i64 64 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter453
  br i1 %epil.iter.cmp.not, label %.preheader297, label %.lr.ph532.split.split.epil, !llvm.loop !1205

.preheader297:                                    ; preds = %.preheader297.loopexit372.unr-lcssa, %.lr.ph532.split.split.epil, %._crit_edge525.us, %.lr.ph532.split.split.us.preheader, %.preheader298
  %.0543.lcssa = phi ptr [ %.0.val1, %.preheader298 ], [ %scevgep934, %._crit_edge525.us ], [ %.0.val1, %.lr.ph532.split.split.us.preheader ], [ %.0.val1, %.lr.ph532.split.split.epil ], [ %.0.val1, %.preheader297.loopexit372.unr-lcssa ] ; 2 uses
  %.0539.lcssa = phi i32 [ 0, %.preheader298 ], [ %i.gh, %._crit_edge525.us ], [ %i.gh, %.lr.ph532.split.split.us.preheader ], [ %i.gh, %.lr.ph532.split.split.epil ], [ %i.gh, %.preheader297.loopexit372.unr-lcssa ] ; 3 uses
  %.11.lcssa = phi ptr [ %.10607, %.preheader298 ], [ %i.ou, %._crit_edge525.us ], [ %scevgep933, %.lr.ph532.split.split.us.preheader ], [ %i.px, %.preheader297.loopexit372.unr-lcssa ], [ %i.pu, %.lr.ph532.split.split.epil ] ; 2 uses
  %i.pv = or disjoint i32 %.0539.lcssa, 3
  %i.pw = icmp slt i32 %i.pv, %1
  br i1 %i.pw, label %.lr.ph563, label %.preheader296

.lr.ph532.split.split:                            ; preds = %.lr.ph532.split.split.preheader, %.lr.ph532.split.split
  %.11531 = phi ptr [ %i.px, %.lr.ph532.split.split ], [ %.10607, %.lr.ph532.split.split.preheader ]
  %niter458 = phi i32 [ %niter458.next.7, %.lr.ph532.split.split ], [ 0, %.lr.ph532.split.split.preheader ]
  %i.px = getelementptr inbounds nuw i8, ptr %.11531, i64 512 ; 3 uses
  %niter458.next.7 = add nuw nsw i32 %niter458, 8 ; 2 uses
  %niter458.ncmp.7.not = icmp eq i32 %niter458.next.7, %unroll_iter457
  br i1 %niter458.ncmp.7.not, label %.preheader297.loopexit372.unr-lcssa, label %.lr.ph532.split.split, !llvm.loop !1204

.preheader296:                                    ; preds = %._crit_edge556, %.preheader297
  %.2545.lcssa = phi ptr [ %.0543.lcssa, %.preheader297 ], [ %.3546.lcssa, %._crit_edge556 ] ; 2 uses
  %.1540.lcssa = phi i32 [ %.0539.lcssa, %.preheader297 ], [ %i.rs, %._crit_edge556 ] ; 3 uses
  %.12.lcssa = phi ptr [ %.11.lcssa, %.preheader297 ], [ %i.rr, %._crit_edge556 ] ; 2 uses
  %i.py = or disjoint i32 %.1540.lcssa, 1
  %i.pz = icmp slt i32 %i.py, %1
  br i1 %i.pz, label %.lr.ph585.preheader, label %.preheader295

.lr.ph585.preheader:                              ; preds = %.preheader296
  %i.qa = getelementptr i8, ptr %.2608, i64 %i.gz
  br label %.lr.ph585

.lr.ph563:                                        ; preds = %.preheader297, %._crit_edge556
  %.12562 = phi ptr [ %i.rr, %._crit_edge556 ], [ %.11.lcssa, %.preheader297 ] ; 5 uses
  %.1540561 = phi i32 [ %i.rs, %._crit_edge556 ], [ %.0539.lcssa, %.preheader297 ]
  %.2545560 = phi ptr [ %.3546.lcssa, %._crit_edge556 ], [ %.0543.lcssa, %.preheader297 ] ; 4 uses
  br i1 %.not586, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph563
  %i.qb = load <4 x float>, ptr %.12562, align 16, !tbaa !89
  %i.qc = getelementptr inbounds nuw i8, ptr %.12562, i64 16
  %i.qd = load <4 x float>, ptr %i.qc, align 16, !tbaa !89
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph563
  %.0283 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph563 ], [ %i.qd, %bb.o ] ; 3 uses
  %.0281 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph563 ], [ %i.qb, %bb.o ] ; 3 uses
  br i1 %i.gc, label %.lr.ph555.preheader, label %._crit_edge556

.lr.ph555.preheader:                              ; preds = %bb.p
  br i1 %i.gw, label %.lr.ph555.epil.preheader, label %.lr.ph555

.lr.ph555:                                        ; preds = %.lr.ph555.preheader, %.lr.ph555
  %.0536552 = phi ptr [ %i.rc, %.lr.ph555 ], [ %.2608, %.lr.ph555.preheader ] ; 3 uses
  %.3546551 = phi ptr [ %i.rd, %.lr.ph555 ], [ %.2545560, %.lr.ph555.preheader ] ; 3 uses
  %.1282550 = phi <4 x float> [ %i.ra, %.lr.ph555 ], [ %.0281, %.lr.ph555.preheader ]
  %.1284549 = phi <4 x float> [ %i.rb, %.lr.ph555 ], [ %.0283, %.lr.ph555.preheader ]
  %niter466 = phi i32 [ %niter466.next.1, %.lr.ph555 ], [ 0, %.lr.ph555.preheader ]
  %i.qe = load float, ptr %.0536552, align 1, !tbaa !89
  %i.qf = insertelement <4 x float> poison, float %i.qe, i64 0
  %i.qg = bitcast <4 x float> %i.qf to <8 x i16>
  %35 = shufflevector <8 x i16> %i.qg, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 0, i32 11, i32 1>
  %i.qh = bitcast <8 x i16> %35 to <4 x float>    ; 2 uses
  %i.qi = load i64, ptr %.3546551, align 1, !tbaa !89
  %i.qj = insertelement <2 x i64> poison, i64 %i.qi, i64 0
  %i.qk = bitcast <2 x i64> %i.qj to <8 x i16>
  %36 = shufflevector <8 x i16> %i.qk, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.ql = bitcast <8 x i16> %36 to <4 x float>    ; 2 uses
  %i.qm = shufflevector <4 x float> %i.ql, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.qn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qh, <4 x float> nofpclass(nan inf) %i.ql, <4 x float> nofpclass(nan inf) %.1282550)
  %i.qo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qh, <4 x float> nofpclass(nan inf) %i.qm, <4 x float> nofpclass(nan inf) %.1284549)
  %i.qp = getelementptr inbounds nuw i8, ptr %.0536552, i64 4
  %i.qq = getelementptr inbounds nuw i8, ptr %.3546551, i64 8
  %i.qr = load float, ptr %i.qp, align 1, !tbaa !89
  %i.qs = insertelement <4 x float> poison, float %i.qr, i64 0
  %i.qt = bitcast <4 x float> %i.qs to <8 x i16>
  %37 = shufflevector <8 x i16> %i.qt, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 0, i32 11, i32 1>
  %i.qu = bitcast <8 x i16> %37 to <4 x float>    ; 2 uses
  %i.qv = load i64, ptr %i.qq, align 1, !tbaa !89
  %i.qw = insertelement <2 x i64> poison, i64 %i.qv, i64 0
  %i.qx = bitcast <2 x i64> %i.qw to <8 x i16>
  %38 = shufflevector <8 x i16> %i.qx, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.qy = bitcast <8 x i16> %38 to <4 x float>    ; 2 uses
  %i.qz = shufflevector <4 x float> %i.qy, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.ra = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qu, <4 x float> nofpclass(nan inf) %i.qy, <4 x float> nofpclass(nan inf) %i.qn) ; 3 uses
  %i.rb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qu, <4 x float> nofpclass(nan inf) %i.qz, <4 x float> nofpclass(nan inf) %i.qo) ; 3 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %.0536552, i64 8 ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %.3546551, i64 16 ; 2 uses
  %niter466.next.1 = add nuw nsw i32 %niter466, 2 ; 2 uses
  %niter466.ncmp.1 = icmp eq i32 %niter466.next.1, %unroll_iter465
  br i1 %niter466.ncmp.1, label %._crit_edge556.loopexit.unr-lcssa, label %.lr.ph555, !llvm.loop !1206

._crit_edge556.loopexit.unr-lcssa:                ; preds = %.lr.ph555
  br i1 %lcmp.mod461.not, label %._crit_edge556.loopexit, label %.lr.ph555.epil.preheader

.lr.ph555.epil.preheader:                         ; preds = %._crit_edge556.loopexit.unr-lcssa, %.lr.ph555.preheader
  %.0536552.epil.init = phi ptr [ %.2608, %.lr.ph555.preheader ], [ %i.rc, %._crit_edge556.loopexit.unr-lcssa ]
  %.3546551.epil.init = phi ptr [ %.2545560, %.lr.ph555.preheader ], [ %i.rd, %._crit_edge556.loopexit.unr-lcssa ]
  %.1282550.epil.init = phi <4 x float> [ %.0281, %.lr.ph555.preheader ], [ %i.ra, %._crit_edge556.loopexit.unr-lcssa ]
  %.1284549.epil.init = phi <4 x float> [ %.0283, %.lr.ph555.preheader ], [ %i.rb, %._crit_edge556.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod464)
  %i.re = load float, ptr %.0536552.epil.init, align 1, !tbaa !89
  %i.rf = insertelement <4 x float> poison, float %i.re, i64 0
  %i.rg = bitcast <4 x float> %i.rf to <8 x i16>
  %39 = shufflevector <8 x i16> %i.rg, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 0, i32 11, i32 1>
  %i.rh = bitcast <8 x i16> %39 to <4 x float>    ; 2 uses
  %i.ri = load i64, ptr %.3546551.epil.init, align 1, !tbaa !89
  %i.rj = insertelement <2 x i64> poison, i64 %i.ri, i64 0
  %i.rk = bitcast <2 x i64> %i.rj to <8 x i16>
  %40 = shufflevector <8 x i16> %i.rk, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.rl = bitcast <8 x i16> %40 to <4 x float>    ; 2 uses
  %i.rm = shufflevector <4 x float> %i.rl, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.rn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rh, <4 x float> nofpclass(nan inf) %i.rl, <4 x float> nofpclass(nan inf) %.1282550.epil.init)
  %i.ro = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rh, <4 x float> nofpclass(nan inf) %i.rm, <4 x float> nofpclass(nan inf) %.1284549.epil.init)
  br label %._crit_edge556.loopexit

._crit_edge556.loopexit:                          ; preds = %._crit_edge556.loopexit.unr-lcssa, %.lr.ph555.epil.preheader
  %.lcssa378 = phi <4 x float> [ %i.ra, %._crit_edge556.loopexit.unr-lcssa ], [ %i.rn, %.lr.ph555.epil.preheader ]
  %.lcssa377 = phi <4 x float> [ %i.rb, %._crit_edge556.loopexit.unr-lcssa ], [ %i.ro, %.lr.ph555.epil.preheader ]
  %i.rp = getelementptr i8, ptr %.2545560, i64 %i.gp
  %scevgep936 = getelementptr i8, ptr %i.rp, i64 8
  br label %._crit_edge556

._crit_edge556:                                   ; preds = %._crit_edge556.loopexit, %bb.p
  %.1284.lcssa = phi <4 x float> [ %.0283, %bb.p ], [ %.lcssa377, %._crit_edge556.loopexit ]
  %.1282.lcssa = phi <4 x float> [ %.0281, %bb.p ], [ %.lcssa378, %._crit_edge556.loopexit ]
  %.3546.lcssa = phi ptr [ %.2545560, %bb.p ], [ %scevgep936, %._crit_edge556.loopexit ] ; 2 uses
  store <4 x float> %.1282.lcssa, ptr %.12562, align 16, !tbaa !89
  %i.rq = getelementptr inbounds nuw i8, ptr %.12562, i64 16
  store <4 x float> %.1284.lcssa, ptr %i.rq, align 16, !tbaa !89
  %i.rr = getelementptr inbounds nuw i8, ptr %.12562, i64 32 ; 2 uses
  %i.rs = add nuw nsw i32 %.1540561, 4            ; 3 uses
  %i.rt = or disjoint i32 %i.rs, 3
  %i.ru = icmp slt i32 %i.rt, %1
  br i1 %i.ru, label %.lr.ph563, label %.preheader296, !llvm.loop !1207

.preheader295:                                    ; preds = %._crit_edge576, %.preheader296
  %.4547.lcssa = phi ptr [ %.2545.lcssa, %.preheader296 ], [ %.5548.lcssa, %._crit_edge576 ]
  %.2541.lcssa = phi i32 [ %.1540.lcssa, %.preheader296 ], [ %i.ub, %._crit_edge576 ] ; 2 uses
  %.13.lcssa = phi ptr [ %.12.lcssa, %.preheader296 ], [ %i.ua, %._crit_edge576 ] ; 2 uses
  %i.rv = icmp slt i32 %.2541.lcssa, %1
  br i1 %i.rv, label %.lr.ph603.preheader, label %._crit_edge604

.lr.ph603.preheader:                              ; preds = %.preheader295
  %i.rw = getelementptr i8, ptr %.2608, i64 %i.hc
  br label %.lr.ph603

.lr.ph585:                                        ; preds = %.lr.ph585.preheader, %._crit_edge576
  %.13584 = phi ptr [ %i.ua, %._crit_edge576 ], [ %.12.lcssa, %.lr.ph585.preheader ] ; 3 uses
  %.2541583 = phi i32 [ %i.ub, %._crit_edge576 ], [ %.1540.lcssa, %.lr.ph585.preheader ]
  %.4547582 = phi ptr [ %.5548.lcssa, %._crit_edge576 ], [ %.2545.lcssa, %.lr.ph585.preheader ] ; 5 uses
  br i1 %.not586, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph585
  %i.rx = load <4 x float>, ptr %.13584, align 4, !tbaa !68
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph585
  %i.ry = phi <4 x float> [ %i.rx, %bb.q ], [ zeroinitializer, %.lr.ph585 ] ; 6 uses
  br i1 %i.gc, label %.lr.ph575.preheader, label %._crit_edge576

.lr.ph575.preheader:                              ; preds = %bb.r
  br i1 %min.iters.check122, label %.lr.ph575.preheader370, label %vector.ph123

vector.ph123:                                     ; preds = %.lr.ph575.preheader
  %i.rz = getelementptr i8, ptr %.4547582, i64 %i.gz
  %41 = shufflevector <4 x float> %i.ry, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 3, i32 5, i32 6, i32 7>
  %42 = shufflevector <4 x float> %i.ry, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 2, i32 5, i32 6, i32 7>
  %43 = shufflevector <4 x float> %i.ry, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 1, i32 5, i32 6, i32 7>
  %i.sa = shufflevector <4 x float> %i.ry, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body125

vector.body125:                                   ; preds = %vector.body125, %vector.ph123
  %index126 = phi i64 [ 0, %vector.ph123 ], [ %index.next139, %vector.body125 ] ; 2 uses
  %vec.phi127 = phi <4 x float> [ %41, %vector.ph123 ], [ %i.sx, %vector.body125 ]
  %vec.phi128 = phi <4 x float> [ %42, %vector.ph123 ], [ %i.sv, %vector.body125 ]
  %vec.phi129 = phi <4 x float> [ %43, %vector.ph123 ], [ %i.st, %vector.body125 ]
  %vec.phi130 = phi <4 x float> [ %i.sa, %vector.ph123 ], [ %i.sr, %vector.body125 ]
  %i.sb = shl i64 %index126, 2                    ; 2 uses
  %next.gep131 = getelementptr i8, ptr %.2608, i64 %i.sb
  %next.gep132 = getelementptr i8, ptr %.4547582, i64 %i.sb
  %wide.vec133 = load <8 x i16>, ptr %next.gep131, align 2, !tbaa !108
  %i.sc = freeze <8 x i16> %wide.vec133           ; 2 uses
  %i.sd = bitcast <8 x i16> %i.sc to <4 x i32>
  %i.se = bitcast <8 x i16> %i.sc to <4 x i32>
  %i.sf = and <4 x i32> %i.se, splat (i32 -65536)
  %i.sg = shl <4 x i32> %i.sd, splat (i32 16)
  %i.sh = bitcast <4 x i32> %i.sg to <4 x float>  ; 2 uses
  %i.si = bitcast <4 x i32> %i.sf to <4 x float>  ; 2 uses
  %wide.vec136 = load <8 x i16>, ptr %next.gep132, align 2, !tbaa !108
  %i.sj = freeze <8 x i16> %wide.vec136           ; 2 uses
  %i.sk = bitcast <8 x i16> %i.sj to <4 x i32>
  %i.sl = bitcast <8 x i16> %i.sj to <4 x i32>
  %i.sm = and <4 x i32> %i.sl, splat (i32 -65536)
  %i.sn = shl <4 x i32> %i.sk, splat (i32 16)
  %i.so = bitcast <4 x i32> %i.sn to <4 x float>  ; 2 uses
  %i.sp = bitcast <4 x i32> %i.sm to <4 x float>  ; 2 uses
  %i.sq = fmul fast <4 x float> %i.so, %i.sh
  %i.sr = fadd fast <4 x float> %i.sq, %vec.phi130 ; 2 uses
  %i.ss = fmul fast <4 x float> %i.sp, %i.sh
  %i.st = fadd fast <4 x float> %i.ss, %vec.phi129 ; 2 uses
  %i.su = fmul fast <4 x float> %i.so, %i.si
  %i.sv = fadd fast <4 x float> %i.su, %vec.phi128 ; 2 uses
  %i.sw = fmul fast <4 x float> %i.sp, %i.si
  %i.sx = fadd fast <4 x float> %i.sw, %vec.phi127 ; 2 uses
  %index.next139 = add nuw i64 %index126, 4       ; 2 uses
  %i.sy = icmp eq i64 %index.next139, %n.vec124
  br i1 %i.sy, label %middle.block140, label %vector.body125, !llvm.loop !1208

middle.block140:                                  ; preds = %vector.body125
  %i.sz = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.sx)
  %i.ta = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.sv)
  %i.tb = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.st)
  %i.tc = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.sr)
  %i.td = insertelement <4 x float> poison, float %i.tc, i64 0
  %i.te = insertelement <4 x float> %i.td, float %i.tb, i64 1
  %i.tf = insertelement <4 x float> %i.te, float %i.ta, i64 2
  %i.tg = insertelement <4 x float> %i.tf, float %i.sz, i64 3 ; 2 uses
  br i1 %cmp.n141, label %._crit_edge576.loopexit, label %.lr.ph575.preheader370

.lr.ph575.preheader370:                           ; preds = %.lr.ph575.preheader, %middle.block140
  %.0525573.ph = phi i32 [ 0, %.lr.ph575.preheader ], [ %i.gy, %middle.block140 ]
  %.0526572.ph = phi ptr [ %.2608, %.lr.ph575.preheader ], [ %i.qa, %middle.block140 ]
  %.5548567.ph = phi ptr [ %.4547582, %.lr.ph575.preheader ], [ %i.rz, %middle.block140 ]
  %.ph371 = phi <4 x float> [ %i.ry, %.lr.ph575.preheader ], [ %i.tg, %middle.block140 ]
  br label %.lr.ph575

.lr.ph575:                                        ; preds = %.lr.ph575.preheader370, %.lr.ph575
  %.0525573 = phi i32 [ %i.tw, %.lr.ph575 ], [ %.0525573.ph, %.lr.ph575.preheader370 ]
  %.0526572 = phi ptr [ %i.tu, %.lr.ph575 ], [ %.0526572.ph, %.lr.ph575.preheader370 ] ; 2 uses
  %.5548567 = phi ptr [ %i.tv, %.lr.ph575 ], [ %.5548567.ph, %.lr.ph575.preheader370 ] ; 2 uses
  %i.th = phi <4 x float> [ %i.tt, %.lr.ph575 ], [ %.ph371, %.lr.ph575.preheader370 ]
  %i.ti = load <2 x i16>, ptr %.0526572, align 2, !tbaa !108
  %i.tj = shufflevector <2 x i16> %i.ti, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.tk = zext <4 x i16> %i.tj to <4 x i32>
  %i.tl = shl nuw <4 x i32> %i.tk, splat (i32 16)
  %i.tm = bitcast <4 x i32> %i.tl to <4 x float>
  %i.tn = load <2 x i16>, ptr %.5548567, align 2, !tbaa !108
  %i.to = shufflevector <2 x i16> %i.tn, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.tp = zext <4 x i16> %i.to to <4 x i32>
  %i.tq = shl nuw <4 x i32> %i.tp, splat (i32 16)
  %i.tr = bitcast <4 x i32> %i.tq to <4 x float>
  %i.ts = fmul fast <4 x float> %i.tr, %i.tm
  %i.tt = fadd fast <4 x float> %i.ts, %i.th      ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %.0526572, i64 4
  %i.tv = getelementptr inbounds nuw i8, ptr %.5548567, i64 4
  %i.tw = add nuw nsw i32 %.0525573, 1            ; 2 uses
  %exitcond939.not = icmp eq i32 %i.tw, %3
  br i1 %exitcond939.not, label %._crit_edge576.loopexit, label %.lr.ph575, !llvm.loop !1209

._crit_edge576.loopexit:                          ; preds = %.lr.ph575, %middle.block140
  %i.tx = phi <4 x float> [ %i.tg, %middle.block140 ], [ %i.tt, %.lr.ph575 ]
  %i.ty = getelementptr i8, ptr %.4547582, i64 %i.gq
  %scevgep938 = getelementptr i8, ptr %i.ty, i64 4
  br label %._crit_edge576

._crit_edge576:                                   ; preds = %._crit_edge576.loopexit, %bb.r
  %.5548.lcssa = phi ptr [ %.4547582, %bb.r ], [ %scevgep938, %._crit_edge576.loopexit ] ; 2 uses
  %i.tz = phi <4 x float> [ %i.ry, %bb.r ], [ %i.tx, %._crit_edge576.loopexit ]
  store <4 x float> %i.tz, ptr %.13584, align 4, !tbaa !68
  %i.ua = getelementptr inbounds nuw i8, ptr %.13584, i64 16 ; 2 uses
  %i.ub = add nuw nsw i32 %.2541583, 2            ; 3 uses
  %i.uc = or disjoint i32 %i.ub, 1
  %i.ud = icmp slt i32 %i.uc, %1
  br i1 %i.ud, label %.lr.ph585, label %.preheader295, !llvm.loop !1210

.lr.ph603:                                        ; preds = %.lr.ph603.preheader, %._crit_edge596
  %.14602 = phi ptr [ %i.wp, %._crit_edge596 ], [ %.13.lcssa, %.lr.ph603.preheader ] ; 5 uses
  %.3542601 = phi i32 [ %i.wq, %._crit_edge596 ], [ %.2541.lcssa, %.lr.ph603.preheader ]
  %.6549600 = phi ptr [ %.7550.lcssa, %._crit_edge596 ], [ %.4547.lcssa, %.lr.ph603.preheader ] ; 5 uses
  br i1 %.not586, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph603
  %i.ue = load float, ptr %.14602, align 4, !tbaa !68
  %i.uf = getelementptr inbounds nuw i8, ptr %.14602, i64 4
  %i.ug = load float, ptr %i.uf, align 4, !tbaa !68
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph603
  %.0516 = phi nsz float [ %i.ue, %bb.s ], [ 0.000000e+00, %.lr.ph603 ] ; 3 uses
  %.0514 = phi nsz float [ %i.ug, %bb.s ], [ 0.000000e+00, %.lr.ph603 ] ; 3 uses
  br i1 %i.gc, label %.lr.ph595.preheader, label %._crit_edge596

.lr.ph595.preheader:                              ; preds = %bb.t
  br i1 %min.iters.check, label %.lr.ph595.preheader369, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph595.preheader
  %i.uh = getelementptr i8, ptr %.6549600, i64 %i.hd
  %i.ui = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.0514, i64 0
  %i.uj = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.0516, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x float> [ %i.ui, %vector.ph ], [ %i.vo, %vector.body ]
  %vec.phi107 = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.vp, %vector.body ]
  %vec.phi108 = phi <4 x float> [ %i.uj, %vector.ph ], [ %i.vi, %vector.body ]
  %vec.phi109 = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.vj, %vector.body ]
  %i.uk = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.2608, i64 %i.uk
  %i.ul = getelementptr i8, ptr %.2608, i64 %i.uk
  %next.gep110 = getelementptr i8, ptr %i.ul, i64 16
  %i.um = shl i64 %index, 1
  %next.gep111 = getelementptr i8, ptr %.6549600, i64 %i.um ; 2 uses
  %wide.vec = load <8 x i16>, ptr %next.gep, align 2, !tbaa !108
  %i.un = freeze <8 x i16> %wide.vec              ; 2 uses
  %i.uo = bitcast <8 x i16> %i.un to <4 x i32>
  %i.up = bitcast <8 x i16> %i.un to <4 x i32>
  %i.uq = and <4 x i32> %i.up, splat (i32 -65536)
  %wide.vec113 = load <8 x i16>, ptr %next.gep110, align 2, !tbaa !108
  %i.ur = freeze <8 x i16> %wide.vec113           ; 2 uses
  %i.us = bitcast <8 x i16> %i.ur to <4 x i32>
  %i.ut = bitcast <8 x i16> %i.ur to <4 x i32>
  %i.uu = and <4 x i32> %i.ut, splat (i32 -65536)
  %i.uv = shl <4 x i32> %i.uo, splat (i32 16)
  %i.uw = shl <4 x i32> %i.us, splat (i32 16)
  %i.ux = bitcast <4 x i32> %i.uv to <4 x float>
  %i.uy = bitcast <4 x i32> %i.uw to <4 x float>
  %i.uz = getelementptr i8, ptr %next.gep111, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep111, align 2, !tbaa !108
  %wide.load116 = load <4 x i16>, ptr %i.uz, align 2, !tbaa !108
  %i.va = zext <4 x i16> %wide.load to <4 x i32>
  %i.vb = zext <4 x i16> %wide.load116 to <4 x i32>
  %i.vc = shl nuw <4 x i32> %i.va, splat (i32 16)
  %i.vd = shl nuw <4 x i32> %i.vb, splat (i32 16)
  %i.ve = bitcast <4 x i32> %i.vc to <4 x float>  ; 2 uses
  %i.vf = bitcast <4 x i32> %i.vd to <4 x float>  ; 2 uses
  %i.vg = fmul fast <4 x float> %i.ve, %i.ux
  %i.vh = fmul fast <4 x float> %i.vf, %i.uy
  %i.vi = fadd fast <4 x float> %i.vg, %vec.phi108 ; 2 uses
  %i.vj = fadd fast <4 x float> %i.vh, %vec.phi109 ; 2 uses
  %i.vk = bitcast <4 x i32> %i.uq to <4 x float>
  %i.vl = bitcast <4 x i32> %i.uu to <4 x float>
  %i.vm = fmul fast <4 x float> %i.vk, %i.ve
  %i.vn = fmul fast <4 x float> %i.vl, %i.vf
  %i.vo = fadd fast <4 x float> %i.vm, %vec.phi   ; 2 uses
  %i.vp = fadd fast <4 x float> %i.vn, %vec.phi107 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.vq = icmp eq i64 %index.next, %n.vec
  br i1 %i.vq, label %middle.block, label %vector.body, !llvm.loop !1211

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd fast <4 x float> %i.vp, %i.vo
  %i.vr = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx) ; 2 uses
  %bin.rdx117 = fadd fast <4 x float> %i.vj, %i.vi
  %i.vs = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx117) ; 2 uses
  br i1 %cmp.n, label %._crit_edge596.loopexit, label %.lr.ph595.preheader369

.lr.ph595.preheader369:                           ; preds = %.lr.ph595.preheader, %middle.block
  %.0512593.ph = phi i32 [ 0, %.lr.ph595.preheader ], [ %i.hb, %middle.block ]
  %.0513592.ph = phi ptr [ %.2608, %.lr.ph595.preheader ], [ %i.rw, %middle.block ]
  %.1515591.ph = phi float [ %.0514, %.lr.ph595.preheader ], [ %i.vr, %middle.block ]
  %.1517590.ph = phi float [ %.0516, %.lr.ph595.preheader ], [ %i.vs, %middle.block ]
  %.7550589.ph = phi ptr [ %.6549600, %.lr.ph595.preheader ], [ %i.uh, %middle.block ]
  br label %.lr.ph595

.lr.ph595:                                        ; preds = %.lr.ph595.preheader369, %.lr.ph595
  %.0512593 = phi i32 [ %i.wm, %.lr.ph595 ], [ %.0512593.ph, %.lr.ph595.preheader369 ]
  %.0513592 = phi ptr [ %i.wk, %.lr.ph595 ], [ %.0513592.ph, %.lr.ph595.preheader369 ] ; 3 uses
  %.1515591 = phi float [ %i.wj, %.lr.ph595 ], [ %.1515591.ph, %.lr.ph595.preheader369 ]
  %.1517590 = phi float [ %i.wc, %.lr.ph595 ], [ %.1517590.ph, %.lr.ph595.preheader369 ]
  %.7550589 = phi ptr [ %i.wl, %.lr.ph595 ], [ %.7550589.ph, %.lr.ph595.preheader369 ] ; 2 uses
  %i.vt = load i16, ptr %.0513592, align 2, !tbaa !108
  %i.vu = zext i16 %i.vt to i32
  %i.vv = shl nuw i32 %i.vu, 16
  %i.vw = bitcast i32 %i.vv to float
  %i.vx = load i16, ptr %.7550589, align 2, !tbaa !108
  %i.vy = zext i16 %i.vx to i32
  %i.vz = shl nuw i32 %i.vy, 16
  %i.wa = bitcast i32 %i.vz to float              ; 2 uses
  %i.wb = fmul fast float %i.wa, %i.vw
  %i.wc = fadd fast float %i.wb, %.1517590        ; 2 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %.0513592, i64 2
  %i.we = load i16, ptr %i.wd, align 2, !tbaa !108
  %i.wf = zext i16 %i.we to i32
  %i.wg = shl nuw i32 %i.wf, 16
  %i.wh = bitcast i32 %i.wg to float
  %i.wi = fmul fast float %i.wh, %i.wa
  %i.wj = fadd fast float %i.wi, %.1515591        ; 2 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %.0513592, i64 4
  %i.wl = getelementptr inbounds nuw i8, ptr %.7550589, i64 2
  %i.wm = add nuw nsw i32 %.0512593, 1            ; 2 uses
  %exitcond941.not = icmp eq i32 %i.wm, %3
  br i1 %exitcond941.not, label %._crit_edge596.loopexit, label %.lr.ph595, !llvm.loop !1212

._crit_edge596.loopexit:                          ; preds = %.lr.ph595, %middle.block
  %.lcssa58 = phi float [ %i.vs, %middle.block ], [ %i.wc, %.lr.ph595 ]
  %.lcssa57 = phi float [ %i.vr, %middle.block ], [ %i.wj, %.lr.ph595 ]
  %i.wn = getelementptr i8, ptr %.6549600, i64 %i.gr
  %scevgep940 = getelementptr i8, ptr %i.wn, i64 2
  br label %._crit_edge596

._crit_edge596:                                   ; preds = %._crit_edge596.loopexit, %bb.t
  %.7550.lcssa = phi ptr [ %.6549600, %bb.t ], [ %scevgep940, %._crit_edge596.loopexit ]
  %.1517.lcssa = phi float [ %.0516, %bb.t ], [ %.lcssa58, %._crit_edge596.loopexit ]
  %.1515.lcssa = phi float [ %.0514, %bb.t ], [ %.lcssa57, %._crit_edge596.loopexit ]
  store float %.1517.lcssa, ptr %.14602, align 4, !tbaa !68
  %i.wo = getelementptr inbounds nuw i8, ptr %.14602, i64 4
  store float %.1515.lcssa, ptr %i.wo, align 4, !tbaa !68
  %i.wp = getelementptr inbounds nuw i8, ptr %.14602, i64 8 ; 2 uses
  %i.wq = add nuw nsw i32 %.3542601, 1            ; 2 uses
  %exitcond942.not = icmp eq i32 %i.wq, %1
  br i1 %exitcond942.not, label %._crit_edge604, label %.lr.ph603, !llvm.loop !1213

._crit_edge604:                                   ; preds = %._crit_edge596, %.preheader295
  %.14.lcssa = phi ptr [ %.13.lcssa, %.preheader295 ], [ %i.wp, %._crit_edge596 ] ; 2 uses
  %i.wr = getelementptr inbounds [2 x i8], ptr %.2608, i64 %i.ge ; 2 uses
  %i.ws = add nuw nsw i32 %.2462606, 2            ; 3 uses
  %i.wt = or disjoint i32 %i.ws, 1
  %i.wu = icmp slt i32 %i.wt, %0
  br i1 %i.wu, label %.preheader298, label %.preheader294, !llvm.loop !1214

.preheader293:                                    ; preds = %.preheader293.lr.ph, %._crit_edge751
  %.3755 = phi ptr [ %.2.lcssa, %.preheader293.lr.ph ], [ %i.bed, %._crit_edge751 ] ; 23 uses
  %.15754 = phi ptr [ %.10.lcssa, %.preheader293.lr.ph ], [ %.19.lcssa, %._crit_edge751 ] ; 2 uses
  %.3463753 = phi i32 [ %.2462.lcssa, %.preheader293.lr.ph ], [ %i.bee, %._crit_edge751 ]
  br i1 %i.oz, label %.lr.ph641, label %.preheader292

.preheader292:                                    ; preds = %._crit_edge635, %.preheader293
  %.0500.lcssa = phi ptr [ %.0.val1, %.preheader293 ], [ %.2502.lcssa, %._crit_edge635 ] ; 2 uses
  %.0496.lcssa = phi i32 [ 0, %.preheader293 ], [ %i.pf, %._crit_edge635 ] ; 3 uses
  %.16.lcssa = phi ptr [ %.15754, %.preheader293 ], [ %i.yz, %._crit_edge635 ] ; 2 uses
  %i.wv = or disjoint i32 %.0496.lcssa, 3
  %i.ww = icmp slt i32 %i.wv, %1
  br i1 %i.ww, label %.lr.ph674, label %.preheader291

.lr.ph641:                                        ; preds = %.preheader293, %._crit_edge635
  %.16640 = phi ptr [ %i.yz, %._crit_edge635 ], [ %.15754, %.preheader293 ] ; 3 uses
  %.0496639 = phi i32 [ %i.za, %._crit_edge635 ], [ 0, %.preheader293 ]
  %.0500638 = phi ptr [ %.2502.lcssa, %._crit_edge635 ], [ %.0.val1, %.preheader293 ] ; 2 uses
  br i1 %.not582, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph641
  %i.wx = load <8 x float>, ptr %.16640, align 1, !tbaa !89
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph641
  %.0289 = phi nsz <8 x float> [ zeroinitializer, %.lr.ph641 ], [ %i.wx, %bb.u ] ; 2 uses
  br i1 %i.pa, label %.lr.ph620, label %._crit_edge621

.lr.ph620:                                        ; preds = %bb.v, %.lr.ph620
  %.0492618 = phi i32 [ %i.ye, %.lr.ph620 ], [ 0, %bb.v ]
  %.0494617 = phi ptr [ %i.yc, %.lr.ph620 ], [ %.3755, %bb.v ] ; 2 uses
  %.1501616 = phi ptr [ %i.yd, %.lr.ph620 ], [ %.0500638, %bb.v ] ; 5 uses
  %.0285615 = phi <8 x float> [ %i.yb, %.lr.ph620 ], [ zeroinitializer, %bb.v ]
  %.0286614 = phi <8 x float> [ %i.xu, %.lr.ph620 ], [ zeroinitializer, %bb.v ]
  %.0287613 = phi <8 x float> [ %i.xr, %.lr.ph620 ], [ zeroinitializer, %bb.v ]
  %.0288612 = phi <8 x float> [ %i.xo, %.lr.ph620 ], [ zeroinitializer, %bb.v ]
  %i.wy = load <8 x i16>, ptr %.1501616, align 1, !tbaa !89 ; 2 uses
  %44 = shufflevector <8 x i16> %i.wy, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %45 = shufflevector <8 x i16> %i.wy, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.wz = shufflevector <8 x i16> %44, <8 x i16> %45, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.xa = bitcast <16 x i16> %i.wz to <8 x float>
  %i.xb = getelementptr inbounds nuw i8, ptr %.1501616, i64 16
  %i.xc = load <8 x i16>, ptr %i.xb, align 1, !tbaa !89 ; 2 uses
  %46 = shufflevector <8 x i16> %i.xc, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %47 = shufflevector <8 x i16> %i.xc, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.xd = shufflevector <8 x i16> %46, <8 x i16> %47, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.xe = bitcast <16 x i16> %i.xd to <8 x float>
  %i.xf = getelementptr inbounds nuw i8, ptr %.1501616, i64 32
  %i.xg = load <8 x i16>, ptr %i.xf, align 1, !tbaa !89 ; 2 uses
  %48 = shufflevector <8 x i16> %i.xg, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %49 = shufflevector <8 x i16> %i.xg, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.xh = shufflevector <8 x i16> %48, <8 x i16> %49, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.xi = bitcast <16 x i16> %i.xh to <8 x float>
  %i.xj = load <4 x i16>, ptr %.0494617, align 2, !tbaa !108
  %i.xk = zext <4 x i16> %i.xj to <4 x i32>
  %i.xl = shl nuw <4 x i32> %i.xk, splat (i32 16) ; 4 uses
  %i.xm = bitcast <4 x i32> %i.xl to <4 x float>
  %i.xn = shufflevector <4 x float> %i.xm, <4 x float> poison, <8 x i32> zeroinitializer
  %i.xo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.xn, <8 x float> nofpclass(nan inf) %i.xa, <8 x float> nofpclass(nan inf) %.0288612) ; 2 uses
  %i.xp = bitcast <4 x i32> %i.xl to <4 x float>
  %i.xq = shufflevector <4 x float> %i.xp, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.xr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.xq, <8 x float> nofpclass(nan inf) %i.xe, <8 x float> nofpclass(nan inf) %.0287613) ; 2 uses
  %i.xs = bitcast <4 x i32> %i.xl to <4 x float>
  %i.xt = shufflevector <4 x float> %i.xs, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.xu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.xt, <8 x float> nofpclass(nan inf) %i.xi, <8 x float> nofpclass(nan inf) %.0286614) ; 2 uses
  %i.xv = bitcast <4 x i32> %i.xl to <4 x float>
  %i.xw = shufflevector <4 x float> %i.xv, <4 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.xx = getelementptr inbounds nuw i8, ptr %.1501616, i64 48
  %i.xy = load <8 x i16>, ptr %i.xx, align 1, !tbaa !89 ; 2 uses
  %50 = shufflevector <8 x i16> %i.xy, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %51 = shufflevector <8 x i16> %i.xy, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.xz = shufflevector <8 x i16> %50, <8 x i16> %51, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ya = bitcast <16 x i16> %i.xz to <8 x float>
  %i.yb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.xw, <8 x float> nofpclass(nan inf) %i.ya, <8 x float> nofpclass(nan inf) %.0285615) ; 2 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %.0494617, i64 8 ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %.1501616, i64 64 ; 2 uses
  %i.ye = add nuw nsw i32 %.0492618, 4            ; 2 uses
  %i.yf = or disjoint i32 %i.ye, 3
  %i.yg = icmp slt i32 %i.yf, %3
  br i1 %i.yg, label %.lr.ph620, label %._crit_edge621.loopexit, !llvm.loop !1215

._crit_edge621.loopexit:                          ; preds = %.lr.ph620
  %i.yh = fadd fast <8 x float> %i.xo, %.0289
  %i.yi = fadd fast <8 x float> %i.yh, %i.xr
  %i.yj = fadd fast <8 x float> %i.yi, %i.xu
  %i.yk = fadd fast <8 x float> %i.yj, %i.yb
  br label %._crit_edge621

._crit_edge621:                                   ; preds = %._crit_edge621.loopexit, %bb.v
  %.0288.lcssa = phi <8 x float> [ %.0289, %bb.v ], [ %i.yk, %._crit_edge621.loopexit ] ; 2 uses
  %.1501.lcssa = phi ptr [ %.0500638, %bb.v ], [ %i.yd, %._crit_edge621.loopexit ] ; 2 uses
  %.0494.lcssa = phi ptr [ %.3755, %bb.v ], [ %i.yc, %._crit_edge621.loopexit ]
  %.0492.lcssa = phi i32 [ 0, %bb.v ], [ %i.pe, %._crit_edge621.loopexit ] ; 2 uses
  %i.yl = icmp slt i32 %.0492.lcssa, %3
  br i1 %i.yl, label %.lr.ph634, label %._crit_edge635

.lr.ph634:                                        ; preds = %._crit_edge621, %.lr.ph634
  %.1493632 = phi i32 [ %i.yy, %.lr.ph634 ], [ %.0492.lcssa, %._crit_edge621 ]
  %.1495631 = phi ptr [ %i.yw, %.lr.ph634 ], [ %.0494.lcssa, %._crit_edge621 ] ; 2 uses
  %.2502630 = phi ptr [ %i.yx, %.lr.ph634 ], [ %.1501.lcssa, %._crit_edge621 ] ; 2 uses
  %.1290629 = phi <8 x float> [ %i.yv, %.lr.ph634 ], [ %.0288.lcssa, %._crit_edge621 ]
  %i.ym = load i16, ptr %.1495631, align 2, !tbaa !108
  %i.yn = zext i16 %i.ym to i32
  %i.yo = shl nuw i32 %i.yn, 16
  %i.yp = insertelement <8 x i32> poison, i32 %i.yo, i64 0
  %i.yq = bitcast <8 x i32> %i.yp to <8 x float>
  %i.yr = shufflevector <8 x float> %i.yq, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ys = load <8 x i16>, ptr %.2502630, align 1, !tbaa !89 ; 2 uses
  %52 = shufflevector <8 x i16> %i.ys, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %53 = shufflevector <8 x i16> %i.ys, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.yt = shufflevector <8 x i16> %52, <8 x i16> %53, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.yu = bitcast <16 x i16> %i.yt to <8 x float>
  %i.yv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.yr, <8 x float> nofpclass(nan inf) %i.yu, <8 x float> nofpclass(nan inf) %.1290629) ; 2 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %.1495631, i64 2
  %i.yx = getelementptr inbounds nuw i8, ptr %.2502630, i64 16 ; 2 uses
  %i.yy = add nuw nsw i32 %.1493632, 1            ; 2 uses
  %exitcond943.not = icmp eq i32 %i.yy, %3
  br i1 %exitcond943.not, label %._crit_edge635, label %.lr.ph634, !llvm.loop !1216

._crit_edge635:                                   ; preds = %.lr.ph634, %._crit_edge621
  %.1290.lcssa = phi <8 x float> [ %.0288.lcssa, %._crit_edge621 ], [ %i.yv, %.lr.ph634 ]
  %.2502.lcssa = phi ptr [ %.1501.lcssa, %._crit_edge621 ], [ %i.yx, %.lr.ph634 ] ; 2 uses
  store <8 x float> %.1290.lcssa, ptr %.16640, align 1, !tbaa !89
  %i.yz = getelementptr inbounds nuw i8, ptr %.16640, i64 32 ; 2 uses
  %i.za = add nuw nsw i32 %.0496639, 8            ; 2 uses
  %i.zb = or disjoint i32 %i.za, 7
  %i.zc = icmp slt i32 %i.zb, %1
  br i1 %i.zc, label %.lr.ph641, label %.preheader292, !llvm.loop !1217

.preheader291:                                    ; preds = %._crit_edge668, %.preheader292
  %.3503.lcssa = phi ptr [ %.0500.lcssa, %.preheader292 ], [ %.5505.lcssa, %._crit_edge668 ] ; 2 uses
  %.1497.lcssa = phi i32 [ %.0496.lcssa, %.preheader292 ], [ %i.acs, %._crit_edge668 ] ; 3 uses
  %.17.lcssa = phi ptr [ %.16.lcssa, %.preheader292 ], [ %i.acr, %._crit_edge668 ] ; 2 uses
  %i.zd = or disjoint i32 %.1497.lcssa, 1
  %i.ze = icmp slt i32 %i.zd, %1
  br i1 %i.ze, label %.lr.ph717.preheader, label %.preheader

.lr.ph717.preheader:                              ; preds = %.preheader291
  %i.zf = getelementptr i8, ptr %.3755, i64 %i.po ; 2 uses
  br label %.lr.ph717

.lr.ph674:                                        ; preds = %.preheader292, %._crit_edge668
  %.17673 = phi ptr [ %i.acr, %._crit_edge668 ], [ %.16.lcssa, %.preheader292 ] ; 3 uses
  %.1497672 = phi i32 [ %i.acs, %._crit_edge668 ], [ %.0496.lcssa, %.preheader292 ]
  %.3503671 = phi ptr [ %.5505.lcssa, %._crit_edge668 ], [ %.0500.lcssa, %.preheader292 ] ; 3 uses
  br i1 %.not582, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph674
  %i.zg = load <4 x float>, ptr %.17673, align 1, !tbaa !89
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph674
  %.0253 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph674 ], [ %i.zg, %bb.w ] ; 2 uses
  br i1 %i.pa, label %.lr.ph653, label %._crit_edge654

.lr.ph653:                                        ; preds = %bb.x, %.lr.ph653
  %.0488651 = phi i32 [ %i.aar, %.lr.ph653 ], [ 0, %bb.x ]
  %.0490650 = phi ptr [ %i.aap, %.lr.ph653 ], [ %.3755, %bb.x ] ; 2 uses
  %.4504649 = phi ptr [ %i.aaq, %.lr.ph653 ], [ %.3503671, %bb.x ] ; 5 uses
  %.0249648 = phi <4 x float> [ %i.aao, %.lr.ph653 ], [ zeroinitializer, %bb.x ]
  %.0250647 = phi <4 x float> [ %i.aag, %.lr.ph653 ], [ zeroinitializer, %bb.x ]
  %.0251646 = phi <4 x float> [ %i.aad, %.lr.ph653 ], [ zeroinitializer, %bb.x ]
  %.0252645 = phi <4 x float> [ %i.aaa, %.lr.ph653 ], [ zeroinitializer, %bb.x ]
  %i.zh = load i64, ptr %.4504649, align 1, !tbaa !89
  %i.zi = insertelement <2 x i64> poison, i64 %i.zh, i64 0
  %i.zj = bitcast <2 x i64> %i.zi to <8 x i16>
  %54 = shufflevector <8 x i16> %i.zj, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.zk = bitcast <8 x i16> %54 to <4 x float>
  %i.zl = getelementptr inbounds nuw i8, ptr %.4504649, i64 8
  %i.zm = load i64, ptr %i.zl, align 1, !tbaa !89
  %i.zn = insertelement <2 x i64> poison, i64 %i.zm, i64 0
  %i.zo = bitcast <2 x i64> %i.zn to <8 x i16>
  %55 = shufflevector <8 x i16> %i.zo, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.zp = bitcast <8 x i16> %55 to <4 x float>
  %i.zq = getelementptr inbounds nuw i8, ptr %.4504649, i64 16
  %i.zr = load i64, ptr %i.zq, align 1, !tbaa !89
  %i.zs = insertelement <2 x i64> poison, i64 %i.zr, i64 0
  %i.zt = bitcast <2 x i64> %i.zs to <8 x i16>
  %56 = shufflevector <8 x i16> %i.zt, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.zu = bitcast <8 x i16> %56 to <4 x float>
  %i.zv = load <4 x i16>, ptr %.0490650, align 2, !tbaa !108
  %i.zw = zext <4 x i16> %i.zv to <4 x i32>
  %i.zx = shl nuw <4 x i32> %i.zw, splat (i32 16) ; 4 uses
  %i.zy = bitcast <4 x i32> %i.zx to <4 x float>
  %i.zz = shufflevector <4 x float> %i.zy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aaa = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.zz, <4 x float> nofpclass(nan inf) %i.zk, <4 x float> nofpclass(nan inf) %.0252645) ; 2 uses
  %i.aab = bitcast <4 x i32> %i.zx to <4 x float>
  %i.aac = shufflevector <4 x float> %i.aab, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.aad = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aac, <4 x float> nofpclass(nan inf) %i.zp, <4 x float> nofpclass(nan inf) %.0251646) ; 2 uses
  %i.aae = bitcast <4 x i32> %i.zx to <4 x float>
  %i.aaf = shufflevector <4 x float> %i.aae, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.aag = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aaf, <4 x float> nofpclass(nan inf) %i.zu, <4 x float> nofpclass(nan inf) %.0250647) ; 2 uses
  %i.aah = bitcast <4 x i32> %i.zx to <4 x float>
  %i.aai = shufflevector <4 x float> %i.aah, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.aaj = getelementptr inbounds nuw i8, ptr %.4504649, i64 24
  %i.aak = load i64, ptr %i.aaj, align 1, !tbaa !89
  %i.aal = insertelement <2 x i64> poison, i64 %i.aak, i64 0
  %i.aam = bitcast <2 x i64> %i.aal to <8 x i16>
  %57 = shufflevector <8 x i16> %i.aam, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.aan = bitcast <8 x i16> %57 to <4 x float>
  %i.aao = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aai, <4 x float> nofpclass(nan inf) %i.aan, <4 x float> nofpclass(nan inf) %.0249648) ; 2 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %.0490650, i64 8 ; 2 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %.4504649, i64 32
  %i.aar = add nuw nsw i32 %.0488651, 4           ; 2 uses
  %i.aas = or disjoint i32 %i.aar, 3
  %i.aat = icmp slt i32 %i.aas, %3
  br i1 %i.aat, label %.lr.ph653, label %._crit_edge654.loopexit, !llvm.loop !1218

._crit_edge654.loopexit:                          ; preds = %.lr.ph653
  %i.aau = getelementptr i8, ptr %.3503671, i64 %i.pi
  %scevgep944 = getelementptr i8, ptr %i.aau, i64 32
  %i.aav = fadd fast <4 x float> %i.aaa, %.0253
  %i.aaw = fadd fast <4 x float> %i.aav, %i.aad
  %i.aax = fadd fast <4 x float> %i.aaw, %i.aag
  %i.aay = fadd fast <4 x float> %i.aax, %i.aao
  br label %._crit_edge654

._crit_edge654:                                   ; preds = %._crit_edge654.loopexit, %bb.x
  %.0252.lcssa = phi <4 x float> [ %.0253, %bb.x ], [ %i.aay, %._crit_edge654.loopexit ] ; 3 uses
  %.4504.lcssa = phi ptr [ %.3503671, %bb.x ], [ %scevgep944, %._crit_edge654.loopexit ] ; 4 uses
  %.0490.lcssa = phi ptr [ %.3755, %bb.x ], [ %i.aap, %._crit_edge654.loopexit ] ; 3 uses
  %.0488.lcssa = phi i32 [ 0, %bb.x ], [ %i.pe, %._crit_edge654.loopexit ] ; 5 uses
  %i.aaz = icmp slt i32 %.0488.lcssa, %3
  br i1 %i.aaz, label %.lr.ph667.preheader, label %._crit_edge668

.lr.ph667.preheader:                              ; preds = %._crit_edge654
  %i.aba = sub i32 %3, %.0488.lcssa
  %.neg = add i32 %.0488.lcssa, 1
  %xtraiter467 = and i32 %i.aba, 1
  %lcmp.mod468.not = icmp eq i32 %xtraiter467, 0
  br i1 %lcmp.mod468.not, label %.lr.ph667.prol.loopexit, label %.lr.ph667.prol

.lr.ph667.prol:                                   ; preds = %.lr.ph667.preheader
  %i.abb = load i16, ptr %.0490.lcssa, align 2, !tbaa !108
  %i.abc = zext i16 %i.abb to i32
  %i.abd = shl nuw i32 %i.abc, 16
  %i.abe = insertelement <4 x i32> poison, i32 %i.abd, i64 0
  %i.abf = bitcast <4 x i32> %i.abe to <4 x float>
  %i.abg = shufflevector <4 x float> %i.abf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.abh = load i64, ptr %.4504.lcssa, align 1, !tbaa !89
  %i.abi = insertelement <2 x i64> poison, i64 %i.abh, i64 0
  %i.abj = bitcast <2 x i64> %i.abi to <8 x i16>
  %58 = shufflevector <8 x i16> %i.abj, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.abk = bitcast <8 x i16> %58 to <4 x float>
  %i.abl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.abg, <4 x float> nofpclass(nan inf) %i.abk, <4 x float> nofpclass(nan inf) %.0252.lcssa) ; 2 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %.0490.lcssa, i64 2
  %i.abn = getelementptr inbounds nuw i8, ptr %.4504.lcssa, i64 8 ; 2 uses
  %i.abo = add nuw nsw i32 %.0488.lcssa, 1
  br label %.lr.ph667.prol.loopexit

.lr.ph667.prol.loopexit:                          ; preds = %.lr.ph667.prol, %.lr.ph667.preheader
  %.lcssa327.unr = phi <4 x float> [ poison, %.lr.ph667.preheader ], [ %i.abl, %.lr.ph667.prol ]
  %.lcssa326.unr = phi ptr [ poison, %.lr.ph667.preheader ], [ %i.abn, %.lr.ph667.prol ]
  %.1489665.unr = phi i32 [ %.0488.lcssa, %.lr.ph667.preheader ], [ %i.abo, %.lr.ph667.prol ]
  %.1491664.unr = phi ptr [ %.0490.lcssa, %.lr.ph667.preheader ], [ %i.abm, %.lr.ph667.prol ]
  %.5505663.unr = phi ptr [ %.4504.lcssa, %.lr.ph667.preheader ], [ %i.abn, %.lr.ph667.prol ]
  %.1254662.unr = phi <4 x float> [ %.0252.lcssa, %.lr.ph667.preheader ], [ %i.abl, %.lr.ph667.prol ]
  %i.abp = icmp eq i32 %3, %.neg
  br i1 %i.abp, label %._crit_edge668, label %.lr.ph667

.lr.ph667:                                        ; preds = %.lr.ph667.prol.loopexit, %.lr.ph667
  %.1489665 = phi i32 [ %i.acq, %.lr.ph667 ], [ %.1489665.unr, %.lr.ph667.prol.loopexit ]
  %.1491664 = phi ptr [ %i.aco, %.lr.ph667 ], [ %.1491664.unr, %.lr.ph667.prol.loopexit ] ; 3 uses
  %.5505663 = phi ptr [ %i.acp, %.lr.ph667 ], [ %.5505663.unr, %.lr.ph667.prol.loopexit ] ; 3 uses
  %.1254662 = phi <4 x float> [ %i.acn, %.lr.ph667 ], [ %.1254662.unr, %.lr.ph667.prol.loopexit ]
  %i.abq = load i16, ptr %.1491664, align 2, !tbaa !108
  %i.abr = zext i16 %i.abq to i32
  %i.abs = shl nuw i32 %i.abr, 16
  %i.abt = insertelement <4 x i32> poison, i32 %i.abs, i64 0
  %i.abu = bitcast <4 x i32> %i.abt to <4 x float>
  %i.abv = shufflevector <4 x float> %i.abu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.abw = load i64, ptr %.5505663, align 1, !tbaa !89
  %i.abx = insertelement <2 x i64> poison, i64 %i.abw, i64 0
  %i.aby = bitcast <2 x i64> %i.abx to <8 x i16>
  %59 = shufflevector <8 x i16> %i.aby, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.abz = bitcast <8 x i16> %59 to <4 x float>
  %i.aca = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.abv, <4 x float> nofpclass(nan inf) %i.abz, <4 x float> nofpclass(nan inf) %.1254662)
  %i.acb = getelementptr inbounds nuw i8, ptr %.1491664, i64 2
  %i.acc = getelementptr inbounds nuw i8, ptr %.5505663, i64 8
  %i.acd = load i16, ptr %i.acb, align 2, !tbaa !108
  %i.ace = zext i16 %i.acd to i32
  %i.acf = shl nuw i32 %i.ace, 16
  %i.acg = insertelement <4 x i32> poison, i32 %i.acf, i64 0
  %i.ach = bitcast <4 x i32> %i.acg to <4 x float>
  %i.aci = shufflevector <4 x float> %i.ach, <4 x float> poison, <4 x i32> zeroinitializer
  %i.acj = load i64, ptr %i.acc, align 1, !tbaa !89
  %i.ack = insertelement <2 x i64> poison, i64 %i.acj, i64 0
  %i.acl = bitcast <2 x i64> %i.ack to <8 x i16>
  %60 = shufflevector <8 x i16> %i.acl, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.acm = bitcast <8 x i16> %60 to <4 x float>
  %i.acn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aci, <4 x float> nofpclass(nan inf) %i.acm, <4 x float> nofpclass(nan inf) %i.aca) ; 2 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %.1491664, i64 4
  %i.acp = getelementptr inbounds nuw i8, ptr %.5505663, i64 16 ; 2 uses
  %i.acq = add nuw nsw i32 %.1489665, 2           ; 2 uses
  %exitcond945.not.1 = icmp eq i32 %i.acq, %3
  br i1 %exitcond945.not.1, label %._crit_edge668, label %.lr.ph667, !llvm.loop !1219

._crit_edge668:                                   ; preds = %.lr.ph667.prol.loopexit, %.lr.ph667, %._crit_edge654
  %.1254.lcssa = phi <4 x float> [ %.0252.lcssa, %._crit_edge654 ], [ %.lcssa327.unr, %.lr.ph667.prol.loopexit ], [ %i.acn, %.lr.ph667 ]
  %.5505.lcssa = phi ptr [ %.4504.lcssa, %._crit_edge654 ], [ %.lcssa326.unr, %.lr.ph667.prol.loopexit ], [ %i.acp, %.lr.ph667 ] ; 2 uses
  store <4 x float> %.1254.lcssa, ptr %.17673, align 1, !tbaa !89
  %i.acr = getelementptr inbounds nuw i8, ptr %.17673, i64 16 ; 2 uses
  %i.acs = add nuw nsw i32 %.1497672, 4           ; 3 uses
  %i.act = or disjoint i32 %i.acs, 3
  %i.acu = icmp slt i32 %i.act, %1
  br i1 %i.acu, label %.lr.ph674, label %.preheader291, !llvm.loop !1220

.preheader:                                       ; preds = %._crit_edge710, %.preheader291
  %.6506.lcssa = phi ptr [ %.3503.lcssa, %.preheader291 ], [ %.8508.lcssa, %._crit_edge710 ]
  %.2498.lcssa = phi i32 [ %.1497.lcssa, %.preheader291 ], [ %i.aqc, %._crit_edge710 ] ; 2 uses
  %.18.lcssa = phi ptr [ %.17.lcssa, %.preheader291 ], [ %i.aqb, %._crit_edge710 ] ; 2 uses
  %i.acv = icmp slt i32 %.2498.lcssa, %1
  br i1 %i.acv, label %.lr.ph750.preheader, label %._crit_edge751

.lr.ph750.preheader:                              ; preds = %.preheader
  %i.acw = getelementptr i8, ptr %.3755, i64 %i.pt ; 2 uses
  br label %.lr.ph750

.lr.ph717:                                        ; preds = %.lr.ph717.preheader, %._crit_edge710
  %.18716 = phi ptr [ %i.aqb, %._crit_edge710 ], [ %.17.lcssa, %.lr.ph717.preheader ] ; 3 uses
  %.2498715 = phi i32 [ %i.aqc, %._crit_edge710 ], [ %.1497.lcssa, %.lr.ph717.preheader ]
  %.6506714 = phi ptr [ %.8508.lcssa, %._crit_edge710 ], [ %.3503.lcssa, %.lr.ph717.preheader ] ; 8 uses
  br i1 %.not582, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph717
  %i.acx = load <2 x float>, ptr %.18716, align 4, !tbaa !68
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph717
  %i.acy = phi <2 x float> [ %i.acx, %bb.y ], [ zeroinitializer, %.lr.ph717 ] ; 2 uses
  br i1 %i.pa, label %.lr.ph690.preheader, label %._crit_edge691

.lr.ph690.preheader:                              ; preds = %bb.z
  br i1 %min.iters.check266, label %.lr.ph690.preheader308, label %vector.ph267

vector.ph267:                                     ; preds = %.lr.ph690.preheader
  %i.acz = getelementptr i8, ptr %.6506714, i64 %i.pp
  br label %vector.body269

vector.body269:                                   ; preds = %vector.body269, %vector.ph267
  %index270 = phi i64 [ 0, %vector.ph267 ], [ %index.next287, %vector.body269 ] ; 3 uses
  %vec.phi271 = phi <4 x float> [ zeroinitializer, %vector.ph267 ], [ %i.akn, %vector.body269 ]
  %vec.phi272 = phi <4 x float> [ zeroinitializer, %vector.ph267 ], [ %i.ajf, %vector.body269 ]
  %vec.phi273 = phi <4 x float> [ zeroinitializer, %vector.ph267 ], [ %i.ahx, %vector.body269 ]
  %vec.phi274 = phi <4 x float> [ zeroinitializer, %vector.ph267 ], [ %i.agp, %vector.body269 ]
  %vec.phi275 = phi <4 x float> [ zeroinitializer, %vector.ph267 ], [ %i.ajw, %vector.body269 ]
  %vec.phi276 = phi <4 x float> [ zeroinitializer, %vector.ph267 ], [ %i.aio, %vector.body269 ]
  %vec.phi277 = phi <4 x float> [ zeroinitializer, %vector.ph267 ], [ %i.ahg, %vector.body269 ]
  %vec.phi278 = phi <4 x float> [ zeroinitializer, %vector.ph267 ], [ %i.afy, %vector.body269 ]
  %i.ada = shl i64 %index270, 3                   ; 4 uses
  %next.gep279 = getelementptr i8, ptr %.3755, i64 %i.ada ; 4 uses
  %i.adb = getelementptr i8, ptr %.3755, i64 %i.ada ; 4 uses
  %next.gep280 = getelementptr i8, ptr %i.adb, i64 8
  %i.adc = getelementptr i8, ptr %.3755, i64 %i.ada ; 4 uses
  %next.gep281 = getelementptr i8, ptr %i.adc, i64 16
  %i.add = getelementptr i8, ptr %.3755, i64 %i.ada ; 4 uses
  %next.gep282 = getelementptr i8, ptr %i.add, i64 24
  %i.ade = shl i64 %index270, 4                   ; 4 uses
  %next.gep283 = getelementptr i8, ptr %.6506714, i64 %i.ade ; 8 uses
  %i.adf = getelementptr i8, ptr %.6506714, i64 %i.ade ; 8 uses
  %next.gep284 = getelementptr i8, ptr %i.adf, i64 16
  %i.adg = getelementptr i8, ptr %.6506714, i64 %i.ade ; 8 uses
  %next.gep285 = getelementptr i8, ptr %i.adg, i64 32
  %i.adh = getelementptr i8, ptr %.6506714, i64 %i.ade ; 8 uses
  %next.gep286 = getelementptr i8, ptr %i.adh, i64 48
  %i.adi = load i16, ptr %next.gep279, align 2, !tbaa !108
  %i.adj = load i16, ptr %next.gep280, align 2, !tbaa !108
  %i.adk = load i16, ptr %next.gep281, align 2, !tbaa !108
  %i.adl = load i16, ptr %next.gep282, align 2, !tbaa !108
  %i.adm = insertelement <4 x i16> poison, i16 %i.adi, i64 0
  %i.adn = insertelement <4 x i16> %i.adm, i16 %i.adj, i64 1
  %i.ado = insertelement <4 x i16> %i.adn, i16 %i.adk, i64 2
  %i.adp = insertelement <4 x i16> %i.ado, i16 %i.adl, i64 3
  %i.adq = zext <4 x i16> %i.adp to <4 x i32>
  %i.adr = shl nuw <4 x i32> %i.adq, splat (i32 16)
  %i.ads = bitcast <4 x i32> %i.adr to <4 x float> ; 2 uses
  %i.adt = getelementptr inbounds nuw i8, ptr %next.gep279, i64 2
  %i.adu = getelementptr i8, ptr %i.adb, i64 10
  %i.adv = getelementptr i8, ptr %i.adc, i64 18
  %i.adw = getelementptr i8, ptr %i.add, i64 26
  %i.adx = load i16, ptr %i.adt, align 2, !tbaa !108
  %i.ady = load i16, ptr %i.adu, align 2, !tbaa !108
  %i.adz = load i16, ptr %i.adv, align 2, !tbaa !108
  %i.aea = load i16, ptr %i.adw, align 2, !tbaa !108
  %i.aeb = insertelement <4 x i16> poison, i16 %i.adx, i64 0
  %i.aec = insertelement <4 x i16> %i.aeb, i16 %i.ady, i64 1
  %i.aed = insertelement <4 x i16> %i.aec, i16 %i.adz, i64 2
  %i.aee = insertelement <4 x i16> %i.aed, i16 %i.aea, i64 3
  %i.aef = zext <4 x i16> %i.aee to <4 x i32>
  %i.aeg = shl nuw <4 x i32> %i.aef, splat (i32 16)
  %i.aeh = bitcast <4 x i32> %i.aeg to <4 x float> ; 2 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %next.gep279, i64 4
  %i.aej = getelementptr i8, ptr %i.adb, i64 12
  %i.aek = getelementptr i8, ptr %i.adc, i64 20
  %i.ael = getelementptr i8, ptr %i.add, i64 28
  %i.aem = load i16, ptr %i.aei, align 2, !tbaa !108
  %i.aen = load i16, ptr %i.aej, align 2, !tbaa !108
  %i.aeo = load i16, ptr %i.aek, align 2, !tbaa !108
  %i.aep = load i16, ptr %i.ael, align 2, !tbaa !108
  %i.aeq = insertelement <4 x i16> poison, i16 %i.aem, i64 0
  %i.aer = insertelement <4 x i16> %i.aeq, i16 %i.aen, i64 1
  %i.aes = insertelement <4 x i16> %i.aer, i16 %i.aeo, i64 2
  %i.aet = insertelement <4 x i16> %i.aes, i16 %i.aep, i64 3
  %i.aeu = zext <4 x i16> %i.aet to <4 x i32>
  %i.aev = shl nuw <4 x i32> %i.aeu, splat (i32 16)
  %i.aew = bitcast <4 x i32> %i.aev to <4 x float> ; 2 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %next.gep279, i64 6
  %i.aey = getelementptr i8, ptr %i.adb, i64 14
  %i.aez = getelementptr i8, ptr %i.adc, i64 22
  %i.afa = getelementptr i8, ptr %i.add, i64 30
  %i.afb = load i16, ptr %i.aex, align 2, !tbaa !108
  %i.afc = load i16, ptr %i.aey, align 2, !tbaa !108
  %i.afd = load i16, ptr %i.aez, align 2, !tbaa !108
  %i.afe = load i16, ptr %i.afa, align 2, !tbaa !108
  %i.aff = insertelement <4 x i16> poison, i16 %i.afb, i64 0
  %i.afg = insertelement <4 x i16> %i.aff, i16 %i.afc, i64 1
  %i.afh = insertelement <4 x i16> %i.afg, i16 %i.afd, i64 2
  %i.afi = insertelement <4 x i16> %i.afh, i16 %i.afe, i64 3
  %i.afj = zext <4 x i16> %i.afi to <4 x i32>
  %i.afk = shl nuw <4 x i32> %i.afj, splat (i32 16)
  %i.afl = bitcast <4 x i32> %i.afk to <4 x float> ; 2 uses
  %i.afm = load i16, ptr %next.gep283, align 2, !tbaa !108
  %i.afn = load i16, ptr %next.gep284, align 2, !tbaa !108
  %i.afo = load i16, ptr %next.gep285, align 2, !tbaa !108
  %i.afp = load i16, ptr %next.gep286, align 2, !tbaa !108
  %i.afq = insertelement <4 x i16> poison, i16 %i.afm, i64 0
  %i.afr = insertelement <4 x i16> %i.afq, i16 %i.afn, i64 1
  %i.afs = insertelement <4 x i16> %i.afr, i16 %i.afo, i64 2
  %i.aft = insertelement <4 x i16> %i.afs, i16 %i.afp, i64 3
  %i.afu = zext <4 x i16> %i.aft to <4 x i32>
  %i.afv = shl nuw <4 x i32> %i.afu, splat (i32 16)
  %i.afw = bitcast <4 x i32> %i.afv to <4 x float>
  %i.afx = fmul fast <4 x float> %i.afw, %i.ads
  %i.afy = fadd fast <4 x float> %i.afx, %vec.phi278 ; 2 uses
  %i.afz = getelementptr inbounds nuw i8, ptr %next.gep283, i64 2
  %i.aga = getelementptr i8, ptr %i.adf, i64 18
  %i.agb = getelementptr i8, ptr %i.adg, i64 34
  %i.agc = getelementptr i8, ptr %i.adh, i64 50
  %i.agd = load i16, ptr %i.afz, align 2, !tbaa !108
  %i.age = load i16, ptr %i.aga, align 2, !tbaa !108
  %i.agf = load i16, ptr %i.agb, align 2, !tbaa !108
  %i.agg = load i16, ptr %i.agc, align 2, !tbaa !108
  %i.agh = insertelement <4 x i16> poison, i16 %i.agd, i64 0
  %i.agi = insertelement <4 x i16> %i.agh, i16 %i.age, i64 1
  %i.agj = insertelement <4 x i16> %i.agi, i16 %i.agf, i64 2
  %i.agk = insertelement <4 x i16> %i.agj, i16 %i.agg, i64 3
  %i.agl = zext <4 x i16> %i.agk to <4 x i32>
  %i.agm = shl nuw <4 x i32> %i.agl, splat (i32 16)
  %i.agn = bitcast <4 x i32> %i.agm to <4 x float>
  %i.ago = fmul fast <4 x float> %i.agn, %i.ads
  %i.agp = fadd fast <4 x float> %i.ago, %vec.phi274 ; 2 uses
  %i.agq = getelementptr inbounds nuw i8, ptr %next.gep283, i64 4
  %i.agr = getelementptr i8, ptr %i.adf, i64 20
  %i.ags = getelementptr i8, ptr %i.adg, i64 36
  %i.agt = getelementptr i8, ptr %i.adh, i64 52
  %i.agu = load i16, ptr %i.agq, align 2, !tbaa !108
  %i.agv = load i16, ptr %i.agr, align 2, !tbaa !108
  %i.agw = load i16, ptr %i.ags, align 2, !tbaa !108
  %i.agx = load i16, ptr %i.agt, align 2, !tbaa !108
  %i.agy = insertelement <4 x i16> poison, i16 %i.agu, i64 0
  %i.agz = insertelement <4 x i16> %i.agy, i16 %i.agv, i64 1
  %i.aha = insertelement <4 x i16> %i.agz, i16 %i.agw, i64 2
  %i.ahb = insertelement <4 x i16> %i.aha, i16 %i.agx, i64 3
  %i.ahc = zext <4 x i16> %i.ahb to <4 x i32>
  %i.ahd = shl nuw <4 x i32> %i.ahc, splat (i32 16)
  %i.ahe = bitcast <4 x i32> %i.ahd to <4 x float>
  %i.ahf = fmul fast <4 x float> %i.ahe, %i.aeh
  %i.ahg = fadd fast <4 x float> %i.ahf, %vec.phi277 ; 2 uses
  %i.ahh = getelementptr inbounds nuw i8, ptr %next.gep283, i64 6
  %i.ahi = getelementptr i8, ptr %i.adf, i64 22
  %i.ahj = getelementptr i8, ptr %i.adg, i64 38
  %i.ahk = getelementptr i8, ptr %i.adh, i64 54
  %i.ahl = load i16, ptr %i.ahh, align 2, !tbaa !108
  %i.ahm = load i16, ptr %i.ahi, align 2, !tbaa !108
  %i.ahn = load i16, ptr %i.ahj, align 2, !tbaa !108
  %i.aho = load i16, ptr %i.ahk, align 2, !tbaa !108
  %i.ahp = insertelement <4 x i16> poison, i16 %i.ahl, i64 0
  %i.ahq = insertelement <4 x i16> %i.ahp, i16 %i.ahm, i64 1
  %i.ahr = insertelement <4 x i16> %i.ahq, i16 %i.ahn, i64 2
  %i.ahs = insertelement <4 x i16> %i.ahr, i16 %i.aho, i64 3
  %i.aht = zext <4 x i16> %i.ahs to <4 x i32>
  %i.ahu = shl nuw <4 x i32> %i.aht, splat (i32 16)
  %i.ahv = bitcast <4 x i32> %i.ahu to <4 x float>
  %i.ahw = fmul fast <4 x float> %i.ahv, %i.aeh
  %i.ahx = fadd fast <4 x float> %i.ahw, %vec.phi273 ; 2 uses
  %i.ahy = getelementptr inbounds nuw i8, ptr %next.gep283, i64 8
  %i.ahz = getelementptr i8, ptr %i.adf, i64 24
  %i.aia = getelementptr i8, ptr %i.adg, i64 40
  %i.aib = getelementptr i8, ptr %i.adh, i64 56
  %i.aic = load i16, ptr %i.ahy, align 2, !tbaa !108
  %i.aid = load i16, ptr %i.ahz, align 2, !tbaa !108
  %i.aie = load i16, ptr %i.aia, align 2, !tbaa !108
  %i.aif = load i16, ptr %i.aib, align 2, !tbaa !108
  %i.aig = insertelement <4 x i16> poison, i16 %i.aic, i64 0
  %i.aih = insertelement <4 x i16> %i.aig, i16 %i.aid, i64 1
  %i.aii = insertelement <4 x i16> %i.aih, i16 %i.aie, i64 2
  %i.aij = insertelement <4 x i16> %i.aii, i16 %i.aif, i64 3
  %i.aik = zext <4 x i16> %i.aij to <4 x i32>
  %i.ail = shl nuw <4 x i32> %i.aik, splat (i32 16)
  %i.aim = bitcast <4 x i32> %i.ail to <4 x float>
  %i.ain = fmul fast <4 x float> %i.aim, %i.aew
  %i.aio = fadd fast <4 x float> %i.ain, %vec.phi276 ; 2 uses
  %i.aip = getelementptr inbounds nuw i8, ptr %next.gep283, i64 10
  %i.aiq = getelementptr i8, ptr %i.adf, i64 26
  %i.air = getelementptr i8, ptr %i.adg, i64 42
  %i.ais = getelementptr i8, ptr %i.adh, i64 58
  %i.ait = load i16, ptr %i.aip, align 2, !tbaa !108
  %i.aiu = load i16, ptr %i.aiq, align 2, !tbaa !108
  %i.aiv = load i16, ptr %i.air, align 2, !tbaa !108
  %i.aiw = load i16, ptr %i.ais, align 2, !tbaa !108
  %i.aix = insertelement <4 x i16> poison, i16 %i.ait, i64 0
  %i.aiy = insertelement <4 x i16> %i.aix, i16 %i.aiu, i64 1
  %i.aiz = insertelement <4 x i16> %i.aiy, i16 %i.aiv, i64 2
  %i.aja = insertelement <4 x i16> %i.aiz, i16 %i.aiw, i64 3
  %i.ajb = zext <4 x i16> %i.aja to <4 x i32>
  %i.ajc = shl nuw <4 x i32> %i.ajb, splat (i32 16)
  %i.ajd = bitcast <4 x i32> %i.ajc to <4 x float>
  %i.aje = fmul fast <4 x float> %i.ajd, %i.aew
  %i.ajf = fadd fast <4 x float> %i.aje, %vec.phi272 ; 2 uses
  %i.ajg = getelementptr inbounds nuw i8, ptr %next.gep283, i64 12
  %i.ajh = getelementptr i8, ptr %i.adf, i64 28
  %i.aji = getelementptr i8, ptr %i.adg, i64 44
  %i.ajj = getelementptr i8, ptr %i.adh, i64 60
  %i.ajk = load i16, ptr %i.ajg, align 2, !tbaa !108
  %i.ajl = load i16, ptr %i.ajh, align 2, !tbaa !108
  %i.ajm = load i16, ptr %i.aji, align 2, !tbaa !108
  %i.ajn = load i16, ptr %i.ajj, align 2, !tbaa !108
  %i.ajo = insertelement <4 x i16> poison, i16 %i.ajk, i64 0
  %i.ajp = insertelement <4 x i16> %i.ajo, i16 %i.ajl, i64 1
  %i.ajq = insertelement <4 x i16> %i.ajp, i16 %i.ajm, i64 2
  %i.ajr = insertelement <4 x i16> %i.ajq, i16 %i.ajn, i64 3
  %i.ajs = zext <4 x i16> %i.ajr to <4 x i32>
  %i.ajt = shl nuw <4 x i32> %i.ajs, splat (i32 16)
  %i.aju = bitcast <4 x i32> %i.ajt to <4 x float>
  %i.ajv = fmul fast <4 x float> %i.aju, %i.afl
  %i.ajw = fadd fast <4 x float> %i.ajv, %vec.phi275 ; 2 uses
  %i.ajx = getelementptr inbounds nuw i8, ptr %next.gep283, i64 14
  %i.ajy = getelementptr i8, ptr %i.adf, i64 30
  %i.ajz = getelementptr i8, ptr %i.adg, i64 46
  %i.aka = getelementptr i8, ptr %i.adh, i64 62
  %i.akb = load i16, ptr %i.ajx, align 2, !tbaa !108
  %i.akc = load i16, ptr %i.ajy, align 2, !tbaa !108
  %i.akd = load i16, ptr %i.ajz, align 2, !tbaa !108
  %i.ake = load i16, ptr %i.aka, align 2, !tbaa !108
  %i.akf = insertelement <4 x i16> poison, i16 %i.akb, i64 0
  %i.akg = insertelement <4 x i16> %i.akf, i16 %i.akc, i64 1
  %i.akh = insertelement <4 x i16> %i.akg, i16 %i.akd, i64 2
  %i.aki = insertelement <4 x i16> %i.akh, i16 %i.ake, i64 3
  %i.akj = zext <4 x i16> %i.aki to <4 x i32>
  %i.akk = shl nuw <4 x i32> %i.akj, splat (i32 16)
  %i.akl = bitcast <4 x i32> %i.akk to <4 x float>
  %i.akm = fmul fast <4 x float> %i.akl, %i.afl
  %i.akn = fadd fast <4 x float> %i.akm, %vec.phi271 ; 2 uses
  %index.next287 = add nuw i64 %index270, 4       ; 2 uses
  %i.ako = icmp eq i64 %index.next287, %n.vec268
  br i1 %i.ako, label %middle.block288, label %vector.body269, !llvm.loop !1221

middle.block288:                                  ; preds = %vector.body269
  %i.akp = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.akn)
  %i.akq = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.ajf)
  %i.akr = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.ahx)
  %i.aks = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.agp)
  %i.akt = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.ajw)
  %i.aku = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.aio)
  %i.akv = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.ahg)
  %i.akw = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.afy)
  %i.akx = insertelement <2 x float> poison, float %i.akw, i64 0
  %i.aky = insertelement <2 x float> %i.akx, float %i.aks, i64 1 ; 2 uses
  %i.akz = insertelement <2 x float> poison, float %i.akv, i64 0
  %i.ala = insertelement <2 x float> %i.akz, float %i.akr, i64 1 ; 2 uses
  %i.alb = insertelement <2 x float> poison, float %i.aku, i64 0
  %i.alc = insertelement <2 x float> %i.alb, float %i.akq, i64 1 ; 2 uses
  %i.ald = insertelement <2 x float> poison, float %i.akt, i64 0
  %i.ale = insertelement <2 x float> %i.ald, float %i.akp, i64 1 ; 2 uses
  br i1 %cmp.n289, label %._crit_edge691.loopexit, label %.lr.ph690.preheader308

.lr.ph690.preheader308:                           ; preds = %.lr.ph690.preheader, %middle.block288
  %.0480680.ph = phi i32 [ 0, %.lr.ph690.preheader ], [ %i.pn, %middle.block288 ]
  %.0482679.ph = phi ptr [ %.3755, %.lr.ph690.preheader ], [ %i.zf, %middle.block288 ]
  %.7507678.ph = phi ptr [ %.6506714, %.lr.ph690.preheader ], [ %i.acz, %middle.block288 ]
  %.ph309 = phi <2 x float> [ zeroinitializer, %.lr.ph690.preheader ], [ %i.aky, %middle.block288 ]
  %.ph310 = phi <2 x float> [ zeroinitializer, %.lr.ph690.preheader ], [ %i.ala, %middle.block288 ]
  %.ph311 = phi <2 x float> [ zeroinitializer, %.lr.ph690.preheader ], [ %i.alc, %middle.block288 ]
  %.ph312 = phi <2 x float> [ zeroinitializer, %.lr.ph690.preheader ], [ %i.ale, %middle.block288 ]
  br label %.lr.ph690

.lr.ph690:                                        ; preds = %.lr.ph690.preheader308, %.lr.ph690
  %.0480680 = phi i32 [ %i.amu, %.lr.ph690 ], [ %.0480680.ph, %.lr.ph690.preheader308 ]
  %.0482679 = phi ptr [ %i.ams, %.lr.ph690 ], [ %.0482679.ph, %.lr.ph690.preheader308 ] ; 2 uses
  %.7507678 = phi ptr [ %i.amt, %.lr.ph690 ], [ %.7507678.ph, %.lr.ph690.preheader308 ] ; 5 uses
  %i.alf = phi <2 x float> [ %i.alw, %.lr.ph690 ], [ %.ph309, %.lr.ph690.preheader308 ]
  %i.alg = phi <2 x float> [ %i.amd, %.lr.ph690 ], [ %.ph310, %.lr.ph690.preheader308 ]
  %i.alh = phi <2 x float> [ %i.amk, %.lr.ph690 ], [ %.ph311, %.lr.ph690.preheader308 ]
  %i.ali = phi <2 x float> [ %i.amr, %.lr.ph690 ], [ %.ph312, %.lr.ph690.preheader308 ]
  %i.alj = getelementptr inbounds nuw i8, ptr %.7507678, i64 4
  %i.alk = getelementptr inbounds nuw i8, ptr %.7507678, i64 8
  %i.all = getelementptr inbounds nuw i8, ptr %.7507678, i64 12
  %i.alm = load <4 x i16>, ptr %.0482679, align 2, !tbaa !108
  %i.aln = zext <4 x i16> %i.alm to <4 x i32>
  %i.alo = shl nuw <4 x i32> %i.aln, splat (i32 16)
  %i.alp = bitcast <4 x i32> %i.alo to <4 x float> ; 4 uses
  %i.alq = load <2 x i16>, ptr %.7507678, align 2, !tbaa !108
  %i.alr = zext <2 x i16> %i.alq to <2 x i32>
  %i.als = shl nuw <2 x i32> %i.alr, splat (i32 16)
  %i.alt = bitcast <2 x i32> %i.als to <2 x float>
  %i.alu = shufflevector <4 x float> %i.alp, <4 x float> poison, <2 x i32> zeroinitializer
  %i.alv = fmul fast <2 x float> %i.alu, %i.alt
  %i.alw = fadd fast <2 x float> %i.alv, %i.alf   ; 2 uses
  %i.alx = load <2 x i16>, ptr %i.alj, align 2, !tbaa !108
  %i.aly = zext <2 x i16> %i.alx to <2 x i32>
  %i.alz = shl nuw <2 x i32> %i.aly, splat (i32 16)
  %i.ama = bitcast <2 x i32> %i.alz to <2 x float>
  %i.amb = shufflevector <4 x float> %i.alp, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.amc = fmul fast <2 x float> %i.amb, %i.ama
  %i.amd = fadd fast <2 x float> %i.amc, %i.alg   ; 2 uses
  %i.ame = load <2 x i16>, ptr %i.alk, align 2, !tbaa !108
  %i.amf = zext <2 x i16> %i.ame to <2 x i32>
  %i.amg = shl nuw <2 x i32> %i.amf, splat (i32 16)
  %i.amh = bitcast <2 x i32> %i.amg to <2 x float>
  %i.ami = shufflevector <4 x float> %i.alp, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.amj = fmul fast <2 x float> %i.ami, %i.amh
  %i.amk = fadd fast <2 x float> %i.amj, %i.alh   ; 2 uses
  %i.aml = load <2 x i16>, ptr %i.all, align 2, !tbaa !108
  %i.amm = zext <2 x i16> %i.aml to <2 x i32>
  %i.amn = shl nuw <2 x i32> %i.amm, splat (i32 16)
  %i.amo = bitcast <2 x i32> %i.amn to <2 x float>
  %i.amp = shufflevector <4 x float> %i.alp, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.amq = fmul fast <2 x float> %i.amp, %i.amo
  %i.amr = fadd fast <2 x float> %i.amq, %i.ali   ; 2 uses
  %i.ams = getelementptr inbounds nuw i8, ptr %.0482679, i64 8 ; 2 uses
  %i.amt = getelementptr inbounds nuw i8, ptr %.7507678, i64 16
  %i.amu = add nuw nsw i32 %.0480680, 4           ; 2 uses
  %i.amv = or disjoint i32 %i.amu, 3
  %i.amw = icmp slt i32 %i.amv, %3
  br i1 %i.amw, label %.lr.ph690, label %._crit_edge691.loopexit, !llvm.loop !1222

._crit_edge691.loopexit:                          ; preds = %.lr.ph690, %middle.block288
  %.lcssa21 = phi ptr [ %i.zf, %middle.block288 ], [ %i.ams, %.lr.ph690 ]
  %i.amx = phi <2 x float> [ %i.aky, %middle.block288 ], [ %i.alw, %.lr.ph690 ]
  %i.amy = phi <2 x float> [ %i.ala, %middle.block288 ], [ %i.amd, %.lr.ph690 ]
  %i.amz = phi <2 x float> [ %i.alc, %middle.block288 ], [ %i.amk, %.lr.ph690 ]
  %i.ana = phi <2 x float> [ %i.ale, %middle.block288 ], [ %i.amr, %.lr.ph690 ]
  %i.anb = getelementptr i8, ptr %.6506714, i64 %i.pj
  %scevgep946 = getelementptr i8, ptr %i.anb, i64 16
  %i.anc = fadd fast <2 x float> %i.amx, %i.acy
  %i.and = fadd fast <2 x float> %i.anc, %i.amy
  %i.ane = fadd fast <2 x float> %i.and, %i.amz
  %i.anf = fadd fast <2 x float> %i.ane, %i.ana
  br label %._crit_edge691

._crit_edge691:                                   ; preds = %._crit_edge691.loopexit, %bb.z
  %.7507.lcssa = phi ptr [ %.6506714, %bb.z ], [ %scevgep946, %._crit_edge691.loopexit ] ; 5 uses
  %.0482.lcssa = phi ptr [ %.3755, %bb.z ], [ %.lcssa21, %._crit_edge691.loopexit ] ; 3 uses
  %.0480.lcssa = phi i32 [ 0, %bb.z ], [ %i.pe, %._crit_edge691.loopexit ] ; 4 uses
  %i.ang = phi <2 x float> [ %i.acy, %bb.z ], [ %i.anf, %._crit_edge691.loopexit ] ; 4 uses
  %i.anh = icmp slt i32 %.0480.lcssa, %3
  br i1 %i.anh, label %.lr.ph709.preheader, label %._crit_edge710

.lr.ph709.preheader:                              ; preds = %._crit_edge691
  %i.ani = xor i32 %.0480.lcssa, -1
  %i.anj = add i32 %3, %i.ani                     ; 2 uses
  %i.ank = zext i32 %i.anj to i64
  %i.anl = add nuw nsw i64 %i.ank, 1              ; 2 uses
  %min.iters.check235 = icmp ult i32 %i.anj, 7
  %i.anm = extractelement <2 x float> %i.ang, i64 0
  %i.ann = extractelement <2 x float> %i.ang, i64 1
  br i1 %min.iters.check235, label %.lr.ph709.preheader307, label %vector.ph236

vector.ph236:                                     ; preds = %.lr.ph709.preheader
  %n.vec237 = and i64 %i.anl, 8589934584          ; 5 uses
  %i.ano = trunc i64 %n.vec237 to i32
  %i.anp = add i32 %.0480.lcssa, %i.ano
  %i.anq = shl nuw nsw i64 %n.vec237, 1
  %i.anr = getelementptr i8, ptr %.0482.lcssa, i64 %i.anq
  %i.ans = shl nuw nsw i64 %n.vec237, 2
  %i.ant = getelementptr i8, ptr %.7507.lcssa, i64 %i.ans ; 2 uses
  %i.anu = shufflevector <2 x float> %i.ang, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %61 = shufflevector <4 x float> %i.anu, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 1, i32 5, i32 6, i32 7>
  %i.anv = shufflevector <4 x float> %i.anu, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body238

vector.body238:                                   ; preds = %vector.body238, %vector.ph236
  %index239 = phi i64 [ 0, %vector.ph236 ], [ %index.next255, %vector.body238 ] ; 3 uses
  %vec.phi240 = phi <4 x float> [ %61, %vector.ph236 ], [ %i.apa, %vector.body238 ]
  %vec.phi241 = phi <4 x float> [ zeroinitializer, %vector.ph236 ], [ %i.apb, %vector.body238 ]
  %vec.phi242 = phi <4 x float> [ %i.anv, %vector.ph236 ], [ %i.aou, %vector.body238 ]
  %vec.phi243 = phi <4 x float> [ zeroinitializer, %vector.ph236 ], [ %i.aov, %vector.body238 ]
  %i.anw = shl i64 %index239, 1
  %next.gep244 = getelementptr i8, ptr %.0482.lcssa, i64 %i.anw ; 2 uses
  %i.anx = shl i64 %index239, 2                   ; 2 uses
  %next.gep245 = getelementptr i8, ptr %.7507.lcssa, i64 %i.anx
  %i.any = getelementptr i8, ptr %.7507.lcssa, i64 %i.anx
  %next.gep246 = getelementptr i8, ptr %i.any, i64 16
  %i.anz = getelementptr i8, ptr %next.gep244, i64 8
  %wide.load247 = load <4 x i16>, ptr %next.gep244, align 2, !tbaa !108
  %wide.load248 = load <4 x i16>, ptr %i.anz, align 2, !tbaa !108
  %i.aoa = zext <4 x i16> %wide.load247 to <4 x i32>
  %i.aob = zext <4 x i16> %wide.load248 to <4 x i32>
  %i.aoc = shl nuw <4 x i32> %i.aoa, splat (i32 16)
  %i.aod = shl nuw <4 x i32> %i.aob, splat (i32 16)
  %i.aoe = bitcast <4 x i32> %i.aoc to <4 x float> ; 2 uses
  %i.aof = bitcast <4 x i32> %i.aod to <4 x float> ; 2 uses
  %wide.vec249 = load <8 x i16>, ptr %next.gep245, align 2, !tbaa !108
  %i.aog = freeze <8 x i16> %wide.vec249          ; 2 uses
  %i.aoh = bitcast <8 x i16> %i.aog to <4 x i32>
  %i.aoi = bitcast <8 x i16> %i.aog to <4 x i32>
  %i.aoj = and <4 x i32> %i.aoi, splat (i32 -65536)
  %wide.vec252 = load <8 x i16>, ptr %next.gep246, align 2, !tbaa !108
  %i.aok = freeze <8 x i16> %wide.vec252          ; 2 uses
  %i.aol = bitcast <8 x i16> %i.aok to <4 x i32>
  %i.aom = bitcast <8 x i16> %i.aok to <4 x i32>
  %i.aon = and <4 x i32> %i.aom, splat (i32 -65536)
  %i.aoo = shl <4 x i32> %i.aoh, splat (i32 16)
  %i.aop = shl <4 x i32> %i.aol, splat (i32 16)
  %i.aoq = bitcast <4 x i32> %i.aoo to <4 x float>
  %i.aor = bitcast <4 x i32> %i.aop to <4 x float>
  %i.aos = fmul fast <4 x float> %i.aoq, %i.aoe
  %i.aot = fmul fast <4 x float> %i.aor, %i.aof
  %i.aou = fadd fast <4 x float> %i.aos, %vec.phi242 ; 2 uses
  %i.aov = fadd fast <4 x float> %i.aot, %vec.phi243 ; 2 uses
  %i.aow = bitcast <4 x i32> %i.aoj to <4 x float>
  %i.aox = bitcast <4 x i32> %i.aon to <4 x float>
  %i.aoy = fmul fast <4 x float> %i.aow, %i.aoe
  %i.aoz = fmul fast <4 x float> %i.aox, %i.aof
  %i.apa = fadd fast <4 x float> %i.aoy, %vec.phi240 ; 2 uses
  %i.apb = fadd fast <4 x float> %i.aoz, %vec.phi241 ; 2 uses
  %index.next255 = add nuw i64 %index239, 8       ; 2 uses
  %i.apc = icmp eq i64 %index.next255, %n.vec237
  br i1 %i.apc, label %middle.block256, label %vector.body238, !llvm.loop !1223

middle.block256:                                  ; preds = %vector.body238
  %bin.rdx257 = fadd fast <4 x float> %i.apb, %i.apa
  %i.apd = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx257) ; 2 uses
  %bin.rdx258 = fadd fast <4 x float> %i.aov, %i.aou
  %i.ape = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx258) ; 2 uses
  %cmp.n259 = icmp eq i64 %i.anl, %n.vec237
  %i.apf = insertelement <2 x float> poison, float %i.ape, i64 0
  %i.apg = insertelement <2 x float> %i.apf, float %i.apd, i64 1
  br i1 %cmp.n259, label %._crit_edge710, label %.lr.ph709.preheader307

.lr.ph709.preheader307:                           ; preds = %.lr.ph709.preheader, %middle.block256
  %.1481707.ph = phi i32 [ %.0480.lcssa, %.lr.ph709.preheader ], [ %i.anp, %middle.block256 ]
  %.1483706.ph = phi ptr [ %.0482.lcssa, %.lr.ph709.preheader ], [ %i.anr, %middle.block256 ]
  %.1485705.ph = phi float [ %i.ann, %.lr.ph709.preheader ], [ %i.apd, %middle.block256 ]
  %.1487704.ph = phi float [ %i.anm, %.lr.ph709.preheader ], [ %i.ape, %middle.block256 ]
  %.8508703.ph = phi ptr [ %.7507.lcssa, %.lr.ph709.preheader ], [ %i.ant, %middle.block256 ]
  br label %.lr.ph709

.lr.ph709:                                        ; preds = %.lr.ph709.preheader307, %.lr.ph709
  %.1481707 = phi i32 [ %i.apx, %.lr.ph709 ], [ %.1481707.ph, %.lr.ph709.preheader307 ]
  %.1483706 = phi ptr [ %i.apv, %.lr.ph709 ], [ %.1483706.ph, %.lr.ph709.preheader307 ] ; 2 uses
  %.1485705 = phi float [ %i.apz, %.lr.ph709 ], [ %.1485705.ph, %.lr.ph709.preheader307 ]
  %.1487704 = phi float [ %i.apy, %.lr.ph709 ], [ %.1487704.ph, %.lr.ph709.preheader307 ]
  %.8508703 = phi ptr [ %i.apw, %.lr.ph709 ], [ %.8508703.ph, %.lr.ph709.preheader307 ] ; 2 uses
  %i.aph = load i16, ptr %.1483706, align 2, !tbaa !108
  %i.api = zext i16 %i.aph to i32
  %i.apj = shl nuw i32 %i.api, 16
  %i.apk = load <2 x i16>, ptr %.8508703, align 2, !tbaa !108
  %i.apl = zext <2 x i16> %i.apk to <2 x i32>
  %i.apm = shl nuw <2 x i32> %i.apl, splat (i32 16)
  %i.apn = bitcast <2 x i32> %i.apm to <2 x float>
  %i.apo = insertelement <2 x i32> poison, i32 %i.apj, i64 0
  %i.app = bitcast <2 x i32> %i.apo to <2 x float>
  %i.apq = shufflevector <2 x float> %i.app, <2 x float> poison, <2 x i32> zeroinitializer
  %i.apr = fmul fast <2 x float> %i.apq, %i.apn
  %i.aps = insertelement <2 x float> poison, float %.1487704, i64 0
  %i.apt = insertelement <2 x float> %i.aps, float %.1485705, i64 1
  %i.apu = fadd fast <2 x float> %i.apr, %i.apt   ; 3 uses
  %i.apv = getelementptr inbounds nuw i8, ptr %.1483706, i64 2
  %i.apw = getelementptr inbounds nuw i8, ptr %.8508703, i64 4 ; 2 uses
  %i.apx = add nuw nsw i32 %.1481707, 1           ; 2 uses
  %exitcond947.not = icmp eq i32 %i.apx, %3
  %i.apy = extractelement <2 x float> %i.apu, i64 0
  %i.apz = extractelement <2 x float> %i.apu, i64 1
  br i1 %exitcond947.not, label %._crit_edge710, label %.lr.ph709, !llvm.loop !1224

._crit_edge710:                                   ; preds = %.lr.ph709, %middle.block256, %._crit_edge691
  %.8508.lcssa = phi ptr [ %.7507.lcssa, %._crit_edge691 ], [ %i.ant, %middle.block256 ], [ %i.apw, %.lr.ph709 ] ; 2 uses
  %i.aqa = phi <2 x float> [ %i.ang, %._crit_edge691 ], [ %i.apg, %middle.block256 ], [ %i.apu, %.lr.ph709 ]
  store <2 x float> %i.aqa, ptr %.18716, align 4, !tbaa !68
  %i.aqb = getelementptr inbounds nuw i8, ptr %.18716, i64 8 ; 2 uses
  %i.aqc = add nuw nsw i32 %.2498715, 2           ; 3 uses
  %i.aqd = or disjoint i32 %i.aqc, 1
  %i.aqe = icmp slt i32 %i.aqd, %1
  br i1 %i.aqe, label %.lr.ph717, label %.preheader, !llvm.loop !1225

.lr.ph750:                                        ; preds = %.lr.ph750.preheader, %._crit_edge744
  %.19749 = phi ptr [ %i.beb, %._crit_edge744 ], [ %.18.lcssa, %.lr.ph750.preheader ] ; 3 uses
  %.3499748 = phi i32 [ %i.bec, %._crit_edge744 ], [ %.2498.lcssa, %.lr.ph750.preheader ]
  %.9509747 = phi ptr [ %.11511.lcssa, %._crit_edge744 ], [ %.6506.lcssa, %.lr.ph750.preheader ] ; 12 uses
  br i1 %.not582, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph750
  %i.aqf = load float, ptr %.19749, align 4, !tbaa !68
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph750
  %.0450 = phi nsz float [ %i.aqf, %bb.aa ], [ 0.000000e+00, %.lr.ph750 ] ; 2 uses
  br i1 %i.pa, label %.lr.ph729.preheader, label %._crit_edge730

.lr.ph729.preheader:                              ; preds = %bb.ab
  br i1 %min.iters.check191, label %.lr.ph729.preheader306, label %vector.ph192

vector.ph192:                                     ; preds = %.lr.ph729.preheader
  %i.aqg = getelementptr i8, ptr %.9509747, i64 %i.pt
  br label %vector.body194

vector.body194:                                   ; preds = %vector.body194, %vector.ph192
  %index195 = phi i64 [ 0, %vector.ph192 ], [ %index.next220, %vector.body194 ] ; 2 uses
  %vec.phi196 = phi <4 x float> [ zeroinitializer, %vector.ph192 ], [ %i.azt, %vector.body194 ]
  %vec.phi197 = phi <4 x float> [ zeroinitializer, %vector.ph192 ], [ %i.azu, %vector.body194 ]
  %vec.phi198 = phi <4 x float> [ zeroinitializer, %vector.ph192 ], [ %i.axh, %vector.body194 ]
  %vec.phi199 = phi <4 x float> [ zeroinitializer, %vector.ph192 ], [ %i.axi, %vector.body194 ]
  %vec.phi200 = phi <4 x float> [ zeroinitializer, %vector.ph192 ], [ %i.auv, %vector.body194 ]
  %vec.phi201 = phi <4 x float> [ zeroinitializer, %vector.ph192 ], [ %i.auw, %vector.body194 ]
  %vec.phi202 = phi <4 x float> [ zeroinitializer, %vector.ph192 ], [ %i.asj, %vector.body194 ]
  %vec.phi203 = phi <4 x float> [ zeroinitializer, %vector.ph192 ], [ %i.ask, %vector.body194 ]
  %i.aqh = shl i64 %index195, 3                   ; 9 uses
  %i.aqi = or disjoint i64 %i.aqh, 8              ; 2 uses
  %i.aqj = or disjoint i64 %i.aqh, 16             ; 2 uses
  %i.aqk = or disjoint i64 %i.aqh, 24             ; 2 uses
  %i.aql = or disjoint i64 %i.aqh, 32             ; 2 uses
  %i.aqm = or disjoint i64 %i.aqh, 40             ; 2 uses
  %i.aqn = or disjoint i64 %i.aqh, 48             ; 2 uses
  %i.aqo = or disjoint i64 %i.aqh, 56             ; 2 uses
  %next.gep204 = getelementptr i8, ptr %.3755, i64 %i.aqh ; 4 uses
  %next.gep205 = getelementptr i8, ptr %.3755, i64 %i.aqi ; 4 uses
  %next.gep206 = getelementptr i8, ptr %.3755, i64 %i.aqj ; 4 uses
  %next.gep207 = getelementptr i8, ptr %.3755, i64 %i.aqk ; 4 uses
  %next.gep208 = getelementptr i8, ptr %.3755, i64 %i.aql ; 4 uses
  %next.gep209 = getelementptr i8, ptr %.3755, i64 %i.aqm ; 4 uses
  %next.gep210 = getelementptr i8, ptr %.3755, i64 %i.aqn ; 4 uses
  %next.gep211 = getelementptr i8, ptr %.3755, i64 %i.aqo ; 4 uses
  %next.gep212 = getelementptr i8, ptr %.9509747, i64 %i.aqh ; 4 uses
  %next.gep213 = getelementptr i8, ptr %.9509747, i64 %i.aqi ; 4 uses
  %next.gep214 = getelementptr i8, ptr %.9509747, i64 %i.aqj ; 4 uses
  %next.gep215 = getelementptr i8, ptr %.9509747, i64 %i.aqk ; 4 uses
  %next.gep216 = getelementptr i8, ptr %.9509747, i64 %i.aql ; 4 uses
  %next.gep217 = getelementptr i8, ptr %.9509747, i64 %i.aqm ; 4 uses
  %next.gep218 = getelementptr i8, ptr %.9509747, i64 %i.aqn ; 4 uses
  %next.gep219 = getelementptr i8, ptr %.9509747, i64 %i.aqo ; 4 uses
  %i.aqp = load i16, ptr %next.gep204, align 2, !tbaa !108
  %i.aqq = load i16, ptr %next.gep205, align 2, !tbaa !108
  %i.aqr = load i16, ptr %next.gep206, align 2, !tbaa !108
  %i.aqs = load i16, ptr %next.gep207, align 2, !tbaa !108
  %i.aqt = insertelement <4 x i16> poison, i16 %i.aqp, i64 0
  %i.aqu = insertelement <4 x i16> %i.aqt, i16 %i.aqq, i64 1
  %i.aqv = insertelement <4 x i16> %i.aqu, i16 %i.aqr, i64 2
  %i.aqw = insertelement <4 x i16> %i.aqv, i16 %i.aqs, i64 3
  %i.aqx = load i16, ptr %next.gep208, align 2, !tbaa !108
  %i.aqy = load i16, ptr %next.gep209, align 2, !tbaa !108
  %i.aqz = load i16, ptr %next.gep210, align 2, !tbaa !108
  %i.ara = load i16, ptr %next.gep211, align 2, !tbaa !108
  %i.arb = insertelement <4 x i16> poison, i16 %i.aqx, i64 0
  %i.arc = insertelement <4 x i16> %i.arb, i16 %i.aqy, i64 1
  %i.ard = insertelement <4 x i16> %i.arc, i16 %i.aqz, i64 2
  %i.are = insertelement <4 x i16> %i.ard, i16 %i.ara, i64 3
  %i.arf = zext <4 x i16> %i.aqw to <4 x i32>
  %i.arg = zext <4 x i16> %i.are to <4 x i32>
  %i.arh = shl nuw <4 x i32> %i.arf, splat (i32 16)
  %i.ari = shl nuw <4 x i32> %i.arg, splat (i32 16)
  %i.arj = bitcast <4 x i32> %i.arh to <4 x float>
  %i.ark = bitcast <4 x i32> %i.ari to <4 x float>
  %i.arl = load i16, ptr %next.gep212, align 2, !tbaa !108
  %i.arm = load i16, ptr %next.gep213, align 2, !tbaa !108
  %i.arn = load i16, ptr %next.gep214, align 2, !tbaa !108
  %i.aro = load i16, ptr %next.gep215, align 2, !tbaa !108
  %i.arp = insertelement <4 x i16> poison, i16 %i.arl, i64 0
  %i.arq = insertelement <4 x i16> %i.arp, i16 %i.arm, i64 1
  %i.arr = insertelement <4 x i16> %i.arq, i16 %i.arn, i64 2
  %i.ars = insertelement <4 x i16> %i.arr, i16 %i.aro, i64 3
  %i.art = load i16, ptr %next.gep216, align 2, !tbaa !108
  %i.aru = load i16, ptr %next.gep217, align 2, !tbaa !108
  %i.arv = load i16, ptr %next.gep218, align 2, !tbaa !108
  %i.arw = load i16, ptr %next.gep219, align 2, !tbaa !108
  %i.arx = insertelement <4 x i16> poison, i16 %i.art, i64 0
  %i.ary = insertelement <4 x i16> %i.arx, i16 %i.aru, i64 1
  %i.arz = insertelement <4 x i16> %i.ary, i16 %i.arv, i64 2
end_hunk_1
