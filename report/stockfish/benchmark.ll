Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/benchmark?download=true
inline.NumInlined: 1289
inline.NumDeleted: 285
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN9Stockfish9Benchmark15setup_benchmarkERSi:bb.a
  %i.uf = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 7 uses
  br label %bb.ca

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.1288.epil.init = phi float [ %.0291, %.lr.ph.preheader ], [ %i.wa, %._crit_edge.loopexit.unr-lcssa ]
  %.021286.epil.init = phi i32 [ 1, %.lr.ph.preheader ], [ %i.wb, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod585 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod585)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.1288.epil = phi float [ %i.uk, %.lr.ph.epil ], [ %.1288.epil.init, %.lr.ph.epil.preheader ]
  %.021286.epil = phi i32 [ %i.ul, %.lr.ph.epil ], [ %.021286.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ug = add nuw i32 %.021286.epil, 15
  %i.uh = uitofp i32 %i.ug to double
  %i.ui = fdiv double 5.000000e+04, %i.uh
  %i.uj = fptrunc double %i.ui to float
  %i.uk = fadd float %.1288.epil, %i.uj           ; 2 uses
  %i.ul = add nuw i32 %.021286.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !140

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %.preheader
  %.1.lcssa = phi float [ %.0291, %.preheader ], [ %i.wa, %._crit_edge.loopexit.unr-lcssa ], [ %i.uk, %.lr.ph.epil ] ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %.sroa.0241.0290, i64 24 ; 2 uses
  %.not247.a = icmp eq ptr %i.um, %i.tj
  br i1 %.not247.a, label %.lr.ph302, label %.preheader

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.1288 = phi float [ %.0291, %.lr.ph.preheader.new ], [ %i.wa, %.lr.ph ]
  %.021286 = phi i32 [ 1, %.lr.ph.preheader.new ], [ %i.wb, %.lr.ph ] ; 9 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.un = add nuw i32 %.021286, 15
  %i.uo = uitofp i32 %i.un to double
  %i.up = fdiv double 5.000000e+04, %i.uo
  %i.uq = fptrunc double %i.up to float
  %i.ur = fadd float %.1288, %i.uq
  %i.us = add nuw i32 %.021286, 16
  %i.ut = uitofp i32 %i.us to double
  %i.uu = fdiv double 5.000000e+04, %i.ut
  %i.uv = fptrunc double %i.uu to float
  %i.uw = fadd float %i.ur, %i.uv
  %i.ux = add nuw i32 %.021286, 17
  %i.uy = uitofp i32 %i.ux to double
  %i.uz = fdiv double 5.000000e+04, %i.uy
  %i.va = fptrunc double %i.uz to float
  %i.vb = fadd float %i.uw, %i.va
  %i.vc = add nuw i32 %.021286, 18
  %i.vd = uitofp i32 %i.vc to double
  %i.ve = fdiv double 5.000000e+04, %i.vd
  %i.vf = fptrunc double %i.ve to float
  %i.vg = fadd float %i.vb, %i.vf
  %i.vh = add nuw i32 %.021286, 19
  %i.vi = uitofp i32 %i.vh to double
  %i.vj = fdiv double 5.000000e+04, %i.vi
  %i.vk = fptrunc double %i.vj to float
  %i.vl = fadd float %i.vg, %i.vk
  %i.vm = add nuw i32 %.021286, 20
  %i.vn = uitofp i32 %i.vm to double
  %i.vo = fdiv double 5.000000e+04, %i.vn
  %i.vp = fptrunc double %i.vo to float
  %i.vq = fadd float %i.vl, %i.vp
  %i.vr = add nuw i32 %.021286, 21
  %i.vs = uitofp i32 %i.vr to double
  %i.vt = fdiv double 5.000000e+04, %i.vs
  %i.vu = fptrunc double %i.vt to float
  %i.vv = fadd float %i.vq, %i.vu
  %i.vw = add nuw i32 %.021286, 22
  %i.vx = uitofp i32 %i.vw to double
  %i.vy = fdiv double 5.000000e+04, %i.vx
  %i.vz = fptrunc double %i.vy to float
  %i.wa = fadd float %i.vv, %i.vz                 ; 3 uses
  %i.wb = add nuw i32 %.021286, 8                 ; 2 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !141

._crit_edge303:                                   ; preds = %._crit_edge298, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void

bb.ca:                                            ; preds = %.lr.ph302, %._crit_edge298
  %.sroa.0237.0300 = phi ptr [ %i.ti, %.lr.ph302 ], [ %i.wm, %._crit_edge298 ] ; 3 uses
  %i.wc = load ptr, ptr %i.ty, align 8, !tbaa !27 ; 6 uses
  %i.wd = load ptr, ptr %i.tz, align 8, !tbaa !33
  %.not.i159 = icmp eq ptr %i.wc, %i.wd
  br i1 %.not.i159, label %bb.cb, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.ca
  %i.we = getelementptr inbounds nuw i8, ptr %i.wc, i64 16 ; 2 uses
  store ptr %i.we, ptr %i.wc, align 8, !tbaa !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.we, ptr noundef nonnull align 1 dereferenceable(11) @.str.325, i64 10, i1 false)
  %i.wf = getelementptr inbounds nuw i8, ptr %i.wc, i64 8
  store i64 10, ptr %i.wf, align 8, !tbaa !35
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wc, i64 26
  store i8 0, ptr %i.wg, align 2, !tbaa !32
  %i.wh = load ptr, ptr %i.ty, align 8, !tbaa !27
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 32
  store ptr %i.wi, ptr %i.ty, align 8, !tbaa !27
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA11_KcEEERS5_DpOT_.exit

bb.cb:                                            ; preds = %bb.ca
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA11_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr %i.wc, ptr noundef nonnull align 1 dereferenceable(11) @.str.325)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA11_KcEEERS5_DpOT_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA11_KcEEERS5_DpOT_.exit: ; preds = %._crit_edge.i.i.i, %bb.cb
  %i.wj = load ptr, ptr %.sroa.0237.0300, align 8, !tbaa !52 ; 2 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %.sroa.0237.0300, i64 8
  %i.wl = load ptr, ptr %i.wk, align 8, !tbaa !52 ; 2 uses
  %.not249294 = icmp eq ptr %i.wj, %i.wl
  br i1 %.not249294, label %._crit_edge298, label %.lr.ph297

._crit_edge298:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA11_KcEEERS5_DpOT_.exit
  %i.wm = getelementptr inbounds nuw i8, ptr %.sroa.0237.0300, i64 24 ; 2 uses
  %.not248.a = icmp eq ptr %i.wm, %i.tj
  br i1 %.not248.a, label %._crit_edge303, label %bb.ca

.lr.ph297:                                        ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA11_KcEEERS5_DpOT_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197
  %.019296 = phi i32 [ %i.ads, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197 ], [ 1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA11_KcEEERS5_DpOT_.exit ] ; 2 uses
  %.sroa.0233.0295 = phi ptr [ %i.adt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197 ], [ %i.wj, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA11_KcEEERS5_DpOT_.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !177)
  %i.wn = load ptr, ptr %.sroa.0233.0295, align 8, !tbaa !31, !noalias !177
  %i.wo = getelementptr inbounds nuw i8, ptr %.sroa.0233.0295, i64 8
  %i.wp = load i64, ptr %i.wo, align 8, !tbaa !35, !noalias !177 ; 3 uses
  store ptr %i.ua, ptr %14, align 8, !tbaa !34, !alias.scope !178
  store i64 0, ptr %i.ub, align 8, !tbaa !35, !alias.scope !178
  store i8 0, ptr %i.ua, align 8, !tbaa !32, !alias.scope !178
  %i.wq = add i64 %i.wp, 13
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef %i.wq) #18
  %i.wr = load i64, ptr %i.ub, align 8, !tbaa !35, !alias.scope !178
  %i.ws = add i64 %i.wr, -4611686018427387891
  %i.wt = icmp ult i64 %i.ws, 13
  br i1 %i.wt, label %bb.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i

