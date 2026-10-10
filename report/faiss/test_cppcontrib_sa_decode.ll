Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/test_cppcontrib_sa_decode?download=true
inline.NumInlined: 5280
inline.NumDeleted: 463
loop-unroll.NumCompletelyUnrolled: 150
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 158
begin_hunk_0_@_Z30verifyMinMaxIndex2LevelDecoderIN5faiss10cppcontrib18IndexMinMaxDecoderINS1_18Index2LevelDecoderILl256ELl256ELl16ELl8ELl8EEEEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE:bb.a
  %.016.i.i.i.i = phi float [ f0x3F7FFFFF, %bb.ay ], [ %i.ew, %bb.ax ]
  %i.fi = fadd float %.016.i.i.i.i, 0.000000e+00  ; 2 uses
  br i1 %.not.i.i.i.i379, label %._crit_edge, label %.lr.ph1125.preheader

.lr.ph1125.preheader:                             ; preds = %_ZNSt25uniform_real_distributionIfEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEfRT_.exit
  br i1 %min.iters.check, label %.lr.ph1125.preheader1386, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph1125.preheader
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.fi, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0731.0874, i64 %index ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %wide.load = load <4 x float>, ptr %i.fj, align 4, !tbaa !75
  %wide.load1330 = load <4 x float>, ptr %i.fk, align 4, !tbaa !75
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0741.0831840, i64 %index ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16 ; 2 uses
  %wide.load1331 = load <4 x float>, ptr %i.fl, align 4, !tbaa !75
  %wide.load1332 = load <4 x float>, ptr %i.fm, align 4, !tbaa !75
  %i.fn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load, <4 x float> %wide.load1331)
  %i.fo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load1330, <4 x float> %wide.load1332)
  store <4 x float> %i.fn, ptr %i.fl, align 4, !tbaa !75
  store <4 x float> %i.fo, ptr %i.fm, align 4, !tbaa !75
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fp = icmp eq i64 %index.next, %n.vec
  br i1 %i.fp, label %middle.block, label %vector.body, !llvm.loop !686

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph1125.preheader1386

.lr.ph1125.preheader1386:                         ; preds = %.lr.ph1125.preheader, %middle.block
  %.02101124.ph = phi i64 [ 0, %.lr.ph1125.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph1125

._crit_edge:                                      ; preds = %.lr.ph1125, %middle.block, %_ZNSt25uniform_real_distributionIfEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEfRT_.exit
  %i.fq = add nuw i64 %.02121128, 1               ; 2 uses
  %exitcond1186.not = icmp eq i64 %i.fq, %0
  br i1 %exitcond1186.not, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i421, label %bb.ai, !llvm.loop !687

.lr.ph1125:                                       ; preds = %.lr.ph1125.preheader1386, %.lr.ph1125
  %.02101124 = phi i64 [ %i.fw, %.lr.ph1125 ], [ %.02101124.ph, %.lr.ph1125.preheader1386 ] ; 3 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0731.0874, i64 %.02101124
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !75
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0741.0831840, i64 %.02101124 ; 2 uses
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !75
  %i.fv = call float @llvm.fmuladd.f32(float %i.fi, float %i.fs, float %i.fu)
  store float %i.fv, ptr %i.ft, align 4, !tbaa !75
  %i.fw = add nuw nsw i64 %.02101124, 1           ; 2 uses
  %exitcond1185.not = icmp eq i64 %i.fw, %1
  br i1 %exitcond1185.not, label %._crit_edge, label %.lr.ph1125, !llvm.loop !688

_ZNSt6vectorIfSaIfEED2Ev.exit624.thread:          ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i409, %_ZN7testing7MessageD2Ev.exit406
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.ey

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i421: ; preds = %._crit_edge, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit401
  br i1 %.not.i.i.i.i379, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit430, label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i421
  %i.fx = shl nuw nsw i64 %1, 2                   ; 2 uses
  %i.fy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fx) #24
          to label %.noexc429 unwind label %bb.ba ; 3 uses

.noexc429:                                        ; preds = %bb.az
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.fy, i8 0, i64 %i.fx, i1 false), !tbaa !75
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %1
  %i.ga = ptrtoint ptr %i.fz to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit430

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit430:         ; preds = %.noexc429, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i421
  %.sroa.0704.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i421 ], [ %i.fy, %.noexc429 ] ; 24 uses
  %.sroa.23.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i421 ], [ %i.ga, %.noexc429 ] ; 2 uses
  br i1 %.not2861126.not, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i458, label %.lr.ph1140

.lr.ph1140:                                       ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit430
  %i.gb = call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.gc = call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.gd = fdiv x86_fp80 %i.gb, %i.gc
  %i.ge = fptoui x86_fp80 %i.gd to i64            ; 2 uses
  %i.gf = add i64 %i.ge, 23
  %i.gg = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.gh = add nsw i64 %1, -1
  %xtraiter = and i64 %1, 3                       ; 3 uses
  %i.gi = icmp ult i64 %i.gh, 3
  %unroll_iter = and i64 %1, 2305843009213693948
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod1390 = icmp ne i64 %xtraiter, 0
  br label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit640

