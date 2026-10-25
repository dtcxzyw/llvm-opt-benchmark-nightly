Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/elementwise_metric?download=true
inline.NumInlined: 4380
inline.NumDeleted: 1372
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6metric12_GLOBAL__N_16ReduceIZNS2_13EvalEWiseBaseINS2_14EvalRowLogLossEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS2_18PackedReduceResultEPKNS_7ContextESE_OT_mEUlSL_E_EEvT0_iOT1_ENKUlSK_E_clImEEDaSK_:bb.a
  %i.v = trunc i64 %i.u to i32                    ; 5 uses
  %i.w = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.v)
  %.not.i7.i.peel.i = icmp samesign ult i32 %i.w, 2
  br i1 %.not.i7.i.peel.i, label %.split.us.i11.i.peel.i, label %.split.i8.i.peel.i

.split.i8.i.peel.i:                               ; preds = %bb.b
  %i.x = udiv i32 %i.t, %i.v                      ; 2 uses
  %i.y = mul i32 %i.x, %i.v                       ; 0 uses
  %.recomposed = urem i32 %i.t, %i.v
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.peel.i

.split.us.i11.i.peel.i:                           ; preds = %bb.b
  %i.z = add i32 %i.v, -1                         ; 2 uses
  %i.aa = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.z)
  %i.ab = lshr i32 %i.t, %i.aa
  %i.ac = and i32 %i.z, %i.t
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.peel.i

_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.peel.i: ; preds = %.split.us.i11.i.peel.i, %.split.i8.i.peel.i
  %.us-phi.i9.i.peel.i = phi i32 [ %.recomposed, %.split.i8.i.peel.i ], [ %i.ac, %.split.us.i11.i.peel.i ]
  %.us-phi23.i10.i.peel.i = phi i32 [ %i.x, %.split.i8.i.peel.i ], [ %i.ab, %.split.us.i11.i.peel.i ]
  %.sroa.5.1.le.i.i.peel.i = zext i32 %.us-phi.i9.i.peel.i to i64
  %i.ad = zext i32 %.us-phi23.i10.i.peel.i to i64
  br label %_ZN7xgboost6linalg12UnravelIndexILm2EEEDamNS_6common4SpanIKmXT_EEE.exit.peel.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.ae = load i64, ptr %i.g, align 8, !tbaa !45, !noalias !438 ; 7 uses
  %i.af = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ae)
  %.not.i.i.peel.i = icmp samesign ult i64 %i.af, 2
  br i1 %.not.i.i.peel.i, label %.split.us.i.i.peel.i, label %.split.i.i.peel.i

.split.i.i.peel.i:                                ; preds = %bb.c
  %i.ag = udiv i64 %.val, %i.ae                   ; 2 uses
  %i.ah = mul i64 %i.ag, %i.ae                    ; 0 uses
  %.recomposed15 = urem i64 %.val, %i.ae
  br label %_ZN7xgboost6linalg12UnravelIndexILm2EEEDamNS_6common4SpanIKmXT_EEE.exit.peel.i

.split.us.i.i.peel.i:                             ; preds = %bb.c
  %i.ai = add i64 %i.ae, -1                       ; 2 uses
  %i.aj = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ai)
  %i.ak = lshr i64 %.val, %i.aj
  %i.al = and i64 %i.ai, %.val
  br label %_ZN7xgboost6linalg12UnravelIndexILm2EEEDamNS_6common4SpanIKmXT_EEE.exit.peel.i

_ZN7xgboost6linalg12UnravelIndexILm2EEEDamNS_6common4SpanIKmXT_EEE.exit.peel.i: ; preds = %.split.us.i.i.peel.i, %.split.i.i.peel.i, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.peel.i
  %i.am = phi i64 [ %i.u, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.peel.i ], [ %i.ae, %.split.i.i.peel.i ], [ %i.ae, %.split.us.i.i.peel.i ] ; 6 uses
  %.sroa.5.1.le.i.sink.i.peel.i = phi i64 [ %.sroa.5.1.le.i.i.peel.i, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.peel.i ], [ %.recomposed15, %.split.i.i.peel.i ], [ %i.al, %.split.us.i.i.peel.i ]
  %.sink.i.peel.i = phi i64 [ %i.ad, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.peel.i ], [ %i.ag, %.split.i.i.peel.i ], [ %i.ak, %.split.us.i.i.peel.i ] ; 3 uses
  br i1 %i.k, label %_ZNK7xgboost6common15OptionalWeightsixEm.exit.i.peel.i, label %bb.d