bb.cc:                                            ; preds = %.lr.ph297
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.333) #23
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %.lr.ph297
  %i.wu = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.327, i64 noundef 13) #18 ; 0 uses
  %i.wv = load i64, ptr %i.ub, align 8, !tbaa !35, !alias.scope !178
  %i.ww = sub i64 4611686018427387903, %i.wv
  %i.wx = icmp ult i64 %i.ww, %i.wp
  br i1 %i.wx, label %bb.cd, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit

bb.cd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.333) #23
  unreachable

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.wy = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef %i.wn, i64 noundef %i.wp) #18 ; 0 uses
  %i.wz = load ptr, ptr %i.ty, align 8, !tbaa !27 ; 8 uses
  %i.xa = load ptr, ptr %i.tz, align 8, !tbaa !33
  %.not.i161 = icmp eq ptr %i.wz, %i.xa
  br i1 %.not.i161, label %bb.cg, label %bb.ce

bb.ce:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wz, i64 16 ; 3 uses
  store ptr %i.xb, ptr %i.wz, align 8, !tbaa !34
  %i.xc = load ptr, ptr %14, align 8, !tbaa !31   ; 2 uses
  %i.xd = icmp eq ptr %i.xc, %i.ua
  br i1 %i.xd, label %bb.cf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162

bb.cf:                                            ; preds = %bb.ce
  %i.xe = load i64, ptr %i.ub, align 8, !tbaa !35 ; 3 uses
  %i.xf = icmp ult i64 %i.xe, 16
  call void @llvm.assume(i1 %i.xf)
  %i.xg = add nuw nsw i64 %i.xe, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.xb, ptr noundef nonnull align 8 dereferenceable(1) %i.ua, i64 %i.xg, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162: ; preds = %bb.ce
  store ptr %i.xc, ptr %i.wz, align 8, !tbaa !31
  %i.xh = load i64, ptr %i.ua, align 8, !tbaa !32
  store i64 %i.xh, ptr %i.xb, align 8, !tbaa !32
  %.pre = load i64, ptr %i.ub, align 8, !tbaa !35
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread: ; preds = %bb.cf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162
  %i.xi = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162 ], [ %i.xe, %bb.cf ]
  %i.xj = getelementptr inbounds nuw i8, ptr %i.wz, i64 8
  store i64 %i.xi, ptr %i.xj, align 8, !tbaa !35
  store ptr %i.ua, ptr %14, align 8, !tbaa !31
  store i64 0, ptr %i.ub, align 8, !tbaa !35
  %i.xk = load ptr, ptr %i.ty, align 8, !tbaa !27
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 32
  store ptr %i.xl, ptr %i.ty, align 8, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167

bb.cg:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.xm = load ptr, ptr %i.c, align 8, !tbaa !26  ; 5 uses
  %i.xn = ptrtoint ptr %i.wz to i64
  %i.xo = ptrtoint ptr %i.xm to i64               ; 2 uses
  %i.xp = sub i64 %i.xn, %i.xo                    ; 3 uses
  %i.xq = icmp eq i64 %i.xp, 9223372036854775776
  br i1 %i.xq, label %bb.ch, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.ch:                                            ; preds = %bb.cg
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.335) #23
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.cg
  %i.xr = ashr exact i64 %i.xp, 5                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.xr, i64 1)
  %17 = add nsw i64 %.sroa.speculated.i.i, %i.xr  ; 2 uses
  %i.xs = icmp ult i64 %17, %i.xr
  %i.xt = call i64 @llvm.umin.i64(i64 %17, i64 288230376151711743)
  %i.xu = select i1 %i.xs, i64 288230376151711743, i64 %i.xt ; 3 uses
  %.not.i.i = icmp ne i64 %i.xu, 0
  call void @llvm.assume(i1 %.not.i.i)
  %i.xv = shl nuw nsw i64 %i.xu, 5
  %i.xw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.xv) #21 ; 5 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 %i.xp ; 4 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 16 ; 3 uses
  store ptr %i.xy, ptr %i.xx, align 8, !tbaa !34
  %i.xz = load ptr, ptr %14, align 8, !tbaa !31   ; 2 uses
  %i.ya = icmp eq ptr %i.xz, %i.ua
  br i1 %i.ya, label %bb.ci, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198

bb.ci:                                            ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.yb = load i64, ptr %i.ub, align 8, !tbaa !35 ; 3 uses
  %i.yc = icmp ult i64 %i.yb, 16
  call void @llvm.assume(i1 %i.yc)
  %i.yd = add nuw nsw i64 %i.yb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.xy, ptr noundef nonnull align 8 dereferenceable(1) %i.ua, i64 %i.yd, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i201

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i
  store ptr %i.xz, ptr %i.xx, align 8, !tbaa !31
  %i.ye = load i64, ptr %i.ua, align 8, !tbaa !32
  store i64 %i.ye, ptr %i.xy, align 8, !tbaa !32
  %.pre.i200 = load i64, ptr %i.ub, align 8, !tbaa !35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i201

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i201: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198, %bb.ci
  %i.yf = phi i64 [ %i.yb, %bb.ci ], [ %.pre.i200, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198 ]
  %i.yg = getelementptr inbounds nuw i8, ptr %i.xx, i64 8
  store i64 %i.yf, ptr %i.yg, align 8, !tbaa !35
  store ptr %i.ua, ptr %14, align 8, !tbaa !31
  store i64 0, ptr %i.ub, align 8, !tbaa !35
  store i8 0, ptr %i.ua, align 8, !tbaa !32
  %.not10.i.i.i.i = icmp eq ptr %i.xm, %i.wz
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i201, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.yu, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.xw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i201 ] ; 5 uses
  %.0911.i.i.i.i = phi ptr [ %i.yt, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.xm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i201 ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !179)
  call void @llvm.experimental.noalias.scope.decl(metadata !180)
  %i.yh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.yh, ptr %.012.i.i.i.i, align 8, !tbaa !34, !alias.scope !179, !noalias !180
  %i.yi = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !31, !alias.scope !180, !noalias !179 ; 2 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 5 uses
  %i.yk = icmp eq ptr %i.yi, %i.yj
  br i1 %i.yk, label %bb.cj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.cj:                                            ; preds = %.lr.ph.i.i.i.i
  %i.yl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.ym = load i64, ptr %i.yl, align 8, !tbaa !35, !alias.scope !180, !noalias !179 ; 3 uses
  %i.yn = icmp ult i64 %i.ym, 16
  call void @llvm.assume(i1 %i.yn)
  %i.yo = add nuw nsw i64 %i.ym, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.yh, ptr noundef nonnull align 8 dereferenceable(1) %i.yj, i64 %i.yo, i1 false), !alias.scope !181
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.yi, ptr %.012.i.i.i.i, align 8, !tbaa !31, !alias.scope !179, !noalias !180
  %i.yp = load i64, ptr %i.yj, align 8, !tbaa !32, !alias.scope !180, !noalias !179
  store i64 %i.yp, ptr %i.yh, align 8, !tbaa !32, !alias.scope !179, !noalias !180
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !35, !alias.scope !180, !noalias !179
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.cj
  %i.yq = phi i64 [ %i.ym, %bb.cj ], [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.yr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.ys = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  store i64 %i.yq, ptr %i.ys, align 8, !tbaa !35, !alias.scope !179, !noalias !180
  store ptr %i.yj, ptr %.0911.i.i.i.i, align 8, !tbaa !31, !alias.scope !180, !noalias !179
  store i64 0, ptr %i.yr, align 8, !tbaa !35, !alias.scope !180, !noalias !179
  store i8 0, ptr %i.yj, align 8, !tbaa !32, !alias.scope !180, !noalias !179
  %i.yt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.yt, %i.wz
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i201
  %.0.lcssa.i.i.i.i = phi ptr [ %i.xw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i201 ], [ %i.yu, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ]
  %i.yv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 32
  %.not.i27.i = icmp eq ptr %i.xm, null
  br i1 %.not.i27.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit, label %bb.ck

bb.ck:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i
  %i.yw = load ptr, ptr %i.tz, align 8, !tbaa !33
  %i.yx = ptrtoint ptr %i.yw to i64
  %i.yy = sub i64 %i.yx, %i.xo
  call void @_ZdlPvm(ptr noundef nonnull %i.xm, i64 noundef %i.yy) #22
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit: ; preds = %bb.ck, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i
  store ptr %i.xw, ptr %i.c, align 8, !tbaa !26
  store ptr %i.yv, ptr %i.ty, align 8, !tbaa !27
  %i.yz = getelementptr inbounds nuw [32 x i8], ptr %i.xw, i64 %i.xu
  store ptr %i.yz, ptr %i.tz, align 8, !tbaa !33
  %.pre341.a = load ptr, ptr %14, align 8, !tbaa !31 ; 2 uses
  %i.za = icmp eq ptr %.pre341.a, %i.ua
  br i1 %i.za, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit
  %i.zb = load i64, ptr %i.ua, align 8, !tbaa !32
  %i.zc = add i64 %i.zb, 1
  call void @_ZdlPvm(ptr noundef %.pre341.a, i64 noundef %i.zc) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  %i.zd = add nuw i32 %.019296, 15
  %i.ze = uitofp i32 %i.zd to double
  %i.zf = fdiv nnan double 5.000000e+04, %i.ze
  %i.zg = fmul double %i.zf, %i.uc
  %i.zh = fptosi double %i.zg to i32              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !182)
  %i.zi = call i32 @llvm.abs.i32(i32 %i.zh, i1 false) ; 5 uses
  %i.zj = icmp ult i32 %i.zi, 10
  br i1 %i.zj, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i171, label %.lr.ph.i.i168