bb.bb:                                            ; preds = %.lr.ph1140, %.critedge348
  %.02091139 = phi i64 [ 0, %.lr.ph1140 ], [ %i.jp, %.critedge348 ] ; 2 uses
  %.sroa.0760.11138 = phi i64 [ 123, %.lr.ph1140 ], [ %i.ha, %.critedge348 ]
  %i.gk = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.gl = load ptr, ptr %3, align 8, !tbaa !43
  %i.gm = mul i64 %.02091139, %i.bv               ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.gm
  %i.go = load ptr, ptr %i.gk, align 8, !tbaa !32
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 208
  %i.gq = load ptr, ptr %i.gp, align 8
  invoke void %i.gq(ptr noundef nonnull align 8 dereferenceable(36) %i.gk, i64 noundef 1, ptr noundef %i.gn, ptr noundef %.sroa.0731.0874)
          to label %.preheader1101 unwind label %bb.be

.preheader1101:                                   ; preds = %bb.bb
  br i1 %.not.i.i.i.i379, label %._crit_edge1132, label %.lr.ph1131.preheader

.lr.ph1131.preheader:                             ; preds = %.preheader1101
  br i1 %i.gi, label %.lr.ph1131.epil.preheader, label %.lr.ph1131

._crit_edge1132.loopexit.unr-lcssa:               ; preds = %.lr.ph1131
  br i1 %lcmp.mod.not, label %._crit_edge1132, label %.lr.ph1131.epil.preheader

.lr.ph1131.epil.preheader:                        ; preds = %._crit_edge1132.loopexit.unr-lcssa, %.lr.ph1131.preheader
  %.02081130.epil.init = phi i64 [ 0, %.lr.ph1131.preheader ], [ %i.hv, %._crit_edge1132.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1390)
  br label %.lr.ph1131.epil

.lr.ph1131.epil:                                  ; preds = %.lr.ph1131.epil, %.lr.ph1131.epil.preheader
  %.02081130.epil = phi i64 [ %i.gr, %.lr.ph1131.epil ], [ %.02081130.epil.init, %.lr.ph1131.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph1131.epil ], [ 0, %.lr.ph1131.epil.preheader ]
  %i.gr = add nuw nsw i64 %.02081130.epil, 1      ; 3 uses
  %i.gs = mul i64 %i.gr, %i.gr
  %i.gt = uitofp i64 %i.gs to float
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0704.0, i64 %.02081130.epil
  store float %i.gt, ptr %i.gu, align 4, !tbaa !75
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge1132, label %.lr.ph1131.epil, !llvm.loop !689

._crit_edge1132:                                  ; preds = %._crit_edge1132.loopexit.unr-lcssa, %.lr.ph1131.epil, %.preheader1101
  %i.gv = udiv i64 %i.gf, %i.ge
  %spec.select.i.i.i.i431 = call i64 @llvm.umax.i64(i64 %i.gv, i64 1)
  br label %select.unfold.i.i.i.i433

bb.bc:                                            ; preds = %select.unfold.i.i.i.i433
  %i.gw = fdiv float %i.hd, %i.hg                 ; 2 uses
  %i.gx = fcmp ult float %i.gw, 1.000000e+00
  br i1 %i.gx, label %bb.bf, label %bb.bd, !prof !77

select.unfold.i.i.i.i433:                         ; preds = %select.unfold.i.i.i.i433, %._crit_edge1132
  %.023.i.i.i.i434 = phi i64 [ %spec.select.i.i.i.i431, %._crit_edge1132 ], [ %i.hh, %select.unfold.i.i.i.i433 ]
  %.01422.i.i.i.i435 = phi float [ 1.000000e+00, %._crit_edge1132 ], [ %i.hg, %select.unfold.i.i.i.i433 ] ; 2 uses
  %.01521.i.i.i.i436 = phi float [ 0.000000e+00, %._crit_edge1132 ], [ %i.hd, %select.unfold.i.i.i.i433 ]
  %i.gy = phi i64 [ %.sroa.0760.11138, %._crit_edge1132 ], [ %i.ha, %select.unfold.i.i.i.i433 ]
  %i.gz = mul nuw nsw i64 %i.gy, 16807
  %i.ha = urem i64 %i.gz, 2147483647              ; 3 uses
  %i.hb = add nsw i64 %i.ha, -1
  %i.hc = uitofp i64 %i.hb to float
  %i.hd = call float @llvm.fmuladd.f32(float %i.hc, float %.01422.i.i.i.i435, float %.01521.i.i.i.i436) ; 2 uses
  %i.he = fpext float %.01422.i.i.i.i435 to x86_fp80
  %i.hf = fmul x86_fp80 %i.he, f0x401DFFFFFFFC00000000
  %i.hg = fptrunc x86_fp80 %i.hf to float         ; 2 uses
  %i.hh = add i64 %.023.i.i.i.i434, -1            ; 2 uses
  %.not.i.i.i.i437 = icmp eq i64 %i.hh, 0
  br i1 %.not.i.i.i.i437, label %bb.bc, label %select.unfold.i.i.i.i433, !llvm.loop !4

bb.bd:                                            ; preds = %bb.bc
  br label %bb.bf

bb.be:                                            ; preds = %bb.bb
  %i.hi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit638

