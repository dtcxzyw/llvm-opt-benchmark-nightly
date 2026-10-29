Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/TiffImageLoader?download=true
inline.NumInlined: 18382
inline.NumDeleted: 4972
loop-unroll.NumCompletelyUnrolled: 113
loop-unroll.NumRuntimeUnrolled: 70
loop-unroll.NumUnrolled: 183
begin_hunk_0_@_ZN3tev23postprocessLinearRawDngEP4tiffRKNS_16MultiChannelViewIfEERNS_9ImageDataEbbi:.from.
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #44, !noalias !1230
  br label %.from..sink.split.i

bb.au:                                            ; preds = %bb.as
  %i.tj = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.tk = load i8, ptr %10, align 8, !noalias !1230
  %i.tl = trunc i8 %i.tk to i1
  br i1 %i.tl, label %.split182.i, label %.sink.split.i.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit80.i

.thread1238:                                      ; preds = %bb.at
  %i.tm = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.tn = load i8, ptr %10, align 8, !noalias !1230
  %i.to = trunc i8 %i.tn to i1
  br i1 %i.to, label %.split182.i, label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit80.i

.split182.i:                                      ; preds = %.thread1238, %bb.au
  %i.tp = phi { ptr, i32 } [ %i.tm, %.thread1238 ], [ %i.tj, %bb.au ] ; 2 uses
  %.050.i1240 = phi i1 [ false, %.thread1238 ], [ true, %bb.au ]
  %i.tq = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !80, !noalias !1230
  %i.ts = load i64, ptr %10, align 8, !noalias !1230
  %i.tt = and i64 %i.ts, -2
  call void @_ZdlPvm(ptr noundef %i.tr, i64 noundef %i.tt) #49, !noalias !1230
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #44, !noalias !1230
  br i1 %.050.i1240, label %.from..sink.split.i, label %.from.1005

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit80.i: ; preds = %.thread1238
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #44, !noalias !1230
  br label %.from.1005

.sink.split.i.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit80.i: ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #44, !noalias !1230
  br label %.from..sink.split.i

bb.av:                                            ; preds = %.noexc205
  %i.tu = extractvalue { ptr, i64 } %i.tf, 0
  %i.tv = load <2 x float>, ptr %i.tu, align 4, !tbaa !79, !noalias !1230
  store <2 x float> %i.tv, ptr %.reload.addr1130, align 8, !tbaa !79, !noalias !1230
  %i.tw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc206 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc206:                                        ; preds = %bb.av
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !117, !noalias !1230
  invoke void @_ZN4tlog6Logger3logIJRKN7nanogui5ArrayIfLm2EEEEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOSB_(ptr noundef nonnull align 8 dereferenceable(56) %i.tx, i32 noundef 4, ptr nonnull @.str.222, i64 47, ptr noundef nonnull align 4 dereferenceable(8) %.reload.addr1130)
          to label %.noexc207 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc207:                                        ; preds = %.noexc206
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %.reload.addr1130, align 8, !tbaa !80, !noalias !1230
  %i.ty = invoke <2 x float> @_ZN3tev8whiteD50Ev()
          to label %.noexc208 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc208:                                        ; preds = %.noexc207
  invoke void @_ZN3tev18adaptWhiteBradfordEN7nanogui5ArrayIfLm2EEES2_(ptr dead_on_unwind nonnull writable sret(%"struct.nanogui::Matrix") align 4 %.reload.addr1104, <2 x float> %.sroa.01.0.copyload.i, <2 x float> %i.ty)
          to label %.from..noexc209 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.from..noexc209:                                  ; preds = %.noexc208
  %i.tz = load <2 x float>, ptr %.reload.addr1104, align 8, !noalias !1230 ; 2 uses
  %.sroa.9139.0.copyload141.i = load float, ptr %.sroa.9139.0..sroa_idx140.i, align 8, !noalias !1230
  %.sroa.11142.0.copyload144.i = load float, ptr %.sroa.11142.0..sroa_idx143.i, align 4, !noalias !1230
  %i.ua = load <2 x float>, ptr %.sroa.13145.0..sroa_idx146.i, align 8, !noalias !1230
  %i.ub = load <2 x float>, ptr %.sroa.17151.0..sroa_idx152.i, align 8, !noalias !1230
  %.sroa.21.0.copyload158.i = load float, ptr %.sroa.21.0..sroa_idx157.i, align 8, !tbaa !80, !noalias !1230 ; 2 uses
  %i.uc = shufflevector <2 x float> %i.ub, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.ud = insertelement <4 x float> %i.uc, float %.sroa.21.0.copyload158.i, i64 0
  %i.ue = shufflevector <2 x float> %i.tz, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.uf = shufflevector <4 x float> %i.ud, <4 x float> %i.ue, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  br label %bb.ay

