Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/data_parallel_tree_learner?download=true
inline.NumInlined: 2212
inline.NumDeleted: 869
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN8LightGBM23DataParallelTreeLearnerINS_14GPUTreeLearnerEE11BeforeTrainEv:bb.a
  %.sroa.068.0.copyload69 = load i64, ptr %i.hp, align 1
  %.sroa.770.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %.sroa.1176.0..sroa_idx77 = getelementptr inbounds nuw i8, ptr %i.hp, i64 24
  %.sroa.1176.0.copyload78 = load i32, ptr %.sroa.1176.0..sroa_idx77, align 1
  %i.hq = load ptr, ptr %i.ha, align 8, !tbaa !252 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 4
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %i.ht = load <2 x double>, ptr %.sroa.770.0..sroa_idx71, align 1
  store i32 0, ptr %i.hr, align 4, !tbaa !260
  %i.hu = shufflevector <2 x double> %i.ht, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.hu, ptr %i.hs, align 8, !tbaa !261
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hq, i64 32
  store i64 %.sroa.068.0.copyload69, ptr %i.hv, align 8, !tbaa !257
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !178
  store i32 %.sroa.1176.0.copyload78, ptr %i.hx, align 4, !tbaa !203
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !262
  %i.ia = load ptr, ptr %0, align 8, !tbaa !182
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 184
  %i.ic = load ptr, ptr %i.ib, align 8
  %i.id = invoke noundef i32 %i.ic(ptr noundef nonnull align 8 dereferenceable(856) %0, i32 noundef 0)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN8LightGBM19GradientDiscretizer24SetNumBitsInHistogramBinILb1EEEviiii(ptr noundef nonnull align 8 dereferenceable(5336) %i.hz, i32 noundef 0, i32 noundef -1, i32 noundef %i.id, i32 noundef 0)
          to label %bb.ah unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ad:                                            ; preds = %bb.aa
  %i.ie = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %.invoke, %bb.x, %bb.q, %bb.ac, %bb.ab
  %lpad.loopexit.split-lp139 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.ae:                                            ; preds = %bb.z
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !258 ; 3 uses
  store double %i.hh, ptr %i.ig, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  store double %i.hf, ptr %.sroa.7.0..sroa_idx, align 1
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  store i32 %i.hd, ptr %.sroa.9.0..sroa_idx, align 1
  %i.ih = load ptr, ptr %i.if, align 8, !tbaa !258
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !258
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store ptr @_ZZN8LightGBM23DataParallelTreeLearnerINS_14GPUTreeLearnerEE11BeforeTrainEvENUlPKcPciiE0_8__invokeES4_S5_ii, ptr %i.b, align 8, !tbaa !259
  invoke void @_ZN8LightGBM7Network9AllreduceEPciiS1_RKPFvPKcS1_iiE(ptr noundef %i.ih, i32 noundef 24, i32 noundef 24, ptr noundef %i.ij, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.ik = load ptr, ptr %i.ii, align 8, !tbaa !258 ; 2 uses
  %.sroa.9.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  %.sroa.9.0.copyload60 = load i32, ptr %.sroa.9.0..sroa_idx59, align 1
  %i.il = load ptr, ptr %i.ha, align 8, !tbaa !252 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 4
  %i.in = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  %i.io = load <2 x double>, ptr %i.ik, align 1
  store i32 0, ptr %i.im, align 4, !tbaa !260
  %i.ip = shufflevector <2 x double> %i.io, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.ip, ptr %i.in, align 8, !tbaa !261
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !178
  store i32 %.sroa.9.0.copyload60, ptr %i.ir, align 4, !tbaa !203
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.is = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %.loopexit.split-lp

bb.ah:                                            ; preds = %bb.ac, %bb.af
  %.not.i.i.i48 = icmp eq ptr %.sroa.096.0, null
  br i1 %.not.i.i.i48, label %_ZNSt6vectorIiSaIiEED2Ev.exit49, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.it = ptrtoint ptr %.sroa.096.0 to i64
  %i.iu = sub i64 %.sroa.12.0, %i.it
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.096.0, i64 noundef %i.iu) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit49

_ZNSt6vectorIiSaIiEED2Ev.exit49:                  ; preds = %bb.ah, %bb.ai
  %i.iv = load ptr, ptr %1, align 8, !tbaa !199   ; 3 uses
  %i.iw = load ptr, ptr %i.j, align 8, !tbaa !200 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.iv, %i.iw
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit49, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.jd, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i ], [ %i.iv, %_ZNSt6vectorIiSaIiEED2Ev.exit49 ] ; 3 uses
  %i.ix = load ptr, ptr %.05.i.i.i, align 8, !tbaa !178 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ix, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i.i.i
  %i.iy = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !202
  %i.ja = ptrtoint ptr %i.iz to i64
  %i.jb = ptrtoint ptr %i.ix to i64
  %i.jc = sub i64 %i.ja, %i.jb
  call void @_ZdlPvm(ptr noundef nonnull %i.ix, i64 noundef %i.jc) #31
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i:  ; preds = %bb.aj, %.lr.ph.i.i.i
  %i.jd = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i50 = icmp eq ptr %i.jd, %i.iw
  br i1 %.not.i.i.i50, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %1, align 8, !tbaa !199
  br label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIiSaIiEED2Ev.exit49
  %i.je = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.iv, %_ZNSt6vectorIiSaIiEED2Ev.exit49 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.je, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i
  %i.jf = load ptr, ptr %i.l, align 8, !tbaa !201
  %i.jg = ptrtoint ptr %i.jf to i64
  %i.jh = ptrtoint ptr %i.je to i64
  %i.ji = sub i64 %i.jg, %i.jh
  call void @_ZdlPvm(ptr noundef nonnull %i.je, i64 noundef %i.ji) #31
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  ret void

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ad, %bb.ag
  %.pn29.pn = phi { ptr, i32 } [ %i.is, %bb.ag ], [ %i.ie, %bb.ad ], [ %lpad.loopexit.split-lp139, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i52 = icmp eq ptr %.sroa.096.0, null
  br i1 %.not.i.i.i52, label %_ZNSt6vectorIiSaIiEED2Ev.exit53, label %bb.al

bb.al:                                            ; preds = %.loopexit.split-lp
  %i.jj = ptrtoint ptr %.sroa.096.0 to i64
  %i.jk = sub i64 %.sroa.12.0, %i.jj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.096.0, i64 noundef %i.jk) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit53

_ZNSt6vectorIiSaIiEED2Ev.exit53:                  ; preds = %bb.al, %.loopexit.split-lp, %bb.k
  %.pn29.pn.pn = phi { ptr, i32 } [ %i.bn, %bb.k ], [ %.pn29.pn, %.loopexit.split-lp ], [ %.pn29.pn, %bb.al ]
  call void @_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #20
  br label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit53, %_ZNSt6vectorIiSaIiEED2Ev.exit40
  %.pn29.pn.pn.pn = phi { ptr, i32 } [ %.pn29.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit53 ], [ %eh.lpad-body, %_ZNSt6vectorIiSaIiEED2Ev.exit40 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  resume { ptr, i32 } %.pn29.pn.pn.pn
}

declare noundef zeroext i1 @_ZN8LightGBM17SerialTreeLearner19BeforeFindBestSplitEPKNS_4TreeEii(ptr noundef nonnull align 8 dereferenceable(536), ptr noundef, i32 noundef, i32 noundef) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN8LightGBM23DataParallelTreeLearnerINS_14GPUTreeLearnerEE14FindBestSplitsEPKNS_4TreeE(ptr noundef nonnull align 8 dereferenceable(856) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.j = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  tail call void @_ZN8LightGBM17SerialTreeLearner19ConstructHistogramsERKSt6vectorIaSaIaEEb(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i1 noundef zeroext true)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !252
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !260
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !183
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = sext i32 %i.o to i64
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !178
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.s
  %i.v = load i32, ptr %i.u, align 4, !tbaa !203
  %i.w = icmp slt i32 %i.v, 1
  br i1 %i.w, label %bb.b, label %.noexc.i

bb.b:                                             ; preds = %bb.a
  %i.x = tail call i32 @OMP_NUM_THREADS()
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.j, i32 %i.x)
  tail call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 1, ptr nonnull @_ZN8LightGBM23DataParallelTreeLearnerINS_14GPUTreeLearnerEE14FindBestSplitsEPKNS_4TreeE.omp_outlined, ptr nonnull %0)
  br label %.noexc.i

.noexc.i:                                         ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.y, ptr %2, align 8, !tbaa !263
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  store i64 40, ptr %i.f, align 8, !tbaa !251
  %i.z = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0) ; 3 uses
  store ptr %i.z, ptr %2, align 8, !tbaa !264
  %i.aa = load i64, ptr %i.f, align 8, !tbaa !251 ; 3 uses
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !226
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.z, ptr noundef nonnull align 1 dereferenceable(40) @.str.7, i64 40, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !265
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aa
  store i8 0, ptr %i.ac, align 1, !tbaa !226
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  %i.ad = load ptr, ptr %2, align 8, !tbaa !264   ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.y
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc.i
  %i.af = load i64, ptr %i.y, align 8, !tbaa !226
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.noexc.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.ah, ptr %3, align 8, !tbaa !263
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  store i64 46, ptr %i.e, align 8, !tbaa !251
  %i.ai = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) ; 3 uses
  store ptr %i.ai, ptr %3, align 8, !tbaa !264
  %i.aj = load i64, ptr %i.e, align 8, !tbaa !251 ; 3 uses
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !226
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(46) %i.ai, ptr noundef nonnull align 1 dereferenceable(46) @.str.8, i64 46, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !265
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aj
  store i8 0, ptr %i.al, align 1, !tbaa !226
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  %i.am = load ptr, ptr %3, align 8, !tbaa !264   ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.ah
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ao = load i64, ptr %i.ah, align 8, !tbaa !226
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.aq = call i32 @OMP_NUM_THREADS()
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.j, i32 %i.aq)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 1, ptr nonnull @_ZN8LightGBM23DataParallelTreeLearnerINS_14GPUTreeLearnerEE14FindBestSplitsEPKNS_4TreeE.omp_outlined.9, ptr nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.ar, ptr %4, align 8, !tbaa !263
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i64 46, ptr %i.d, align 8, !tbaa !251
  %i.as = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 3 uses
  store ptr %i.as, ptr %4, align 8, !tbaa !264
  %i.at = load i64, ptr %i.d, align 8, !tbaa !251 ; 3 uses
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !226
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(46) %i.as, ptr noundef nonnull align 1 dereferenceable(46) @.str.8, i64 46, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.at, ptr %i.au, align 8, !tbaa !265
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.at
  store i8 0, ptr %i.av, align 1, !tbaa !226
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  %i.aw = load ptr, ptr %4, align 8, !tbaa !264   ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.ar
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.ay = load i64, ptr %i.ar, align 8, !tbaa !226
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.ba, ptr %5, align 8, !tbaa !263
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i64 55, ptr %i.c, align 8, !tbaa !251
  %i.bb = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 3 uses
  store ptr %i.bb, ptr %5, align 8, !tbaa !264
  %i.bc = load i64, ptr %i.c, align 8, !tbaa !251 ; 3 uses
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !226
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.bb, ptr noundef nonnull align 1 dereferenceable(55) @.str.10, i64 55, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !265
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bc
  store i8 0, ptr %i.be, align 1, !tbaa !226
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  %i.bf = load ptr, ptr %5, align 8, !tbaa !264   ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.ba
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  %i.bh = load i64, ptr %i.ba, align 8, !tbaa !226
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !126
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 840
  %i.bm = load i8, ptr %i.bl, align 8, !tbaa !153, !range !154, !noundef !155
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !258
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !353
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !178
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !178
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !258 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !266
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %i.bx to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = trunc i64 %i.cc to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  store ptr @_ZN8LightGBML19HistogramSumReducerEPKcPcii, ptr %i.g, align 8, !tbaa !259
  call void @_ZN8LightGBM7Network13ReduceScatterEPciiPKiS3_S1_iRKPFvPKcS1_iiE(ptr noundef %i.bp, i32 noundef %i.br, i32 noundef 8, ptr noundef %i.bt, ptr noundef %i.bv, ptr noundef %i.bx, i32 noundef %i.cd, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  br label %.noexc.i30

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !262
  %i.cg = load ptr, ptr %i.l, align 8, !tbaa !252
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !260
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 5240
  %i.ck = sext i32 %i.ci to i64
  %i.cl = load ptr, ptr %i.cj, align 8, !tbaa !225
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ck
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !226
  %i.co = icmp ult i8 %i.cn, 17
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !258 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !258 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !266
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = ptrtoint ptr %i.cs to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = trunc i64 %i.cx to i32                  ; 2 uses
  br i1 %i.co, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 828
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !354
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !178
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20
  store ptr @_ZN8LightGBML24Int16HistogramSumReducerEPKcPcii, ptr %i.h, align 8, !tbaa !259
  call void @_ZN8LightGBM7Network13ReduceScatterEPciiPKiS3_S1_iRKPFvPKcS1_iiE(ptr noundef %i.cq, i32 noundef %i.da, i32 noundef 2, ptr noundef %i.dc, ptr noundef %i.de, ptr noundef %i.cs, i32 noundef %i.cy, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  br label %.noexc.i30

bb.f:                                             ; preds = %bb.d
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !353
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !178
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #20
  store ptr @_ZN8LightGBML24Int32HistogramSumReducerEPKcPcii, ptr %i.i, align 8, !tbaa !259
  call void @_ZN8LightGBM7Network13ReduceScatterEPciiPKiS3_S1_iRKPFvPKcS1_iiE(ptr noundef %i.cq, i32 noundef %i.dg, i32 noundef 4, ptr noundef %i.di, ptr noundef %i.dk, ptr noundef %i.cs, i32 noundef %i.cy, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #20
  br label %.noexc.i30

.noexc.i30:                                       ; preds = %bb.c, %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.dl = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.dl, ptr %6, align 8, !tbaa !263
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i64 55, ptr %i.b, align 8, !tbaa !251
  %i.dm = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 3 uses
  store ptr %i.dm, ptr %6, align 8, !tbaa !264
  %i.dn = load i64, ptr %i.b, align 8, !tbaa !251 ; 3 uses
  store i64 %i.dn, ptr %i.dl, align 8, !tbaa !226
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.dm, ptr noundef nonnull align 1 dereferenceable(55) @.str.10, i64 55, i1 false)
  %i.do = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.dn, ptr %i.do, align 8, !tbaa !265
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dn
  store i8 0, ptr %i.dp, align 1, !tbaa !226
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.dq = load ptr, ptr %6, align 8, !tbaa !264   ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.dl
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %.noexc.i30
  %i.ds = load i64, ptr %i.dl, align 8, !tbaa !226
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.dt) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %.noexc.i30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.du = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.du, ptr %7, align 8, !tbaa !263
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 40, ptr %i.a, align 8, !tbaa !251
  %i.dv = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.dv, ptr %7, align 8, !tbaa !264
  %i.dw = load i64, ptr %i.a, align 8, !tbaa !251 ; 3 uses
  store i64 %i.dw, ptr %i.du, align 8, !tbaa !226
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.dv, ptr noundef nonnull align 1 dereferenceable(40) @.str.7, i64 40, i1 false)
  %i.dx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !265
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dw
  store i8 0, ptr %i.dy, align 1, !tbaa !226
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.dz = load ptr, ptr %7, align 8, !tbaa !264   ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.du
  br i1 %i.ea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %i.eb = load i64, ptr %i.du, align 8, !tbaa !226
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ec) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.ed = load ptr, ptr %0, align 8, !tbaa !182
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 168
  %i.ef = load ptr, ptr %i.ee, align 8
  call void %i.ef(ptr noundef nonnull align 8 dereferenceable(856) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i1 noundef zeroext true, ptr noundef %1)
  ret void
}