.lr.ph1131:                                       ; preds = %.lr.ph1131.preheader, %.lr.ph1131
  %.02081130 = phi i64 [ %i.hv, %.lr.ph1131 ], [ 0, %.lr.ph1131.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph1131 ], [ 0, %.lr.ph1131.preheader ]
  %i.hj = or disjoint i64 %.02081130, 1           ; 3 uses
  %i.hk = mul i64 %i.hj, %i.hj
  %i.hl = uitofp i64 %i.hk to float
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0704.0, i64 %.02081130
  store float %i.hl, ptr %i.hm, align 4, !tbaa !75
  %i.hn = or disjoint i64 %.02081130, 2           ; 3 uses
  %i.ho = mul i64 %i.hn, %i.hn
  %i.hp = uitofp i64 %i.ho to float
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0704.0, i64 %i.hj
  store float %i.hp, ptr %i.hq, align 4, !tbaa !75
  %i.hr = or disjoint i64 %.02081130, 3           ; 3 uses
  %i.hs = mul i64 %i.hr, %i.hr
  %i.ht = uitofp i64 %i.hs to float
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0704.0, i64 %i.hn
  store float %i.ht, ptr %i.hu, align 4, !tbaa !75
  %i.hv = add nuw nsw i64 %.02081130, 4           ; 4 uses
  %i.hw = mul i64 %i.hv, %i.hv
  %i.hx = uitofp i64 %i.hw to float
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0704.0, i64 %i.hr
  store float %i.hx, ptr %i.hy, align 4, !tbaa !75
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge1132.loopexit.unr-lcssa, label %.lr.ph1131, !llvm.loop !690

bb.bf:                                            ; preds = %bb.bd, %bb.bc
  %.016.i.i.i.i438 = phi float [ f0x3F7FFFFF, %bb.bd ], [ %i.gw, %bb.bc ]
  %i.hz = fadd float %.016.i.i.i.i438, 0.000000e+00 ; 2 uses
  %i.ia = load ptr, ptr %3, align 8, !tbaa !43
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.gm ; 2 uses
  %26 = load <2 x float>, ptr %i.ib, align 4, !tbaa !75, !alias.scope !768, !noalias !769
  %27 = insertelement <2 x float> poison, float %i.hz, i64 0
  %28 = shufflevector <2 x float> %27, <2 x float> poison, <2 x i32> zeroinitializer
  %29 = fmul <2 x float> %28, %26                 ; 2 uses
  %30 = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %31 = extractelement <2 x float> %29, i64 0
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl256ELl256ELl16ELl8ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1797, ptr noundef %.1, ptr noundef nonnull %30, float noundef %31, ptr noundef %.sroa.0704.0)
  %32 = extractelement <2 x float> %29, i64 1
  %i.ic = fadd float %32, 0.000000e+00
  br i1 %.not.i.i.i.i379, label %.critedge348, label %.lr.ph1136

.lr.ph1136:                                       ; preds = %bb.bf, %bb.bt
  %.02071134 = phi i64 [ %i.ii, %bb.bt ], [ 0, %bb.bf ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0704.0, i64 %.02071134
  %i.ie = load float, ptr %i.id, align 4, !tbaa !75
  %i.if = fadd float %i.ic, %i.ie
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0731.0874, i64 %.02071134
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !75
  %i.ii = add nuw nsw i64 %.02071134, 1           ; 4 uses
  %i.ij = mul i64 %i.ii, %i.ii
  %i.ik = uitofp i64 %i.ij to float
  %i.il = call float @llvm.fmuladd.f32(float %i.ih, float %i.hz, float %i.ik)
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %11, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94, float noundef %i.if, float noundef %i.il)
          to label %bb.bg unwind label %bb.bh

bb.bg:                                            ; preds = %.lr.ph1136
  %i.im = load i8, ptr %11, align 8, !tbaa !98, !range !99, !noundef !100
  %i.in = trunc nuw i8 %i.im to i1
  br i1 %i.in, label %.critedge346, label %bb.bi

bb.bh:                                            ; preds = %.lr.ph1136
  %i.io = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit638.thread

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.bj unwind label %bb.bo

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.ip = load ptr, ptr %i.gg, align 8, !tbaa !101 ; 2 uses
  %.not.i.i440 = icmp eq ptr %i.ip, null
  br i1 %.not.i.i440, label %_ZNK7testing15AssertionResult15failure_messageEv.exit441, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !25
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit441

_ZNK7testing15AssertionResult15failure_messageEv.exit441: ; preds = %bb.bk, %bb.bj
  %i.ir = phi ptr [ %i.iq, %bb.bk ], [ @.str.20, %bb.bj ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 388, ptr noundef %i.ir)
          to label %bb.bl unwind label %bb.bp

bb.bl:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit441
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.bm unwind label %bb.bq

bb.bm:                                            ; preds = %bb.bl
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.is = load ptr, ptr %12, align 8, !tbaa !103  ; 3 uses
  %.not.i.i442 = icmp eq ptr %i.is, null
  br i1 %.not.i.i442, label %_ZN7testing7MessageD2Ev.exit444, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i443

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i443: ; preds = %bb.bm
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !32
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %i.iv = load ptr, ptr %i.iu, align 8
  call void %i.iv(ptr noundef nonnull align 8 dereferenceable(128) %i.is) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit444

_ZN7testing7MessageD2Ev.exit444:                  ; preds = %bb.bm, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i443
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  %i.iw = load ptr, ptr %i.gg, align 8, !tbaa !101 ; 4 uses
  %.not.i.i445 = icmp eq ptr %i.iw, null
  br i1 %.not.i.i445, label %_ZNSt6vectorIfSaIfEED2Ev.exit622.thread, label %bb.bn