bb.aw:                                            ; preds = %.noexc205
  %i.ug = load ptr, ptr %.reload.addr1128, align 8, !tbaa !158, !noalias !1230
  %i.uh = invoke i32 @_ZN3tev12tiffGetValueItEENSt3__18optionalIT_EEP4tiffj(ptr noundef %i.ug, i32 noundef range(i32 0, 65536) %i.im)
          to label %bb.ay unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.from..sink.split.i:                              ; preds = %.sink.split.i.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit76.thread.i, %.sink.split.i.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit78.thread.i, %.sink.split.i.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit80.thread.i, %.sink.split.i.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit80.i, %.sink.split.i.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit78.i, %.sink.split.i.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit76.i, %.split173.i, %.split177.i, %.split182.i
  %.sink.i = phi ptr [ %i.kg, %.sink.split.i.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit76.i ], [ %i.rh, %.sink.split.i.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit78.i ], [ %i.th, %.sink.split.i.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit80.i ], [ %i.kg, %.sink.split.i.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit76.thread.i ], [ %i.kg, %.split173.i ], [ %i.rh, %.sink.split.i.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit78.thread.i ], [ %i.rh, %.split177.i ], [ %i.th, %.sink.split.i.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit80.thread.i ], [ %i.th, %.split182.i ]
  %.pn70.pn.pn.ph.i = phi { ptr, i32 } [ %i.ki, %.sink.split.i.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit76.i ], [ %i.rj, %.sink.split.i.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit78.i ], [ %i.tj, %.sink.split.i.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit80.i ], [ %i.kh, %.sink.split.i.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit76.thread.i ], [ %i.ko, %.split173.i ], [ %i.ri, %.sink.split.i.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit78.thread.i ], [ %i.rp, %.split177.i ], [ %i.ti, %.sink.split.i.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit80.thread.i ], [ %i.tp, %.split182.i ]
  call void @__cxa_free_exception(ptr %.sink.i) #44, !noalias !1230
  br label %.from.1005

bb.ax:                                            ; preds = %bb.at, %bb.an, %bb.ai, %bb.ad
  unreachable

