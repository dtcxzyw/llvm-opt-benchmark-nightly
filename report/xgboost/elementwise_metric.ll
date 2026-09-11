Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/elementwise_metric?download=true
inline.NumInlined: 4380
inline.NumDeleted: 1372
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK7xgboost6metric18EvalTweedieNLogLik4NameEv:bb.a
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.av = load i64, ptr %i.h, align 8, !tbaa !35
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.ax = load ptr, ptr %i.aa, align 8, !tbaa !29
  %i.ay = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ay, ptr %1, align 8, !tbaa !48
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ba = getelementptr i8, ptr %i.ay, i64 -24
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds i8, ptr %1, i64 %i.bb
  store ptr %i.az, ptr %i.bc, align 8, !tbaa !48
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bd, align 8, !tbaa !48
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !29 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !35
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #35
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bd, align 8, !tbaa !48
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bk) #18
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bl) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret ptr %i.ax

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.c
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.body:                                            ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.n

bb.n:                                             ; preds = %.body, %bb.m
  %.pn = phi { ptr, i32 } [ %i.u, %.body ], [ %i.bm, %bb.m ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN7xgboost6common13ParallelFor1dILm2048EmZNS_6metric12_GLOBAL__N_16ReduceIZNS2_13EvalEWiseBaseINS2_18EvalTweedieNLogLikEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS2_18PackedReduceResultEPKNS_7ContextESE_OT_mEUlSL_E_EEvT0_iOT1_ENKUlSK_E_clImEEDaSK_(i64 %.0.val.0.val, ptr nofree readonly captures(none) %.8.val, i64 noundef %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.xgboost::common::Range1d", align 8 ; 5 uses
  %i.a = shl i64 %0, 11                           ; 3 uses
  %i.b = sub i64 %.0.val.0.val, %i.a
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.b, i64 2048)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.c = add i64 %.sroa.speculated, %i.a
  call void @_ZN7xgboost6common7Range1dC2Emm(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.a, i64 noundef %i.c)
  %.val = load i64, ptr %1, align 8, !tbaa !122   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5 = load i64, ptr %i.d, align 8, !tbaa !123 ; 2 uses
  %i.e = icmp ult i64 %.val, %.val5
  br i1 %i.e, label %.lr.ph.i, label %_ZZN7xgboost6metric12_GLOBAL__N_16ReduceIZNS0_13EvalEWiseBaseINS0_18EvalTweedieNLogLikEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS0_18PackedReduceResultEPKNS_7ContextESC_OT_mENKUlSJ_E_clINS_6common7Range1dEEEDaSJ_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = load ptr, ptr %.8.val, align 8, !tbaa !713, !nonnull !124, !align !125
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !714, !nonnull !124, !align !125 ; 9 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !126, !noalias !715 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  br label %bb.b

bb.b:                                             ; preds = %_ZZN7xgboost6metric13EvalEWiseBaseINS0_18EvalTweedieNLogLikEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEENKUlmmmE_clEmmm.exit.i, %.lr.ph.i
  %.0187.i = phi i64 [ %.val, %.lr.ph.i ], [ %i.cb, %_ZZN7xgboost6metric13EvalEWiseBaseINS0_18EvalTweedieNLogLikEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEENKUlmmmE_clEmmm.exit.i ] ; 9 uses
  %i.t = phi <2 x double> [ zeroinitializer, %.lr.ph.i ], [ %i.ca, %_ZZN7xgboost6metric13EvalEWiseBaseINS0_18EvalTweedieNLogLikEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEENKUlmmmE_clEmmm.exit.i ]
  %i.u = icmp ugt i64 %.0187.i, 4294967295
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = load i64, ptr %i.g, align 8, !tbaa !45, !noalias !716 ; 5 uses
  %i.w = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.v)
  %.not.i.i.i = icmp samesign ult i64 %i.w, 2
  br i1 %.not.i.i.i, label %.split.us.i.i.i, label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %bb.c
  %i.x = add i64 %i.v, -1                         ; 2 uses
  %i.y = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.x)
  %i.z = lshr i64 %.0187.i, %i.y
  %i.aa = and i64 %i.x, %.0187.i
  br label %_ZN7xgboost6linalg12UnravelIndexILm2EEEDamNS_6common4SpanIKmXT_EEE.exit.i

.split.i.i.i:                                     ; preds = %bb.c
  %i.ab = udiv i64 %.0187.i, %i.v                 ; 2 uses
  %i.ac = mul i64 %i.ab, %i.v                     ; 0 uses
  %.recomposed = urem i64 %.0187.i, %i.v
  br label %_ZN7xgboost6linalg12UnravelIndexILm2EEEDamNS_6common4SpanIKmXT_EEE.exit.i