bb.bn:                                            ; preds = %_ZN7testing7MessageD2Ev.exit444
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !25 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 16 ; 2 uses
  %i.iz = icmp eq ptr %i.ix, %i.iy
  br i1 %i.iz, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i447, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i446

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i446: ; preds = %bb.bn
  %i.ja = load i64, ptr %i.iy, align 8, !tbaa !24
  %i.jb = add i64 %i.ja, 1
  call void @_ZdlPvm(ptr noundef %i.ix, i64 noundef %i.jb) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i447

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i447: ; preds = %bb.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i446
  call void @_ZdlPvm(ptr noundef nonnull %i.iw, i64 noundef 32) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit622.thread

bb.bo:                                            ; preds = %bb.bi
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit452

bb.bp:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit441
  %i.jd = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bq:                                            ; preds = %bb.bl
  %i.je = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #22
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.pn287 = phi { ptr, i32 } [ %i.je, %bb.bq ], [ %i.jd, %bb.bp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.jf = load ptr, ptr %12, align 8, !tbaa !103  ; 3 uses
  %.not.i.i450 = icmp eq ptr %i.jf, null
  br i1 %.not.i.i450, label %_ZN7testing7MessageD2Ev.exit452, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i451

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i451: ; preds = %bb.br
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !32
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %i.ji = load ptr, ptr %i.jh, align 8
  call void %i.ji(ptr noundef nonnull align 8 dereferenceable(128) %i.jf) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit452

_ZN7testing7MessageD2Ev.exit452:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i451, %bb.br, %bb.bo
  %.pn287.pn = phi { ptr, i32 } [ %i.jc, %bb.bo ], [ %.pn287, %bb.br ], [ %.pn287, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i451 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit638.thread

.critedge346:                                     ; preds = %bb.bg
  %i.jj = load ptr, ptr %i.gg, align 8, !tbaa !101 ; 4 uses
  %.not.i.i453 = icmp eq ptr %i.jj, null
  br i1 %.not.i.i453, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %.critedge346
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !25 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jj, i64 16 ; 2 uses
  %i.jm = icmp eq ptr %i.jk, %i.jl
  br i1 %i.jm, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i455, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i454

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i454: ; preds = %bb.bs
  %i.jn = load i64, ptr %i.jl, align 8, !tbaa !24
  %i.jo = add i64 %i.jn, 1
  call void @_ZdlPvm(ptr noundef %i.jk, i64 noundef %i.jo) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i455

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i455: ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i454
  call void @_ZdlPvm(ptr noundef nonnull %i.jj, i64 noundef 32) #23
  br label %bb.bt

bb.bt:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i455, %.critedge346
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %exitcond1188.not = icmp eq i64 %i.ii, %1
  br i1 %exitcond1188.not, label %.critedge348, label %.lr.ph1136, !llvm.loop !696

_ZNSt6vectorIfSaIfEED2Ev.exit638.thread:          ; preds = %bb.bh, %_ZN7testing7MessageD2Ev.exit452
  %.pn287.pn.pn = phi { ptr, i32 } [ %.pn287.pn, %_ZN7testing7MessageD2Ev.exit452 ], [ %i.io, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.fj

.critedge348:                                     ; preds = %bb.bt, %bb.bf
  %i.jp = add nuw i64 %.02091139, 1               ; 2 uses
  %exitcond1189.not = icmp eq i64 %i.jp, %0
  br i1 %exitcond1189.not, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i458, label %bb.bb, !llvm.loop !697

_ZNSt6vectorIfSaIfEED2Ev.exit622.thread:          ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i447, %_ZN7testing7MessageD2Ev.exit444
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.ex

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i458: ; preds = %.critedge348, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit430
  br i1 %.not.i.i.i.i379, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit477, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i458
  %i.jq = shl nuw nsw i64 %1, 2                   ; 4 uses
  %i.jr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jq) #24
          to label %.noexc466 unwind label %bb.bv ; 4 uses

.noexc466:                                        ; preds = %bb.bu
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.jr, i8 0, i64 %i.jq, i1 false), !tbaa !75
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %1 ; 2 uses
  %i.jt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jq) #24
          to label %.noexc476 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit636.thread ; 3 uses

.noexc476:                                        ; preds = %.noexc466
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.jt, i8 0, i64 %i.jq, i1 false), !tbaa !75
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %1
  %i.jv = ptrtoint ptr %i.ju to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit477

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit477:         ; preds = %.noexc476, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i458
  %.sroa.12689.0909 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i458 ], [ %i.js, %.noexc476 ] ; 2 uses
  %.sroa.0683.0901 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i458 ], [ %i.jr, %.noexc476 ] ; 9 uses
  %.sroa.0673.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i458 ], [ %i.jt, %.noexc476 ] ; 10 uses
  %.sroa.12679.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i458 ], [ %i.jv, %.noexc476 ] ; 2 uses
  br i1 %.not2861126.not, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i532, label %.preheader1100.lr.ph

.preheader1100.lr.ph:                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit477
  %i.jw = call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.jx = call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.jy = fdiv x86_fp80 %i.jw, %i.jx
  %i.jz = fptoui x86_fp80 %i.jy to i64            ; 2 uses
  %i.ka = add i64 %i.jz, 23
  %i.kb = udiv i64 %i.ka, %i.jz
  %spec.select.i.i.i.i478 = call i64 @llvm.umax.i64(i64 %i.kb, i64 1) ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