bb.d:                                             ; preds = %_ZN7xgboost6linalg12UnravelIndexILm2EEEDamNS_6common4SpanIKmXT_EEE.exit.peel.i
  %i.an = icmp ult i64 %.sink.i.peel.i, %i.j
  br i1 %i.an, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.peel.i, label %.loopexit.i, !prof !120

_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.peel.i: ; preds = %bb.d
  %i.ao = load ptr, ptr %i.l, align 8, !tbaa !127, !noalias !436
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.sink.i.peel.i
  br label %_ZNK7xgboost6common15OptionalWeightsixEm.exit.i.peel.i

_ZNK7xgboost6common15OptionalWeightsixEm.exit.i.peel.i: ; preds = %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.peel.i, %_ZN7xgboost6linalg12UnravelIndexILm2EEEDamNS_6common4SpanIKmXT_EEE.exit.peel.i
  %.in.i.i.peel.i = phi ptr [ %i.ap, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.peel.i ], [ %i.m, %_ZN7xgboost6linalg12UnravelIndexILm2EEEDamNS_6common4SpanIKmXT_EEE.exit.peel.i ]
  %i.aq = load float, ptr %.in.i.i.peel.i, align 4, !tbaa !74, !noalias !436 ; 2 uses
  %i.ar = load i64, ptr %i.n, align 8, !tbaa !45, !noalias !436 ; 2 uses
  %i.as = mul i64 %i.ar, %.sink.i.peel.i
  %i.at = load i64, ptr %i.o, align 8, !tbaa !45, !noalias !436 ; 2 uses
  %i.au = mul i64 %i.at, %.sroa.5.1.le.i.sink.i.peel.i
  %i.av = load ptr, ptr %i.p, align 8, !tbaa !105, !noalias !436 ; 2 uses
  %i.aw = getelementptr [4 x i8], ptr %i.av, i64 %i.as
  %i.ax = getelementptr [4 x i8], ptr %i.aw, i64 %i.au
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !74, !noalias !436 ; 3 uses
  %i.az = load i64, ptr %i.q, align 8, !tbaa !126, !noalias !436 ; 2 uses
  %i.ba = icmp ult i64 %.val, %i.az
  br i1 %i.ba, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.peel.i, label %.loopexit13.i, !prof !120

_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.peel.i: ; preds = %_ZNK7xgboost6common15OptionalWeightsixEm.exit.i.peel.i
  %i.bb = load ptr, ptr %i.r, align 8, !tbaa !127, !noalias !436 ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %.val
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !74, !noalias !436 ; 3 uses
  %i.be = fsub float 1.000000e+00, %i.bd          ; 2 uses
  %i.bf = fcmp oeq float %i.ay, 0.000000e+00
  br i1 %i.bf, label %_ZZN7xgboost6metric12_GLOBAL__N_17LogLossEffENKUlffE_clEff.exit.i.i.i.peel.i, label %bb.e

bb.e:                                             ; preds = %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.peel.i
  %i.bg = fneg float %i.ay
  %i.bh = fcmp olt float %i.bd, 1.000000e-16
  %.sroa.speculated.i.i.i.i.peel.i = select i1 %i.bh, float 1.000000e-16, float %i.bd
  %i.bi = call float @llvm.log.f32(float %.sroa.speculated.i.i.i.i.peel.i)
  %i.bj = fmul float %i.bi, %i.bg
  br label %_ZZN7xgboost6metric12_GLOBAL__N_17LogLossEffENKUlffE_clEff.exit.i.i.i.peel.i

_ZZN7xgboost6metric12_GLOBAL__N_17LogLossEffENKUlffE_clEff.exit.i.i.i.peel.i: ; preds = %bb.e, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.peel.i
  %i.bk = phi float [ %i.bj, %bb.e ], [ 0.000000e+00, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.peel.i ]
  %i.bl = fsub float 1.000000e+00, %i.ay          ; 2 uses
  %i.bm = fcmp oeq float %i.bl, 0.000000e+00
  br i1 %i.bm, label %_ZZN7xgboost6metric13EvalEWiseBaseINS0_14EvalRowLogLossEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEENKUlmmmE_clEmmm.exit.peel.i, label %bb.f

