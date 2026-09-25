Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/Runtime?download=true
inline.NumInlined: 3791
inline.NumDeleted: 2147
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN6hermes2vm7Runtime9markRootsERNS0_28RootAndSlotAcceptorWithNamesEb:bb.a

bb.c:                                             ; preds = %.lr.ph332
  %i.uj = getelementptr inbounds nuw i8, ptr %.sroa.13.0329, i64 8 ; 2 uses
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !333 ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 512
  br label %_ZNSt15_Deque_iteratorIPN6hermes2vm8CallableERS3_PS3_EppEv.exit

_ZNSt15_Deque_iteratorIPN6hermes2vm8CallableERS3_PS3_EppEv.exit: ; preds = %.lr.ph332, %bb.c
  %.sroa.13.1 = phi ptr [ %i.uj, %bb.c ], [ %.sroa.13.0329, %.lr.ph332 ]
  %.sroa.10.1 = phi ptr [ %i.ul, %bb.c ], [ %.sroa.10.0330, %.lr.ph332 ]
  %.sroa.0254.1 = phi ptr [ %i.uk, %bb.c ], [ %i.uh, %.lr.ph332 ] ; 2 uses
  %.not306 = icmp eq ptr %.sroa.0254.1, %i.fm
  br i1 %.not306, label %_ZN6hermes2vm7Runtime19MarkRootsPhaseTimerD2Ev.exit195, label %.lr.ph332

bb.d:                                             ; preds = %_ZN6hermes2vm7Runtime19MarkRootsPhaseTimerD2Ev.exit195
  %i.um = load ptr, ptr %1, align 8, !tbaa !47
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 16
  %i.uo = load ptr, ptr %i.un, align 8
  tail call void %i.uo(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 9) #29
  %i.up = getelementptr inbounds nuw i8, ptr %0, i64 9240
  %i.uq = getelementptr inbounds nuw i8, ptr %0, i64 856
  tail call void @_ZN6hermes2vm15IdentifierTable15markIdentifiersERNS0_12RootAcceptorERNS0_7HadesGCE(ptr noundef nonnull align 8 dereferenceable(84) %i.up, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8112) %i.uq) #29
  %i.ur = load ptr, ptr %1, align 8, !tbaa !47
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 24
  %i.ut = load ptr, ptr %i.us, align 8
  tail call void %i.ut(ptr noundef nonnull align 8 dereferenceable(8) %1) #29
  br label %_ZN6hermes2vm7Runtime19MarkRootsPhaseTimerD2Ev.exit204