.lr.ph.i.i168:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167, %bb.cq
  %.030.i.i169 = phi i32 [ %i.zr, %bb.cq ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167 ] ; 4 uses
  %.02329.i.i170 = phi i32 [ %i.zq, %bb.cq ], [ %i.zi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167 ] ; 5 uses
  %i.zk = icmp ult i32 %.02329.i.i170, 100
  br i1 %i.zk, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %.lr.ph.i.i168
  %i.zl = add i32 %.030.i.i169, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i171

bb.cm:                                            ; preds = %.lr.ph.i.i168
  %i.zm = icmp ult i32 %.02329.i.i170, 1000
  br i1 %i.zm, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.zn = add i32 %.030.i.i169, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i171

bb.co:                                            ; preds = %bb.cm
  %i.zo = icmp ult i32 %.02329.i.i170, 10000
  br i1 %i.zo, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.zp = add i32 %.030.i.i169, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i171

bb.cq:                                            ; preds = %bb.co
  %i.zq = udiv i32 %.02329.i.i170, 10000
  %i.zr = add i32 %.030.i.i169, 4                 ; 2 uses
  %i.zs = icmp ult i32 %.02329.i.i170, 100000
  br i1 %i.zs, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i171, label %.lr.ph.i.i168, !llvm.loop !116

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i171: ; preds = %bb.cq, %bb.cp, %bb.cn, %bb.cl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167
  %.022.i.i172 = phi i32 [ %i.zp, %bb.cp ], [ %i.zl, %bb.cl ], [ %i.zn, %bb.cn ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167 ], [ %i.zr, %bb.cq ] ; 2 uses
  %.lobit.i173 = lshr i32 %i.zh, 31               ; 2 uses
  %i.zt = add i32 %.022.i.i172, %.lobit.i173
  %i.zu = zext i32 %i.zt to i64
  store ptr %i.ud, ptr %16, align 8, !tbaa !34, !alias.scope !182
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %16, i64 noundef %i.zu, i8 noundef signext 45) #18
  %i.zv = zext nneg i32 %.lobit.i173 to i64
  %i.zw = load ptr, ptr %16, align 8, !tbaa !31, !alias.scope !182
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 %i.zv ; 4 uses
  %i.zy = icmp ugt i32 %i.zi, 99
  br i1 %i.zy, label %.lr.ph.preheader.i.i177, label %._crit_edge.i.i174

.lr.ph.preheader.i.i177:                          ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i171
  %i.zz = add i32 %.022.i.i172, -1
  br label %.lr.ph.i11.i178

.lr.ph.i11.i178:                                  ; preds = %.lr.ph.i11.i178, %.lr.ph.preheader.i.i177
  %.020.i.i179 = phi i32 [ %i.aac, %.lr.ph.i11.i178 ], [ %i.zi, %.lr.ph.preheader.i.i177 ] ; 3 uses
  %.01819.i.i180 = phi i32 [ %i.aan, %.lr.ph.i11.i178 ], [ %i.zz, %.lr.ph.preheader.i.i177 ] ; 3 uses
  %i.aaa = urem i32 %.020.i.i179, 100
  %i.aab = shl nuw nsw i32 %i.aaa, 1
  %i.aac = udiv i32 %.020.i.i179, 100             ; 2 uses
  %i.aad = zext nneg i32 %i.aab to i64
  %i.aae = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.aad ; 2 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aae, i64 1
  %i.aag = load i8, ptr %i.aaf, align 1, !tbaa !32, !noalias !182
  %i.aah = zext i32 %.01819.i.i180 to i64
  %i.aai = getelementptr inbounds nuw i8, ptr %i.zx, i64 %i.aah
  store i8 %i.aag, ptr %i.aai, align 1, !tbaa !32
  %i.aaj = load i8, ptr %i.aae, align 2, !tbaa !32, !noalias !182
  %i.aak = add i32 %.01819.i.i180, -1
  %i.aal = zext i32 %i.aak to i64
  %i.aam = getelementptr inbounds nuw i8, ptr %i.zx, i64 %i.aal
  store i8 %i.aaj, ptr %i.aam, align 1, !tbaa !32
  %i.aan = add i32 %.01819.i.i180, -2
  %i.aao = icmp ugt i32 %.020.i.i179, 9999
  br i1 %i.aao, label %.lr.ph.i11.i178, label %._crit_edge.i.i174, !llvm.loop !117

._crit_edge.i.i174:                               ; preds = %.lr.ph.i11.i178, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i171
  %.0.lcssa.i.i175 = phi i32 [ %i.zi, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i171 ], [ %i.aac, %.lr.ph.i11.i178 ] ; 3 uses
  %i.aap = icmp samesign ugt i32 %.0.lcssa.i.i175, 9
  br i1 %i.aap, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %._crit_edge.i.i174
  %i.aaq = shl nuw nsw i32 %.0.lcssa.i.i175, 1
  %i.aar = zext nneg i32 %i.aaq to i64
  %i.aas = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.aar ; 2 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aas, i64 1
  %i.aau = load i8, ptr %i.aat, align 1, !tbaa !32, !noalias !182
  %i.aav = getelementptr inbounds nuw i8, ptr %i.zx, i64 1
  store i8 %i.aau, ptr %i.aav, align 1, !tbaa !32
  %i.aaw = load i8, ptr %i.aas, align 2, !tbaa !32, !noalias !182
  br label %_ZNSt7__cxx119to_stringEi.exit181

