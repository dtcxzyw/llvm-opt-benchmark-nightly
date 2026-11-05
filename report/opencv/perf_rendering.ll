Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/perf_rendering?download=true
inline.NumInlined: 2221
inline.NumDeleted: 1120
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN11opencv_test32RenderingTest_rasterizeTriangles12PerfTestBodyEv:bb.a
  %i.ao = icmp ugt i64 %i.an, 384307168202282325
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br i1 %i.ao, label %bb.s, label %_ZNSt6vectorIS_IN2cv3VecIfLi3EEESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.i.i

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #34
          to label %.noexc.i.i unwind label %bb.z

.noexc.i.i:                                       ; preds = %bb.s
  unreachable

_ZNSt6vectorIS_IN2cv3VecIfLi3EEESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.i.i: ; preds = %bb.r
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ai, %i.aj
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12_Vector_baseISt6vectorIN2cv3VecIfLi3EEESaIS3_EESaIS5_EEC2EmRKS6_.exit.i.i.i, label %_ZNSt15__new_allocatorISt6vectorIN2cv3VecIfLi3EEESaIS3_EEE8allocateEmPKv.exit.i.i.i.i.i.i

_ZNSt15__new_allocatorISt6vectorIN2cv3VecIfLi3EEESaIS3_EEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %_ZNSt6vectorIS_IN2cv3VecIfLi3EEESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.i.i
  %i.ap = mul nuw nsw i64 %i.an, 24
  %i.aq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #32
          to label %_ZNSt12_Vector_baseISt6vectorIN2cv3VecIfLi3EEESaIS3_EESaIS5_EEC2EmRKS6_.exit.i.i.i unwind label %bb.z

_ZNSt12_Vector_baseISt6vectorIN2cv3VecIfLi3EEESaIS3_EESaIS5_EEC2EmRKS6_.exit.i.i.i: ; preds = %_ZNSt15__new_allocatorISt6vectorIN2cv3VecIfLi3EEESaIS3_EEE8allocateEmPKv.exit.i.i.i.i.i.i, %_ZNSt6vectorIS_IN2cv3VecIfLi3EEESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.i.i
  %.pr.i.i.i = phi ptr [ null, %_ZNSt6vectorIS_IN2cv3VecIfLi3EEESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.i.i ], [ %i.aq, %_ZNSt15__new_allocatorISt6vectorIN2cv3VecIfLi3EEESaIS3_EEE8allocateEmPKv.exit.i.i.i.i.i.i ] ; 13 uses
  store ptr %.pr.i.i.i, ptr %2, align 8, !tbaa !135
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %.pr.i.i.i, i64 %i.an
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !136
  %i.at = invoke noundef ptr @_ZSt18__do_uninit_fill_nIPSt6vectorIN2cv3VecIfLi3EEESaIS3_EEmS5_ET_S7_T0_RKT1_(ptr noundef %.pr.i.i.i, i64 noundef %i.an, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.v unwind label %bb.t       ; 4 uses

bb.t:                                             ; preds = %_ZNSt12_Vector_baseISt6vectorIN2cv3VecIfLi3EEESaIS3_EESaIS5_EEC2EmRKS6_.exit.i.i.i
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.pr.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %.body.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.idx.i.i = mul nuw nsw i64 %i.an, 24
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i.i.i, i64 noundef %.idx.i.i) #30
  br label %.body.i.i

bb.v:                                             ; preds = %_ZNSt12_Vector_baseISt6vectorIN2cv3VecIfLi3EEESaIS3_EESaIS5_EEC2EmRKS6_.exit.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.at, ptr %i.av, align 8, !tbaa !137
  %i.aw = load ptr, ptr %3, align 8, !tbaa !132   ; 3 uses
  %.not.i.i.i44.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i44.i.i, label %_ZNSt6vectorIN2cv3VecIfLi3EEESaIS2_EED2Ev.exit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !138
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.bb) #30
  br label %_ZNSt6vectorIN2cv3VecIfLi3EEESaIS2_EED2Ev.exit.i.i

_ZNSt6vectorIN2cv3VecIfLi3EEESaIS2_EED2Ev.exit.i.i: ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.bc = load ptr, ptr %5, align 8, !tbaa !379   ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !379 ; 2 uses
  %.not44.i.i = icmp eq ptr %i.bc, %i.be
  br i1 %.not44.i.i, label %._crit_edge.i.i127, label %.lr.ph.i.i

._crit_edge.i.i127:                               ; preds = %_ZNSt6vectorIN2cv3VecIfLi3EEESaIS2_EE9push_backERKS2_.exit.2.i.i, %_ZNSt6vectorIN2cv3VecIfLi3EEESaIS2_EED2Ev.exit.i.i
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11opencv_testL12getModelOnceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIN2cv3VecIfLi3EEESaISB_EERS8_INSA_IiLi3EEESaISF_EESE_E4vert, i64 8), align 8, !tbaa !131
  %i.bg = load ptr, ptr @_ZZN11opencv_testL12getModelOnceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIN2cv3VecIfLi3EEESaISB_EERS8_INSA_IiLi3EEESaISF_EESE_E4vert, align 8, !tbaa !132
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi                    ; 4 uses
  %i.bk = sdiv exact i64 %i.bj, 12
  %i.bl = icmp ugt i64 %i.bk, 768614336404564650
  br i1 %i.bl, label %.invoke.i.i, label %bb.x

bb.x:                                             ; preds = %._crit_edge.i.i127
  %i.bm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11opencv_testL12getModelOnceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIN2cv3VecIfLi3EEESaISB_EERS8_INSA_IiLi3EEESaISF_EESE_E3col, i64 16), align 8, !tbaa !138
  %i.bn = load ptr, ptr @_ZZN11opencv_testL12getModelOnceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIN2cv3VecIfLi3EEESaISB_EERS8_INSA_IiLi3EEESaISF_EESE_E3col, align 8, !tbaa !132 ; 3 uses
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = ptrtoint ptr %i.bn to i64               ; 2 uses
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = icmp ult i64 %i.bq, %i.bj
  br i1 %i.br, label %_ZNSt12_Vector_baseIN2cv3VecIfLi3EEESaIS2_EE11_M_allocateEm.exit.i.i.i.i, label %_ZNSt6vectorIN2cv3VecIfLi3EEESaIS2_EE7reserveEm.exit.i.i

