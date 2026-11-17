Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/elementwise_metric?download=true
inline.NumInlined: 4380
inline.NumDeleted: 1372
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN7xgboost6metric13QuantileError4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoE:bb.a
  br label %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit37.i

_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit37.i:        ; preds = %.noexc36.i, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i
  %.0.i.i.i.i.i.i.i146.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.fk, %.noexc36.i ] ; 2 uses
  %.sroa.13133.0143.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.fi, %.noexc36.i ] ; 2 uses
  %.sroa.0127.0139.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.fh, %.noexc36.i ] ; 11 uses
  %.sroa.0.0.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.fj, %.noexc36.i ] ; 12 uses
  %.sroa.13.0.i = phi i64 [ 0, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.fn, %.noexc36.i ] ; 2 uses
  %.0.i.i.i.i.i.i.i33.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.fm, %.noexc36.i ] ; 2 uses
  %i.fo = invoke noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(25) %i.r)
          to label %_ZNK7xgboost6linalg6TensorIfLi2EE4SizeEv.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK7xgboost6linalg6TensorIfLi2EE4SizeEv.exit.i:  ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit37.i
  %i.fp = mul i64 %i.fo, %i.eu                    ; 3 uses
  %i.fq = uitofp i64 %i.fp to double
  %i.fr = fmul nnan double %i.fq, f0x3F40000000000000
  %i.fs = call double @llvm.ceil.f64(double %i.fr)
  %i.ft = fptoui double %i.fs to i64              ; 4 uses
  %i.fu = icmp eq i32 %i.fd, 1
  br i1 %i.fu, label %.preheader.i.i.i.i, label %bb.bp

.preheader.i.i.i.i:                               ; preds = %_ZNK7xgboost6linalg6TensorIfLi2EE4SizeEv.exit.i
  %.not126.i.i.i.i = icmp eq i64 %i.ft, 0
  br i1 %.not126.i.i.i.i, label %_ZN7xgboost6common13ParallelFor1dILm2048EmZNS_6metric12_GLOBAL__N_16ReduceIZNS2_13QuantileError4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS2_18PackedReduceResultEPKNS_7ContextESC_OT_mEUlSJ_E_EEvT0_iOT1_.exit.i, label %.lr.ph119.i.i.i.preheader.i

.lr.ph119.i.i.i.preheader.i:                      ; preds = %.preheader.i.i.i.i
  %i.fv = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fw = trunc i64 %i.eg to i32
  %i.fx = insertelement <2 x i32> poison, i32 %i.fw, i64 0
  %i.fy = trunc i64 %i.dz to i32
  %i.fz = insertelement <2 x i32> %i.fx, i32 %i.fy, i64 1
  %i.ga = shufflevector <2 x i32> %i.fz, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.gb = trunc i64 %i.eg to i32                  ; 3 uses
  %i.gc = trunc i64 %i.dz to i32                  ; 3 uses
  %i.gd = add <4 x i32> %i.ga, <i32 0, i32 0, i32 -1, i32 -1> ; 3 uses
  %i.ge = call range(i32 0, 33) <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %i.gd) ; 4 uses
  %i.gf = extractelement <4 x i32> %i.ge, i64 0
  %.not.i7.i.i86.i = icmp samesign ult i32 %i.gf, 2
  %i.gg = extractelement <4 x i32> %i.ge, i64 1
  %.not.1.i9.i.i89.i = icmp samesign ult i32 %i.gg, 2
  %i.gh = add i64 %i.eg, -1                       ; 2 uses
  %i.gi = insertelement <2 x i64> poison, i64 %i.eg, i64 0
  %i.gj = insertelement <2 x i64> %i.gi, i64 %i.gh, i64 1
  %i.gk = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.gj) ; 2 uses
  %i.gl = extractelement <2 x i64> %i.gk, i64 0
  %.not.i.i.i102.i = icmp samesign ult i64 %i.gl, 2
  %i.gm = add i64 %i.dz, -1
  %i.gn = insertelement <2 x i64> poison, i64 %i.dz, i64 0
  %i.go = shufflevector <2 x i64> %i.gn, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.gp = add <2 x i64> %i.go, <i64 0, i64 -1>
  %i.gq = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.gp) ; 2 uses
  %i.gr = extractelement <2 x i64> %i.gq, i64 0
  %.not.1.i.i.i105.i = icmp samesign ult i64 %i.gr, 2
  %i.gs = icmp eq i64 %.sroa.01.0, 0
  %i.gt = extractelement <4 x i32> %i.gd, i64 2
  %i.gu = extractelement <4 x i32> %i.ge, i64 2
  %i.gv = extractelement <4 x i32> %i.gd, i64 3
  %i.gw = extractelement <4 x i32> %i.ge, i64 3
  %i.gx = extractelement <2 x i64> %i.gk, i64 1
  %i.gy = extractelement <2 x i64> %i.gq, i64 1
  br label %.lr.ph119.i.i.i.i

.lr.ph119.i.i.i.i:                                ; preds = %.noexc40.i, %.lr.ph119.i.i.i.preheader.i
  %.0118.i.i.i.i = phi i64 [ %i.jk, %.noexc40.i ], [ 0, %.lr.ph119.i.i.i.preheader.i ] ; 2 uses
  %i.gz = shl i64 %.0118.i.i.i.i, 11              ; 3 uses
  %i.ha = sub i64 %i.fp, %i.gz
  %.sroa.speculated.i59.i = call i64 @llvm.umin.i64(i64 %i.ha, i64 2048)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.hb = add i64 %.sroa.speculated.i59.i, %i.gz
  invoke void @_ZN7xgboost6common7Range1dC2Emm(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef %i.gz, i64 noundef %i.hb)
          to label %.noexc82.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc82.i:                                       ; preds = %.lr.ph119.i.i.i.i
  %.val.i60.i = load i64, ptr %4, align 8, !tbaa !122 ; 2 uses
  %.val5.i61.i = load i64, ptr %i.fv, align 8, !tbaa !123 ; 2 uses
  %i.hc = icmp ult i64 %.val.i60.i, %.val5.i61.i
  br i1 %i.hc, label %.lr.ph.i.i64.i, label %.noexc40.i

