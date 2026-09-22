Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/TiffImageLoader?download=true
inline.NumInlined: 18382
inline.NumDeleted: 4972
loop-unroll.NumCompletelyUnrolled: 113
loop-unroll.NumRuntimeUnrolled: 65
loop-unroll.NumUnrolled: 178
begin_hunk_0_@_ZN3tev23postprocessLinearRawDngEP4tiffRKNS_16MultiChannelViewIfEERNS_9ImageDataEbbi:.from.
.noexc206:                                        ; preds = %bb.av
  %i.tc = load ptr, ptr %i.tb, align 8, !tbaa !117, !noalias !1230
  invoke void @_ZN4tlog6Logger3logIJRKN7nanogui5ArrayIfLm2EEEEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOSB_(ptr noundef nonnull align 8 dereferenceable(56) %i.tc, i32 noundef 4, ptr nonnull @.str.222, i64 47, ptr noundef nonnull align 4 dereferenceable(8) %.reload.addr1141)
          to label %.noexc207 unwind label %.body211.from..loopexit.split-lp

.noexc207:                                        ; preds = %.noexc206
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %.reload.addr1141, align 8, !tbaa !80, !noalias !1230
  %i.td = invoke <2 x float> @_ZN3tev8whiteD50Ev()
          to label %.noexc208 unwind label %.body211.from..loopexit.split-lp

.noexc208:                                        ; preds = %.noexc207
  invoke void @_ZN3tev18adaptWhiteBradfordEN7nanogui5ArrayIfLm2EEES2_(ptr dead_on_unwind nonnull writable sret(%"struct.nanogui::Matrix") align 4 %.reload.addr1115, <2 x float> %.sroa.01.0.copyload.i, <2 x float> %i.td)
          to label %.from..noexc209 unwind label %.body211.from..loopexit.split-lp

.from..noexc209:                                  ; preds = %.noexc208
  %.sroa.9139.0.copyload141.i = load float, ptr %.sroa.9139.0..sroa_idx140.i, align 8, !noalias !1230
  %.sroa.15148.0.copyload150.i = load float, ptr %.sroa.15148.0..sroa_idx149.i, align 4, !noalias !1230
  %i.te = load <2 x float>, ptr %.reload.addr1115, align 8, !noalias !1230
  %i.tf = load <2 x float>, ptr %.sroa.11142.0..sroa_idx143.i, align 4, !noalias !1230
  %i.tg = load <2 x float>, ptr %.sroa.17151.0..sroa_idx152.i, align 8, !noalias !1230
  %.sroa.21.0.copyload158.i = load float, ptr %.sroa.21.0..sroa_idx157.i, align 8, !tbaa !80, !noalias !1230
  br label %bb.ay

bb.aw:                                            ; preds = %.noexc205
  %i.th = load ptr, ptr %.reload.addr1139, align 8, !tbaa !158, !noalias !1230
  %i.ti = invoke i32 @_ZN3tev12tiffGetValueItEENSt3__18optionalIT_EEP4tiffj(ptr noundef %i.th, i32 noundef range(i32 0, 65536) %i.hx)
          to label %bb.ay unwind label %.body211.from..loopexit.split-lp ; 0 uses

.from..sink.split.i:                              ; preds = %.sink.split.i.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit76.thread.i, %.sink.split.i.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit78.thread.i, %.sink.split.i.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit80.thread.i, %.sink.split.i.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit80.i, %.sink.split.i.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit78.i, %.sink.split.i.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit76.i, %.split173.i, %.split177.i, %.split182.i
  %.sink.i = phi ptr [ %i.jr, %.sink.split.i.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit76.i ], [ %i.qt, %.sink.split.i.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit78.i ], [ %i.sm, %.sink.split.i.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit80.i ], [ %i.jr, %.sink.split.i.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit76.thread.i ], [ %i.jr, %.split173.i ], [ %i.qt, %.sink.split.i.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit78.thread.i ], [ %i.qt, %.split177.i ], [ %i.sm, %.sink.split.i.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit80.thread.i ], [ %i.sm, %.split182.i ]
  %.pn70.pn.pn.ph.i = phi { ptr, i32 } [ %i.jt, %.sink.split.i.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit76.i ], [ %i.qv, %.sink.split.i.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit78.i ], [ %i.so, %.sink.split.i.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit80.i ], [ %i.js, %.sink.split.i.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit76.thread.i ], [ %i.jz, %.split173.i ], [ %i.qu, %.sink.split.i.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit78.thread.i ], [ %i.rb, %.split177.i ], [ %i.sn, %.sink.split.i.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit80.thread.i ], [ %i.su, %.split182.i ]
  call void @__cxa_free_exception(ptr %.sink.i) #44, !noalias !1230
  br label %.from.1012