bb.d:                                             ; preds = %bb.b
  %i.ad = trunc nuw i64 %.0187.i to i32           ; 4 uses
  %i.ae = load i64, ptr %i.g, align 8, !tbaa !45, !noalias !717
  %i.af = trunc i64 %i.ae to i32                  ; 5 uses
  %i.ag = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.af)
  %.not.i7.i.i = icmp samesign ult i32 %i.ag, 2
  br i1 %.not.i7.i.i, label %.split.us.i11.i.i, label %.split.i8.i.i

.split.us.i11.i.i:                                ; preds = %bb.d
  %i.ah = add i32 %i.af, -1                       ; 2 uses
  %i.ai = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ah)
  %i.aj = lshr i32 %i.ad, %i.ai
  %i.ak = and i32 %i.ah, %i.ad
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i

.split.i8.i.i:                                    ; preds = %bb.d
  %i.al = udiv i32 %i.ad, %i.af                   ; 2 uses
  %i.am = mul i32 %i.al, %i.af                    ; 0 uses
  %.recomposed10 = urem i32 %i.ad, %i.af
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i

_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i: ; preds = %.split.i8.i.i, %.split.us.i11.i.i
  %.us-phi.i9.i.i = phi i32 [ %.recomposed10, %.split.i8.i.i ], [ %i.ak, %.split.us.i11.i.i ]
  %.us-phi23.i10.i.i = phi i32 [ %i.al, %.split.i8.i.i ], [ %i.aj, %.split.us.i11.i.i ]
  %.sroa.5.1.le.i.i.i = zext i32 %.us-phi.i9.i.i to i64
  %i.an = zext i32 %.us-phi23.i10.i.i to i64
  br label %_ZN7xgboost6linalg12UnravelIndexILm2EEEDamNS_6common4SpanIKmXT_EEE.exit.i

_ZN7xgboost6linalg12UnravelIndexILm2EEEDamNS_6common4SpanIKmXT_EEE.exit.i: ; preds = %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i, %.split.i.i.i, %.split.us.i.i.i
  %.sroa.5.1.le.i.sink.i.i = phi i64 [ %.sroa.5.1.le.i.i.i, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i ], [ %.recomposed, %.split.i.i.i ], [ %i.aa, %.split.us.i.i.i ]
  %.sink.i.i = phi i64 [ %i.an, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i ], [ %i.ab, %.split.i.i.i ], [ %i.z, %.split.us.i.i.i ] ; 3 uses
  br i1 %i.k, label %_ZNK7xgboost6common15OptionalWeightsixEm.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN7xgboost6linalg12UnravelIndexILm2EEEDamNS_6common4SpanIKmXT_EEE.exit.i
  %i.ao = icmp ult i64 %.sink.i.i, %i.j
  br i1 %i.ao, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.i, label %bb.f, !prof !120

bb.f:                                             ; preds = %bb.e
  call void @_ZSt9terminatev() #36, !noalias !715
  unreachable

_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.i: ; preds = %bb.e
  %i.ap = load ptr, ptr %i.l, align 8, !tbaa !127, !noalias !715
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %.sink.i.i
  br label %_ZNK7xgboost6common15OptionalWeightsixEm.exit.i.i

_ZNK7xgboost6common15OptionalWeightsixEm.exit.i.i: ; preds = %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.i, %_ZN7xgboost6linalg12UnravelIndexILm2EEEDamNS_6common4SpanIKmXT_EEE.exit.i
  %.in.i.i.i = phi ptr [ %i.aq, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.i ], [ %i.m, %_ZN7xgboost6linalg12UnravelIndexILm2EEEDamNS_6common4SpanIKmXT_EEE.exit.i ]
  %i.ar = load i64, ptr %i.n, align 8, !tbaa !126, !noalias !715
  %i.as = icmp ult i64 %.0187.i, %i.ar
  br i1 %i.as, label %_ZZN7xgboost6metric13EvalEWiseBaseINS0_18EvalTweedieNLogLikEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEENKUlmmmE_clEmmm.exit.i, label %bb.g, !prof !120

bb.g:                                             ; preds = %_ZNK7xgboost6common15OptionalWeightsixEm.exit.i.i
  call void @_ZSt9terminatev() #36, !noalias !715
  unreachable