end_hunk_0
begin_hunk_1_@_Z26verifyMinMaxIndexPQDecoderIN5faiss10cppcontrib18IndexMinMaxDecoderINS1_14IndexPQDecoderILl256ELl16ELl8EEEEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE:bb.a
  %.016.i.i.i.i = phi float [ f0x3F7FFFFF, %bb.aq ], [ %i.ee, %bb.ap ]
  %i.eq = fadd float %.016.i.i.i.i, 0.000000e+00  ; 2 uses
  br i1 %.not.i.i.i.i389, label %._crit_edge, label %.lr.ph1100.preheader

.lr.ph1100.preheader:                             ; preds = %_ZNSt25uniform_real_distributionIfEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEfRT_.exit
  br i1 %min.iters.check, label %.lr.ph1100.preheader1353, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph1100.preheader
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.eq, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0741.0849, i64 %index ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %wide.load = load <4 x float>, ptr %i.er, align 4, !tbaa !75
  %wide.load1297 = load <4 x float>, ptr %i.es, align 4, !tbaa !75
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0751.0806815, i64 %index ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16 ; 2 uses
  %wide.load1298 = load <4 x float>, ptr %i.et, align 4, !tbaa !75
  %wide.load1299 = load <4 x float>, ptr %i.eu, align 4, !tbaa !75
  %i.ev = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load, <4 x float> %wide.load1298)
  %i.ew = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load1297, <4 x float> %wide.load1299)
  store <4 x float> %i.ev, ptr %i.et, align 4, !tbaa !75
  store <4 x float> %i.ew, ptr %i.eu, align 4, !tbaa !75
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ex = icmp eq i64 %index.next, %n.vec
  br i1 %i.ex, label %middle.block, label %vector.body, !llvm.loop !808

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph1100.preheader1353

.lr.ph1100.preheader1353:                         ; preds = %.lr.ph1100.preheader, %middle.block
  %.02241099.ph = phi i64 [ 0, %.lr.ph1100.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph1100

._crit_edge:                                      ; preds = %.lr.ph1100, %middle.block, %_ZNSt25uniform_real_distributionIfEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEfRT_.exit
  %i.ey = add nuw i64 %.02261103, 1               ; 2 uses
  %exitcond1161.not = icmp eq i64 %i.ey, %0
  br i1 %exitcond1161.not, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i431, label %bb.aa, !llvm.loop !809

.lr.ph1100:                                       ; preds = %.lr.ph1100.preheader1353, %.lr.ph1100
  %.02241099 = phi i64 [ %i.fe, %.lr.ph1100 ], [ %.02241099.ph, %.lr.ph1100.preheader1353 ] ; 3 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0741.0849, i64 %.02241099
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !75
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0751.0806815, i64 %.02241099 ; 2 uses
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !75
  %i.fd = call float @llvm.fmuladd.f32(float %i.eq, float %i.fa, float %i.fc)
  store float %i.fd, ptr %i.fb, align 4, !tbaa !75
  %i.fe = add nuw nsw i64 %.02241099, 1           ; 2 uses
  %exitcond1160.not = icmp eq i64 %i.fe, %1
  br i1 %exitcond1160.not, label %._crit_edge, label %.lr.ph1100, !llvm.loop !810

_ZNSt6vectorIfSaIfEED2Ev.exit634.thread:          ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i419, %_ZN7testing7MessageD2Ev.exit416
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.eq

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i431: ; preds = %._crit_edge, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit411
  br i1 %.not.i.i.i.i389, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit440, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i431
  %i.ff = shl nuw nsw i64 %1, 2                   ; 2 uses
  %i.fg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ff) #24
          to label %.noexc439 unwind label %bb.as ; 3 uses

.noexc439:                                        ; preds = %bb.ar
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.fg, i8 0, i64 %i.ff, i1 false), !tbaa !75
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %1
  %i.fi = ptrtoint ptr %i.fh to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit440

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit440:         ; preds = %.noexc439, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i431
  %.sroa.0714.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i431 ], [ %i.fg, %.noexc439 ] ; 24 uses
  %.sroa.23.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i431 ], [ %i.fi, %.noexc439 ] ; 2 uses
  br i1 %.not3001101.not, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i468, label %.lr.ph1115

.lr.ph1115:                                       ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit440
  %i.fj = call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.fk = call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.fl = fdiv x86_fp80 %i.fj, %i.fk
  %i.fm = fptoui x86_fp80 %i.fl to i64            ; 2 uses
  %i.fn = add i64 %i.fm, 23
  %i.fo = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.fp = add nsw i64 %1, -1
  %xtraiter = and i64 %1, 3                       ; 3 uses
  %i.fq = icmp ult i64 %i.fp, 3
  %unroll_iter = and i64 %1, 2305843009213693948
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod1357 = icmp ne i64 %xtraiter, 0
  br label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit650