bb.f:                                             ; preds = %_ZZN7xgboost6metric12_GLOBAL__N_17LogLossEffENKUlffE_clEff.exit.i.i.i.peel.i
  %i.bn = fneg float %i.bl
  %i.bo = fcmp olt float %i.be, 1.000000e-16
  %.sroa.speculated.i5.i.i.i.peel.i = select i1 %i.bo, float 1.000000e-16, float %i.be
  %i.bp = call float @llvm.log.f32(float %.sroa.speculated.i5.i.i.i.peel.i)
  %i.bq = fmul float %i.bp, %i.bn
  br label %_ZZN7xgboost6metric13EvalEWiseBaseINS0_14EvalRowLogLossEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEENKUlmmmE_clEmmm.exit.peel.i

_ZZN7xgboost6metric13EvalEWiseBaseINS0_14EvalRowLogLossEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEENKUlmmmE_clEmmm.exit.peel.i: ; preds = %bb.f, %_ZZN7xgboost6metric12_GLOBAL__N_17LogLossEffENKUlffE_clEff.exit.i.i.i.peel.i
  %i.br = phi float [ %i.bq, %bb.f ], [ 0.000000e+00, %_ZZN7xgboost6metric12_GLOBAL__N_17LogLossEffENKUlffE_clEff.exit.i.i.i.peel.i ]
  %i.bs = fadd float %i.bk, %i.br
  %i.bt = fmul float %i.aq, %i.bs
  %i.bu = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.bv = insertelement <2 x float> %i.bu, float %i.bt, i64 1
  %i.bw = fpext <2 x float> %i.bv to <2 x double>
  %i.bx = fadd <2 x double> %i.bw, zeroinitializer ; 2 uses
  %i.by = add nuw i64 %.val, 1                    ; 2 uses
  %exitcond.peel.not.i = icmp eq i64 %i.by, %.val5
  br i1 %exitcond.peel.not.i, label %_ZZN7xgboost6metric12_GLOBAL__N_16ReduceIZNS0_13EvalEWiseBaseINS0_14EvalRowLogLossEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS0_18PackedReduceResultEPKNS_7ContextESC_OT_mENKUlSJ_E_clINS_6common7Range1dEEEDaSJ_.exit, label %.peel.next.i

.peel.next.i:                                     ; preds = %_ZZN7xgboost6metric13EvalEWiseBaseINS0_14EvalRowLogLossEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEENKUlmmmE_clEmmm.exit.peel.i
  %i.bz = trunc i64 %i.am to i32                  ; 5 uses
  %i.ca = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.bz)
  %.not.i7.i.i = icmp samesign ult i32 %i.ca, 2
  %i.cb = add i32 %i.bz, -1                       ; 2 uses
  %i.cc = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.cb)
  %i.cd = add i64 %i.am, -1
  %i.ce = insertelement <2 x i64> poison, i64 %i.am, i64 0
  %i.cf = shufflevector <2 x i64> %i.ce, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.cg = add <2 x i64> %i.cf, <i64 0, i64 -1>
  %i.ch = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.cg) ; 2 uses
  %i.ci = extractelement <2 x i64> %i.ch, i64 0
  %.not.i.i.i = icmp samesign ult i64 %i.ci, 2
  %i.cj = extractelement <2 x i64> %i.ch, i64 1
  br label %bb.g

bb.g:                                             ; preds = %_ZZN7xgboost6metric13EvalEWiseBaseINS0_14EvalRowLogLossEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEENKUlmmmE_clEmmm.exit.i, %.peel.next.i
  %.0187.i = phi i64 [ %i.by, %.peel.next.i ], [ %i.eb, %_ZZN7xgboost6metric13EvalEWiseBaseINS0_14EvalRowLogLossEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEENKUlmmmE_clEmmm.exit.i ] ; 9 uses
  %i.ck = phi <2 x double> [ %i.bx, %.peel.next.i ], [ %i.ea, %_ZZN7xgboost6metric13EvalEWiseBaseINS0_14EvalRowLogLossEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEENKUlmmmE_clEmmm.exit.i ]
  %i.cl = icmp ugt i64 %.0187.i, 4294967295
  br i1 %i.cl, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  br i1 %.not.i.i.i, label %.split.us.i.i.i, label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %bb.h
  %i.cm = lshr i64 %.0187.i, %i.cj
  %i.cn = and i64 %.0187.i, %i.cd
  br label %_ZN7xgboost6linalg12UnravelIndexILm2EEEDamNS_6common4SpanIKmXT_EEE.exit.i