_ZNSt12_Vector_baseIN2cv3VecIfLi3EEESaIS2_EE11_M_allocateEm.exit.i.i.i.i: ; preds = %bb.x
  %i.bs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11opencv_testL12getModelOnceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIN2cv3VecIfLi3EEESaISB_EERS8_INSA_IiLi3EEESaISF_EESE_E3col, i64 8), align 8, !tbaa !131 ; 3 uses
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = sub i64 %i.bt, %i.bp
  %i.bv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #32
          to label %.noexc46.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc46.i.i:                                     ; preds = %_ZNSt12_Vector_baseIN2cv3VecIfLi3EEESaIS2_EE11_M_allocateEm.exit.i.i.i.i
  %.not13.i.i.i.i.i.i.i.i = icmp eq ptr %i.bn, %i.bs
  br i1 %.not13.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv3VecIfLi3EEESaIS2_EE20_M_allocate_and_copyIPKS2_EEPS2_mT_S9_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.noexc46.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %.015.i.i.i.i.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.bv, %.noexc46.i.i ] ; 4 uses
  %.01214.i.i.i.i.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.bn, %.noexc46.i.i ] ; 4 uses
  %i.bw = load float, ptr %.01214.i.i.i.i.i.i.i.i, align 4, !tbaa !141
  store float %i.bw, ptr %.015.i.i.i.i.i.i.i.i, align 4, !tbaa !141
  %i.bx = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i, i64 4
  %i.by = load float, ptr %i.bx, align 4, !tbaa !141
  %i.bz = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i.i.i, i64 4
  store float %i.by, ptr %i.bz, align 4, !tbaa !141
  %i.ca = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i, i64 8
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !141
  %i.cc = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i.i.i, i64 8
  store float %i.cb, ptr %i.cc, align 4, !tbaa !141
  %i.cd = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i, i64 12 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i.i.i, i64 12
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.cd, %i.bs
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv3VecIfLi3EEESaIS2_EE20_M_allocate_and_copyIPKS2_EEPS2_mT_S9_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !5

_ZNSt6vectorIN2cv3VecIfLi3EEESaIS2_EE20_M_allocate_and_copyIPKS2_EEPS2_mT_S9_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.noexc46.i.i
  %i.cf = load ptr, ptr @_ZZN11opencv_testL12getModelOnceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIN2cv3VecIfLi3EEESaISB_EERS8_INSA_IiLi3EEESaISF_EESE_E3col, align 8, !tbaa !132 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN2cv3VecIfLi3EEESaIS2_EE13_M_deallocateEPS2_m.exit.i.i.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIN2cv3VecIfLi3EEESaIS2_EE20_M_allocate_and_copyIPKS2_EEPS2_mT_S9_.exit.i.i.i
  %i.cg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11opencv_testL12getModelOnceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIN2cv3VecIfLi3EEESaISB_EERS8_INSA_IiLi3EEESaISF_EESE_E3col, i64 16), align 8, !tbaa !138
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = ptrtoint ptr %i.cf to i64
  %i.cj = sub i64 %i.ch, %i.ci
  call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef %i.cj) #30
  br label %_ZNSt12_Vector_baseIN2cv3VecIfLi3EEESaIS2_EE13_M_deallocateEPS2_m.exit.i.i.i

_ZNSt12_Vector_baseIN2cv3VecIfLi3EEESaIS2_EE13_M_deallocateEPS2_m.exit.i.i.i: ; preds = %bb.y, %_ZNSt6vectorIN2cv3VecIfLi3EEESaIS2_EE20_M_allocate_and_copyIPKS2_EEPS2_mT_S9_.exit.i.i.i
  store ptr %i.bv, ptr @_ZZN11opencv_testL12getModelOnceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIN2cv3VecIfLi3EEESaISB_EERS8_INSA_IiLi3EEESaISF_EESE_E3col, align 8, !tbaa !132
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bu
  store ptr %i.ck, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11opencv_testL12getModelOnceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIN2cv3VecIfLi3EEESaISB_EERS8_INSA_IiLi3EEESaISF_EESE_E3col, i64 8), align 8, !tbaa !131
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bj
  store ptr %i.cl, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11opencv_testL12getModelOnceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIN2cv3VecIfLi3EEESaISB_EERS8_INSA_IiLi3EEESaISF_EESE_E3col, i64 16), align 8, !tbaa !138
  br label %_ZNSt6vectorIN2cv3VecIfLi3EEESaIS2_EE7reserveEm.exit.i.i

bb.z:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorIN2cv3VecIfLi3EEESaIS3_EEE8allocateEmPKv.exit.i.i.i.i.i.i, %bb.s
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.z, %bb.u, %bb.t
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.cm, %bb.z ], [ %i.au, %bb.u ], [ %i.au, %bb.t ]
  %i.cn = load ptr, ptr %3, align 8, !tbaa !132   ; 3 uses
  %.not.i.i.i47.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i47.i.i, label %_ZNSt6vectorIN2cv3VecIfLi3EEESaIS2_EED2Ev.exit48.i.i, label %bb.aa

bb.aa:                                            ; preds = %.body.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !138
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = ptrtoint ptr %i.cn to i64
  %i.cs = sub i64 %i.cq, %i.cr
  call void @_ZdlPvm(ptr noundef nonnull %i.cn, i64 noundef %i.cs) #30
  br label %_ZNSt6vectorIN2cv3VecIfLi3EEESaIS2_EED2Ev.exit48.i.i