bb.ay:                                            ; preds = %.from..noexc209, %.from..noexc204, %bb.aw
  %.sroa.9139.1.i = phi float [ %.sroa.9139.0.copyload.i, %.from..noexc204 ], [ %.sroa.9139.0.copyload141.i, %.from..noexc209 ], [ 0.000000e+00, %bb.aw ] ; 3 uses
  %.sroa.11142.1.i = phi float [ %.sroa.11142.0.copyload.i, %.from..noexc204 ], [ %.sroa.11142.0.copyload144.i, %.from..noexc209 ], [ 0.000000e+00, %bb.aw ] ; 3 uses
  %.sroa.21.1.i = phi float [ %.sroa.21.0.copyload.i, %.from..noexc204 ], [ %.sroa.21.0.copyload158.i, %.from..noexc209 ], [ 1.000000e+00, %bb.aw ]
  %i.ui = phi <4 x float> [ %i.td, %.from..noexc204 ], [ %i.uf, %.from..noexc209 ], [ <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, %bb.aw ] ; 5 uses
  %i.uj = phi <2 x float> [ %i.sy, %.from..noexc204 ], [ %i.ua, %.from..noexc209 ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.aw ] ; 4 uses
  %i.uk = phi <2 x float> [ %i.sx, %.from..noexc204 ], [ %i.tz, %.from..noexc209 ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.aw ] ; 2 uses
  %i.ul = shufflevector <2 x float> %i.ra, <2 x float> poison, <2 x i32> zeroinitializer
  %i.um = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.uk, <2 x float> %i.ul, <2 x float> zeroinitializer)
  %i.un = extractelement <4 x float> %i.ui, i64 2
  %i.uo = extractelement <2 x float> %i.ra, i64 0
  %i.up = call float @llvm.fmuladd.f32(float %.sroa.9139.1.i, float %i.uo, float 0.000000e+00)
  %i.uq = extractelement <2 x float> %i.uj, i64 1
  %i.ur = extractelement <2 x float> %i.ra, i64 1
  %i.us = call float @llvm.fmuladd.f32(float %i.uq, float %i.ur, float %i.up)
  %i.ut = shufflevector <4 x float> %i.ui, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.uu = shufflevector <2 x float> %i.uk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.uv = shufflevector <4 x float> %i.ut, <4 x float> %i.uu, <4 x i32> <i32 0, i32 4, i32 2, i32 poison>
  %i.uw = insertelement <4 x float> %i.uv, float %.sroa.9139.1.i, i64 3
  %i.ux = insertelement <4 x float> poison, float %.sroa.10104.0.i, i64 0
  %i.uy = shufflevector <2 x float> %i.qz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.uz = shufflevector <4 x float> %i.ux, <4 x float> %i.uy, <4 x i32> <i32 0, i32 4, i32 4, i32 4>
  %i.va = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.us, i64 0
  %i.vb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.uw, <4 x float> %i.uz, <4 x float> %i.va) ; 2 uses
  %i.vc = insertelement <4 x float> %i.uu, float %.sroa.11142.1.i, i64 1
  %i.vd = shufflevector <2 x float> %i.uj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ve = shufflevector <4 x float> %i.vc, <4 x float> %i.vd, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.vf = shufflevector <4 x float> %i.qy, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.vg = shufflevector <4 x float> %i.vf, <4 x float> %i.uy, <4 x i32> <i32 0, i32 5, i32 5, i32 5>
  %i.vh = insertelement <4 x float> %i.vb, float 0.000000e+00, i64 0
  %i.vi = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ve, <4 x float> %i.vg, <4 x float> %i.vh) ; 2 uses
  %i.vj = shufflevector <4 x float> %i.vi, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 3, i32 5, i32 1, i32 2>
  %i.vk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ui, <4 x float> %i.qy, <4 x float> %i.vj) ; 2 uses
  %i.vl = extractelement <4 x float> %i.qy, i64 1
  %i.vm = extractelement <4 x float> %i.vi, i64 0
  %i.vn = call float @llvm.fmuladd.f32(float %.sroa.11142.1.i, float %.sink62.i.i, float %i.vm)
  %i.vo = call float @llvm.fmuladd.f32(float %i.un, float %.sink.i.i, float %i.vn)
  %i.vp = call float @llvm.fmuladd.f32(float %.sroa.9139.1.i, float %i.vl, float 0.000000e+00)
  %i.vq = insertelement <2 x float> poison, float %.sink62.i.i, i64 0
  %i.vr = shufflevector <2 x float> %i.vq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vs = shufflevector <4 x float> %i.vk, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.vt = insertelement <2 x float> %i.vs, float %i.vp, i64 1
  %i.vu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.uj, <2 x float> %i.vr, <2 x float> %i.vt)
  %i.vv = shufflevector <4 x float> %i.ui, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.vw = insertelement <2 x float> %i.vv, float %.sroa.21.1.i, i64 1
  %i.vx = insertelement <2 x float> poison, float %.sink.i.i, i64 0
  %i.vy = shufflevector <2 x float> %i.vx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vw, <2 x float> %i.vy, <2 x float> %i.vu)
  %i.wa = shufflevector <2 x float> %i.uj, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.wb = insertelement <2 x float> %i.wa, float %.sroa.11142.1.i, i64 0
  %i.wc = shufflevector <2 x float> %i.ra, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.wd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wb, <2 x float> %i.wc, <2 x float> %i.um)
  %i.we = shufflevector <4 x float> %i.ui, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.wf = insertelement <2 x float> poison, float %.sroa.10104.0.i, i64 0
  %i.wg = shufflevector <2 x float> %i.wf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.we, <2 x float> %i.wg, <2 x float> %i.wd)
  store <2 x float> %i.wh, ptr %.reload.addr1100, align 8, !alias.scope !1230
  %i.wi = shufflevector <4 x float> %i.vb, <4 x float> %i.vk, <4 x i32> <i32 0, i32 6, i32 7, i32 4>
  store <4 x float> %i.wi, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1230
  store float %i.vo, ptr %.sroa.9.0..sroa_idx.i, align 8, !alias.scope !1230
  store <2 x float> %i.vz, ptr %.sroa.10.0..sroa_idx.i, align 4, !alias.scope !1230
  store i8 1, ptr %i.hy, align 4, !tbaa !1235, !alias.scope !1230
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #44
  store i64 %.0133537.lcssa1376.neg, ptr %i.a, align 8, !tbaa !87
  %i.wj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc214 unwind label %.body211.from.784