.lr.ph.i.i64.i:                                   ; preds = %.noexc82.i, %.noexc83.i
  %.0181.i.i67.i = phi i64 [ %i.jc, %.noexc83.i ], [ %.val.i60.i, %.noexc82.i ] ; 7 uses
  %i.hd = phi <2 x double> [ %i.jb, %.noexc83.i ], [ zeroinitializer, %.noexc82.i ]
  %i.he = icmp ugt i64 %.0181.i.i67.i, 4294967295
  br i1 %i.he, label %bb.ba, label %bb.bg

bb.ba:                                            ; preds = %.lr.ph.i.i64.i
  br i1 %.not.i.i.i102.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hf = udiv i64 %.0181.i.i67.i, %i.eg          ; 2 uses
  %i.hg = mul i64 %i.hf, %i.eg                    ; 0 uses
  %.recomposed = urem i64 %.0181.i.i67.i, %i.eg
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %i.hh = and i64 %.0181.i.i67.i, %i.gh
  %i.hi = lshr i64 %.0181.i.i67.i, %i.gx
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.sroa.7.0.i.i.i103.i = phi i64 [ %i.hh, %bb.bc ], [ %.recomposed, %bb.bb ] ; 2 uses
  %.1.i.i.i104.i = phi i64 [ %i.hi, %bb.bc ], [ %i.hf, %bb.bb ] ; 4 uses
  br i1 %.not.1.i.i.i105.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hj = udiv i64 %.1.i.i.i104.i, %i.dz          ; 2 uses
  %i.hk = mul i64 %i.hj, %i.dz                    ; 0 uses
  %.recomposed335 = urem i64 %.1.i.i.i104.i, %i.dz
  br label %_ZN7xgboost6linalg12UnravelIndexILm3EEEDamNS_6common4SpanIKmXT_EEE.exit.i95.i

bb.bf:                                            ; preds = %bb.bd
  %i.hl = and i64 %.1.i.i.i104.i, %i.gm
  %i.hm = lshr i64 %.1.i.i.i104.i, %i.gy
  br label %_ZN7xgboost6linalg12UnravelIndexILm3EEEDamNS_6common4SpanIKmXT_EEE.exit.i95.i

bb.bg:                                            ; preds = %.lr.ph.i.i64.i
  %i.hn = trunc nuw i64 %.0181.i.i67.i to i32     ; 4 uses
  br i1 %.not.i7.i.i86.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ho = udiv i32 %i.hn, %i.gb                   ; 2 uses
  %i.hp = mul i32 %i.ho, %i.gb                    ; 0 uses
  %.recomposed336 = urem i32 %i.hn, %i.gb
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  %i.hq = and i32 %i.gt, %i.hn
  %i.hr = lshr i32 %i.hn, %i.gu
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.sroa.7.0.in.i.i.i87.i = phi i32 [ %i.hq, %bb.bi ], [ %.recomposed336, %bb.bh ]
  %.1.i8.i.i88.i = phi i32 [ %i.hr, %bb.bi ], [ %i.ho, %bb.bh ] ; 4 uses
  br i1 %.not.1.i9.i.i89.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.hs = udiv i32 %.1.i8.i.i88.i, %i.gc          ; 2 uses
  %i.ht = mul i32 %i.hs, %i.gc                    ; 0 uses
  %.recomposed337 = urem i32 %.1.i8.i.i88.i, %i.gc
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi3EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i90.i

bb.bl:                                            ; preds = %bb.bj
  %i.hu = and i32 %.1.i8.i.i88.i, %i.gv
  %i.hv = lshr i32 %.1.i8.i.i88.i, %i.gw
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi3EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i90.i

_ZN7xgboost6linalg6detail11UnravelImplIjLi3EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i90.i: ; preds = %bb.bl, %bb.bk
  %.sroa.4.0.in.i.i.i91.i = phi i32 [ %i.hu, %bb.bl ], [ %.recomposed337, %bb.bk ]
  %.1.1.i10.i.i92.i = phi i32 [ %i.hv, %bb.bl ], [ %i.hs, %bb.bk ]
  %.sroa.4.0.i11.i.i93.i = zext i32 %.sroa.4.0.in.i.i.i91.i to i64
  %.sroa.7.0.i12.i.i94.i = zext i32 %.sroa.7.0.in.i.i.i87.i to i64
  %i.hw = zext i32 %.1.1.i10.i.i92.i to i64
  br label %_ZN7xgboost6linalg12UnravelIndexILm3EEEDamNS_6common4SpanIKmXT_EEE.exit.i95.i