_ZNSt6vectorIN2cv3VecIfLi3EEESaIS2_EED2Ev.exit48.i.i: ; preds = %bb.aa, %.body.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.aq

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIN2cv3VecIfLi3EEESaIS2_EED2Ev.exit.i.i, %_ZNSt6vectorIN2cv3VecIfLi3EEESaIS2_EE9push_backERKS2_.exit.2.i.i
  %.sroa.037.045.i.i = phi ptr [ %i.jg, %_ZNSt6vectorIN2cv3VecIfLi3EEESaIS2_EE9push_backERKS2_.exit.2.i.i ], [ %i.bc, %_ZNSt6vectorIN2cv3VecIfLi3EEESaIS2_EED2Ev.exit.i.i ] ; 4 uses
  %i.ct = load ptr, ptr %.sroa.037.045.i.i, align 8, !tbaa !144 ; 4 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !145
  %i.cv = sext i32 %i.cu to i64                   ; 2 uses
  %i.cw = load ptr, ptr @_ZZN11opencv_testL12getModelOnceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIN2cv3VecIfLi3EEESaISB_EERS8_INSA_IiLi3EEESaISF_EESE_E4vert, align 8, !tbaa !132 ; 3 uses
  %i.cx = getelementptr inbounds nuw [12 x i8], ptr %i.cw, i64 %i.cv ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !141
  %i.da = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.db = load i32, ptr %i.da, align 4, !tbaa !145
  %i.dc = sext i32 %i.db to i64                   ; 2 uses
  %i.dd = getelementptr inbounds nuw [12 x i8], ptr %i.cw, i64 %i.dc ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.df = load float, ptr %i.de, align 4, !tbaa !141
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !145
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [12 x i8], ptr %i.cw, i64 %i.di ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !141
  %i.dm = load <2 x float>, ptr %i.cx, align 4, !tbaa !141 ; 3 uses
  %i.dn = load <2 x float>, ptr %i.dd, align 4, !tbaa !141 ; 2 uses
  %i.do = load <2 x float>, ptr %i.dj, align 4, !tbaa !141 ; 2 uses
  %i.dp = fsub <2 x float> %i.dn, %i.dm           ; 2 uses
  %i.dq = shufflevector <2 x float> %i.dn, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.dr = insertelement <2 x float> %i.dq, float %i.df, i64 0
  %i.ds = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.dt = insertelement <2 x float> %i.ds, float %i.cz, i64 0 ; 2 uses
  %i.du = fsub <2 x float> %i.dr, %i.dt           ; 2 uses
  %i.dv = fsub <2 x float> %i.do, %i.dm           ; 2 uses
  %i.dw = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.dx = insertelement <2 x float> %i.dw, float %i.dl, i64 0
  %i.dy = fsub <2 x float> %i.dx, %i.dt           ; 2 uses
  %i.dz = extractelement <2 x float> %i.dv, i64 1
  %i.ea = fneg float %i.dz
  %i.eb = extractelement <2 x float> %i.du, i64 0
  %i.ec = fmul float %i.eb, %i.ea
  %i.ed = extractelement <2 x float> %i.dp, i64 1
  %i.ee = extractelement <2 x float> %i.dy, i64 0
  %i.ef = call float @llvm.fmuladd.f32(float %i.ed, float %i.ee, float %i.ec)
  %i.eg = fneg <2 x float> %i.dy
  %i.eh = fmul <2 x float> %i.dp, %i.eg
  %i.ei = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.du, <2 x float> %i.dv, <2 x float> %i.eh)
  %i.ej = fpext float %i.ef to double             ; 3 uses
  %55 = call double @llvm.fmuladd.f64(double %i.ej, double %i.ej, double 0.000000e+00)
  %56 = fpext <2 x float> %i.ei to <2 x double>   ; 3 uses
  %57 = extractelement <2 x double> %56, i64 0    ; 2 uses
  %i.ek = call double @llvm.fmuladd.f64(double %57, double %57, double %55)
  %58 = extractelement <2 x double> %56, i64 1    ; 2 uses
  %i.el = call noundef double @llvm.fmuladd.f64(double %58, double %58, double %i.ek) ; 2 uses
  %sqrt.i.i.i.i = call noundef double @llvm.sqrt.f64(double %i.el)
  %i.em = fcmp une double %i.el, 0.000000e+00
  %i.en = fdiv double 1.000000e+00, %sqrt.i.i.i.i
  %i.eo = select i1 %i.em, double %i.en, double 0.000000e+00 ; 2 uses
  %i.ep = fmul double %i.eo, %i.ej
  %i.eq = fptrunc double %i.ep to float           ; 6 uses
  %59 = insertelement <2 x double> poison, double %i.eo, i64 0
  %60 = shufflevector <2 x double> %59, <2 x double> poison, <2 x i32> zeroinitializer
  %61 = fmul <2 x double> %60, %56                ; 2 uses
  %62 = extractelement <2 x double> %61, i64 0
  %i.er = fptrunc double %62 to float             ; 6 uses
  %63 = extractelement <2 x double> %61, i64 1
  %i.es = fptrunc double %63 to float             ; 6 uses
  %i.et = getelementptr inbounds nuw [24 x i8], ptr %.pr.i.i.i, i64 %i.cv ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8 ; 3 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !131 ; 8 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 16 ; 3 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !138
  %.not.i.i.i = icmp eq ptr %i.ev, %i.ex
  br i1 %.not.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i
  store float %i.eq, ptr %i.ev, align 4, !tbaa !141
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  store float %i.er, ptr %i.ey, align 4, !tbaa !141
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  store float %i.es, ptr %i.ez, align 4, !tbaa !141
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ev, i64 12
  store ptr %i.fa, ptr %i.eu, align 8, !tbaa !131
  br label %_ZNSt6vectorIN2cv3VecIfLi3EEESaIS2_EE9push_backERKS2_.exit.i.i

bb.ac:                                            ; preds = %.lr.ph.i.i
  %i.fb = load ptr, ptr %i.et, align 8, !tbaa !132 ; 5 uses
  %i.fc = ptrtoint ptr %i.ev to i64
  %i.fd = ptrtoint ptr %i.fb to i64               ; 2 uses
  %i.fe = sub i64 %i.fc, %i.fd                    ; 3 uses
  %i.ff = icmp eq i64 %i.fe, 9223372036854775800
  br i1 %i.ff, label %.invoke.i.i, label %_ZNKSt6vectorIN2cv3VecIfLi3EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

.invoke.i.i:                                      ; preds = %bb.ai, %bb.af, %bb.ac, %._crit_edge.i.i127
  %i.fg = phi ptr [ @.str.53, %._crit_edge.i.i127 ], [ @.str.47, %bb.ac ], [ @.str.47, %bb.af ], [ @.str.47, %bb.ai ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.fg) #34
          to label %.cont.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt6vectorIN2cv3VecIfLi3EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ac
  %i.fh = sdiv exact i64 %i.fe, 12                ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.fh, i64 1)
  %i.fi = add nsw i64 %.sroa.speculated.i.i.i.i, %i.fh ; 2 uses
  %i.fj = icmp ult i64 %i.fi, %i.fh
  %i.fk = call i64 @llvm.umin.i64(i64 %i.fi, i64 768614336404564650)
  %i.fl = select i1 %i.fj, i64 768614336404564650, i64 %i.fk ; 3 uses
  %.not.i.i55.i.i = icmp ne i64 %i.fl, 0
  call void @llvm.assume(i1 %.not.i.i55.i.i)
  %i.fm = mul nuw nsw i64 %i.fl, 12
  %i.fn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fm) #32
          to label %.noexc63.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc63.i.i:                                     ; preds = %_ZNKSt6vectorIN2cv3VecIfLi3EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fe ; 3 uses
  store float %i.eq, ptr %i.fo, align 4, !tbaa !141
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 4
  store float %i.er, ptr %i.fp, align 4, !tbaa !141
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  store float %i.es, ptr %i.fq, align 4, !tbaa !141
  %.not13.i.i.i.i.i.i56.i.i = icmp eq ptr %i.fb, %i.ev
  br i1 %.not13.i.i.i.i.i.i56.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi3EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.i.i, label %.lr.ph.i.i.i.i.i.i57.i.i

.lr.ph.i.i.i.i.i.i57.i.i:                         ; preds = %.noexc63.i.i, %.lr.ph.i.i.i.i.i.i57.i.i
  %.015.i.i.i.i.i.i58.i.i = phi ptr [ %i.fz, %.lr.ph.i.i.i.i.i.i57.i.i ], [ %i.fn, %.noexc63.i.i ] ; 4 uses
  %.01214.i.i.i.i.i.i59.i.i = phi ptr [ %i.fy, %.lr.ph.i.i.i.i.i.i57.i.i ], [ %i.fb, %.noexc63.i.i ] ; 4 uses
  %i.fr = load float, ptr %.01214.i.i.i.i.i.i59.i.i, align 4, !tbaa !141
  store float %i.fr, ptr %.015.i.i.i.i.i.i58.i.i, align 4, !tbaa !141
  %i.fs = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i59.i.i, i64 4
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !141
  %i.fu = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i58.i.i, i64 4
  store float %i.ft, ptr %i.fu, align 4, !tbaa !141
  %i.fv = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i59.i.i, i64 8
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !141
  %i.fx = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i58.i.i, i64 8
  store float %i.fw, ptr %i.fx, align 4, !tbaa !141
  %i.fy = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i59.i.i, i64 12 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i58.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i.i60.i.i = icmp eq ptr %i.fy, %i.ev
  br i1 %.not.i.i.i.i.i.i60.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi3EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.i.i, label %.lr.ph.i.i.i.i.i.i57.i.i, !llvm.loop !5

_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi3EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i57.i.i, %.noexc63.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.fn, %.noexc63.i.i ], [ %i.fz, %.lr.ph.i.i.i.i.i.i57.i.i ]
  %i.ga = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i, i64 12
  %.not.i35.i.i.i = icmp eq ptr %i.fb, null
  br i1 %.not.i35.i.i.i, label %.noexc49.i.i, label %bb.ad