declare void @_ZN8LightGBM17SerialTreeLearner14FindBestSplitsEPKNS_4TreeEPKSt3setIiSt4lessIiESaIiEE(ptr noundef nonnull align 8 dereferenceable(536), ptr noundef, ptr noundef) unnamed_addr #3

declare void @_ZN8LightGBM17SerialTreeLearner19ConstructHistogramsERKSt6vectorIaSaIaEEb(ptr noundef nonnull align 8 dereferenceable(536), ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN8LightGBM23DataParallelTreeLearnerINS_14GPUTreeLearnerEE28FindBestSplitsFromHistogramsERKSt6vectorIaSaIaEEbPKNS_4TreeE(ptr noundef nonnull align 8 dereferenceable(856) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %7 = alloca %"class.std::vector", align 8       ; 15 uses
  %8 = alloca %"class.std::vector", align 8       ; 15 uses
  %9 = alloca %"class.std::vector.40", align 8    ; 9 uses
  %10 = alloca %"class.std::vector.40", align 8   ; 9 uses
  %i.a = alloca double, align 8                   ; 5 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %11 = alloca %class.ThreadExceptionHelper, align 8 ; 7 uses
  %12 = alloca %class.ThreadExceptionHelper, align 8 ; 8 uses
  %13 = alloca %"struct.LightGBM::SplitInfo", align 8 ; 12 uses
  %14 = alloca %"struct.LightGBM::SplitInfo", align 8 ; 19 uses
  %i.c = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !156  ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !267  ; 5 uses
  %i.g = sext i32 %i.f to i64                     ; 4 uses
  %i.h = icmp slt i32 %i.f, 0
  br i1 %i.h, label %.noexc, label %_ZNSt6vectorIN8LightGBM9SplitInfoESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #32
  unreachable

_ZNSt6vectorIN8LightGBM9SplitInfoESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN8LightGBM9SplitInfoESaIS1_EEC2EmRKS2_.exit.thread.i, label %_ZNSt12_Vector_baseIN8LightGBM9SplitInfoESaIS1_EEC2EmRKS2_.exit.i

_ZNSt12_Vector_baseIN8LightGBM9SplitInfoESaIS1_EEC2EmRKS2_.exit.thread.i: ; preds = %_ZNSt6vectorIN8LightGBM9SplitInfoESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  br label %.loopexit116

_ZNSt12_Vector_baseIN8LightGBM9SplitInfoESaIS1_EEC2EmRKS2_.exit.i: ; preds = %_ZNSt6vectorIN8LightGBM9SplitInfoESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.i = shl nuw nsw i64 %i.g, 7
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #33 ; 11 uses
  store ptr %i.j, ptr %7, align 8, !tbaa !268
  %i.k = getelementptr inbounds nuw [128 x i8], ptr %i.j, i64 %i.g
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !269
  %i.m = and i32 %i.f, 1
  %lcmp.mod.not = icmp eq i32 %i.m, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseIN8LightGBM9SplitInfoESaIS1_EEC2EmRKS2_.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.n, i8 0, i64 112, i1 false)
  store i32 -1, ptr %i.j, align 8, !tbaa !271
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  store double -inf, ptr %i.q, align 8, !tbaa !272
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.r, i8 0, i64 72, i1 false)
  store i8 1, ptr %i.s, align 8, !tbaa !273
  %i.t = add nsw i64 %i.g, -1
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 128 ; 2 uses
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseIN8LightGBM9SplitInfoESaIS1_EEC2EmRKS2_.exit.i
  %.lcssa166.unr = phi ptr [ poison, %_ZNSt12_Vector_baseIN8LightGBM9SplitInfoESaIS1_EEC2EmRKS2_.exit.i ], [ %i.u, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.j, %_ZNSt12_Vector_baseIN8LightGBM9SplitInfoESaIS1_EEC2EmRKS2_.exit.i ], [ %i.u, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.g, %_ZNSt12_Vector_baseIN8LightGBM9SplitInfoESaIS1_EEC2EmRKS2_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %i.v = icmp eq i32 %i.f, 1
  br i1 %i.v, label %.loopexit116.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 15 uses
  %.057.i.i.i.i.i = phi i64 [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.w, i8 0, i64 112, i1 false)
  store i32 -1, ptr %.08.i.i.i.i.i, align 8, !tbaa !271
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  store double -inf, ptr %i.z, align 8, !tbaa !272
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aa, i8 0, i64 72, i1 false)
  store i8 1, ptr %i.ab, align 8, !tbaa !273
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ad, i8 0, i64 112, i1 false)
  store i32 -1, ptr %i.ac, align 8, !tbaa !271
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 132
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 152
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  store double -inf, ptr %i.ag, align 8, !tbaa !272
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 176
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 248
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ah, i8 0, i64 72, i1 false)
  store i8 1, ptr %i.ai, align 8, !tbaa !273
  %i.aj = add nsw i64 %.057.i.i.i.i.i, -2         ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 256 ; 2 uses
  %.not.i.i.i.i.i.1 = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i.i.i.i.1, label %.loopexit116.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

.loopexit116.loopexit:                            ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa166 = phi ptr [ %.lcssa166.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ak, %.lr.ph.i.i.i.i.i ]
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !156
  br label %.loopexit116

.loopexit116:                                     ; preds = %.loopexit116.loopexit, %_ZNSt12_Vector_baseIN8LightGBM9SplitInfoESaIS1_EEC2EmRKS2_.exit.thread.i
  %i.al = phi ptr [ %i.e, %_ZNSt12_Vector_baseIN8LightGBM9SplitInfoESaIS1_EEC2EmRKS2_.exit.thread.i ], [ %.pre, %.loopexit116.loopexit ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN8LightGBM9SplitInfoESaIS1_EEC2EmRKS2_.exit.thread.i ], [ %.lcssa166, %.loopexit116.loopexit ]
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.am, align 8, !tbaa !274
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.an = load i32, ptr %i.al, align 8, !tbaa !267 ; 5 uses
  %i.ao = sext i32 %i.an to i64                   ; 4 uses
  %i.ap = icmp slt i32 %i.an, 0
  br i1 %i.ap, label %bb.b, label %_ZNSt6vectorIN8LightGBM9SplitInfoESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i38

bb.b:                                             ; preds = %.loopexit116
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #32
          to label %.noexc47 unwind label %bb.l

.noexc47:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorIN8LightGBM9SplitInfoESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i38: ; preds = %.loopexit116
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %.not.i.i.i.i39 = icmp eq i32 %i.an, 0
  br i1 %.not.i.i.i.i39, label %.loopexit, label %_ZNSt12_Vector_baseIN8LightGBM9SplitInfoESaIS1_EEC2EmRKS2_.exit.i40