.noexc214:                                        ; preds = %bb.ay
  %i.wk = load ptr, ptr %i.wj, align 8, !tbaa !117
  invoke void @_ZN4tlog6Logger3logIJmRKN7nanogui6MatrixIfLm3EEEEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOSB_(ptr noundef nonnull align 8 dereferenceable(56) %i.wk, i32 noundef 4, ptr nonnull @.str.43, i64 32, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(36) %.reload.addr1100)
          to label %_ZN4tlog5debugIJmRKN7nanogui6MatrixIfLm3EEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS9_.exit unwind label %.body211.from.784

_ZN4tlog5debugIJmRKN7nanogui6MatrixIfLm3EEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS9_.exit: ; preds = %.noexc214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #44
  %i.wl = load i8, ptr %i.hy, align 4, !tbaa !1235, !range !184, !noundef !185
  %i.wm = trunc nuw i8 %i.wl to i1
  br i1 %i.wm, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %_ZN4tlog5debugIJmRKN7nanogui6MatrixIfLm3EEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS9_.exit
  invoke void @_ZNSt3__127__throw_bad_optional_accessB8ne180100Ev() #45
          to label %.noexc216 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc216:                                        ; preds = %bb.az
  unreachable

bb.ba:                                            ; preds = %_ZN4tlog5debugIJmRKN7nanogui6MatrixIfLm3EEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS9_.exit
  %i.wn = load float, ptr %.sroa.6422.0..sroa_idx, align 8, !tbaa !79, !noalias !1236 ; 2 uses
  %i.wo = load float, ptr %.sroa.12428.0..sroa_idx, align 8, !tbaa !79, !noalias !1236 ; 3 uses
  %i.wp = load <2 x float>, ptr %i.ha, align 8, !tbaa !79, !noalias !1236 ; 3 uses
  %i.wq = load float, ptr %.sroa.5421.0..sroa_idx, align 4, !tbaa !79, !noalias !1236 ; 2 uses
  %i.wr = load <2 x float>, ptr %.reload.addr1100, align 8, !tbaa !79, !noalias !1236 ; 4 uses
  %i.ws = load float, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !79, !noalias !1236 ; 2 uses
  %i.wt = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.wn, i64 0 ; 2 uses
  %i.wu = shufflevector <2 x float> %i.wr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.wv = shufflevector <4 x float> %i.wu, <4 x float> <float poison, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.ww = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.wt, <4 x float> %i.wv, <4 x float> zeroinitializer)
  %i.wx = shufflevector <4 x float> <float poison, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, <4 x float> %i.wu, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.wy = load <2 x float>, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !79, !noalias !1236 ; 3 uses
  %i.wz = shufflevector <2 x float> %i.wy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1> ; 2 uses
  %i.xa = shufflevector <2 x float> %i.wp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.xb = shufflevector <4 x float> %i.xa, <4 x float> %i.wt, <4 x i32> <i32 poison, i32 0, i32 1, i32 4>
  %i.xc = insertelement <4 x float> %i.xb, float %i.wo, i64 0
  %i.xd = load float, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !79, !noalias !1236 ; 2 uses
  %i.xe = load <2 x float>, ptr %.sroa.7423.0..sroa_idx, align 4, !tbaa !79, !noalias !1236 ; 3 uses
  %i.xf = shufflevector <2 x float> %i.wp, <2 x float> %i.xe, <4 x i32> <i32 2, i32 3, i32 poison, i32 0>
  %i.xg = insertelement <4 x float> poison, float %i.xd, i64 0
  %i.xh = load <2 x float>, ptr %.sroa.10426.0..sroa_idx, align 8, !tbaa !79, !noalias !1236 ; 3 uses
  %i.xi = load float, ptr %.sroa.11427.0..sroa_idx, align 4, !tbaa !79, !noalias !1236 ; 2 uses
  %i.xj = load <2 x float>, ptr %.sroa.8.0..sroa_idx.i, align 4, !tbaa !79, !noalias !1236 ; 6 uses
  %i.xk = shufflevector <2 x float> %i.xj, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.xl = shufflevector <2 x float> %i.xj, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.xm = shufflevector <4 x float> %i.xg, <4 x float> %i.xl, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.xn = shufflevector <2 x float> %i.xh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.xo = insertelement <4 x float> %i.xn, float %i.wo, i64 2
  %i.xp = insertelement <4 x float> %i.xo, float %i.wq, i64 3
  %i.xq = extractelement <2 x float> %i.xj, i64 1
  %i.xr = load <2 x float>, ptr %.sroa.8424.0..sroa_idx, align 8, !tbaa !79, !noalias !1236 ; 3 uses
  %i.xs = shufflevector <2 x float> %i.xr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.xt = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.xs, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.xu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xt, <4 x float> %i.wx, <4 x float> %i.ww)
  %i.xv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xc, <4 x float> %i.wz, <4 x float> %i.xu) ; 2 uses
  %i.xw = shufflevector <4 x float> %i.xf, <4 x float> %i.xs, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.xx = shufflevector <4 x float> %i.xv, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 2, i32 3, i32 7>
  %i.xy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xw, <4 x float> %i.xm, <4 x float> %i.xx) ; 2 uses
  %i.xz = insertelement <4 x float> %i.xy, float 0.000000e+00, i64 3
  %i.ya = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xp, <4 x float> %i.xk, <4 x float> %i.xz) ; 2 uses
  %i.yb = load <2 x float>, ptr %.sroa.10.0..sroa_idx.i, align 4, !tbaa !79, !noalias !1236 ; 4 uses
  %i.yc = load float, ptr %.sroa.11.0..sroa_idx.i, align 8, !tbaa !79, !noalias !1236 ; 4 uses
  %i.yd = shufflevector <2 x float> %i.yb, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 poison>
  %i.ye = insertelement <4 x float> %i.yd, float 0.000000e+00, i64 3
  %i.yf = insertelement <4 x float> %i.ye, float %i.wn, i64 0
  %i.yg = shufflevector <2 x float> %i.xj, <2 x float> %i.xe, <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>
  %i.yh = insertelement <4 x float> %i.yg, float -0.000000e+00, i64 3
  %i.yi = shufflevector <4 x float> %i.yh, <4 x float> %i.xs, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.yj = shufflevector <4 x float> %i.xy, <4 x float> %i.ya, <4 x i32> <i32 poison, i32 3, i32 7, i32 poison>
  %i.yk = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float 0.000000e+00>, <4 x float> %i.yj, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.yl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.yf, <4 x float> %i.yi, <4 x float> %i.yk)
  %31 = shufflevector <2 x float> %i.xr, <2 x float> %i.xh, <4 x i32> <i32 poison, i32 1, i32 2, i32 poison>
  %32 = shufflevector <2 x float> %i.wr, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %33 = shufflevector <4 x float> %31, <4 x float> %32, <4 x i32> <i32 1, i32 2, i32 poison, i32 4>
  %i.ym = insertelement <4 x float> %33, float %i.xi, i64 2
  %i.yn = insertelement <2 x float> %i.wp, float %i.wq, i64 1
  %i.yo = shufflevector <2 x float> %i.wr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yn, <2 x float> %i.yo, <2 x float> zeroinitializer)
  %i.yq = shufflevector <2 x float> %i.xe, <2 x float> %i.xr, <2 x i32> <i32 0, i32 2>
  %i.yr = insertelement <2 x float> poison, float %i.ws, i64 0
  %i.ys = shufflevector <2 x float> %i.yr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yq, <2 x float> %i.ys, <2 x float> %i.yp)
  %i.yu = insertelement <2 x float> %i.xh, float %i.xi, i64 1
  %i.yv = shufflevector <2 x float> %i.wy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yu, <2 x float> %i.yv, <2 x float> %i.yt)
  store <2 x float> %i.yw, ptr %i.ha, align 8
  %i.yx = shufflevector <4 x float> %i.xv, <4 x float> %i.ya, <4 x i32> <i32 0, i32 4, i32 5, i32 6>
  store <4 x float> %i.yx, ptr %.sroa.6422.0..sroa_idx, align 8
  %i.yy = getelementptr inbounds nuw i8, ptr %i.j, i64 296
  %i.yz = getelementptr inbounds nuw i8, ptr %i.j, i64 300
  %i.za = getelementptr inbounds nuw i8, ptr %i.j, i64 304
  %i.zb = getelementptr inbounds nuw i8, ptr %i.j, i64 308 ; 2 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %i.j, i64 312
  %i.zd = getelementptr inbounds nuw i8, ptr %i.j, i64 316 ; 2 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %i.j, i64 320
  %i.zf = getelementptr inbounds nuw i8, ptr %i.j, i64 324 ; 2 uses
  %i.zg = load <4 x float>, ptr %.reload.addr1103, align 4, !tbaa !79, !noalias !1237 ; 4 uses
  %i.zh = load float, ptr %i.za, align 8, !tbaa !79, !noalias !1237 ; 2 uses
  %i.zi = shufflevector <2 x float> %i.yb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.zj = shufflevector <4 x float> %i.zi, <4 x float> %i.zg, <4 x i32> <i32 0, i32 1, i32 1, i32 4>
  %i.zk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ym, <4 x float> %i.zj, <4 x float> %i.yl) ; 3 uses
  %i.zl = extractelement <4 x float> %i.zk, i64 0
  %i.zm = call float @llvm.fmuladd.f32(float %i.wo, float %i.yc, float %i.zl)
  %i.zn = shufflevector <4 x float> %i.zk, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  store <2 x float> %i.zn, ptr %.sroa.10426.0..sroa_idx, align 8
  store float %i.zm, ptr %.sroa.12428.0..sroa_idx, align 8, !tbaa !80
  %i.zo = shufflevector <4 x float> %i.zg, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 2, i32 3, i32 7>
  %i.zp = shufflevector <2 x float> %i.wr, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.zq = insertelement <4 x float> %i.zp, float -0.000000e+00, i64 3
  %i.zr = insertelement <4 x float> %i.zq, float %i.ws, i64 2 ; 2 uses
  %i.zs = shufflevector <4 x float> %i.zk, <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x i32> <i32 4, i32 5, i32 3, i32 7>
  %i.zt = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zo, <4 x float> %i.zr, <4 x float> %i.zs)
  %i.zu = load <3 x float>, ptr %i.zb, align 4, !tbaa !79, !noalias !1237 ; 2 uses
  %i.zv = load float, ptr %i.zd, align 4, !tbaa !79, !noalias !1237 ; 2 uses
  %i.zw = load float, ptr %i.zc, align 8, !tbaa !79, !noalias !1237 ; 2 uses
  %i.zx = shufflevector <3 x float> %i.zu, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison> ; 2 uses
  %i.zy = shufflevector <4 x float> %i.zx, <4 x float> %i.zg, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.zz = shufflevector <4 x float> %i.wz, <4 x float> %i.zr, <4 x i32> <i32 6, i32 6, i32 0, i32 1>
  %i.aaa = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zy, <4 x float> %i.zz, <4 x float> %i.zt) ; 3 uses
  %i.aab = load <2 x float>, ptr %i.ze, align 8, !tbaa !79, !noalias !1237 ; 3 uses
  %i.aac = load float, ptr %i.zf, align 4, !tbaa !79, !noalias !1237 ; 2 uses
  %i.aad = load <2 x float>, ptr %i.yy, align 8, !tbaa !79, !noalias !1237 ; 2 uses
  %i.aae = shufflevector <2 x float> %i.aad, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.aaf = load float, ptr %i.yz, align 4, !tbaa !79, !noalias !1237
  %i.aag = shufflevector <2 x float> %i.aab, <2 x float> %i.aad, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aah = shufflevector <2 x float> %i.wy, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.aai = shufflevector <4 x float> %i.aaa, <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.aaj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aag, <4 x float> %i.aah, <4 x float> %i.aai) ; 2 uses
  %i.aak = shufflevector <4 x float> %i.zx, <4 x float> %i.zg, <4 x i32> <i32 poison, i32 0, i32 poison, i32 4>
  %i.aal = insertelement <4 x float> %i.aak, float %i.zh, i64 0
  %i.aam = insertelement <4 x float> %i.aal, float %i.zw, i64 2
  %i.aan = insertelement <2 x float> %i.xj, float %i.xd, i64 0
  %i.aao = shufflevector <2 x float> %i.aan, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.aap = shufflevector <4 x float> %i.aaa, <4 x float> %i.aaj, <4 x i32> <i32 3, i32 6, i32 7, i32 poison>
  %i.aaq = insertelement <4 x float> %i.aap, float 0.000000e+00, i64 3
  %i.aar = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aam, <4 x float> %i.aao, <4 x float> %i.aaq) ; 2 uses
  %i.aas = shufflevector <2 x float> %i.xj, <2 x float> %i.aab, <4 x i32> <i32 0, i32 2, i32 0, i32 poison>
  %i.aat = shufflevector <4 x float> %i.aas, <4 x float> %i.aae, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.aau = insertelement <4 x float> %i.xk, float %i.zv, i64 0
  %i.aav = insertelement <4 x float> %i.aau, float %i.aac, i64 2
  %i.aaw = insertelement <4 x float> %i.aar, float 0.000000e+00, i64 3
  %i.aax = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aat, <4 x float> %i.aav, <4 x float> %i.aaw) ; 3 uses
  %i.aay = call float @llvm.fmuladd.f32(float %i.aaf, float %i.xq, float 0.000000e+00)
  %i.aaz = extractelement <2 x float> %i.yb, i64 0
  %i.aba = call float @llvm.fmuladd.f32(float %i.zw, float %i.aaz, float %i.aay)
  %i.abb = call float @llvm.fmuladd.f32(float %i.aac, float %i.yc, float %i.aba)
  %i.abc = shufflevector <4 x float> %i.aaa, <4 x float> %i.aaj, <4 x i32> <i32 2, i32 4, i32 5, i32 poison>
  %i.abd = shufflevector <4 x float> %i.abc, <4 x float> %i.aax, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  store <4 x float> %i.abd, ptr %.reload.addr1103, align 4
  %i.abe = shufflevector <4 x float> %i.aax, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  store <2 x float> %i.abe, ptr %i.zb, align 4
  %i.abf = shufflevector <3 x float> %i.zu, <3 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.abg = insertelement <2 x float> %i.abf, float %i.zh, i64 0
  %i.abh = shufflevector <2 x float> %i.yb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abi = shufflevector <4 x float> %i.aar, <4 x float> %i.aax, <2 x i32> <i32 3, i32 7>
  %i.abj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.abg, <2 x float> %i.abh, <2 x float> %i.abi)
  %i.abk = shufflevector <2 x float> %i.aab, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.abl = insertelement <2 x float> %i.abk, float %i.yc, i64 0
  %i.abm = insertelement <2 x float> poison, float %i.zv, i64 0
  %i.abn = insertelement <2 x float> %i.abm, float %i.yc, i64 1
  %i.abo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.abl, <2 x float> %i.abn, <2 x float> %i.abj)
  store <2 x float> %i.abo, ptr %i.zd, align 4
  store float %i.abb, ptr %i.zf, align 4, !tbaa !80
  br label %.loopexit519