bb.ad:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi3EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.i.i
  %i.gb = load ptr, ptr %i.ew, align 8, !tbaa !138
  %i.gc = ptrtoint ptr %i.gb to i64
  %i.gd = sub i64 %i.gc, %i.fd
  call void @_ZdlPvm(ptr noundef nonnull %i.fb, i64 noundef %i.gd) #30
  br label %.noexc49.i.i

.noexc49.i.i:                                     ; preds = %bb.ad, %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi3EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.i.i
  store ptr %i.fn, ptr %i.et, align 8, !tbaa !132
  store ptr %i.ga, ptr %i.eu, align 8, !tbaa !131
  %i.ge = getelementptr inbounds nuw [12 x i8], ptr %i.fn, i64 %i.fl
  store ptr %i.ge, ptr %i.ew, align 8, !tbaa !138
  %.pre.i.i = load ptr, ptr %.sroa.037.045.i.i, align 8, !tbaa !144 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 4
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !145
  %.pre55.i = sext i32 %.pre.i to i64
  br label %_ZNSt6vectorIN2cv3VecIfLi3EEESaIS2_EE9push_backERKS2_.exit.i.i

_ZNSt6vectorIN2cv3VecIfLi3EEESaIS2_EE9push_backERKS2_.exit.i.i: ; preds = %.noexc49.i.i, %bb.ab
  %.pre-phi.i = phi i64 [ %.pre55.i, %.noexc49.i.i ], [ %i.dc, %bb.ab ]
  %i.gf = phi ptr [ %.pre.i.i, %.noexc49.i.i ], [ %i.ct, %bb.ab ]
  %i.gg = getelementptr inbounds nuw [24 x i8], ptr %.pr.i.i.i, i64 %.pre-phi.i ; 4 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8 ; 3 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !131 ; 8 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 16 ; 3 uses
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !138
  %.not.i.1.i.i = icmp eq ptr %i.gi, %i.gk
  br i1 %.not.i.1.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIN2cv3VecIfLi3EEESaIS2_EE9push_backERKS2_.exit.i.i
  store float %i.eq, ptr %i.gi, align 4, !tbaa !141
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  store float %i.er, ptr %i.gl, align 4, !tbaa !141
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  store float %i.es, ptr %i.gm, align 4, !tbaa !141
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gi, i64 12
  store ptr %i.gn, ptr %i.gh, align 8, !tbaa !131
  br label %_ZNSt6vectorIN2cv3VecIfLi3EEESaIS2_EE9push_backERKS2_.exit.1.i.i

bb.af:                                            ; preds = %_ZNSt6vectorIN2cv3VecIfLi3EEESaIS2_EE9push_backERKS2_.exit.i.i
  %i.go = load ptr, ptr %i.gg, align 8, !tbaa !132 ; 5 uses
  %i.gp = ptrtoint ptr %i.gi to i64
  %i.gq = ptrtoint ptr %i.go to i64               ; 2 uses
  %i.gr = sub i64 %i.gp, %i.gq                    ; 3 uses
  %i.gs = icmp eq i64 %i.gr, 9223372036854775800
  br i1 %i.gs, label %.invoke.i.i, label %_ZNKSt6vectorIN2cv3VecIfLi3EEESaIS2_EE12_M_check_lenEmPKc.exit.i.1.i.i

_ZNKSt6vectorIN2cv3VecIfLi3EEESaIS2_EE12_M_check_lenEmPKc.exit.i.1.i.i: ; preds = %bb.af
  %i.gt = sdiv exact i64 %i.gr, 12                ; 3 uses
  %.sroa.speculated.i.i.1.i.i = call i64 @llvm.umax.i64(i64 %i.gt, i64 1)
  %i.gu = add nsw i64 %.sroa.speculated.i.i.1.i.i, %i.gt ; 2 uses
  %i.gv = icmp ult i64 %i.gu, %i.gt
  %i.gw = call i64 @llvm.umin.i64(i64 %i.gu, i64 768614336404564650)
  %i.gx = select i1 %i.gv, i64 768614336404564650, i64 %i.gw ; 3 uses
  %.not.i.i55.1.i.i = icmp ne i64 %i.gx, 0
  call void @llvm.assume(i1 %.not.i.i55.1.i.i)
  %i.gy = mul nuw nsw i64 %i.gx, 12
  %i.gz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gy) #32
          to label %.noexc63.1.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc63.1.i.i:                                   ; preds = %_ZNKSt6vectorIN2cv3VecIfLi3EEESaIS2_EE12_M_check_lenEmPKc.exit.i.1.i.i
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.gr ; 3 uses
  store float %i.eq, ptr %i.ha, align 4, !tbaa !141
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 4
  store float %i.er, ptr %i.hb, align 4, !tbaa !141
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  store float %i.es, ptr %i.hc, align 4, !tbaa !141
  %.not13.i.i.i.i.i.i56.1.i.i = icmp eq ptr %i.go, %i.gi
  br i1 %.not13.i.i.i.i.i.i56.1.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi3EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.1.i.i, label %.lr.ph.i.i.i.i.i.i57.1.i.i

.lr.ph.i.i.i.i.i.i57.1.i.i:                       ; preds = %.noexc63.1.i.i, %.lr.ph.i.i.i.i.i.i57.1.i.i
  %.015.i.i.i.i.i.i58.1.i.i = phi ptr [ %i.hl, %.lr.ph.i.i.i.i.i.i57.1.i.i ], [ %i.gz, %.noexc63.1.i.i ] ; 4 uses
  %.01214.i.i.i.i.i.i59.1.i.i = phi ptr [ %i.hk, %.lr.ph.i.i.i.i.i.i57.1.i.i ], [ %i.go, %.noexc63.1.i.i ] ; 4 uses
  %i.hd = load float, ptr %.01214.i.i.i.i.i.i59.1.i.i, align 4, !tbaa !141
  store float %i.hd, ptr %.015.i.i.i.i.i.i58.1.i.i, align 4, !tbaa !141
  %i.he = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i59.1.i.i, i64 4
  %i.hf = load float, ptr %i.he, align 4, !tbaa !141
  %i.hg = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i58.1.i.i, i64 4
  store float %i.hf, ptr %i.hg, align 4, !tbaa !141
  %i.hh = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i59.1.i.i, i64 8
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !141
  %i.hj = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i58.1.i.i, i64 8
  store float %i.hi, ptr %i.hj, align 4, !tbaa !141
  %i.hk = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i59.1.i.i, i64 12 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i58.1.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i.i60.1.i.i = icmp eq ptr %i.hk, %i.gi
  br i1 %.not.i.i.i.i.i.i60.1.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi3EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.1.i.i, label %.lr.ph.i.i.i.i.i.i57.1.i.i, !llvm.loop !5

_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi3EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.1.i.i: ; preds = %.lr.ph.i.i.i.i.i.i57.1.i.i, %.noexc63.1.i.i
  %.0.lcssa.i.i.i.i.i.i.1.i.i = phi ptr [ %i.gz, %.noexc63.1.i.i ], [ %i.hl, %.lr.ph.i.i.i.i.i.i57.1.i.i ]
  %i.hm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.1.i.i, i64 12
  %.not.i35.i.1.i.i = icmp eq ptr %i.go, null
  br i1 %.not.i35.i.1.i.i, label %.noexc49.1.i.i, label %bb.ag