bb.ax:                                            ; preds = %bb.at, %bb.an, %bb.ai, %bb.ad
  unreachable

bb.ay:                                            ; preds = %.from..noexc209, %.from..noexc204, %bb.aw
  %.sroa.9139.1.i = phi float [ %.sroa.9139.0.copyload.i, %.from..noexc204 ], [ %.sroa.9139.0.copyload141.i, %.from..noexc209 ], [ 0.000000e+00, %bb.aw ] ; 3 uses
  %.sroa.15148.1.i = phi float [ %.sroa.15148.0.copyload.i, %.from..noexc204 ], [ %.sroa.15148.0.copyload150.i, %.from..noexc209 ], [ 0.000000e+00, %bb.aw ] ; 3 uses
  %.sroa.21.1.i = phi float [ %.sroa.21.0.copyload.i, %.from..noexc204 ], [ %.sroa.21.0.copyload158.i, %.from..noexc209 ], [ 1.000000e+00, %bb.aw ] ; 3 uses
  %i.tj = phi <2 x float> [ %i.si, %.from..noexc204 ], [ %i.tg, %.from..noexc209 ], [ zeroinitializer, %bb.aw ] ; 3 uses
  %i.tk = phi <2 x float> [ %i.sh, %.from..noexc204 ], [ %i.tf, %.from..noexc209 ], [ <float 0.000000e+00, float 1.000000e+00>, %bb.aw ] ; 3 uses
  %i.tl = phi <2 x float> [ %i.sg, %.from..noexc204 ], [ %i.te, %.from..noexc209 ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.aw ] ; 3 uses
  %i.tm = shufflevector <2 x float> %i.qm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tl, <2 x float> %i.tm, <2 x float> zeroinitializer)
  %i.to = extractelement <2 x float> %i.qm, i64 0
  %i.tp = call float @llvm.fmuladd.f32(float %.sroa.9139.1.i, float %i.to, float 0.000000e+00)
  %i.tq = extractelement <2 x float> %i.qm, i64 1
  %i.tr = call float @llvm.fmuladd.f32(float %.sroa.15148.1.i, float %i.tq, float %i.tp)
  %i.ts = call float @llvm.fmuladd.f32(float %.sroa.21.1.i, float %.sroa.10104.0.i, float %i.tr)
  %i.tt = extractelement <2 x float> %i.ql, i64 0
  %i.tu = call float @llvm.fmuladd.f32(float %.sroa.9139.1.i, float %i.tt, float 0.000000e+00)
  %i.tv = extractelement <2 x float> %i.ql, i64 1
  %i.tw = call float @llvm.fmuladd.f32(float %.sroa.15148.1.i, float %i.tv, float %i.tu)
  %i.tx = call float @llvm.fmuladd.f32(float %.sroa.21.1.i, float %.sink64.i.i, float %i.tw)
  %i.ty = extractelement <2 x float> %i.qk, i64 0
  %i.tz = call float @llvm.fmuladd.f32(float %.sroa.9139.1.i, float %i.ty, float 0.000000e+00)
  %i.ua = extractelement <2 x float> %i.qk, i64 1
  %i.ub = call float @llvm.fmuladd.f32(float %.sroa.15148.1.i, float %i.ua, float %i.tz)
  %i.uc = call float @llvm.fmuladd.f32(float %.sroa.21.1.i, float %.sink.i.i, float %i.ub)
  %i.ud = shufflevector <2 x float> %i.qm, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ue = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tk, <2 x float> %i.ud, <2 x float> %i.tn)
  %i.uf = insertelement <2 x float> poison, float %.sroa.10104.0.i, i64 0
  %i.ug = shufflevector <2 x float> %i.uf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tj, <2 x float> %i.ug, <2 x float> %i.ue)
  store <2 x float> %i.uh, ptr %.reload.addr1111, align 8, !alias.scope !1230
  store float %i.ts, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1230
  %i.ui = shufflevector <2 x float> %i.ql, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tl, <2 x float> %i.ui, <2 x float> zeroinitializer)
  %i.uk = shufflevector <2 x float> %i.ql, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ul = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tk, <2 x float> %i.uk, <2 x float> %i.uj)
  %i.um = insertelement <2 x float> poison, float %.sink64.i.i, i64 0
  %i.un = shufflevector <2 x float> %i.um, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tj, <2 x float> %i.un, <2 x float> %i.ul)
  store <2 x float> %i.uo, ptr %.sroa.6.0..sroa_idx.i, align 4, !alias.scope !1230
  store float %i.tx, ptr %.sroa.8.0..sroa_idx.i, align 4, !alias.scope !1230
  %i.up = shufflevector <2 x float> %i.qk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tl, <2 x float> %i.up, <2 x float> zeroinitializer)
  %i.ur = shufflevector <2 x float> %i.qk, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.us = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tk, <2 x float> %i.ur, <2 x float> %i.uq)
  %i.ut = insertelement <2 x float> poison, float %.sink.i.i, i64 0
  %i.uu = shufflevector <2 x float> %i.ut, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tj, <2 x float> %i.uu, <2 x float> %i.us)
  store <2 x float> %i.uv, ptr %.sroa.9.0..sroa_idx.i, align 8, !alias.scope !1230
  store float %i.uc, ptr %.sroa.11.0..sroa_idx.i, align 8, !tbaa !80, !alias.scope !1230
  store i8 1, ptr %i.hj, align 4, !tbaa !1235, !alias.scope !1230
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #44
  store i64 %.0133529.lcssa1342.neg, ptr %i.a, align 8, !tbaa !87
  %i.uw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc214 unwind label %.body211.from.766