_ZN6hermes2vm7Runtime19MarkRootsPhaseTimerD2Ev.exit204: ; preds = %_ZN6hermes2vm7Runtime19MarkRootsPhaseTimerD2Ev.exit195, %bb.d
  %i.uu = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #29
  %i.uv = sub nsw i64 %i.uu, %i.ud
  %i.uw = sitofp i64 %i.uv to double
  %i.ux = fdiv double %i.uw, 1.000000e+09
  %i.uy = getelementptr inbounds nuw i8, ptr %0, i64 9160 ; 2 uses
  %i.uz = load double, ptr %i.uy, align 8, !tbaa !414
  %i.va = fadd double %i.uz, %i.ux
  store double %i.va, ptr %i.uy, align 8, !tbaa !414
  %i.vb = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #29
  %i.vc = load ptr, ptr %1, align 8, !tbaa !47
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 16
  %i.ve = load ptr, ptr %i.vd, align 8
  tail call void %i.ve(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 10) #29
  tail call void @_ZN6hermes2vm15HandleRootOwner12markGCScopesERNS0_12RootAcceptorE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #29
  %i.vf = load ptr, ptr %1, align 8, !tbaa !47
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 24
  %i.vh = load ptr, ptr %i.vg, align 8
  tail call void %i.vh(ptr noundef nonnull align 8 dereferenceable(8) %1) #29
  %i.vi = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #29
  %i.vj = sub nsw i64 %i.vi, %i.vb
  %i.vk = sitofp i64 %i.vj to double
  %i.vl = fdiv double %i.vk, 1.000000e+09
  %i.vm = getelementptr inbounds nuw i8, ptr %0, i64 9168 ; 2 uses
  %i.vn = load double, ptr %i.vm, align 8, !tbaa !414
  %i.vo = fadd double %i.vn, %i.vl
  store double %i.vo, ptr %i.vm, align 8, !tbaa !414
  %i.vp = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #29
  %i.vq = load ptr, ptr %1, align 8, !tbaa !47
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 16
  %i.vs = load ptr, ptr %i.vr, align 8
  tail call void %i.vs(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 13) #29
  %i.vt = getelementptr inbounds nuw i8, ptr %0, i64 9328
  tail call void @_ZN6hermes2vm14SymbolRegistry9markRootsERNS0_12RootAcceptorE(ptr noundef nonnull align 8 dereferenceable(32) %i.vt, ptr noundef nonnull align 8 dereferenceable(8) %1) #29
  %i.vu = load ptr, ptr %1, align 8, !tbaa !47
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 24
  %i.vw = load ptr, ptr %i.vv, align 8
  tail call void %i.vw(ptr noundef nonnull align 8 dereferenceable(8) %1) #29
  %i.vx = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #29
  %i.vy = sub nsw i64 %i.vx, %i.vp
  %i.vz = sitofp i64 %i.vy to double
  %i.wa = fdiv double %i.vz, 1.000000e+09
  %i.wb = getelementptr inbounds nuw i8, ptr %0, i64 9192 ; 2 uses
  %i.wc = load double, ptr %i.wb, align 8, !tbaa !414
  %i.wd = fadd double %i.wc, %i.wa
  store double %i.wd, ptr %i.wb, align 8, !tbaa !414
  %i.we = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #29
  %i.wf = load ptr, ptr %1, align 8, !tbaa !47
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 16
  %i.wh = load ptr, ptr %i.wg, align 8
  tail call void %i.wh(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 14) #29
  %i.wi = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.wj = load ptr, ptr %i.wi, align 8, !tbaa !370 ; 2 uses
  %.not307 = icmp eq ptr %i.wj, null
  br i1 %.not307, label %_ZN6hermes2vm7Runtime19MarkRootsPhaseTimerD2Ev.exit207, label %bb.e

bb.e:                                             ; preds = %_ZN6hermes2vm7Runtime19MarkRootsPhaseTimerD2Ev.exit204
  tail call void @_ZN6hermes2vm16SamplingProfiler9markRootsERNS0_12RootAcceptorE(ptr noundef nonnull align 8 dereferenceable(264) %i.wj, ptr noundef nonnull align 8 dereferenceable(8) %1) #29
  br label %_ZN6hermes2vm7Runtime19MarkRootsPhaseTimerD2Ev.exit207

_ZN6hermes2vm7Runtime19MarkRootsPhaseTimerD2Ev.exit207: ; preds = %_ZN6hermes2vm7Runtime19MarkRootsPhaseTimerD2Ev.exit204, %bb.e
  %i.wk = load ptr, ptr %1, align 8, !tbaa !47
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 24
  %i.wm = load ptr, ptr %i.wl, align 8
  tail call void %i.wm(ptr noundef nonnull align 8 dereferenceable(8) %1) #29
  %i.wn = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #29
  %i.wo = sub nsw i64 %i.wn, %i.we
  %i.wp = sitofp i64 %i.wo to double
  %i.wq = fdiv double %i.wp, 1.000000e+09
  %i.wr = getelementptr inbounds nuw i8, ptr %0, i64 9200 ; 2 uses
  %i.ws = load double, ptr %i.wr, align 8, !tbaa !414
  %i.wt = fadd double %i.ws, %i.wq
  store double %i.wt, ptr %i.wr, align 8, !tbaa !414
  %i.wu = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #29
  %i.wv = load ptr, ptr %1, align 8, !tbaa !47
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 16
  %i.wx = load ptr, ptr %i.ww, align 8
  tail call void %i.wx(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 15) #29
  %i.wy = getelementptr inbounds nuw i8, ptr %0, i64 9736
  %i.wz = load ptr, ptr %i.wy, align 8, !tbaa !346 ; 2 uses
  %.not308 = icmp eq ptr %i.wz, null
  br i1 %.not308, label %_ZN6hermes2vm7Runtime19MarkRootsPhaseTimerD2Ev.exit210, label %bb.f