_ZZN7xgboost6metric13EvalEWiseBaseINS0_18EvalTweedieNLogLikEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEENKUlmmmE_clEmmm.exit.i: ; preds = %_ZNK7xgboost6common15OptionalWeightsixEm.exit.i.i
  %i.at = load ptr, ptr %i.o, align 8, !tbaa !105, !noalias !715
  %i.au = load i64, ptr %i.p, align 8, !tbaa !45, !noalias !715
  %i.av = mul i64 %i.au, %.sink.i.i
  %i.aw = getelementptr [4 x i8], ptr %i.at, i64 %i.av
  %i.ax = load i64, ptr %i.q, align 8, !tbaa !45, !noalias !715
  %i.ay = mul i64 %i.ax, %.sroa.5.1.le.i.sink.i.i
  %i.az = getelementptr [4 x i8], ptr %i.aw, i64 %i.ay
  %i.ba = load float, ptr %i.az, align 4, !tbaa !74, !noalias !715
  %i.bb = load float, ptr %.in.i.i.i, align 4, !tbaa !74, !noalias !715 ; 2 uses
  %i.bc = load ptr, ptr %i.s, align 8, !tbaa !127, !noalias !715
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %.0187.i
  %i.be = load float, ptr %i.bd, align 4, !tbaa !74, !noalias !715 ; 2 uses
  %i.bf = load float, ptr %i.r, align 8, !tbaa !165, !noalias !715
  %i.bg = call noundef float @logf(float noundef %i.be) #18, !noalias !715
  %i.bh = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bj = fsub <2 x float> <float 1.000000e+00, float 2.000000e+00>, %i.bi ; 3 uses
  %i.bk = extractelement <2 x float> %i.bj, i64 0
  %i.bl = fmul float %i.bk, %i.bg
  %i.bm = call noundef float @expf(float noundef %i.bl) #18, !noalias !715
  %i.bn = call noundef float @logf(float noundef %i.be) #18, !noalias !715
  %i.bo = extractelement <2 x float> %i.bj, i64 1
  %i.bp = fmul float %i.bo, %i.bn
  %i.bq = call noundef float @expf(float noundef %i.bp) #18, !noalias !715
  %i.br = fneg float %i.bm
  %i.bs = fmul float %i.ba, %i.br
  %i.bt = insertelement <2 x float> poison, float %i.bs, i64 0
  %i.bu = insertelement <2 x float> %i.bt, float %i.bq, i64 1
  %i.bv = fdiv <2 x float> %i.bu, %i.bj
  %2 = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bv)
  %i.bw = fmul float %i.bb, %2
  %i.bx = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.by = insertelement <2 x float> %i.bx, float %i.bw, i64 1
  %i.bz = fpext <2 x float> %i.by to <2 x double>
  %i.ca = fadd <2 x double> %i.t, %i.bz           ; 2 uses
  %i.cb = add nuw i64 %.0187.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cb, %.val5
  br i1 %exitcond.not.i, label %_ZZN7xgboost6metric12_GLOBAL__N_16ReduceIZNS0_13EvalEWiseBaseINS0_18EvalTweedieNLogLikEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS0_18PackedReduceResultEPKNS_7ContextESC_OT_mENKUlSJ_E_clINS_6common7Range1dEEEDaSJ_.exit, label %bb.b, !llvm.loop !711

_ZZN7xgboost6metric12_GLOBAL__N_16ReduceIZNS0_13EvalEWiseBaseINS0_18EvalTweedieNLogLikEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUlmmmE_EENS0_18PackedReduceResultEPKNS_7ContextESC_OT_mENKUlSJ_E_clINS_6common7Range1dEEEDaSJ_.exit: ; preds = %_ZZN7xgboost6metric13EvalEWiseBaseINS0_18EvalTweedieNLogLikEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEENKUlmmmE_clEmmm.exit.i, %bb.a
  %i.cc = phi <2 x double> [ zeroinitializer, %bb.a ], [ %i.ca, %_ZZN7xgboost6metric13EvalEWiseBaseINS0_18EvalTweedieNLogLikEE4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEENKUlmmmE_clEmmm.exit.i ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !718, !nonnull !124, !align !125
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !82 ; 2 uses
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !85
  %i.ch = extractelement <2 x double> %i.cc, i64 1
  %i.ci = fadd double %i.ch, %i.cg
  store double %i.ci, ptr %i.cf, align 8, !tbaa !85
  %i.cj = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !719, !nonnull !124, !align !125
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !82 ; 2 uses
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !85
  %i.cn = extractelement <2 x double> %i.cc, i64 0
  %i.co = fadd double %i.cn, %i.cm
  store double %i.co, ptr %i.cl, align 8, !tbaa !85
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @expf(float noundef) local_unnamed_addr #27

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @"_ZNSt17_Function_handlerIFPN7xgboost6MetricEPKcENS0_6metric4$_11EE9_M_invokeERKSt9_Any_dataOS4_"(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #34 ; 11 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(88) %i.a, i8 0, i64 88, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN7xgboost6metric13QuantileErrorE, i64 16), ptr %i.a, align 16, !tbaa !48
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  invoke void @_ZN7xgboost16HostDeviceVectorIfEC1EmfNS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0, float noundef 0.000000e+00, i32 -65536)
          to label %"_ZSt10__invoke_rIPN7xgboost6MetricERNS0_6metric4$_11EJPKcEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES9_E4typeEOSA_DpOSB_.exit" unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 88) #35
  resume { ptr, i32 } %i.c