.split.i.i.i:                                     ; preds = %bb.h
  %i.co = udiv i64 %.0187.i, %i.am                ; 2 uses
  %i.cp = mul i64 %i.co, %i.am                    ; 0 uses
  %.recomposed16 = urem i64 %.0187.i, %i.am
  br label %_ZN7xgboost6linalg12UnravelIndexILm2EEEDamNS_6common4SpanIKmXT_EEE.exit.i

bb.i:                                             ; preds = %bb.g
  %i.cq = trunc nuw i64 %.0187.i to i32           ; 4 uses
  br i1 %.not.i7.i.i, label %.split.us.i11.i.i, label %.split.i8.i.i

.split.us.i11.i.i:                                ; preds = %bb.i
  %i.cr = lshr i32 %i.cq, %i.cc
  %i.cs = and i32 %i.cb, %i.cq
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i

.split.i8.i.i:                                    ; preds = %bb.i
  %i.ct = udiv i32 %i.cq, %i.bz                   ; 2 uses
  %i.cu = mul i32 %i.ct, %i.bz                    ; 0 uses
  %.recomposed17 = urem i32 %i.cq, %i.bz
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i

_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i: ; preds = %.split.i8.i.i, %.split.us.i11.i.i
  %.us-phi.i9.i.i = phi i32 [ %.recomposed17, %.split.i8.i.i ], [ %i.cs, %.split.us.i11.i.i ]
  %.us-phi23.i10.i.i = phi i32 [ %i.ct, %.split.i8.i.i ], [ %i.cr, %.split.us.i11.i.i ]
  %.sroa.5.1.le.i.i.i = zext i32 %.us-phi.i9.i.i to i64
  %i.cv = zext i32 %.us-phi23.i10.i.i to i64
  br label %_ZN7xgboost6linalg12UnravelIndexILm2EEEDamNS_6common4SpanIKmXT_EEE.exit.i

_ZN7xgboost6linalg12UnravelIndexILm2EEEDamNS_6common4SpanIKmXT_EEE.exit.i: ; preds = %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i, %.split.i.i.i, %.split.us.i.i.i
  %.sroa.5.1.le.i.sink.i.i = phi i64 [ %.sroa.5.1.le.i.i.i, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i ], [ %.recomposed16, %.split.i.i.i ], [ %i.cn, %.split.us.i.i.i ]
  %.sink.i.i = phi i64 [ %i.cv, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i ], [ %i.co, %.split.i.i.i ], [ %i.cm, %.split.us.i.i.i ] ; 3 uses
  br i1 %i.k, label %_ZNK7xgboost6common15OptionalWeightsixEm.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN7xgboost6linalg12UnravelIndexILm2EEEDamNS_6common4SpanIKmXT_EEE.exit.i
  %i.cw = icmp ult i64 %.sink.i.i, %i.j
  br i1 %i.cw, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.i, label %.loopexit.i, !prof !120

.loopexit.i:                                      ; preds = %bb.j, %bb.d
  call void @_ZSt9terminatev() #36, !noalias !436
  unreachable

_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.i: ; preds = %bb.j
  %i.cx = load ptr, ptr %i.l, align 8, !tbaa !127, !noalias !436
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %.sink.i.i
  br label %_ZNK7xgboost6common15OptionalWeightsixEm.exit.i.i

_ZNK7xgboost6common15OptionalWeightsixEm.exit.i.i: ; preds = %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.i, %_ZN7xgboost6linalg12UnravelIndexILm2EEEDamNS_6common4SpanIKmXT_EEE.exit.i
  %.in.i.i.i = phi ptr [ %i.cy, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.i ], [ %i.m, %_ZN7xgboost6linalg12UnravelIndexILm2EEEDamNS_6common4SpanIKmXT_EEE.exit.i ]
  %i.cz = load float, ptr %.in.i.i.i, align 4, !tbaa !74, !noalias !436 ; 2 uses
  %i.da = mul i64 %.sink.i.i, %i.ar
  %i.db = mul i64 %.sroa.5.1.le.i.sink.i.i, %i.at
  %i.dc = getelementptr [4 x i8], ptr %i.av, i64 %i.da
  %i.dd = getelementptr [4 x i8], ptr %i.dc, i64 %i.db
  %i.de = load float, ptr %i.dd, align 4, !tbaa !74, !noalias !436 ; 3 uses
  %2 = icmp ult i64 %.0187.i, %i.az
  br i1 %2, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i, label %.loopexit13.i, !prof !120

.loopexit13.i:                                    ; preds = %_ZNK7xgboost6common15OptionalWeightsixEm.exit.i.i, %_ZNK7xgboost6common15OptionalWeightsixEm.exit.i.peel.i
  call void @_ZSt9terminatev() #36, !noalias !436
  unreachable