.noexc214:                                        ; preds = %bb.ay
  %i.ux = load ptr, ptr %i.uw, align 8, !tbaa !117
  invoke void @_ZN4tlog6Logger3logIJmRKN7nanogui6MatrixIfLm3EEEEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOSB_(ptr noundef nonnull align 8 dereferenceable(56) %i.ux, i32 noundef 4, ptr nonnull @.str.43, i64 32, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(36) %.reload.addr1111)
          to label %_ZN4tlog5debugIJmRKN7nanogui6MatrixIfLm3EEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS9_.exit unwind label %.body211.from.766

_ZN4tlog5debugIJmRKN7nanogui6MatrixIfLm3EEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS9_.exit: ; preds = %.noexc214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #44
  %i.uy = load i8, ptr %i.hj, align 4, !tbaa !1235, !range !184, !noundef !185
  %i.uz = trunc nuw i8 %i.uy to i1
  br i1 %i.uz, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %_ZN4tlog5debugIJmRKN7nanogui6MatrixIfLm3EEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS9_.exit
  invoke void @_ZNSt3__127__throw_bad_optional_accessB8ne180100Ev() #45
          to label %.noexc216 unwind label %.body211.from.763

.noexc216:                                        ; preds = %bb.az
  unreachable

bb.ba:                                            ; preds = %_ZN4tlog5debugIJmRKN7nanogui6MatrixIfLm3EEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS9_.exit
  %i.va = load <3 x float>, ptr %i.ez, align 8, !tbaa !79, !noalias !1236 ; 3 uses
  %i.vb = shufflevector <3 x float> %i.va, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.vc = load float, ptr %.sroa.5430.0..sroa_idx, align 4, !tbaa !79, !noalias !1236
  %i.vd = load <3 x float>, ptr %.sroa.7432.0..sroa_idx, align 4, !tbaa !79, !noalias !1236 ; 3 uses
  %i.ve = shufflevector <3 x float> %i.vd, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.vf = load float, ptr %.sroa.8433.0..sroa_idx, align 8, !tbaa !79, !noalias !1236
  %i.vg = load <3 x float>, ptr %.sroa.10435.0..sroa_idx, align 8, !tbaa !79, !noalias !1236 ; 3 uses
  %i.vh = shufflevector <3 x float> %i.vg, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.vi = load float, ptr %.sroa.11436.0..sroa_idx, align 4, !tbaa !79, !noalias !1236
  %i.vj = load <4 x float>, ptr %.reload.addr1111, align 8, !tbaa !79, !noalias !1236 ; 4 uses
  %i.vk = load float, ptr %.sroa.6.0..sroa_idx.i, align 4, !tbaa !79, !noalias !1236 ; 3 uses
  %i.vl = shufflevector <4 x float> %i.vj, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.vm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.vb, <4 x float> %i.vl, <4 x float> zeroinitializer)
  %i.vn = load <2 x float>, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !79, !noalias !1236 ; 4 uses
  %i.vo = shufflevector <2 x float> %i.vn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.vp = shufflevector <4 x float> %i.vj, <4 x float> %i.vo, <4 x i32> <i32 1, i32 1, i32 1, i32 4>
  %i.vq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ve, <4 x float> %i.vp, <4 x float> %i.vm)
  %i.vr = shufflevector <4 x float> %i.vj, <4 x float> %i.vo, <4 x i32> <i32 2, i32 2, i32 2, i32 5>
  %i.vs = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.vh, <4 x float> %i.vr, <4 x float> %i.vq)
  store <4 x float> %i.vs, ptr %i.ez, align 8
  %i.vt = load <4 x float>, ptr %.sroa.8.0..sroa_idx.i, align 4, !tbaa !79, !noalias !1236 ; 4 uses
  %i.vu = shufflevector <3 x float> %i.va, <3 x float> poison, <4 x i32> <i32 poison, i32 2, i32 0, i32 poison>
  %i.vv = insertelement <4 x float> poison, float %i.vc, i64 0
  %i.vw = shufflevector <4 x float> %i.vv, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.vx = shufflevector <4 x float> %i.vw, <4 x float> %i.vu, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.vy = shufflevector <4 x float> %i.vt, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.vz = insertelement <2 x float> %i.vy, float %i.vk, i64 0
  %i.wa = shufflevector <2 x float> %i.vz, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.wb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.vx, <4 x float> %i.wa, <4 x float> zeroinitializer)
  %i.wc = shufflevector <3 x float> %i.vd, <3 x float> poison, <4 x i32> <i32 poison, i32 2, i32 0, i32 poison>
  %i.wd = insertelement <4 x float> poison, float %i.vf, i64 0
  %i.we = shufflevector <4 x float> %i.wd, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.wf = shufflevector <4 x float> %i.we, <4 x float> %i.wc, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.wg = shufflevector <4 x float> %i.vt, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.wh = shufflevector <2 x float> %i.vn, <2 x float> %i.wg, <4 x i32> <i32 0, i32 0, i32 3, i32 3>
  %i.wi = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.wf, <4 x float> %i.wh, <4 x float> %i.wb)
  %i.wj = shufflevector <3 x float> %i.vg, <3 x float> poison, <4 x i32> <i32 poison, i32 2, i32 0, i32 poison>
  %i.wk = insertelement <4 x float> poison, float %i.vi, i64 0
  %i.wl = shufflevector <4 x float> %i.wk, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.wm = shufflevector <4 x float> %i.wl, <4 x float> %i.wj, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.wn = shufflevector <4 x float> %i.vt, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 3, i32 3>
  %i.wo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.wm, <4 x float> %i.wn, <4 x float> %i.wi)
  store <4 x float> %i.wo, ptr %.sroa.8433.0..sroa_idx, align 8
  %i.wp = getelementptr inbounds nuw i8, ptr %i.j, i64 296
  %i.wq = getelementptr inbounds nuw i8, ptr %i.j, i64 304
  %i.wr = getelementptr inbounds nuw i8, ptr %i.j, i64 308 ; 2 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %i.j, i64 316
  %i.wt = getelementptr inbounds nuw i8, ptr %i.j, i64 320
  %i.wu = getelementptr inbounds nuw i8, ptr %i.j, i64 324
  %i.wv = load <2 x float>, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !79, !noalias !1236 ; 2 uses
  %i.ww = load <3 x float>, ptr %.reload.addr1114, align 4, !tbaa !79, !noalias !1237 ; 2 uses
  %i.wx = shufflevector <3 x float> %i.ww, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.wy = load float, ptr %i.wp, align 8, !tbaa !79, !noalias !1237
  %i.wz = load <3 x float>, ptr %i.wq, align 8, !tbaa !79, !noalias !1237 ; 3 uses
  %i.xa = shufflevector <3 x float> %i.wz, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.xb = load float, ptr %i.wr, align 4, !tbaa !79, !noalias !1237
  %i.xc = load <3 x float>, ptr %i.ws, align 4, !tbaa !79, !noalias !1237 ; 3 uses
  %i.xd = shufflevector <3 x float> %i.xc, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.xe = load float, ptr %i.wt, align 8, !tbaa !79, !noalias !1237
  %i.xf = shufflevector <4 x float> %i.vj, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.xg = insertelement <2 x float> %i.xf, float %i.vk, i64 1
  %i.xh = shufflevector <2 x float> %i.xg, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.xi = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.wx, <4 x float> %i.xh, <4 x float> zeroinitializer)
  %i.xj = shufflevector <2 x float> %i.wv, <2 x float> %i.vn, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.xk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xa, <4 x float> %i.xj, <4 x float> %i.xi)
  %i.xl = shufflevector <4 x float> %i.vt, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.xm = shufflevector <2 x float> %i.wv, <2 x float> %i.xl, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.xn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xd, <4 x float> %i.xm, <4 x float> %i.xk)
  store <4 x float> %i.xn, ptr %.reload.addr1114, align 4
  %i.xo = load <2 x float>, ptr %.sroa.9.0..sroa_idx.i, align 8, !tbaa !79, !noalias !1236 ; 3 uses
  %i.xp = insertelement <4 x float> poison, float %i.wy, i64 0
  %i.xq = insertelement <4 x float> %i.xp, float %i.vk, i64 1
  %i.xr = shufflevector <2 x float> %i.xo, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.xs = shufflevector <4 x float> %i.xq, <4 x float> %i.xr, <4 x i32> <i32 0, i32 1, i32 4, i32 poison> ; 2 uses
  %i.xt = shufflevector <4 x float> %i.xs, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.xu = shufflevector <4 x float> %i.wx, <4 x float> %i.xs, <4 x i32> <i32 5, i32 2, i32 0, i32 6>
  %i.xv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xt, <4 x float> %i.xu, <4 x float> zeroinitializer)
  %i.xw = shufflevector <3 x float> %i.wz, <3 x float> poison, <4 x i32> <i32 poison, i32 2, i32 0, i32 poison>
  %i.xx = insertelement <4 x float> poison, float %i.xb, i64 0
  %i.xy = shufflevector <4 x float> %i.xx, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.xz = shufflevector <4 x float> %i.xy, <4 x float> %i.xw, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.ya = shufflevector <2 x float> %i.vn, <2 x float> %i.xo, <4 x i32> <i32 0, i32 0, i32 3, i32 3>
  %i.yb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xz, <4 x float> %i.ya, <4 x float> %i.xv)
  %i.yc = shufflevector <3 x float> %i.xc, <3 x float> poison, <4 x i32> <i32 poison, i32 2, i32 0, i32 poison>
  %i.yd = insertelement <4 x float> poison, float %i.xe, i64 0
  %i.ye = shufflevector <4 x float> %i.yd, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.yf = shufflevector <4 x float> %i.ye, <4 x float> %i.yc, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.yg = load float, ptr %.sroa.10.0..sroa_idx.i, align 4, !tbaa !79, !noalias !1236
  %i.yh = load float, ptr %.sroa.11.0..sroa_idx.i, align 8, !tbaa !79, !noalias !1236 ; 2 uses
  %i.yi = shufflevector <3 x float> %i.va, <3 x float> %i.ww, <2 x i32> <i32 2, i32 5>
  %i.yj = shufflevector <2 x float> %i.xo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yi, <2 x float> %i.yj, <2 x float> zeroinitializer)
  %i.yl = shufflevector <3 x float> %i.vd, <3 x float> %i.wz, <2 x i32> <i32 2, i32 5>
  %i.ym = insertelement <2 x float> poison, float %i.yg, i64 0
  %i.yn = shufflevector <2 x float> %i.ym, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yl, <2 x float> %i.yn, <2 x float> %i.yk)
  %i.yp = shufflevector <3 x float> %i.vg, <3 x float> %i.xc, <2 x i32> <i32 2, i32 5>
  %i.yq = insertelement <2 x float> poison, float %i.yh, i64 0
  %i.yr = shufflevector <2 x float> %i.yq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ys = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yp, <2 x float> %i.yr, <2 x float> %i.yo) ; 2 uses
  %i.yt = extractelement <2 x float> %i.ys, i64 0
  store float %i.yt, ptr %.sroa.12437.0..sroa_idx, align 8, !tbaa !80
  %i.yu = insertelement <2 x float> %i.vy, float %i.yh, i64 1
  %i.yv = shufflevector <2 x float> %i.yu, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.yw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.yf, <4 x float> %i.yv, <4 x float> %i.yb)
  store <4 x float> %i.yw, ptr %i.wr, align 4
  %i.yx = extractelement <2 x float> %i.ys, i64 1
  store float %i.yx, ptr %i.wu, align 4, !tbaa !80
  br label %.loopexit519