"_ZSt10__invoke_rIPN7xgboost6MetricERNS0_6metric4$_11EJPKcEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES9_E4typeEOSA_DpOSB_.exit": ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 0, ptr %i.d, align 8, !tbaa !167
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store ptr %i.f, ptr %i.e, align 16, !tbaa !34, !alias.scope !722
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(14) %i.f, ptr noundef nonnull align 1 dereferenceable(14) @.str.100, i64 14, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 14, ptr %i.g, align 8, !tbaa !28, !alias.scope !722
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 62
  store i8 0, ptr %i.h, align 2, !tbaa !35
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFPN7xgboost6MetricEPKcENS0_6metric4$_11EE10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIN7xgboost6metric4$_11EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit" [
    i32 0, label %"_ZNSt14_Function_base13_Base_managerIN7xgboost6metric4$_11EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit.sink.split"
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIN7xgboost6metric4$_11EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIN7xgboost6metric4$_11EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @"_ZTIN7xgboost6metric4$_11E", %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !49
  br label %"_ZNSt14_Function_base13_Base_managerIN7xgboost6metric4$_11EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIN7xgboost6metric4$_11EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIN7xgboost6metric4$_11EE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

declare void @_ZN7xgboost16HostDeviceVectorIfEC1EmfNS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef, float noundef, i32) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN7xgboost16HostDeviceVectorIfED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #13

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7xgboost6metric13QuantileErrorD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN7xgboost6metric13QuantileErrorE, i64 16), ptr %0, align 8, !tbaa !48
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !71   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !168
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #35
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i.i:                ; preds = %bb.b, %bb.a
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN7xgboost6common17QuantileLossParamD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !35
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #35
  br label %_ZN7xgboost6common17QuantileLossParamD2Ev.exit

_ZN7xgboost6common17QuantileLossParamD2Ev.exit:   ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN7xgboost16HostDeviceVectorIfED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.n) #18
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7xgboost6metric13QuantileErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN7xgboost6metric13QuantileErrorE, i64 16), ptr %0, align 8, !tbaa !48
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !71   ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !168
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #35, !inline_history !723
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i:              ; preds = %bb.b, %bb.a
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN7xgboost6metric13QuantileErrorD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !35
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #35, !inline_history !723
  br label %_ZN7xgboost6metric13QuantileErrorD2Ev.exit

_ZN7xgboost6metric13QuantileErrorD2Ev.exit:       ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN7xgboost16HostDeviceVectorIfED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.n) #18, !inline_history !723
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #35
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6metric13QuantileError10LoadConfigERKNS_4JsonE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.185", align 8   ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %5 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !59
  %i.b = tail call noundef ptr @_ZN7xgboost4CastIKNS_10JsonObjectEKNS_5ValueEEEPT_PT0_(ptr noundef nonnull %i.a) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = tail call ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7xgboost4JsonEESt10_Select1stISA_ESt4lessIvESaISA_EE10_M_find_trIA20_cvEESt23_Rb_tree_const_iteratorISA_ERKT_(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 1 dereferenceable(20) @.str.101) ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.not = icmp eq ptr %i.d, %i.e
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_ZN7xgboost8FromJsonINS_6common17QuantileLossParamEEESt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_ESaISB_EERKNS_4JsonEPT_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.185") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull %i.g)
  %i.h = load ptr, ptr %2, align 8, !tbaa !139    ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !140  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.v, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i ], [ %i.h, %bb.b ] ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !29   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !35
  %i.p = add i64 %i.o, 1