_ZN7xgboost6linalg12UnravelIndexILm3EEEDamNS_6common4SpanIKmXT_EEE.exit.i95.i: ; preds = %_ZN7xgboost6linalg6detail11UnravelImplIjLi3EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i90.i, %bb.bf, %bb.be
  %.sroa.7.0.i12.sink.i.i96.i = phi i64 [ %.sroa.7.0.i12.i.i94.i, %_ZN7xgboost6linalg6detail11UnravelImplIjLi3EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i90.i ], [ %.sroa.7.0.i.i.i103.i, %bb.be ], [ %.sroa.7.0.i.i.i103.i, %bb.bf ] ; 2 uses
  %.sroa.4.0.i11.sink.i.i97.i = phi i64 [ %.sroa.4.0.i11.i.i93.i, %_ZN7xgboost6linalg6detail11UnravelImplIjLi3EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i90.i ], [ %.recomposed335, %bb.be ], [ %i.hl, %bb.bf ] ; 3 uses
  %.sink.i.i98.i = phi i64 [ %i.hw, %_ZN7xgboost6linalg6detail11UnravelImplIjLi3EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i90.i ], [ %i.hj, %bb.be ], [ %i.hm, %bb.bf ] ; 4 uses
  %i.hx = icmp ult i64 %.sroa.4.0.i11.sink.i.i97.i, %.sroa.03.0
  br i1 %i.hx, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i99.i, label %bb.bm, !prof !120

bb.bm:                                            ; preds = %_ZN7xgboost6linalg12UnravelIndexILm3EEEDamNS_6common4SpanIKmXT_EEE.exit.i95.i
  call void @_ZSt9terminatev() #36, !noalias !773
  unreachable

_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i99.i: ; preds = %_ZN7xgboost6linalg12UnravelIndexILm3EEEDamNS_6common4SpanIKmXT_EEE.exit.i95.i
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6.0, i64 %.sroa.4.0.i11.sink.i.i97.i
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !74, !noalias !773 ; 2 uses
  br i1 %i.gs, label %.noexc83.i, label %bb.bn

bb.bn:                                            ; preds = %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i99.i
  %i.ia = icmp ult i64 %.sink.i.i98.i, %.sroa.01.0
  br i1 %i.ia, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i100.i, label %bb.bo, !prof !120

bb.bo:                                            ; preds = %bb.bn
  call void @_ZSt9terminatev() #36, !noalias !773
  unreachable

_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i100.i: ; preds = %bb.bn
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %.sroa.3.0, i64 %.sink.i.i98.i
  %.in.i.i101.i.sroa.speculate.load._ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i100.i = load float, ptr %i.ib, align 4, !tbaa !74, !noalias !773
  br label %.noexc83.i

.noexc83.i:                                       ; preds = %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i100.i, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i99.i
  %.in.i.i101.i.sroa.speculated = phi float [ %.in.i.i101.i.sroa.speculate.load._ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i100.i, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i100.i ], [ 1.000000e+00, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i99.i ] ; 2 uses
  %i.ic = mul i64 %.sink.i.i98.i, %i.eh
  %i.id = mul i64 %.sroa.4.0.i11.sink.i.i97.i, %i.eg
  %i.ie = getelementptr [4 x i8], ptr %.pn.i, i64 %i.ic
  %i.if = getelementptr [4 x i8], ptr %i.ie, i64 %i.id
  %i.ig = getelementptr [4 x i8], ptr %i.if, i64 %.sroa.7.0.i12.sink.i.i96.i
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !74, !noalias !773
  %i.ii = mul i64 %.sink.i.i98.i, %.sroa.32195.128.copyload
  %i.ij = mul i64 %.sroa.7.0.i12.sink.i.i96.i, %.sroa.35.128.copyload
  %i.ik = getelementptr [4 x i8], ptr %.sroa.37198.128.copyload, i64 %i.ii
  %i.il = getelementptr [4 x i8], ptr %i.ik, i64 %i.ij
  %i.im = load float, ptr %i.il, align 4, !tbaa !74, !noalias !773
  %i.in = fsub float %i.im, %i.ih                 ; 3 uses
  %i.io = fcmp oge float %i.in, 0.000000e+00
  %i.ip = uitofp i1 %i.io to float                ; 2 uses
  %i.iq = fmul float %i.hz, %i.ip
  %i.ir = fsub float 1.000000e+00, %i.hz
  %i.is = fsub nnan float 1.000000e+00, %i.ip
  %i.it = fmul float %i.ir, %i.is
  %i.iu = fneg float %i.in
  %i.iv = fmul float %i.it, %i.iu
  %i.iw = call noundef float @llvm.fmuladd.f32(float %i.iq, float %i.in, float %i.iv)
  %i.ix = fmul float %.in.i.i101.i.sroa.speculated, %i.iw
  %i.iy = insertelement <2 x float> poison, float %.in.i.i101.i.sroa.speculated, i64 0
  %i.iz = insertelement <2 x float> %i.iy, float %i.ix, i64 1
  %i.ja = fpext <2 x float> %i.iz to <2 x double>
  %i.jb = fadd <2 x double> %i.hd, %i.ja          ; 2 uses
  %i.jc = add nuw i64 %.0181.i.i67.i, 1           ; 2 uses
  %exitcond.not.i.i77.i = icmp eq i64 %i.jc, %.val5.i61.i
  br i1 %exitcond.not.i.i77.i, label %.noexc40.i, label %.lr.ph.i.i64.i, !llvm.loop !754

.noexc40.i:                                       ; preds = %.noexc83.i, %.noexc82.i
  %i.jd = phi <2 x double> [ zeroinitializer, %.noexc82.i ], [ %i.jb, %.noexc83.i ] ; 2 uses
  %i.je = load double, ptr %.sroa.0127.0139.i, align 8, !tbaa !85
  %i.jf = extractelement <2 x double> %i.jd, i64 1
  %i.jg = fadd double %i.jf, %i.je
  store double %i.jg, ptr %.sroa.0127.0139.i, align 8, !tbaa !85
  %i.jh = load double, ptr %.sroa.0.0.i, align 8, !tbaa !85
  %i.ji = extractelement <2 x double> %i.jd, i64 0
  %i.jj = fadd double %i.ji, %i.jh
  store double %i.jj, ptr %.sroa.0.0.i, align 8, !tbaa !85
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.jk = add nuw i64 %.0118.i.i.i.i, 1           ; 2 uses
  %exitcond148.not.i.i.i.i = icmp eq i64 %i.jk, %i.ft
  br i1 %exitcond148.not.i.i.i.i, label %_ZN7xgboost6common13ParallelFor1dILm2048EmZNS_6metric12_GLOBAL__N_16ReduceIZNS2_13QuantileError4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS2_18PackedReduceResultEPKNS_7ContextESC_OT_mEUlSJ_E_EEvT0_iOT1_.exit.i, label %.lr.ph119.i.i.i.i, !llvm.loop !755