.body211.from..loopexit:                          ; preds = %.thread591.1, %.thread591, %.from.659
  %lpad.loopexit1319 = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.1012

.body211.from..loopexit.split-lp:                 ; preds = %bb.aw, %.noexc208, %.noexc207, %.noexc206, %bb.av, %bb.aq, %.noexc203, %.noexc202, %.noexc201, %bb.ap, %_ZN7nanogui7inverseERKNS_6MatrixIfLm3EEE.exit.i, %.noexc198, %._crit_edge192.i, %.noexc196, %.noexc195, %._crit_edge.i
  %lpad.loopexit.split-lp1320 = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.1012

.body211.from.766:                                ; preds = %bb.ay, %.noexc214
  %i.yy = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #44
  br label %.from.1012

.body211.from.763:                                ; preds = %bb.az
  %i.yz = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.1012

.thread591:                                       ; preds = %.noexc194
  %i.za = getelementptr inbounds nuw i8, ptr %i.j, i64 474
  %i.zb = load i16, ptr %i.za, align 2, !tbaa !82
  %i.zc = getelementptr inbounds nuw i8, ptr %i.j, i64 476
  %i.zd = load i16, ptr %i.zc, align 4, !tbaa !82
  %i.ze = zext i16 %i.zd to i32
  %i.zf = getelementptr inbounds nuw i8, ptr %i.j, i64 478
  %i.zg = load i16, ptr %i.zf, align 2, !tbaa !82
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %.reload.addr1116, align 4, !tbaa !79, !noalias !1238
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.gz, align 4, !tbaa !79, !noalias !1238
  store float 1.000000e+00, ptr %i.hd, align 4, !tbaa !79, !noalias !1238
  %i.zh = load ptr, ptr %.reload.addr1139, align 8, !tbaa !158, !noalias !1238
  %i.zi = invoke { ptr, i64 } @_ZN3tev11tiffGetSpanIfEENSt3__14spanIKT_Lm18446744073709551615EEEP4tiffj(ptr noundef %i.zh, i32 noundef range(i32 0, 65536) %i.ze)
          to label %.noexc194.1 unwind label %.body211.from..loopexit ; 2 uses