_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i: ; preds = %_ZNK7xgboost6common15OptionalWeightsixEm.exit.i.i
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %.0187.i
  %i.dg = load float, ptr %i.df, align 4, !tbaa !74, !noalias !436 ; 3 uses
  %i.dh = fsub float 1.000000e+00, %i.dg          ; 2 uses
  %i.di = fcmp oeq float %i.de, 0.000000e+00
  br i1 %i.di, label %_ZZN7xgboost6metric12_GLOBAL__N_17LogLossEffENKUlffE_clEff.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i
  %i.dj = fneg float %i.de
  %i.dk = fcmp olt float %i.dg, 1.000000e-16
  %.sroa.speculated.i.i.i.i.i = select i1 %i.dk, float 1.000000e-16, float %i.dg
  %i.dl = call float @llvm.log.f32(float %.sroa.speculated.i.i.i.i.i)
  %i.dm = fmul float %i.dl, %i.dj
  br label %_ZZN7xgboost6metric12_GLOBAL__N_17LogLossEffENKUlffE_clEff.exit.i.i.i.i

_ZZN7xgboost6metric12_GLOBAL__N_17LogLossEffENKUlffE_clEff.exit.i.i.i.i: ; preds = %bb.k, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i
  %i.dn = phi float [ %i.dm, %bb.k ], [ 0.000000e+00, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i ]
  %i.do = fsub float 1.000000e+00, %i.de          ; 2 uses
  %i.dp = fcmp oeq float %i.do, 0.000000e+00
  br i1 %i.dp, label %_ZZN7xgboost6metric13EvalEWiseBaseINS0_14EvalRowLogLossEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEENKUlmmmE_clEmmm.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZZN7xgboost6metric12_GLOBAL__N_17LogLossEffENKUlffE_clEff.exit.i.i.i.i
  %i.dq = fneg float %i.do
  %i.dr = fcmp olt float %i.dh, 1.000000e-16
  %.sroa.speculated.i5.i.i.i.i = select i1 %i.dr, float 1.000000e-16, float %i.dh
  %i.ds = call float @llvm.log.f32(float %.sroa.speculated.i5.i.i.i.i)
  %i.dt = fmul float %i.ds, %i.dq
  br label %_ZZN7xgboost6metric13EvalEWiseBaseINS0_14EvalRowLogLossEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEENKUlmmmE_clEmmm.exit.i

_ZZN7xgboost6metric13EvalEWiseBaseINS0_14EvalRowLogLossEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEENKUlmmmE_clEmmm.exit.i: ; preds = %bb.l, %_ZZN7xgboost6metric12_GLOBAL__N_17LogLossEffENKUlffE_clEff.exit.i.i.i.i
  %i.du = phi float [ %i.dt, %bb.l ], [ 0.000000e+00, %_ZZN7xgboost6metric12_GLOBAL__N_17LogLossEffENKUlffE_clEff.exit.i.i.i.i ]
  %i.dv = fadd float %i.dn, %i.du
  %i.dw = fmul float %i.cz, %i.dv
  %i.dx = insertelement <2 x float> poison, float %i.cz, i64 0
  %i.dy = insertelement <2 x float> %i.dx, float %i.dw, i64 1
  %i.dz = fpext <2 x float> %i.dy to <2 x double>
  %i.ea = fadd <2 x double> %i.ck, %i.dz          ; 2 uses
  %i.eb = add nuw i64 %.0187.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.eb, %.val5
  br i1 %exitcond.not.i, label %_ZZN7xgboost6metric12_GLOBAL__N_16ReduceIZNS0_13EvalEWiseBaseINS0_14EvalRowLogLossEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS0_18PackedReduceResultEPKNS_7ContextESC_OT_mENKUlSJ_E_clINS_6common7Range1dEEEDaSJ_.exit, label %bb.g, !llvm.loop !432