bb.bp:                                            ; preds = %_ZNK7xgboost6linalg6TensorIfLi2EE4SizeEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.fd, ptr %i.a, align 4, !tbaa !63, !noalias !774
  store i32 1, ptr %i.b, align 4, !tbaa !63, !noalias !774
  br i1 %.not.i.i.i.i.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i: ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.preheader96.i.i.i.i

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i: ; preds = %bb.bp
  invoke void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %11, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %.noexc41.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc41.i:                                       ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %11, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i.i.i.i = icmp eq ptr %.pr.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %.preheader96.i.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %.noexc41.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  %i.jl = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %.noexc.i.i.i.i unwind label %bb.br

.noexc.i.i.i.i:                                   ; preds = %bb.bq
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.jl, ptr noundef nonnull @.str.74, i32 noundef 196)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i unwind label %bb.br

_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i:    ; preds = %.noexc.i.i.i.i
  %i.jm = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i unwind label %bb.bs ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i
  %i.jn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jm, ptr noundef nonnull @.str.42, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i unwind label %bb.bs ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i
  %i.jo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jm, ptr noundef nonnull @.str.75, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i unwind label %bb.bs ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i
  %i.jp = load ptr, ptr %11, align 8, !tbaa !38   ; 2 uses
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !29
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !28
  %i.jt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jm, ptr noundef %i.jq, i64 noundef %i.js)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i unwind label %bb.bs

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i
  %i.ju = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jt, ptr noundef nonnull @.str.44, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i unwind label %bb.bs ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.bu unwind label %bb.br

bb.br:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i, %.noexc.i.i.i.i, %bb.bq
  %i.jv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.bs:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72.i.i.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i, %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i.i.i.i
  %i.jw = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.bt unwind label %bb.dd

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.jv, %bb.br ], [ %i.jw, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %.body.i

bb.bu:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  %.pr82.i.i.i.i = load ptr, ptr %11, align 8, !tbaa !38 ; 4 uses
  %.not.i76.i.i.i.i = icmp eq ptr %.pr82.i.i.i.i, null
  br i1 %.not.i76.i.i.i.i, label %.preheader96.i.i.i.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.jx = load ptr, ptr %.pr82.i.i.i.i, align 8, !tbaa !29 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.pr82.i.i.i.i, i64 16 ; 2 uses
  %i.jz = icmp eq ptr %i.jx, %i.jy
  br i1 %i.jz, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bv
  %i.ka = load i64, ptr %i.jy, align 8, !tbaa !35
  %i.kb = add i64 %i.ka, 1
  call void @_ZdlPvm(ptr noundef %i.jx, i64 noundef %i.kb) #35
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i: ; preds = %bb.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr82.i.i.i.i, i64 noundef 32) #35
  br label %.preheader96.i.i.i.i

.preheader96.i.i.i.i:                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i, %bb.bu, %.noexc41.i, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %13, i8 0, i64 48, i1 false)
  %.not122.i.i.i.i = icmp eq i64 %i.ft, 0
  br i1 %.not122.i.i.i.i, label %.thread.i.i.i, label %.lr.ph111.i.i.preheader.i.i

.lr.ph111.i.i.preheader.i.i:                      ; preds = %.preheader96.i.i.i.i
  %i.kc = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ke = trunc i64 %i.eg to i32
  %i.kf = insertelement <2 x i32> poison, i32 %i.ke, i64 0
  %i.kg = trunc i64 %i.dz to i32
  %i.kh = insertelement <2 x i32> %i.kf, i32 %i.kg, i64 1
  %i.ki = shufflevector <2 x i32> %i.kh, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.kj = trunc i64 %i.eg to i32                  ; 3 uses
  %i.kk = trunc i64 %i.dz to i32                  ; 3 uses
  %i.kl = add <4 x i32> %i.ki, <i32 0, i32 0, i32 -1, i32 -1> ; 3 uses
  %i.km = call range(i32 0, 33) <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %i.kl) ; 4 uses
  %i.kn = extractelement <4 x i32> %i.km, i64 0
  %.not.i7.i.i.i = icmp samesign ult i32 %i.kn, 2
  %i.ko = extractelement <4 x i32> %i.km, i64 1
  %.not.1.i9.i.i.i = icmp samesign ult i32 %i.ko, 2
  %i.kp = add i64 %i.eg, -1                       ; 2 uses
  %i.kq = insertelement <2 x i64> poison, i64 %i.eg, i64 0
  %i.kr = insertelement <2 x i64> %i.kq, i64 %i.kp, i64 1
  %i.ks = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.kr) ; 2 uses
  %i.kt = extractelement <2 x i64> %i.ks, i64 0
  %.not.i.i.i85.i = icmp samesign ult i64 %i.kt, 2
  %i.ku = add i64 %i.dz, -1
  %i.kv = insertelement <2 x i64> poison, i64 %i.dz, i64 0
  %i.kw = shufflevector <2 x i64> %i.kv, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.kx = add <2 x i64> %i.kw, <i64 0, i64 -1>
  %i.ky = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.kx) ; 2 uses
  %i.kz = extractelement <2 x i64> %i.ky, i64 0
  %.not.1.i.i.i.i = icmp samesign ult i64 %i.kz, 2
  %i.la = icmp eq i64 %.sroa.01.0, 0
  %i.lb = extractelement <4 x i32> %i.kl, i64 2
  %i.lc = extractelement <4 x i32> %i.km, i64 2
  %i.ld = extractelement <4 x i32> %i.kl, i64 3
  %i.le = extractelement <4 x i32> %i.km, i64 3
  %i.lf = extractelement <2 x i64> %i.ks, i64 1
  %i.lg = extractelement <2 x i64> %i.ky, i64 1
  br label %.lr.ph111.i.i.i.i