end_hunk_0
begin_hunk_1_@_GLOBAL__sub_I_elementwise_metric.cc:bb.a
  br i1 %i.rn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i196, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i200

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i200: ; preds = %_ZNSt14_Function_baseD2Ev.exit18.i199
  %i.ro = load i64, ptr %i.ql, align 8, !tbaa !35
  %i.rp = add i64 %i.ro, 1
  call void @_ZdlPvm(ptr noundef %i.rm, i64 noundef %i.rp) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i196

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i196: ; preds = %_ZNSt14_Function_baseD2Ev.exit18.i199, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i200, %bb.bh
  %.pn.pn.i197 = phi { ptr, i32 } [ %i.rk, %bb.bh ], [ %i.rl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i200 ], [ %i.rl, %_ZNSt14_Function_baseD2Ev.exit18.i199 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.bi

bb.bi:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i196, %bb.bg
  %.pn.pn.pn.i191 = phi { ptr, i32 } [ %.pn.pn.i197, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i196 ], [ %i.rj, %bb.bg ]
  %i.rq = load ptr, ptr %4, align 8, !tbaa !29    ; 2 uses
  %i.rr = icmp eq ptr %i.rq, %i.qh
  br i1 %i.rr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i193, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i192

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i192: ; preds = %bb.bi
  %i.rs = load i64, ptr %i.qh, align 8, !tbaa !35
  %i.rt = add i64 %i.rs, 1
  call void @_ZdlPvm(ptr noundef %i.rq, i64 noundef %i.rt) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i193

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i193: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i192
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %common.resume

__cxx_global_var_init.32.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i206, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i207
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  store ptr %i.qk, ptr @_ZN7xgboost6metric32__make_MetricReg_QuantileError__E, align 8, !tbaa !33
  %i.ru = call noundef ptr @_ZN4dmlc8RegistryIN7xgboost9MetricRegEE3GetEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.rv = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.rv, ptr %1, align 8, !tbaa !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.rv, ptr noundef nonnull align 1 dereferenceable(9) @.str.36, i64 9, i1 false)
  %i.rw = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 9, ptr %i.rw, align 8, !tbaa !28
  %i.rx = getelementptr inbounds nuw i8, ptr %1, i64 25
  store i8 0, ptr %i.rx, align 1, !tbaa !35
  %i.ry = invoke noundef nonnull align 8 dereferenceable(152) ptr @_ZN4dmlc8RegistryIN7xgboost9MetricRegEE12__REGISTER__ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %i.ru, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %.noexc.i10.i214 unwind label %bb.bl ; 5 uses

.noexc.i10.i214:                                  ; preds = %__cxx_global_var_init.32.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.rz = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.rz, ptr %2, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 27, ptr %i.a, align 8, !tbaa !45
  %i.sa = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc11.i217 unwind label %bb.bm ; 2 uses

.noexc11.i217:                                    ; preds = %.noexc.i10.i214
  store ptr %i.sa, ptr %2, align 8, !tbaa !29
  %i.sb = load i64, ptr %i.a, align 8, !tbaa !45  ; 3 uses
  store i64 %i.sb, ptr %i.rz, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.sa, ptr noundef nonnull align 1 dereferenceable(27) @.str.37, i64 27, i1 false)
  %i.sc = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.sb, ptr %i.sc, align 8, !tbaa !28
  %i.sd = load ptr, ptr %2, align 8, !tbaa !29
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 %i.sb
  store i8 0, ptr %i.se, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.sf = getelementptr inbounds nuw i8, ptr %i.ry, i64 32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.sf, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt8functionIFPN7xgboost6MetricEPKcEEC2ERKS6_.exit.i.i.i221 unwind label %_ZNSt14_Function_baseD2Ev.exit18.i218