bb.at:                                            ; preds = %.lr.ph1115, %.critedge361
  %.02231114 = phi i64 [ 0, %.lr.ph1115 ], [ %i.ix, %.critedge361 ] ; 2 uses
  %.sroa.0770.11113 = phi i64 [ 123, %.lr.ph1115 ], [ %i.gi, %.critedge361 ]
  %i.fs = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.ft = load ptr, ptr %3, align 8, !tbaa !43
  %i.fu = mul i64 %.02231114, %i.bd               ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fu
  %i.fw = load ptr, ptr %i.fs, align 8, !tbaa !32
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 208
  %i.fy = load ptr, ptr %i.fx, align 8
  invoke void %i.fy(ptr noundef nonnull align 8 dereferenceable(36) %i.fs, i64 noundef 1, ptr noundef %i.fv, ptr noundef %.sroa.0741.0849)
          to label %.preheader1076 unwind label %bb.aw

.preheader1076:                                   ; preds = %bb.at
  br i1 %.not.i.i.i.i389, label %._crit_edge1107, label %.lr.ph1106.preheader

.lr.ph1106.preheader:                             ; preds = %.preheader1076
  br i1 %i.fq, label %.lr.ph1106.epil.preheader, label %.lr.ph1106

._crit_edge1107.loopexit.unr-lcssa:               ; preds = %.lr.ph1106
  br i1 %lcmp.mod.not, label %._crit_edge1107, label %.lr.ph1106.epil.preheader

.lr.ph1106.epil.preheader:                        ; preds = %._crit_edge1107.loopexit.unr-lcssa, %.lr.ph1106.preheader
  %.02221105.epil.init = phi i64 [ 0, %.lr.ph1106.preheader ], [ %i.hd, %._crit_edge1107.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1357)
  br label %.lr.ph1106.epil

.lr.ph1106.epil:                                  ; preds = %.lr.ph1106.epil, %.lr.ph1106.epil.preheader
  %.02221105.epil = phi i64 [ %i.fz, %.lr.ph1106.epil ], [ %.02221105.epil.init, %.lr.ph1106.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph1106.epil ], [ 0, %.lr.ph1106.epil.preheader ]
  %i.fz = add nuw nsw i64 %.02221105.epil, 1      ; 3 uses
  %i.ga = mul i64 %i.fz, %i.fz
  %i.gb = uitofp i64 %i.ga to float
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0714.0, i64 %.02221105.epil
  store float %i.gb, ptr %i.gc, align 4, !tbaa !75
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge1107, label %.lr.ph1106.epil, !llvm.loop !811

._crit_edge1107:                                  ; preds = %._crit_edge1107.loopexit.unr-lcssa, %.lr.ph1106.epil, %.preheader1076
  %i.gd = udiv i64 %i.fn, %i.fm
  %spec.select.i.i.i.i441 = call i64 @llvm.umax.i64(i64 %i.gd, i64 1)
  br label %select.unfold.i.i.i.i443

bb.au:                                            ; preds = %select.unfold.i.i.i.i443
  %i.ge = fdiv float %i.gl, %i.go                 ; 2 uses
  %i.gf = fcmp ult float %i.ge, 1.000000e+00
  br i1 %i.gf, label %bb.ax, label %bb.av, !prof !77

select.unfold.i.i.i.i443:                         ; preds = %select.unfold.i.i.i.i443, %._crit_edge1107
  %.023.i.i.i.i444 = phi i64 [ %spec.select.i.i.i.i441, %._crit_edge1107 ], [ %i.gp, %select.unfold.i.i.i.i443 ]
  %.01422.i.i.i.i445 = phi float [ 1.000000e+00, %._crit_edge1107 ], [ %i.go, %select.unfold.i.i.i.i443 ] ; 2 uses
  %.01521.i.i.i.i446 = phi float [ 0.000000e+00, %._crit_edge1107 ], [ %i.gl, %select.unfold.i.i.i.i443 ]
  %i.gg = phi i64 [ %.sroa.0770.11113, %._crit_edge1107 ], [ %i.gi, %select.unfold.i.i.i.i443 ]
  %i.gh = mul nuw nsw i64 %i.gg, 16807
  %i.gi = urem i64 %i.gh, 2147483647              ; 3 uses
  %i.gj = add nsw i64 %i.gi, -1
  %i.gk = uitofp i64 %i.gj to float
  %i.gl = call float @llvm.fmuladd.f32(float %i.gk, float %.01422.i.i.i.i445, float %.01521.i.i.i.i446) ; 2 uses
  %i.gm = fpext float %.01422.i.i.i.i445 to x86_fp80
  %i.gn = fmul x86_fp80 %i.gm, f0x401DFFFFFFFC00000000
  %i.go = fptrunc x86_fp80 %i.gn to float         ; 2 uses
  %i.gp = add i64 %.023.i.i.i.i444, -1            ; 2 uses
  %.not.i.i.i.i447 = icmp eq i64 %i.gp, 0
  br i1 %.not.i.i.i.i447, label %bb.au, label %select.unfold.i.i.i.i443, !llvm.loop !4

bb.av:                                            ; preds = %bb.au
  br label %bb.ax

bb.aw:                                            ; preds = %bb.at
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit648