.thread.i.i.i:                                    ; preds = %.preheader96.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  br label %_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i

.lr.ph111.i.i.i.i:                                ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6metric12_GLOBAL__N_16ReduceIZNS5_13QuantileError4EvalERKNS2_16HostDeviceVectorIfEERKNS2_8MetaInfoEEUlmmmE_EENS5_18PackedReduceResultEPKNS2_7ContextESF_OT_mEUlSM_E_EEvT0_iOT1_EUlSL_E_JmEEEvSL_DpT0_.exit.i.i, %.lr.ph111.i.i.preheader.i.i
  %.060110.i.i.i.i = phi i64 [ %i.oo, %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6metric12_GLOBAL__N_16ReduceIZNS5_13QuantileError4EvalERKNS2_16HostDeviceVectorIfEERKNS2_8MetaInfoEEUlmmmE_EENS5_18PackedReduceResultEPKNS2_7ContextESF_OT_mEUlSM_E_EEvT0_iOT1_EUlSL_E_JmEEEvSL_DpT0_.exit.i.i ], [ 0, %.lr.ph111.i.i.preheader.i.i ] ; 2 uses
  %i.lh = shl i64 %.060110.i.i.i.i, 11            ; 3 uses
  %i.li = sub i64 %i.fp, %i.lh
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.li, i64 2048)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.lj = add i64 %.sroa.speculated.i.i, %i.lh
  invoke void @_ZN7xgboost6common7Range1dC2Emm(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 noundef %i.lh, i64 noundef %i.lj)
          to label %.noexc57.i unwind label %bb.cl

.noexc57.i:                                       ; preds = %.lr.ph111.i.i.i.i
  %.val.i.i = load i64, ptr %5, align 8, !tbaa !122 ; 2 uses
  %.val5.i.i = load i64, ptr %i.kd, align 8, !tbaa !123 ; 2 uses
  %i.lk = icmp ult i64 %.val.i.i, %.val5.i.i
  br i1 %i.lk, label %.lr.ph.i.i.i, label %_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6metric12_GLOBAL__N_16ReduceIZNS2_13QuantileError4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS2_18PackedReduceResultEPKNS_7ContextESC_OT_mEUlSJ_E_EEvT0_iOT1_ENKUlSI_E_clImEEDaSI_.exit.i

.lr.ph.i.i.i:                                     ; preds = %.noexc57.i, %.noexc58.i
  %.0181.i.i.i = phi i64 [ %i.nk, %.noexc58.i ], [ %.val.i.i, %.noexc57.i ] ; 7 uses
  %i.ll = phi <2 x double> [ %i.nj, %.noexc58.i ], [ zeroinitializer, %.noexc57.i ]
  %i.lm = icmp ugt i64 %.0181.i.i.i, 4294967295
  br i1 %i.lm, label %bb.bw, label %bb.cc

bb.bw:                                            ; preds = %.lr.ph.i.i.i
  br i1 %.not.i.i.i85.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ln = udiv i64 %.0181.i.i.i, %i.eg            ; 2 uses
  %i.lo = mul i64 %i.ln, %i.eg                    ; 0 uses
  %.recomposed338 = urem i64 %.0181.i.i.i, %i.eg
  br label %bb.bz

bb.by:                                            ; preds = %bb.bw
  %i.lp = and i64 %.0181.i.i.i, %i.kp
  %i.lq = lshr i64 %.0181.i.i.i, %i.lf
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.sroa.7.0.i.i.i.i = phi i64 [ %i.lp, %bb.by ], [ %.recomposed338, %bb.bx ] ; 2 uses
  %.1.i.i.i.i = phi i64 [ %i.lq, %bb.by ], [ %i.ln, %bb.bx ] ; 4 uses
  br i1 %.not.1.i.i.i.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.lr = udiv i64 %.1.i.i.i.i, %i.dz             ; 2 uses
  %i.ls = mul i64 %i.lr, %i.dz                    ; 0 uses
  %.recomposed339 = urem i64 %.1.i.i.i.i, %i.dz
  br label %_ZN7xgboost6linalg12UnravelIndexILm3EEEDamNS_6common4SpanIKmXT_EEE.exit.i.i

bb.cb:                                            ; preds = %bb.bz
  %i.lt = and i64 %.1.i.i.i.i, %i.ku
  %i.lu = lshr i64 %.1.i.i.i.i, %i.lg
  br label %_ZN7xgboost6linalg12UnravelIndexILm3EEEDamNS_6common4SpanIKmXT_EEE.exit.i.i