bb.f:                                             ; preds = %_ZN6hermes2vm7Runtime19MarkRootsPhaseTimerD2Ev.exit207
  tail call void @_ZN6hermes2vm20CodeCoverageProfiler9markRootsERNS0_12RootAcceptorE(ptr noundef nonnull align 8 dereferenceable(97) %i.wz, ptr noundef nonnull align 8 dereferenceable(8) %1) #29
  br label %_ZN6hermes2vm7Runtime19MarkRootsPhaseTimerD2Ev.exit210

_ZN6hermes2vm7Runtime19MarkRootsPhaseTimerD2Ev.exit210: ; preds = %_ZN6hermes2vm7Runtime19MarkRootsPhaseTimerD2Ev.exit207, %bb.f
  %i.xa = load ptr, ptr %1, align 8, !tbaa !47
  %i.xb = getelementptr inbounds nuw i8, ptr %i.xa, i64 24
  %i.xc = load ptr, ptr %i.xb, align 8
  tail call void %i.xc(ptr noundef nonnull align 8 dereferenceable(8) %1) #29
  %i.xd = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #29
  %i.xe = sub nsw i64 %i.xd, %i.wu
  %i.xf = sitofp i64 %i.xe to double
  %i.xg = fdiv double %i.xf, 1.000000e+09
  %i.xh = getelementptr inbounds nuw i8, ptr %0, i64 9208 ; 2 uses
  %i.xi = load double, ptr %i.xh, align 8, !tbaa !414
  %i.xj = fadd double %i.xi, %i.xg
  store double %i.xj, ptr %i.xh, align 8, !tbaa !414
  %i.xk = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #29
  %i.xl = getelementptr inbounds nuw i8, ptr %0, i64 9016
  %i.xm = load ptr, ptr %i.xl, align 8, !tbaa !696 ; 2 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %0, i64 9024
  %i.xo = load ptr, ptr %i.xn, align 8, !tbaa !696 ; 2 uses
  %.not309333 = icmp eq ptr %i.xm, %i.xo
  br i1 %.not309333, label %._crit_edge, label %.lr.ph335

._crit_edge:                                      ; preds = %.lr.ph335, %_ZN6hermes2vm7Runtime19MarkRootsPhaseTimerD2Ev.exit210
  %i.xp = load ptr, ptr %1, align 8, !tbaa !47
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 16
  %i.xr = load ptr, ptr %i.xq, align 8
  tail call void %i.xr(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 16) #29
  %i.xs = getelementptr inbounds nuw i8, ptr %0, i64 8968
  %i.xt = load ptr, ptr %i.xs, align 8, !tbaa !697 ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %0, i64 8976
  %i.xv = load ptr, ptr %i.xu, align 8, !tbaa !697 ; 2 uses
  %.not310336 = icmp eq ptr %i.xt, %i.xv
  br i1 %.not310336, label %._crit_edge340, label %.lr.ph339

.lr.ph339:                                        ; preds = %._crit_edge
  %i.xw = getelementptr inbounds nuw i8, ptr %0, i64 856
  br label %bb.g

.lr.ph335:                                        ; preds = %_ZN6hermes2vm7Runtime19MarkRootsPhaseTimerD2Ev.exit210, %.lr.ph335
  %.sroa.0222.0334 = phi ptr [ %i.ya, %.lr.ph335 ], [ %i.xm, %_ZN6hermes2vm7Runtime19MarkRootsPhaseTimerD2Ev.exit210 ] ; 2 uses
  %i.xx = load ptr, ptr %1, align 8, !tbaa !47
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 160
  %i.xz = load ptr, ptr %i.xy, align 8
  tail call void %i.xz(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0222.0334) #29
  %i.ya = getelementptr inbounds nuw i8, ptr %.sroa.0222.0334, i64 32 ; 2 uses
  %.not309 = icmp eq ptr %i.ya, %i.xo
  br i1 %.not309, label %._crit_edge, label %.lr.ph335