.noexc194.1:                                      ; preds = %.thread591
  %i.zj = extractvalue { ptr, i64 } %i.zi, 1      ; 2 uses
  %.not588.1 = icmp eq i64 %i.zj, 0
  br i1 %.not588.1, label %.thread591.1, label %bb.aa

.thread591.1:                                     ; preds = %.noexc194.1
  %i.zk = getelementptr inbounds nuw i8, ptr %i.j, i64 480
  %i.zl = load i16, ptr %i.zk, align 8, !tbaa !82
  %i.zm = getelementptr inbounds nuw i8, ptr %i.j, i64 482
  %i.zn = load i16, ptr %i.zm, align 2, !tbaa !82
  %i.zo = zext i16 %i.zn to i32
  %i.zp = getelementptr inbounds nuw i8, ptr %i.j, i64 484
  %i.zq = load i16, ptr %i.zp, align 4, !tbaa !82
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %.reload.addr1116, align 4, !tbaa !79, !noalias !1239
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.gz, align 4, !tbaa !79, !noalias !1239
  store float 1.000000e+00, ptr %i.hd, align 4, !tbaa !79, !noalias !1239
  %i.zr = load ptr, ptr %.reload.addr1139, align 8, !tbaa !158, !noalias !1239
  %i.zs = invoke { ptr, i64 } @_ZN3tev11tiffGetSpanIfEENSt3__14spanIKT_Lm18446744073709551615EEEP4tiffj(ptr noundef %i.zr, i32 noundef range(i32 0, 65536) %i.zo)
          to label %.noexc194.2 unwind label %.body211.from..loopexit ; 2 uses