bb.cc:                                            ; preds = %.lr.ph.i.i.i
  %i.lv = trunc nuw i64 %.0181.i.i.i to i32       ; 4 uses
  br i1 %.not.i7.i.i.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.lw = udiv i32 %i.lv, %i.kj                   ; 2 uses
  %i.lx = mul i32 %i.lw, %i.kj                    ; 0 uses
  %.recomposed340 = urem i32 %i.lv, %i.kj
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cc
  %i.ly = and i32 %i.lb, %i.lv
  %i.lz = lshr i32 %i.lv, %i.lc
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %.sroa.7.0.in.i.i.i.i = phi i32 [ %i.ly, %bb.ce ], [ %.recomposed340, %bb.cd ]
  %.1.i8.i.i.i = phi i32 [ %i.lz, %bb.ce ], [ %i.lw, %bb.cd ] ; 4 uses
  br i1 %.not.1.i9.i.i.i, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ma = udiv i32 %.1.i8.i.i.i, %i.kk            ; 2 uses
  %i.mb = mul i32 %i.ma, %i.kk                    ; 0 uses
  %.recomposed341 = urem i32 %.1.i8.i.i.i, %i.kk
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi3EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i

bb.ch:                                            ; preds = %bb.cf
  %i.mc = and i32 %.1.i8.i.i.i, %i.ld
  %i.md = lshr i32 %.1.i8.i.i.i, %i.le
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi3EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i

_ZN7xgboost6linalg6detail11UnravelImplIjLi3EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i: ; preds = %bb.ch, %bb.cg
  %.sroa.4.0.in.i.i.i.i = phi i32 [ %i.mc, %bb.ch ], [ %.recomposed341, %bb.cg ]
  %.1.1.i10.i.i.i = phi i32 [ %i.md, %bb.ch ], [ %i.ma, %bb.cg ]
  %.sroa.4.0.i11.i.i.i = zext i32 %.sroa.4.0.in.i.i.i.i to i64
  %.sroa.7.0.i12.i.i.i = zext i32 %.sroa.7.0.in.i.i.i.i to i64
  %i.me = zext i32 %.1.1.i10.i.i.i to i64
  br label %_ZN7xgboost6linalg12UnravelIndexILm3EEEDamNS_6common4SpanIKmXT_EEE.exit.i.i

_ZN7xgboost6linalg12UnravelIndexILm3EEEDamNS_6common4SpanIKmXT_EEE.exit.i.i: ; preds = %_ZN7xgboost6linalg6detail11UnravelImplIjLi3EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i, %bb.cb, %bb.ca
  %.sroa.7.0.i12.sink.i.i.i = phi i64 [ %.sroa.7.0.i12.i.i.i, %_ZN7xgboost6linalg6detail11UnravelImplIjLi3EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i ], [ %.sroa.7.0.i.i.i.i, %bb.ca ], [ %.sroa.7.0.i.i.i.i, %bb.cb ] ; 2 uses
  %.sroa.4.0.i11.sink.i.i.i = phi i64 [ %.sroa.4.0.i11.i.i.i, %_ZN7xgboost6linalg6detail11UnravelImplIjLi3EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i ], [ %.recomposed339, %bb.ca ], [ %i.lt, %bb.cb ] ; 3 uses
  %.sink.i.i.i = phi i64 [ %i.me, %_ZN7xgboost6linalg6detail11UnravelImplIjLi3EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i ], [ %i.lr, %bb.ca ], [ %i.lu, %bb.cb ] ; 4 uses
  %i.mf = icmp ult i64 %.sroa.4.0.i11.sink.i.i.i, %.sroa.03.0
  br i1 %i.mf, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i, label %bb.ci, !prof !120

bb.ci:                                            ; preds = %_ZN7xgboost6linalg12UnravelIndexILm3EEEDamNS_6common4SpanIKmXT_EEE.exit.i.i
  call void @_ZSt9terminatev() #36, !noalias !775
  unreachable

_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i: ; preds = %_ZN7xgboost6linalg12UnravelIndexILm3EEEDamNS_6common4SpanIKmXT_EEE.exit.i.i
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6.0, i64 %.sroa.4.0.i11.sink.i.i.i
  %i.mh = load float, ptr %i.mg, align 4, !tbaa !74, !noalias !775 ; 2 uses
  br i1 %i.la, label %.noexc58.i, label %bb.cj

bb.cj:                                            ; preds = %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i
  %i.mi = icmp ult i64 %.sink.i.i.i, %.sroa.01.0
  br i1 %i.mi, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.i, label %bb.ck, !prof !120

bb.ck:                                            ; preds = %bb.cj
  call void @_ZSt9terminatev() #36, !noalias !775
  unreachable

_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.i: ; preds = %bb.cj
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.3.0, i64 %.sink.i.i.i
  %.in.i.i.i.sroa.speculate.load._ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.i = load float, ptr %i.mj, align 4, !tbaa !74, !noalias !775
  br label %.noexc58.i