bb.ag:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi3EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.1.i.i
  %i.hn = load ptr, ptr %i.gj, align 8, !tbaa !138
  %i.ho = ptrtoint ptr %i.hn to i64
  %i.hp = sub i64 %i.ho, %i.gq
  call void @_ZdlPvm(ptr noundef nonnull %i.go, i64 noundef %i.hp) #30
  br label %.noexc49.1.i.i

.noexc49.1.i.i:                                   ; preds = %bb.ag, %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi3EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.1.i.i
  store ptr %i.gz, ptr %i.gg, align 8, !tbaa !132
  store ptr %i.hm, ptr %i.gh, align 8, !tbaa !131
  %i.hq = getelementptr inbounds nuw [12 x i8], ptr %i.gz, i64 %i.gx
  store ptr %i.hq, ptr %i.gj, align 8, !tbaa !138
  %.pre65.i.i = load ptr, ptr %.sroa.037.045.i.i, align 8, !tbaa !144
  br label %_ZNSt6vectorIN2cv3VecIfLi3EEESaIS2_EE9push_backERKS2_.exit.1.i.i

_ZNSt6vectorIN2cv3VecIfLi3EEESaIS2_EE9push_backERKS2_.exit.1.i.i: ; preds = %.noexc49.1.i.i, %bb.ae
  %i.hr = phi ptr [ %.pre65.i.i, %.noexc49.1.i.i ], [ %i.gf, %bb.ae ]
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !145
  %i.hu = sext i32 %i.ht to i64
  %i.hv = getelementptr inbounds nuw [24 x i8], ptr %.pr.i.i.i, i64 %i.hu ; 4 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8 ; 3 uses
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !131 ; 8 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hv, i64 16 ; 3 uses
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !138
  %.not.i.2.i.i = icmp eq ptr %i.hx, %i.hz
  br i1 %.not.i.2.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIN2cv3VecIfLi3EEESaIS2_EE9push_backERKS2_.exit.1.i.i
  store float %i.eq, ptr %i.hx, align 4, !tbaa !141
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 4
  store float %i.er, ptr %i.ia, align 4, !tbaa !141
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  store float %i.es, ptr %i.ib, align 4, !tbaa !141
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hx, i64 12
  store ptr %i.ic, ptr %i.hw, align 8, !tbaa !131
  br label %_ZNSt6vectorIN2cv3VecIfLi3EEESaIS2_EE9push_backERKS2_.exit.2.i.i

bb.ai:                                            ; preds = %_ZNSt6vectorIN2cv3VecIfLi3EEESaIS2_EE9push_backERKS2_.exit.1.i.i
  %i.id = load ptr, ptr %i.hv, align 8, !tbaa !132 ; 5 uses
  %i.ie = ptrtoint ptr %i.hx to i64
  %i.if = ptrtoint ptr %i.id to i64               ; 2 uses
  %i.ig = sub i64 %i.ie, %i.if                    ; 3 uses
  %i.ih = icmp eq i64 %i.ig, 9223372036854775800
  br i1 %i.ih, label %.invoke.i.i, label %_ZNKSt6vectorIN2cv3VecIfLi3EEESaIS2_EE12_M_check_lenEmPKc.exit.i.2.i.i

_ZNKSt6vectorIN2cv3VecIfLi3EEESaIS2_EE12_M_check_lenEmPKc.exit.i.2.i.i: ; preds = %bb.ai
  %i.ii = sdiv exact i64 %i.ig, 12                ; 3 uses
  %.sroa.speculated.i.i.2.i.i = call i64 @llvm.umax.i64(i64 %i.ii, i64 1)
  %i.ij = add nsw i64 %.sroa.speculated.i.i.2.i.i, %i.ii ; 2 uses
  %i.ik = icmp ult i64 %i.ij, %i.ii
  %i.il = call i64 @llvm.umin.i64(i64 %i.ij, i64 768614336404564650)
  %i.im = select i1 %i.ik, i64 768614336404564650, i64 %i.il ; 3 uses
  %.not.i.i55.2.i.i = icmp ne i64 %i.im, 0
  call void @llvm.assume(i1 %.not.i.i55.2.i.i)
  %i.in = mul nuw nsw i64 %i.im, 12
  %i.io = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.in) #32
          to label %.noexc63.2.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc63.2.i.i:                                   ; preds = %_ZNKSt6vectorIN2cv3VecIfLi3EEESaIS2_EE12_M_check_lenEmPKc.exit.i.2.i.i
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 %i.ig ; 3 uses
  store float %i.eq, ptr %i.ip, align 4, !tbaa !141
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 4
  store float %i.er, ptr %i.iq, align 4, !tbaa !141
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  store float %i.es, ptr %i.ir, align 4, !tbaa !141
  %.not13.i.i.i.i.i.i56.2.i.i = icmp eq ptr %i.id, %i.hx
  br i1 %.not13.i.i.i.i.i.i56.2.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi3EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.2.i.i, label %.lr.ph.i.i.i.i.i.i57.2.i.i

.lr.ph.i.i.i.i.i.i57.2.i.i:                       ; preds = %.noexc63.2.i.i, %.lr.ph.i.i.i.i.i.i57.2.i.i
  %.015.i.i.i.i.i.i58.2.i.i = phi ptr [ %i.ja, %.lr.ph.i.i.i.i.i.i57.2.i.i ], [ %i.io, %.noexc63.2.i.i ] ; 4 uses
  %.01214.i.i.i.i.i.i59.2.i.i = phi ptr [ %i.iz, %.lr.ph.i.i.i.i.i.i57.2.i.i ], [ %i.id, %.noexc63.2.i.i ] ; 4 uses
  %i.is = load float, ptr %.01214.i.i.i.i.i.i59.2.i.i, align 4, !tbaa !141
  store float %i.is, ptr %.015.i.i.i.i.i.i58.2.i.i, align 4, !tbaa !141
  %i.it = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i59.2.i.i, i64 4
  %i.iu = load float, ptr %i.it, align 4, !tbaa !141
  %i.iv = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i58.2.i.i, i64 4
  store float %i.iu, ptr %i.iv, align 4, !tbaa !141
  %i.iw = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i59.2.i.i, i64 8
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !141
  %i.iy = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i58.2.i.i, i64 8
  store float %i.ix, ptr %i.iy, align 4, !tbaa !141
  %i.iz = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i59.2.i.i, i64 12 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i58.2.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i.i60.2.i.i = icmp eq ptr %i.iz, %i.hx
  br i1 %.not.i.i.i.i.i.i60.2.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi3EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.2.i.i, label %.lr.ph.i.i.i.i.i.i57.2.i.i, !llvm.loop !5

_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi3EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.2.i.i: ; preds = %.lr.ph.i.i.i.i.i.i57.2.i.i, %.noexc63.2.i.i
  %.0.lcssa.i.i.i.i.i.i.2.i.i = phi ptr [ %i.io, %.noexc63.2.i.i ], [ %i.ja, %.lr.ph.i.i.i.i.i.i57.2.i.i ]
  %i.jb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.2.i.i, i64 12
  %.not.i35.i.2.i.i = icmp eq ptr %i.id, null
  br i1 %.not.i35.i.2.i.i, label %.noexc49.2.i.i, label %bb.aj