._crit_edge340:                                   ; preds = %_ZNKSt8functionIFvPN6hermes2vm7HadesGCERNS1_12RootAcceptorEEEclES3_S5_.exit, %._crit_edge
  %i.yb = getelementptr inbounds nuw i8, ptr %0, i64 9040
  %i.yc = load ptr, ptr %i.yb, align 8, !tbaa !696 ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %0, i64 9048
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !696 ; 2 uses
  %.not311341 = icmp eq ptr %i.yc, %i.ye
  br i1 %.not311341, label %_ZN6hermes2vm7Runtime19MarkRootsPhaseTimerD2Ev.exit213, label %.lr.ph344

bb.g:                                             ; preds = %.lr.ph339, %_ZNKSt8functionIFvPN6hermes2vm7HadesGCERNS1_12RootAcceptorEEEclES3_S5_.exit
  %.sroa.0218.0337 = phi ptr [ %i.xt, %.lr.ph339 ], [ %i.yj, %_ZNKSt8functionIFvPN6hermes2vm7HadesGCERNS1_12RootAcceptorEEEclES3_S5_.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.xw, ptr %i.a, align 8, !tbaa !417
  %i.yf = getelementptr inbounds nuw i8, ptr %.sroa.0218.0337, i64 16
  %i.yg = load ptr, ptr %i.yf, align 8, !tbaa !35
  %.not.i.i = icmp eq ptr %i.yg, null
  br i1 %.not.i.i, label %bb.h, label %_ZNKSt8functionIFvPN6hermes2vm7HadesGCERNS1_12RootAcceptorEEEclES3_S5_.exit

bb.h:                                             ; preds = %bb.g
  call void @_ZSt25__throw_bad_function_callv() #32
  unreachable

_ZNKSt8functionIFvPN6hermes2vm7HadesGCERNS1_12RootAcceptorEEEclES3_S5_.exit: ; preds = %bb.g
  %i.yh = getelementptr inbounds nuw i8, ptr %.sroa.0218.0337, i64 24
  %i.yi = load ptr, ptr %i.yh, align 8, !tbaa !699
  call void %i.yi(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0218.0337, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %1) #29, !inline_history !693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.yj = getelementptr inbounds nuw i8, ptr %.sroa.0218.0337, i64 32 ; 2 uses
  %.not310 = icmp eq ptr %i.yj, %i.xv
  br i1 %.not310, label %._crit_edge340, label %bb.g

_ZN6hermes2vm7Runtime19MarkRootsPhaseTimerD2Ev.exit213: ; preds = %.lr.ph344, %._crit_edge340
  %i.yk = load ptr, ptr %1, align 8, !tbaa !47
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yk, i64 24
  %i.ym = load ptr, ptr %i.yl, align 8
  call void %i.ym(ptr noundef nonnull align 8 dereferenceable(8) %1) #29
  %i.yn = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #29 ; 2 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %0, i64 9216 ; 2 uses
  %.sroa.0.0.copyload.i2.i3.i212 = load i64, ptr %i.c, align 8, !tbaa !29
  %i.yp = sub nsw i64 %i.yn, %i.xk
  %3 = sitofp i64 %i.yp to double
  %4 = sub nsw i64 %i.yn, %.sroa.0.0.copyload.i2.i3.i212
  %i.yq = sitofp i64 %4 to double
  %i.yr = insertelement <2 x double> poison, double %3, i64 0
  %i.ys = insertelement <2 x double> %i.yr, double %i.yq, i64 1
  %i.yt = fdiv <2 x double> %i.ys, splat (double 1.000000e+09)
  %i.yu = load <2 x double>, ptr %i.yo, align 8, !tbaa !414
  %i.yv = fadd <2 x double> %i.yu, %i.yt
  store <2 x double> %i.yv, ptr %i.yo, align 8, !tbaa !414
  ret void

.lr.ph344:                                        ; preds = %._crit_edge340, %.lr.ph344
  %.sroa.0214.0342 = phi ptr [ %i.yz, %.lr.ph344 ], [ %i.yc, %._crit_edge340 ] ; 2 uses
  %i.yw = load ptr, ptr %1, align 8, !tbaa !47
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 160
  %i.yy = load ptr, ptr %i.yx, align 8
  call void %i.yy(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0214.0342) #29
  %i.yz = getelementptr inbounds nuw i8, ptr %.sroa.0214.0342, i64 32 ; 2 uses
  %.not311 = icmp eq ptr %i.yz, %i.ye
  br i1 %.not311, label %_ZN6hermes2vm7Runtime19MarkRootsPhaseTimerD2Ev.exit213, label %.lr.ph344
}