.lr.ph1106:                                       ; preds = %.lr.ph1106.preheader, %.lr.ph1106
  %.02221105 = phi i64 [ %i.hd, %.lr.ph1106 ], [ 0, %.lr.ph1106.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph1106 ], [ 0, %.lr.ph1106.preheader ]
  %i.gr = or disjoint i64 %.02221105, 1           ; 3 uses
  %i.gs = mul i64 %i.gr, %i.gr
  %i.gt = uitofp i64 %i.gs to float
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0714.0, i64 %.02221105
  store float %i.gt, ptr %i.gu, align 4, !tbaa !75
  %i.gv = or disjoint i64 %.02221105, 2           ; 3 uses
  %i.gw = mul i64 %i.gv, %i.gv
  %i.gx = uitofp i64 %i.gw to float
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0714.0, i64 %i.gr
  store float %i.gx, ptr %i.gy, align 4, !tbaa !75
  %i.gz = or disjoint i64 %.02221105, 3           ; 3 uses
  %i.ha = mul i64 %i.gz, %i.gz
  %i.hb = uitofp i64 %i.ha to float
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0714.0, i64 %i.gv
  store float %i.hb, ptr %i.hc, align 4, !tbaa !75
  %i.hd = add nuw nsw i64 %.02221105, 4           ; 4 uses
  %i.he = mul i64 %i.hd, %i.hd
  %i.hf = uitofp i64 %i.he to float
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0714.0, i64 %i.gz
  store float %i.hf, ptr %i.hg, align 4, !tbaa !75
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge1107.loopexit.unr-lcssa, label %.lr.ph1106, !llvm.loop !812

bb.ax:                                            ; preds = %bb.av, %bb.au
  %.016.i.i.i.i448 = phi float [ f0x3F7FFFFF, %bb.av ], [ %i.ge, %bb.au ]
  %i.hh = fadd float %.016.i.i.i.i448, 0.000000e+00 ; 2 uses
  %i.hi = load ptr, ptr %3, align 8, !tbaa !43
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.fu ; 2 uses
  %26 = load <2 x float>, ptr %i.hj, align 4, !tbaa !75, !alias.scope !877, !noalias !878
  %27 = insertelement <2 x float> poison, float %i.hh, i64 0
  %28 = shufflevector <2 x float> %27, <2 x float> poison, <2 x i32> zeroinitializer
  %29 = fmul <2 x float> %28, %26                 ; 2 uses
  %30 = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %31 = extractelement <2 x float> %29, i64 0
  call void @_ZN5faiss10cppcontrib14IndexPQDecoderILl256ELl16ELl8EE5accumEPKfPKhfPf(ptr noundef %i.ay, ptr noundef nonnull %30, float noundef %31, ptr noundef %.sroa.0714.0)
  %32 = extractelement <2 x float> %29, i64 1
  %i.hk = fadd float %32, 0.000000e+00
  br i1 %.not.i.i.i.i389, label %.critedge361, label %.lr.ph1111

.lr.ph1111:                                       ; preds = %bb.ax, %bb.bl
  %.02211109 = phi i64 [ %i.hq, %bb.bl ], [ 0, %bb.ax ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0714.0, i64 %.02211109
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !75
  %i.hn = fadd float %i.hk, %i.hm
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0741.0849, i64 %.02211109
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !75
  %i.hq = add nuw nsw i64 %.02211109, 1           ; 4 uses
  %i.hr = mul i64 %i.hq, %i.hq
  %i.hs = uitofp i64 %i.hr to float
  %i.ht = call float @llvm.fmuladd.f32(float %i.hp, float %i.hh, float %i.hs)
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %11, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94, float noundef %i.hn, float noundef %i.ht)
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %.lr.ph1111
  %i.hu = load i8, ptr %11, align 8, !tbaa !98, !range !99, !noundef !100
  %i.hv = trunc nuw i8 %i.hu to i1
  br i1 %i.hv, label %.critedge359, label %bb.ba

bb.az:                                            ; preds = %.lr.ph1111
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit648.thread

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.bb unwind label %bb.bg

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.hx = load ptr, ptr %i.fo, align 8, !tbaa !101 ; 2 uses
  %.not.i.i450 = icmp eq ptr %i.hx, null
  br i1 %.not.i.i450, label %_ZNK7testing15AssertionResult15failure_messageEv.exit451, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !25
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit451

_ZNK7testing15AssertionResult15failure_messageEv.exit451: ; preds = %bb.bc, %bb.bb
  %i.hz = phi ptr [ %i.hy, %bb.bc ], [ @.str.20, %bb.bb ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 820, ptr noundef %i.hz)
          to label %bb.bd unwind label %bb.bh

bb.bd:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit451
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.be unwind label %bb.bi

bb.be:                                            ; preds = %bb.bd
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.ia = load ptr, ptr %12, align 8, !tbaa !103  ; 3 uses
  %.not.i.i452 = icmp eq ptr %i.ia, null
  br i1 %.not.i.i452, label %_ZN7testing7MessageD2Ev.exit454, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i453

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i453: ; preds = %bb.be
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !32
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %i.id = load ptr, ptr %i.ic, align 8
  call void %i.id(ptr noundef nonnull align 8 dereferenceable(128) %i.ia) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit454

_ZN7testing7MessageD2Ev.exit454:                  ; preds = %bb.be, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i453
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  %i.ie = load ptr, ptr %i.fo, align 8, !tbaa !101 ; 4 uses
  %.not.i.i455 = icmp eq ptr %i.ie, null
  br i1 %.not.i.i455, label %_ZNSt6vectorIfSaIfEED2Ev.exit632.thread, label %bb.bf