.noexc194.2:                                      ; preds = %.thread591.1
  %i.zt = extractvalue { ptr, i64 } %i.zs, 1      ; 2 uses
  %.not588.2 = icmp eq i64 %i.zt, 0
  br i1 %.not588.2, label %.loopexit519, label %bb.aa

.loopexit519:                                     ; preds = %.noexc194.2, %bb.ba
  store float 1.000000e+00, ptr %.reload.addr1117, align 8, !tbaa !79
  %i.zu = load ptr, ptr %.reload.addr1139, align 8, !tbaa !158
  %i.zv = invoke i64 @_ZN3tev12tiffGetValueIfEENSt3__18optionalIT_EEP4tiffj(ptr noundef %i.zu, i32 noundef 50730)
          to label %bb.bb unwind label %.from.989 ; 2 uses

bb.bb:                                            ; preds = %.loopexit519
  %i.zw = and i64 %i.zv, 4294967296
  %.not589 = icmp eq i64 %i.zw, 0
  %i.zx = trunc i64 %i.zv to i32
  %i.zy = bitcast i32 %i.zx to float
  %i.zz = select i1 %.not589, float 0.000000e+00, float %i.zy
  %i.aaa = call float @exp2f(float noundef %i.zz) #44
  %i.aab = load float, ptr %.reload.addr1117, align 8, !tbaa !79
  %i.aac = fmul float %i.aaa, %i.aab
  store float %i.aac, ptr %.reload.addr1117, align 8, !tbaa !79
  %i.aad = load ptr, ptr %.reload.addr1139, align 8, !tbaa !158
  %i.aae = invoke i64 @_ZN3tev12tiffGetValueIfEENSt3__18optionalIT_EEP4tiffj(ptr noundef %i.aad, i32 noundef 51109)
          to label %bb.bc unwind label %.from.986 ; 2 uses