declare void @_ZN6hermes2vm13RuntimeModule9markRootsERNS0_12RootAcceptorEb(ptr noundef nonnull align 8 dereferenceable(192), ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN6hermes2vm15IdentifierTable15markIdentifiersERNS0_12RootAcceptorERNS0_7HadesGCE(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8112)) local_unnamed_addr #2

declare void @_ZN6hermes2vm15HandleRootOwner12markGCScopesERNS0_12RootAcceptorE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN6hermes2vm14SymbolRegistry9markRootsERNS0_12RootAcceptorE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN6hermes2vm16SamplingProfiler9markRootsERNS0_12RootAcceptorE(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN6hermes2vm20CodeCoverageProfiler9markRootsERNS0_12RootAcceptorE(ptr noundef nonnull align 8 dereferenceable(97), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @_ZThn16_N6hermes2vm7Runtime9markRootsERNS0_28RootAndSlotAcceptorWithNamesEb(ptr noundef initializes((9064, 9072)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6hermes2vm7Runtime9markRootsERNS0_28RootAndSlotAcceptorWithNamesEb(ptr noundef nonnull align 8 dereferenceable(9816) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm7Runtime13markWeakRootsERNS0_16WeakRootAcceptorEb(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #29
  %i.c = load ptr, ptr %1, align 8, !tbaa !47
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 11) #29
  tail call void @_ZN6hermes2vm7Runtime29markDomainRefInRuntimeModulesERNS0_16WeakRootAcceptorE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br i1 %2, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.a
  %.0.ptr = getelementptr inbounds nuw i8, ptr %0, i64 9560
  %i.f = load ptr, ptr %1, align 8, !tbaa !47
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %.0.ptr) #29
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 9392 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 9400
  %.sroa.025.033 = load ptr, ptr %i.j, align 8, !tbaa !329 ; 2 uses
  %.not3034 = icmp eq ptr %.sroa.025.033, %i.i
  br i1 %.not3034, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.preheader, %.lr.ph
  %.sroa.025.035 = phi ptr [ %.sroa.025.0, %.lr.ph ], [ %.sroa.025.033, %.preheader.preheader ] ; 2 uses
  tail call void @_ZN6hermes2vm13RuntimeModule22markLongLivedWeakRootsERNS0_16WeakRootAcceptorE(ptr noundef nonnull align 8 dereferenceable(192) %.sroa.025.035, ptr noundef nonnull align 8 dereferenceable(8) %1) #29
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.025.035, i64 8
  %.sroa.025.0 = load ptr, ptr %i.k, align 8, !tbaa !329 ; 2 uses
  %.not30 = icmp eq ptr %.sroa.025.0, %i.i
  br i1 %.not30, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %.preheader.preheader, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8992
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !701  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 9000
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !701  ; 2 uses
  %.not3136 = icmp eq ptr %i.m, %i.o
  br i1 %.not3136, label %_ZN6hermes2vm7Runtime19MarkRootsPhaseTimerD2Ev.exit, label %.lr.ph38

.lr.ph38:                                         ; preds = %.loopexit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 856
  br label %bb.b

_ZN6hermes2vm7Runtime19MarkRootsPhaseTimerD2Ev.exit: ; preds = %_ZNKSt8functionIFvPN6hermes2vm7HadesGCERNS1_16WeakRootAcceptorEEEclES3_S5_.exit, %.loopexit
  %i.q = load ptr, ptr %1, align 8, !tbaa !47
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(8) %1) #29
  %i.t = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #29
  %i.u = sub nsw i64 %i.t, %i.b
  %i.v = sitofp i64 %i.u to double
  %i.w = fdiv double %i.v, 1.000000e+09
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 9176 ; 2 uses
  %i.y = load double, ptr %i.x, align 8, !tbaa !414
  %i.z = fadd double %i.y, %i.w
  store double %i.z, ptr %i.x, align 8, !tbaa !414
  ret void

bb.b:                                             ; preds = %.lr.ph38, %_ZNKSt8functionIFvPN6hermes2vm7HadesGCERNS1_16WeakRootAcceptorEEEclES3_S5_.exit
  %.sroa.021.037 = phi ptr [ %i.m, %.lr.ph38 ], [ %i.ae, %_ZNKSt8functionIFvPN6hermes2vm7HadesGCERNS1_16WeakRootAcceptorEEEclES3_S5_.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.p, ptr %i.a, align 8, !tbaa !417
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.021.037, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !35
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %bb.c, label %_ZNKSt8functionIFvPN6hermes2vm7HadesGCERNS1_16WeakRootAcceptorEEEclES3_S5_.exit

bb.c:                                             ; preds = %bb.b
  call void @_ZSt25__throw_bad_function_callv() #32
  unreachable

_ZNKSt8functionIFvPN6hermes2vm7HadesGCERNS1_16WeakRootAcceptorEEEclES3_S5_.exit: ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.021.037, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !703
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.021.037, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %1) #29, !inline_history !700
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.021.037, i64 32 ; 2 uses
  %.not31 = icmp eq ptr %i.ae, %i.o
  br i1 %.not31, label %_ZN6hermes2vm7Runtime19MarkRootsPhaseTimerD2Ev.exit, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm7Runtime29markDomainRefInRuntimeModulesERNS0_16WeakRootAcceptorE(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::vector.293", align 8   ; 8 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9392 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9400
  %.sroa.015.019 = load ptr, ptr %i.c, align 8, !tbaa !329 ; 2 uses
  %.not20 = icmp eq ptr %.sroa.015.019, %i.b
  br i1 %.not20, label %_ZNSt6vectorIPN6hermes2vm13RuntimeModuleESaIS3_EED2Ev.exit, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c
  %.pre = load ptr, ptr %2, align 8, !tbaa !705   ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre27 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !705 ; 2 uses
  %.not1822 = icmp eq ptr %.pre, %.pre27
  br i1 %.not1822, label %._crit_edge26, label %.lr.ph25

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.015.021 = phi ptr [ %.sroa.015.0, %bb.c ], [ %.sroa.015.019, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.015.021, i64 48 ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.d) #29, !inline_history !704
  %i.h = load i32, ptr %i.d, align 4, !tbaa !67
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !54

bb.b:                                             ; preds = %.lr.ph
  call void @_ZN6hermes2vm13RuntimeModule21prepareForDestructionEv(ptr noundef nonnull align 8 dereferenceable(192) %.sroa.015.021) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store ptr %.sroa.015.021, ptr %i.a, align 8, !tbaa !419
  call void @_ZNSt6vectorIPN6hermes2vm13RuntimeModuleESaIS3_EE9push_backEOS3_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.015.021, i64 8
  %.sroa.015.0 = load ptr, ptr %i.i, align 8, !tbaa !329 ; 2 uses
  %.not = icmp eq ptr %.sroa.015.0, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge26.loopexit:                           ; preds = %bb.f
  %.pre28 = load ptr, ptr %2, align 8, !tbaa !421
  br label %._crit_edge26

._crit_edge26:                                    ; preds = %._crit_edge26.loopexit, %._crit_edge
  %i.j = phi ptr [ %.pre28, %._crit_edge26.loopexit ], [ %.pre, %._crit_edge ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN6hermes2vm13RuntimeModuleESaIS3_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge26
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !422
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #30
  br label %_ZNSt6vectorIPN6hermes2vm13RuntimeModuleESaIS3_EED2Ev.exit

_ZNSt6vectorIPN6hermes2vm13RuntimeModuleESaIS3_EED2Ev.exit: ; preds = %bb.a, %._crit_edge26, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void

.lr.ph25:                                         ; preds = %._crit_edge, %bb.f
  %.sroa.011.023 = phi ptr [ %i.r, %bb.f ], [ %.pre, %._crit_edge ] ; 2 uses
  %i.p = load ptr, ptr %.sroa.011.023, align 8, !tbaa !419 ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph25
  call void @_ZN6hermes2vm13RuntimeModuleD1Ev(ptr noundef nonnull align 8 dereferenceable(192) %i.p) #29
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef 192) #30
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph25
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.011.023, i64 8 ; 2 uses
  %.not18 = icmp eq ptr %i.r, %.pre27
end_hunk_0