bb.aj:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi3EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.2.i.i
  %i.jc = load ptr, ptr %i.hy, align 8, !tbaa !138
  %i.jd = ptrtoint ptr %i.jc to i64
  %i.je = sub i64 %i.jd, %i.if
  call void @_ZdlPvm(ptr noundef nonnull %i.id, i64 noundef %i.je) #30
  br label %.noexc49.2.i.i

.noexc49.2.i.i:                                   ; preds = %bb.aj, %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi3EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.2.i.i
  store ptr %i.io, ptr %i.hv, align 8, !tbaa !132
  store ptr %i.jb, ptr %i.hw, align 8, !tbaa !131
  %i.jf = getelementptr inbounds nuw [12 x i8], ptr %i.io, i64 %i.im
  store ptr %i.jf, ptr %i.hy, align 8, !tbaa !138
  br label %_ZNSt6vectorIN2cv3VecIfLi3EEESaIS2_EE9push_backERKS2_.exit.2.i.i

_ZNSt6vectorIN2cv3VecIfLi3EEESaIS2_EE9push_backERKS2_.exit.2.i.i: ; preds = %.noexc49.2.i.i, %bb.ah
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.037.045.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.jg, %i.be
  br i1 %.not.i.i, label %._crit_edge.i.i127, label %.lr.ph.i.i

_ZNSt6vectorIN2cv3VecIfLi3EEESaIS2_EE7reserveEm.exit.i.i: ; preds = %_ZNSt12_Vector_baseIN2cv3VecIfLi3EEESaIS2_EE13_M_deallocateEPS2_m.exit.i.i.i, %bb.x
  %.not4156.i.i = icmp eq ptr %.pr.i.i.i, %i.at
  br i1 %.not4156.i.i, label %_ZSt8_DestroyIPSt6vectorIN2cv3VecIfLi3EEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph58.i.i

.lr.ph58.i.i:                                     ; preds = %_ZNSt6vectorIN2cv3VecIfLi3EEESaIS2_EE7reserveEm.exit.i.i
  %i.jh = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ji = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %bb.am

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt6vectorIN2cv3VecIfLi3EEESaIS2_EE9push_backEOS2_.exit.i.i, %_ZSt8_DestroyISt6vectorIN2cv3VecIfLi3EEESaIS3_EEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.jp, %_ZSt8_DestroyISt6vectorIN2cv3VecIfLi3EEESaIS3_EEEvPT_.exit.i.i.i.i.i ], [ %.pr.i.i.i, %_ZNSt6vectorIN2cv3VecIfLi3EEESaIS2_EE9push_backEOS2_.exit.i.i ] ; 3 uses
  %i.jj = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !132 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.jj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN2cv3VecIfLi3EEESaIS3_EEEvPT_.exit.i.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.jk = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !138
  %i.jm = ptrtoint ptr %i.jl to i64
  %i.jn = ptrtoint ptr %i.jj to i64
  %i.jo = sub i64 %i.jm, %i.jn
  call void @_ZdlPvm(ptr noundef nonnull %i.jj, i64 noundef %i.jo) #30
  br label %_ZSt8_DestroyISt6vectorIN2cv3VecIfLi3EEESaIS3_EEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt6vectorIN2cv3VecIfLi3EEESaIS3_EEEvPT_.exit.i.i.i.i.i: ; preds = %bb.ak, %.lr.ph.i.i.i.i.i
  %i.jp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i50.i.i = icmp eq ptr %i.jp, %i.at
  br i1 %.not.i.i.i50.i.i, label %_ZSt8_DestroyIPSt6vectorIN2cv3VecIfLi3EEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !6

_ZSt8_DestroyIPSt6vectorIN2cv3VecIfLi3EEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyISt6vectorIN2cv3VecIfLi3EEESaIS3_EEEvPT_.exit.i.i.i.i.i, %_ZNSt6vectorIN2cv3VecIfLi3EEESaIS2_EE7reserveEm.exit.i.i
  %.not.i.i1.i.i.i = icmp eq ptr %.pr.i.i.i, null
  br i1 %.not.i.i1.i.i.i, label %bb.ar, label %bb.al

bb.al:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv3VecIfLi3EEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %.idx98.i.i = mul nuw nsw i64 %i.an, 24
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i.i.i, i64 noundef %.idx98.i.i) #30
  br label %bb.ar

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIN2cv3VecIfLi3EEESaIS2_EE12_M_check_lenEmPKc.exit.i.2.i.i, %_ZNKSt6vectorIN2cv3VecIfLi3EEESaIS2_EE12_M_check_lenEmPKc.exit.i.1.i.i, %_ZNKSt6vectorIN2cv3VecIfLi3EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i, %.invoke.i.i, %_ZNSt12_Vector_baseIN2cv3VecIfLi3EEESaIS2_EE11_M_allocateEm.exit.i.i.i.i
  %lpad.loopexit.split-lp559 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

bb.am:                                            ; preds = %_ZNSt6vectorIN2cv3VecIfLi3EEESaIS2_EE9push_backEOS2_.exit.i.i, %.lr.ph58.i.i
  %.sroa.09.057.i.i = phi ptr [ %.pr.i.i.i, %.lr.ph58.i.i ], [ %i.kx, %_ZNSt6vectorIN2cv3VecIfLi3EEESaIS2_EE9push_backEOS2_.exit.i.i ] ; 3 uses
  %i.jq = load ptr, ptr %.sroa.09.057.i.i, align 8, !tbaa !146 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.09.057.i.i, i64 8
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !146 ; 2 uses
  %.not4246.i.i = icmp eq ptr %i.jq, %i.js
  br i1 %.not4246.i.i, label %._crit_edge53.i.i, label %.lr.ph52.i.i

.lr.ph52.i.i:                                     ; preds = %bb.am, %.lr.ph52.i.i
  %.sroa.01.050.i.i = phi ptr [ %i.jz, %.lr.ph52.i.i ], [ %i.jq, %bb.am ] ; 3 uses
  %.sroa.10.049.i.i = phi float [ %i.jy, %.lr.ph52.i.i ], [ 0.000000e+00, %bb.am ]
  %i.jt = phi <2 x float> [ %i.jv, %.lr.ph52.i.i ], [ zeroinitializer, %bb.am ]
  %i.ju = load <2 x float>, ptr %.sroa.01.050.i.i, align 4, !tbaa !141
  %i.jv = fadd <2 x float> %i.jt, %i.ju           ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.sroa.01.050.i.i, i64 8
  %i.jx = load float, ptr %i.jw, align 4, !tbaa !141
  %i.jy = fadd float %.sroa.10.049.i.i, %i.jx     ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.sroa.01.050.i.i, i64 12 ; 2 uses
  %.not42.i.i = icmp eq ptr %i.jz, %i.js
  br i1 %.not42.i.i, label %._crit_edge53.loopexit.i.i, label %.lr.ph52.i.i