.body211.from.784:                                ; preds = %bb.ay, %.noexc214
  %i.abp = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #44
  br label %.from.1005

.thread614:                                       ; preds = %.noexc194
  %i.abq = getelementptr inbounds nuw i8, ptr %i.j, i64 474
  %i.abr = load i16, ptr %i.abq, align 2, !tbaa !82
  %i.abs = getelementptr inbounds nuw i8, ptr %i.j, i64 476
  %i.abt = load i16, ptr %i.abs, align 4, !tbaa !82
  %i.abu = zext i16 %i.abt to i32
  %i.abv = getelementptr inbounds nuw i8, ptr %i.j, i64 478
  %i.abw = load i16, ptr %i.abv, align 2, !tbaa !82
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %.reload.addr1105, align 4, !tbaa !79, !noalias !1238
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ho, align 4, !tbaa !79, !noalias !1238
  store float 1.000000e+00, ptr %i.hs, align 4, !tbaa !79, !noalias !1238
  %i.abx = load ptr, ptr %.reload.addr1128, align 8, !tbaa !158, !noalias !1238
  %i.aby = invoke { ptr, i64 } @_ZN3tev11tiffGetSpanIfEENSt3__14spanIKT_Lm18446744073709551615EEEP4tiffj(ptr noundef %i.abx, i32 noundef range(i32 0, 65536) %i.abu)
          to label %.noexc194.1 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc194.1:                                      ; preds = %.thread614
  %i.abz = extractvalue { ptr, i64 } %i.aby, 1    ; 2 uses
  %.not611.1 = icmp eq i64 %i.abz, 0
  br i1 %.not611.1, label %.thread614.1, label %bb.aa