_ZZN7xgboost6metric12_GLOBAL__N_16ReduceIZNS0_13EvalEWiseBaseINS0_14EvalRowLogLossEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS0_18PackedReduceResultEPKNS_7ContextESC_OT_mENKUlSJ_E_clINS_6common7Range1dEEEDaSJ_.exit: ; preds = %_ZZN7xgboost6metric13EvalEWiseBaseINS0_14EvalRowLogLossEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEENKUlmmmE_clEmmm.exit.i, %bb.a, %_ZZN7xgboost6metric13EvalEWiseBaseINS0_14EvalRowLogLossEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEENKUlmmmE_clEmmm.exit.peel.i
  %i.ec = phi <2 x double> [ zeroinitializer, %bb.a ], [ %i.bx, %_ZZN7xgboost6metric13EvalEWiseBaseINS0_14EvalRowLogLossEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEENKUlmmmE_clEmmm.exit.peel.i ], [ %i.ea, %_ZZN7xgboost6metric13EvalEWiseBaseINS0_14EvalRowLogLossEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEENKUlmmmE_clEmmm.exit.i ] ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !439, !nonnull !124, !align !125
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !82 ; 2 uses
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !85
  %i.eh = extractelement <2 x double> %i.ec, i64 1
  %i.ei = fadd double %i.eh, %i.eg
  store double %i.ei, ptr %i.ef, align 8, !tbaa !85
  %i.ej = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !440, !nonnull !124, !align !125
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !82 ; 2 uses
  %i.em = load double, ptr %i.el, align 8, !tbaa !85
  %i.en = extractelement <2 x double> %i.ec, i64 0
  %i.eo = fadd double %i.en, %i.em
  store double %i.eo, ptr %i.el, align 8, !tbaa !85
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @logf(float noundef) local_unnamed_addr #27

; Function Attrs: mustprogress uwtable
define internal noalias noundef nonnull ptr @"_ZNSt17_Function_handlerIFPN7xgboost6MetricEPKcENS0_6metric3$_5EE9_M_invokeERKSt9_Any_dataOS4_"(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) #10 align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #34 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN7xgboost6metric15PseudoErrorLossE, i64 16), ptr %i.a, align 16, !tbaa !48
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !441
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFPN7xgboost6MetricEPKcENS0_6metric3$_5EE10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIN7xgboost6metric3$_5EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit" [
    i32 0, label %"_ZNSt14_Function_base13_Base_managerIN7xgboost6metric3$_5EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit.sink.split"
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIN7xgboost6metric3$_5EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIN7xgboost6metric3$_5EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @"_ZTIN7xgboost6metric3$_5E", %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !49
  br label %"_ZNSt14_Function_base13_Base_managerIN7xgboost6metric3$_5EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIN7xgboost6metric3$_5EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIN7xgboost6metric3$_5EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7xgboost6metric15PseudoErrorLossD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #16 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #35
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6metric15PseudoErrorLoss10LoadConfigERKNS_4JsonE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::vector.185", align 8   ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 18, ptr %i.a, align 8, !tbaa !45
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !29
  %i.d = load i64, ptr %i.a, align 8, !tbaa !45   ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.c, ptr noundef nonnull align 1 dereferenceable(18) @.str.79, i64 18, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !28
  %i.f = load ptr, ptr %3, align 8, !tbaa !29
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.h = load ptr, ptr %1, align 8, !tbaa !59     ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !48
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr %i.k(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNK7xgboost4JsonixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c, !inline_history !0

_ZNK7xgboost4JsonixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZN7xgboost8FromJsonINS_16PseudoHuberParamEEESt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EERKNS_4JsonEPT_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.185") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull %i.m)
          to label %bb.a unwind label %bb.c

bb.a:                                             ; preds = %_ZNK7xgboost4JsonixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.n = load ptr, ptr %2, align 8, !tbaa !139    ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !140  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.n, %i.p
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ab, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i ], [ %i.n, %bb.a ] ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !29   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.u = load i64, ptr %i.s, align 8, !tbaa !35
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.w = load ptr, ptr %.05.i.i.i, align 8, !tbaa !29 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.z = load i64, ptr %i.x, align 8, !tbaa !35
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #35
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, %i.p
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !4

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !139
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.ac = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i ], [ %i.n, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !141
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #35
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i, %bb.b
  %i.ai = load ptr, ptr %3, align 8, !tbaa !29    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.b
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit
  %i.ak = load i64, ptr %i.b, align 8, !tbaa !35
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void

bb.c:                                             ; preds = %.noexc.i, %_ZNK7xgboost4JsonixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load ptr, ptr %3, align 8, !tbaa !29    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.b
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.c
  %i.ap = load i64, ptr %i.b, align 8, !tbaa !35
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %i.am
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7xgboost6metric15PseudoErrorLoss10SaveConfigEPNS_4JsonE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.xgboost::JsonString", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.xgboost::JsonObject", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.c = load ptr, ptr %0, align 8, !tbaa !48
end_hunk_0