._crit_edge53.loopexit.i.i:                       ; preds = %.lr.ph52.i.i
  %i.ka = fpext <2 x float> %i.jv to <2 x double>
  %i.kb = fpext float %i.jy to double
  br label %._crit_edge53.i.i

._crit_edge53.i.i:                                ; preds = %._crit_edge53.loopexit.i.i, %bb.am
  %.sroa.10.0.lcssa.i.i = phi double [ 0.000000e+00, %bb.am ], [ %i.kb, %._crit_edge53.loopexit.i.i ] ; 3 uses
  %i.kc = phi <2 x double> [ zeroinitializer, %bb.am ], [ %i.ka, %._crit_edge53.loopexit.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %64 = extractelement <2 x double> %i.kc, i64 0  ; 2 uses
  %65 = call double @llvm.fmuladd.f64(double %64, double %64, double 0.000000e+00)
  %i.kd = extractelement <2 x double> %i.kc, i64 1 ; 2 uses
  %i.ke = call double @llvm.fmuladd.f64(double %i.kd, double %i.kd, double %65)
  %i.kf = call noundef double @llvm.fmuladd.f64(double %.sroa.10.0.lcssa.i.i, double %.sroa.10.0.lcssa.i.i, double %i.ke) ; 2 uses
  %sqrt.i.i52.i.i = call noundef double @llvm.sqrt.f64(double %i.kf)
  %i.kg = fcmp une double %i.kf, 0.000000e+00
  %i.kh = fdiv double 1.000000e+00, %sqrt.i.i52.i.i
  %i.ki = select i1 %i.kg, double %i.kh, double 0.000000e+00 ; 2 uses
  %i.kj = insertelement <2 x double> poison, double %i.ki, i64 0
  %i.kk = shufflevector <2 x double> %i.kj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kl = fmul <2 x double> %i.kc, %i.kk
  %i.km = fptrunc <2 x double> %i.kl to <2 x float> ; 2 uses
  store <2 x float> %i.km, ptr %4, align 8, !tbaa !141, !alias.scope !380
  %i.kn = fmul double %.sroa.10.0.lcssa.i.i, %i.ki
  %i.ko = fptrunc double %i.kn to float
  store float %i.ko, ptr %i.ji, align 8, !tbaa !141, !alias.scope !380
  %i.kp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11opencv_testL12getModelOnceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIN2cv3VecIfLi3EEESaISB_EERS8_INSA_IiLi3EEESaISF_EESE_E3col, i64 8), align 8, !tbaa !131 ; 6 uses
  %i.kq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11opencv_testL12getModelOnceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIN2cv3VecIfLi3EEESaISB_EERS8_INSA_IiLi3EEESaISF_EESE_E3col, i64 16), align 8, !tbaa !138
  %.not.i.i53.i.i = icmp eq ptr %i.kp, %i.kq
  br i1 %.not.i.i53.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %._crit_edge53.i.i
  %i.kr = extractelement <2 x float> %i.km, i64 0
  store float %i.kr, ptr %i.kp, align 4, !tbaa !141
  %i.ks = load float, ptr %i.jh, align 4, !tbaa !141
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kp, i64 4
  store float %i.ks, ptr %i.kt, align 4, !tbaa !141
  %i.ku = load float, ptr %i.ji, align 8, !tbaa !141
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  store float %i.ku, ptr %i.kv, align 4, !tbaa !141
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kp, i64 12
  store ptr %i.kw, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11opencv_testL12getModelOnceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIN2cv3VecIfLi3EEESaISB_EERS8_INSA_IiLi3EEESaISF_EESE_E3col, i64 8), align 8, !tbaa !131
  br label %_ZNSt6vectorIN2cv3VecIfLi3EEESaIS2_EE9push_backEOS2_.exit.i.i

bb.ao:                                            ; preds = %._crit_edge53.i.i
  invoke void @_ZNSt6vectorIN2cv3VecIfLi3EEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN11opencv_testL12getModelOnceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIN2cv3VecIfLi3EEESaISB_EERS8_INSA_IiLi3EEESaISF_EESE_E3col, ptr %i.kp, ptr noundef nonnull align 4 dereferenceable(12) %4)
          to label %_ZNSt6vectorIN2cv3VecIfLi3EEESaIS2_EE9push_backEOS2_.exit.i.i unwind label %bb.ap

_ZNSt6vectorIN2cv3VecIfLi3EEESaIS2_EE9push_backEOS2_.exit.i.i: ; preds = %bb.ao, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.kx = getelementptr inbounds nuw i8, ptr %.sroa.09.057.i.i, i64 24 ; 2 uses
  %.not41.i.i = icmp eq ptr %i.kx, %i.at
  br i1 %.not41.i.i, label %.lr.ph.i.i.i.i.i, label %bb.am

bb.ap:                                            ; preds = %bb.ao
  %i.ky = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.i.i:                           ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ap
  %.pn36.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.ky, %bb.ap ], [ %lpad.loopexit.split-lp559, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorIS_IN2cv3VecIfLi3EEESaIS2_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #31
  br label %bb.aq

bb.aq:                                            ; preds = %.loopexit.split-lp.i.i, %_ZNSt6vectorIN2cv3VecIfLi3EEESaIS2_EED2Ev.exit48.i.i
  %.pn36.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn36.pn.pn.pn.pn.i.i, %.loopexit.split-lp.i.i ], [ %eh.lpad-body.i.i, %_ZNSt6vectorIN2cv3VecIfLi3EEESaIS2_EED2Ev.exit48.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %.body.i

bb.ar:                                            ; preds = %bb.al, %_ZSt8_DestroyIPSt6vectorIN2cv3VecIfLi3EEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %i.kz = load ptr, ptr %5, align 8, !tbaa !379   ; 2 uses
  %i.la = load ptr, ptr %i.bd, align 8, !tbaa !379 ; 2 uses
  %.not3542.i = icmp eq ptr %i.kz, %i.la
  br i1 %.not3542.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ar
  %i.lb = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.lc = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  br label %_ZN2cv3VecIiLi3EEC2ESt16initializer_listIiE.exit.i

._crit_edge.i:                                    ; preds = %_ZNSt6vectorIN2cv3VecIiLi3EEESaIS2_EE9push_backEOS2_.exit.i, %bb.ar
  %i.ld = load ptr, ptr @_ZZN11opencv_testL12getModelOnceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIN2cv3VecIfLi3EEESaISB_EERS8_INSA_IiLi3EEESaISF_EESE_E3col, align 8, !tbaa !146 ; 2 uses
  %i.le = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11opencv_testL12getModelOnceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIN2cv3VecIfLi3EEESaISB_EERS8_INSA_IiLi3EEESaISF_EESE_E3col, i64 8), align 8, !tbaa !146 ; 2 uses
  %.not3644.i = icmp eq ptr %i.ld, %i.le
  br i1 %.not3644.i, label %._crit_edge48.i, label %.lr.ph47.i

bb.as:                                            ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.lf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %.body.i