.thread614.1:                                     ; preds = %.noexc194.1
  %i.aca = getelementptr inbounds nuw i8, ptr %i.j, i64 480
  %i.acb = load i16, ptr %i.aca, align 8, !tbaa !82
  %i.acc = getelementptr inbounds nuw i8, ptr %i.j, i64 482
  %i.acd = load i16, ptr %i.acc, align 2, !tbaa !82
  %i.ace = zext i16 %i.acd to i32
  %i.acf = getelementptr inbounds nuw i8, ptr %i.j, i64 484
  %i.acg = load i16, ptr %i.acf, align 4, !tbaa !82
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %.reload.addr1105, align 4, !tbaa !79, !noalias !1239
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ho, align 4, !tbaa !79, !noalias !1239
  store float 1.000000e+00, ptr %i.hs, align 4, !tbaa !79, !noalias !1239
  %i.ach = load ptr, ptr %.reload.addr1128, align 8, !tbaa !158, !noalias !1239
  %i.aci = invoke { ptr, i64 } @_ZN3tev11tiffGetSpanIfEENSt3__14spanIKT_Lm18446744073709551615EEEP4tiffj(ptr noundef %i.ach, i32 noundef range(i32 0, 65536) %i.ace)
          to label %.noexc194.2 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc194.2:                                      ; preds = %.thread614.1
  %i.acj = extractvalue { ptr, i64 } %i.aci, 1    ; 2 uses
  %.not611.2 = icmp eq i64 %i.acj, 0
  br i1 %.not611.2, label %.loopexit519, label %bb.aa