end_hunk_0
begin_hunk_1_@_ZN8LightGBM23DataParallelTreeLearnerINS_17SerialTreeLearnerEE11BeforeTrainEv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.hp = load ptr, ptr %i.hn, align 8, !tbaa !258 ; 3 uses
  %.sroa.068.0.copyload69 = load i64, ptr %i.hp, align 1
  %.sroa.770.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %.sroa.1176.0..sroa_idx77 = getelementptr inbounds nuw i8, ptr %i.hp, i64 24
  %.sroa.1176.0.copyload78 = load i32, ptr %.sroa.1176.0..sroa_idx77, align 1
  %i.hq = load ptr, ptr %i.ha, align 8, !tbaa !252 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 4
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %i.ht = load <2 x double>, ptr %.sroa.770.0..sroa_idx71, align 1
  store i32 0, ptr %i.hr, align 4, !tbaa !260
  %i.hu = shufflevector <2 x double> %i.ht, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.hu, ptr %i.hs, align 8, !tbaa !261
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hq, i64 32
  store i64 %.sroa.068.0.copyload69, ptr %i.hv, align 8, !tbaa !257
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !178
  store i32 %.sroa.1176.0.copyload78, ptr %i.hx, align 4, !tbaa !203
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !262
  %i.ia = load ptr, ptr %0, align 8, !tbaa !182
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 184
  %i.ic = load ptr, ptr %i.ib, align 8
  %i.id = invoke noundef i32 %i.ic(ptr noundef nonnull align 8 dereferenceable(856) %0, i32 noundef 0)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN8LightGBM19GradientDiscretizer24SetNumBitsInHistogramBinILb1EEEviiii(ptr noundef nonnull align 8 dereferenceable(5336) %i.hz, i32 noundef 0, i32 noundef -1, i32 noundef %i.id, i32 noundef 0)
          to label %bb.ah unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ad:                                            ; preds = %bb.aa
  %i.ie = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %.invoke, %bb.x, %bb.q, %bb.ac, %bb.ab
  %lpad.loopexit.split-lp139 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.ae:                                            ; preds = %bb.z
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !258 ; 3 uses
  store double %i.hh, ptr %i.ig, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  store double %i.hf, ptr %.sroa.7.0..sroa_idx, align 1
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  store i32 %i.hd, ptr %.sroa.9.0..sroa_idx, align 1
  %i.ih = load ptr, ptr %i.if, align 8, !tbaa !258
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !258
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store ptr @_ZZN8LightGBM23DataParallelTreeLearnerINS_17SerialTreeLearnerEE11BeforeTrainEvENUlPKcPciiE0_8__invokeES4_S5_ii, ptr %i.b, align 8, !tbaa !259
  invoke void @_ZN8LightGBM7Network9AllreduceEPciiS1_RKPFvPKcS1_iiE(ptr noundef %i.ih, i32 noundef 24, i32 noundef 24, ptr noundef %i.ij, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.ik = load ptr, ptr %i.ii, align 8, !tbaa !258 ; 2 uses
  %.sroa.9.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  %.sroa.9.0.copyload60 = load i32, ptr %.sroa.9.0..sroa_idx59, align 1
  %i.il = load ptr, ptr %i.ha, align 8, !tbaa !252 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 4
  %i.in = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  %i.io = load <2 x double>, ptr %i.ik, align 1
  store i32 0, ptr %i.im, align 4, !tbaa !260
  %i.ip = shufflevector <2 x double> %i.io, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.ip, ptr %i.in, align 8, !tbaa !261
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !178
  store i32 %.sroa.9.0.copyload60, ptr %i.ir, align 4, !tbaa !203
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.is = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %.loopexit.split-lp

bb.ah:                                            ; preds = %bb.ac, %bb.af
  %.not.i.i.i48 = icmp eq ptr %.sroa.096.0, null
  br i1 %.not.i.i.i48, label %_ZNSt6vectorIiSaIiEED2Ev.exit49, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.it = ptrtoint ptr %.sroa.096.0 to i64
  %i.iu = sub i64 %.sroa.12.0, %i.it
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.096.0, i64 noundef %i.iu) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit49

_ZNSt6vectorIiSaIiEED2Ev.exit49:                  ; preds = %bb.ah, %bb.ai
  %i.iv = load ptr, ptr %1, align 8, !tbaa !199   ; 3 uses
  %i.iw = load ptr, ptr %i.j, align 8, !tbaa !200 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.iv, %i.iw
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit49, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.jd, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i ], [ %i.iv, %_ZNSt6vectorIiSaIiEED2Ev.exit49 ] ; 3 uses
  %i.ix = load ptr, ptr %.05.i.i.i, align 8, !tbaa !178 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ix, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i.i.i
  %i.iy = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !202
  %i.ja = ptrtoint ptr %i.iz to i64
  %i.jb = ptrtoint ptr %i.ix to i64
  %i.jc = sub i64 %i.ja, %i.jb
  call void @_ZdlPvm(ptr noundef nonnull %i.ix, i64 noundef %i.jc) #31
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i:  ; preds = %bb.aj, %.lr.ph.i.i.i
  %i.jd = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i50 = icmp eq ptr %i.jd, %i.iw
  br i1 %.not.i.i.i50, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %1, align 8, !tbaa !199
  br label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIiSaIiEED2Ev.exit49
  %i.je = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.iv, %_ZNSt6vectorIiSaIiEED2Ev.exit49 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.je, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i
  %i.jf = load ptr, ptr %i.l, align 8, !tbaa !201
  %i.jg = ptrtoint ptr %i.jf to i64
  %i.jh = ptrtoint ptr %i.je to i64
  %i.ji = sub i64 %i.jg, %i.jh
  call void @_ZdlPvm(ptr noundef nonnull %i.je, i64 noundef %i.ji) #31
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  ret void

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ad, %bb.ag
  %.pn29.pn = phi { ptr, i32 } [ %i.is, %bb.ag ], [ %i.ie, %bb.ad ], [ %lpad.loopexit.split-lp139, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i52 = icmp eq ptr %.sroa.096.0, null
  br i1 %.not.i.i.i52, label %_ZNSt6vectorIiSaIiEED2Ev.exit53, label %bb.al

bb.al:                                            ; preds = %.loopexit.split-lp
  %i.jj = ptrtoint ptr %.sroa.096.0 to i64
  %i.jk = sub i64 %.sroa.12.0, %i.jj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.096.0, i64 noundef %i.jk) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit53

_ZNSt6vectorIiSaIiEED2Ev.exit53:                  ; preds = %bb.al, %.loopexit.split-lp, %bb.k
  %.pn29.pn.pn = phi { ptr, i32 } [ %i.bn, %bb.k ], [ %.pn29.pn, %.loopexit.split-lp ], [ %.pn29.pn, %bb.al ]
  call void @_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #20
  br label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit53, %_ZNSt6vectorIiSaIiEED2Ev.exit40
  %.pn29.pn.pn.pn = phi { ptr, i32 } [ %.pn29.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit53 ], [ %eh.lpad-body, %_ZNSt6vectorIiSaIiEED2Ev.exit40 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  resume { ptr, i32 } %.pn29.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN8LightGBM23DataParallelTreeLearnerINS_17SerialTreeLearnerEE14FindBestSplitsEPKNS_4TreeE(ptr noundef nonnull align 8 dereferenceable(856) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.j = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  tail call void @_ZN8LightGBM17SerialTreeLearner19ConstructHistogramsERKSt6vectorIaSaIaEEb(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i1 noundef zeroext true)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !252
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !260
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !183
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = sext i32 %i.o to i64
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !178
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.s
  %i.v = load i32, ptr %i.u, align 4, !tbaa !203
  %i.w = icmp slt i32 %i.v, 1
  br i1 %i.w, label %bb.b, label %.noexc.i

bb.b:                                             ; preds = %bb.a
  %i.x = tail call i32 @OMP_NUM_THREADS()
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.j, i32 %i.x)
  tail call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 1, ptr nonnull @_ZN8LightGBM23DataParallelTreeLearnerINS_17SerialTreeLearnerEE14FindBestSplitsEPKNS_4TreeE.omp_outlined, ptr nonnull %0)
  br label %.noexc.i