bb.cs:                                            ; preds = %._crit_edge.i.i174
  %i.aax = trunc nuw nsw i32 %.0.lcssa.i.i175 to i8
  %i.aay = or disjoint i8 %i.aax, 48
  br label %_ZNSt7__cxx119to_stringEi.exit181

_ZNSt7__cxx119to_stringEi.exit181:                ; preds = %bb.cr, %bb.cs
  %storemerge.i.i176 = phi i8 [ %i.aay, %bb.cs ], [ %i.aaw, %bb.cr ]
  store i8 %storemerge.i.i176, ptr %i.zx, align 1, !tbaa !32
  call void @llvm.experimental.noalias.scope.decl(metadata !183)
  %i.aaz = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.328, i64 noundef 12) #18, !noalias !183 ; 6 uses
  store ptr %i.ue, ptr %15, align 8, !tbaa !34, !alias.scope !183
  %i.aba = load ptr, ptr %i.aaz, align 8, !tbaa !31 ; 2 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aaz, i64 16 ; 5 uses
  %i.abc = icmp eq ptr %i.aba, %i.abb
  br i1 %i.abc, label %bb.ct, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182

bb.ct:                                            ; preds = %_ZNSt7__cxx119to_stringEi.exit181
  %i.abd = getelementptr inbounds nuw i8, ptr %i.aaz, i64 8
  %i.abe = load i64, ptr %i.abd, align 8, !tbaa !35 ; 3 uses
  %i.abf = icmp ult i64 %i.abe, 16
  call void @llvm.assume(i1 %i.abf)
  %i.abg = add nuw nsw i64 %i.abe, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ue, ptr noundef nonnull align 8 dereferenceable(1) %i.abb, i64 %i.abg, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit186

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182: ; preds = %_ZNSt7__cxx119to_stringEi.exit181
  store ptr %i.aba, ptr %15, align 8, !tbaa !31, !alias.scope !183
  %i.abh = load i64, ptr %i.abb, align 8, !tbaa !32
  store i64 %i.abh, ptr %i.ue, align 8, !tbaa !32, !alias.scope !183
  %.phi.trans.insert.i183 = getelementptr inbounds nuw i8, ptr %i.aaz, i64 8
  %.pre.i184 = load i64, ptr %.phi.trans.insert.i183, align 8, !tbaa !35
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit186

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit186: ; preds = %bb.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182
  %i.abi = phi i64 [ %i.abe, %bb.ct ], [ %.pre.i184, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182 ]
  %i.abj = getelementptr inbounds nuw i8, ptr %i.aaz, i64 8
  store i64 %i.abi, ptr %i.uf, align 8, !tbaa !35, !alias.scope !183
  store ptr %i.abb, ptr %i.aaz, align 8, !tbaa !31
  store i64 0, ptr %i.abj, align 8, !tbaa !35
  store i8 0, ptr %i.abb, align 8, !tbaa !32
  %i.abk = load ptr, ptr %i.ty, align 8, !tbaa !27 ; 8 uses
  %i.abl = load ptr, ptr %i.tz, align 8, !tbaa !33
  %.not.i187 = icmp eq ptr %i.abk, %i.abl
  br i1 %.not.i187, label %bb.cw, label %bb.cu

bb.cu:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit186
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abk, i64 16 ; 3 uses
  store ptr %i.abm, ptr %i.abk, align 8, !tbaa !34
  %i.abn = load ptr, ptr %15, align 8, !tbaa !31  ; 2 uses
  %i.abo = icmp eq ptr %i.abn, %i.ue
  br i1 %i.abo, label %bb.cv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188

bb.cv:                                            ; preds = %bb.cu
  %i.abp = load i64, ptr %i.uf, align 8, !tbaa !35 ; 3 uses
  %i.abq = icmp ult i64 %i.abp, 16
  call void @llvm.assume(i1 %i.abq)
  %i.abr = add nuw nsw i64 %i.abp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.abm, ptr noundef nonnull align 8 dereferenceable(1) %i.ue, i64 %i.abr, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit191.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188: ; preds = %bb.cu
  store ptr %i.abn, ptr %i.abk, align 8, !tbaa !31
  %i.abs = load i64, ptr %i.ue, align 8, !tbaa !32
  store i64 %i.abs, ptr %i.abm, align 8, !tbaa !32
  %.pre342.a = load i64, ptr %i.uf, align 8, !tbaa !35
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit191.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit191.thread: ; preds = %bb.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188
  %i.abt = phi i64 [ %.pre342.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188 ], [ %i.abp, %bb.cv ]
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abk, i64 8
  store i64 %i.abt, ptr %i.abu, align 8, !tbaa !35
  store ptr %i.ue, ptr %15, align 8, !tbaa !31
  store i64 0, ptr %i.uf, align 8, !tbaa !35
  store i8 0, ptr %i.ue, align 8, !tbaa !32
  %i.abv = load ptr, ptr %i.ty, align 8, !tbaa !27
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abv, i64 32
  store ptr %i.abw, ptr %i.ty, align 8, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194

bb.cw:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit186
  %i.abx = load ptr, ptr %i.c, align 8, !tbaa !26 ; 5 uses
  %i.aby = ptrtoint ptr %i.abk to i64
  %i.abz = ptrtoint ptr %i.abx to i64             ; 2 uses
  %i.aca = sub i64 %i.aby, %i.abz                 ; 3 uses
  %i.acb = icmp eq i64 %i.aca, 9223372036854775776
  br i1 %i.acb, label %bb.cx, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i202

bb.cx:                                            ; preds = %bb.cw
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.335) #23
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i202: ; preds = %bb.cw
  %i.acc = ashr exact i64 %i.aca, 5               ; 3 uses
  %.sroa.speculated.i.i203 = call i64 @llvm.umax.i64(i64 %i.acc, i64 1)
  %18 = add nsw i64 %.sroa.speculated.i.i203, %i.acc ; 2 uses
  %i.acd = icmp ult i64 %18, %i.acc
  %i.ace = call i64 @llvm.umin.i64(i64 %18, i64 288230376151711743)
  %i.acf = select i1 %i.acd, i64 288230376151711743, i64 %i.ace ; 3 uses
  %.not.i.i204 = icmp ne i64 %i.acf, 0
  call void @llvm.assume(i1 %.not.i.i204)
  %i.acg = shl nuw nsw i64 %i.acf, 5
  %i.ach = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.acg) #21 ; 5 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ach, i64 %i.aca ; 4 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %i.aci, i64 16 ; 3 uses
  store ptr %i.acj, ptr %i.aci, align 8, !tbaa !34
  %i.ack = load ptr, ptr %15, align 8, !tbaa !31  ; 2 uses
  %i.acl = icmp eq ptr %i.ack, %i.ue
  br i1 %i.acl, label %bb.cy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205

bb.cy:                                            ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i202
  %i.acm = load i64, ptr %i.uf, align 8, !tbaa !35 ; 3 uses
  %i.acn = icmp ult i64 %i.acm, 16
  call void @llvm.assume(i1 %i.acn)
  %i.aco = add nuw nsw i64 %i.acm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.acj, ptr noundef nonnull align 8 dereferenceable(1) %i.ue, i64 %i.aco, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i208

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i202
  store ptr %i.ack, ptr %i.aci, align 8, !tbaa !31
  %i.acp = load i64, ptr %i.ue, align 8, !tbaa !32
  store i64 %i.acp, ptr %i.acj, align 8, !tbaa !32
  %.pre.i207 = load i64, ptr %i.uf, align 8, !tbaa !35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i208

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i208: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205, %bb.cy
  %i.acq = phi i64 [ %i.acm, %bb.cy ], [ %.pre.i207, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205 ]
  %i.acr = getelementptr inbounds nuw i8, ptr %i.aci, i64 8
  store i64 %i.acq, ptr %i.acr, align 8, !tbaa !35
  store ptr %i.ue, ptr %15, align 8, !tbaa !31
  store i64 0, ptr %i.uf, align 8, !tbaa !35
  store i8 0, ptr %i.ue, align 8, !tbaa !32
  %.not10.i.i.i.i209 = icmp eq ptr %i.abx, %i.abk
  br i1 %.not10.i.i.i.i209, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i229, label %.lr.ph.i.i.i.i210