.noexc58.i:                                       ; preds = %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.i, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i
  %.in.i.i.i.sroa.speculated = phi float [ %.in.i.i.i.sroa.speculate.load._ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.i, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.i ], [ 1.000000e+00, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i ] ; 2 uses
  %i.mk = mul i64 %.sink.i.i.i, %i.eh
  %i.ml = mul i64 %.sroa.4.0.i11.sink.i.i.i, %i.eg
  %i.mm = getelementptr [4 x i8], ptr %.pn.i, i64 %i.mk
  %i.mn = getelementptr [4 x i8], ptr %i.mm, i64 %i.ml
  %i.mo = getelementptr [4 x i8], ptr %i.mn, i64 %.sroa.7.0.i12.sink.i.i.i
  %i.mp = load float, ptr %i.mo, align 4, !tbaa !74, !noalias !775
  %i.mq = mul i64 %.sink.i.i.i, %.sroa.32195.128.copyload
  %i.mr = mul i64 %.sroa.7.0.i12.sink.i.i.i, %.sroa.35.128.copyload
  %i.ms = getelementptr [4 x i8], ptr %.sroa.37198.128.copyload, i64 %i.mq
  %i.mt = getelementptr [4 x i8], ptr %i.ms, i64 %i.mr
  %i.mu = load float, ptr %i.mt, align 4, !tbaa !74, !noalias !775
  %i.mv = fsub float %i.mu, %i.mp                 ; 3 uses
  %i.mw = fcmp oge float %i.mv, 0.000000e+00
  %i.mx = uitofp i1 %i.mw to float                ; 2 uses
  %i.my = fmul float %i.mh, %i.mx
  %i.mz = fsub float 1.000000e+00, %i.mh
  %i.na = fsub nnan float 1.000000e+00, %i.mx
  %i.nb = fmul float %i.mz, %i.na
  %i.nc = fneg float %i.mv
  %i.nd = fmul float %i.nb, %i.nc
  %i.ne = call noundef float @llvm.fmuladd.f32(float %i.my, float %i.mv, float %i.nd)
  %i.nf = fmul float %.in.i.i.i.sroa.speculated, %i.ne
  %i.ng = insertelement <2 x float> poison, float %.in.i.i.i.sroa.speculated, i64 0
  %i.nh = insertelement <2 x float> %i.ng, float %i.nf, i64 1
  %i.ni = fpext <2 x float> %i.nh to <2 x double>
  %i.nj = fadd <2 x double> %i.ll, %i.ni          ; 2 uses
  %i.nk = add nuw i64 %.0181.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.nk, %.val5.i.i
  br i1 %exitcond.not.i.i.i, label %_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6metric12_GLOBAL__N_16ReduceIZNS2_13QuantileError4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS2_18PackedReduceResultEPKNS_7ContextESC_OT_mEUlSJ_E_EEvT0_iOT1_ENKUlSI_E_clImEEDaSI_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !754

_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6metric12_GLOBAL__N_16ReduceIZNS2_13QuantileError4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS2_18PackedReduceResultEPKNS_7ContextESC_OT_mEUlSJ_E_EEvT0_iOT1_ENKUlSI_E_clImEEDaSI_.exit.i: ; preds = %.noexc58.i, %.noexc57.i
  %i.nl = phi <2 x double> [ zeroinitializer, %.noexc57.i ], [ %i.nj, %.noexc58.i ] ; 2 uses
  %i.nm = load double, ptr %.sroa.0127.0139.i, align 8, !tbaa !85
  %i.nn = extractelement <2 x double> %i.nl, i64 1
  %i.no = fadd double %i.nn, %i.nm
  store double %i.no, ptr %.sroa.0127.0139.i, align 8, !tbaa !85
  %i.np = load double, ptr %.sroa.0.0.i, align 8, !tbaa !85
  %i.nq = extractelement <2 x double> %i.nl, i64 0
  %i.nr = fadd double %i.nq, %i.np
  store double %i.nr, ptr %.sroa.0.0.i, align 8, !tbaa !85
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6metric12_GLOBAL__N_16ReduceIZNS5_13QuantileError4EvalERKNS2_16HostDeviceVectorIfEERKNS2_8MetaInfoEEUlmmmE_EENS5_18PackedReduceResultEPKNS2_7ContextESF_OT_mEUlSM_E_EEvT0_iOT1_EUlSL_E_JmEEEvSL_DpT0_.exit.i.i

bb.cl:                                            ; preds = %.lr.ph111.i.i.i.i
  %i.ns = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4dmlc5ErrorE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.nt = extractvalue { ptr, i32 } %i.ns, 0      ; 2 uses
  %i.nu = extractvalue { ptr, i32 } %i.ns, 1      ; 2 uses
  %i.nv = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4dmlc5ErrorE) #18
  %i.nw = icmp eq i32 %i.nu, %i.nv
  br i1 %i.nw, label %bb.cm, label %bb.cq

bb.cm:                                            ; preds = %bb.cl
  %i.nx = call ptr @__cxa_begin_catch(ptr %i.nt) #18 ; 0 uses
  %i.ny = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.kc) #18 ; 2 uses
  %.not.i.i.i3.i.i = icmp eq i32 %i.ny, 0
  br i1 %.not.i.i.i3.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ny) #33
          to label %.noexc.i.i.i unwind label %bb.cw

.noexc.i.i.i:                                     ; preds = %bb.cn
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i:    ; preds = %bb.cm
  %i.nz = load ptr, ptr %13, align 8, !tbaa !92
  %.not22.i.i.i = icmp eq ptr %i.nz, null
  br i1 %.not22.i.i.i, label %bb.co, label %.sink.split.i.i.i

bb.co:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.oa = load ptr, ptr %9, align 8, !tbaa !92
  store ptr null, ptr %9, align 8, !tbaa !92
  %i.ob = load ptr, ptr %13, align 8, !tbaa !92   ; 2 uses
  store ptr %i.ob, ptr %7, align 8, !tbaa !92
  store ptr %i.oa, ptr %13, align 8, !tbaa !92
  %.not.i.i9.i.i.i = icmp eq ptr %i.ob, null
  br i1 %.not.i.i9.i.i.i, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread.i.i.i, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread.i.i.i: ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i: ; preds = %bb.co
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #18
  %.pr.i.i.i = load ptr, ptr %9, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %.not.i.i4.i.i = icmp eq ptr %.pr.i.i.i, null
  br i1 %.not.i.i4.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i, label %bb.cp

bb.cp:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #18
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i: ; preds = %bb.cp, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %.sink.split.i.i.i

bb.cq:                                            ; preds = %bb.cl
  %i.oc = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #18
  %i.od = icmp eq i32 %i.nu, %i.oc
  br i1 %i.od, label %bb.cr, label %.body.i.i.i.i