.noexc.i:                                         ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.y, ptr %2, align 8, !tbaa !263
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  store i64 40, ptr %i.f, align 8, !tbaa !251
  %i.z = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0) ; 3 uses
  store ptr %i.z, ptr %2, align 8, !tbaa !264
  %i.aa = load i64, ptr %i.f, align 8, !tbaa !251 ; 3 uses
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !226
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.z, ptr noundef nonnull align 1 dereferenceable(40) @.str.7, i64 40, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !265
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aa
  store i8 0, ptr %i.ac, align 1, !tbaa !226
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  %i.ad = load ptr, ptr %2, align 8, !tbaa !264   ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.y
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc.i
  %i.af = load i64, ptr %i.y, align 8, !tbaa !226
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.noexc.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.ah, ptr %3, align 8, !tbaa !263
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  store i64 46, ptr %i.e, align 8, !tbaa !251
  %i.ai = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) ; 3 uses
  store ptr %i.ai, ptr %3, align 8, !tbaa !264
  %i.aj = load i64, ptr %i.e, align 8, !tbaa !251 ; 3 uses
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !226
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(46) %i.ai, ptr noundef nonnull align 1 dereferenceable(46) @.str.8, i64 46, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !265
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aj
  store i8 0, ptr %i.al, align 1, !tbaa !226
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  %i.am = load ptr, ptr %3, align 8, !tbaa !264   ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.ah
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ao = load i64, ptr %i.ah, align 8, !tbaa !226
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.aq = call i32 @OMP_NUM_THREADS()
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.j, i32 %i.aq)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 1, ptr nonnull @_ZN8LightGBM23DataParallelTreeLearnerINS_17SerialTreeLearnerEE14FindBestSplitsEPKNS_4TreeE.omp_outlined.20, ptr nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.ar, ptr %4, align 8, !tbaa !263
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i64 46, ptr %i.d, align 8, !tbaa !251
  %i.as = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 3 uses
  store ptr %i.as, ptr %4, align 8, !tbaa !264
  %i.at = load i64, ptr %i.d, align 8, !tbaa !251 ; 3 uses
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !226
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(46) %i.as, ptr noundef nonnull align 1 dereferenceable(46) @.str.8, i64 46, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.at, ptr %i.au, align 8, !tbaa !265
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.at
  store i8 0, ptr %i.av, align 1, !tbaa !226
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  %i.aw = load ptr, ptr %4, align 8, !tbaa !264   ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.ar
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.ay = load i64, ptr %i.ar, align 8, !tbaa !226
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.ba, ptr %5, align 8, !tbaa !263
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i64 55, ptr %i.c, align 8, !tbaa !251
  %i.bb = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 3 uses
  store ptr %i.bb, ptr %5, align 8, !tbaa !264
  %i.bc = load i64, ptr %i.c, align 8, !tbaa !251 ; 3 uses
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !226
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.bb, ptr noundef nonnull align 1 dereferenceable(55) @.str.10, i64 55, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !265
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bc
  store i8 0, ptr %i.be, align 1, !tbaa !226
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  %i.bf = load ptr, ptr %5, align 8, !tbaa !264   ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.ba
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  %i.bh = load i64, ptr %i.ba, align 8, !tbaa !226
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !126
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 840
  %i.bm = load i8, ptr %i.bl, align 8, !tbaa !153, !range !154, !noundef !155
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !258
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !358
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !178
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !178
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !258 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !266
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %i.bx to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = trunc i64 %i.cc to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  store ptr @_ZN8LightGBML19HistogramSumReducerEPKcPcii, ptr %i.g, align 8, !tbaa !259
  call void @_ZN8LightGBM7Network13ReduceScatterEPciiPKiS3_S1_iRKPFvPKcS1_iiE(ptr noundef %i.bp, i32 noundef %i.br, i32 noundef 8, ptr noundef %i.bt, ptr noundef %i.bv, ptr noundef %i.bx, i32 noundef %i.cd, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  br label %.noexc.i30

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !262
  %i.cg = load ptr, ptr %i.l, align 8, !tbaa !252
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !260
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 5240
  %i.ck = sext i32 %i.ci to i64
  %i.cl = load ptr, ptr %i.cj, align 8, !tbaa !225
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ck
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !226
  %i.co = icmp ult i8 %i.cn, 17
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !258 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !258 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !266
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = ptrtoint ptr %i.cs to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = trunc i64 %i.cx to i32                  ; 2 uses
  br i1 %i.co, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 828
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !359
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !178
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20
  store ptr @_ZN8LightGBML24Int16HistogramSumReducerEPKcPcii, ptr %i.h, align 8, !tbaa !259
  call void @_ZN8LightGBM7Network13ReduceScatterEPciiPKiS3_S1_iRKPFvPKcS1_iiE(ptr noundef %i.cq, i32 noundef %i.da, i32 noundef 2, ptr noundef %i.dc, ptr noundef %i.de, ptr noundef %i.cs, i32 noundef %i.cy, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  br label %.noexc.i30

bb.f:                                             ; preds = %bb.d
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !358
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !178
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #20
  store ptr @_ZN8LightGBML24Int32HistogramSumReducerEPKcPcii, ptr %i.i, align 8, !tbaa !259
  call void @_ZN8LightGBM7Network13ReduceScatterEPciiPKiS3_S1_iRKPFvPKcS1_iiE(ptr noundef %i.cq, i32 noundef %i.dg, i32 noundef 4, ptr noundef %i.di, ptr noundef %i.dk, ptr noundef %i.cs, i32 noundef %i.cy, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #20
  br label %.noexc.i30

.noexc.i30:                                       ; preds = %bb.c, %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.dl = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.dl, ptr %6, align 8, !tbaa !263
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i64 55, ptr %i.b, align 8, !tbaa !251
  %i.dm = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 3 uses
  store ptr %i.dm, ptr %6, align 8, !tbaa !264
  %i.dn = load i64, ptr %i.b, align 8, !tbaa !251 ; 3 uses
  store i64 %i.dn, ptr %i.dl, align 8, !tbaa !226
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.dm, ptr noundef nonnull align 1 dereferenceable(55) @.str.10, i64 55, i1 false)
  %i.do = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.dn, ptr %i.do, align 8, !tbaa !265
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dn
  store i8 0, ptr %i.dp, align 1, !tbaa !226
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.dq = load ptr, ptr %6, align 8, !tbaa !264   ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.dl
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %.noexc.i30
  %i.ds = load i64, ptr %i.dl, align 8, !tbaa !226
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.dt) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %.noexc.i30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.du = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.du, ptr %7, align 8, !tbaa !263
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 40, ptr %i.a, align 8, !tbaa !251
  %i.dv = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.dv, ptr %7, align 8, !tbaa !264
  %i.dw = load i64, ptr %i.a, align 8, !tbaa !251 ; 3 uses
  store i64 %i.dw, ptr %i.du, align 8, !tbaa !226
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.dv, ptr noundef nonnull align 1 dereferenceable(40) @.str.7, i64 40, i1 false)
  %i.dx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !265
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dw
  store i8 0, ptr %i.dy, align 1, !tbaa !226
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.dz = load ptr, ptr %7, align 8, !tbaa !264   ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.du
  br i1 %i.ea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %i.eb = load i64, ptr %i.du, align 8, !tbaa !226
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ec) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.ed = load ptr, ptr %0, align 8, !tbaa !182
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 168
  %i.ef = load ptr, ptr %i.ee, align 8
  call void %i.ef(ptr noundef nonnull align 8 dereferenceable(856) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i1 noundef zeroext true, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN8LightGBM23DataParallelTreeLearnerINS_17SerialTreeLearnerEE28FindBestSplitsFromHistogramsERKSt6vectorIaSaIaEEbPKNS_4TreeE(ptr noundef nonnull align 8 dereferenceable(856) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %7 = alloca %"class.std::vector", align 8       ; 15 uses
  %8 = alloca %"class.std::vector", align 8       ; 15 uses
  %9 = alloca %"class.std::vector.40", align 8    ; 9 uses
  %10 = alloca %"class.std::vector.40", align 8   ; 9 uses
  %i.a = alloca double, align 8                   ; 5 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %11 = alloca %class.ThreadExceptionHelper, align 8 ; 7 uses
  %12 = alloca %class.ThreadExceptionHelper, align 8 ; 8 uses
  %13 = alloca %"struct.LightGBM::SplitInfo", align 8 ; 12 uses
  %14 = alloca %"struct.LightGBM::SplitInfo", align 8 ; 19 uses
  %i.c = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !156  ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !267  ; 5 uses
  %i.g = sext i32 %i.f to i64                     ; 4 uses
  %i.h = icmp slt i32 %i.f, 0
  br i1 %i.h, label %.noexc, label %_ZNSt6vectorIN8LightGBM9SplitInfoESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #32
  unreachable

_ZNSt6vectorIN8LightGBM9SplitInfoESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN8LightGBM9SplitInfoESaIS1_EEC2EmRKS2_.exit.thread.i, label %_ZNSt12_Vector_baseIN8LightGBM9SplitInfoESaIS1_EEC2EmRKS2_.exit.i

_ZNSt12_Vector_baseIN8LightGBM9SplitInfoESaIS1_EEC2EmRKS2_.exit.thread.i: ; preds = %_ZNSt6vectorIN8LightGBM9SplitInfoESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  br label %.loopexit116

_ZNSt12_Vector_baseIN8LightGBM9SplitInfoESaIS1_EEC2EmRKS2_.exit.i: ; preds = %_ZNSt6vectorIN8LightGBM9SplitInfoESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.i = shl nuw nsw i64 %i.g, 7
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #33 ; 11 uses
  store ptr %i.j, ptr %7, align 8, !tbaa !268
  %i.k = getelementptr inbounds nuw [128 x i8], ptr %i.j, i64 %i.g
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !269
  %i.m = and i32 %i.f, 1
  %lcmp.mod.not = icmp eq i32 %i.m, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseIN8LightGBM9SplitInfoESaIS1_EEC2EmRKS2_.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.n, i8 0, i64 112, i1 false)
  store i32 -1, ptr %i.j, align 8, !tbaa !271
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  store double -inf, ptr %i.q, align 8, !tbaa !272
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.r, i8 0, i64 72, i1 false)
  store i8 1, ptr %i.s, align 8, !tbaa !273
  %i.t = add nsw i64 %i.g, -1
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 128 ; 2 uses
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseIN8LightGBM9SplitInfoESaIS1_EEC2EmRKS2_.exit.i
  %.lcssa166.unr = phi ptr [ poison, %_ZNSt12_Vector_baseIN8LightGBM9SplitInfoESaIS1_EEC2EmRKS2_.exit.i ], [ %i.u, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.j, %_ZNSt12_Vector_baseIN8LightGBM9SplitInfoESaIS1_EEC2EmRKS2_.exit.i ], [ %i.u, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.g, %_ZNSt12_Vector_baseIN8LightGBM9SplitInfoESaIS1_EEC2EmRKS2_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %i.v = icmp eq i32 %i.f, 1
  br i1 %i.v, label %.loopexit116.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 15 uses
  %.057.i.i.i.i.i = phi i64 [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.w, i8 0, i64 112, i1 false)
  store i32 -1, ptr %.08.i.i.i.i.i, align 8, !tbaa !271
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  store double -inf, ptr %i.z, align 8, !tbaa !272
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aa, i8 0, i64 72, i1 false)
  store i8 1, ptr %i.ab, align 8, !tbaa !273
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ad, i8 0, i64 112, i1 false)
  store i32 -1, ptr %i.ac, align 8, !tbaa !271
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 132
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 152
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  store double -inf, ptr %i.ag, align 8, !tbaa !272
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 176
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 248
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ah, i8 0, i64 72, i1 false)
  store i8 1, ptr %i.ai, align 8, !tbaa !273
  %i.aj = add nsw i64 %.057.i.i.i.i.i, -2         ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 256 ; 2 uses
  %.not.i.i.i.i.i.1 = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i.i.i.i.1, label %.loopexit116.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

.loopexit116.loopexit:                            ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa166 = phi ptr [ %.lcssa166.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ak, %.lr.ph.i.i.i.i.i ]
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !156
  br label %.loopexit116

.loopexit116:                                     ; preds = %.loopexit116.loopexit, %_ZNSt12_Vector_baseIN8LightGBM9SplitInfoESaIS1_EEC2EmRKS2_.exit.thread.i
  %i.al = phi ptr [ %i.e, %_ZNSt12_Vector_baseIN8LightGBM9SplitInfoESaIS1_EEC2EmRKS2_.exit.thread.i ], [ %.pre, %.loopexit116.loopexit ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN8LightGBM9SplitInfoESaIS1_EEC2EmRKS2_.exit.thread.i ], [ %.lcssa166, %.loopexit116.loopexit ]
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.am, align 8, !tbaa !274
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.an = load i32, ptr %i.al, align 8, !tbaa !267 ; 5 uses
  %i.ao = sext i32 %i.an to i64                   ; 4 uses
  %i.ap = icmp slt i32 %i.an, 0
  br i1 %i.ap, label %bb.b, label %_ZNSt6vectorIN8LightGBM9SplitInfoESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i38

bb.b:                                             ; preds = %.loopexit116
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #32
          to label %.noexc47 unwind label %bb.l

.noexc47:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorIN8LightGBM9SplitInfoESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i38: ; preds = %.loopexit116
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %.not.i.i.i.i39 = icmp eq i32 %i.an, 0
  br i1 %.not.i.i.i.i39, label %.loopexit, label %_ZNSt12_Vector_baseIN8LightGBM9SplitInfoESaIS1_EEC2EmRKS2_.exit.i40

_ZNSt12_Vector_baseIN8LightGBM9SplitInfoESaIS1_EEC2EmRKS2_.exit.i40: ; preds = %_ZNSt6vectorIN8LightGBM9SplitInfoESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i38
  %i.aq = shl nuw nsw i64 %i.ao, 7
  %i.ar = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #33
end_hunk_1
begin_hunk_2_@_ZN8LightGBML24Int16HistogramSumReducerEPKcPcii.omp_outlined:bb.a