.lr.ph.i.i.i.i210:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i208, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i216
  %.012.i.i.i.i211 = phi ptr [ %i.adf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i216 ], [ %i.ach, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i208 ] ; 5 uses
  %.0911.i.i.i.i212 = phi ptr [ %i.ade, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i216 ], [ %i.abx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i208 ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !184)
  call void @llvm.experimental.noalias.scope.decl(metadata !185)
  %i.acs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i211, i64 16 ; 3 uses
  store ptr %i.acs, ptr %.012.i.i.i.i211, align 8, !tbaa !34, !alias.scope !184, !noalias !185
  %i.act = load ptr, ptr %.0911.i.i.i.i212, align 8, !tbaa !31, !alias.scope !185, !noalias !184 ; 2 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i212, i64 16 ; 5 uses
  %i.acv = icmp eq ptr %i.act, %i.acu
  br i1 %i.acv, label %bb.cz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i213

bb.cz:                                            ; preds = %.lr.ph.i.i.i.i210
  %i.acw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i212, i64 8
  %i.acx = load i64, ptr %i.acw, align 8, !tbaa !35, !alias.scope !185, !noalias !184 ; 3 uses
  %i.acy = icmp ult i64 %i.acx, 16
  call void @llvm.assume(i1 %i.acy)
  %i.acz = add nuw nsw i64 %i.acx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.acs, ptr noundef nonnull align 8 dereferenceable(1) %i.acu, i64 %i.acz, i1 false), !alias.scope !186
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i216

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i213: ; preds = %.lr.ph.i.i.i.i210
  store ptr %i.act, ptr %.012.i.i.i.i211, align 8, !tbaa !31, !alias.scope !184, !noalias !185
  %i.ada = load i64, ptr %i.acu, align 8, !tbaa !32, !alias.scope !185, !noalias !184
  store i64 %i.ada, ptr %i.acs, align 8, !tbaa !32, !alias.scope !184, !noalias !185
  %.phi.trans.insert.i.i.i.i.i214 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i212, i64 8
  %.pre.i.i.i.i.i215 = load i64, ptr %.phi.trans.insert.i.i.i.i.i214, align 8, !tbaa !35, !alias.scope !185, !noalias !184
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i216

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i216: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i213, %bb.cz
  %i.adb = phi i64 [ %i.acx, %bb.cz ], [ %.pre.i.i.i.i.i215, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i213 ]
  %i.adc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i212, i64 8
  %i.add = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i211, i64 8
  store i64 %i.adb, ptr %i.add, align 8, !tbaa !35, !alias.scope !184, !noalias !185
  store ptr %i.acu, ptr %.0911.i.i.i.i212, align 8, !tbaa !31, !alias.scope !185, !noalias !184
  store i64 0, ptr %i.adc, align 8, !tbaa !35, !alias.scope !185, !noalias !184
  store i8 0, ptr %i.acu, align 8, !tbaa !32, !alias.scope !185, !noalias !184
  %i.ade = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i212, i64 32 ; 2 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i211, i64 32 ; 2 uses
  %.not.i.i.i.i217 = icmp eq ptr %i.ade, %i.abk
  br i1 %.not.i.i.i.i217, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i229, label %.lr.ph.i.i.i.i210, !llvm.loop !2

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i229: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i216, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i208
  %.0.lcssa.i.i.i.i219 = phi ptr [ %i.ach, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i208 ], [ %i.adf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i216 ]
  %i.adg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i219, i64 32
  %.not.i27.i231 = icmp eq ptr %i.abx, null
  br i1 %.not.i27.i231, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit191, label %bb.da

bb.da:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i229
  %i.adh = load ptr, ptr %i.tz, align 8, !tbaa !33
  %i.adi = ptrtoint ptr %i.adh to i64
  %i.adj = sub i64 %i.adi, %i.abz
  call void @_ZdlPvm(ptr noundef nonnull %i.abx, i64 noundef %i.adj) #22
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit191

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit191: ; preds = %bb.da, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i229
  store ptr %i.ach, ptr %i.c, align 8, !tbaa !26
  store ptr %i.adg, ptr %i.ty, align 8, !tbaa !27
  %i.adk = getelementptr inbounds nuw [32 x i8], ptr %i.ach, i64 %i.acf
  store ptr %i.adk, ptr %i.tz, align 8, !tbaa !33
  %.pre343 = load ptr, ptr %15, align 8, !tbaa !31 ; 2 uses
  %i.adl = icmp eq ptr %.pre343, %i.ue
  br i1 %i.adl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit191
  %i.adm = load i64, ptr %i.ue, align 8, !tbaa !32
  %i.adn = add i64 %i.adm, 1
  call void @_ZdlPvm(ptr noundef %.pre343, i64 noundef %i.adn) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit191, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit191.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192
  %i.ado = load ptr, ptr %16, align 8, !tbaa !31  ; 2 uses
  %i.adp = icmp eq ptr %i.ado, %i.ud
  br i1 %i.adp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194
  %i.adq = load i64, ptr %i.ud, align 8, !tbaa !32
  %i.adr = add i64 %i.adq, 1
  call void @_ZdlPvm(ptr noundef %i.ado, i64 noundef %i.adr) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  %i.ads = add nuw nsw i32 %.019296, 1
  %i.adt = getelementptr inbounds nuw i8, ptr %.sroa.0233.0295, i64 32 ; 2 uses
  %.not249 = icmp eq ptr %i.adt, %i.wl
  br i1 %.not249, label %._crit_edge298, label %.lr.ph297
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal void @__cxx_global_var_init.329() #0 section ".text.startup" comdat($_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E) {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E) #18
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, i8 0, i64 24, i1 false)
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EED2Ev, ptr nonnull @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, ptr nonnull @__dso_handle) #18 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !190    ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !191
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #22
  br label %_ZNSt12_Vector_baseIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EED2Ev.exit

_ZNSt12_Vector_baseIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare noundef i32 @_ZNSt6thread20hardware_concurrencyEv() local_unnamed_addr #9