_ZN2cv3VecIiLi3EEC2ESt16initializer_listIiE.exit.i: ; preds = %_ZNSt6vectorIN2cv3VecIiLi3EEESaIS2_EE9push_backEOS2_.exit.i, %.lr.ph.i
  %.sroa.032.043.i = phi ptr [ %i.kz, %.lr.ph.i ], [ %i.ls, %_ZNSt6vectorIN2cv3VecIiLi3EEESaIS2_EE9push_backEOS2_.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.lg = load ptr, ptr %.sroa.032.043.i, align 8, !tbaa !144 ; 3 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !145
  %i.lj = load <2 x i32>, ptr %i.lg, align 4, !tbaa !145
  %i.lk = load i32, ptr %i.lg, align 4, !tbaa !145
  store <2 x i32> %i.lj, ptr %8, align 8, !tbaa !145
  store i32 %i.li, ptr %i.lc, align 8, !tbaa !145
  %i.ll = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11opencv_testL12getModelOnceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIN2cv3VecIfLi3EEESaISB_EERS8_INSA_IiLi3EEESaISF_EESE_E3ind, i64 8), align 8, !tbaa !149 ; 6 uses
  %i.lm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11opencv_testL12getModelOnceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIN2cv3VecIfLi3EEESaISB_EERS8_INSA_IiLi3EEESaISF_EESE_E3ind, i64 16), align 8, !tbaa !150
  %.not.i.i24.i = icmp eq ptr %i.ll, %i.lm
  br i1 %.not.i.i24.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_ZN2cv3VecIiLi3EEC2ESt16initializer_listIiE.exit.i
  store i32 %i.lk, ptr %i.ll, align 4, !tbaa !145
  %i.ln = load i32, ptr %i.lb, align 4, !tbaa !145
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ll, i64 4
  store i32 %i.ln, ptr %i.lo, align 4, !tbaa !145
  %i.lp = load i32, ptr %i.lc, align 8, !tbaa !145
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ll, i64 8
  store i32 %i.lp, ptr %i.lq, align 4, !tbaa !145
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ll, i64 12
  store ptr %i.lr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11opencv_testL12getModelOnceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIN2cv3VecIfLi3EEESaISB_EERS8_INSA_IiLi3EEESaISF_EESE_E3ind, i64 8), align 8, !tbaa !149
  br label %_ZNSt6vectorIN2cv3VecIiLi3EEESaIS2_EE9push_backEOS2_.exit.i

bb.au:                                            ; preds = %_ZN2cv3VecIiLi3EEC2ESt16initializer_listIiE.exit.i
  invoke void @_ZNSt6vectorIN2cv3VecIiLi3EEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN11opencv_testL12getModelOnceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIN2cv3VecIfLi3EEESaISB_EERS8_INSA_IiLi3EEESaISF_EESE_E3ind, ptr %i.ll, ptr noundef nonnull align 4 dereferenceable(12) %8)
          to label %_ZNSt6vectorIN2cv3VecIiLi3EEESaIS2_EE9push_backEOS2_.exit.i unwind label %bb.av

_ZNSt6vectorIN2cv3VecIiLi3EEESaIS2_EE9push_backEOS2_.exit.i: ; preds = %bb.au, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  %i.ls = getelementptr inbounds nuw i8, ptr %.sroa.032.043.i, i64 24 ; 2 uses
  %.not35.i = icmp eq ptr %i.ls, %i.la
  br i1 %.not35.i, label %._crit_edge.i, label %_ZN2cv3VecIiLi3EEC2ESt16initializer_listIiE.exit.i

bb.av:                                            ; preds = %bb.au
  %i.lt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %.body.i

._crit_edge48.i:                                  ; preds = %.lr.ph47.i, %._crit_edge.i
  store i1 true, ptr @_ZZN11opencv_testL12getModelOnceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIN2cv3VecIfLi3EEESaISB_EERS8_INSA_IiLi3EEESaISF_EESE_E4load, align 1
  %i.lu = load ptr, ptr %5, align 8, !tbaa !152   ; 3 uses
  %i.lv = load ptr, ptr %i.bd, align 8, !tbaa !153 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.lu, %i.lv
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge48.i, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.mc, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i ], [ %i.lu, %._crit_edge48.i ] ; 3 uses
  %i.lw = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !144 ; 3 uses
  %.not.i.i.i.i.i.i.i25.i = icmp eq ptr %i.lw, null
  br i1 %.not.i.i.i.i.i.i.i25.i, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph.i.i.i.i
  %i.lx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !154
  %i.lz = ptrtoint ptr %i.ly to i64
  %i.ma = ptrtoint ptr %i.lw to i64
  %i.mb = sub i64 %i.lz, %i.ma
  call void @_ZdlPvm(ptr noundef nonnull %i.lw, i64 noundef %i.mb) #30
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i: ; preds = %bb.aw, %.lr.ph.i.i.i.i
  %i.mc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i26.i = icmp eq ptr %i.mc, %i.lv
  br i1 %.not.i.i.i26.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !7

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %5, align 8, !tbaa !152
  br label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %._crit_edge48.i
  %i.md = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.lu, %._crit_edge48.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.md, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit.i, label %bb.ax

bb.ax:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.me = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !155
  %i.mg = ptrtoint ptr %i.mf to i64
  %i.mh = ptrtoint ptr %i.md to i64
  %i.mi = sub i64 %i.mg, %i.mh
  call void @_ZdlPvm(ptr noundef nonnull %i.md, i64 noundef %i.mi) #30
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit.i

_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit.i:       ; preds = %bb.ax, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.ay

.lr.ph47.i:                                       ; preds = %._crit_edge.i, %.lr.ph47.i
  %.sroa.028.045.i = phi ptr [ %i.mo, %.lr.ph47.i ], [ %i.ld, %._crit_edge.i ] ; 4 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %.sroa.028.045.i, i64 8 ; 2 uses
  %i.mk = load float, ptr %i.mj, align 4, !tbaa !141
  %i.ml = call noundef float @llvm.fabs.f32(float %i.mk)
  %i.mm = load <2 x float>, ptr %.sroa.028.045.i, align 4, !tbaa !141
  %i.mn = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.mm)
  store <2 x float> %i.mn, ptr %.sroa.028.045.i, align 4
  store float %i.ml, ptr %i.mj, align 4
  %i.mo = getelementptr inbounds nuw i8, ptr %.sroa.028.045.i, i64 12 ; 2 uses
  %.not36.i = icmp eq ptr %i.mo, %i.le
  br i1 %.not36.i, label %._crit_edge48.i, label %.lr.ph47.i

.body.i:                                          ; preds = %bb.av, %bb.as, %bb.aq
  %.pn21.i = phi { ptr, i32 } [ %i.lt, %bb.av ], [ %.pn36.pn.pn.pn.pn.pn.i.i, %bb.aq ], [ %i.lf, %bb.as ]
  call void @_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %.body

bb.ay:                                            ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit.i, %bb.m
  %i.mp = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN2cv3VecIfLi3EEESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) @_ZZN11opencv_testL12getModelOnceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIN2cv3VecIfLi3EEESaISB_EERS8_INSA_IiLi3EEESaISF_EESE_E4vert)
          to label %.noexc128 unwind label %bb.bi ; 0 uses

.noexc128:                                        ; preds = %bb.ay
  %i.mq = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN2cv3VecIfLi3EEESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) @_ZZN11opencv_testL12getModelOnceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIN2cv3VecIfLi3EEESaISB_EERS8_INSA_IiLi3EEESaISF_EESE_E3col)
          to label %.noexc129 unwind label %bb.bi ; 0 uses
end_hunk_0