.lr.ph:                                           ; preds = %bb.b
  %i.l = load ptr, ptr %4, align 8, !tbaa !224
  %i.m = load ptr, ptr %3, align 8, !tbaa !224
  %i.n = sext i32 %i.k to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %i.n, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %i.o = getelementptr inbounds [4 x i8], ptr %i.l, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !203
  %i.q = getelementptr inbounds [4 x i8], ptr %i.m, i64 %indvars.iv ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !203
  %i.s = add nsw i32 %i.r, %i.p
  store i32 %i.s, ptr %i.q, align 4, !tbaa !203
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.t = load i32, ptr %i.b, align 4, !tbaa !203
  %i.u = sext i32 %i.t to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.u
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN8LightGBML24Int32HistogramSumReducerEPKcPcii.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4) #19 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !203    ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 0, ptr %i.a, align 4, !tbaa !203
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i32 %i.g, ptr %i.b, align 4, !tbaa !203
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i32 1, ptr %i.c, align 4, !tbaa !203
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i32 0, ptr %i.d, align 4, !tbaa !203
  %i.h = load i32, ptr %0, align 4, !tbaa !203    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !203
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 6 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !203
  %i.k = load i32, ptr %i.a, align 4, !tbaa !203  ; 3 uses
  %.not14 = icmp sgt i32 %i.k, %i.j
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = load ptr, ptr %4, align 8, !tbaa !307    ; 8 uses
  %i.m = load ptr, ptr %3, align 8, !tbaa !307    ; 8 uses
  %i.n = sext i32 %i.k to i64                     ; 6 uses
  %i.o = add nsw i32 %i.j, 1
  %i.p = sub i32 %i.j, %i.k                       ; 2 uses
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = add nuw nsw i64 %i.q, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.p, 13
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.s = shl nsw i64 %i.n, 3                      ; 2 uses
  %i.t = getelementptr i8, ptr %i.m, i64 %i.s
  %i.u = add nsw i64 %i.n, %i.q
  %i.v = shl nsw i64 %i.u, 3
  %i.w = add nsw i64 %i.v, 8                      ; 2 uses
  %i.x = getelementptr i8, ptr %i.m, i64 %i.w
  %i.y = getelementptr i8, ptr %i.l, i64 %i.s
  %i.z = getelementptr i8, ptr %i.l, i64 %i.w
  %bound0 = icmp ult ptr %i.t, %i.z
  %bound1 = icmp ult ptr %i.y, %i.x
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.r, 8589934588               ; 3 uses
  %i.aa = add nsw i64 %n.vec, %i.n
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = add i64 %index, %i.n                    ; 2 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %wide.load = load <2 x i64>, ptr %i.ac, align 8, !tbaa !251, !alias.scope !384
  %wide.load22 = load <2 x i64>, ptr %i.ad, align 8, !tbaa !251, !alias.scope !384
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ab ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %wide.load23 = load <2 x i64>, ptr %i.ae, align 8, !tbaa !251, !alias.scope !385, !noalias !384
  %wide.load24 = load <2 x i64>, ptr %i.af, align 8, !tbaa !251, !alias.scope !385, !noalias !384
  %i.ag = add nsw <2 x i64> %wide.load23, %wide.load
  %i.ah = add nsw <2 x i64> %wide.load24, %wide.load22
  store <2 x i64> %i.ag, ptr %i.ae, align 8, !tbaa !251, !alias.scope !385, !noalias !384
  store <2 x i64> %i.ah, ptr %i.af, align 8, !tbaa !251, !alias.scope !385, !noalias !384
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !381

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.n, %vector.memcheck ], [ %i.n, %.lr.ph ], [ %i.aa, %middle.block ] ; 3 uses
  %i.aj = add i32 %i.j, 1
  %i.ak = trunc i64 %indvars.iv.ph to i32         ; 2 uses
  %i.al = sub i32 %i.aj, %i.ak
  %i.am = sub i32 %i.j, %i.ak
  %xtraiter = and i32 %i.al, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.an = getelementptr inbounds [8 x i8], ptr %i.l, i64 %indvars.iv.prol
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !251
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.m, i64 %indvars.iv.prol ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !251
  %i.ar = add nsw i64 %i.aq, %i.ao
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !251
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !382

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.as = icmp ult i32 %i.am, 3
  br i1 %i.as, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.au = load i64, ptr %i.at, align 8, !tbaa !251
  %i.av = getelementptr inbounds [8 x i8], ptr %i.m, i64 %indvars.iv ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !251
  %i.ax = add nsw i64 %i.aw, %i.au
  store i64 %i.ax, ptr %i.av, align 8, !tbaa !251
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.l, i64 %indvars.iv.next
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !251
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.m, i64 %indvars.iv.next ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !251
  %i.bc = add nsw i64 %i.bb, %i.az
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !251
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.l, i64 %indvars.iv.next.1
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !251
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.m, i64 %indvars.iv.next.1 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !251
  %i.bh = add nsw i64 %i.bg, %i.be
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !251
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.l, i64 %indvars.iv.next.2
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !251
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.m, i64 %indvars.iv.next.2 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !251
  %i.bm = add nsw i64 %i.bl, %i.bj
  store i64 %i.bm, ptr %i.bk, align 8, !tbaa !251
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 2 uses
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next.3 to i32
  %exitcond.not.3 = icmp eq i32 %i.o, %lftr.wideiv.3
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !383

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM10ColSampler9GetByNodeEPKNS_4TreeEi(ptr dead_on_unwind noalias writable sret(%"class.std::vector.40") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %5 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %6 = alloca %"class.std::unordered_set", align 8 ; 23 uses
  %7 = alloca %"class.std::unordered_set", align 8 ; 15 uses
  %8 = alloca %"class.std::vector.40", align 16   ; 21 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %9 = alloca %"class.std::vector.35", align 8    ; 14 uses
  %10 = alloca %"class.std::vector.35", align 8   ; 12 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %11 = alloca %"class.std::vector.35", align 8   ; 12 uses
  %12 = alloca %"class.std::vector.35", align 8   ; 12 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = alloca i32, align 4                      ; 2 uses
  %i.g = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store ptr %i.h, ptr %6, align 8, !tbaa !309
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 9 uses
  store i64 1, ptr %i.i, align 8, !tbaa !310
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.k, align 8, !tbaa !393
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 5 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !394
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 5 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !394
  %i.q = icmp eq ptr %i.n, %i.p
  br i1 %i.q, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 512
  %i.s = sext i32 %3 to i64
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !199, !noalias !395
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.s ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !177, !noalias !395 ; 2 uses
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !178, !noalias !395 ; 3 uses
  %i.y = ptrtoint ptr %i.w to i64                 ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64                 ; 2 uses
  %i.aa = sub i64 %i.y, %i.z                      ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.w, %i.x
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = icmp ugt i64 %i.aa, 9223372036854775804
  br i1 %i.ab, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, !prof !292

.noexc.i.i.i:                                     ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #32
          to label %.noexc unwind label %bb.j, !noalias !395

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.ac = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #33
          to label %.noexc60 unwind label %bb.j, !noalias !395

.noexc60:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i
  %.pre.i = load ptr, ptr %i.u, align 8, !tbaa !224, !noalias !395 ; 2 uses
  %.pre1.i = load ptr, ptr %i.v, align 8, !tbaa !224, !noalias !395
  %.pre2.i = ptrtoint ptr %.pre1.i to i64
  %.pre3.i = ptrtoint ptr %.pre.i to i64
  br label %bb.d

bb.d:                                             ; preds = %.noexc60, %bb.b
  %.pre-phi4.i = phi i64 [ %.pre3.i, %.noexc60 ], [ %i.z, %bb.b ] ; 2 uses
  %.pre-phi.i = phi i64 [ %.pre2.i, %.noexc60 ], [ %i.y, %bb.b ] ; 2 uses
  %i.ad = phi ptr [ %.pre.i, %.noexc60 ], [ %i.x, %bb.b ] ; 2 uses
  %i.ae = phi ptr [ %i.ac, %.noexc60 ], [ null, %bb.b ] ; 10 uses
  %i.af = sub i64 %.pre-phi.i, %.pre-phi4.i       ; 5 uses
  %i.ag = icmp sgt i64 %i.af, 4
  br i1 %i.ag, label %bb.e, label %bb.f, !prof !291

bb.e:                                             ; preds = %bb.d
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ae, ptr align 4 %i.ad, i64 %i.af, i1 false), !noalias !395
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.ah = icmp eq i64 %i.af, 4
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ai = load i32, ptr %i.ad, align 4, !tbaa !203, !noalias !395
  store i32 %i.ai, ptr %i.ae, align 4, !tbaa !203, !noalias !395
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.aj = getelementptr inbounds i8, ptr %i.ae, i64 %i.af ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr %6, ptr %5, align 8, !tbaa !397
  %.not6.i.i.i = icmp ne i64 %.pre-phi.i, %.pre-phi4.i ; 3 uses
  br i1 %.not6.i.i.i, label %.lr.ph.i.i.i, label %.loopexit284

.lr.ph.i.i.i:                                     ; preds = %bb.h, %.noexc61
  %.sroa.03.07.i.i.i = phi ptr [ %i.al, %.noexc61 ], [ %i.ae, %bb.h ] ; 3 uses
  %i.ak = invoke { ptr, i8 } @_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRiSE_NS1_10_AllocNodeISaINS1_10_Hash_nodeIiLb0EEEEEEEESt4pairINS1_14_Node_iteratorIiLb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.03.07.i.i.i, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.03.07.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc61 unwind label %bb.k   ; 0 uses

.noexc61:                                         ; preds = %.lr.ph.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.al, %i.aj
  br i1 %.not.i.i.i, label %.loopexit284, label %.lr.ph.i.i.i, !llvm.loop !388

.loopexit284:                                     ; preds = %.noexc61, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.am = load ptr, ptr %i.m, align 8, !tbaa !394 ; 2 uses
  %i.an = load ptr, ptr %i.o, align 8, !tbaa !394 ; 2 uses
  %.not290 = icmp eq ptr %i.am, %i.an
  br i1 %.not290, label %._crit_edge, label %.lr.ph292

.lr.ph292:                                        ; preds = %.loopexit284
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.at = lshr exact i64 %i.af, 2
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.av = trunc i64 %i.at to i32                  ; 2 uses
  br label %bb.l

._crit_edge:                                      ; preds = %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit, %.loopexit284
  %.not.i.i.i62 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i62, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.aa) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.j:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit78

bb.k:                                             ; preds = %.lr.ph.i.i.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.l:                                             ; preds = %.lr.ph292, %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit
  %.sroa.0221.0291 = phi ptr [ %i.am, %.lr.ph292 ], [ %i.fe, %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  store ptr null, ptr %7, align 8, !tbaa !309
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0221.0291, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !310
  store i64 %i.az, ptr %i.ao, align 8, !tbaa !310
  store ptr null, ptr %i.ap, align 8, !tbaa !311
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0221.0291, i64 24
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !312
  store i64 %i.bb, ptr %i.aq, align 8, !tbaa !312
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0221.0291, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i64 16, i1 false), !tbaa.struct !399
  store ptr null, ptr %i.as, align 8, !tbaa !313
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store ptr %7, ptr %4, align 8, !tbaa !397
  invoke void @_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_assignIRKSC_NS1_10_AllocNodeISaINS1_10_Hash_nodeIiLb0EEEEEEEEvOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0221.0291, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.m unwind label %bb.s

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.bd = load ptr, ptr %i.ap, align 8            ; 2 uses
  %.not6.i.i.i64 = icmp eq ptr %i.bd, null
  %or.cond = select i1 %.not6.i.i.i, i1 true, i1 %.not6.i.i.i64
  br i1 %or.cond, label %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE6insertINSt8__detail14_Node_iteratorIiLb1ELb0EEEEEvT_SA_.exit, label %.lr.ph.i.i.i65

.lr.ph.i.i.i65:                                   ; preds = %bb.m, %.noexc68
  %.sroa.03.07.i.i.i66 = phi ptr [ %i.ck, %.noexc68 ], [ %i.bd, %bb.m ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i66, i64 8 ; 2 uses
  %i.bf = load i64, ptr %i.au, align 8, !tbaa !312
  %.not.not.i = icmp eq i64 %i.bf, 0
  %i.bg = load i32, ptr %i.be, align 4            ; 5 uses
  br i1 %.not.not.i, label %.preheader441, label %.thread34.i

.thread34.i:                                      ; preds = %.lr.ph.i.i.i65
  %i.bh = sext i32 %i.bg to i64                   ; 4 uses
  %i.bi = load i64, ptr %i.i, align 8, !tbaa !310 ; 2 uses
  %i.bj = urem i64 %i.bh, %i.bi                   ; 5 uses
  %i.bk = load ptr, ptr %6, align 8, !tbaa !309
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bj
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !314 ; 2 uses
  %.not.i.i.i158 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i158, label %.critedge.i, label %bb.p

.preheader441:                                    ; preds = %.lr.ph.i.i.i65, %bb.n
  %.sroa.028.0.in.i = phi ptr [ %.sroa.028.0.i, %bb.n ], [ %i.j, %.lr.ph.i.i.i65 ]
  %.sroa.028.0.i = load ptr, ptr %.sroa.028.0.in.i, align 8, !tbaa !311 ; 3 uses
  %.not.i160 = icmp eq ptr %.sroa.028.0.i, null
  br i1 %.not.i160, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.preheader441
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.028.0.i, i64 8
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !203
  %i.bp = icmp eq i32 %i.bg, %i.bo
  br i1 %i.bp, label %.noexc68, label %.preheader441, !llvm.loop !389

bb.o:                                             ; preds = %.preheader441
  %i.bq = sext i32 %i.bg to i64                   ; 2 uses
  %i.br = load i64, ptr %i.i, align 8, !tbaa !310
  %i.bs = urem i64 %i.bq, %i.br
  br label %.critedge.i

bb.p:                                             ; preds = %.thread34.i
  %i.bt = load ptr, ptr %i.bm, align 8, !tbaa !311 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !203
  %i.bw = icmp eq i32 %i.bg, %i.bv
  br i1 %i.bw, label %.noexc68, label %.lr.ph.i.i.i159

bb.q:                                             ; preds = %bb.r
  %i.bx = icmp eq i32 %i.bg, %i.ca
  br i1 %i.bx, label %.noexc68, label %.lr.ph.i.i.i159, !llvm.loop !4

.lr.ph.i.i.i159:                                  ; preds = %bb.p, %bb.q
  %.020.i.i.i = phi ptr [ %i.by, %bb.q ], [ %i.bt, %bb.p ]
  %i.by = load ptr, ptr %.020.i.i.i, align 8, !tbaa !311 ; 3 uses
  %.not18.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not18.i.i.i, label %.critedge.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i159
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !203 ; 2 uses
  %i.cb = sext i32 %i.ca to i64
  %i.cc = urem i64 %i.cb, %i.bi
  %.not19.i.i.i = icmp eq i64 %i.cc, %i.bj
  br i1 %.not19.i.i.i, label %bb.q, label %..loopexit_crit_edge21.i.i.i, !llvm.loop !4

..loopexit_crit_edge21.i.i.i:                     ; preds = %bb.r
  br label %.critedge.i, !llvm.loop !4

.critedge.i:                                      ; preds = %.lr.ph.i.i.i159, %..loopexit_crit_edge21.i.i.i, %bb.o, %.thread34.i
  %i.cd = phi i64 [ %i.bs, %bb.o ], [ %i.bj, %.thread34.i ], [ %i.bj, %..loopexit_crit_edge21.i.i.i ], [ %i.bj, %.lr.ph.i.i.i159 ]
  %i.ce = phi i64 [ %i.bq, %bb.o ], [ %i.bh, %.thread34.i ], [ %i.bh, %..loopexit_crit_edge21.i.i.i ], [ %i.bh, %.lr.ph.i.i.i159 ]
  %i.cf = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #33
          to label %.noexc161 unwind label %.loopexit.split-lp278.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc161:                                        ; preds = %.critedge.i
  store ptr null, ptr %i.cf, align 8, !tbaa !311
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load i32, ptr %i.be, align 4, !tbaa !203
  store i32 %i.ch, ptr %i.cg, align 8, !tbaa !203
  %i.ci = invoke ptr @_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS1_10_Hash_nodeIiLb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %6, i64 noundef %i.cd, i64 noundef %i.ce, ptr noundef nonnull %i.cf, i64 noundef 1)
          to label %.noexc68 unwind label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i ; 0 uses

