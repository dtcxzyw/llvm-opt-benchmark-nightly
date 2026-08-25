Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/kelvinlets?download=true
inline.NumInlined: 6810
inline.NumDeleted: 3601
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN3igl19kelvinlet_evaluatorIN5Eigen13CwiseBinaryOpINS1_8internal13scalar_sum_opIddEEKNS2_IS5_KNS2_IS5_KNS1_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEKNS2_INS3_17scalar_product_opIddEEKNS2_ISA_KNS1_14CwiseNullaryOpINS3_18scalar_constant_opIdEES8_EES8_EESF_EEEESJ_EESJ_EES7_S7_NS6_IdLi3ELi3ELi0ELi3ELi3EEEdEENS6_IT3_Li3ELi1ELi0ELi3ELi1EEESQ_RKNS1_10MatrixBaseIT_EERKNSS_IT0_EERKNSS_IT1_EERKNSS_IT2_EERKNS_15KelvinletParamsISQ_EE:bb.a
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.pn32.pn = phi { ptr, i32 } [ %i.fn, %bb.ah ], [ %i.fm, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br label %bb.ba

bb.aj:                                            ; preds = %bb.v
  %i.fo = getelementptr inbounds nuw i8, ptr %6, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  %i.fp = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.fq = load ptr, ptr %i.fp, align 16, !tbaa !120, !noalias !249
  %.not.i.i57 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i57, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZSt25__throw_bad_function_callv() #22
          to label %.noexc58 unwind label %bb.at

.noexc58:                                         ; preds = %bb.ak
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.fr = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fs = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 3 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !125, !noalias !249
  invoke void %i.ft(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::Matrix.18") align 8 %15, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.fr)
          to label %bb.am unwind label %bb.at, !inline_history !127

bb.am:                                            ; preds = %bb.al
  %i.fu = load double, ptr %i.fo, align 8, !tbaa !39, !noalias !252 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %6, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  %i.fw = load ptr, ptr %i.fp, align 16, !tbaa !120, !noalias !255
  %.not.i.i61 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i61, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  invoke void @_ZSt25__throw_bad_function_callv() #22
          to label %.noexc62 unwind label %bb.au

.noexc62:                                         ; preds = %bb.an
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.fx = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.fy = load ptr, ptr %i.fs, align 8, !tbaa !125, !noalias !255
  invoke void %i.fy(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::Matrix.18") align 8 %16, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.fx)
          to label %bb.ap unwind label %bb.au, !inline_history !127

bb.ap:                                            ; preds = %bb.ao
  %i.fz = load double, ptr %i.fv, align 8, !tbaa !39, !noalias !258 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %6, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  %i.gb = load ptr, ptr %i.fp, align 16, !tbaa !120, !noalias !261
  %.not.i.i65 = icmp eq ptr %i.gb, null
  br i1 %.not.i.i65, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZSt25__throw_bad_function_callv() #22
          to label %.noexc66 unwind label %bb.av

.noexc66:                                         ; preds = %bb.aq
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.gc = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.gd = load ptr, ptr %i.fs, align 8, !tbaa !125, !noalias !261
  invoke void %i.gd(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::Matrix.18") align 8 %17, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.gc)
          to label %bb.as unwind label %bb.av, !inline_history !127

bb.as:                                            ; preds = %bb.ar
  %i.ge = load double, ptr %i.ga, align 8, !tbaa !39, !noalias !264 ; 2 uses
  %.sroa.3.32.vec.insert.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.fu, i64 0
  %.sroa.917.64.vec.insert.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.fz, i64 0
  %.sroa.1521.96.vec.insert.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.ge, i64 0
  %i.gf = shufflevector <2 x double> %.sroa.3.32.vec.insert.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gg = load <2 x double>, ptr %15, align 16, !tbaa !58
  %i.gh = fmul <2 x double> %i.gf, %i.gg
  %i.gi = shufflevector <2 x double> %.sroa.917.64.vec.insert.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gj = load <2 x double>, ptr %16, align 16, !tbaa !58
  %i.gk = fmul <2 x double> %i.gi, %i.gj
  %i.gl = fadd <2 x double> %i.gh, %i.gk
  %i.gm = shufflevector <2 x double> %.sroa.1521.96.vec.insert.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gn = load <2 x double>, ptr %17, align 16, !tbaa !58
  %i.go = fmul <2 x double> %i.gm, %i.gn
  %i.gp = fadd <2 x double> %i.gl, %i.go
  %i.gq = fmul <2 x double> %i.gp, splat (double 2.000000e+01)
  store <2 x double> %i.gq, ptr %0, align 8, !tbaa !58
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gs = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.gt = load double, ptr %i.gs, align 16, !tbaa !39
  %i.gu = fmul double %i.fu, %i.gt
  %i.gv = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.gw = load double, ptr %i.gv, align 16, !tbaa !39
  %i.gx = fmul double %i.fz, %i.gw
  %i.gy = fadd double %i.gu, %i.gx
  %i.gz = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.ha = load double, ptr %i.gz, align 16, !tbaa !39
  %i.hb = fmul double %i.ge, %i.ha
  %i.hc = fadd double %i.gy, %i.hb
  %i.hd = fmul double %i.hc, 2.000000e+01
  store double %i.hd, ptr %i.gr, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %_ZNKSt8functionIFN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEERKdEEclES4_.exit

bb.at:                                            ; preds = %bb.al, %bb.ak
  %i.he = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.au:                                            ; preds = %bb.ao, %bb.an
  %i.hf = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.av:                                            ; preds = %bb.ar, %bb.aq
  %i.hg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.pn.pn = phi { ptr, i32 } [ %i.hg, %bb.av ], [ %i.hf, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.at
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.aw ], [ %i.he, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %bb.ba

_ZNKSt8functionIFN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEERKdEEclES4_.exit: ; preds = %bb.y, %bb.as, %bb.af
  %i.hh = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.hi = load ptr, ptr %i.hh, align 16, !tbaa !120 ; 2 uses
  %.not.i = icmp eq ptr %i.hi, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZNKSt8functionIFN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEERKdEEclES4_.exit
  %i.hj = invoke noundef zeroext i1 %i.hi(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.az ; 0 uses

bb.az:                                            ; preds = %bb.ay
  %i.hk = landingpad { ptr, i32 }
          catch ptr null
  %i.hl = extractvalue { ptr, i32 } %i.hk, 0
  call void @__clang_call_terminate(ptr %i.hl) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNKSt8functionIFN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEERKdEEclES4_.exit, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  ret void

bb.ba:                                            ; preds = %bb.ax, %bb.ai, %bb.z, %bb.u, %bb.p, %bb.k, %bb.f
  %.pn35 = phi { ptr, i32 } [ %i.es, %bb.z ], [ %.pn32.pn, %bb.ai ], [ %.pn.pn.pn, %bb.ax ], [ %i.dd, %bb.f ], [ %i.do, %bb.k ], [ %i.dz, %bb.p ], [ %i.ek, %bb.u ]
  %i.hm = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.hn = load ptr, ptr %i.hm, align 16, !tbaa !120 ; 2 uses
  %.not.i69 = icmp eq ptr %i.hn, null
  br i1 %.not.i69, label %_ZNSt14_Function_baseD2Ev.exit70, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ho = invoke noundef zeroext i1 %i.hn(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit70 unwind label %bb.bc ; 0 uses

bb.bc:                                            ; preds = %bb.bb
  %i.hp = landingpad { ptr, i32 }
          catch ptr null
  %i.hq = extractvalue { ptr, i32 } %i.hp, 0
  call void @__clang_call_terminate(ptr %i.hq) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit70:                 ; preds = %bb.ba, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  resume { ptr, i32 } %.pn35
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt17_Function_handlerIFN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEERKdEZN3igl19kelvinlet_evaluatorIS2_S2_S2_NS1_IdLi3ELi3ELi0ELi3ELi3EEEdEENS1_IT3_Li3ELi1ELi0ELi3ELi1EEES9_RKNS0_10MatrixBaseIT_EERKNSB_IT0_EERKNSB_IT1_EERKNSB_IT2_EERKNS6_15KelvinletParamsIS9_EEEUlS4_E_E9_M_invokeERKSt9_Any_dataS4_(ptr dead_on_unwind noalias writable sret(%"class.Eigen::Matrix.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Eigen::internal::evaluator.308", align 8 ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !27     ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !267)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !270, !noalias !272, !nonnull !32, !align !33
  %i.d = load double, ptr %i.c, align 8, !tbaa !39, !noalias !272
  %i.e = load double, ptr %2, align 8, !tbaa !39, !noalias !272 ; 4 uses
  %i.f = tail call double @llvm.fmuladd.f64(double %i.e, double %i.e, double %i.d)
  %i.g = tail call double @sqrt(double noundef %i.f) #21, !noalias !272 ; 4 uses
  %i.h = fmul double %i.g, %i.g
  %i.i = fmul double %i.g, %i.h                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !277, !noalias !272, !nonnull !32 ; 3 uses
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !278, !noalias !272, !nonnull !32, !align !33 ; 6 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !279, !noalias !287, !nonnull !32, !align !33 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !290, !noalias !287, !nonnull !32, !align !33 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !291, !noalias !287, !nonnull !32, !align !33 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.s = load double, ptr %i.r, align 8, !tbaa !50, !noalias !287 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.u = load double, ptr %i.t, align 8, !tbaa !50, !noalias !287 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  %i.w = load double, ptr %i.v, align 8, !tbaa !50, !noalias !287 ; 2 uses
  %i.x = fmul double %i.e, f0x3FB45F306DC9C883
  %i.y = fmul double %i.e, %i.x
  %i.z = fmul double %i.i, 2.000000e+00
  %i.aa = fdiv double %i.y, %i.z                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21, !noalias !267
  %.sroa.15.88.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.s, i64 0
  %.sroa.18.104.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.u, i64 0
  %.sroa.21.120.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.w, i64 0
  %i.ab = load <2 x double>, ptr %i.m, align 8, !tbaa !58, !noalias !267
  %i.ac = load <2 x double>, ptr %i.o, align 8, !tbaa !58, !noalias !267
  %i.ad = load <2 x double>, ptr %i.q, align 8, !tbaa !58, !noalias !267
  %i.ae = shufflevector <2 x double> %.sroa.15.88.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.af = fdiv <2 x double> %i.ad, %i.ae
  %i.ag = shufflevector <2 x double> %.sroa.18.104.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ah = fdiv <2 x double> %i.af, %i.ag
  %i.ai = shufflevector <2 x double> %.sroa.21.120.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aj = fmul <2 x double> %i.ai, %i.ah
  %i.ak = fadd <2 x double> %i.ac, %i.aj
  %i.al = fsub <2 x double> %i.ab, %i.ak          ; 4 uses
  %i.am = getelementptr i8, ptr %i.m, i64 16
  %i.an = getelementptr i8, ptr %i.o, i64 16
  %i.ao = getelementptr i8, ptr %i.q, i64 16
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !39, !noalias !267
  %i.aq = fdiv double %i.ap, %i.s
  %i.ar = fdiv double %i.aq, %i.u
  %i.as = fmul double %i.w, %i.ar
  %i.at = load double, ptr %i.an, align 8, !tbaa !39, !noalias !267
  %i.au = fadd double %i.at, %i.as
  %i.av = load double, ptr %i.am, align 8, !tbaa !39, !noalias !267
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 24
  store <2 x double> %i.al, ptr %i.aw, align 8, !tbaa !58, !noalias !267
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %3, ptr %i.ay, align 8, !tbaa !292, !noalias !267
  %i.az = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.43.88.vec.insert = insertelement <2 x double> poison, double %i.aa, i64 0
  %i.bc = shufflevector <2 x double> %.sroa.43.88.vec.insert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.be = insertelement <2 x double> poison, double %i.i, i64 0
  %i.bf = insertelement <2 x double> %i.be, double %i.g, i64 1
  %i.bg = fdiv <2 x double> splat (double f0x3FA45F306DC9C883), %i.bf ; 3 uses
  %i.bh = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bi = fmul <2 x double> %i.bh, %i.al          ; 3 uses
  %i.bj = fsub double %i.av, %i.au                ; 4 uses
  %i.bk = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.bj, i64 0
  %i.bl = fmul <2 x double> %i.bg, %i.bk
  %i.bm = shufflevector <2 x double> %i.bl, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store double %i.bj, ptr %i.ax, align 8, !tbaa !39, !noalias !267
  %i.bn = fmul <2 x double> %i.bi, %i.az
  %i.bo = load <2 x double>, ptr %i.ba, align 8, !noalias !267 ; 2 uses
  %i.bp = shufflevector <2 x double> %i.bo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bq = fmul <2 x double> %i.bi, %i.bp
  %.cast = bitcast double %i.bj to <1 x double>
  %i.br = shufflevector <1 x double> %.cast, <1 x double> poison, <2 x i32> zeroinitializer
  %i.bs = fmul <2 x double> %i.bi, %i.br
  %i.bt = shufflevector <2 x double> %i.bo, <2 x double> %i.al, <4 x i32> <i32 0, i32 poison, i32 2, i32 poison>
  %i.bu = insertelement <4 x double> %i.bt, double 1.000000e+00, i64 3
  %i.bv = insertelement <4 x double> %i.bu, double %i.bj, i64 1
  %i.bw = fmul <4 x double> %i.bm, %i.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21, !noalias !267
  %4 = load <3 x double>, ptr %i.k, align 8, !tbaa !39, !noalias !267 ; 4 uses
  %5 = shufflevector <3 x double> %4, <3 x double> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 2>
  %6 = load double, ptr %i.bb, align 8, !tbaa !39, !noalias !267
  %i.bx = shufflevector <3 x double> %4, <3 x double> poison, <2 x i32> zeroinitializer
  %i.by = fmul <2 x double> %i.bn, %i.bx
  %i.bz = shufflevector <3 x double> %4, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ca = fmul <2 x double> %i.bq, %i.bz
  %i.cb = fadd <2 x double> %i.by, %i.ca
  %7 = shufflevector <3 x double> %4, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %8 = fmul <2 x double> %i.bs, %7
  %9 = fadd <2 x double> %i.cb, %8
  %i.cc = fmul <4 x double> %i.bw, %5             ; 4 uses
  %i.cd = extractelement <4 x double> %i.cc, i64 0
  %i.ce = extractelement <4 x double> %i.cc, i64 1
  %i.cf = fadd double %i.cd, %i.ce
  %i.cg = extractelement <4 x double> %i.cc, i64 2
  %i.ch = fadd double %i.cg, %i.cf
  %i.ci = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %10 = load <2 x double>, ptr %i.k, align 8, !tbaa !58, !noalias !267 ; 2 uses
  %i.cj = fmul <2 x double> %i.ci, %10
  %i.ck = fadd <2 x double> %i.cj, %9
  %i.cl = fmul <2 x double> %i.bc, %10
  %i.cm = fadd <2 x double> %i.cl, %i.ck
  store <2 x double> %i.cm, ptr %0, align 8, !tbaa !58, !alias.scope !267
  %i.cn = extractelement <4 x double> %i.cc, i64 3
  %i.co = fadd double %i.cn, %i.ch
  %i.cp = fmul double %i.aa, %6
  %i.cq = fadd double %i.cp, %i.co
  store double %i.cq, ptr %i.bd, align 8, !tbaa !39, !alias.scope !267
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEERKdEZN3igl19kelvinlet_evaluatorIS2_S2_S2_NS1_IdLi3ELi3ELi0ELi3ELi3EEEdEENS1_IT3_Li3ELi1ELi0ELi3ELi1EEES9_RKNS0_10MatrixBaseIT_EERKNSB_IT0_EERKNSB_IT1_EERKNSB_IT2_EERKNS6_15KelvinletParamsIS9_EEEUlS4_E_E10_M_managerERSt9_Any_dataRKSY_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN3igl19kelvinlet_evaluatorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEES5_S5_NS4_IdLi3ELi3ELi0ELi3ELi3EEEdEENS4_IT3_Li3ELi1ELi0ELi3ELi1EEES7_RKNS3_10MatrixBaseIT_EERKNS9_IT0_EERKNS9_IT1_EERKNS9_IT2_EERKNS1_15KelvinletParamsIS7_EEEUlRKdE_E10_M_managerERSt9_Any_dataRKSY_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN3igl19kelvinlet_evaluatorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEES3_S3_NS2_IdLi3ELi3ELi0ELi3ELi3EEEdEENS2_IT3_Li3ELi1ELi0ELi3ELi1EEES5_RKNS1_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EERKNS7_IT2_EERKNS_15KelvinletParamsIS5_EEEUlRKdE_, ptr %0, align 8, !tbaa !294
  br label %_ZNSt14_Function_base13_Base_managerIZN3igl19kelvinlet_evaluatorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEES5_S5_NS4_IdLi3ELi3ELi0ELi3ELi3EEEdEENS4_IT3_Li3ELi1ELi0ELi3ELi1EEES7_RKNS3_10MatrixBaseIT_EERKNS9_IT0_EERKNS9_IT1_EERKNS9_IT2_EERKNS1_15KelvinletParamsIS7_EEEUlRKdE_E10_M_managerERSt9_Any_dataRKSY_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !27
  store ptr %i.a, ptr %0, align 8, !tbaa !27
  br label %_ZNSt14_Function_base13_Base_managerIZN3igl19kelvinlet_evaluatorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEES5_S5_NS4_IdLi3ELi3ELi0ELi3ELi3EEEdEENS4_IT3_Li3ELi1ELi0ELi3ELi1EEES7_RKNS3_10MatrixBaseIT_EERKNS9_IT0_EERKNS9_IT1_EERKNS9_IT2_EERKNS1_15KelvinletParamsIS7_EEEUlRKdE_E10_M_managerERSt9_Any_dataRKSY_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !27
  %i.c = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !tbaa.struct !296
  store ptr %i.c, ptr %0, align 8, !tbaa !27
  br label %_ZNSt14_Function_base13_Base_managerIZN3igl19kelvinlet_evaluatorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEES5_S5_NS4_IdLi3ELi3ELi0ELi3ELi3EEEdEENS4_IT3_Li3ELi1ELi0ELi3ELi1EEES7_RKNS3_10MatrixBaseIT_EERKNS9_IT0_EERKNS9_IT1_EERKNS9_IT2_EERKNS1_15KelvinletParamsIS7_EEEUlRKdE_E10_M_managerERSt9_Any_dataRKSY_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerIZN3igl19kelvinlet_evaluatorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEES5_S5_NS4_IdLi3ELi3ELi0ELi3ELi3EEEdEENS4_IT3_Li3ELi1ELi0ELi3ELi1EEES7_RKNS3_10MatrixBaseIT_EERKNS9_IT0_EERKNS9_IT1_EERKNS9_IT2_EERKNS1_15KelvinletParamsIS7_EEEUlRKdE_E10_M_managerERSt9_Any_dataRKSY_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 24) #26
  br label %_ZNSt14_Function_base13_Base_managerIZN3igl19kelvinlet_evaluatorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEES5_S5_NS4_IdLi3ELi3ELi0ELi3ELi3EEEdEENS4_IT3_Li3ELi1ELi0ELi3ELi1EEES7_RKNS3_10MatrixBaseIT_EERKNS9_IT0_EERKNS9_IT1_EERKNS9_IT2_EERKNS1_15KelvinletParamsIS7_EEEUlRKdE_E10_M_managerERSt9_Any_dataRKSY_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN3igl19kelvinlet_evaluatorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEES5_S5_NS4_IdLi3ELi3ELi0ELi3ELi3EEEdEENS4_IT3_Li3ELi1ELi0ELi3ELi1EEES7_RKNS3_10MatrixBaseIT_EERKNS9_IT0_EERKNS9_IT1_EERKNS9_IT2_EERKNS1_15KelvinletParamsIS7_EEEUlRKdE_E10_M_managerERSt9_Any_dataRKSY_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #12

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt17_Function_handlerIFN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEERKdEZN3igl19kelvinlet_evaluatorIS2_S2_S2_NS1_IdLi3ELi3ELi0ELi3ELi3EEEdEENS1_IT3_Li3ELi1ELi0ELi3ELi1EEES9_RKNS0_10MatrixBaseIT_EERKNSB_IT0_EERKNSB_IT1_EERKNSB_IT2_EERKNS6_15KelvinletParamsIS9_EEEUlS4_E0_E9_M_invokeERKSt9_Any_dataS4_(ptr dead_on_unwind noalias writable sret(%"class.Eigen::Matrix.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0 = alloca [24 x i8], align 16 ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !27     ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !297)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !300, !noalias !302, !nonnull !32, !align !33
  %i.d = load double, ptr %i.c, align 8, !tbaa !39, !noalias !302
  %i.e = load double, ptr %2, align 8, !tbaa !39, !noalias !302 ; 4 uses
  %i.f = tail call double @llvm.fmuladd.f64(double %i.e, double %i.e, double %i.d)
  %i.g = tail call double @sqrt(double noundef %i.f) #21, !noalias !302 ; 5 uses
  %i.h = fmul double %i.g, %i.g
  %i.i = fmul double %i.g, %i.h                   ; 2 uses
  %i.j = fdiv double 1.000000e+00, %i.i
  %i.k = fmul double %i.e, 3.000000e+00
  %i.l = fmul double %i.e, %i.k
  %i.m = fmul double %i.i, 2.000000e+00
  %i.n = fmul double %i.g, %i.m
  %i.o = fmul double %i.g, %i.n
  %i.p = fdiv double %i.l, %i.o
  %i.q = fadd double %i.j, %i.p
  %i.r = fmul double %i.q, f0xBFB45F306DC9C883    ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !307, !noalias !302, !nonnull !32 ; 6 uses
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !308, !noalias !302, !nonnull !32, !align !33 ; 6 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !279, !noalias !309, !nonnull !32, !align !33 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !290, !noalias !309, !nonnull !32, !align !33 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !291, !noalias !309, !nonnull !32, !align !33 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !50, !noalias !309 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !50, !noalias !309 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  %i.af = load double, ptr %i.ae, align 8, !tbaa !50, !noalias !309 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0)
  %.sroa.12.64.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.ab, i64 0
  %.sroa.15.80.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.ad, i64 0
  %.sroa.18.96.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.af, i64 0
  %i.ag = load <2 x double>, ptr %i.v, align 8, !tbaa !58, !noalias !297
  %i.ah = load <2 x double>, ptr %i.x, align 8, !tbaa !58, !noalias !297
  %i.ai = load <2 x double>, ptr %i.z, align 8, !tbaa !58, !noalias !297
  %i.aj = shufflevector <2 x double> %.sroa.12.64.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ak = fdiv <2 x double> %i.ai, %i.aj
  %i.al = shufflevector <2 x double> %.sroa.15.80.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.am = fdiv <2 x double> %i.ak, %i.al
  %i.an = shufflevector <2 x double> %.sroa.18.96.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ao = fmul <2 x double> %i.an, %i.am
  %i.ap = fadd <2 x double> %i.ah, %i.ao
  %i.aq = fsub <2 x double> %i.ag, %i.ap          ; 3 uses
  store <2 x double> %i.aq, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0, align 16, !tbaa !58, !noalias !297
  %i.ar = getelementptr i8, ptr %i.v, i64 16
  %i.as = getelementptr i8, ptr %i.x, i64 16
  %i.at = getelementptr i8, ptr %i.z, i64 16
  %i.au = load double, ptr %i.at, align 8, !tbaa !39, !noalias !297
  %i.av = fdiv double %i.au, %i.ab
  %i.aw = fdiv double %i.av, %i.ad
  %i.ax = fmul double %i.af, %i.aw
  %i.ay = load double, ptr %i.as, align 8, !tbaa !39, !noalias !297
  %i.az = fadd double %i.ay, %i.ax
  %i.ba = load double, ptr %i.ar, align 8, !tbaa !39, !noalias !297
  %i.bb = fsub double %i.ba, %i.az                ; 2 uses
  %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx6 = getelementptr inbounds nuw i8, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0, i64 16
  store double %i.bb, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx6, align 16, !tbaa !39, !noalias !297
  %.sroa.6.72.vec.insert.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.r, i64 0
  %i.bc = shufflevector <2 x double> %.sroa.6.72.vec.insert.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bd = load <2 x double>, ptr %i.t, align 1, !tbaa !58, !noalias !297
  %i.be = fmul <2 x double> %i.bc, %i.bd
  %i.bf = extractelement <2 x double> %i.aq, i64 0
  %i.bg = shufflevector <2 x double> %i.aq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bh = fmul <2 x double> %i.bg, %i.be
  %i.bi = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.bj = load <2 x double>, ptr %i.bi, align 1, !tbaa !58, !noalias !297
  %i.bk = fmul <2 x double> %i.bc, %i.bj
  %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx5 = getelementptr inbounds nuw i8, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0, i64 8
  %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0.8..sroa.2.i.i.i.i.i.i.i.i.i.sroa.0.8..sroa.2.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.8..sroa.2.i.i.i.i.i.8..sroa.2.i.i.i.i.8..sroa.2.i.i.i.i.8..sroa.2.i.i.i.8..sroa.2.i.i.i.8..sroa.2.i.i.8..sroa.2.i.i.8..sroa.2.i.8..sroa.2.i.8..sroa.2.8..sroa.2.8..sroa.2.48..i.i.i.i.i.i.i.i.i = load <2 x double>, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx5, align 8, !noalias !297 ; 2 uses
  %i.bl = shufflevector <2 x double> %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0.8..sroa.2.i.i.i.i.i.i.i.i.i.sroa.0.8..sroa.2.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.8..sroa.2.i.i.i.i.i.8..sroa.2.i.i.i.i.8..sroa.2.i.i.i.i.8..sroa.2.i.i.i.8..sroa.2.i.i.i.8..sroa.2.i.i.8..sroa.2.i.i.8..sroa.2.i.8..sroa.2.i.8..sroa.2.8..sroa.2.8..sroa.2.48..i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bm = fmul <2 x double> %i.bk, %i.bl
  %i.bn = fadd <2 x double> %i.bh, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.bp = load <2 x double>, ptr %i.bo, align 1, !tbaa !58, !noalias !297
  %i.bq = fmul <2 x double> %i.bc, %i.bp
  %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx7 = getelementptr inbounds nuw i8, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0, i64 16
  %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0.16..sroa.2.i.i.i.i.i.i.i.i.i.sroa.0.16. = load <1 x double>, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx7, align 16, !noalias !297
  %i.br = shufflevector <1 x double> %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0.16..sroa.2.i.i.i.i.i.i.i.i.i.sroa.0.16., <1 x double> poison, <2 x i32> zeroinitializer
  %i.bs = fmul <2 x double> %i.bq, %i.br
  %i.bt = fadd <2 x double> %i.bn, %i.bs
  store <2 x double> %i.bt, ptr %0, align 8, !tbaa !58, !alias.scope !297
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bv = getelementptr i8, ptr %i.t, i64 16
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !39, !noalias !297
  %i.bx = fmul double %i.r, %i.bw
  %i.by = fmul double %i.bf, %i.bx
  %i.bz = getelementptr i8, ptr %i.t, i64 40
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !39, !noalias !297
  %i.cb = fmul double %i.r, %i.ca
  %i.cc = extractelement <2 x double> %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0.8..sroa.2.i.i.i.i.i.i.i.i.i.sroa.0.8..sroa.2.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.8..sroa.2.i.i.i.i.i.8..sroa.2.i.i.i.i.8..sroa.2.i.i.i.i.8..sroa.2.i.i.i.8..sroa.2.i.i.i.8..sroa.2.i.i.8..sroa.2.i.i.8..sroa.2.i.8..sroa.2.i.8..sroa.2.8..sroa.2.8..sroa.2.48..i.i.i.i.i.i.i.i.i, i64 0
  %i.cd = fmul double %i.cc, %i.cb
  %i.ce = getelementptr i8, ptr %i.t, i64 64
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !39, !noalias !297
  %i.cg = fmul double %i.r, %i.cf
  %i.ch = fmul double %i.bb, %i.cg
  %i.ci = fadd double %i.cd, %i.ch
  %i.cj = fadd double %i.by, %i.ci
  store double %i.cj, ptr %i.bu, align 8, !tbaa !39, !alias.scope !297
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEERKdEZN3igl19kelvinlet_evaluatorIS2_S2_S2_NS1_IdLi3ELi3ELi0ELi3ELi3EEEdEENS1_IT3_Li3ELi1ELi0ELi3ELi1EEES9_RKNS0_10MatrixBaseIT_EERKNSB_IT0_EERKNSB_IT1_EERKNSB_IT2_EERKNS6_15KelvinletParamsIS9_EEEUlS4_E0_E10_M_managerERSt9_Any_dataRKSY_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN3igl19kelvinlet_evaluatorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEES5_S5_NS4_IdLi3ELi3ELi0ELi3ELi3EEEdEENS4_IT3_Li3ELi1ELi0ELi3ELi1EEES7_RKNS3_10MatrixBaseIT_EERKNS9_IT0_EERKNS9_IT1_EERKNS9_IT2_EERKNS1_15KelvinletParamsIS7_EEEUlRKdE0_E10_M_managerERSt9_Any_dataRKSY_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN3igl19kelvinlet_evaluatorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEES3_S3_NS2_IdLi3ELi3ELi0ELi3ELi3EEEdEENS2_IT3_Li3ELi1ELi0ELi3ELi1EEES5_RKNS1_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EERKNS7_IT2_EERKNS_15KelvinletParamsIS5_EEEUlRKdE0_, ptr %0, align 8, !tbaa !294
  br label %_ZNSt14_Function_base13_Base_managerIZN3igl19kelvinlet_evaluatorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEES5_S5_NS4_IdLi3ELi3ELi0ELi3ELi3EEEdEENS4_IT3_Li3ELi1ELi0ELi3ELi1EEES7_RKNS3_10MatrixBaseIT_EERKNS9_IT0_EERKNS9_IT1_EERKNS9_IT2_EERKNS1_15KelvinletParamsIS7_EEEUlRKdE0_E10_M_managerERSt9_Any_dataRKSY_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !27
  store ptr %i.a, ptr %0, align 8, !tbaa !27
  br label %_ZNSt14_Function_base13_Base_managerIZN3igl19kelvinlet_evaluatorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEES5_S5_NS4_IdLi3ELi3ELi0ELi3ELi3EEEdEENS4_IT3_Li3ELi1ELi0ELi3ELi1EEES7_RKNS3_10MatrixBaseIT_EERKNS9_IT0_EERKNS9_IT1_EERKNS9_IT2_EERKNS1_15KelvinletParamsIS7_EEEUlRKdE0_E10_M_managerERSt9_Any_dataRKSY_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !27
  %i.c = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !tbaa.struct !312
  store ptr %i.c, ptr %0, align 8, !tbaa !27
  br label %_ZNSt14_Function_base13_Base_managerIZN3igl19kelvinlet_evaluatorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEES5_S5_NS4_IdLi3ELi3ELi0ELi3ELi3EEEdEENS4_IT3_Li3ELi1ELi0ELi3ELi1EEES7_RKNS3_10MatrixBaseIT_EERKNS9_IT0_EERKNS9_IT1_EERKNS9_IT2_EERKNS1_15KelvinletParamsIS7_EEEUlRKdE0_E10_M_managerERSt9_Any_dataRKSY_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerIZN3igl19kelvinlet_evaluatorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEES5_S5_NS4_IdLi3ELi3ELi0ELi3ELi3EEEdEENS4_IT3_Li3ELi1ELi0ELi3ELi1EEES7_RKNS3_10MatrixBaseIT_EERKNS9_IT0_EERKNS9_IT1_EERKNS9_IT2_EERKNS1_15KelvinletParamsIS7_EEEUlRKdE0_E10_M_managerERSt9_Any_dataRKSY_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 24) #26
  br label %_ZNSt14_Function_base13_Base_managerIZN3igl19kelvinlet_evaluatorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEES5_S5_NS4_IdLi3ELi3ELi0ELi3ELi3EEEdEENS4_IT3_Li3ELi1ELi0ELi3ELi1EEES7_RKNS3_10MatrixBaseIT_EERKNS9_IT0_EERKNS9_IT1_EERKNS9_IT2_EERKNS1_15KelvinletParamsIS7_EEEUlRKdE0_E10_M_managerERSt9_Any_dataRKSY_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN3igl19kelvinlet_evaluatorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEES5_S5_NS4_IdLi3ELi3ELi0ELi3ELi3EEEdEENS4_IT3_Li3ELi1ELi0ELi3ELi1EEES7_RKNS3_10MatrixBaseIT_EERKNS9_IT0_EERKNS9_IT1_EERKNS9_IT2_EERKNS1_15KelvinletParamsIS7_EEEUlRKdE0_E10_M_managerERSt9_Any_dataRKSY_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
end_hunk_0
begin_hunk_1_@_ZSt10__invoke_rIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEERZN3igl19kelvinlet_evaluatorIS2_S2_S2_NS1_IdLi3ELi3ELi0ELi3ELi3EEEdEENS1_IT3_Li3ELi1ELi0ELi3ELi1EEES6_RKNS0_10MatrixBaseIT_EERKNS8_IT0_EERKNS8_IT1_EERKNS8_IT2_EERKNS3_15KelvinletParamsIS6_EEEUlRKdE2_JSU_EENSt9enable_ifIX16is_invocable_r_vIS9_SD_DpT1_EES9_E4typeEOSD_DpOSY_:bb.a
  %i.ah = load <2 x double>, ptr %i.r, align 8, !tbaa !58, !noalias !331
  %i.ai = shufflevector <2 x double> %.sroa.2.72.vec.insert.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aj = fdiv <2 x double> %i.ah, %i.ai
  %i.ak = shufflevector <2 x double> %.sroa.4.88.vec.insert.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.al = fdiv <2 x double> %i.aj, %i.ak
  %i.am = shufflevector <2 x double> %.sroa.6.104.vec.insert.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.an = fmul <2 x double> %i.am, %i.al
  %i.ao = fadd <2 x double> %i.ag, %i.an
  %i.ap = fsub <2 x double> %i.af, %i.ao          ; 5 uses
  store <2 x double> %i.ap, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0, align 16, !tbaa !58, !noalias !331
  %i.aq = getelementptr i8, ptr %i.n, i64 16      ; 2 uses
  %i.ar = getelementptr i8, ptr %i.p, i64 16      ; 2 uses
  %i.as = getelementptr i8, ptr %i.r, i64 16      ; 2 uses
  %i.at = load double, ptr %i.as, align 8, !tbaa !39, !noalias !331
  %i.au = fdiv double %i.at, %i.t
  %i.av = fdiv double %i.au, %i.v
  %i.aw = fmul double %i.x, %i.av
  %i.ax = load double, ptr %i.ar, align 8, !tbaa !39, !noalias !331
  %i.ay = fadd double %i.ax, %i.aw
  %i.az = load double, ptr %i.aq, align 8, !tbaa !39, !noalias !331
  %i.ba = fsub double %i.az, %i.ay                ; 5 uses
  %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx29 = getelementptr inbounds nuw i8, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0, i64 16
  store double %i.ba, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx29, align 16, !tbaa !39, !noalias !331
  %i.bb = load <2 x double>, ptr %i.l, align 1, !tbaa !58, !noalias !331 ; 2 uses
  %i.bc = extractelement <2 x double> %i.ap, i64 0 ; 2 uses
  %i.bd = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.be = fmul <2 x double> %i.bd, %i.bb
  %i.bf = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.bg = load <2 x double>, ptr %i.bf, align 1, !tbaa !58, !noalias !331 ; 2 uses
  %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0.8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx28 = getelementptr inbounds nuw i8, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0, i64 8
  %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.8..sroa.2.i.i.i.i.i.8..sroa.2.i.i.i.i.8..sroa.2.i.i.i.i.8..sroa.2.i.i.i.8..sroa.2.i.i.i.8..sroa.2.i.i.8..sroa.2.i.i.8..sroa.2.i.8..sroa.2.i.8..sroa.2.8..sroa.2.8..sroa.2.16..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i. = load <2 x double>, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0.8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx28, align 8, !noalias !331 ; 2 uses
  %i.bh = shufflevector <2 x double> %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.8..sroa.2.i.i.i.i.i.8..sroa.2.i.i.i.i.8..sroa.2.i.i.i.i.8..sroa.2.i.i.i.8..sroa.2.i.i.i.8..sroa.2.i.i.8..sroa.2.i.i.8..sroa.2.i.8..sroa.2.i.8..sroa.2.8..sroa.2.8..sroa.2.16..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i., <2 x double> poison, <2 x i32> zeroinitializer
  %i.bi = fmul <2 x double> %i.bg, %i.bh
  %i.bj = fadd <2 x double> %i.be, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 2 uses
  %i.bl = load <2 x double>, ptr %i.bk, align 1, !tbaa !58, !noalias !331 ; 2 uses
  %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx30 = getelementptr inbounds nuw i8, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0, i64 16
  %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0.16..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0.16. = load <1 x double>, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx30, align 16, !noalias !331
  %i.bm = shufflevector <1 x double> %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0.16..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0.16., <1 x double> poison, <2 x i32> zeroinitializer
  %i.bn = fmul <2 x double> %i.bl, %i.bm
  %i.bo = fadd <2 x double> %i.bj, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !39, !noalias !331 ; 2 uses
  %i.br = fmul double %i.bc, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 2 uses
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !39, !noalias !331 ; 2 uses
  %i.bu = extractelement <2 x double> %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.8..sroa.2.i.i.i.i.i.8..sroa.2.i.i.i.i.8..sroa.2.i.i.i.i.8..sroa.2.i.i.i.8..sroa.2.i.i.i.8..sroa.2.i.i.8..sroa.2.i.i.8..sroa.2.i.8..sroa.2.i.8..sroa.2.8..sroa.2.8..sroa.2.16..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i., i64 0
  %i.bv = fmul double %i.bu, %i.bt
  %i.bw = getelementptr inbounds nuw i8, ptr %i.l, i64 64 ; 2 uses
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !39, !noalias !331 ; 2 uses
  %i.by = fmul double %i.ba, %i.bx
  %i.bz = fadd double %i.bv, %i.by
  %i.ca = fadd double %i.br, %i.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0)
  %i.cb = fmul <2 x double> %i.ap, %i.bo          ; 2 uses
  %shift = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.cb, %shift
  %i.cc = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.cd = fmul double %i.ba, %i.ca
  %i.ce = fadd double %i.cc, %i.cd
  %i.cf = fmul double %i.ce, f0x3FB45F306DC9C883  ; 2 uses
  %i.cg = load double, ptr %2, align 8, !tbaa !39, !noalias !331 ; 3 uses
  %i.ch = fmul double %i.cg, f0x3FB45F306DC9C883
  %i.ci = fmul double %i.cg, %i.ch
  %i.cj = fmul double %i.cg, %i.ci                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2.i.i.i.i.i.i.i.i.i.i.sroa.0)
  store <2 x double> %i.ap, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.i.sroa.0, align 16, !tbaa !58
  %.sroa.2.i.i.i.i.i.i.i.i.i.i.sroa.0.16.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx40 = getelementptr inbounds nuw i8, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.i.sroa.0, i64 16
  store double %i.ba, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.i.sroa.0.16.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx40, align 16, !tbaa !39
  %i.ck = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.cl = fmul <2 x double> %i.ck, %i.bb
  %i.cm = fmul <2 x double> %i.bd, %i.cl
  %i.cn = fmul <2 x double> %i.ck, %i.bg
  %.sroa.2.i.i.i.i.i.i.i.i.i.i.sroa.0.8.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx39 = getelementptr inbounds nuw i8, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.i.sroa.0, i64 8
  %.sroa.2.i.i.i.i.i.i.i.i.i.i.sroa.0.8..sroa.2.i.i.i.i.i.i.i.i.i.i.sroa.0.8..sroa.2.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.8..sroa.2.i.i.i.i.i.8..sroa.2.i.i.i.i.8..sroa.2.i.i.i.i.8..sroa.2.i.i.i.8..sroa.2.i.i.i.8..sroa.2.i.i.8..sroa.2.i.i.8..sroa.2.i.8..sroa.2.i.8..sroa.2.8..sroa.2.8..sroa.2.48..i.i.i.i.i.i.i.i.i.i = load <2 x double>, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.i.sroa.0.8.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx39, align 8 ; 2 uses
  %i.co = shufflevector <2 x double> %.sroa.2.i.i.i.i.i.i.i.i.i.i.sroa.0.8..sroa.2.i.i.i.i.i.i.i.i.i.i.sroa.0.8..sroa.2.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.8..sroa.2.i.i.i.i.i.8..sroa.2.i.i.i.i.8..sroa.2.i.i.i.i.8..sroa.2.i.i.i.8..sroa.2.i.i.i.8..sroa.2.i.i.8..sroa.2.i.i.8..sroa.2.i.8..sroa.2.i.8..sroa.2.8..sroa.2.8..sroa.2.48..i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cp = fmul <2 x double> %i.cn, %i.co
  %i.cq = fadd <2 x double> %i.cm, %i.cp
  %i.cr = fmul <2 x double> %i.ck, %i.bl
  %.sroa.2.i.i.i.i.i.i.i.i.i.i.sroa.0.16.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx41 = getelementptr inbounds nuw i8, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.i.sroa.0, i64 16
  %.sroa.2.i.i.i.i.i.i.i.i.i.i.sroa.0.16..sroa.2.i.i.i.i.i.i.i.i.i.i.sroa.0.16. = load <1 x double>, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.i.sroa.0.16.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx41, align 16
  %i.cs = shufflevector <1 x double> %.sroa.2.i.i.i.i.i.i.i.i.i.i.sroa.0.16..sroa.2.i.i.i.i.i.i.i.i.i.i.sroa.0.16., <1 x double> poison, <2 x i32> zeroinitializer
  %i.ct = fmul <2 x double> %i.cr, %i.cs
  %i.cu = fadd <2 x double> %i.cq, %i.ct
  %i.cv = fmul double %i.ae, %i.bq
  %i.cw = fmul double %i.bc, %i.cv
  %i.cx = fmul double %i.ae, %i.bt
  %i.cy = extractelement <2 x double> %.sroa.2.i.i.i.i.i.i.i.i.i.i.sroa.0.8..sroa.2.i.i.i.i.i.i.i.i.i.i.sroa.0.8..sroa.2.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.8..sroa.2.i.i.i.i.i.8..sroa.2.i.i.i.i.8..sroa.2.i.i.i.i.8..sroa.2.i.i.i.8..sroa.2.i.i.i.8..sroa.2.i.i.8..sroa.2.i.i.8..sroa.2.i.8..sroa.2.i.8..sroa.2.8..sroa.2.8..sroa.2.48..i.i.i.i.i.i.i.i.i.i, i64 0
  %i.cz = fmul double %i.cy, %i.cx
  %i.da = fmul double %i.ae, %i.bx
  %i.db = fmul double %i.ba, %i.da
  %i.dc = fadd double %i.cz, %i.db
  %i.dd = fadd double %i.cw, %i.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.i.i.i.i.i.i.i.i.i.i.sroa.0)
  %.sroa.432.80.vec.insert = insertelement <2 x double> poison, double %i.cf, i64 0
  %.sroa.634.160.vec.insert = insertelement <2 x double> poison, double %i.t, i64 0
  %.sroa.8.176.vec.insert = insertelement <2 x double> poison, double %i.v, i64 0
  %.sroa.10.192.vec.insert = insertelement <2 x double> poison, double %i.x, i64 0
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0)
  %i.de = load <2 x double>, ptr %i.n, align 8, !tbaa !58 ; 2 uses
  %i.df = load <2 x double>, ptr %i.p, align 8, !tbaa !58 ; 2 uses
  %i.dg = load <2 x double>, ptr %i.r, align 8, !tbaa !58 ; 2 uses
  %i.dh = fdiv <2 x double> %i.dg, %i.ai
  %i.di = fdiv <2 x double> %i.dh, %i.ak
  %i.dj = fmul <2 x double> %i.am, %i.di
  %i.dk = fadd <2 x double> %i.df, %i.dj
  %i.dl = fsub <2 x double> %i.de, %i.dk          ; 3 uses
  store <2 x double> %i.dl, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0, align 16, !tbaa !58
  %i.dm = load double, ptr %i.as, align 8, !tbaa !39 ; 2 uses
  %i.dn = fdiv double %i.dm, %i.t
  %i.do = fdiv double %i.dn, %i.v
  %i.dp = fmul double %i.x, %i.do
  %i.dq = load double, ptr %i.ar, align 8, !tbaa !39 ; 2 uses
  %i.dr = fadd double %i.dq, %i.dp
  %i.ds = load double, ptr %i.aq, align 8, !tbaa !39 ; 2 uses
  %i.dt = fsub double %i.ds, %i.dr                ; 2 uses
  %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx44 = getelementptr inbounds nuw i8, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0, i64 16
  store double %i.dt, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx44, align 16, !tbaa !39
  %.sroa.6.72.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.cj, i64 0
  %i.du = shufflevector <2 x double> %.sroa.6.72.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.dv = load <2 x double>, ptr %i.l, align 8, !tbaa !58
  %i.dw = fmul <2 x double> %i.du, %i.dv
  %i.dx = extractelement <2 x double> %i.dl, i64 0
  %i.dy = shufflevector <2 x double> %i.dl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dz = fmul <2 x double> %i.dy, %i.dw
  %i.ea = load <2 x double>, ptr %i.bf, align 8, !tbaa !58
  %i.eb = fmul <2 x double> %i.du, %i.ea
  %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0.8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx43 = getelementptr inbounds nuw i8, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0, i64 8
  %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.8..sroa.2.i.i.i. = load <2 x double>, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0.8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx43, align 8 ; 2 uses
  %i.ec = shufflevector <2 x double> %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.8..sroa.2.i.i.i., <2 x double> poison, <2 x i32> zeroinitializer
  %i.ed = fmul <2 x double> %i.eb, %i.ec
  %i.ee = fadd <2 x double> %i.dz, %i.ed
  %i.ef = load <2 x double>, ptr %i.bk, align 8, !tbaa !58
  %i.eg = fmul <2 x double> %i.du, %i.ef
  %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx45 = getelementptr inbounds nuw i8, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0, i64 16
  %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0.16..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0.16. = load <1 x double>, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx45, align 16
  %i.eh = shufflevector <1 x double> %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0.16..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0.16., <1 x double> poison, <2 x i32> zeroinitializer
  %i.ei = fmul <2 x double> %i.eg, %i.eh
  %i.ej = fadd <2 x double> %i.ee, %i.ei
  %i.ek = load double, ptr %i.bp, align 8, !tbaa !39
  %i.el = fmul double %i.cj, %i.ek
  %i.em = fmul double %i.dx, %i.el
  %i.en = load double, ptr %i.bs, align 8, !tbaa !39
  %i.eo = fmul double %i.cj, %i.en
  %i.ep = extractelement <2 x double> %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.8..sroa.2.i.i.i., i64 0
  %i.eq = fmul double %i.ep, %i.eo
  %i.er = load double, ptr %i.bw, align 8, !tbaa !39
  %i.es = fmul double %i.cj, %i.er
  %i.et = fmul double %i.dt, %i.es
  %i.eu = fadd double %i.eq, %i.et
  %i.ev = fadd double %i.em, %i.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0)
  %i.ew = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ex = shufflevector <2 x double> %.sroa.432.80.vec.insert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ey = shufflevector <2 x double> %.sroa.634.160.vec.insert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ez = fdiv <2 x double> %i.dg, %i.ey
  %i.fa = shufflevector <2 x double> %.sroa.8.176.vec.insert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fb = fdiv <2 x double> %i.ez, %i.fa
  %i.fc = shufflevector <2 x double> %.sroa.10.192.vec.insert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fd = fmul <2 x double> %i.fb, %i.fc
  %i.fe = fadd <2 x double> %i.df, %i.fd
  %i.ff = fsub <2 x double> %i.de, %i.fe
  %i.fg = fmul <2 x double> %i.ex, %i.ff
  %i.fh = fadd <2 x double> %i.ej, %i.fg
  %i.fi = fmul <2 x double> %i.ew, %i.fh
  %i.fj = fsub <2 x double> %i.cu, %i.fi
  store <2 x double> %i.fj, ptr %0, align 8, !tbaa !58
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fl = extractelement <2 x double> %i.ad, i64 1
  %i.fm = fdiv double %i.dm, %i.t
  %i.fn = fdiv double %i.fm, %i.v
  %i.fo = fmul double %i.x, %i.fn
  %i.fp = fadd double %i.dq, %i.fo
  %i.fq = fsub double %i.ds, %i.fp
  %i.fr = fmul double %i.cf, %i.fq
  %i.fs = fadd double %i.ev, %i.fr
  %i.ft = fmul double %i.fl, %i.fs
  %i.fu = fsub double %i.dd, %i.ft
  store double %i.fu, ptr %i.fk, align 8, !tbaa !39
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt17_Function_handlerIFN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEERKdEZN3igl19kelvinlet_evaluatorINS0_13CwiseBinaryOpINS0_8internal13scalar_sum_opIddEEKS2_KNS8_INS9_17scalar_product_opIddEEKNS8_ISE_KNS0_14CwiseNullaryOpINS9_18scalar_constant_opIdEESC_EESC_EESJ_EEEES2_S2_NS1_IdLi3ELi3ELi0ELi3ELi3EEEdEENS1_IT3_Li3ELi1ELi0ELi3ELi1EEESQ_RKNS0_10MatrixBaseIT_EERKNSS_IT0_EERKNSS_IT1_EERKNSS_IT2_EERKNS6_15KelvinletParamsISQ_EEEUlS4_E_E9_M_invokeERKSt9_Any_dataS4_(ptr dead_on_unwind noalias writable sret(%"class.Eigen::Matrix.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Eigen::internal::evaluator.772", align 8 ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !27     ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !343)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !346, !noalias !348, !nonnull !32, !align !33
  %i.d = load double, ptr %i.c, align 8, !tbaa !39, !noalias !348
  %i.e = load double, ptr %2, align 8, !tbaa !39, !noalias !348 ; 4 uses
  %i.f = tail call double @llvm.fmuladd.f64(double %i.e, double %i.e, double %i.d)
  %i.g = tail call double @sqrt(double noundef %i.f) #21, !noalias !348 ; 4 uses
  %i.h = fmul double %i.g, %i.g
  %i.i = fmul double %i.g, %i.h                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !353, !noalias !348, !nonnull !32 ; 3 uses
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !354, !noalias !348, !nonnull !32, !align !33 ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !158, !noalias !355, !nonnull !32, !align !33 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.p = load double, ptr %i.o, align 8, !tbaa !50, !noalias !355 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !167, !noalias !355, !nonnull !32, !align !33 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.t = load double, ptr %i.s, align 8, !tbaa !50, !noalias !355 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !290, !noalias !355, !nonnull !32, !align !33 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 120
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !291, !noalias !355, !nonnull !32, !align !33 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 136
  %i.z = load double, ptr %i.y, align 8, !tbaa !50, !noalias !355 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 160
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !50, !noalias !355 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 184
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !50, !noalias !355 ; 2 uses
  %i.ae = fmul double %i.e, f0x3FB45F306DC9C883
  %i.af = fmul double %i.e, %i.ae
  %i.ag = fmul double %i.i, 2.000000e+00
  %i.ah = fdiv double %i.af, %i.ag                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21, !noalias !343
  %.sroa.918.64.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.p, i64 0
  %.sroa.15.88.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.t, i64 0
  %.sroa.24.152.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.z, i64 0
  %.sroa.27.168.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.ab, i64 0
  %.sroa.30.184.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.ad, i64 0
  %i.ai = load <2 x double>, ptr %i.n, align 8, !tbaa !58, !noalias !343
  %i.aj = shufflevector <2 x double> %.sroa.918.64.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ak = load <2 x double>, ptr %i.r, align 8, !tbaa !58, !noalias !343
  %i.al = fmul <2 x double> %i.aj, %i.ak
  %i.am = shufflevector <2 x double> %.sroa.15.88.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.an = fmul <2 x double> %i.am, %i.al
  %i.ao = fadd <2 x double> %i.ai, %i.an
  %i.ap = load <2 x double>, ptr %i.v, align 8, !tbaa !58, !noalias !343
  %i.aq = load <2 x double>, ptr %i.x, align 8, !tbaa !58, !noalias !343
  %i.ar = shufflevector <2 x double> %.sroa.24.152.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.as = fdiv <2 x double> %i.aq, %i.ar
  %i.at = shufflevector <2 x double> %.sroa.27.168.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.au = fdiv <2 x double> %i.as, %i.at
  %i.av = shufflevector <2 x double> %.sroa.30.184.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aw = fmul <2 x double> %i.av, %i.au
  %i.ax = fadd <2 x double> %i.ap, %i.aw
  %i.ay = fsub <2 x double> %i.ao, %i.ax          ; 4 uses
  %i.az = getelementptr i8, ptr %i.n, i64 16
  %i.ba = getelementptr i8, ptr %i.r, i64 16
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !39, !noalias !343
  %i.bc = fmul double %i.p, %i.bb
  %i.bd = fmul double %i.t, %i.bc
  %i.be = load double, ptr %i.az, align 8, !tbaa !39, !noalias !343
  %i.bf = fadd double %i.be, %i.bd
  %i.bg = getelementptr i8, ptr %i.v, i64 16
  %i.bh = getelementptr i8, ptr %i.x, i64 16
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !39, !noalias !343
  %i.bj = fdiv double %i.bi, %i.z
  %i.bk = fdiv double %i.bj, %i.ab
  %i.bl = fmul double %i.ad, %i.bk
  %i.bm = load double, ptr %i.bg, align 8, !tbaa !39, !noalias !343
  %i.bn = fadd double %i.bm, %i.bl
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 24
  store <2 x double> %i.ay, ptr %i.bo, align 8, !tbaa !58, !noalias !343
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %3, ptr %i.bq, align 8, !tbaa !292, !noalias !343
  %i.br = shufflevector <2 x double> %i.ay, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.43.88.vec.insert = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.bu = shufflevector <2 x double> %.sroa.43.88.vec.insert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bw = insertelement <2 x double> poison, double %i.i, i64 0
  %i.bx = insertelement <2 x double> %i.bw, double %i.g, i64 1
  %i.by = fdiv <2 x double> splat (double f0x3FA45F306DC9C883), %i.bx ; 3 uses
  %i.bz = shufflevector <2 x double> %i.by, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ca = fmul <2 x double> %i.bz, %i.ay          ; 3 uses
  %i.cb = fsub double %i.bf, %i.bn                ; 4 uses
  %i.cc = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.cb, i64 0
  %i.cd = fmul <2 x double> %i.by, %i.cc
  %i.ce = shufflevector <2 x double> %i.cd, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store double %i.cb, ptr %i.bp, align 8, !tbaa !39, !noalias !343
  %i.cf = fmul <2 x double> %i.ca, %i.br
  %i.cg = load <2 x double>, ptr %i.bs, align 8, !noalias !343 ; 2 uses
  %i.ch = shufflevector <2 x double> %i.cg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ci = fmul <2 x double> %i.ca, %i.ch
  %.cast = bitcast double %i.cb to <1 x double>
  %i.cj = shufflevector <1 x double> %.cast, <1 x double> poison, <2 x i32> zeroinitializer
  %i.ck = fmul <2 x double> %i.ca, %i.cj
  %i.cl = shufflevector <2 x double> %i.cg, <2 x double> %i.ay, <4 x i32> <i32 0, i32 poison, i32 2, i32 poison>
  %i.cm = insertelement <4 x double> %i.cl, double 1.000000e+00, i64 3
  %i.cn = insertelement <4 x double> %i.cm, double %i.cb, i64 1
  %i.co = fmul <4 x double> %i.ce, %i.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21, !noalias !343
  %4 = load <3 x double>, ptr %i.k, align 8, !tbaa !39, !noalias !343 ; 4 uses
  %5 = shufflevector <3 x double> %4, <3 x double> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 2>
  %6 = load double, ptr %i.bt, align 8, !tbaa !39, !noalias !343
  %i.cp = shufflevector <3 x double> %4, <3 x double> poison, <2 x i32> zeroinitializer
  %i.cq = fmul <2 x double> %i.cf, %i.cp
  %i.cr = shufflevector <3 x double> %4, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cs = fmul <2 x double> %i.ci, %i.cr
  %i.ct = fadd <2 x double> %i.cq, %i.cs
  %7 = shufflevector <3 x double> %4, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %8 = fmul <2 x double> %i.ck, %7
  %9 = fadd <2 x double> %i.ct, %8
  %i.cu = fmul <4 x double> %i.co, %5             ; 4 uses
  %i.cv = extractelement <4 x double> %i.cu, i64 0
  %i.cw = extractelement <4 x double> %i.cu, i64 1
  %i.cx = fadd double %i.cv, %i.cw
  %i.cy = extractelement <4 x double> %i.cu, i64 2
  %i.cz = fadd double %i.cy, %i.cx
  %i.da = shufflevector <2 x double> %i.by, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %10 = load <2 x double>, ptr %i.k, align 8, !tbaa !58, !noalias !343 ; 2 uses
  %i.db = fmul <2 x double> %i.da, %10
  %i.dc = fadd <2 x double> %i.db, %9
  %i.dd = fmul <2 x double> %i.bu, %10
  %i.de = fadd <2 x double> %i.dd, %i.dc
  store <2 x double> %i.de, ptr %0, align 8, !tbaa !58, !alias.scope !343
  %i.df = extractelement <4 x double> %i.cu, i64 3
  %i.dg = fadd double %i.df, %i.cz
  %i.dh = fmul double %i.ah, %6
  %i.di = fadd double %i.dh, %i.dg
  store double %i.di, ptr %i.bv, align 8, !tbaa !39, !alias.scope !343
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEERKdEZN3igl19kelvinlet_evaluatorINS0_13CwiseBinaryOpINS0_8internal13scalar_sum_opIddEEKS2_KNS8_INS9_17scalar_product_opIddEEKNS8_ISE_KNS0_14CwiseNullaryOpINS9_18scalar_constant_opIdEESC_EESC_EESJ_EEEES2_S2_NS1_IdLi3ELi3ELi0ELi3ELi3EEEdEENS1_IT3_Li3ELi1ELi0ELi3ELi1EEESQ_RKNS0_10MatrixBaseIT_EERKNSS_IT0_EERKNSS_IT1_EERKNSS_IT2_EERKNS6_15KelvinletParamsISQ_EEEUlS4_E_E10_M_managerERSt9_Any_dataRKS1F_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN3igl19kelvinlet_evaluatorIN5Eigen13CwiseBinaryOpINS3_8internal13scalar_sum_opIddEEKNS3_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEKNS4_INS5_17scalar_product_opIddEEKNS4_ISC_KNS3_14CwiseNullaryOpINS5_18scalar_constant_opIdEESA_EESA_EESH_EEEES9_S9_NS8_IdLi3ELi3ELi0ELi3ELi3EEEdEENS8_IT3_Li3ELi1ELi0ELi3ELi1EEESO_RKNS3_10MatrixBaseIT_EERKNSQ_IT0_EERKNSQ_IT1_EERKNSQ_IT2_EERKNS1_15KelvinletParamsISO_EEEUlRKdE_E10_M_managerERSt9_Any_dataRKS1F_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN3igl19kelvinlet_evaluatorIN5Eigen13CwiseBinaryOpINS1_8internal13scalar_sum_opIddEEKNS1_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEKNS2_INS3_17scalar_product_opIddEEKNS2_ISA_KNS1_14CwiseNullaryOpINS3_18scalar_constant_opIdEES8_EES8_EESF_EEEES7_S7_NS6_IdLi3ELi3ELi0ELi3ELi3EEEdEENS6_IT3_Li3ELi1ELi0ELi3ELi1EEESM_RKNS1_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNS_15KelvinletParamsISM_EEEUlRKdE_, ptr %0, align 8, !tbaa !294
  br label %_ZNSt14_Function_base13_Base_managerIZN3igl19kelvinlet_evaluatorIN5Eigen13CwiseBinaryOpINS3_8internal13scalar_sum_opIddEEKNS3_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEKNS4_INS5_17scalar_product_opIddEEKNS4_ISC_KNS3_14CwiseNullaryOpINS5_18scalar_constant_opIdEESA_EESA_EESH_EEEES9_S9_NS8_IdLi3ELi3ELi0ELi3ELi3EEEdEENS8_IT3_Li3ELi1ELi0ELi3ELi1EEESO_RKNS3_10MatrixBaseIT_EERKNSQ_IT0_EERKNSQ_IT1_EERKNSQ_IT2_EERKNS1_15KelvinletParamsISO_EEEUlRKdE_E10_M_managerERSt9_Any_dataRKS1F_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !27
  store ptr %i.a, ptr %0, align 8, !tbaa !27
  br label %_ZNSt14_Function_base13_Base_managerIZN3igl19kelvinlet_evaluatorIN5Eigen13CwiseBinaryOpINS3_8internal13scalar_sum_opIddEEKNS3_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEKNS4_INS5_17scalar_product_opIddEEKNS4_ISC_KNS3_14CwiseNullaryOpINS5_18scalar_constant_opIdEESA_EESA_EESH_EEEES9_S9_NS8_IdLi3ELi3ELi0ELi3ELi3EEEdEENS8_IT3_Li3ELi1ELi0ELi3ELi1EEESO_RKNS3_10MatrixBaseIT_EERKNSQ_IT0_EERKNSQ_IT1_EERKNSQ_IT2_EERKNS1_15KelvinletParamsISO_EEEUlRKdE_E10_M_managerERSt9_Any_dataRKS1F_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !27
  %i.c = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !tbaa.struct !358
  store ptr %i.c, ptr %0, align 8, !tbaa !27
  br label %_ZNSt14_Function_base13_Base_managerIZN3igl19kelvinlet_evaluatorIN5Eigen13CwiseBinaryOpINS3_8internal13scalar_sum_opIddEEKNS3_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEKNS4_INS5_17scalar_product_opIddEEKNS4_ISC_KNS3_14CwiseNullaryOpINS5_18scalar_constant_opIdEESA_EESA_EESH_EEEES9_S9_NS8_IdLi3ELi3ELi0ELi3ELi3EEEdEENS8_IT3_Li3ELi1ELi0ELi3ELi1EEESO_RKNS3_10MatrixBaseIT_EERKNSQ_IT0_EERKNSQ_IT1_EERKNSQ_IT2_EERKNS1_15KelvinletParamsISO_EEEUlRKdE_E10_M_managerERSt9_Any_dataRKS1F_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerIZN3igl19kelvinlet_evaluatorIN5Eigen13CwiseBinaryOpINS3_8internal13scalar_sum_opIddEEKNS3_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEKNS4_INS5_17scalar_product_opIddEEKNS4_ISC_KNS3_14CwiseNullaryOpINS5_18scalar_constant_opIdEESA_EESA_EESH_EEEES9_S9_NS8_IdLi3ELi3ELi0ELi3ELi3EEEdEENS8_IT3_Li3ELi1ELi0ELi3ELi1EEESO_RKNS3_10MatrixBaseIT_EERKNSQ_IT0_EERKNSQ_IT1_EERKNSQ_IT2_EERKNS1_15KelvinletParamsISO_EEEUlRKdE_E10_M_managerERSt9_Any_dataRKS1F_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 24) #26
  br label %_ZNSt14_Function_base13_Base_managerIZN3igl19kelvinlet_evaluatorIN5Eigen13CwiseBinaryOpINS3_8internal13scalar_sum_opIddEEKNS3_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEKNS4_INS5_17scalar_product_opIddEEKNS4_ISC_KNS3_14CwiseNullaryOpINS5_18scalar_constant_opIdEESA_EESA_EESH_EEEES9_S9_NS8_IdLi3ELi3ELi0ELi3ELi3EEEdEENS8_IT3_Li3ELi1ELi0ELi3ELi1EEESO_RKNS3_10MatrixBaseIT_EERKNSQ_IT0_EERKNSQ_IT1_EERKNSQ_IT2_EERKNS1_15KelvinletParamsISO_EEEUlRKdE_E10_M_managerERSt9_Any_dataRKS1F_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN3igl19kelvinlet_evaluatorIN5Eigen13CwiseBinaryOpINS3_8internal13scalar_sum_opIddEEKNS3_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEKNS4_INS5_17scalar_product_opIddEEKNS4_ISC_KNS3_14CwiseNullaryOpINS5_18scalar_constant_opIdEESA_EESA_EESH_EEEES9_S9_NS8_IdLi3ELi3ELi0ELi3ELi3EEEdEENS8_IT3_Li3ELi1ELi0ELi3ELi1EEESO_RKNS3_10MatrixBaseIT_EERKNSQ_IT0_EERKNSQ_IT1_EERKNSQ_IT2_EERKNS1_15KelvinletParamsISO_EEEUlRKdE_E10_M_managerERSt9_Any_dataRKS1F_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt17_Function_handlerIFN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEERKdEZN3igl19kelvinlet_evaluatorINS0_13CwiseBinaryOpINS0_8internal13scalar_sum_opIddEEKS2_KNS8_INS9_17scalar_product_opIddEEKNS8_ISE_KNS0_14CwiseNullaryOpINS9_18scalar_constant_opIdEESC_EESC_EESJ_EEEES2_S2_NS1_IdLi3ELi3ELi0ELi3ELi3EEEdEENS1_IT3_Li3ELi1ELi0ELi3ELi1EEESQ_RKNS0_10MatrixBaseIT_EERKNSS_IT0_EERKNSS_IT1_EERKNSS_IT2_EERKNS6_15KelvinletParamsISQ_EEEUlS4_E0_E9_M_invokeERKSt9_Any_dataS4_(ptr dead_on_unwind noalias writable sret(%"class.Eigen::Matrix.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0 = alloca [24 x i8], align 16 ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !27     ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !359)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !362, !noalias !364, !nonnull !32, !align !33
  %i.d = load double, ptr %i.c, align 8, !tbaa !39, !noalias !364
  %i.e = load double, ptr %2, align 8, !tbaa !39, !noalias !364 ; 4 uses
  %i.f = tail call double @llvm.fmuladd.f64(double %i.e, double %i.e, double %i.d)
  %i.g = tail call double @sqrt(double noundef %i.f) #21, !noalias !364 ; 5 uses
  %i.h = fmul double %i.g, %i.g
  %i.i = fmul double %i.g, %i.h                   ; 2 uses
  %i.j = fdiv double 1.000000e+00, %i.i
  %i.k = fmul double %i.e, 3.000000e+00
  %i.l = fmul double %i.e, %i.k
  %i.m = fmul double %i.i, 2.000000e+00
  %i.n = fmul double %i.g, %i.m
  %i.o = fmul double %i.g, %i.n
  %i.p = fdiv double %i.l, %i.o
  %i.q = fadd double %i.j, %i.p
  %i.r = fmul double %i.q, f0xBFB45F306DC9C883    ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !369, !noalias !364, !nonnull !32 ; 6 uses
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !370, !noalias !364, !nonnull !32, !align !33 ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !158, !noalias !371, !nonnull !32, !align !33 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.y = load double, ptr %i.x, align 8, !tbaa !50, !noalias !371 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !167, !noalias !371, !nonnull !32, !align !33 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !50, !noalias !371 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !290, !noalias !371, !nonnull !32, !align !33 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 120
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !291, !noalias !371, !nonnull !32, !align !33 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 136
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !50, !noalias !371 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 160
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !50, !noalias !371 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 184
  %i.am = load double, ptr %i.al, align 8, !tbaa !50, !noalias !371 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0)
  %.sroa.615.40.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.y, i64 0
  %.sroa.12.64.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.ac, i64 0
  %.sroa.21.128.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.ai, i64 0
  %.sroa.24.144.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.ak, i64 0
  %.sroa.27.160.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.am, i64 0
  %i.an = load <2 x double>, ptr %i.w, align 8, !tbaa !58, !noalias !359
  %i.ao = shufflevector <2 x double> %.sroa.615.40.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ap = load <2 x double>, ptr %i.aa, align 8, !tbaa !58, !noalias !359
  %i.aq = fmul <2 x double> %i.ao, %i.ap
  %i.ar = shufflevector <2 x double> %.sroa.12.64.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.as = fmul <2 x double> %i.ar, %i.aq
  %i.at = fadd <2 x double> %i.an, %i.as
  %i.au = load <2 x double>, ptr %i.ae, align 8, !tbaa !58, !noalias !359
  %i.av = load <2 x double>, ptr %i.ag, align 8, !tbaa !58, !noalias !359
  %i.aw = shufflevector <2 x double> %.sroa.21.128.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ax = fdiv <2 x double> %i.av, %i.aw
  %i.ay = shufflevector <2 x double> %.sroa.24.144.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.az = fdiv <2 x double> %i.ax, %i.ay
  %i.ba = shufflevector <2 x double> %.sroa.27.160.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bb = fmul <2 x double> %i.ba, %i.az
  %i.bc = fadd <2 x double> %i.au, %i.bb
  %i.bd = fsub <2 x double> %i.at, %i.bc          ; 3 uses
  store <2 x double> %i.bd, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0, align 16, !tbaa !58, !noalias !359
  %i.be = getelementptr i8, ptr %i.w, i64 16
  %i.bf = getelementptr i8, ptr %i.aa, i64 16
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !39, !noalias !359
  %i.bh = fmul double %i.y, %i.bg
  %i.bi = fmul double %i.ac, %i.bh
  %i.bj = load double, ptr %i.be, align 8, !tbaa !39, !noalias !359
  %i.bk = fadd double %i.bj, %i.bi
  %i.bl = getelementptr i8, ptr %i.ae, i64 16
  %i.bm = getelementptr i8, ptr %i.ag, i64 16
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !39, !noalias !359
  %i.bo = fdiv double %i.bn, %i.ai
  %i.bp = fdiv double %i.bo, %i.ak
  %i.bq = fmul double %i.am, %i.bp
  %i.br = load double, ptr %i.bl, align 8, !tbaa !39, !noalias !359
  %i.bs = fadd double %i.br, %i.bq
  %i.bt = fsub double %i.bk, %i.bs                ; 2 uses
  %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx6 = getelementptr inbounds nuw i8, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0, i64 16
  store double %i.bt, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx6, align 16, !tbaa !39, !noalias !359
  %.sroa.6.72.vec.insert.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.r, i64 0
  %i.bu = shufflevector <2 x double> %.sroa.6.72.vec.insert.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bv = load <2 x double>, ptr %i.t, align 1, !tbaa !58, !noalias !359
  %i.bw = fmul <2 x double> %i.bu, %i.bv
  %i.bx = extractelement <2 x double> %i.bd, i64 0
  %i.by = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bz = fmul <2 x double> %i.by, %i.bw
  %i.ca = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.cb = load <2 x double>, ptr %i.ca, align 1, !tbaa !58, !noalias !359
  %i.cc = fmul <2 x double> %i.bu, %i.cb
  %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx5 = getelementptr inbounds nuw i8, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0, i64 8
  %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0.8..sroa.2.i.i.i.i.i.i.i.i.i.sroa.0.8..sroa.2.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.8..sroa.2.i.i.i.i.i.8..sroa.2.i.i.i.i.8..sroa.2.i.i.i.i.8..sroa.2.i.i.i.8..sroa.2.i.i.i.8..sroa.2.i.i.8..sroa.2.i.i.8..sroa.2.i.8..sroa.2.i.8..sroa.2.8..sroa.2.8..sroa.2.48..i.i.i.i.i.i.i.i.i = load <2 x double>, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx5, align 8, !noalias !359 ; 2 uses
  %i.cd = shufflevector <2 x double> %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0.8..sroa.2.i.i.i.i.i.i.i.i.i.sroa.0.8..sroa.2.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.8..sroa.2.i.i.i.i.i.8..sroa.2.i.i.i.i.8..sroa.2.i.i.i.i.8..sroa.2.i.i.i.8..sroa.2.i.i.i.8..sroa.2.i.i.8..sroa.2.i.i.8..sroa.2.i.8..sroa.2.i.8..sroa.2.8..sroa.2.8..sroa.2.48..i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ce = fmul <2 x double> %i.cc, %i.cd
  %i.cf = fadd <2 x double> %i.bz, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.ch = load <2 x double>, ptr %i.cg, align 1, !tbaa !58, !noalias !359
  %i.ci = fmul <2 x double> %i.bu, %i.ch
  %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx7 = getelementptr inbounds nuw i8, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0, i64 16
  %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0.16..sroa.2.i.i.i.i.i.i.i.i.i.sroa.0.16. = load <1 x double>, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx7, align 16, !noalias !359
  %i.cj = shufflevector <1 x double> %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0.16..sroa.2.i.i.i.i.i.i.i.i.i.sroa.0.16., <1 x double> poison, <2 x i32> zeroinitializer
  %i.ck = fmul <2 x double> %i.ci, %i.cj
  %i.cl = fadd <2 x double> %i.cf, %i.ck
  store <2 x double> %i.cl, ptr %0, align 8, !tbaa !58, !alias.scope !359
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cn = getelementptr i8, ptr %i.t, i64 16
  %i.co = load double, ptr %i.cn, align 8, !tbaa !39, !noalias !359
  %i.cp = fmul double %i.r, %i.co
  %i.cq = fmul double %i.bx, %i.cp
  %i.cr = getelementptr i8, ptr %i.t, i64 40
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !39, !noalias !359
  %i.ct = fmul double %i.r, %i.cs
  %i.cu = extractelement <2 x double> %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0.8..sroa.2.i.i.i.i.i.i.i.i.i.sroa.0.8..sroa.2.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.8..sroa.2.i.i.i.i.i.8..sroa.2.i.i.i.i.8..sroa.2.i.i.i.i.8..sroa.2.i.i.i.8..sroa.2.i.i.i.8..sroa.2.i.i.8..sroa.2.i.i.8..sroa.2.i.8..sroa.2.i.8..sroa.2.8..sroa.2.8..sroa.2.48..i.i.i.i.i.i.i.i.i, i64 0
  %i.cv = fmul double %i.cu, %i.ct
  %i.cw = getelementptr i8, ptr %i.t, i64 64
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !39, !noalias !359
  %i.cy = fmul double %i.r, %i.cx
  %i.cz = fmul double %i.bt, %i.cy
  %i.da = fadd double %i.cv, %i.cz
  %i.db = fadd double %i.cq, %i.da
  store double %i.db, ptr %i.cm, align 8, !tbaa !39, !alias.scope !359
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEERKdEZN3igl19kelvinlet_evaluatorINS0_13CwiseBinaryOpINS0_8internal13scalar_sum_opIddEEKS2_KNS8_INS9_17scalar_product_opIddEEKNS8_ISE_KNS0_14CwiseNullaryOpINS9_18scalar_constant_opIdEESC_EESC_EESJ_EEEES2_S2_NS1_IdLi3ELi3ELi0ELi3ELi3EEEdEENS1_IT3_Li3ELi1ELi0ELi3ELi1EEESQ_RKNS0_10MatrixBaseIT_EERKNSS_IT0_EERKNSS_IT1_EERKNSS_IT2_EERKNS6_15KelvinletParamsISQ_EEEUlS4_E0_E10_M_managerERSt9_Any_dataRKS1F_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN3igl19kelvinlet_evaluatorIN5Eigen13CwiseBinaryOpINS3_8internal13scalar_sum_opIddEEKNS3_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEKNS4_INS5_17scalar_product_opIddEEKNS4_ISC_KNS3_14CwiseNullaryOpINS5_18scalar_constant_opIdEESA_EESA_EESH_EEEES9_S9_NS8_IdLi3ELi3ELi0ELi3ELi3EEEdEENS8_IT3_Li3ELi1ELi0ELi3ELi1EEESO_RKNS3_10MatrixBaseIT_EERKNSQ_IT0_EERKNSQ_IT1_EERKNSQ_IT2_EERKNS1_15KelvinletParamsISO_EEEUlRKdE0_E10_M_managerERSt9_Any_dataRKS1F_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN3igl19kelvinlet_evaluatorIN5Eigen13CwiseBinaryOpINS1_8internal13scalar_sum_opIddEEKNS1_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEKNS2_INS3_17scalar_product_opIddEEKNS2_ISA_KNS1_14CwiseNullaryOpINS3_18scalar_constant_opIdEES8_EES8_EESF_EEEES7_S7_NS6_IdLi3ELi3ELi0ELi3ELi3EEEdEENS6_IT3_Li3ELi1ELi0ELi3ELi1EEESM_RKNS1_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNS_15KelvinletParamsISM_EEEUlRKdE0_, ptr %0, align 8, !tbaa !294
  br label %_ZNSt14_Function_base13_Base_managerIZN3igl19kelvinlet_evaluatorIN5Eigen13CwiseBinaryOpINS3_8internal13scalar_sum_opIddEEKNS3_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEKNS4_INS5_17scalar_product_opIddEEKNS4_ISC_KNS3_14CwiseNullaryOpINS5_18scalar_constant_opIdEESA_EESA_EESH_EEEES9_S9_NS8_IdLi3ELi3ELi0ELi3ELi3EEEdEENS8_IT3_Li3ELi1ELi0ELi3ELi1EEESO_RKNS3_10MatrixBaseIT_EERKNSQ_IT0_EERKNSQ_IT1_EERKNSQ_IT2_EERKNS1_15KelvinletParamsISO_EEEUlRKdE0_E10_M_managerERSt9_Any_dataRKS1F_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !27
  store ptr %i.a, ptr %0, align 8, !tbaa !27
  br label %_ZNSt14_Function_base13_Base_managerIZN3igl19kelvinlet_evaluatorIN5Eigen13CwiseBinaryOpINS3_8internal13scalar_sum_opIddEEKNS3_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEKNS4_INS5_17scalar_product_opIddEEKNS4_ISC_KNS3_14CwiseNullaryOpINS5_18scalar_constant_opIdEESA_EESA_EESH_EEEES9_S9_NS8_IdLi3ELi3ELi0ELi3ELi3EEEdEENS8_IT3_Li3ELi1ELi0ELi3ELi1EEESO_RKNS3_10MatrixBaseIT_EERKNSQ_IT0_EERKNSQ_IT1_EERKNSQ_IT2_EERKNS1_15KelvinletParamsISO_EEEUlRKdE0_E10_M_managerERSt9_Any_dataRKS1F_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !27
  %i.c = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !tbaa.struct !374
  store ptr %i.c, ptr %0, align 8, !tbaa !27
  br label %_ZNSt14_Function_base13_Base_managerIZN3igl19kelvinlet_evaluatorIN5Eigen13CwiseBinaryOpINS3_8internal13scalar_sum_opIddEEKNS3_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEKNS4_INS5_17scalar_product_opIddEEKNS4_ISC_KNS3_14CwiseNullaryOpINS5_18scalar_constant_opIdEESA_EESA_EESH_EEEES9_S9_NS8_IdLi3ELi3ELi0ELi3ELi3EEEdEENS8_IT3_Li3ELi1ELi0ELi3ELi1EEESO_RKNS3_10MatrixBaseIT_EERKNSQ_IT0_EERKNSQ_IT1_EERKNSQ_IT2_EERKNS1_15KelvinletParamsISO_EEEUlRKdE0_E10_M_managerERSt9_Any_dataRKS1F_St18_Manager_operation.exit
end_hunk_1
begin_hunk_2_@_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEENS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_7ProductINS4_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS2_IdLi3ELi3ELi0ELi3ELi3EEEEESE_EENS4_IS6_KNS4_INS0_13scalar_sum_opIddEEKS3_KNS4_IS9_KNS4_IS9_KNSA_ISC_SK_EESK_EESM_EEEEKNS4_ISJ_SK_KNS4_IS9_KNS4_INS0_18scalar_quotient_opIddEEKNS4_ISU_SK_SM_EESM_EESM_EEEEEELi0EEEKNS4_IS9_SM_KNS4_ISJ_KNS4_IS9_SM_KS13_EES15_EEEEEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_:bb.a
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 456
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !50
  store double %i.dn, ptr %i.dl, align 8, !tbaa !50
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 240 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !50
  store double %i.dq, ptr %i.do, align 8, !tbaa !50
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 256 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 504
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !50
  store double %i.dt, ptr %i.dr, align 8, !tbaa !50
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 272
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 280 ; 2 uses
  store ptr %i.dv, ptr %i.du, align 8, !tbaa !292
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 560
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !50, !noalias !417 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !414, !noalias !417, !nonnull !32, !align !33 ; 6 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 592
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !158, !noalias !417, !nonnull !32, !align !33 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 624
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !50, !noalias !417 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 632
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !167, !noalias !417, !nonnull !32, !align !33 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !50, !noalias !417 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !290, !noalias !417, !nonnull !32, !align !33 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !291, !noalias !417, !nonnull !32, !align !33 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 720
  %i.en = load double, ptr %i.em, align 8, !tbaa !50, !noalias !417 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 744
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !50, !noalias !417 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 768
  %i.er = load double, ptr %i.eq, align 8, !tbaa !50, !noalias !417 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0)
  %.sroa.615.40.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.ed, i64 0
  %.sroa.12.64.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.eh, i64 0
  %.sroa.21.128.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.en, i64 0
  %.sroa.24.144.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.ep, i64 0
  %.sroa.27.160.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.er, i64 0
  %i.es = load <2 x double>, ptr %i.eb, align 8, !tbaa !58
  %i.et = shufflevector <2 x double> %.sroa.615.40.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eu = load <2 x double>, ptr %i.ef, align 8, !tbaa !58
  %i.ev = fmul <2 x double> %i.et, %i.eu
  %i.ew = shufflevector <2 x double> %.sroa.12.64.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ex = fmul <2 x double> %i.ew, %i.ev
  %i.ey = fadd <2 x double> %i.es, %i.ex
  %i.ez = load <2 x double>, ptr %i.ej, align 8, !tbaa !58
  %i.fa = load <2 x double>, ptr %i.el, align 8, !tbaa !58
  %i.fb = shufflevector <2 x double> %.sroa.21.128.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fc = fdiv <2 x double> %i.fa, %i.fb
  %i.fd = shufflevector <2 x double> %.sroa.24.144.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fe = fdiv <2 x double> %i.fc, %i.fd
  %i.ff = shufflevector <2 x double> %.sroa.27.160.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fg = fmul <2 x double> %i.ff, %i.fe
  %i.fh = fadd <2 x double> %i.ez, %i.fg
  %i.fi = fsub <2 x double> %i.ey, %i.fh          ; 3 uses
  store <2 x double> %i.fi, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0, align 16, !tbaa !58
  %i.fj = getelementptr i8, ptr %i.eb, i64 16
  %i.fk = getelementptr i8, ptr %i.ef, i64 16
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !39
  %i.fm = fmul double %i.ed, %i.fl
  %i.fn = fmul double %i.eh, %i.fm
  %i.fo = load double, ptr %i.fj, align 8, !tbaa !39
  %i.fp = fadd double %i.fo, %i.fn
  %i.fq = getelementptr i8, ptr %i.ej, i64 16
  %i.fr = getelementptr i8, ptr %i.el, i64 16
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !39
  %i.ft = fdiv double %i.fs, %i.en
  %i.fu = fdiv double %i.ft, %i.ep
  %i.fv = fmul double %i.er, %i.fu
  %i.fw = load double, ptr %i.fq, align 8, !tbaa !39
  %i.fx = fadd double %i.fw, %i.fv
  %i.fy = fsub double %i.fp, %i.fx                ; 2 uses
  %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx32 = getelementptr inbounds nuw i8, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0, i64 16
  store double %i.fy, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx32, align 16, !tbaa !39
  %.sroa.6.72.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.dx, i64 0
  %i.fz = shufflevector <2 x double> %.sroa.6.72.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ga = load <2 x double>, ptr %i.dz, align 8, !tbaa !58
  %i.gb = fmul <2 x double> %i.fz, %i.ga
  %i.gc = extractelement <2 x double> %i.fi, i64 0
  %i.gd = shufflevector <2 x double> %i.fi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ge = fmul <2 x double> %i.gd, %i.gb
  %i.gf = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.gg = load <2 x double>, ptr %i.gf, align 8, !tbaa !58
  %i.gh = fmul <2 x double> %i.fz, %i.gg
  %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0.8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx31 = getelementptr inbounds nuw i8, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0, i64 8
  %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.8..sroa.2.i.i.i.i.i.8..sroa.2.i.i.i.i.8..sroa.2.i.i.i.i.8..sroa.2.i.i.i.8..sroa.2.i.i.i.8..sroa.2.i.i.8..sroa.2.i.i.8..sroa.2.i.8..sroa.2.i.8..sroa.2.8..sroa.2.8..sroa.2.48..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load <2 x double>, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0.8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx31, align 8 ; 2 uses
  %i.gi = shufflevector <2 x double> %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.8..sroa.2.i.i.i.i.i.8..sroa.2.i.i.i.i.8..sroa.2.i.i.i.i.8..sroa.2.i.i.i.8..sroa.2.i.i.i.8..sroa.2.i.i.8..sroa.2.i.i.8..sroa.2.i.8..sroa.2.i.8..sroa.2.8..sroa.2.8..sroa.2.48..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gj = fmul <2 x double> %i.gh, %i.gi
  %i.gk = fadd <2 x double> %i.ge, %i.gj
  %i.gl = getelementptr inbounds nuw i8, ptr %i.dz, i64 48
  %i.gm = load <2 x double>, ptr %i.gl, align 8, !tbaa !58
  %i.gn = fmul <2 x double> %i.fz, %i.gm
  %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx33 = getelementptr inbounds nuw i8, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0, i64 16
  %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0.16..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0.16. = load <1 x double>, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx33, align 16
  %i.go = shufflevector <1 x double> %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0.16..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0.16., <1 x double> poison, <2 x i32> zeroinitializer
  %i.gp = fmul <2 x double> %i.gn, %i.go
  %i.gq = fadd <2 x double> %i.gk, %i.gp          ; 2 uses
  store <2 x double> %i.gq, ptr %i.dv, align 8, !tbaa !58
  %i.gr = getelementptr inbounds nuw i8, ptr %3, i64 296
  %i.gs = getelementptr i8, ptr %i.dz, i64 16
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !39
  %i.gu = fmul double %i.dx, %i.gt
  %i.gv = fmul double %i.gc, %i.gu
  %i.gw = getelementptr i8, ptr %i.dz, i64 40
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !39
  %i.gy = fmul double %i.dx, %i.gx
  %i.gz = extractelement <2 x double> %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.8..sroa.2.i.i.i.i.i.8..sroa.2.i.i.i.i.8..sroa.2.i.i.i.i.8..sroa.2.i.i.i.8..sroa.2.i.i.i.8..sroa.2.i.i.8..sroa.2.i.i.8..sroa.2.i.8..sroa.2.i.8..sroa.2.8..sroa.2.8..sroa.2.48..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 0
  %i.ha = fmul double %i.gz, %i.gy
  %i.hb = getelementptr i8, ptr %i.dz, i64 64
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !39
  %i.hd = fmul double %i.dx, %i.hc
  %i.he = fmul double %i.fy, %i.hd
  %i.hf = fadd double %i.ha, %i.he
  %i.hg = fadd double %i.gv, %i.hf                ; 2 uses
  store double %i.hg, ptr %i.gr, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0)
  %i.hh = load <2 x double>, ptr %i.cn, align 8   ; 2 uses
  %i.hi = shufflevector <2 x double> %i.hh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hj = load <2 x double>, ptr %i.cq, align 8   ; 2 uses
  %i.hk = shufflevector <2 x double> %i.hj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hl = load <2 x double>, ptr %i.cv, align 8, !tbaa !58
  %i.hm = load <2 x double>, ptr %i.cw, align 8   ; 2 uses
  %i.hn = shufflevector <2 x double> %i.hm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ho = load <2 x double>, ptr %i.db, align 8, !tbaa !58
  %i.hp = fmul <2 x double> %i.hn, %i.ho
  %i.hq = load <2 x double>, ptr %i.dc, align 8   ; 2 uses
  %i.hr = shufflevector <2 x double> %i.hq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hs = fmul <2 x double> %i.hp, %i.hr
  %i.ht = fadd <2 x double> %i.hl, %i.hs
  %i.hu = load <2 x double>, ptr %i.dh, align 8, !tbaa !58
  %i.hv = load <2 x double>, ptr %i.dk, align 8, !tbaa !58
  %i.hw = load <2 x double>, ptr %i.dl, align 8   ; 2 uses
  %i.hx = shufflevector <2 x double> %i.hw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hy = fdiv <2 x double> %i.hv, %i.hx
  %i.hz = load <2 x double>, ptr %i.do, align 8   ; 2 uses
  %i.ia = shufflevector <2 x double> %i.hz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ib = fdiv <2 x double> %i.hy, %i.ia
  %i.ic = load <2 x double>, ptr %i.dr, align 8   ; 2 uses
  %i.id = shufflevector <2 x double> %i.ic, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ie = fmul <2 x double> %i.ib, %i.id
  %i.if = fadd <2 x double> %i.hu, %i.ie
  %i.ig = fsub <2 x double> %i.ht, %i.if
  %i.ih = fmul <2 x double> %i.hk, %i.ig
  %i.ii = fadd <2 x double> %i.gq, %i.ih
  %i.ij = fmul <2 x double> %i.hi, %i.ii
  %i.ik = fsub <2 x double> %i.bw, %i.ij
  store <2 x double> %i.ik, ptr %0, align 8, !tbaa !58
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.im = extractelement <2 x double> %i.hh, i64 0
  %i.in = extractelement <2 x double> %i.hj, i64 0
  %i.io = getelementptr i8, ptr %i.cv, i64 16
  %i.ip = extractelement <2 x double> %i.hm, i64 0
  %i.iq = getelementptr i8, ptr %i.db, i64 16
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !39
  %i.is = fmul double %i.ip, %i.ir
  %i.it = extractelement <2 x double> %i.hq, i64 0
  %i.iu = fmul double %i.is, %i.it
  %i.iv = load double, ptr %i.io, align 8, !tbaa !39
  %i.iw = fadd double %i.iv, %i.iu
  %i.ix = getelementptr i8, ptr %i.dh, i64 16
  %i.iy = getelementptr i8, ptr %i.dk, i64 16
  %i.iz = extractelement <2 x double> %i.hw, i64 0
  %i.ja = load double, ptr %i.iy, align 8, !tbaa !39
  %i.jb = fdiv double %i.ja, %i.iz
  %i.jc = extractelement <2 x double> %i.hz, i64 0
  %i.jd = fdiv double %i.jb, %i.jc
  %i.je = extractelement <2 x double> %i.ic, i64 0
  %i.jf = fmul double %i.jd, %i.je
  %i.jg = load double, ptr %i.ix, align 8, !tbaa !39
  %i.jh = fadd double %i.jg, %i.jf
  %i.ji = fsub double %i.iw, %i.jh
  %i.jj = fmul double %i.in, %i.ji
  %i.jk = fadd double %i.hg, %i.jj
  %i.jl = fmul double %i.im, %i.jk
  %i.jm = load double, ptr %i.bx, align 8, !tbaa !39
  %i.jn = fsub double %i.jm, %i.jl
  store double %i.jn, ptr %i.il, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt17_Function_handlerIFN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEERKdEZN3igl19kelvinlet_evaluatorINS0_13CwiseBinaryOpINS0_8internal13scalar_sum_opIddEEKNS8_ISB_KS2_KNS8_INS9_17scalar_product_opIddEEKNS8_ISE_KNS0_14CwiseNullaryOpINS9_18scalar_constant_opIdEESC_EESC_EESJ_EEEESN_EES2_S2_NS1_IdLi3ELi3ELi0ELi3ELi3EEEdEENS1_IT3_Li3ELi1ELi0ELi3ELi1EEESS_RKNS0_10MatrixBaseIT_EERKNSU_IT0_EERKNSU_IT1_EERKNSU_IT2_EERKNS6_15KelvinletParamsISS_EEEUlS4_E_E9_M_invokeERKSt9_Any_dataS4_(ptr dead_on_unwind noalias writable sret(%"class.Eigen::Matrix.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Eigen::internal::evaluator.999", align 8 ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !27     ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !420)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !423, !noalias !425, !nonnull !32, !align !33
  %i.d = load double, ptr %i.c, align 8, !tbaa !39, !noalias !425
  %i.e = load double, ptr %2, align 8, !tbaa !39, !noalias !425 ; 4 uses
  %i.f = tail call double @llvm.fmuladd.f64(double %i.e, double %i.e, double %i.d)
  %i.g = tail call double @sqrt(double noundef %i.f) #21, !noalias !425 ; 4 uses
  %i.h = fmul double %i.g, %i.g
  %i.i = fmul double %i.g, %i.h                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !430, !noalias !425, !nonnull !32 ; 3 uses
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !431, !noalias !425, !nonnull !32, !align !33 ; 12 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !158, !noalias !432, !nonnull !32, !align !33 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.p = load double, ptr %i.o, align 8, !tbaa !50, !noalias !432 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !167, !noalias !432, !nonnull !32, !align !33 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %i.t = load double, ptr %i.s, align 8, !tbaa !50, !noalias !432 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %i.v = load double, ptr %i.u, align 8, !tbaa !50, !noalias !432 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 136
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !167, !noalias !432, !nonnull !32, !align !33 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 160
  %i.z = load double, ptr %i.y, align 8, !tbaa !50, !noalias !432 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 184
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !290, !noalias !432, !nonnull !32, !align !33 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 208
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !291, !noalias !432, !nonnull !32, !align !33 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 224
  %i.af = load double, ptr %i.ae, align 8, !tbaa !50, !noalias !432 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 248
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !50, !noalias !432 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 272
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !50, !noalias !432 ; 2 uses
  %i.ak = fmul double %i.e, f0x3FB45F306DC9C883
  %i.al = fmul double %i.e, %i.ak
  %i.am = fmul double %i.i, 2.000000e+00
  %i.an = fdiv double %i.al, %i.am                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21, !noalias !420
  %.sroa.918.72.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.p, i64 0
  %.sroa.15.96.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.t, i64 0
  %.sroa.1824.128.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.v, i64 0
  %.sroa.24.152.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.z, i64 0
  %.sroa.33.216.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.af, i64 0
  %.sroa.36.232.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.ah, i64 0
  %.sroa.39.248.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.aj, i64 0
  %i.ao = load <2 x double>, ptr %i.n, align 8, !tbaa !58, !noalias !420
  %i.ap = shufflevector <2 x double> %.sroa.918.72.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aq = load <2 x double>, ptr %i.r, align 8, !tbaa !58, !noalias !420
  %i.ar = fmul <2 x double> %i.ap, %i.aq
  %i.as = shufflevector <2 x double> %.sroa.15.96.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.at = fmul <2 x double> %i.as, %i.ar
  %i.au = fadd <2 x double> %i.ao, %i.at
  %i.av = shufflevector <2 x double> %.sroa.1824.128.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aw = load <2 x double>, ptr %i.x, align 8, !tbaa !58, !noalias !420
  %i.ax = fmul <2 x double> %i.av, %i.aw
  %i.ay = shufflevector <2 x double> %.sroa.24.152.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.az = fmul <2 x double> %i.ay, %i.ax
  %i.ba = fadd <2 x double> %i.au, %i.az
  %i.bb = load <2 x double>, ptr %i.ab, align 8, !tbaa !58, !noalias !420
  %i.bc = load <2 x double>, ptr %i.ad, align 8, !tbaa !58, !noalias !420
  %i.bd = shufflevector <2 x double> %.sroa.33.216.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.be = fdiv <2 x double> %i.bc, %i.bd
  %i.bf = shufflevector <2 x double> %.sroa.36.232.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bg = fdiv <2 x double> %i.be, %i.bf
  %i.bh = shufflevector <2 x double> %.sroa.39.248.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bi = fmul <2 x double> %i.bh, %i.bg
  %i.bj = fadd <2 x double> %i.bb, %i.bi
  %i.bk = fsub <2 x double> %i.ba, %i.bj          ; 4 uses
  %i.bl = getelementptr i8, ptr %i.n, i64 16
  %i.bm = getelementptr i8, ptr %i.r, i64 16
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !39, !noalias !420
  %i.bo = fmul double %i.p, %i.bn
  %i.bp = fmul double %i.t, %i.bo
  %i.bq = load double, ptr %i.bl, align 8, !tbaa !39, !noalias !420
  %i.br = fadd double %i.bq, %i.bp
  %i.bs = getelementptr i8, ptr %i.x, i64 16
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !39, !noalias !420
  %i.bu = fmul double %i.v, %i.bt
  %i.bv = fmul double %i.z, %i.bu
  %i.bw = fadd double %i.br, %i.bv
  %i.bx = getelementptr i8, ptr %i.ab, i64 16
  %i.by = getelementptr i8, ptr %i.ad, i64 16
  %i.bz = load double, ptr %i.by, align 8, !tbaa !39, !noalias !420
  %i.ca = fdiv double %i.bz, %i.af
  %i.cb = fdiv double %i.ca, %i.ah
  %i.cc = fmul double %i.aj, %i.cb
  %i.cd = load double, ptr %i.bx, align 8, !tbaa !39, !noalias !420
  %i.ce = fadd double %i.cd, %i.cc
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 24
  store <2 x double> %i.bk, ptr %i.cf, align 8, !tbaa !58, !noalias !420
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %3, ptr %i.ch, align 8, !tbaa !292, !noalias !420
  %i.ci = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ck = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.43.88.vec.insert = insertelement <2 x double> poison, double %i.an, i64 0
  %i.cl = shufflevector <2 x double> %.sroa.43.88.vec.insert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cn = insertelement <2 x double> poison, double %i.i, i64 0
  %i.co = insertelement <2 x double> %i.cn, double %i.g, i64 1
  %i.cp = fdiv <2 x double> splat (double f0x3FA45F306DC9C883), %i.co ; 3 uses
  %i.cq = shufflevector <2 x double> %i.cp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cr = fmul <2 x double> %i.cq, %i.bk          ; 3 uses
  %i.cs = fsub double %i.bw, %i.ce                ; 4 uses
  %i.ct = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.cs, i64 0
  %i.cu = fmul <2 x double> %i.cp, %i.ct
  %i.cv = shufflevector <2 x double> %i.cu, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store double %i.cs, ptr %i.cg, align 8, !tbaa !39, !noalias !420
  %i.cw = fmul <2 x double> %i.cr, %i.ci
  %i.cx = load <2 x double>, ptr %i.cj, align 8, !noalias !420 ; 2 uses
  %i.cy = shufflevector <2 x double> %i.cx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cz = fmul <2 x double> %i.cr, %i.cy
  %.cast = bitcast double %i.cs to <1 x double>
  %i.da = shufflevector <1 x double> %.cast, <1 x double> poison, <2 x i32> zeroinitializer
  %i.db = fmul <2 x double> %i.cr, %i.da
  %i.dc = shufflevector <2 x double> %i.cx, <2 x double> %i.bk, <4 x i32> <i32 0, i32 poison, i32 2, i32 poison>
  %i.dd = insertelement <4 x double> %i.dc, double 1.000000e+00, i64 3
  %i.de = insertelement <4 x double> %i.dd, double %i.cs, i64 1
  %i.df = fmul <4 x double> %i.cv, %i.de
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21, !noalias !420
  %4 = load <3 x double>, ptr %i.k, align 8, !tbaa !39, !noalias !420 ; 4 uses
  %5 = shufflevector <3 x double> %4, <3 x double> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 2>
  %6 = load double, ptr %i.ck, align 8, !tbaa !39, !noalias !420
  %i.dg = shufflevector <3 x double> %4, <3 x double> poison, <2 x i32> zeroinitializer
  %i.dh = fmul <2 x double> %i.cw, %i.dg
  %i.di = shufflevector <3 x double> %4, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dj = fmul <2 x double> %i.cz, %i.di
  %i.dk = fadd <2 x double> %i.dh, %i.dj
  %7 = shufflevector <3 x double> %4, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %8 = fmul <2 x double> %i.db, %7
  %9 = fadd <2 x double> %i.dk, %8
  %i.dl = fmul <4 x double> %i.df, %5             ; 4 uses
  %i.dm = extractelement <4 x double> %i.dl, i64 0
  %i.dn = extractelement <4 x double> %i.dl, i64 1
  %i.do = fadd double %i.dm, %i.dn
  %i.dp = extractelement <4 x double> %i.dl, i64 2
  %i.dq = fadd double %i.dp, %i.do
  %i.dr = shufflevector <2 x double> %i.cp, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %10 = load <2 x double>, ptr %i.k, align 8, !tbaa !58, !noalias !420 ; 2 uses
  %i.ds = fmul <2 x double> %i.dr, %10
  %i.dt = fadd <2 x double> %i.ds, %9
  %i.du = fmul <2 x double> %i.cl, %10
  %i.dv = fadd <2 x double> %i.du, %i.dt
  store <2 x double> %i.dv, ptr %0, align 8, !tbaa !58, !alias.scope !420
  %i.dw = extractelement <4 x double> %i.dl, i64 3
  %i.dx = fadd double %i.dw, %i.dq
  %i.dy = fmul double %i.an, %6
  %i.dz = fadd double %i.dy, %i.dx
  store double %i.dz, ptr %i.cm, align 8, !tbaa !39, !alias.scope !420
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEERKdEZN3igl19kelvinlet_evaluatorINS0_13CwiseBinaryOpINS0_8internal13scalar_sum_opIddEEKNS8_ISB_KS2_KNS8_INS9_17scalar_product_opIddEEKNS8_ISE_KNS0_14CwiseNullaryOpINS9_18scalar_constant_opIdEESC_EESC_EESJ_EEEESN_EES2_S2_NS1_IdLi3ELi3ELi0ELi3ELi3EEEdEENS1_IT3_Li3ELi1ELi0ELi3ELi1EEESS_RKNS0_10MatrixBaseIT_EERKNSU_IT0_EERKNSU_IT1_EERKNSU_IT2_EERKNS6_15KelvinletParamsISS_EEEUlS4_E_E10_M_managerERSt9_Any_dataRKS1H_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN3igl19kelvinlet_evaluatorIN5Eigen13CwiseBinaryOpINS3_8internal13scalar_sum_opIddEEKNS4_IS7_KNS3_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEKNS4_INS5_17scalar_product_opIddEEKNS4_ISC_KNS3_14CwiseNullaryOpINS5_18scalar_constant_opIdEESA_EESA_EESH_EEEESL_EES9_S9_NS8_IdLi3ELi3ELi0ELi3ELi3EEEdEENS8_IT3_Li3ELi1ELi0ELi3ELi1EEESQ_RKNS3_10MatrixBaseIT_EERKNSS_IT0_EERKNSS_IT1_EERKNSS_IT2_EERKNS1_15KelvinletParamsISQ_EEEUlRKdE_E10_M_managerERSt9_Any_dataRKS1H_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN3igl19kelvinlet_evaluatorIN5Eigen13CwiseBinaryOpINS1_8internal13scalar_sum_opIddEEKNS2_IS5_KNS1_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEKNS2_INS3_17scalar_product_opIddEEKNS2_ISA_KNS1_14CwiseNullaryOpINS3_18scalar_constant_opIdEES8_EES8_EESF_EEEESJ_EES7_S7_NS6_IdLi3ELi3ELi0ELi3ELi3EEEdEENS6_IT3_Li3ELi1ELi0ELi3ELi1EEESO_RKNS1_10MatrixBaseIT_EERKNSQ_IT0_EERKNSQ_IT1_EERKNSQ_IT2_EERKNS_15KelvinletParamsISO_EEEUlRKdE_, ptr %0, align 8, !tbaa !294
  br label %_ZNSt14_Function_base13_Base_managerIZN3igl19kelvinlet_evaluatorIN5Eigen13CwiseBinaryOpINS3_8internal13scalar_sum_opIddEEKNS4_IS7_KNS3_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEKNS4_INS5_17scalar_product_opIddEEKNS4_ISC_KNS3_14CwiseNullaryOpINS5_18scalar_constant_opIdEESA_EESA_EESH_EEEESL_EES9_S9_NS8_IdLi3ELi3ELi0ELi3ELi3EEEdEENS8_IT3_Li3ELi1ELi0ELi3ELi1EEESQ_RKNS3_10MatrixBaseIT_EERKNSS_IT0_EERKNSS_IT1_EERKNSS_IT2_EERKNS1_15KelvinletParamsISQ_EEEUlRKdE_E10_M_managerERSt9_Any_dataRKS1H_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !27
  store ptr %i.a, ptr %0, align 8, !tbaa !27
  br label %_ZNSt14_Function_base13_Base_managerIZN3igl19kelvinlet_evaluatorIN5Eigen13CwiseBinaryOpINS3_8internal13scalar_sum_opIddEEKNS4_IS7_KNS3_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEKNS4_INS5_17scalar_product_opIddEEKNS4_ISC_KNS3_14CwiseNullaryOpINS5_18scalar_constant_opIdEESA_EESA_EESH_EEEESL_EES9_S9_NS8_IdLi3ELi3ELi0ELi3ELi3EEEdEENS8_IT3_Li3ELi1ELi0ELi3ELi1EEESQ_RKNS3_10MatrixBaseIT_EERKNSS_IT0_EERKNSS_IT1_EERKNSS_IT2_EERKNS1_15KelvinletParamsISQ_EEEUlRKdE_E10_M_managerERSt9_Any_dataRKS1H_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !27
  %i.c = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !tbaa.struct !435
  store ptr %i.c, ptr %0, align 8, !tbaa !27
  br label %_ZNSt14_Function_base13_Base_managerIZN3igl19kelvinlet_evaluatorIN5Eigen13CwiseBinaryOpINS3_8internal13scalar_sum_opIddEEKNS4_IS7_KNS3_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEKNS4_INS5_17scalar_product_opIddEEKNS4_ISC_KNS3_14CwiseNullaryOpINS5_18scalar_constant_opIdEESA_EESA_EESH_EEEESL_EES9_S9_NS8_IdLi3ELi3ELi0ELi3ELi3EEEdEENS8_IT3_Li3ELi1ELi0ELi3ELi1EEESQ_RKNS3_10MatrixBaseIT_EERKNSS_IT0_EERKNSS_IT1_EERKNSS_IT2_EERKNS1_15KelvinletParamsISQ_EEEUlRKdE_E10_M_managerERSt9_Any_dataRKS1H_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerIZN3igl19kelvinlet_evaluatorIN5Eigen13CwiseBinaryOpINS3_8internal13scalar_sum_opIddEEKNS4_IS7_KNS3_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEKNS4_INS5_17scalar_product_opIddEEKNS4_ISC_KNS3_14CwiseNullaryOpINS5_18scalar_constant_opIdEESA_EESA_EESH_EEEESL_EES9_S9_NS8_IdLi3ELi3ELi0ELi3ELi3EEEdEENS8_IT3_Li3ELi1ELi0ELi3ELi1EEESQ_RKNS3_10MatrixBaseIT_EERKNSS_IT0_EERKNSS_IT1_EERKNSS_IT2_EERKNS1_15KelvinletParamsISQ_EEEUlRKdE_E10_M_managerERSt9_Any_dataRKS1H_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 24) #26
  br label %_ZNSt14_Function_base13_Base_managerIZN3igl19kelvinlet_evaluatorIN5Eigen13CwiseBinaryOpINS3_8internal13scalar_sum_opIddEEKNS4_IS7_KNS3_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEKNS4_INS5_17scalar_product_opIddEEKNS4_ISC_KNS3_14CwiseNullaryOpINS5_18scalar_constant_opIdEESA_EESA_EESH_EEEESL_EES9_S9_NS8_IdLi3ELi3ELi0ELi3ELi3EEEdEENS8_IT3_Li3ELi1ELi0ELi3ELi1EEESQ_RKNS3_10MatrixBaseIT_EERKNSS_IT0_EERKNSS_IT1_EERKNSS_IT2_EERKNS1_15KelvinletParamsISQ_EEEUlRKdE_E10_M_managerERSt9_Any_dataRKS1H_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN3igl19kelvinlet_evaluatorIN5Eigen13CwiseBinaryOpINS3_8internal13scalar_sum_opIddEEKNS4_IS7_KNS3_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEKNS4_INS5_17scalar_product_opIddEEKNS4_ISC_KNS3_14CwiseNullaryOpINS5_18scalar_constant_opIdEESA_EESA_EESH_EEEESL_EES9_S9_NS8_IdLi3ELi3ELi0ELi3ELi3EEEdEENS8_IT3_Li3ELi1ELi0ELi3ELi1EEESQ_RKNS3_10MatrixBaseIT_EERKNSS_IT0_EERKNSS_IT1_EERKNSS_IT2_EERKNS1_15KelvinletParamsISQ_EEEUlRKdE_E10_M_managerERSt9_Any_dataRKS1H_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt17_Function_handlerIFN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEERKdEZN3igl19kelvinlet_evaluatorINS0_13CwiseBinaryOpINS0_8internal13scalar_sum_opIddEEKNS8_ISB_KS2_KNS8_INS9_17scalar_product_opIddEEKNS8_ISE_KNS0_14CwiseNullaryOpINS9_18scalar_constant_opIdEESC_EESC_EESJ_EEEESN_EES2_S2_NS1_IdLi3ELi3ELi0ELi3ELi3EEEdEENS1_IT3_Li3ELi1ELi0ELi3ELi1EEESS_RKNS0_10MatrixBaseIT_EERKNSU_IT0_EERKNSU_IT1_EERKNSU_IT2_EERKNS6_15KelvinletParamsISS_EEEUlS4_E0_E9_M_invokeERKSt9_Any_dataS4_(ptr dead_on_unwind noalias writable sret(%"class.Eigen::Matrix.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0 = alloca [24 x i8], align 16 ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !27     ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !436)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !439, !noalias !441, !nonnull !32, !align !33
  %i.d = load double, ptr %i.c, align 8, !tbaa !39, !noalias !441
  %i.e = load double, ptr %2, align 8, !tbaa !39, !noalias !441 ; 4 uses
  %i.f = tail call double @llvm.fmuladd.f64(double %i.e, double %i.e, double %i.d)
  %i.g = tail call double @sqrt(double noundef %i.f) #21, !noalias !441 ; 5 uses
  %i.h = fmul double %i.g, %i.g
  %i.i = fmul double %i.g, %i.h                   ; 2 uses
  %i.j = fdiv double 1.000000e+00, %i.i
  %i.k = fmul double %i.e, 3.000000e+00
  %i.l = fmul double %i.e, %i.k
  %i.m = fmul double %i.i, 2.000000e+00
  %i.n = fmul double %i.g, %i.m
  %i.o = fmul double %i.g, %i.n
  %i.p = fdiv double %i.l, %i.o
  %i.q = fadd double %i.j, %i.p
  %i.r = fmul double %i.q, f0xBFB45F306DC9C883    ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !446, !noalias !441, !nonnull !32 ; 6 uses
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !447, !noalias !441, !nonnull !32, !align !33 ; 12 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !158, !noalias !448, !nonnull !32, !align !33 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.y = load double, ptr %i.x, align 8, !tbaa !50, !noalias !448 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !167, !noalias !448, !nonnull !32, !align !33 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !50, !noalias !448 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 128
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !50, !noalias !448 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 136
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !167, !noalias !448, !nonnull !32, !align !33 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 160
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !50, !noalias !448 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 184
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !290, !noalias !448, !nonnull !32, !align !33 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 208
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !291, !noalias !448, !nonnull !32, !align !33 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 224
  %i.ao = load double, ptr %i.an, align 8, !tbaa !50, !noalias !448 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.u, i64 248
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !50, !noalias !448 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.u, i64 272
  %i.as = load double, ptr %i.ar, align 8, !tbaa !50, !noalias !448 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0)
  %.sroa.615.48.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.y, i64 0
  %.sroa.12.72.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.ac, i64 0
  %.sroa.1521.104.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.ae, i64 0
  %.sroa.21.128.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.ai, i64 0
  %.sroa.30.192.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.ao, i64 0
  %.sroa.33.208.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.aq, i64 0
  %.sroa.36.224.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.as, i64 0
  %i.at = load <2 x double>, ptr %i.w, align 8, !tbaa !58, !noalias !436
  %i.au = shufflevector <2 x double> %.sroa.615.48.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.av = load <2 x double>, ptr %i.aa, align 8, !tbaa !58, !noalias !436
  %i.aw = fmul <2 x double> %i.au, %i.av
  %i.ax = shufflevector <2 x double> %.sroa.12.72.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ay = fmul <2 x double> %i.ax, %i.aw
  %i.az = fadd <2 x double> %i.at, %i.ay
  %i.ba = shufflevector <2 x double> %.sroa.1521.104.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bb = load <2 x double>, ptr %i.ag, align 8, !tbaa !58, !noalias !436
  %i.bc = fmul <2 x double> %i.ba, %i.bb
  %i.bd = shufflevector <2 x double> %.sroa.21.128.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.be = fmul <2 x double> %i.bd, %i.bc
  %i.bf = fadd <2 x double> %i.az, %i.be
  %i.bg = load <2 x double>, ptr %i.ak, align 8, !tbaa !58, !noalias !436
  %i.bh = load <2 x double>, ptr %i.am, align 8, !tbaa !58, !noalias !436
  %i.bi = shufflevector <2 x double> %.sroa.30.192.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bj = fdiv <2 x double> %i.bh, %i.bi
  %i.bk = shufflevector <2 x double> %.sroa.33.208.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bl = fdiv <2 x double> %i.bj, %i.bk
  %i.bm = shufflevector <2 x double> %.sroa.36.224.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bn = fmul <2 x double> %i.bm, %i.bl
  %i.bo = fadd <2 x double> %i.bg, %i.bn
  %i.bp = fsub <2 x double> %i.bf, %i.bo          ; 3 uses
  store <2 x double> %i.bp, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0, align 16, !tbaa !58, !noalias !436
  %i.bq = getelementptr i8, ptr %i.w, i64 16
  %i.br = getelementptr i8, ptr %i.aa, i64 16
  %i.bs = load double, ptr %i.br, align 8, !tbaa !39, !noalias !436
  %i.bt = fmul double %i.y, %i.bs
  %i.bu = fmul double %i.ac, %i.bt
  %i.bv = load double, ptr %i.bq, align 8, !tbaa !39, !noalias !436
  %i.bw = fadd double %i.bv, %i.bu
  %i.bx = getelementptr i8, ptr %i.ag, i64 16
  %i.by = load double, ptr %i.bx, align 8, !tbaa !39, !noalias !436
  %i.bz = fmul double %i.ae, %i.by
  %i.ca = fmul double %i.ai, %i.bz
  %i.cb = fadd double %i.bw, %i.ca
  %i.cc = getelementptr i8, ptr %i.ak, i64 16
  %i.cd = getelementptr i8, ptr %i.am, i64 16
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !39, !noalias !436
  %i.cf = fdiv double %i.ce, %i.ao
  %i.cg = fdiv double %i.cf, %i.aq
  %i.ch = fmul double %i.as, %i.cg
  %i.ci = load double, ptr %i.cc, align 8, !tbaa !39, !noalias !436
  %i.cj = fadd double %i.ci, %i.ch
  %i.ck = fsub double %i.cb, %i.cj                ; 2 uses
  %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx6 = getelementptr inbounds nuw i8, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0, i64 16
  store double %i.ck, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx6, align 16, !tbaa !39, !noalias !436
  %.sroa.6.72.vec.insert.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.r, i64 0
  %i.cl = shufflevector <2 x double> %.sroa.6.72.vec.insert.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.cm = load <2 x double>, ptr %i.t, align 1, !tbaa !58, !noalias !436
  %i.cn = fmul <2 x double> %i.cl, %i.cm
  %i.co = extractelement <2 x double> %i.bp, i64 0
  %i.cp = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cq = fmul <2 x double> %i.cp, %i.cn
  %i.cr = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.cs = load <2 x double>, ptr %i.cr, align 1, !tbaa !58, !noalias !436
  %i.ct = fmul <2 x double> %i.cl, %i.cs
  %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx5 = getelementptr inbounds nuw i8, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0, i64 8
  %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0.8..sroa.2.i.i.i.i.i.i.i.i.i.sroa.0.8..sroa.2.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.8..sroa.2.i.i.i.i.i.8..sroa.2.i.i.i.i.8..sroa.2.i.i.i.i.8..sroa.2.i.i.i.8..sroa.2.i.i.i.8..sroa.2.i.i.8..sroa.2.i.i.8..sroa.2.i.8..sroa.2.i.8..sroa.2.8..sroa.2.8..sroa.2.48..i.i.i.i.i.i.i.i.i = load <2 x double>, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx5, align 8, !noalias !436 ; 2 uses
  %i.cu = shufflevector <2 x double> %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0.8..sroa.2.i.i.i.i.i.i.i.i.i.sroa.0.8..sroa.2.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.8..sroa.2.i.i.i.i.i.8..sroa.2.i.i.i.i.8..sroa.2.i.i.i.i.8..sroa.2.i.i.i.8..sroa.2.i.i.i.8..sroa.2.i.i.8..sroa.2.i.i.8..sroa.2.i.8..sroa.2.i.8..sroa.2.8..sroa.2.8..sroa.2.48..i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cv = fmul <2 x double> %i.ct, %i.cu
  %i.cw = fadd <2 x double> %i.cq, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.cy = load <2 x double>, ptr %i.cx, align 1, !tbaa !58, !noalias !436
  %i.cz = fmul <2 x double> %i.cl, %i.cy
  %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx7 = getelementptr inbounds nuw i8, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0, i64 16
  %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0.16..sroa.2.i.i.i.i.i.i.i.i.i.sroa.0.16. = load <1 x double>, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx7, align 16, !noalias !436
  %i.da = shufflevector <1 x double> %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0.16..sroa.2.i.i.i.i.i.i.i.i.i.sroa.0.16., <1 x double> poison, <2 x i32> zeroinitializer
  %i.db = fmul <2 x double> %i.cz, %i.da
  %i.dc = fadd <2 x double> %i.cw, %i.db
  store <2 x double> %i.dc, ptr %0, align 8, !tbaa !58, !alias.scope !436
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.de = getelementptr i8, ptr %i.t, i64 16
  %i.df = load double, ptr %i.de, align 8, !tbaa !39, !noalias !436
  %i.dg = fmul double %i.r, %i.df
  %i.dh = fmul double %i.co, %i.dg
  %i.di = getelementptr i8, ptr %i.t, i64 40
  %i.dj = load double, ptr %i.di, align 8, !tbaa !39, !noalias !436
  %i.dk = fmul double %i.r, %i.dj
  %i.dl = extractelement <2 x double> %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0.8..sroa.2.i.i.i.i.i.i.i.i.i.sroa.0.8..sroa.2.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.8..sroa.2.i.i.i.i.i.8..sroa.2.i.i.i.i.8..sroa.2.i.i.i.i.8..sroa.2.i.i.i.8..sroa.2.i.i.i.8..sroa.2.i.i.8..sroa.2.i.i.8..sroa.2.i.8..sroa.2.i.8..sroa.2.8..sroa.2.8..sroa.2.48..i.i.i.i.i.i.i.i.i, i64 0
  %i.dm = fmul double %i.dl, %i.dk
  %i.dn = getelementptr i8, ptr %i.t, i64 64
  %i.do = load double, ptr %i.dn, align 8, !tbaa !39, !noalias !436
  %i.dp = fmul double %i.r, %i.do
  %i.dq = fmul double %i.ck, %i.dp
  %i.dr = fadd double %i.dm, %i.dq
  %i.ds = fadd double %i.dh, %i.dr
  store double %i.ds, ptr %i.dd, align 8, !tbaa !39, !alias.scope !436
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEERKdEZN3igl19kelvinlet_evaluatorINS0_13CwiseBinaryOpINS0_8internal13scalar_sum_opIddEEKNS8_ISB_KS2_KNS8_INS9_17scalar_product_opIddEEKNS8_ISE_KNS0_14CwiseNullaryOpINS9_18scalar_constant_opIdEESC_EESC_EESJ_EEEESN_EES2_S2_NS1_IdLi3ELi3ELi0ELi3ELi3EEEdEENS1_IT3_Li3ELi1ELi0ELi3ELi1EEESS_RKNS0_10MatrixBaseIT_EERKNSU_IT0_EERKNSU_IT1_EERKNSU_IT2_EERKNS6_15KelvinletParamsISS_EEEUlS4_E0_E10_M_managerERSt9_Any_dataRKS1H_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN3igl19kelvinlet_evaluatorIN5Eigen13CwiseBinaryOpINS3_8internal13scalar_sum_opIddEEKNS4_IS7_KNS3_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEKNS4_INS5_17scalar_product_opIddEEKNS4_ISC_KNS3_14CwiseNullaryOpINS5_18scalar_constant_opIdEESA_EESA_EESH_EEEESL_EES9_S9_NS8_IdLi3ELi3ELi0ELi3ELi3EEEdEENS8_IT3_Li3ELi1ELi0ELi3ELi1EEESQ_RKNS3_10MatrixBaseIT_EERKNSS_IT0_EERKNSS_IT1_EERKNSS_IT2_EERKNS1_15KelvinletParamsISQ_EEEUlRKdE0_E10_M_managerERSt9_Any_dataRKS1H_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
end_hunk_2
begin_hunk_3_@_ZSt10__invoke_rIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEERZN3igl19kelvinlet_evaluatorINS0_13CwiseBinaryOpINS0_8internal13scalar_sum_opIddEEKNS5_IS8_KS2_KNS5_INS6_17scalar_product_opIddEEKNS5_ISB_KNS0_14CwiseNullaryOpINS6_18scalar_constant_opIdEES9_EES9_EESG_EEEESK_EES2_S2_NS1_IdLi3ELi3ELi0ELi3ELi3EEEdEENS1_IT3_Li3ELi1ELi0ELi3ELi1EEESP_RKNS0_10MatrixBaseIT_EERKNSR_IT0_EERKNSR_IT1_EERKNSR_IT2_EERKNS3_15KelvinletParamsISP_EEEUlRKdE2_JS1D_EENSt9enable_ifIX16is_invocable_r_vISS_SW_DpT1_EESS_E4typeEOSW_DpOS1H_:bb.a
  %i.ea = fmul <2 x double> %i.dt, %i.cu
  %.sroa.2.i.i.i.i.i.i.i.sroa.0.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx68 = getelementptr inbounds nuw i8, ptr %.sroa.2.i.i.i.i.i.i.i.sroa.0, i64 16
  %.sroa.2.i.i.i.i.i.i.i.sroa.0.16..sroa.2.i.i.i.i.i.i.i.sroa.0.16. = load <1 x double>, ptr %.sroa.2.i.i.i.i.i.i.i.sroa.0.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx68, align 16
  %i.eb = shufflevector <1 x double> %.sroa.2.i.i.i.i.i.i.i.sroa.0.16..sroa.2.i.i.i.i.i.i.i.sroa.0.16., <1 x double> poison, <2 x i32> zeroinitializer
  %i.ec = fmul <2 x double> %i.ea, %i.eb
  %i.ed = fadd <2 x double> %i.dz, %i.ec
  %i.ee = fmul double %i.ar, %i.cz
  %i.ef = fmul double %i.cl, %i.ee
  %i.eg = fmul double %i.ar, %i.dc
  %i.eh = extractelement <2 x double> %.sroa.2.i.i.i.i.i.i.i.sroa.0.8..sroa.2.i.i.i.i.i.i.i.sroa.0.8..sroa.2.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.8..sroa.2.i.i.i.i.i.8..sroa.2.i.i.i.i.8..sroa.2.i.i.i.i.8..sroa.2.i.i.i.8..sroa.2.i.i.i.8..sroa.2.i.i.8..sroa.2.i.i.8..sroa.2.i.8..sroa.2.i.8..sroa.2.8..sroa.2.8..sroa.2.48..i.i.i.i.i.i.i, i64 0
  %i.ei = fmul double %i.eh, %i.eg
  %i.ej = fmul double %i.ar, %i.dg
  %i.ek = fmul double %i.cj, %i.ej
  %i.el = fadd double %i.ei, %i.ek
  %i.em = fadd double %i.ef, %i.el
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.i.i.i.i.i.i.i.sroa.0)
  %.sroa.651.80.vec.insert = insertelement <2 x double> poison, double %i.do, i64 0
  %.sroa.853.144.vec.insert = insertelement <2 x double> poison, double %i.q, i64 0
  %.sroa.1055.168.vec.insert = insertelement <2 x double> poison, double %i.u, i64 0
  %.sroa.1257.200.vec.insert = insertelement <2 x double> poison, double %i.w, i64 0
  %.sroa.1459.224.vec.insert = insertelement <2 x double> poison, double %i.aa, i64 0
  %.sroa.1661.288.vec.insert = insertelement <2 x double> poison, double %i.ag, i64 0
  %.sroa.18.304.vec.insert = insertelement <2 x double> poison, double %i.ai, i64 0
  %.sroa.20.320.vec.insert = insertelement <2 x double> poison, double %i.ak, i64 0
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i2.sroa.0)
  %i.en = load <2 x double>, ptr %i.o, align 8, !tbaa !58 ; 2 uses
  %i.eo = load <2 x double>, ptr %i.s, align 8, !tbaa !58 ; 2 uses
  %i.ep = fmul <2 x double> %i.at, %i.eo
  %i.eq = fmul <2 x double> %i.aw, %i.ep
  %i.er = fadd <2 x double> %i.en, %i.eq
  %i.es = load <2 x double>, ptr %i.y, align 8, !tbaa !58 ; 2 uses
  %i.et = fmul <2 x double> %i.az, %i.es
  %i.eu = fmul <2 x double> %i.bc, %i.et
  %i.ev = fadd <2 x double> %i.er, %i.eu
  %i.ew = load <2 x double>, ptr %i.ac, align 8, !tbaa !58 ; 2 uses
  %i.ex = load <2 x double>, ptr %i.ae, align 8, !tbaa !58 ; 2 uses
  %i.ey = fdiv <2 x double> %i.ex, %i.bh
  %i.ez = fdiv <2 x double> %i.ey, %i.bj
  %i.fa = fmul <2 x double> %i.bl, %i.ez
  %i.fb = fadd <2 x double> %i.ew, %i.fa
  %i.fc = fsub <2 x double> %i.ev, %i.fb          ; 3 uses
  store <2 x double> %i.fc, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i2.sroa.0, align 16, !tbaa !58
  %i.fd = load double, ptr %i.bq, align 8, !tbaa !39 ; 2 uses
  %i.fe = fmul double %i.q, %i.fd
  %i.ff = fmul double %i.u, %i.fe
  %i.fg = load double, ptr %i.bp, align 8, !tbaa !39 ; 2 uses
  %i.fh = fadd double %i.fg, %i.ff
  %i.fi = load double, ptr %i.bw, align 8, !tbaa !39 ; 2 uses
  %i.fj = fmul double %i.w, %i.fi
  %i.fk = fmul double %i.aa, %i.fj
  %i.fl = fadd double %i.fh, %i.fk
  %i.fm = load double, ptr %i.cc, align 8, !tbaa !39 ; 2 uses
  %i.fn = fdiv double %i.fm, %i.ag
  %i.fo = fdiv double %i.fn, %i.ai
  %i.fp = fmul double %i.ak, %i.fo
  %i.fq = load double, ptr %i.cb, align 8, !tbaa !39 ; 2 uses
  %i.fr = fadd double %i.fq, %i.fp
  %i.fs = fsub double %i.fl, %i.fr                ; 2 uses
  %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i2.sroa.0.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i2.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i2.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx71 = getelementptr inbounds nuw i8, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i2.sroa.0, i64 16
  store double %i.fs, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i2.sroa.0.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i2.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i2.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx71, align 16, !tbaa !39
  %.sroa.6.72.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.ds, i64 0
  %i.ft = shufflevector <2 x double> %.sroa.6.72.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.fu = load <2 x double>, ptr %i.l, align 8, !tbaa !58
  %i.fv = fmul <2 x double> %i.ft, %i.fu
  %i.fw = extractelement <2 x double> %i.fc, i64 0
  %i.fx = shufflevector <2 x double> %i.fc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fy = fmul <2 x double> %i.fx, %i.fv
  %i.fz = load <2 x double>, ptr %i.co, align 8, !tbaa !58
  %i.ga = fmul <2 x double> %i.ft, %i.fz
  %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i2.sroa.0.8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i2.8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i2.8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx70 = getelementptr inbounds nuw i8, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i2.sroa.0, i64 8
  %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i2.sroa.0.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i2.sroa.0.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i2.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i2.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.8..sroa.2.i.i.i.i.i.8..sroa.2.i.i.i.i.8..sroa.2.i.i.i.i.8..sroa.2.i.i.i.8..sroa.2.i.i.i.8..sroa.2.i.i.8..sroa.2.i.i.8..sroa.2.i.8..sroa.2.i.8..sroa.2.8..sroa.2.8..sroa.2.48..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load <2 x double>, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i2.sroa.0.8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i2.8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i2.8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx70, align 8 ; 2 uses
  %i.gb = shufflevector <2 x double> %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i2.sroa.0.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i2.sroa.0.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i2.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i2.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.8..sroa.2.i.i.i.i.i.8..sroa.2.i.i.i.i.8..sroa.2.i.i.i.i.8..sroa.2.i.i.i.8..sroa.2.i.i.i.8..sroa.2.i.i.8..sroa.2.i.i.8..sroa.2.i.8..sroa.2.i.8..sroa.2.8..sroa.2.8..sroa.2.48..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gc = fmul <2 x double> %i.ga, %i.gb
  %i.gd = fadd <2 x double> %i.fy, %i.gc
  %i.ge = load <2 x double>, ptr %i.ct, align 8, !tbaa !58
  %i.gf = fmul <2 x double> %i.ft, %i.ge
  %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i2.sroa.0.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i2.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i2.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx72 = getelementptr inbounds nuw i8, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i2.sroa.0, i64 16
  %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i2.sroa.0.16..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i2.sroa.0.16. = load <1 x double>, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i2.sroa.0.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i2.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i2.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx72, align 16
  %i.gg = shufflevector <1 x double> %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i2.sroa.0.16..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i2.sroa.0.16., <1 x double> poison, <2 x i32> zeroinitializer
  %i.gh = fmul <2 x double> %i.gf, %i.gg
  %i.gi = fadd <2 x double> %i.gd, %i.gh
  %i.gj = load double, ptr %i.cy, align 8, !tbaa !39
  %i.gk = fmul double %i.ds, %i.gj
  %i.gl = fmul double %i.fw, %i.gk
  %i.gm = load double, ptr %i.db, align 8, !tbaa !39
  %i.gn = fmul double %i.ds, %i.gm
  %i.go = extractelement <2 x double> %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i2.sroa.0.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i2.sroa.0.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i2.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i2.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.8..sroa.2.i.i.i.i.i.8..sroa.2.i.i.i.i.8..sroa.2.i.i.i.i.8..sroa.2.i.i.i.8..sroa.2.i.i.i.8..sroa.2.i.i.8..sroa.2.i.i.8..sroa.2.i.8..sroa.2.i.8..sroa.2.8..sroa.2.8..sroa.2.48..i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 0
  %i.gp = fmul double %i.go, %i.gn
  %i.gq = load double, ptr %i.df, align 8, !tbaa !39
  %i.gr = fmul double %i.ds, %i.gq
  %i.gs = fmul double %i.fs, %i.gr
  %i.gt = fadd double %i.gp, %i.gs
  %i.gu = fadd double %i.gl, %i.gt
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i2.sroa.0)
  %i.gv = shufflevector <2 x double> %i.aq, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.gw = shufflevector <2 x double> %.sroa.651.80.vec.insert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gx = shufflevector <2 x double> %.sroa.853.144.vec.insert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gy = fmul <2 x double> %i.gx, %i.eo
  %i.gz = shufflevector <2 x double> %.sroa.1055.168.vec.insert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ha = fmul <2 x double> %i.gy, %i.gz
  %i.hb = fadd <2 x double> %i.en, %i.ha
  %i.hc = shufflevector <2 x double> %.sroa.1257.200.vec.insert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hd = fmul <2 x double> %i.hc, %i.es
  %i.he = shufflevector <2 x double> %.sroa.1459.224.vec.insert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hf = fmul <2 x double> %i.hd, %i.he
  %i.hg = fadd <2 x double> %i.hb, %i.hf
  %i.hh = shufflevector <2 x double> %.sroa.1661.288.vec.insert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hi = fdiv <2 x double> %i.ex, %i.hh
  %i.hj = shufflevector <2 x double> %.sroa.18.304.vec.insert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hk = fdiv <2 x double> %i.hi, %i.hj
  %i.hl = shufflevector <2 x double> %.sroa.20.320.vec.insert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hm = fmul <2 x double> %i.hk, %i.hl
  %i.hn = fadd <2 x double> %i.ew, %i.hm
  %i.ho = fsub <2 x double> %i.hg, %i.hn
  %i.hp = fmul <2 x double> %i.gw, %i.ho
  %i.hq = fadd <2 x double> %i.gi, %i.hp
  %i.hr = fmul <2 x double> %i.gv, %i.hq
  %i.hs = fsub <2 x double> %i.ed, %i.hr
  store <2 x double> %i.hs, ptr %0, align 8, !tbaa !58
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hu = extractelement <2 x double> %i.aq, i64 1
  %i.hv = fmul double %i.q, %i.fd
  %i.hw = fmul double %i.u, %i.hv
  %i.hx = fadd double %i.fg, %i.hw
  %i.hy = fmul double %i.w, %i.fi
  %i.hz = fmul double %i.aa, %i.hy
  %i.ia = fadd double %i.hx, %i.hz
  %i.ib = fdiv double %i.fm, %i.ag
  %i.ic = fdiv double %i.ib, %i.ai
  %i.id = fmul double %i.ak, %i.ic
  %i.ie = fadd double %i.fq, %i.id
  %i.if = fsub double %i.ia, %i.ie
  %i.ig = fmul double %i.do, %i.if
  %i.ih = fadd double %i.gu, %i.ig
  %i.ii = fmul double %i.hu, %i.ih
  %i.ij = fsub double %i.em, %i.ii
  store double %i.ij, ptr %i.ht, align 8, !tbaa !39
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt17_Function_handlerIFN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEERKdEZN3igl19kelvinlet_evaluatorINS0_13CwiseBinaryOpINS0_8internal13scalar_sum_opIddEEKNS8_ISB_KNS8_ISB_KS2_KNS8_INS9_17scalar_product_opIddEEKNS8_ISE_KNS0_14CwiseNullaryOpINS9_18scalar_constant_opIdEESC_EESC_EESJ_EEEESN_EESN_EES2_S2_NS1_IdLi3ELi3ELi0ELi3ELi3EEEdEENS1_IT3_Li3ELi1ELi0ELi3ELi1EEESU_RKNS0_10MatrixBaseIT_EERKNSW_IT0_EERKNSW_IT1_EERKNSW_IT2_EERKNS6_15KelvinletParamsISU_EEEUlS4_E_E9_M_invokeERKSt9_Any_dataS4_(ptr dead_on_unwind noalias writable sret(%"class.Eigen::Matrix.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !27
  tail call void @_ZSt10__invoke_rIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEERZN3igl19kelvinlet_evaluatorINS0_13CwiseBinaryOpINS0_8internal13scalar_sum_opIddEEKNS5_IS8_KNS5_IS8_KS2_KNS5_INS6_17scalar_product_opIddEEKNS5_ISB_KNS0_14CwiseNullaryOpINS6_18scalar_constant_opIdEES9_EES9_EESG_EEEESK_EESK_EES2_S2_NS1_IdLi3ELi3ELi0ELi3ELi3EEEdEENS1_IT3_Li3ELi1ELi0ELi3ELi1EEESR_RKNS0_10MatrixBaseIT_EERKNST_IT0_EERKNST_IT1_EERKNST_IT2_EERKNS3_15KelvinletParamsISR_EEEUlRKdE_JS1F_EENSt9enable_ifIX16is_invocable_r_vISU_SY_DpT1_EESU_E4typeEOSY_DpOS1J_(ptr dead_on_unwind writable sret(%"class.Eigen::Matrix.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEERKdEZN3igl19kelvinlet_evaluatorINS0_13CwiseBinaryOpINS0_8internal13scalar_sum_opIddEEKNS8_ISB_KNS8_ISB_KS2_KNS8_INS9_17scalar_product_opIddEEKNS8_ISE_KNS0_14CwiseNullaryOpINS9_18scalar_constant_opIdEESC_EESC_EESJ_EEEESN_EESN_EES2_S2_NS1_IdLi3ELi3ELi0ELi3ELi3EEEdEENS1_IT3_Li3ELi1ELi0ELi3ELi1EEESU_RKNS0_10MatrixBaseIT_EERKNSW_IT0_EERKNSW_IT1_EERKNSW_IT2_EERKNS6_15KelvinletParamsISU_EEEUlS4_E_E10_M_managerERSt9_Any_dataRKS1J_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN3igl19kelvinlet_evaluatorIN5Eigen13CwiseBinaryOpINS3_8internal13scalar_sum_opIddEEKNS4_IS7_KNS4_IS7_KNS3_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEKNS4_INS5_17scalar_product_opIddEEKNS4_ISC_KNS3_14CwiseNullaryOpINS5_18scalar_constant_opIdEESA_EESA_EESH_EEEESL_EESL_EES9_S9_NS8_IdLi3ELi3ELi0ELi3ELi3EEEdEENS8_IT3_Li3ELi1ELi0ELi3ELi1EEESS_RKNS3_10MatrixBaseIT_EERKNSU_IT0_EERKNSU_IT1_EERKNSU_IT2_EERKNS1_15KelvinletParamsISS_EEEUlRKdE_E10_M_managerERSt9_Any_dataRKS1J_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN3igl19kelvinlet_evaluatorIN5Eigen13CwiseBinaryOpINS1_8internal13scalar_sum_opIddEEKNS2_IS5_KNS2_IS5_KNS1_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEKNS2_INS3_17scalar_product_opIddEEKNS2_ISA_KNS1_14CwiseNullaryOpINS3_18scalar_constant_opIdEES8_EES8_EESF_EEEESJ_EESJ_EES7_S7_NS6_IdLi3ELi3ELi0ELi3ELi3EEEdEENS6_IT3_Li3ELi1ELi0ELi3ELi1EEESQ_RKNS1_10MatrixBaseIT_EERKNSS_IT0_EERKNSS_IT1_EERKNSS_IT2_EERKNS_15KelvinletParamsISQ_EEEUlRKdE_, ptr %0, align 8, !tbaa !294
  br label %_ZNSt14_Function_base13_Base_managerIZN3igl19kelvinlet_evaluatorIN5Eigen13CwiseBinaryOpINS3_8internal13scalar_sum_opIddEEKNS4_IS7_KNS4_IS7_KNS3_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEKNS4_INS5_17scalar_product_opIddEEKNS4_ISC_KNS3_14CwiseNullaryOpINS5_18scalar_constant_opIdEESA_EESA_EESH_EEEESL_EESL_EES9_S9_NS8_IdLi3ELi3ELi0ELi3ELi3EEEdEENS8_IT3_Li3ELi1ELi0ELi3ELi1EEESS_RKNS3_10MatrixBaseIT_EERKNSU_IT0_EERKNSU_IT1_EERKNSU_IT2_EERKNS1_15KelvinletParamsISS_EEEUlRKdE_E10_M_managerERSt9_Any_dataRKS1J_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !27
  store ptr %i.a, ptr %0, align 8, !tbaa !27
  br label %_ZNSt14_Function_base13_Base_managerIZN3igl19kelvinlet_evaluatorIN5Eigen13CwiseBinaryOpINS3_8internal13scalar_sum_opIddEEKNS4_IS7_KNS4_IS7_KNS3_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEKNS4_INS5_17scalar_product_opIddEEKNS4_ISC_KNS3_14CwiseNullaryOpINS5_18scalar_constant_opIdEESA_EESA_EESH_EEEESL_EESL_EES9_S9_NS8_IdLi3ELi3ELi0ELi3ELi3EEEdEENS8_IT3_Li3ELi1ELi0ELi3ELi1EEESS_RKNS3_10MatrixBaseIT_EERKNSU_IT0_EERKNSU_IT1_EERKNSU_IT2_EERKNS1_15KelvinletParamsISS_EEEUlRKdE_E10_M_managerERSt9_Any_dataRKS1J_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !27
  %i.c = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !tbaa.struct !481
  store ptr %i.c, ptr %0, align 8, !tbaa !27
  br label %_ZNSt14_Function_base13_Base_managerIZN3igl19kelvinlet_evaluatorIN5Eigen13CwiseBinaryOpINS3_8internal13scalar_sum_opIddEEKNS4_IS7_KNS4_IS7_KNS3_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEKNS4_INS5_17scalar_product_opIddEEKNS4_ISC_KNS3_14CwiseNullaryOpINS5_18scalar_constant_opIdEESA_EESA_EESH_EEEESL_EESL_EES9_S9_NS8_IdLi3ELi3ELi0ELi3ELi3EEEdEENS8_IT3_Li3ELi1ELi0ELi3ELi1EEESS_RKNS3_10MatrixBaseIT_EERKNSU_IT0_EERKNSU_IT1_EERKNSU_IT2_EERKNS1_15KelvinletParamsISS_EEEUlRKdE_E10_M_managerERSt9_Any_dataRKS1J_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerIZN3igl19kelvinlet_evaluatorIN5Eigen13CwiseBinaryOpINS3_8internal13scalar_sum_opIddEEKNS4_IS7_KNS4_IS7_KNS3_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEKNS4_INS5_17scalar_product_opIddEEKNS4_ISC_KNS3_14CwiseNullaryOpINS5_18scalar_constant_opIdEESA_EESA_EESH_EEEESL_EESL_EES9_S9_NS8_IdLi3ELi3ELi0ELi3ELi3EEEdEENS8_IT3_Li3ELi1ELi0ELi3ELi1EEESS_RKNS3_10MatrixBaseIT_EERKNSU_IT0_EERKNSU_IT1_EERKNSU_IT2_EERKNS1_15KelvinletParamsISS_EEEUlRKdE_E10_M_managerERSt9_Any_dataRKS1J_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 24) #26
  br label %_ZNSt14_Function_base13_Base_managerIZN3igl19kelvinlet_evaluatorIN5Eigen13CwiseBinaryOpINS3_8internal13scalar_sum_opIddEEKNS4_IS7_KNS4_IS7_KNS3_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEKNS4_INS5_17scalar_product_opIddEEKNS4_ISC_KNS3_14CwiseNullaryOpINS5_18scalar_constant_opIdEESA_EESA_EESH_EEEESL_EESL_EES9_S9_NS8_IdLi3ELi3ELi0ELi3ELi3EEEdEENS8_IT3_Li3ELi1ELi0ELi3ELi1EEESS_RKNS3_10MatrixBaseIT_EERKNSU_IT0_EERKNSU_IT1_EERKNSU_IT2_EERKNS1_15KelvinletParamsISS_EEEUlRKdE_E10_M_managerERSt9_Any_dataRKS1J_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN3igl19kelvinlet_evaluatorIN5Eigen13CwiseBinaryOpINS3_8internal13scalar_sum_opIddEEKNS4_IS7_KNS4_IS7_KNS3_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEKNS4_INS5_17scalar_product_opIddEEKNS4_ISC_KNS3_14CwiseNullaryOpINS5_18scalar_constant_opIdEESA_EESA_EESH_EEEESL_EESL_EES9_S9_NS8_IdLi3ELi3ELi0ELi3ELi3EEEdEENS8_IT3_Li3ELi1ELi0ELi3ELi1EEESS_RKNS3_10MatrixBaseIT_EERKNSU_IT0_EERKNSU_IT1_EERKNSU_IT2_EERKNS1_15KelvinletParamsISS_EEEUlRKdE_E10_M_managerERSt9_Any_dataRKS1J_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt10__invoke_rIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEERZN3igl19kelvinlet_evaluatorINS0_13CwiseBinaryOpINS0_8internal13scalar_sum_opIddEEKNS5_IS8_KNS5_IS8_KS2_KNS5_INS6_17scalar_product_opIddEEKNS5_ISB_KNS0_14CwiseNullaryOpINS6_18scalar_constant_opIdEES9_EES9_EESG_EEEESK_EESK_EES2_S2_NS1_IdLi3ELi3ELi0ELi3ELi3EEEdEENS1_IT3_Li3ELi1ELi0ELi3ELi1EEESR_RKNS0_10MatrixBaseIT_EERKNST_IT0_EERKNST_IT1_EERKNST_IT2_EERKNS3_15KelvinletParamsISR_EEEUlRKdE_JS1F_EENSt9enable_ifIX16is_invocable_r_vISU_SY_DpT1_EESU_E4typeEOSY_DpOS1J_(ptr dead_on_unwind noalias writable sret(%"class.Eigen::Matrix.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #13 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Eigen::internal::evaluator.1226", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !482, !noalias !484, !nonnull !32, !align !33
  %i.c = load double, ptr %i.b, align 8, !tbaa !39, !noalias !484
  %i.d = load double, ptr %2, align 8, !tbaa !39, !noalias !484 ; 4 uses
  %i.e = tail call double @llvm.fmuladd.f64(double %i.d, double %i.d, double %i.c)
  %i.f = tail call double @sqrt(double noundef %i.e) #21, !noalias !484 ; 4 uses
  %i.g = fmul double %i.f, %i.f
  %i.h = fmul double %i.f, %i.g                   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !489, !noalias !484, !nonnull !32 ; 4 uses
  %i.k = insertelement <2 x double> poison, double %i.f, i64 0
  %i.l = insertelement <2 x double> %i.k, double %i.h, i64 1
  %i.m = fdiv <2 x double> splat (double f0x3FA45F306DC9C883), %i.l ; 4 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !490, !noalias !484, !nonnull !32, !align !33 ; 15 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !158, !noalias !491, !nonnull !32, !align !33 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.r = load double, ptr %i.q, align 8, !tbaa !50, !noalias !491 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !167, !noalias !491, !nonnull !32, !align !33 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  %i.v = load double, ptr %i.u, align 8, !tbaa !50, !noalias !491 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 136
  %i.x = load double, ptr %i.w, align 8, !tbaa !50, !noalias !491 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 144
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !167, !noalias !491, !nonnull !32, !align !33 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 168
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !50, !noalias !491 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 216
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !50, !noalias !491 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 224
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !167, !noalias !491, !nonnull !32, !align !33 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.n, i64 248
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !50, !noalias !491 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 272
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !290, !noalias !491, !nonnull !32, !align !33 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 296
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !291, !noalias !491, !nonnull !32, !align !33 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.n, i64 312
  %i.an = load double, ptr %i.am, align 8, !tbaa !50, !noalias !491 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.n, i64 336
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !50, !noalias !491 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.n, i64 360
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !50, !noalias !491 ; 2 uses
  %i.as = fmul double %i.d, f0x3FB45F306DC9C883
  %i.at = fmul double %i.d, %i.as
  %i.au = fmul double %i.h, 2.000000e+00
  %i.av = fdiv double %i.at, %i.au                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %.sroa.918.80.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.r, i64 0
  %.sroa.15.104.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.v, i64 0
  %.sroa.1824.136.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.x, i64 0
  %.sroa.24.160.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.ab, i64 0
  %.sroa.2730.192.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.ad, i64 0
  %.sroa.33.216.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.ah, i64 0
  %.sroa.42.280.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.an, i64 0
  %.sroa.45.296.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.ap, i64 0
  %.sroa.48.312.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.ar, i64 0
  %i.aw = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ax = load <2 x double>, ptr %i.p, align 8, !tbaa !58
  %i.ay = shufflevector <2 x double> %.sroa.918.80.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.az = load <2 x double>, ptr %i.t, align 8, !tbaa !58
  %i.ba = fmul <2 x double> %i.ay, %i.az
  %i.bb = shufflevector <2 x double> %.sroa.15.104.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bc = fmul <2 x double> %i.bb, %i.ba
  %i.bd = fadd <2 x double> %i.ax, %i.bc
  %i.be = shufflevector <2 x double> %.sroa.1824.136.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bf = load <2 x double>, ptr %i.z, align 8, !tbaa !58
  %i.bg = fmul <2 x double> %i.be, %i.bf
  %i.bh = shufflevector <2 x double> %.sroa.24.160.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bi = fmul <2 x double> %i.bh, %i.bg
  %i.bj = fadd <2 x double> %i.bd, %i.bi
  %i.bk = shufflevector <2 x double> %.sroa.2730.192.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bl = load <2 x double>, ptr %i.af, align 8, !tbaa !58
  %i.bm = fmul <2 x double> %i.bk, %i.bl
  %i.bn = shufflevector <2 x double> %.sroa.33.216.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bo = fmul <2 x double> %i.bn, %i.bm
  %i.bp = fadd <2 x double> %i.bj, %i.bo
  %i.bq = load <2 x double>, ptr %i.aj, align 8, !tbaa !58
  %i.br = load <2 x double>, ptr %i.al, align 8, !tbaa !58
  %i.bs = shufflevector <2 x double> %.sroa.42.280.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bt = fdiv <2 x double> %i.br, %i.bs
  %i.bu = shufflevector <2 x double> %.sroa.45.296.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bv = fdiv <2 x double> %i.bt, %i.bu
  %i.bw = shufflevector <2 x double> %.sroa.48.312.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bx = fmul <2 x double> %i.bw, %i.bv
  %i.by = fadd <2 x double> %i.bq, %i.bx
  %i.bz = fsub <2 x double> %i.bp, %i.by          ; 4 uses
  %i.ca = fmul <2 x double> %i.aw, %i.bz          ; 3 uses
  %i.cb = getelementptr i8, ptr %i.p, i64 16
  %i.cc = getelementptr i8, ptr %i.t, i64 16
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !39
  %i.ce = fmul double %i.r, %i.cd
  %i.cf = fmul double %i.v, %i.ce
  %i.cg = load double, ptr %i.cb, align 8, !tbaa !39
  %i.ch = fadd double %i.cg, %i.cf
  %i.ci = getelementptr i8, ptr %i.z, i64 16
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !39
  %i.ck = fmul double %i.x, %i.cj
  %i.cl = fmul double %i.ab, %i.ck
  %i.cm = fadd double %i.ch, %i.cl
  %i.cn = getelementptr i8, ptr %i.af, i64 16
  %i.co = load double, ptr %i.cn, align 8, !tbaa !39
  %i.cp = fmul double %i.ad, %i.co
  %i.cq = fmul double %i.ah, %i.cp
  %i.cr = fadd double %i.cm, %i.cq
  %i.cs = getelementptr i8, ptr %i.aj, i64 16
  %i.ct = getelementptr i8, ptr %i.al, i64 16
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !39
  %i.cv = fdiv double %i.cu, %i.an
  %i.cw = fdiv double %i.cv, %i.ap
  %i.cx = fmul double %i.ar, %i.cw
  %i.cy = load double, ptr %i.cs, align 8, !tbaa !39
  %i.cz = fadd double %i.cy, %i.cx
  %i.da = fsub double %i.cr, %i.cz                ; 3 uses
  %i.db = extractelement <2 x double> %i.m, i64 1
  %i.dc = fmul double %i.db, %i.da                ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 24
  store <2 x double> %i.bz, ptr %i.dd, align 8, !tbaa !58
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  store double %i.da, ptr %i.de, align 8, !tbaa !39
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %3, ptr %i.df, align 8, !tbaa !292
  %i.dg = extractelement <2 x double> %i.bz, i64 0
  %i.dh = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.di = fmul <2 x double> %i.ca, %i.dh
  %i.dj = fmul double %i.dg, %i.dc
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.dl = load <2 x double>, ptr %i.dk, align 8   ; 2 uses
  %i.dm = shufflevector <2 x double> %i.dl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dn = fmul <2 x double> %i.ca, %i.dm
  %i.do = extractelement <2 x double> %i.dl, i64 0
  %i.dp = fmul double %i.dc, %i.do
  %i.dq = load <1 x double>, ptr %i.de, align 8
  %i.dr = shufflevector <1 x double> %i.dq, <1 x double> poison, <2 x i32> zeroinitializer
  %i.ds = fmul <2 x double> %i.ca, %i.dr
  %i.dt = fmul double %i.dc, %i.da
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %4 = load double, ptr %i.j, align 8, !tbaa !39  ; 2 uses
  %5 = insertelement <2 x double> poison, double %4, i64 0
  %i.du = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dv = fmul <2 x double> %i.di, %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %6 = load double, ptr %i.dw, align 8, !tbaa !39 ; 2 uses
  %7 = insertelement <2 x double> poison, double %6, i64 0
  %i.dx = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dy = fmul <2 x double> %i.dn, %i.dx
  %i.dz = fadd <2 x double> %i.dv, %i.dy
  %8 = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %9 = load double, ptr %8, align 8, !tbaa !39    ; 4 uses
  %10 = insertelement <2 x double> poison, double %9, i64 0
  %11 = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> zeroinitializer
  %12 = fmul <2 x double> %i.ds, %11
  %13 = fadd <2 x double> %i.dz, %12
  %i.ea = fmul double %i.dj, %4
  %14 = fmul double %i.dp, %6
  %i.eb = fmul double %i.dt, %9
  %i.ec = fadd double %14, %i.eb
  %i.ed = fadd double %i.ea, %i.ec
  %.sroa.431.88.vec.insert = insertelement <2 x double> poison, double %i.av, i64 0
  %i.ee = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> zeroinitializer
  %15 = load <2 x double>, ptr %i.j, align 8, !tbaa !58 ; 2 uses
  %i.ef = fmul <2 x double> %i.ee, %15
  %i.eg = fadd <2 x double> %13, %i.ef
  %i.eh = shufflevector <2 x double> %.sroa.431.88.vec.insert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ei = fmul <2 x double> %15, %i.eh
  %i.ej = fadd <2 x double> %i.eg, %i.ei
  store <2 x double> %i.ej, ptr %0, align 8, !tbaa !58
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.el = extractelement <2 x double> %i.m, i64 0
  %i.em = fmul double %i.el, %9
  %i.en = fadd double %i.ed, %i.em
  %i.eo = fmul double %i.av, %9
  %i.ep = fadd double %i.eo, %i.en
  store double %i.ep, ptr %i.ek, align 8, !tbaa !39
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt17_Function_handlerIFN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEERKdEZN3igl19kelvinlet_evaluatorINS0_13CwiseBinaryOpINS0_8internal13scalar_sum_opIddEEKNS8_ISB_KNS8_ISB_KS2_KNS8_INS9_17scalar_product_opIddEEKNS8_ISE_KNS0_14CwiseNullaryOpINS9_18scalar_constant_opIdEESC_EESC_EESJ_EEEESN_EESN_EES2_S2_NS1_IdLi3ELi3ELi0ELi3ELi3EEEdEENS1_IT3_Li3ELi1ELi0ELi3ELi1EEESU_RKNS0_10MatrixBaseIT_EERKNSW_IT0_EERKNSW_IT1_EERKNSW_IT2_EERKNS6_15KelvinletParamsISU_EEEUlS4_E0_E9_M_invokeERKSt9_Any_dataS4_(ptr dead_on_unwind noalias writable sret(%"class.Eigen::Matrix.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0 = alloca [24 x i8], align 16 ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !27     ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !494)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !497, !noalias !499, !nonnull !32, !align !33
  %i.d = load double, ptr %i.c, align 8, !tbaa !39, !noalias !499
  %i.e = load double, ptr %2, align 8, !tbaa !39, !noalias !499 ; 4 uses
  %i.f = tail call double @llvm.fmuladd.f64(double %i.e, double %i.e, double %i.d)
  %i.g = tail call double @sqrt(double noundef %i.f) #21, !noalias !499 ; 5 uses
  %i.h = fmul double %i.g, %i.g
  %i.i = fmul double %i.g, %i.h                   ; 2 uses
  %i.j = fdiv double 1.000000e+00, %i.i
  %i.k = fmul double %i.e, 3.000000e+00
  %i.l = fmul double %i.e, %i.k
  %i.m = fmul double %i.i, 2.000000e+00
  %i.n = fmul double %i.g, %i.m
  %i.o = fmul double %i.g, %i.n
  %i.p = fdiv double %i.l, %i.o
  %i.q = fadd double %i.j, %i.p
  %i.r = fmul double %i.q, f0xBFB45F306DC9C883    ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !504, !noalias !499, !nonnull !32 ; 6 uses
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !505, !noalias !499, !nonnull !32, !align !33 ; 15 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !158, !noalias !506, !nonnull !32, !align !33 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.y = load double, ptr %i.x, align 8, !tbaa !50, !noalias !506 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !167, !noalias !506, !nonnull !32, !align !33 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !50, !noalias !506 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 136
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !50, !noalias !506 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 144
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !167, !noalias !506, !nonnull !32, !align !33 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 168
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !50, !noalias !506 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 216
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !50, !noalias !506 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 224
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !167, !noalias !506, !nonnull !32, !align !33 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 248
  %i.ao = load double, ptr %i.an, align 8, !tbaa !50, !noalias !506 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.u, i64 272
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !290, !noalias !506, !nonnull !32, !align !33 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.u, i64 296
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !291, !noalias !506, !nonnull !32, !align !33 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 312
  %i.au = load double, ptr %i.at, align 8, !tbaa !50, !noalias !506 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 336
  %i.aw = load double, ptr %i.av, align 8, !tbaa !50, !noalias !506 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.u, i64 360
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !50, !noalias !506 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0)
  %.sroa.615.56.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.y, i64 0
  %.sroa.12.80.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.ac, i64 0
  %.sroa.1521.112.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.ae, i64 0
  %.sroa.21.136.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.ai, i64 0
  %.sroa.2427.168.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.ak, i64 0
  %.sroa.30.192.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.ao, i64 0
  %.sroa.39.256.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.au, i64 0
  %.sroa.42.272.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.aw, i64 0
  %.sroa.45.288.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.ay, i64 0
  %i.az = load <2 x double>, ptr %i.w, align 8, !tbaa !58, !noalias !494
  %i.ba = shufflevector <2 x double> %.sroa.615.56.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bb = load <2 x double>, ptr %i.aa, align 8, !tbaa !58, !noalias !494
  %i.bc = fmul <2 x double> %i.ba, %i.bb
  %i.bd = shufflevector <2 x double> %.sroa.12.80.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.be = fmul <2 x double> %i.bd, %i.bc
  %i.bf = fadd <2 x double> %i.az, %i.be
  %i.bg = shufflevector <2 x double> %.sroa.1521.112.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bh = load <2 x double>, ptr %i.ag, align 8, !tbaa !58, !noalias !494
  %i.bi = fmul <2 x double> %i.bg, %i.bh
  %i.bj = shufflevector <2 x double> %.sroa.21.136.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bk = fmul <2 x double> %i.bj, %i.bi
  %i.bl = fadd <2 x double> %i.bf, %i.bk
  %i.bm = shufflevector <2 x double> %.sroa.2427.168.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bn = load <2 x double>, ptr %i.am, align 8, !tbaa !58, !noalias !494
  %i.bo = fmul <2 x double> %i.bm, %i.bn
  %i.bp = shufflevector <2 x double> %.sroa.30.192.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bq = fmul <2 x double> %i.bp, %i.bo
  %i.br = fadd <2 x double> %i.bl, %i.bq
  %i.bs = load <2 x double>, ptr %i.aq, align 8, !tbaa !58, !noalias !494
  %i.bt = load <2 x double>, ptr %i.as, align 8, !tbaa !58, !noalias !494
  %i.bu = shufflevector <2 x double> %.sroa.39.256.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bv = fdiv <2 x double> %i.bt, %i.bu
  %i.bw = shufflevector <2 x double> %.sroa.42.272.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bx = fdiv <2 x double> %i.bv, %i.bw
  %i.by = shufflevector <2 x double> %.sroa.45.288.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bz = fmul <2 x double> %i.by, %i.bx
  %i.ca = fadd <2 x double> %i.bs, %i.bz
  %i.cb = fsub <2 x double> %i.br, %i.ca          ; 3 uses
  store <2 x double> %i.cb, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0, align 16, !tbaa !58, !noalias !494
  %i.cc = getelementptr i8, ptr %i.w, i64 16
  %i.cd = getelementptr i8, ptr %i.aa, i64 16
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !39, !noalias !494
  %i.cf = fmul double %i.y, %i.ce
  %i.cg = fmul double %i.ac, %i.cf
  %i.ch = load double, ptr %i.cc, align 8, !tbaa !39, !noalias !494
  %i.ci = fadd double %i.ch, %i.cg
  %i.cj = getelementptr i8, ptr %i.ag, i64 16
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !39, !noalias !494
  %i.cl = fmul double %i.ae, %i.ck
  %i.cm = fmul double %i.ai, %i.cl
  %i.cn = fadd double %i.ci, %i.cm
  %i.co = getelementptr i8, ptr %i.am, i64 16
  %i.cp = load double, ptr %i.co, align 8, !tbaa !39, !noalias !494
  %i.cq = fmul double %i.ak, %i.cp
  %i.cr = fmul double %i.ao, %i.cq
  %i.cs = fadd double %i.cn, %i.cr
  %i.ct = getelementptr i8, ptr %i.aq, i64 16
  %i.cu = getelementptr i8, ptr %i.as, i64 16
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !39, !noalias !494
  %i.cw = fdiv double %i.cv, %i.au
  %i.cx = fdiv double %i.cw, %i.aw
  %i.cy = fmul double %i.ay, %i.cx
  %i.cz = load double, ptr %i.ct, align 8, !tbaa !39, !noalias !494
  %i.da = fadd double %i.cz, %i.cy
  %i.db = fsub double %i.cs, %i.da                ; 2 uses
  %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx6 = getelementptr inbounds nuw i8, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0, i64 16
  store double %i.db, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx6, align 16, !tbaa !39, !noalias !494
  %.sroa.6.72.vec.insert.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.r, i64 0
  %i.dc = shufflevector <2 x double> %.sroa.6.72.vec.insert.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.dd = load <2 x double>, ptr %i.t, align 1, !tbaa !58, !noalias !494
  %i.de = fmul <2 x double> %i.dc, %i.dd
  %i.df = extractelement <2 x double> %i.cb, i64 0
  %i.dg = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dh = fmul <2 x double> %i.dg, %i.de
  %i.di = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.dj = load <2 x double>, ptr %i.di, align 1, !tbaa !58, !noalias !494
  %i.dk = fmul <2 x double> %i.dc, %i.dj
  %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx5 = getelementptr inbounds nuw i8, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0, i64 8
  %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0.8..sroa.2.i.i.i.i.i.i.i.i.i.sroa.0.8..sroa.2.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.8..sroa.2.i.i.i.i.i.8..sroa.2.i.i.i.i.8..sroa.2.i.i.i.i.8..sroa.2.i.i.i.8..sroa.2.i.i.i.8..sroa.2.i.i.8..sroa.2.i.i.8..sroa.2.i.8..sroa.2.i.8..sroa.2.8..sroa.2.8..sroa.2.48..i.i.i.i.i.i.i.i.i = load <2 x double>, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx5, align 8, !noalias !494 ; 2 uses
  %i.dl = shufflevector <2 x double> %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0.8..sroa.2.i.i.i.i.i.i.i.i.i.sroa.0.8..sroa.2.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.8..sroa.2.i.i.i.i.i.8..sroa.2.i.i.i.i.8..sroa.2.i.i.i.i.8..sroa.2.i.i.i.8..sroa.2.i.i.i.8..sroa.2.i.i.8..sroa.2.i.i.8..sroa.2.i.8..sroa.2.i.8..sroa.2.8..sroa.2.8..sroa.2.48..i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dm = fmul <2 x double> %i.dk, %i.dl
  %i.dn = fadd <2 x double> %i.dh, %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.dp = load <2 x double>, ptr %i.do, align 1, !tbaa !58, !noalias !494
  %i.dq = fmul <2 x double> %i.dc, %i.dp
  %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx7 = getelementptr inbounds nuw i8, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0, i64 16
  %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0.16..sroa.2.i.i.i.i.i.i.i.i.i.sroa.0.16. = load <1 x double>, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx7, align 16, !noalias !494
  %i.dr = shufflevector <1 x double> %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0.16..sroa.2.i.i.i.i.i.i.i.i.i.sroa.0.16., <1 x double> poison, <2 x i32> zeroinitializer
  %i.ds = fmul <2 x double> %i.dq, %i.dr
  %i.dt = fadd <2 x double> %i.dn, %i.ds
  store <2 x double> %i.dt, ptr %0, align 8, !tbaa !58, !alias.scope !494
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dv = getelementptr i8, ptr %i.t, i64 16
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !39, !noalias !494
  %i.dx = fmul double %i.r, %i.dw
  %i.dy = fmul double %i.df, %i.dx
  %i.dz = getelementptr i8, ptr %i.t, i64 40
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !39, !noalias !494
  %i.eb = fmul double %i.r, %i.ea
  %i.ec = extractelement <2 x double> %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0.8..sroa.2.i.i.i.i.i.i.i.i.i.sroa.0.8..sroa.2.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.8..sroa.2.i.i.i.i.i.8..sroa.2.i.i.i.i.8..sroa.2.i.i.i.i.8..sroa.2.i.i.i.8..sroa.2.i.i.i.8..sroa.2.i.i.8..sroa.2.i.i.8..sroa.2.i.8..sroa.2.i.8..sroa.2.8..sroa.2.8..sroa.2.48..i.i.i.i.i.i.i.i.i, i64 0
  %i.ed = fmul double %i.ec, %i.eb
  %i.ee = getelementptr i8, ptr %i.t, i64 64
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !39, !noalias !494
  %i.eg = fmul double %i.r, %i.ef
  %i.eh = fmul double %i.db, %i.eg
  %i.ei = fadd double %i.ed, %i.eh
  %i.ej = fadd double %i.dy, %i.ei
  store double %i.ej, ptr %i.du, align 8, !tbaa !39, !alias.scope !494
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.i.i.i.i.i.i.i.i.i.sroa.0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEERKdEZN3igl19kelvinlet_evaluatorINS0_13CwiseBinaryOpINS0_8internal13scalar_sum_opIddEEKNS8_ISB_KNS8_ISB_KS2_KNS8_INS9_17scalar_product_opIddEEKNS8_ISE_KNS0_14CwiseNullaryOpINS9_18scalar_constant_opIdEESC_EESC_EESJ_EEEESN_EESN_EES2_S2_NS1_IdLi3ELi3ELi0ELi3ELi3EEEdEENS1_IT3_Li3ELi1ELi0ELi3ELi1EEESU_RKNS0_10MatrixBaseIT_EERKNSW_IT0_EERKNSW_IT1_EERKNSW_IT2_EERKNS6_15KelvinletParamsISU_EEEUlS4_E0_E10_M_managerERSt9_Any_dataRKS1J_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN3igl19kelvinlet_evaluatorIN5Eigen13CwiseBinaryOpINS3_8internal13scalar_sum_opIddEEKNS4_IS7_KNS4_IS7_KNS3_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEKNS4_INS5_17scalar_product_opIddEEKNS4_ISC_KNS3_14CwiseNullaryOpINS5_18scalar_constant_opIdEESA_EESA_EESH_EEEESL_EESL_EES9_S9_NS8_IdLi3ELi3ELi0ELi3ELi3EEEdEENS8_IT3_Li3ELi1ELi0ELi3ELi1EEESS_RKNS3_10MatrixBaseIT_EERKNSU_IT0_EERKNSU_IT1_EERKNSU_IT2_EERKNS1_15KelvinletParamsISS_EEEUlRKdE0_E10_M_managerERSt9_Any_dataRKS1J_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN3igl19kelvinlet_evaluatorIN5Eigen13CwiseBinaryOpINS1_8internal13scalar_sum_opIddEEKNS2_IS5_KNS2_IS5_KNS1_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEKNS2_INS3_17scalar_product_opIddEEKNS2_ISA_KNS1_14CwiseNullaryOpINS3_18scalar_constant_opIdEES8_EES8_EESF_EEEESJ_EESJ_EES7_S7_NS6_IdLi3ELi3ELi0ELi3ELi3EEEdEENS6_IT3_Li3ELi1ELi0ELi3ELi1EEESQ_RKNS1_10MatrixBaseIT_EERKNSS_IT0_EERKNSS_IT1_EERKNSS_IT2_EERKNS_15KelvinletParamsISQ_EEEUlRKdE0_, ptr %0, align 8, !tbaa !294
  br label %_ZNSt14_Function_base13_Base_managerIZN3igl19kelvinlet_evaluatorIN5Eigen13CwiseBinaryOpINS3_8internal13scalar_sum_opIddEEKNS4_IS7_KNS4_IS7_KNS3_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEKNS4_INS5_17scalar_product_opIddEEKNS4_ISC_KNS3_14CwiseNullaryOpINS5_18scalar_constant_opIdEESA_EESA_EESH_EEEESL_EESL_EES9_S9_NS8_IdLi3ELi3ELi0ELi3ELi3EEEdEENS8_IT3_Li3ELi1ELi0ELi3ELi1EEESS_RKNS3_10MatrixBaseIT_EERKNSU_IT0_EERKNSU_IT1_EERKNSU_IT2_EERKNS1_15KelvinletParamsISS_EEEUlRKdE0_E10_M_managerERSt9_Any_dataRKS1J_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !27
  store ptr %i.a, ptr %0, align 8, !tbaa !27
  br label %_ZNSt14_Function_base13_Base_managerIZN3igl19kelvinlet_evaluatorIN5Eigen13CwiseBinaryOpINS3_8internal13scalar_sum_opIddEEKNS4_IS7_KNS4_IS7_KNS3_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEKNS4_INS5_17scalar_product_opIddEEKNS4_ISC_KNS3_14CwiseNullaryOpINS5_18scalar_constant_opIdEESA_EESA_EESH_EEEESL_EESL_EES9_S9_NS8_IdLi3ELi3ELi0ELi3ELi3EEEdEENS8_IT3_Li3ELi1ELi0ELi3ELi1EEESS_RKNS3_10MatrixBaseIT_EERKNSU_IT0_EERKNSU_IT1_EERKNSU_IT2_EERKNS1_15KelvinletParamsISS_EEEUlRKdE0_E10_M_managerERSt9_Any_dataRKS1J_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !27
  %i.c = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !tbaa.struct !509
  store ptr %i.c, ptr %0, align 8, !tbaa !27
  br label %_ZNSt14_Function_base13_Base_managerIZN3igl19kelvinlet_evaluatorIN5Eigen13CwiseBinaryOpINS3_8internal13scalar_sum_opIddEEKNS4_IS7_KNS4_IS7_KNS3_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEKNS4_INS5_17scalar_product_opIddEEKNS4_ISC_KNS3_14CwiseNullaryOpINS5_18scalar_constant_opIdEESA_EESA_EESH_EEEESL_EESL_EES9_S9_NS8_IdLi3ELi3ELi0ELi3ELi3EEEdEENS8_IT3_Li3ELi1ELi0ELi3ELi1EEESS_RKNS3_10MatrixBaseIT_EERKNSU_IT0_EERKNSU_IT1_EERKNSU_IT2_EERKNS1_15KelvinletParamsISS_EEEUlRKdE0_E10_M_managerERSt9_Any_dataRKS1J_St18_Manager_operation.exit

end_hunk_3