; Function Attrs: nounwind
declare ptr @__sched_cpualloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @sched_getaffinity(i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @__sched_cpufree(ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #11
end_hunk_0
begin_hunk_1_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27   ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !26     ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.c, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i, !prof !53

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #21
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit: ; preds = %bb.a, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i
  %i.j = phi ptr [ %i.i, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i ], [ null, %bb.a ] ; 5 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !27
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.l, ptr %i.m, align 8, !tbaa !33
  %i.n = load ptr, ptr %1, align 8, !tbaa !52     ; 2 uses
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !52   ; 2 uses
  %.not7.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not7.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_S7_ET0_T_SG_SF_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.ad, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.j, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit ] ; 7 uses
  %.sroa.04.08.i.i.i.i = phi ptr [ %i.ac, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.p, ptr %.09.i.i.i.i, align 8, !tbaa !34
  %i.q = load ptr, ptr %.sroa.04.08.i.i.i.i, align 8, !tbaa !31 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !35   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 %i.s, ptr %i.a, align 8, !tbaa !16
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %bb.d, label %._crit_edge.i.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.u = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %.09.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #18 ; 2 uses
  store ptr %i.u, ptr %.09.i.i.i.i, align 8, !tbaa !31
  %i.v = load i64, ptr %i.a, align 8, !tbaa !16
  store i64 %i.v, ptr %i.p, align 8, !tbaa !32
  br label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.d, %.lr.ph.i.i.i.i
  %i.w = phi ptr [ %i.u, %bb.d ], [ %i.p, %.lr.ph.i.i.i.i ] ; 2 uses
  switch i64 %i.s, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.x = load i8, ptr %i.q, align 1, !tbaa !32
  store i8 %i.x, ptr %i.w, align 1, !tbaa !32
  br label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.q, i64 %i.s, i1 false)
  br label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i

_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i.i.i.i
  %i.y = load i64, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !35
  %i.aa = load ptr, ptr %.09.i.i.i.i, align 8, !tbaa !31
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 32 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ac, %i.o
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_S7_ET0_T_SG_SF_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_S7_ET0_T_SG_SF_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.j, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit ], [ %i.ad, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.k, align 8, !tbaa !27
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS5_S7_EEEEPS5_mT_SF_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr %2, ptr %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %1, 288230376151711743
  br i1 %i.b, label %bb.c, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i, !prof !53

bb.c:                                             ; preds = %bb.b
  %i.c = icmp ugt i64 %1, 576460752303423487
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i: ; preds = %bb.b
  %i.d = shl nuw nsw i64 %1, 5
  %i.e = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #21
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit: ; preds = %bb.a, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i
  %i.f = phi ptr [ %i.e, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i ], [ null, %bb.a ] ; 2 uses
  %.not7.i.i.i.i = icmp eq ptr %2, %3
  br i1 %.not7.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_S7_ET0_T_SG_SF_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.u, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.f, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit ] ; 7 uses
  %.sroa.04.08.i.i.i.i = phi ptr [ %i.t, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i ], [ %2, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.g, ptr %.09.i.i.i.i, align 8, !tbaa !34
  %i.h = load ptr, ptr %.sroa.04.08.i.i.i.i, align 8, !tbaa !31 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !35   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 %i.j, ptr %i.a, align 8, !tbaa !16
  %i.k = icmp ugt i64 %i.j, 15
  br i1 %i.k, label %bb.f, label %._crit_edge.i.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.l = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %.09.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #18 ; 2 uses
  store ptr %i.l, ptr %.09.i.i.i.i, align 8, !tbaa !31
  %i.m = load i64, ptr %i.a, align 8, !tbaa !16
  store i64 %i.m, ptr %i.g, align 8, !tbaa !32
  br label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.f, %.lr.ph.i.i.i.i
  %i.n = phi ptr [ %i.l, %bb.f ], [ %i.g, %.lr.ph.i.i.i.i ] ; 2 uses
  switch i64 %i.j, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.o = load i8, ptr %i.h, align 1, !tbaa !32
  store i8 %i.o, ptr %i.n, align 1, !tbaa !32
  br label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %i.h, i64 %i.j, i1 false)
  br label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i

_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i.i.i.i.i
  %i.p = load i64, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !35
  %i.r = load ptr, ptr %.09.i.i.i.i, align 8, !tbaa !31
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 32 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 32
  %.not.i.i.i.i = icmp eq ptr %i.t, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_S7_ET0_T_SG_SF_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_S7_ET0_T_SG_SF_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  ret ptr %i.f
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27   ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !26     ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.335) #23
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = ashr exact i64 %i.g, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %3 = add nsw i64 %.sroa.speculated.i, %i.i      ; 2 uses
  %i.j = icmp ult i64 %3, %i.i
  %i.k = tail call i64 @llvm.umin.i64(i64 %3, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.f
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #21 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !34
  %i.s = load ptr, ptr %2, align 8, !tbaa !31     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !35   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 %i.u, ptr %i.a, align 8, !tbaa !16
  %i.v = icmp ugt i64 %i.u, 15
  br i1 %i.v, label %bb.c, label %._crit_edge.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.w = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #18 ; 2 uses
  store ptr %i.w, ptr %i.q, align 8, !tbaa !31
  %i.x = load i64, ptr %i.a, align 8, !tbaa !16
  store i64 %i.x, ptr %i.r, align 8, !tbaa !32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.c, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.y = phi ptr [ %i.w, %bb.c ], [ %i.r, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  switch i64 %i.u, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.z = load i8, ptr %i.s, align 1, !tbaa !32
  store i8 %i.z, ptr %i.y, align 1, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.s, i64 %i.u, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !16  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !35
  %i.ac = load ptr, ptr %i.q, align 8, !tbaa !31
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !201)
  call void @llvm.experimental.noalias.scope.decl(metadata !202)
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ae, ptr %.012.i.i.i, align 8, !tbaa !34, !alias.scope !201, !noalias !202
  %i.af = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !31, !alias.scope !202, !noalias !201 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !35, !alias.scope !202, !noalias !201 ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 16
  call void @llvm.assume(i1 %i.ak)
  %i.al = add nuw nsw i64 %i.aj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(1) %i.ag, i64 %i.al, i1 false), !alias.scope !203
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.af, ptr %.012.i.i.i, align 8, !tbaa !31, !alias.scope !201, !noalias !202
  %i.am = load i64, ptr %i.ag, align 8, !tbaa !32, !alias.scope !202, !noalias !201
  store i64 %i.am, ptr %i.ae, align 8, !tbaa !32, !alias.scope !201, !noalias !202
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !35, !alias.scope !202, !noalias !201
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.f
  %i.an = phi i64 [ %i.aj, %bb.f ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.an, ptr %i.ap, align 8, !tbaa !35, !alias.scope !201, !noalias !202
  store ptr %i.ag, ptr %.0911.i.i.i, align 8, !tbaa !31, !alias.scope !202, !noalias !201
  store i64 0, ptr %i.ao, align 8, !tbaa !35, !alias.scope !202, !noalias !201
  store i8 0, ptr %i.ag, align 8, !tbaa !32, !alias.scope !202, !noalias !201
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !2

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.as, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !204)
  call void @llvm.experimental.noalias.scope.decl(metadata !205)
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.at, ptr %.012.i.i.i18, align 8, !tbaa !34, !alias.scope !204, !noalias !205
  %i.au = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !31, !alias.scope !205, !noalias !204 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20

bb.g:                                             ; preds = %.lr.ph.i.i.i17
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !35, !alias.scope !205, !noalias !204 ; 3 uses
  %i.az = icmp ult i64 %i.ay, 16
  call void @llvm.assume(i1 %i.az)
  %i.ba = add nuw nsw i64 %i.ay, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.at, ptr noundef nonnull align 8 dereferenceable(1) %i.av, i64 %i.ba, i1 false), !alias.scope !206
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.au, ptr %.012.i.i.i18, align 8, !tbaa !31, !alias.scope !204, !noalias !205
  %i.bb = load i64, ptr %i.av, align 8, !tbaa !32, !alias.scope !205, !noalias !204
  store i64 %i.bb, ptr %i.at, align 8, !tbaa !32, !alias.scope !204, !noalias !205
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !35, !alias.scope !205, !noalias !204
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20, %bb.g
  %i.bc = phi i64 [ %i.ay, %bb.g ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20 ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.bc, ptr %i.be, align 8, !tbaa !35, !alias.scope !204, !noalias !205
  store ptr %i.av, ptr %.0911.i.i.i19, align 8, !tbaa !31, !alias.scope !205, !noalias !204
  store i64 0, ptr %i.bd, align 8, !tbaa !35, !alias.scope !205, !noalias !204
  store i8 0, ptr %i.av, align 8, !tbaa !32, !alias.scope !205, !noalias !204
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bf, %i.c
  br i1 %.not.i.i.i24, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !2

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.as, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.d, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !33
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = sub i64 %i.bj, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bk) #22
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, %bb.h
  store ptr %i.p, ptr %0, align 8, !tbaa !26
  store ptr %.0.lcssa.i.i.i25, ptr %i.b, align 8, !tbaa !27
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bl, ptr %i.bh, align 8, !tbaa !33
  ret void
}

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #9