_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i: ; preds = %.noexc161
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef 16) #31
  br label %.body

.noexc68:                                         ; preds = %bb.q, %bb.n, %.noexc161, %bb.p
  %i.ck = load ptr, ptr %.sroa.03.07.i.i.i66, align 8, !tbaa !311 ; 2 uses
  %.not.i.i.i67 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i67, label %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE6insertINSt8__detail14_Node_iteratorIiLb1ELb0EEEEEvT_SA_.exit, label %.lr.ph.i.i.i65, !llvm.loop !390

bb.s:                                             ; preds = %bb.l
  %i.cl = landingpad { ptr, i32 }
end_hunk_2
begin_hunk_3_@_ZN8LightGBM10ColSampler9GetByNodeEPKNS_4TreeEi:bb.a
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit78

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.i, %._crit_edge, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.ff = load ptr, ptr %1, align 8, !tbaa !316
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 80
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !400 ; 3 uses
  %i.fi = sext i32 %i.fh to i64                   ; 3 uses
  %i.fj = icmp slt i32 %i.fh, 0
  br i1 %i.fj, label %bb.aj, label %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i

bb.aj:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #32
          to label %.noexc80 unwind label %bb.aq

.noexc80:                                         ; preds = %bb.aj
  unreachable

_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %.not.i.i.i.i79 = icmp eq i32 %i.fh, 0
  br i1 %.not.i.i.i.i79, label %_ZNSt12_Vector_baseIaSaIaEEC2EmRKS0_.exit.thread.i, label %bb.ak

_ZNSt12_Vector_baseIaSaIaEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i
  %i.fk = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %bb.al

bb.ak:                                            ; preds = %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i
  %i.fl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fi) #33
          to label %.noexc81 unwind label %bb.aq  ; 5 uses

.noexc81:                                         ; preds = %bb.ak
  store ptr %i.fl, ptr %8, align 16, !tbaa !225
  %i.fm = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr %i.fl, ptr %i.fm, align 8, !tbaa !401
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fi ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.fn, ptr %i.fo, align 16, !tbaa !281
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.fl, i8 0, i64 %i.fi, i1 false)
  br label %bb.al

bb.al:                                            ; preds = %.noexc81, %_ZNSt12_Vector_baseIaSaIaEEC2EmRKS0_.exit.thread.i
  %i.fp = phi ptr [ null, %_ZNSt12_Vector_baseIaSaIaEEC2EmRKS0_.exit.thread.i ], [ %i.fl, %.noexc81 ] ; 2 uses
  %i.fq = phi ptr [ %i.fk, %_ZNSt12_Vector_baseIaSaIaEEC2EmRKS0_.exit.thread.i ], [ %i.fm, %.noexc81 ]
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIaSaIaEEC2EmRKS0_.exit.thread.i ], [ %i.fn, %.noexc81 ] ; 3 uses
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.fq, align 8, !tbaa !401
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !402 ; 3 uses
  %i.ft = fcmp ult double %i.fs, 1.000000e+00
  br i1 %i.ft, label %bb.av, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fu = load ptr, ptr %i.m, align 8, !tbaa !394
  %i.fv = load ptr, ptr %i.o, align 8, !tbaa !394
  %i.fw = icmp eq ptr %i.fu, %i.fv
  br i1 %i.fw, label %bb.an, label %bb.as

bb.an:                                            ; preds = %bb.am
  %i.fx = load ptr, ptr %1, align 8, !tbaa !316
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 80
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !400 ; 3 uses
  %i.ga = sext i32 %i.fz to i64                   ; 3 uses
  %i.gb = icmp slt i32 %i.fz, 0
  br i1 %i.gb, label %bb.ao, label %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i82

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #32
          to label %.noexc86 unwind label %bb.ar

.noexc86:                                         ; preds = %bb.ao
  unreachable

_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i82: ; preds = %bb.an
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i83 = icmp eq i32 %i.fz, 0
  br i1 %.not.i.i.i.i83, label %_ZNSt12_Vector_baseIaSaIaEEC2EmRKS0_.exit.thread.i85, label %bb.ap

_ZNSt12_Vector_baseIaSaIaEEC2EmRKS0_.exit.thread.i85: ; preds = %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i82
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.cu

bb.ap:                                            ; preds = %_ZNSt6vectorIaSaIaEE17_S_check_init_lenEmRKS0_.exit.i82
  %i.gd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ga) #33
          to label %.noexc87 unwind label %bb.ar  ; 4 uses

.noexc87:                                         ; preds = %bb.ap
  store ptr %i.gd, ptr %0, align 8, !tbaa !225
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.gd, ptr %i.ge, align 8, !tbaa !401
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.ga ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.gf, ptr %i.gg, align 8, !tbaa !281
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.gd, i8 1, i64 %i.ga, i1 false)
  %.pr.pre = load ptr, ptr %8, align 16, !tbaa !225
  br label %bb.cu

bb.aq:                                            ; preds = %bb.ak, %bb.aj
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit157

bb.ar:                                            ; preds = %bb.ap, %bb.ao
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

bb.as:                                            ; preds = %bb.am
  %i.gj = load ptr, ptr %i.j, align 8, !tbaa !315 ; 2 uses
  %.not255293 = icmp eq ptr %i.gj, null
  %i.gk = insertelement <2 x ptr> poison, ptr %i.fp, i64 0
  %i.gl = insertelement <2 x ptr> %i.gk, ptr %.0.i.i.i.i.i.i.i, i64 1
  br i1 %.not255293, label %._crit_edge297, label %.lr.ph296.preheader

.lr.ph296.preheader:                              ; preds = %bb.as
  %.pre324 = load ptr, ptr %1, align 8, !tbaa !316
  br label %.lr.ph296

._crit_edge297.loopexit:                          ; preds = %bb.au
  %i.gm = load <2 x ptr>, ptr %8, align 16, !tbaa !403
  %.phi.trans.insert327 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.pre328 = load ptr, ptr %.phi.trans.insert327, align 16, !tbaa !281
  br label %._crit_edge297

._crit_edge297:                                   ; preds = %._crit_edge297.loopexit, %bb.as
  %i.gn = phi ptr [ %.pre328, %._crit_edge297.loopexit ], [ %.0.i.i.i.i.i.i.i, %bb.as ]
  %i.go = phi <2 x ptr> [ %i.gm, %._crit_edge297.loopexit ], [ %i.gl, %bb.as ]
  store <2 x ptr> %i.go, ptr %0, align 8, !tbaa !403
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.gn, ptr %i.gp, align 8, !tbaa !281
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit

.lr.ph296:                                        ; preds = %.lr.ph296.preheader, %bb.au
  %i.gq = phi ptr [ %i.hc, %bb.au ], [ %.pre324, %.lr.ph296.preheader ] ; 2 uses
  %.sroa.0207.0294 = phi ptr [ %i.hd, %bb.au ], [ %i.gj, %.lr.ph296.preheader ] ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.0207.0294, i64 8
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !203
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 56
  %i.gu = sext i32 %i.gs to i64
  %i.gv = load ptr, ptr %i.gt, align 8, !tbaa !178
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %i.gu
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !203 ; 2 uses
  %i.gy = icmp sgt i32 %i.gx, -1
  br i1 %i.gy, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.lr.ph296
  %i.gz = zext nneg i32 %i.gx to i64
  %i.ha = load ptr, ptr %8, align 16, !tbaa !225
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.gz
  store i8 1, ptr %i.hb, align 1, !tbaa !226
  %.pre = load ptr, ptr %1, align 8, !tbaa !316
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.lr.ph296
  %i.hc = phi ptr [ %.pre, %bb.at ], [ %i.gq, %.lr.ph296 ]
  %i.hd = load ptr, ptr %.sroa.0207.0294, align 8, !tbaa !311 ; 2 uses
  %.not255 = icmp eq ptr %i.hd, null
  br i1 %.not255, label %._crit_edge297.loopexit, label %.lr.ph296

bb.av:                                            ; preds = %bb.al
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.hf = load i8, ptr %i.he, align 8, !tbaa !404, !range !154, !noundef !155
  %i.hg = trunc nuw i8 %i.hf to i1
  br i1 %i.hg, label %bb.aw, label %bb.bu

bb.aw:                                            ; preds = %bb.av
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !177 ; 3 uses
  %i.hk = load ptr, ptr %i.hh, align 8, !tbaa !178 ; 3 uses
  %i.hl = ptrtoint ptr %i.hj to i64
  %i.hm = ptrtoint ptr %i.hk to i64               ; 2 uses
  %i.hn = sub i64 %i.hl, %i.hm
  %i.ho = ashr exact i64 %i.hn, 2                 ; 2 uses
  %i.hp = trunc i64 %i.ho to i32
  %.sroa.speculated5.i = call i32 @llvm.smin.i32(i32 %i.hp, i32 1)
  %i.hq = uitofp i64 %i.ho to double
  %i.hr = fmul double %i.fs, %i.hq
  %i.hs = fadd double %i.hr, 5.000000e-01
  %i.ht = fptosi double %i.hs to i32
  %.sroa.speculated.i = call noundef i32 @llvm.smax.i32(i32 %.sroa.speculated5.i, i32 %i.ht) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.hu = load ptr, ptr %i.m, align 8, !tbaa !394
  %i.hv = load ptr, ptr %i.o, align 8, !tbaa !394
  %i.hw = icmp eq ptr %i.hu, %i.hv
  br i1 %i.hw, label %bb.bi, label %.preheader

.preheader:                                       ; preds = %bb.aw
  %.not257302 = icmp eq ptr %i.hk, %i.hj
  br i1 %.not257302, label %._crit_edge305, label %.lr.ph304

.lr.ph304:                                        ; preds = %.preheader
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.hy = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.hz = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %9, i64 16
  br label %bb.ax

._crit_edge305.loopexit:                          ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.ib = ptrtoint ptr %i.jy to i64
  br label %._crit_edge305

._crit_edge305:                                   ; preds = %._crit_edge305.loopexit, %.preheader
  %.pre333 = phi i64 [ 0, %.preheader ], [ %i.ib, %._crit_edge305.loopexit ]
  %.lcssa302 = phi ptr [ null, %.preheader ], [ %i.jz, %._crit_edge305.loopexit ] ; 2 uses
  store ptr %.lcssa302, ptr %9, align 8
  %13 = ptrtoint ptr %.lcssa302 to i64            ; 2 uses
  %i.ic = sub i64 %.pre333, %13
  %i.id = lshr exact i64 %i.ic, 2
  %i.ie = trunc i64 %i.id to i32
  %.sroa.speculated194 = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i, i32 %i.ie)
  br label %bb.bi