.loopexit519:                                     ; preds = %.noexc194.2, %bb.ba
  store float 1.000000e+00, ptr %.reload.addr1106, align 8, !tbaa !79
  %i.ack = load ptr, ptr %.reload.addr1128, align 8, !tbaa !158
  %i.acl = invoke i64 @_ZN3tev12tiffGetValueIfEENSt3__18optionalIT_EEP4tiffj(ptr noundef %i.ack, i32 noundef 50730)
          to label %bb.bb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.bb:                                            ; preds = %.loopexit519
  %i.acm = and i64 %i.acl, 4294967296
  %.not612 = icmp eq i64 %i.acm, 0
  %i.acn = trunc i64 %i.acl to i32
  %i.aco = bitcast i32 %i.acn to float
  %i.acp = select i1 %.not612, float 0.000000e+00, float %i.aco
  %i.acq = call float @exp2f(float noundef %i.acp) #44
  %i.acr = load float, ptr %.reload.addr1106, align 8, !tbaa !79
  %i.acs = fmul float %i.acq, %i.acr
  store float %i.acs, ptr %.reload.addr1106, align 8, !tbaa !79
  %i.act = load ptr, ptr %.reload.addr1128, align 8, !tbaa !158
  %i.acu = invoke i64 @_ZN3tev12tiffGetValueIfEENSt3__18optionalIT_EEP4tiffj(ptr noundef %i.act, i32 noundef 51109)
          to label %bb.bc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.bc:                                            ; preds = %bb.bb
  %i.acv = and i64 %i.acu, 4294967296
  %.not613 = icmp eq i64 %i.acv, 0
  %i.acw = trunc i64 %i.acu to i32
  %i.acx = bitcast i32 %i.acw to float
  %i.acy = select i1 %.not613, float 0.000000e+00, float %i.acx
  %i.acz = call float @exp2f(float noundef %i.acy) #44
  %i.ada = load float, ptr %.reload.addr1106, align 8, !tbaa !79
  %i.adb = fmul float %i.acz, %i.ada              ; 2 uses
  store float %i.adb, ptr %.reload.addr1106, align 8, !tbaa !79
  %i.adc = fcmp une float %i.adb, 1.000000e+00
  br i1 %i.adc, label %bb.bd, label %bb.bn