bb.cr:                                            ; preds = %bb.cq
  %i.oe = call ptr @__cxa_begin_catch(ptr %i.nt) #18 ; 0 uses
  %i.of = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.kc) #18 ; 2 uses
  %.not.i.i10.i.i.i = icmp eq i32 %i.of, 0
  br i1 %.not.i.i10.i.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit12.i.i.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.of) #33
          to label %.noexc11.i.i.i unwind label %bb.cv

.noexc11.i.i.i:                                   ; preds = %bb.cs
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit12.i.i.i:  ; preds = %bb.cr
  %i.og = load ptr, ptr %13, align 8, !tbaa !92
  %.not.i.i.i = icmp eq ptr %i.og, null
  br i1 %.not.i.i.i, label %bb.ct, label %.sink.split.i.i.i

bb.ct:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit12.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.oh = load ptr, ptr %8, align 8, !tbaa !92
  store ptr null, ptr %8, align 8, !tbaa !92
  %i.oi = load ptr, ptr %13, align 8, !tbaa !92   ; 2 uses
  store ptr %i.oi, ptr %6, align 8, !tbaa !92
  store ptr %i.oh, ptr %13, align 8, !tbaa !92
  %.not.i.i13.i.i.i = icmp eq ptr %i.oi, null
  br i1 %.not.i.i13.i.i.i, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit14.thread.i.i.i, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit14.i.i.i

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit14.thread.i.i.i: ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16.i.i.i

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit14.i.i.i: ; preds = %bb.ct
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #18
  %.pr20.i.i.i = load ptr, ptr %8, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %.not.i15.i.i.i = icmp eq ptr %.pr20.i.i.i, null
  br i1 %.not.i15.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16.i.i.i, label %bb.cu

bb.cu:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit14.i.i.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #18
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16.i.i.i: ; preds = %bb.cu, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit14.i.i.i, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit14.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %.sink.split.i.i.i

bb.cv:                                            ; preds = %bb.cs
  %i.oj = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i.i unwind label %bb.cx

bb.cw:                                            ; preds = %bb.cn
  %i.ok = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i.i unwind label %bb.cx

.sink.split.i.i.i:                                ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16.i.i.i, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit12.i.i.i, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i
  %i.ol = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.kc) #18 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6metric12_GLOBAL__N_16ReduceIZNS5_13QuantileError4EvalERKNS2_16HostDeviceVectorIfEERKNS2_8MetaInfoEEUlmmmE_EENS5_18PackedReduceResultEPKNS2_7ContextESF_OT_mEUlSM_E_EEvT0_iOT1_EUlSL_E_JmEEEvSL_DpT0_.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.i

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %i.om = landingpad { ptr, i32 }
          catch ptr null
  %i.on = extractvalue { ptr, i32 } %i.om, 0
  call void @__clang_call_terminate(ptr %i.on) #36
  unreachable

_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6metric12_GLOBAL__N_16ReduceIZNS5_13QuantileError4EvalERKNS2_16HostDeviceVectorIfEERKNS2_8MetaInfoEEUlmmmE_EENS5_18PackedReduceResultEPKNS2_7ContextESF_OT_mEUlSM_E_EEvT0_iOT1_EUlSL_E_JmEEEvSL_DpT0_.exit.i.i: ; preds = %.sink.split.i.i.i, %_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6metric12_GLOBAL__N_16ReduceIZNS2_13QuantileError4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS2_18PackedReduceResultEPKNS_7ContextESC_OT_mEUlSJ_E_EEvT0_iOT1_ENKUlSI_E_clImEEDaSI_.exit.i
  %i.oo = add nuw i64 %.060110.i.i.i.i, 1         ; 2 uses
  %exitcond144.not.i.i.i.i = icmp eq i64 %i.oo, %i.ft
  br i1 %exitcond144.not.i.i.i.i, label %bb.cy, label %.lr.ph111.i.i.i.i, !llvm.loop !760

bb.cy:                                            ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm2048EmZNS2_6metric12_GLOBAL__N_16ReduceIZNS5_13QuantileError4EvalERKNS2_16HostDeviceVectorIfEERKNS2_8MetaInfoEEUlmmmE_EENS5_18PackedReduceResultEPKNS2_7ContextESF_OT_mEUlSM_E_EEvT0_iOT1_EUlSL_E_JmEEEvSL_DpT0_.exit.i.i
  %.pr84.pr.i.i.i.i = load ptr, ptr %13, align 8, !tbaa !92 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %.not.i77.i.i.i.i = icmp eq ptr %.pr84.pr.i.i.i.i, null
  br i1 %.not.i77.i.i.i.i, label %_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i.i: ; preds = %bb.cy
  store ptr %.pr84.pr.i.i.i.i, ptr %10, align 8, !tbaa !92
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #18
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %10) #33
          to label %bb.cz unwind label %bb.da

bb.cz:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i.i
  unreachable

bb.da:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i.i
  %i.op = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.oq = load ptr, ptr %10, align 8, !tbaa !92
  %.not.i2.i.i.i.i.i = icmp eq ptr %i.oq, null
  br i1 %.not.i2.i.i.i.i.i, label %.body.i.i.i.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #18
  br label %.body.i.i.i.i

_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i:          ; preds = %bb.cy, %.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %_ZN7xgboost6common13ParallelFor1dILm2048EmZNS_6metric12_GLOBAL__N_16ReduceIZNS2_13QuantileError4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS2_18PackedReduceResultEPKNS_7ContextESC_OT_mEUlSJ_E_EEvT0_iOT1_.exit.i

end_hunk_0