_ZNSt8functionIFPN7xgboost6MetricEPKcEEC2ERKS6_.exit.i.i.i221: ; preds = %.noexc11.i217
  %i.sg = getelementptr inbounds nuw i8, ptr %i.ry, i64 88 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #18
  %i.sh = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.sg, i64 16, i1 false), !tbaa.struct !883
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.sg, i8 0, i64 16, i1 false)
  %i.si = getelementptr inbounds nuw i8, ptr %i.ry, i64 104 ; 3 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.ry, i64 112
  %i.sk = load <2 x ptr>, ptr %i.si, align 8, !tbaa !49
  %i.sl = load ptr, ptr %i.si, align 8, !tbaa !49 ; 2 uses
  store ptr @"_ZNSt17_Function_handlerIFPN7xgboost6MetricEPKcENS0_6metric4$_12EE10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation", ptr %i.si, align 8, !tbaa !49
  store <2 x ptr> %i.sk, ptr %i.sh, align 8, !tbaa !49
  store ptr @"_ZNSt17_Function_handlerIFPN7xgboost6MetricEPKcENS0_6metric4$_12EE9_M_invokeERKSt9_Any_dataOS4_", ptr %i.sj, align 8, !tbaa !49
  %.not.i.i.i.i222 = icmp eq ptr %i.sl, null
  br i1 %.not.i.i.i.i222, label %_ZNSt14_Function_baseD2Ev.exit.i223, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt8functionIFPN7xgboost6MetricEPKcEEC2ERKS6_.exit.i.i.i221
  %i.sm = invoke noundef zeroext i1 %i.sl(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i223 unwind label %bb.bk ; 0 uses

bb.bk:                                            ; preds = %bb.bj
  %i.sn = landingpad { ptr, i32 }
          catch ptr null
  %i.so = extractvalue { ptr, i32 } %i.sn, 0
  call void @__clang_call_terminate(ptr %i.so) #36
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i223:              ; preds = %bb.bj, %_ZNSt8functionIFPN7xgboost6MetricEPKcEEC2ERKS6_.exit.i.i.i221
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #18
  %i.sp = load ptr, ptr %2, align 8, !tbaa !29    ; 2 uses
  %i.sq = icmp eq ptr %i.sp, %i.rz
  br i1 %i.sq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i225, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i224

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i224: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i223
  %i.sr = load i64, ptr %i.rz, align 8, !tbaa !35
  %i.ss = add i64 %i.sr, 1
  call void @_ZdlPvm(ptr noundef %i.sp, i64 noundef %i.ss) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i225

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i225: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i223, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i224
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.st = load ptr, ptr %1, align 8, !tbaa !29    ; 2 uses
  %i.su = icmp eq ptr %i.st, %i.rv
  br i1 %i.su, label %__cxx_global_var_init.35.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i226

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i226: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i225
  %i.sv = load i64, ptr %i.rv, align 8, !tbaa !35
  %i.sw = add i64 %i.sv, 1
  call void @_ZdlPvm(ptr noundef %i.st, i64 noundef %i.sw) #35
  br label %__cxx_global_var_init.35.exit

bb.bl:                                            ; preds = %__cxx_global_var_init.32.exit
  %i.sx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bm:                                            ; preds = %.noexc.i10.i214
  %i.sy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i215

_ZNSt14_Function_baseD2Ev.exit18.i218:            ; preds = %.noexc11.i217
  %i.sz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ta = load ptr, ptr %2, align 8, !tbaa !29    ; 2 uses
  %i.tb = icmp eq ptr %i.ta, %i.rz
  br i1 %i.tb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i215, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i219

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i219: ; preds = %_ZNSt14_Function_baseD2Ev.exit18.i218
  %i.tc = load i64, ptr %i.rz, align 8, !tbaa !35
  %i.td = add i64 %i.tc, 1
  call void @_ZdlPvm(ptr noundef %i.ta, i64 noundef %i.td) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i215

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i215: ; preds = %_ZNSt14_Function_baseD2Ev.exit18.i218, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i219, %bb.bm
  %.pn.pn.i216 = phi { ptr, i32 } [ %i.sy, %bb.bm ], [ %i.sz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i219 ], [ %i.sz, %_ZNSt14_Function_baseD2Ev.exit18.i218 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.bn

bb.bn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i215, %bb.bl
  %.pn.pn.pn.i210 = phi { ptr, i32 } [ %.pn.pn.i216, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i215 ], [ %i.sx, %bb.bl ]
  %i.te = load ptr, ptr %1, align 8, !tbaa !29    ; 2 uses
  %i.tf = icmp eq ptr %i.te, %i.rv
  br i1 %i.tf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i212, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i211

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i211: ; preds = %bb.bn
  %i.tg = load i64, ptr %i.rv, align 8, !tbaa !35
  %i.th = add i64 %i.tg, 1
  call void @_ZdlPvm(ptr noundef %i.te, i64 noundef %i.th) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i212

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i212: ; preds = %bb.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i211
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %common.resume

__cxx_global_var_init.35.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i225, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i226
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  store ptr %i.ry, ptr @_ZN7xgboost6metric33__make_MetricReg_ExpectileError__E, align 8, !tbaa !33
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #31

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.ctpop.v2i64(<2 x i64>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.ctpop.v4i32(<4 x i32>) #24

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nounwind }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { cold noreturn }
attributes #22 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nounwind memory(none) }
attributes #26 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #29 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #33 = { noreturn }
attributes #34 = { builtin allocsize(0) }
attributes #35 = { builtin nounwind }
attributes #36 = { noreturn nounwind }
attributes #37 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!10, !11}
!llvm.ident = !{!12}
!llvm.errno.tbaa = !{!17}

!0 = distinct !{null}
!1 = distinct !{null, null, null, null}
!2 = distinct !{!2, !31}
!3 = distinct !{null, null}
!4 = distinct !{!4, !31}
!5 = distinct !{null, null, null, null}
!6 = distinct !{null, null, null, null, null, null}
!7 = distinct !{!7, !31}
!8 = distinct !{!8, !31}
!9 = distinct !{!9, !31}
!10 = !{i32 8, !"PIC Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 2}
!12 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!13 = !{!"Simple C++ TBAA"}
!14 = !{!"omnipotent char", !13, i64 0}
!15 = !{!"int", !14, i64 0}
!16 = !{!"__libc_errno", !15, i64 0}
!17 = !{!16, !15, i64 0}
!18 = !{!"_ZTSSt14_Rb_tree_color", !14, i64 0}
!19 = !{!"any pointer", !14, i64 0}
!20 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !19, i64 0}
!21 = !{!"_ZTSSt18_Rb_tree_node_base", !18, i64 0, !20, i64 8, !20, i64 16, !20, i64 24}
!22 = !{!"long", !14, i64 0}
!23 = !{!"_ZTSSt15_Rb_tree_header", !21, i64 0, !22, i64 32}
!24 = !{!23, !20, i64 8}
!25 = !{!"p1 omnipotent char", !19, i64 0}
!26 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !25, i64 0}
!27 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !26, i64 0, !22, i64 8, !14, i64 16}
!28 = !{!27, !22, i64 8}
!29 = !{!27, !25, i64 0}
!30 = !{!20, !20, i64 0}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!"p1 _ZTSN7xgboost9MetricRegE", !19, i64 0}
!33 = !{!32, !32, i64 0}
!34 = !{!26, !25, i64 0}
!35 = !{!14, !14, i64 0}
!36 = !{!"any p2 pointer", !19, i64 0}
!37 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !19, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN7xgboost9MetricRegEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE", !19, i64 0}
!40 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7xgboost9MetricRegEEE", !19, i64 0}
!41 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN7xgboost9MetricRegEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE10_Auto_nodeE", !39, i64 0, !40, i64 8}
!42 = !{!41, !40, i64 8}
!43 = !{!23, !22, i64 32}
!44 = !{!21, !20, i64 24}
!45 = !{!22, !22, i64 0}
!46 = !{!23, !20, i64 16}
!47 = !{!"vtable pointer", !13, i64 0}
!48 = !{!47, !47, i64 0}
!49 = !{!19, !19, i64 0}
!50 = !{!"_ZTSSt13__atomic_baseIiE", !15, i64 0}
!51 = !{!50, !15, i64 0}
!52 = !{!"_ZTSSt6atomicIiE", !50, i64 0}
!53 = !{!"_ZTSN7xgboost16IntrusivePtrCellE", !52, i64 0}
!54 = !{!"_ZTSN7xgboost5Value9ValueKindE", !14, i64 0}
!55 = !{!"_ZTSN7xgboost5ValueE", !53, i64 8, !54, i64 16}
!56 = !{!55, !54, i64 16}
!57 = !{!"p1 _ZTSN7xgboost5ValueE", !19, i64 0}
!58 = !{!"_ZTSN7xgboost12IntrusivePtrINS_5ValueEEE", !57, i64 0}
!59 = !{!58, !57, i64 0}
!60 = !{!57, !57, i64 0}
!61 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !19, i64 0}
!62 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !61, i64 0}
!63 = !{!15, !15, i64 0}
!64 = !{!"_ZTSN7xgboost12ConfigurableE"}
!65 = !{!"p1 _ZTSN7xgboost7ContextE", !19, i64 0}
!66 = !{!"_ZTSN7xgboost6MetricE", !64, i64 0, !65, i64 8}
!67 = !{!66, !65, i64 8}
!68 = !{!"p1 float", !19, i64 0}
!69 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !68, i64 0, !68, i64 8, !68, i64 16}
!70 = !{!69, !68, i64 8}
!71 = !{!69, !68, i64 0}
!72 = !{!68, !68, i64 0}
!73 = !{!"float", !14, i64 0}
!74 = !{!73, !73, i64 0}
!75 = !{!"_ZTSN7xgboost9DeviceOrd4TypeE", !14, i64 0}
!76 = !{!75, !75, i64 0}
!77 = !{!"short", !14, i64 0}
!78 = !{!77, !77, i64 0}
!79 = !{i64 0, i64 16, !35, i64 16, i64 16, !35, i64 32, i64 8, !45, i64 40, i64 8, !72, i64 48, i64 8, !72, i64 56, i64 8, !45, i64 64, i64 2, !76, i64 66, i64 2, !78}
!80 = !{!"p1 double", !19, i64 0}
!81 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !80, i64 0, !80, i64 8, !80, i64 16}
!82 = !{!81, !80, i64 0}
!83 = !{!81, !80, i64 16}
!84 = !{!"double", !14, i64 0}
!85 = !{!84, !84, i64 0}
!86 = !{!81, !80, i64 8}
!87 = !{!"p1 _ZTSN7xgboost6linalg10TensorViewIKfLi2EEE", !19, i64 0}
!88 = !{!87, !87, i64 0}
!89 = !{!"p1 _ZTSSt6vectorIdSaIdEE", !19, i64 0}
!90 = !{!89, !89, i64 0}
!91 = !{!"_ZTSNSt15__exception_ptr13exception_ptrE", !19, i64 0}
!92 = !{!91, !19, i64 0}
!93 = !{!80, !80, i64 0}
!94 = !{!"p1 _ZTSN7xgboost10collective9CommGroupE", !19, i64 0}
!95 = !{!94, !94, i64 0}
!96 = !{!"p1 _ZTSN7xgboost10collective6detail10ResultImplE", !19, i64 0}
!97 = !{!96, !96, i64 0}
!98 = !{!"p1 _ZTSN7xgboost20HostDeviceVectorImplIfEE", !19, i64 0}
!99 = !{!"_ZTSN7xgboost16HostDeviceVectorIfEE", !98, i64 0}
!100 = !{!"_ZTSN7xgboost6linalg5OrderE", !14, i64 0}
!101 = !{!"_ZTSN7xgboost6linalg6TensorIfLi2EEE", !99, i64 0, !14, i64 8, !100, i64 24}
!102 = !{!"_ZTSN7xgboost6common4SpanIKfLm18446744073709551615EEE", !22, i64 0, !68, i64 8}
!103 = !{!"_ZTSN7xgboost9DeviceOrdE", !75, i64 0, !77, i64 2}
!104 = !{!"_ZTSN7xgboost6linalg10TensorViewIKfLi2EEE", !14, i64 0, !14, i64 16, !102, i64 32, !68, i64 48, !22, i64 56, !103, i64 64}
!105 = !{!104, !68, i64 48}
!106 = !{!"p1 _ZTSNSt6locale5_ImplE", !19, i64 0}
!107 = !{!"_ZTSSt6locale", !106, i64 0}
!108 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !25, i64 8, !25, i64 16, !25, i64 24, !25, i64 32, !25, i64 40, !25, i64 48, !107, i64 56}
!109 = !{!108, !25, i64 40}
!110 = !{!108, !25, i64 32}
!111 = !{!"_ZTSSt13_Ios_Fmtflags", !14, i64 0}
!112 = !{!"_ZTSSt12_Ios_Iostate", !14, i64 0}
!113 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !19, i64 0}
!114 = !{!"_ZTSNSt8ios_base6_WordsE", !19, i64 0, !22, i64 8}
!115 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !19, i64 0}
!116 = !{!"_ZTSSt8ios_base", !22, i64 8, !22, i64 16, !111, i64 24, !112, i64 28, !112, i64 32, !113, i64 40, !114, i64 48, !14, i64 64, !15, i64 192, !115, i64 200, !107, i64 208}
!117 = !{!"branch_weights", i32 1, i32 1023}
!118 = !{!25, !25, i64 0}
!119 = !{!"p1 int", !19, i64 0}
!120 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!121 = !{!"_ZTSN7xgboost6common7Range1dE", !22, i64 0, !22, i64 8}
!122 = !{!121, !22, i64 0}
!123 = !{!121, !22, i64 8}
!124 = !{}
!125 = !{i64 8}
!126 = !{!102, !22, i64 0}
!127 = !{!102, !68, i64 8}
!128 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!129 = !{!"llvm.loop.peeled.count", i32 1}
!130 = !{!62, !61, i64 0}
!131 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !15, i64 8, !15, i64 12}
!132 = !{!131, !15, i64 8}
!133 = !{!131, !15, i64 12}
!134 = !{!"bool", !14, i64 0}
!135 = !{!"_ZTSN7xgboost16XGBoostParameterINS_16PseudoHuberParamEEE", !134, i64 0}
!136 = !{!"_ZTSN7xgboost16PseudoHuberParamE", !135, i64 0, !73, i64 4}
!137 = !{!"p1 _ZTSSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_E", !19, i64 0}
!138 = !{!"_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_Vector_impl_dataE", !137, i64 0, !137, i64 8, !137, i64 16}
!139 = !{!138, !137, i64 0}
!140 = !{!138, !137, i64 8}
!141 = !{!138, !137, i64 16}
!142 = !{!135, !134, i64 0}
!143 = !{i8 0, i8 2}
!144 = !{!137, !137, i64 0}
!145 = !{!23, !18, i64 0}
!146 = !{!23, !20, i64 24}
!147 = !{!21, !20, i64 16}
!148 = !{!"p1 _ZTSN4dmlc9parameter16FieldAccessEntryE", !19, i64 0}
!149 = !{!"_ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4dmlc9parameter16FieldAccessEntryEE", !27, i64 0, !148, i64 32}
!150 = !{!149, !148, i64 32}
!151 = !{!148, !148, i64 0}
!152 = !{!116, !22, i64 16}
!153 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE", !19, i64 0}
!154 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE", !19, i64 0}
end_hunk_1