bb.ax:                                            ; preds = %.lr.ph304, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.if = phi ptr [ null, %.lr.ph304 ], [ %i.jx, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 7 uses
  %i.ig = phi ptr [ null, %.lr.ph304 ], [ %i.jy, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 7 uses
  %i.ih = phi ptr [ %i.hk, %.lr.ph304 ], [ %i.ka, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 2 uses
  %.sroa.0200.0303 = phi ptr [ null, %.lr.ph304 ], [ %i.jz, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 13 uses
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !203 ; 3 uses
  %i.ij = sext i32 %i.ii to i64
  %i.ik = load ptr, ptr %i.hx, align 8, !tbaa !178
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %i.ij
  %i.im = load i64, ptr %i.hy, align 8, !tbaa !312
  %.not.not.i.i.i89 = icmp eq i64 %i.im, 0
  %i.in = load i32, ptr %i.il, align 4            ; 4 uses
  br i1 %.not.not.i.i.i89, label %.preheader431, label %bb.az

.preheader431:                                    ; preds = %bb.ax, %bb.ay
  %.sroa.06.0.in.i.i.i99 = phi ptr [ %.sroa.06.0.i.i.i100, %bb.ay ], [ %i.j, %bb.ax ]
  %.sroa.06.0.i.i.i100 = load ptr, ptr %.sroa.06.0.in.i.i.i99, align 8, !tbaa !311 ; 3 uses
  %.not.i.i.i101 = icmp eq ptr %.sroa.06.0.i.i.i100, null
  br i1 %.not.i.i.i101, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %bb.ay

bb.ay:                                            ; preds = %.preheader431
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i100, i64 8
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !203
  %i.iq = icmp eq i32 %i.in, %i.ip
  br i1 %i.iq, label %.loopexit, label %.preheader431, !llvm.loop !391

bb.az:                                            ; preds = %bb.ax
  %i.ir = sext i32 %i.in to i64
  %i.is = load i64, ptr %i.i, align 8, !tbaa !310 ; 2 uses
  %i.it = urem i64 %i.ir, %i.is                   ; 2 uses
  %i.iu = load ptr, ptr %6, align 8, !tbaa !309
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %i.it
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !314 ; 2 uses
  %.not.i.i.i.i.i90 = icmp eq ptr %i.iw, null
  br i1 %.not.i.i.i.i.i90, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !311 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !203
  %i.ja = icmp eq i32 %i.in, %i.iz
  br i1 %i.ja, label %.loopexit, label %.lr.ph.i.i.i.i.i91

bb.bb:                                            ; preds = %bb.bc
  %i.jb = icmp eq i32 %i.in, %i.je
  br i1 %i.jb, label %.loopexit, label %.lr.ph.i.i.i.i.i91, !llvm.loop !392

.lr.ph.i.i.i.i.i91:                               ; preds = %bb.ba, %bb.bb
  %.020.i.i.i.i.i92 = phi ptr [ %i.jc, %bb.bb ], [ %i.ix, %bb.ba ]
  %i.jc = load ptr, ptr %.020.i.i.i.i.i92, align 8, !tbaa !311 ; 3 uses
  %.not18.i.i.i.i.i93 = icmp eq ptr %i.jc, null
  br i1 %.not18.i.i.i.i.i93, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph.i.i.i.i.i91
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !203 ; 2 uses
  %i.jf = sext i32 %i.je to i64
  %i.jg = urem i64 %i.jf, %i.is
  %.not19.i.i.i.i.i94 = icmp eq i64 %i.jg, %i.it
  br i1 %.not19.i.i.i.i.i94, label %bb.bb, label %..loopexit_crit_edge21.i.i.i.i.i95, !llvm.loop !392

..loopexit_crit_edge21.i.i.i.i.i95:               ; preds = %bb.bc
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, !llvm.loop !392

.loopexit:                                        ; preds = %bb.bb, %bb.ay, %bb.ba
  %.not.i = icmp eq ptr %i.ig, %i.if
  br i1 %.not.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %.loopexit
  store i32 %i.ii, ptr %i.ig, align 4, !tbaa !203
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ig, i64 4 ; 2 uses
  store ptr %i.jh, ptr %i.hz, align 8, !tbaa !177
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.be:                                            ; preds = %.loopexit
  %i.ji = ptrtoint ptr %i.if to i64
  %i.jj = ptrtoint ptr %.sroa.0200.0303 to i64
  %i.jk = sub i64 %i.ji, %i.jj                    ; 6 uses
  %i.jl = icmp eq i64 %i.jk, 9223372036854775804
  br i1 %i.jl, label %bb.bf, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.bf:                                            ; preds = %bb.be
  store ptr %.sroa.0200.0303, ptr %9, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #32
          to label %.noexc104 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc104:                                        ; preds = %bb.bf
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.be
  %i.jm = ashr exact i64 %i.jk, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.jm, i64 1)
  %i.jn = add nsw i64 %.sroa.speculated.i.i.i, %i.jm ; 2 uses
  %i.jo = icmp ult i64 %i.jn, %i.jm
  %i.jp = call i64 @llvm.umin.i64(i64 %i.jn, i64 2305843009213693951)
  %i.jq = select i1 %i.jo, i64 2305843009213693951, i64 %i.jp ; 3 uses
  %.not.i.i.i103 = icmp ne i64 %i.jq, 0
  call void @llvm.assume(i1 %.not.i.i.i103)
  %i.jr = shl nuw nsw i64 %i.jq, 2
  %i.js = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jr) #33
          to label %.noexc105 unwind label %.loopexit260 ; 4 uses

.noexc105:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.jt = getelementptr inbounds i8, ptr %i.js, i64 %i.jk ; 2 uses
  store i32 %i.ii, ptr %i.jt, align 4, !tbaa !203
  %i.ju = icmp sgt i64 %i.jk, 0
  br i1 %i.ju, label %bb.bg, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.bg:                                            ; preds = %.noexc105
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.js, ptr align 4 %.sroa.0200.0303, i64 %i.jk, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.bg, %.noexc105
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %.sroa.0200.0303, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0200.0303, i64 noundef %i.jk) #31
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.bh, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.jv, ptr %i.hz, align 8, !tbaa !177
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.jq ; 2 uses
  store ptr %i.jw, ptr %i.ia, align 8, !tbaa !202
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

.loopexit260:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.0200.0303, ptr %9, align 8
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bf
  %lpad.loopexit.split-lp459 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %.lr.ph.i.i.i.i.i91, %.preheader431, %bb.az, %..loopexit_crit_edge21.i.i.i.i.i95, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.bd
  %i.jx = phi ptr [ %i.if, %.preheader431 ], [ %i.if, %bb.bd ], [ %i.if, %bb.az ], [ %i.if, %..loopexit_crit_edge21.i.i.i.i.i95 ], [ %i.jw, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.if, %.lr.ph.i.i.i.i.i91 ]
  %i.jy = phi ptr [ %i.ig, %.preheader431 ], [ %i.jh, %bb.bd ], [ %i.ig, %bb.az ], [ %i.ig, %..loopexit_crit_edge21.i.i.i.i.i95 ], [ %i.jv, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.ig, %.lr.ph.i.i.i.i.i91 ] ; 2 uses
  %i.jz = phi ptr [ %.sroa.0200.0303, %.preheader431 ], [ %.sroa.0200.0303, %bb.bd ], [ %.sroa.0200.0303, %bb.az ], [ %.sroa.0200.0303, %..loopexit_crit_edge21.i.i.i.i.i95 ], [ %i.js, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.0200.0303, %.lr.ph.i.i.i.i.i91 ] ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.ih, i64 4 ; 2 uses
  %.not257 = icmp eq ptr %i.ka, %i.hj
  br i1 %.not257, label %._crit_edge305.loopexit, label %bb.ax

bb.bi:                                            ; preds = %bb.aw, %._crit_edge305
  %.pre-phi = phi i64 [ %i.hm, %bb.aw ], [ %13, %._crit_edge305 ]
  %.0236 = phi i32 [ %.sroa.speculated.i, %bb.aw ], [ %.sroa.speculated194, %._crit_edge305 ]
  %storemerge = phi ptr [ %i.hh, %bb.aw ], [ %9, %._crit_edge305 ] ; 2 uses
  store ptr %storemerge, ptr %i.a, align 8, !tbaa !317
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.kb = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.kc = getelementptr inbounds nuw i8, ptr %storemerge, i64 8
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !177
  %i.ke = ptrtoint ptr %i.kd to i64
  %i.kf = sub i64 %i.ke, %.pre-phi
  %i.kg = lshr exact i64 %i.kf, 2
  %i.kh = trunc i64 %i.kg to i32
  invoke void @_ZN8LightGBM6Random6SampleEii(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.35") align 8 %10, ptr noundef nonnull align 4 dereferenceable(4) %i.kb, i32 noundef %i.kh, i32 noundef %.0236)
          to label %bb.bj unwind label %bb.bm

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.ki = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !177
  %i.kk = load ptr, ptr %10, align 8, !tbaa !178
  %i.kl = ptrtoint ptr %i.kj to i64
  %i.km = ptrtoint ptr %i.kk to i64
  %i.kn = sub i64 %i.kl, %i.km
  %i.ko = lshr exact i64 %i.kn, 2
  %i.kp = trunc i64 %i.ko to i32                  ; 2 uses
  store i32 %i.kp, ptr %i.b, align 4, !tbaa !203
  %i.kq = invoke i32 @OMP_NUM_THREADS()
          to label %bb.bk unwind label %bb.bn

bb.bk:                                            ; preds = %bb.bj
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.g, i32 %i.kq)
  %i.kr = icmp sgt i32 %i.kp, 1023
  br i1 %i.kr, label %bb.bl, label %bb.bp

bb.bl:                                            ; preds = %bb.bk
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZN8LightGBM10ColSampler9GetByNodeEPKNS_4TreeEi.omp_outlined, ptr nonnull %i.b, ptr nonnull %1, ptr nonnull %i.a, ptr nonnull %10, ptr nonnull %8)
  br label %bb.bq

bb.bm:                                            ; preds = %bb.bi
  %i.ks = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit107

bb.bn:                                            ; preds = %bb.bj
  %i.kt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.ku = load ptr, ptr %10, align 8, !tbaa !178  ; 3 uses
  %.not.i.i.i106 = icmp eq ptr %i.ku, null
  br i1 %.not.i.i.i106, label %_ZNSt6vectorIiSaIiEED2Ev.exit107, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.kv = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !202
  %i.kx = ptrtoint ptr %i.kw to i64
  %i.ky = ptrtoint ptr %i.ku to i64
  %i.kz = sub i64 %i.kx, %i.ky
  call void @_ZdlPvm(ptr noundef nonnull %i.ku, i64 noundef %i.kz) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit107

bb.bp:                                            ; preds = %bb.bk
  call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.g)
  store i32 %i.g, ptr %i.c, align 4, !tbaa !203
  call void @_ZN8LightGBM10ColSampler9GetByNodeEPKNS_4TreeEi.omp_outlined(ptr nonnull %i.c, ptr nonnull poison, ptr %i.b, ptr nonnull %1, ptr %i.a, ptr %10, ptr %8) #20
  call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.g)
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.la = load ptr, ptr %10, align 8, !tbaa !178  ; 3 uses
  %.not.i.i.i108 = icmp eq ptr %i.la, null
  br i1 %.not.i.i.i108, label %_ZNSt6vectorIiSaIiEED2Ev.exit109, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.lb = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !202
  %i.ld = ptrtoint ptr %i.lc to i64
  %i.le = ptrtoint ptr %i.la to i64
  %i.lf = sub i64 %i.ld, %i.le
  call void @_ZdlPvm(ptr noundef nonnull %i.la, i64 noundef %i.lf) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit109

_ZNSt6vectorIiSaIiEED2Ev.exit109:                 ; preds = %bb.bq, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  %i.lg = load ptr, ptr %9, align 8, !tbaa !178   ; 3 uses
  %.not.i.i.i110 = icmp eq ptr %i.lg, null
  br i1 %.not.i.i.i110, label %_ZNSt6vectorIiSaIiEED2Ev.exit111, label %bb.bs

bb.bs:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit109
  %i.lh = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !202
  %i.lj = ptrtoint ptr %i.li to i64
  %i.lk = ptrtoint ptr %i.lg to i64
  %i.ll = sub i64 %i.lj, %i.lk
  call void @_ZdlPvm(ptr noundef nonnull %i.lg, i64 noundef %i.ll) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit111

_ZNSt6vectorIiSaIiEED2Ev.exit111:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit109, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.ct