bb.bd:                                            ; preds = %bb.bc
  %i.add = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc222 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc222:                                        ; preds = %bb.bd
  %i.ade = load ptr, ptr %i.add, align 8, !tbaa !117
  invoke void @_ZN4tlog6Logger3logIJRfEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.ade, i32 noundef 4, ptr nonnull @.str.44, i64 27, ptr noundef nonnull align 4 dereferenceable(4) %.reload.addr1106)
          to label %_ZN4tlog5debugIJRfEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS5_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN4tlog5debugIJRfEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS5_.exit: ; preds = %.noexc222
  %i.adf = load atomic i8, ptr @_ZGVZN3tev10ThreadPool6globalEvE4pool acquire, align 8
  %i.adg = icmp eq i8 %i.adf, 0
  br i1 %i.adg, label %bb.be, label %_ZN3tev10ThreadPool6globalEv.exit, !prof !138

bb.be:                                            ; preds = %_ZN4tlog5debugIJRfEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS5_.exit
  %i.adh = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #44
  %.not.i224 = icmp eq i32 %i.adh, 0
  br i1 %.not.i224, label %_ZN3tev10ThreadPool6globalEv.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZN3tev10ThreadPoolC1Ev(ptr noundef nonnull align 8 dereferenceable(216) @_ZZN3tev10ThreadPool6globalEvE4pool)
          to label %bb.bg unwind label %.body225.from.789

bb.bg:                                            ; preds = %bb.bf
  %i.adi = call i32 @__cxa_atexit(ptr nonnull @_ZN3tev10ThreadPoolD1Ev, ptr nonnull @_ZZN3tev10ThreadPool6globalEvE4pool, ptr nonnull @__dso_handle) #44 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #44
  br label %_ZN3tev10ThreadPool6globalEv.exit

.body225.from.789:                                ; preds = %bb.bf
  %i.adj = landingpad { ptr, i32 }
          catch ptr null
end_hunk_0