declare noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240)) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt12__basic_fileIcED1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9)) unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef zeroext i1 @_ZNKSt12__basic_fileIcE7is_openEv(ptr noundef nonnull align 8 dereferenceable(9)) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #11

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !26     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.335) #23
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %3 = add nsw i64 %.sroa.speculated.i, %i.h      ; 2 uses
  %i.i = icmp ult i64 %3, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %3, i64 288230376151711743)
  %i.k = select i1 %i.i, i64 288230376151711743, i64 %i.j ; 3 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %.not.i = icmp ne i64 %i.k, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.n = shl nuw nsw i64 %i.k, 5
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #21 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !34
  %i.r = load ptr, ptr %2, align 8, !tbaa !31     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !35   ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  tail call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  store ptr %i.r, ptr %i.p, align 8, !tbaa !31
  %i.y = load i64, ptr %i.s, align 8, !tbaa !32
  store i64 %i.y, ptr %i.q, align 8, !tbaa !32
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.z = phi i64 [ %i.v, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !35
  store ptr %i.s, ptr %2, align 8, !tbaa !31
  store i64 0, ptr %i.aa, align 8, !tbaa !35
  store i8 0, ptr %i.s, align 8, !tbaa !32
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ao, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214)
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ac, ptr %.012.i.i.i, align 8, !tbaa !34, !alias.scope !213, !noalias !214
  %i.ad = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !31, !alias.scope !214, !noalias !213 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !35, !alias.scope !214, !noalias !213 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 16
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = add nuw nsw i64 %i.ah, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ac, ptr noundef nonnull align 8 dereferenceable(1) %i.ae, i64 %i.aj, i1 false), !alias.scope !215
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ad, ptr %.012.i.i.i, align 8, !tbaa !31, !alias.scope !213, !noalias !214
  %i.ak = load i64, ptr %i.ae, align 8, !tbaa !32, !alias.scope !214, !noalias !213
  store i64 %i.ak, ptr %i.ac, align 8, !tbaa !32, !alias.scope !213, !noalias !214
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !35, !alias.scope !214, !noalias !213
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.d
  %i.al = phi i64 [ %i.ah, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.al, ptr %i.an, align 8, !tbaa !35, !alias.scope !213, !noalias !214
  store ptr %i.ae, ptr %.0911.i.i.i, align 8, !tbaa !31, !alias.scope !214, !noalias !213
  store i64 0, ptr %i.am, align 8, !tbaa !35, !alias.scope !214, !noalias !213
  store i8 0, ptr %i.ae, align 8, !tbaa !32, !alias.scope !214, !noalias !213
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ao, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !2

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.aq, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.bd, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !217)
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.ar, ptr %.012.i.i.i18, align 8, !tbaa !34, !alias.scope !216, !noalias !217
  %i.as = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !31, !alias.scope !217, !noalias !216 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !35, !alias.scope !217, !noalias !216 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, 16
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = add nuw nsw i64 %i.aw, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %i.at, i64 %i.ay, i1 false), !alias.scope !218
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.as, ptr %.012.i.i.i18, align 8, !tbaa !31, !alias.scope !216, !noalias !217
  %i.az = load i64, ptr %i.at, align 8, !tbaa !32, !alias.scope !217, !noalias !216
  store i64 %i.az, ptr %i.ar, align 8, !tbaa !32, !alias.scope !216, !noalias !217
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !35, !alias.scope !217, !noalias !216
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20, %bb.e
  %i.ba = phi i64 [ %i.aw, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.ba, ptr %i.bc, align 8, !tbaa !35, !alias.scope !216, !noalias !217
  store ptr %i.at, ptr %.0911.i.i.i19, align 8, !tbaa !31, !alias.scope !217, !noalias !216
  store i64 0, ptr %i.bb, align 8, !tbaa !35, !alias.scope !217, !noalias !216
  store i8 0, ptr %i.at, align 8, !tbaa !32, !alias.scope !217, !noalias !216
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bd, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !2

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.aq, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !33
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.bh, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bi) #22
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, %bb.f
  store ptr %i.o, ptr %0, align 8, !tbaa !26
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !27
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.k
  store ptr %i.bj, ptr %i.bf, align 8, !tbaa !33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA11_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(11) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27   ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !26     ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.335) #23
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = ashr exact i64 %i.g, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %3 = add nsw i64 %.sroa.speculated.i, %i.i      ; 2 uses
  %i.j = icmp ult i64 %3, %i.i
  %i.k = tail call i64 @llvm.umin.i64(i64 %3, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.f
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #21 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !34
  %i.s = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(11) %2) #18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 %i.s, ptr %i.a, align 8, !tbaa !16
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %bb.c, label %._crit_edge.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.u = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #18 ; 2 uses
  store ptr %i.u, ptr %i.q, align 8, !tbaa !31
  %i.v = load i64, ptr %i.a, align 8, !tbaa !16
  store i64 %i.v, ptr %i.r, align 8, !tbaa !32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.c, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.w = phi ptr [ %i.u, %bb.c ], [ %i.r, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  switch i64 %i.s, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.x = load i8, ptr %2, align 1, !tbaa !32
  store i8 %i.x, ptr %i.w, align 1, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr nonnull align 1 dereferenceable(11) %2, i64 %i.s, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  %i.y = load i64, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !35
  %i.aa = load ptr, ptr %i.q, align 8, !tbaa !31
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ao, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !225)
  call void @llvm.experimental.noalias.scope.decl(metadata !226)
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ac, ptr %.012.i.i.i, align 8, !tbaa !34, !alias.scope !225, !noalias !226
  %i.ad = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !31, !alias.scope !226, !noalias !225 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !35, !alias.scope !226, !noalias !225 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 16
  call void @llvm.assume(i1 %i.ai)
  %i.aj = add nuw nsw i64 %i.ah, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ac, ptr noundef nonnull align 8 dereferenceable(1) %i.ae, i64 %i.aj, i1 false), !alias.scope !227
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ad, ptr %.012.i.i.i, align 8, !tbaa !31, !alias.scope !225, !noalias !226
  %i.ak = load i64, ptr %i.ae, align 8, !tbaa !32, !alias.scope !226, !noalias !225
  store i64 %i.ak, ptr %i.ac, align 8, !tbaa !32, !alias.scope !225, !noalias !226
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !35, !alias.scope !226, !noalias !225
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.f
  %i.al = phi i64 [ %i.ah, %bb.f ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.al, ptr %i.an, align 8, !tbaa !35, !alias.scope !225, !noalias !226
  store ptr %i.ae, ptr %.0911.i.i.i, align 8, !tbaa !31, !alias.scope !226, !noalias !225
  store i64 0, ptr %i.am, align 8, !tbaa !35, !alias.scope !226, !noalias !225
  store i8 0, ptr %i.ae, align 8, !tbaa !32, !alias.scope !226, !noalias !225
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ao, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !2

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit ], [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.aq, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.bd, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !228)
  call void @llvm.experimental.noalias.scope.decl(metadata !229)
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.ar, ptr %.012.i.i.i18, align 8, !tbaa !34, !alias.scope !228, !noalias !229
  %i.as = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !31, !alias.scope !229, !noalias !228 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20