bb.bc:                                            ; preds = %bb.bb
  %i.aaf = and i64 %i.aae, 4294967296
  %.not590 = icmp eq i64 %i.aaf, 0
  %i.aag = trunc i64 %i.aae to i32
  %i.aah = bitcast i32 %i.aag to float
  %i.aai = select i1 %.not590, float 0.000000e+00, float %i.aah
  %i.aaj = call float @exp2f(float noundef %i.aai) #44
  %i.aak = load float, ptr %.reload.addr1117, align 8, !tbaa !79
  %i.aal = fmul float %i.aaj, %i.aak              ; 2 uses
  store float %i.aal, ptr %.reload.addr1117, align 8, !tbaa !79
  %i.aam = fcmp une float %i.aal, 1.000000e+00
  br i1 %i.aam, label %bb.bd, label %bb.bo

bb.bd:                                            ; preds = %bb.bc
  %i.aan = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc222 unwind label %.from.983

.noexc222:                                        ; preds = %bb.bd
  %i.aao = load ptr, ptr %i.aan, align 8, !tbaa !117
  invoke void @_ZN4tlog6Logger3logIJRfEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.aao, i32 noundef 4, ptr nonnull @.str.44, i64 27, ptr noundef nonnull align 4 dereferenceable(4) %.reload.addr1117)
          to label %_ZN4tlog5debugIJRfEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS5_.exit unwind label %.from.983

_ZN4tlog5debugIJRfEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS5_.exit: ; preds = %.noexc222
  %i.aap = load atomic i8, ptr @_ZGVZN3tev10ThreadPool6globalEvE4pool acquire, align 8
  %i.aaq = icmp eq i8 %i.aap, 0
  br i1 %i.aaq, label %bb.be, label %_ZN3tev10ThreadPool6globalEv.exit, !prof !138

bb.be:                                            ; preds = %_ZN4tlog5debugIJRfEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS5_.exit
  %i.aar = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #44
  %.not.i224 = icmp eq i32 %i.aar, 0
  br i1 %.not.i224, label %_ZN3tev10ThreadPool6globalEv.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZN3tev10ThreadPoolC1Ev(ptr noundef nonnull align 8 dereferenceable(216) @_ZZN3tev10ThreadPool6globalEvE4pool)
          to label %bb.bg unwind label %.body225.from.772

bb.bg:                                            ; preds = %bb.bf
  %i.aas = call i32 @__cxa_atexit(ptr nonnull @_ZN3tev10ThreadPoolD1Ev, ptr nonnull @_ZZN3tev10ThreadPool6globalEvE4pool, ptr nonnull @__dso_handle) #44 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #44
  br label %_ZN3tev10ThreadPool6globalEv.exit