bb.bf:                                            ; preds = %_ZN7testing7MessageD2Ev.exit454
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !25 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ie, i64 16 ; 2 uses
  %i.ih = icmp eq ptr %i.if, %i.ig
  br i1 %i.ih, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i457, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i456

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i456: ; preds = %bb.bf
  %i.ii = load i64, ptr %i.ig, align 8, !tbaa !24
  %i.ij = add i64 %i.ii, 1
  call void @_ZdlPvm(ptr noundef %i.if, i64 noundef %i.ij) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i457

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i457: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i456
  call void @_ZdlPvm(ptr noundef nonnull %i.ie, i64 noundef 32) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit632.thread

bb.bg:                                            ; preds = %bb.ba
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit462

bb.bh:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit451
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bd
  %i.im = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #22
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.pn301 = phi { ptr, i32 } [ %i.im, %bb.bi ], [ %i.il, %bb.bh ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.in = load ptr, ptr %12, align 8, !tbaa !103  ; 3 uses
  %.not.i.i460 = icmp eq ptr %i.in, null
  br i1 %.not.i.i460, label %_ZN7testing7MessageD2Ev.exit462, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i461

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i461: ; preds = %bb.bj
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !32
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.iq = load ptr, ptr %i.ip, align 8
  call void %i.iq(ptr noundef nonnull align 8 dereferenceable(128) %i.in) #22, !inline_history !3
  br label %_ZN7testing7MessageD2Ev.exit462

_ZN7testing7MessageD2Ev.exit462:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i461, %bb.bj, %bb.bg
  %.pn301.pn = phi { ptr, i32 } [ %i.ik, %bb.bg ], [ %.pn301, %bb.bj ], [ %.pn301, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i461 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit648.thread

.critedge359:                                     ; preds = %bb.ay
  %i.ir = load ptr, ptr %i.fo, align 8, !tbaa !101 ; 4 uses
  %.not.i.i463 = icmp eq ptr %i.ir, null
  br i1 %.not.i.i463, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %.critedge359
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !25 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.ir, i64 16 ; 2 uses
  %i.iu = icmp eq ptr %i.is, %i.it
  br i1 %i.iu, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i465, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i464

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i464: ; preds = %bb.bk
  %i.iv = load i64, ptr %i.it, align 8, !tbaa !24
  %i.iw = add i64 %i.iv, 1
  call void @_ZdlPvm(ptr noundef %i.is, i64 noundef %i.iw) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i465

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i465: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i464
  call void @_ZdlPvm(ptr noundef nonnull %i.ir, i64 noundef 32) #23
  br label %bb.bl

bb.bl:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i465, %.critedge359
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %exitcond1163.not = icmp eq i64 %i.hq, %1
  br i1 %exitcond1163.not, label %.critedge361, label %.lr.ph1111, !llvm.loop !817

_ZNSt6vectorIfSaIfEED2Ev.exit648.thread:          ; preds = %bb.az, %_ZN7testing7MessageD2Ev.exit462
  %.pn301.pn.pn = phi { ptr, i32 } [ %.pn301.pn, %_ZN7testing7MessageD2Ev.exit462 ], [ %i.hw, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.fb

.critedge361:                                     ; preds = %bb.bl, %bb.ax
  %i.ix = add nuw i64 %.02231114, 1               ; 2 uses
  %exitcond1164.not = icmp eq i64 %i.ix, %0
  br i1 %exitcond1164.not, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i468, label %bb.at, !llvm.loop !818

_ZNSt6vectorIfSaIfEED2Ev.exit632.thread:          ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i457, %_ZN7testing7MessageD2Ev.exit454
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.ep

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i468: ; preds = %.critedge361, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit440
  br i1 %.not.i.i.i.i389, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit487, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i468
  %i.iy = shl nuw nsw i64 %1, 2                   ; 4 uses
  %i.iz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iy) #24
          to label %.noexc476 unwind label %bb.bn ; 4 uses

.noexc476:                                        ; preds = %bb.bm
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.iz, i8 0, i64 %i.iy, i1 false), !tbaa !75
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %1 ; 2 uses
  %i.jb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iy) #24
          to label %.noexc486 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit646.thread ; 3 uses

.noexc486:                                        ; preds = %.noexc476
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.jb, i8 0, i64 %i.iy, i1 false), !tbaa !75
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %1
  %i.jd = ptrtoint ptr %i.jc to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit487

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit487:         ; preds = %.noexc486, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i468
  %.sroa.12699.0884 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i468 ], [ %i.ja, %.noexc486 ] ; 2 uses
  %.sroa.0693.0876 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i468 ], [ %i.iz, %.noexc486 ] ; 9 uses
  %.sroa.0681.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i468 ], [ %i.jb, %.noexc486 ] ; 10 uses
  %.sroa.12687.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i468 ], [ %i.jd, %.noexc486 ] ; 2 uses
  br i1 %.not3001101.not, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i542, label %.preheader1075.lr.ph

.preheader1075.lr.ph:                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit487
  %i.je = call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.jf = call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.jg = fdiv x86_fp80 %i.je, %i.jf
  %i.jh = fptoui x86_fp80 %i.jg to i64            ; 2 uses
  %i.ji = add i64 %i.jh, 23
  %i.jj = udiv i64 %i.ji, %i.jh
  %spec.select.i.i.i.i488 = call i64 @llvm.umax.i64(i64 %i.jj, i64 1) ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
end_hunk_1