bb.g:                                             ; preds = %.lr.ph.i.i.i17
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !35, !alias.scope !229, !noalias !228 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, 16
  call void @llvm.assume(i1 %i.ax)
  %i.ay = add nuw nsw i64 %i.aw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %i.at, i64 %i.ay, i1 false), !alias.scope !230
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.as, ptr %.012.i.i.i18, align 8, !tbaa !31, !alias.scope !228, !noalias !229
  %i.az = load i64, ptr %i.at, align 8, !tbaa !32, !alias.scope !229, !noalias !228
  store i64 %i.az, ptr %i.ar, align 8, !tbaa !32, !alias.scope !228, !noalias !229
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !35, !alias.scope !229, !noalias !228
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20, %bb.g
  %i.ba = phi i64 [ %i.aw, %bb.g ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.ba, ptr %i.bc, align 8, !tbaa !35, !alias.scope !228, !noalias !229
  store ptr %i.at, ptr %.0911.i.i.i19, align 8, !tbaa !31, !alias.scope !229, !noalias !228
  store i64 0, ptr %i.bb, align 8, !tbaa !35, !alias.scope !229, !noalias !228
  store i8 0, ptr %i.at, align 8, !tbaa !32, !alias.scope !229, !noalias !228
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bd, %i.c
  br i1 %.not.i.i.i24, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !2

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.aq, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.d, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !33
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.bh, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bi) #22
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, %bb.h
  store ptr %i.p, ptr %0, align 8, !tbaa !26
  store ptr %.0.lcssa.i.i.i25, ptr %i.b, align 8, !tbaa !27
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bj, ptr %i.bf, align 8, !tbaa !33
  ret void
}

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27   ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !26     ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.335) #23
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = ashr exact i64 %i.g, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %3 = add nsw i64 %.sroa.speculated.i, %i.i      ; 2 uses
  %i.j = icmp ult i64 %3, %i.i
  %i.k = tail call i64 @llvm.umin.i64(i64 %3, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.f
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #21 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !34
  %i.s = load ptr, ptr %2, align 8, !tbaa !31     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !35   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 %i.u, ptr %i.a, align 8, !tbaa !16
  %i.v = icmp ugt i64 %i.u, 15
  br i1 %i.v, label %bb.c, label %._crit_edge.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.w = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #18 ; 2 uses
  store ptr %i.w, ptr %i.q, align 8, !tbaa !31
  %i.x = load i64, ptr %i.a, align 8, !tbaa !16
  store i64 %i.x, ptr %i.r, align 8, !tbaa !32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.c, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.y = phi ptr [ %i.w, %bb.c ], [ %i.r, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  switch i64 %i.u, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.z = load i8, ptr %i.s, align 1, !tbaa !32
  store i8 %i.z, ptr %i.y, align 1, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.s, i64 %i.u, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !16  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !35
  %i.ac = load ptr, ptr %i.q, align 8, !tbaa !31
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !237)
  call void @llvm.experimental.noalias.scope.decl(metadata !238)
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ae, ptr %.012.i.i.i, align 8, !tbaa !34, !alias.scope !237, !noalias !238
  %i.af = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !31, !alias.scope !238, !noalias !237 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !35, !alias.scope !238, !noalias !237 ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 16
  call void @llvm.assume(i1 %i.ak)
  %i.al = add nuw nsw i64 %i.aj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(1) %i.ag, i64 %i.al, i1 false), !alias.scope !239
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.af, ptr %.012.i.i.i, align 8, !tbaa !31, !alias.scope !237, !noalias !238
  %i.am = load i64, ptr %i.ag, align 8, !tbaa !32, !alias.scope !238, !noalias !237
  store i64 %i.am, ptr %i.ae, align 8, !tbaa !32, !alias.scope !237, !noalias !238
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !35, !alias.scope !238, !noalias !237
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.f
  %i.an = phi i64 [ %i.aj, %bb.f ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.an, ptr %i.ap, align 8, !tbaa !35, !alias.scope !237, !noalias !238
  store ptr %i.ag, ptr %.0911.i.i.i, align 8, !tbaa !31, !alias.scope !238, !noalias !237
  store i64 0, ptr %i.ao, align 8, !tbaa !35, !alias.scope !238, !noalias !237
  store i8 0, ptr %i.ag, align 8, !tbaa !32, !alias.scope !238, !noalias !237
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !2

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.as, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !240)
  call void @llvm.experimental.noalias.scope.decl(metadata !241)
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.at, ptr %.012.i.i.i18, align 8, !tbaa !34, !alias.scope !240, !noalias !241
  %i.au = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !31, !alias.scope !241, !noalias !240 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20

bb.g:                                             ; preds = %.lr.ph.i.i.i17
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !35, !alias.scope !241, !noalias !240 ; 3 uses
  %i.az = icmp ult i64 %i.ay, 16
  call void @llvm.assume(i1 %i.az)
  %i.ba = add nuw nsw i64 %i.ay, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.at, ptr noundef nonnull align 8 dereferenceable(1) %i.av, i64 %i.ba, i1 false), !alias.scope !242
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.au, ptr %.012.i.i.i18, align 8, !tbaa !31, !alias.scope !240, !noalias !241
  %i.bb = load i64, ptr %i.av, align 8, !tbaa !32, !alias.scope !241, !noalias !240
  store i64 %i.bb, ptr %i.at, align 8, !tbaa !32, !alias.scope !240, !noalias !241
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !35, !alias.scope !241, !noalias !240
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20, %bb.g
  %i.bc = phi i64 [ %i.ay, %bb.g ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20 ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.bc, ptr %i.be, align 8, !tbaa !35, !alias.scope !240, !noalias !241
  store ptr %i.av, ptr %.0911.i.i.i19, align 8, !tbaa !31, !alias.scope !241, !noalias !240
  store i64 0, ptr %i.bd, align 8, !tbaa !35, !alias.scope !241, !noalias !240
  store i8 0, ptr %i.av, align 8, !tbaa !32, !alias.scope !241, !noalias !240
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bf, %i.c
  br i1 %.not.i.i.i24, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !2

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.as, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.d, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !33
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = sub i64 %i.bj, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bk) #22
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, %bb.h
  store ptr %i.p, ptr %0, align 8, !tbaa !26
  store ptr %.0.lcssa.i.i.i25, ptr %i.b, align 8, !tbaa !27
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bl, ptr %i.bh, align 8, !tbaa !33
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_benchmark.cpp() #0 section ".text.startup" {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  %i.j = alloca i64, align 8                      ; 5 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %i.l = alloca i64, align 8                      ; 5 uses
  %i.m = alloca i64, align 8                      ; 5 uses
  %i.n = alloca i64, align 8                      ; 5 uses
  %i.o = alloca i64, align 8                      ; 5 uses
  %i.p = alloca i64, align 8                      ; 5 uses
  %i.q = alloca i64, align 8                      ; 5 uses
  %i.r = alloca i64, align 8                      ; 5 uses
  %i.s = alloca i64, align 8                      ; 5 uses
  %i.t = alloca i64, align 8                      ; 5 uses
  %i.u = alloca i64, align 8                      ; 5 uses
  %i.v = alloca i64, align 8                      ; 5 uses
  %i.w = alloca i64, align 8                      ; 5 uses
  %i.x = alloca i64, align 8                      ; 5 uses
  %i.y = alloca i64, align 8                      ; 5 uses
  %i.z = alloca i64, align 8                      ; 5 uses
  %i.aa = alloca i64, align 8                     ; 5 uses
  %i.ab = alloca i64, align 8                     ; 5 uses
  %i.ac = alloca i64, align 8                     ; 5 uses
  %i.ad = alloca i64, align 8                     ; 5 uses
  %i.ae = alloca i64, align 8                     ; 5 uses
  %i.af = alloca i64, align 8                     ; 5 uses
  %i.ag = alloca i64, align 8                     ; 5 uses
  %i.ah = alloca i64, align 8                     ; 5 uses
  %i.ai = alloca i64, align 8                     ; 5 uses
  %i.aj = alloca i64, align 8                     ; 5 uses
  %i.ak = alloca i64, align 8                     ; 5 uses
  %i.al = alloca i64, align 8                     ; 5 uses
  %i.am = alloca i64, align 8                     ; 5 uses
end_hunk_1