.body225.from.772:                                ; preds = %bb.bf
  %i.aat = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #44
  br label %.from.1012

_ZN3tev10ThreadPool6globalEv.exit:                ; preds = %bb.bg, %bb.be, %_ZN4tlog5debugIJRfEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS5_.exit
  %i.aau = load i64, ptr %.reload.addr1138, align 8, !tbaa !87
  %i.aav = mul i64 %i.aau, %i.cb
  store ptr %.reload.addr1138, ptr %18, align 8, !tbaa !142
  %i.aaw = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %2, ptr %i.aaw, align 8, !tbaa !146
  %i.aax = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr %.reload.addr1117, ptr %i.aax, align 8, !tbaa !148
  invoke fastcc void @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZNS_23postprocessLinearRawDngEP4tiffRKNS_16MultiChannelViewIfEERNS_9ImageDataEbbiE3$_1EENS_4TaskIvEES4_S4_mT0_i"(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task") align 8 %.reload.addr1111, ptr noundef nonnull align 8 dereferenceable(216) @_ZZN3tev10ThreadPool6globalEvE4pool, i64 noundef 0, i64 noundef %i.cb, i64 noundef %i.aav, ptr noundef nonnull byval(%class.anon.150) align 8 %18, i32 noundef %6)
          to label %bb.bh unwind label %.body225.from.

bb.bh:                                            ; preds = %_ZN3tev10ThreadPool6globalEv.exit
  %i.aay = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !95
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aay, i64 8
  %i.aba = load atomic i32, ptr %i.aaz acquire, align 4
  %i.abb = icmp slt i32 %i.aba, 2
  br i1 %i.abb, label %bb.bi, label %AfterCoroSave

bb.bi:                                            ; preds = %bb.bh
  %i.abc = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !95
  %i.abd = getelementptr inbounds nuw i8, ptr %i.abc, i64 8
  %i.abe = atomicrmw add ptr %i.abd, i32 -1 acq_rel, align 4
  %i.abf = icmp slt i32 %i.abe, 1
  br i1 %i.abf, label %bb.bj, label %.thread.sink.split

bb.bj:                                            ; preds = %bb.bi
  %i.abg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.bj
  %i.abh = load ptr, ptr %i.abg, align 8, !tbaa !117 ; 7 uses
  %i.abi = load i32, ptr %i.abh, align 8, !tbaa !128
  %i.abj = and i32 %i.abi, 8
  %.not.i.i.i.i = icmp eq i32 %i.abj, 0
  br i1 %.not.i.i.i.i, label %bb.bk, label %.thread.sink.split

bb.bk:                                            ; preds = %.noexc.i.i
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abh, i64 8
  %i.abl = load ptr, ptr %i.abk, align 8, !tbaa !129 ; 2 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abh, i64 16
  %i.abn = load ptr, ptr %i.abm, align 8, !tbaa !130 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.abl, %i.abn
  br i1 %.not12.i.i.i.i.i, label %.thread.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.bk
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abh, i64 32
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abh, i64 48
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abh, i64 33
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abh, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.abl, %.from..lr.ph.i.i.i.i.i ], [ %i.acd, %.noexc2.i.i ] ; 2 uses
  %i.abs = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !133 ; 2 uses
  %i.abt = load i8, ptr %i.abo, align 8           ; 2 uses
  %i.abu = trunc i8 %i.abt to i1                  ; 2 uses
  %i.abv = load ptr, ptr %i.abp, align 8
  %i.abw = select i1 %i.abu, ptr %i.abv, ptr %i.abq
  %i.abx = load i64, ptr %i.abr, align 8
  %i.aby = lshr i8 %i.abt, 1
  %i.abz = zext nneg i8 %i.aby to i64
  %i.aca = select i1 %i.abu, i64 %i.abx, i64 %i.abz
  %i.acb = load ptr, ptr %i.abs, align 8, !tbaa !89
  %i.acc = load ptr, ptr %i.acb, align 8
  invoke void %i.acc(ptr noundef nonnull align 8 dereferenceable(8) %i.abs, ptr %i.abw, i64 %i.aca, i32 noundef 8, ptr nonnull @.str.187, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !0

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.acd = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
end_hunk_0