_ZNSt6vectorIiSaIiEED2Ev.exit107:                 ; preds = %bb.bo, %bb.bn, %bb.bm
  %.pn52 = phi { ptr, i32 } [ %i.ks, %bb.bm ], [ %i.kt, %bb.bn ], [ %i.kt, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  %.pre334 = load ptr, ptr %9, align 8, !tbaa !178
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit260, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt6vectorIiSaIiEED2Ev.exit107
  %14 = phi ptr [ %.pre334, %_ZNSt6vectorIiSaIiEED2Ev.exit107 ], [ %.sroa.0200.0303, %.loopexit260 ], [ %.sroa.0200.0303, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.pn52.pn = phi { ptr, i32 } [ %.pn52, %_ZNSt6vectorIiSaIiEED2Ev.exit107 ], [ %lpad.loopexit, %.loopexit260 ], [ %lpad.loopexit.split-lp459, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.not.i.i.i112 = icmp eq ptr %14, null
  br i1 %.not.i.i.i112, label %_ZNSt6vectorIiSaIiEED2Ev.exit113, label %bb.bt

bb.bt:                                            ; preds = %.loopexit.split-lp
  %i.lm = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !202
  %i.lo = ptrtoint ptr %i.ln to i64
  %i.lp = ptrtoint ptr %14 to i64
  %i.lq = sub i64 %i.lo, %i.lp
  call void @_ZdlPvm(ptr noundef nonnull %14, i64 noundef %i.lq) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit113

_ZNSt6vectorIiSaIiEED2Ev.exit113:                 ; preds = %.loopexit.split-lp, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.cx

bb.bu:                                            ; preds = %bb.av
  %i.lr = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !177 ; 3 uses
  %i.lu = load ptr, ptr %i.lr, align 8, !tbaa !178 ; 3 uses
  %i.lv = ptrtoint ptr %i.lt to i64
  %i.lw = ptrtoint ptr %i.lu to i64
  %i.lx = sub i64 %i.lv, %i.lw                    ; 2 uses
  %i.ly = ashr exact i64 %i.lx, 2                 ; 2 uses
  %i.lz = trunc i64 %i.ly to i32
  %.sroa.speculated5.i114 = call i32 @llvm.smin.i32(i32 %i.lz, i32 1)
  %i.ma = uitofp i64 %i.ly to double
  %i.mb = fmul double %i.fs, %i.ma
  %i.mc = fadd double %i.mb, 5.000000e-01
  %i.md = fptosi double %i.mc to i32
  %.sroa.speculated.i115 = call noundef i32 @llvm.smax.i32(i32 %.sroa.speculated5.i114, i32 %i.md) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.me = load ptr, ptr %i.m, align 8, !tbaa !394
  %i.mf = load ptr, ptr %i.o, align 8, !tbaa !394
  %i.mg = icmp eq ptr %i.me, %i.mf
  br i1 %i.mg, label %bb.bv, label %.preheader265

.preheader265:                                    ; preds = %bb.bu
  %.not256298 = icmp eq ptr %i.lu, %i.lt
  br i1 %.not256298, label %._crit_edge301, label %.lr.ph300

.lr.ph300:                                        ; preds = %.preheader265
  %i.mh = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.mi = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  store ptr %i.lr, ptr %i.d, align 8, !tbaa !317
  %.pre338 = lshr exact i64 %i.lx, 2
  %.pre340 = trunc i64 %.pre338 to i32
  br label %bb.ch

._crit_edge301.loopexit:                          ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit140
  %i.mk = ptrtoint ptr %i.oj to i64
  %i.ml = ptrtoint ptr %i.oh to i64
  %i.mm = sub i64 %i.mk, %i.ml
  %i.mn = lshr exact i64 %i.mm, 2
  %i.mo = trunc i64 %i.mn to i32
  br label %._crit_edge301

._crit_edge301:                                   ; preds = %._crit_edge301.loopexit, %.preheader265
  %i.mp = phi i32 [ %i.mo, %._crit_edge301.loopexit ], [ 0, %.preheader265 ] ; 2 uses
  store ptr %11, ptr %i.d, align 8, !tbaa !317
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i115, i32 %i.mp)
  br label %bb.ch

bb.bw:                                            ; preds = %.lr.ph300, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit140
  %i.mq = phi ptr [ null, %.lr.ph300 ], [ %i.oh, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit140 ] ; 9 uses
  %i.mr = phi ptr [ null, %.lr.ph300 ], [ %i.oi, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit140 ] ; 7 uses
  %i.ms = phi ptr [ null, %.lr.ph300 ], [ %i.oj, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit140 ] ; 7 uses
  %.sroa.0188.0299 = phi ptr [ %i.lu, %.lr.ph300 ], [ %i.ok, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit140 ] ; 2 uses
  %i.mt = load i32, ptr %.sroa.0188.0299, align 4, !tbaa !203 ; 6 uses
  %i.mu = load i64, ptr %i.mh, align 8, !tbaa !312
  %.not.not.i.i.i117 = icmp eq i64 %i.mu, 0
  br i1 %.not.not.i.i.i117, label %.preheader261, label %bb.by

.preheader261:                                    ; preds = %bb.bw, %bb.bx
  %.sroa.06.0.in.i.i.i127 = phi ptr [ %.sroa.06.0.i.i.i128, %bb.bx ], [ %i.j, %bb.bw ]
  %.sroa.06.0.i.i.i128 = load ptr, ptr %.sroa.06.0.in.i.i.i127, align 8, !tbaa !311 ; 3 uses
  %.not.i.i.i129 = icmp eq ptr %.sroa.06.0.i.i.i128, null
  br i1 %.not.i.i.i129, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit140, label %bb.bx

bb.bx:                                            ; preds = %.preheader261
  %i.mv = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i128, i64 8
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !203
  %i.mx = icmp eq i32 %i.mt, %i.mw
  br i1 %i.mx, label %.loopexit262, label %.preheader261, !llvm.loop !391

bb.by:                                            ; preds = %bb.bw
  %i.my = sext i32 %i.mt to i64
  %i.mz = load i64, ptr %i.i, align 8, !tbaa !310 ; 2 uses
  %i.na = urem i64 %i.my, %i.mz                   ; 2 uses
  %i.nb = load ptr, ptr %6, align 8, !tbaa !309
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.nb, i64 %i.na
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !314 ; 2 uses
  %.not.i.i.i.i.i118 = icmp eq ptr %i.nd, null
  br i1 %.not.i.i.i.i.i118, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit140, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !311 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !203
  %i.nh = icmp eq i32 %i.mt, %i.ng
  br i1 %i.nh, label %.loopexit262, label %.lr.ph.i.i.i.i.i119

bb.ca:                                            ; preds = %bb.cb
  %i.ni = icmp eq i32 %i.mt, %i.nl
  br i1 %i.ni, label %.loopexit262, label %.lr.ph.i.i.i.i.i119, !llvm.loop !392

.lr.ph.i.i.i.i.i119:                              ; preds = %bb.bz, %bb.ca
  %.020.i.i.i.i.i120 = phi ptr [ %i.nj, %bb.ca ], [ %i.ne, %bb.bz ]
  %i.nj = load ptr, ptr %.020.i.i.i.i.i120, align 8, !tbaa !311 ; 3 uses
  %.not18.i.i.i.i.i121 = icmp eq ptr %i.nj, null
  br i1 %.not18.i.i.i.i.i121, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit140, label %bb.cb

bb.cb:                                            ; preds = %.lr.ph.i.i.i.i.i119
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 8
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !203 ; 2 uses
  %i.nm = sext i32 %i.nl to i64
  %i.nn = urem i64 %i.nm, %i.mz
  %.not19.i.i.i.i.i122 = icmp eq i64 %i.nn, %i.na
  br i1 %.not19.i.i.i.i.i122, label %bb.ca, label %..loopexit_crit_edge21.i.i.i.i.i123, !llvm.loop !392

..loopexit_crit_edge21.i.i.i.i.i123:              ; preds = %bb.cb
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit140, !llvm.loop !392

.loopexit262:                                     ; preds = %bb.ca, %bb.bx, %bb.bz
  %.not.i131 = icmp eq ptr %i.ms, %i.mr
  br i1 %.not.i131, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %.loopexit262
  store i32 %i.mt, ptr %i.ms, align 4, !tbaa !203
  %i.no = getelementptr inbounds nuw i8, ptr %i.ms, i64 4 ; 2 uses
  store ptr %i.no, ptr %i.mi, align 8, !tbaa !177
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit140

bb.cd:                                            ; preds = %.loopexit262
  %i.np = ptrtoint ptr %i.mr to i64
  %i.nq = ptrtoint ptr %i.mq to i64               ; 2 uses
  %i.nr = sub i64 %i.np, %i.nq                    ; 5 uses
  %i.ns = icmp eq i64 %i.nr, 9223372036854775804
  br i1 %i.ns, label %bb.ce, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i132

bb.ce:                                            ; preds = %bb.cd
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #32
          to label %.noexc138 unwind label %.loopexit.split-lp267.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc138:                                        ; preds = %bb.ce
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i132: ; preds = %bb.cd
  %i.nt = ashr exact i64 %i.nr, 2                 ; 3 uses
  %.sroa.speculated.i.i.i133 = call i64 @llvm.umax.i64(i64 %i.nt, i64 1)
  %i.nu = add nsw i64 %.sroa.speculated.i.i.i133, %i.nt ; 2 uses
  %i.nv = icmp ult i64 %i.nu, %i.nt
  %i.nw = call i64 @llvm.umin.i64(i64 %i.nu, i64 2305843009213693951)
  %i.nx = select i1 %i.nv, i64 2305843009213693951, i64 %i.nw ; 3 uses
  %.not.i.i.i134 = icmp ne i64 %i.nx, 0
  call void @llvm.assume(i1 %.not.i.i.i134)
  %i.ny = shl nuw nsw i64 %i.nx, 2
  %i.nz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ny) #33
          to label %.noexc139 unwind label %.loopexit.split-lp267.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc139:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i132
  %i.oa = getelementptr inbounds i8, ptr %i.nz, i64 %i.nr ; 2 uses
  store i32 %i.mt, ptr %i.oa, align 4, !tbaa !203
  %i.ob = icmp sgt i64 %i.nr, 0
  br i1 %i.ob, label %bb.cf, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i135

bb.cf:                                            ; preds = %.noexc139
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.nz, ptr align 4 %i.mq, i64 %i.nr, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i135

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i135: ; preds = %bb.cf, %.noexc139
  %i.oc = getelementptr inbounds nuw i8, ptr %i.oa, i64 4 ; 2 uses
  %.not.i17.i.i136 = icmp eq ptr %i.mq, null
  br i1 %.not.i17.i.i136, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i137, label %bb.cg

bb.cg:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i135
  %i.od = load ptr, ptr %i.mj, align 8, !tbaa !202
  %i.oe = ptrtoint ptr %i.od to i64
  %i.of = sub i64 %i.oe, %i.nq
  call void @_ZdlPvm(ptr noundef nonnull %i.mq, i64 noundef %i.of) #31
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i137

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i137: ; preds = %bb.cg, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i135
  store ptr %i.nz, ptr %11, align 8, !tbaa !178
  store ptr %i.oc, ptr %i.mi, align 8, !tbaa !177
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.nz, i64 %i.nx ; 2 uses
  store ptr %i.og, ptr %i.mj, align 8, !tbaa !202
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit140

.loopexit.split-lp267.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i132, %bb.ce
  %lpad.loopexit.split-lp467 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp267

_ZNSt6vectorIiSaIiEE9push_backERKi.exit140:       ; preds = %.lr.ph.i.i.i.i.i119, %.preheader261, %bb.by, %..loopexit_crit_edge21.i.i.i.i.i123, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i137, %bb.cc
  %i.oh = phi ptr [ %i.mq, %.preheader261 ], [ %i.mq, %bb.cc ], [ %i.mq, %bb.by ], [ %i.mq, %..loopexit_crit_edge21.i.i.i.i.i123 ], [ %i.nz, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i137 ], [ %i.mq, %.lr.ph.i.i.i.i.i119 ] ; 2 uses
  %i.oi = phi ptr [ %i.mr, %.preheader261 ], [ %i.mr, %bb.cc ], [ %i.mr, %bb.by ], [ %i.mr, %..loopexit_crit_edge21.i.i.i.i.i123 ], [ %i.og, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i137 ], [ %i.mr, %.lr.ph.i.i.i.i.i119 ]
  %i.oj = phi ptr [ %i.ms, %.preheader261 ], [ %i.no, %bb.cc ], [ %i.ms, %bb.by ], [ %i.ms, %..loopexit_crit_edge21.i.i.i.i.i123 ], [ %i.oc, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i137 ], [ %i.ms, %.lr.ph.i.i.i.i.i119 ] ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %.sroa.0188.0299, i64 4 ; 2 uses
  %.not256 = icmp eq ptr %i.ok, %i.lt
  br i1 %.not256, label %._crit_edge301.loopexit, label %bb.bw

end_hunk_3
