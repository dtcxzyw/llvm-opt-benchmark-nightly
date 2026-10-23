Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/splines?download=true
inline.NumInlined: 1094
inline.NumDeleted: 285
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN8interpol19smooth_cubic_splineIfE4initEv:bb.a
  store float %i.sc, ptr %i.se, align 4, !tbaa !35
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0191.1, i64 %i.rs
  %i.sg = load float, ptr %i.sf, align 4, !tbaa !34
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0214.2, i64 %i.rs
  %i.si = load float, ptr %i.sh, align 4, !tbaa !34 ; 3 uses
  %i.sj = fdiv reassoc nsz arcp contract afn float %i.sg, %i.si
  %i.sk = fmul reassoc nsz arcp contract afn float %i.si, f0x3E2AAAAB
  %i.sl = add nuw i64 %.0337, 2                   ; 3 uses
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %i.pp, i64 %i.sl
  %i.sn = load float, ptr %i.sm, align 4, !tbaa !34
  %i.so = getelementptr inbounds nuw [4 x i8], ptr %i.pp, i64 %i.rs
  %i.sp = load float, ptr %i.so, align 4, !tbaa !34 ; 2 uses
  %i.sq = fsub reassoc nsz arcp contract afn float %i.sn, %i.sp
  %i.sr = fmul reassoc nsz arcp contract afn float %i.sk, %i.sq
  %i.ss = fsub reassoc nsz arcp contract afn float %i.sj, %i.sr ; 2 uses
  %i.st = fmul reassoc nsz arcp contract afn float %i.si, 5.000000e-01
  %i.su = fmul reassoc nsz arcp contract afn float %i.st, %i.sp
  %i.sv = fsub reassoc nsz arcp contract afn float %i.ss, %i.su
  %i.sw = getelementptr inbounds nuw [12 x i8], ptr %i.pq, i64 %i.rs
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 8
  store float %i.sv, ptr %i.sx, align 4, !tbaa !35
  %exitcond370.not.1 = icmp eq i64 %i.sl, %i.m
  br i1 %exitcond370.not.1, label %._crit_edge339, label %scalar.ph645, !llvm.loop !139

.thread420:                                       ; preds = %._crit_edge339
  %i.sy = getelementptr [4 x i8], ptr %.sroa.0214.2, i64 %i.g
  %i.sz = getelementptr i8, ptr %i.sy, i64 -8
  %i.ta = load float, ptr %i.sz, align 4, !tbaa !34
  %i.tb = load ptr, ptr %2, align 8, !tbaa !72    ; 2 uses
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.tb, i64 %i.m
  %i.td = load float, ptr %i.tc, align 4, !tbaa !34
  %i.te = fmul reassoc nsz arcp contract afn float %i.ta, 5.000000e-01
  %i.tf = fmul reassoc nsz arcp contract afn float %i.te, %i.td
  %i.tg = fadd reassoc nsz arcp contract afn float %i.tf, %.076.lcssa
  %i.th = load ptr, ptr %0, align 8, !tbaa !15
  %i.ti = getelementptr inbounds nuw [12 x i8], ptr %i.th, i64 %i.m
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 8
  store float %i.tg, ptr %i.tj, align 4, !tbaa !35
  br label %bb.az

bb.ay:                                            ; preds = %._crit_edge339
  %i.tk = load ptr, ptr %0, align 8, !tbaa !15
  %i.tl = getelementptr inbounds nuw [12 x i8], ptr %i.tk, i64 %i.m
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 8
  store float %.076.lcssa, ptr %i.tm, align 4, !tbaa !35
  %.pre374 = load ptr, ptr %2, align 8, !tbaa !72 ; 2 uses
  %.not.i.i.i171 = icmp eq ptr %.pre374, null
  br i1 %.not.i.i.i171, label %_ZNSt6vectorIfSaIfEED2Ev.exit172, label %bb.az

bb.az:                                            ; preds = %.thread420, %bb.ay
  %i.tn = phi ptr [ %i.tb, %.thread420 ], [ %.pre374, %bb.ay ] ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !140
  %i.tq = ptrtoint ptr %i.tp to i64
  %i.tr = ptrtoint ptr %i.tn to i64
  %i.ts = sub i64 %i.tq, %i.tr
  call void @_ZdlPvm(ptr noundef nonnull %i.tn, i64 noundef %i.ts) #19
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit172

_ZNSt6vectorIfSaIfEED2Ev.exit172:                 ; preds = %bb.ay, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.tt = load ptr, ptr %i.dp, align 8, !tbaa !72 ; 3 uses
  %.not.i.i.i.i173 = icmp eq ptr %i.tt, null
  br i1 %.not.i.i.i.i173, label %_ZN8interpol19smooth_cubic_splineIfE6matrixD2Ev.exit, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit172
  %i.tu = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !140
  %i.tw = ptrtoint ptr %i.tv to i64
  %i.tx = ptrtoint ptr %i.tt to i64
  %i.ty = sub i64 %i.tw, %i.tx
  call void @_ZdlPvm(ptr noundef nonnull %i.tt, i64 noundef %i.ty) #19
  br label %_ZN8interpol19smooth_cubic_splineIfE6matrixD2Ev.exit

_ZN8interpol19smooth_cubic_splineIfE6matrixD2Ev.exit: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit172, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  %.not.i.i.i174 = icmp eq ptr %.sroa.0191.1, null
  br i1 %.not.i.i.i174, label %_ZNSt6vectorIfSaIfEED2Ev.exit175, label %bb.bb

bb.bb:                                            ; preds = %_ZN8interpol19smooth_cubic_splineIfE6matrixD2Ev.exit
  %i.tz = ptrtoint ptr %.sroa.29.1 to i64
  %i.ua = ptrtoint ptr %.sroa.0191.1 to i64
  %i.ub = sub i64 %i.tz, %i.ua
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0191.1, i64 noundef %i.ub) #19
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit175

_ZNSt6vectorIfSaIfEED2Ev.exit175:                 ; preds = %_ZN8interpol19smooth_cubic_splineIfE6matrixD2Ev.exit, %bb.bb
  %.not.i.i.i176 = icmp eq ptr %.sroa.0214.2, null
  br i1 %.not.i.i.i176, label %_ZNSt6vectorIfSaIfEED2Ev.exit177, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit175
  %i.uc = ptrtoint ptr %.sroa.45.2 to i64
  %i.ud = ptrtoint ptr %.sroa.0214.2 to i64
  %i.ue = sub i64 %i.uc, %i.ud
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0214.2, i64 noundef %i.ue) #19
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit177

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.aq, %bb.ap, %bb.ai
  %.pn87 = phi { ptr, i32 } [ %i.ii, %bb.ai ], [ %i.ly, %bb.ap ], [ %i.ly, %bb.aq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.uf = load ptr, ptr %i.dp, align 8, !tbaa !72 ; 3 uses
  %.not.i.i.i.i178 = icmp eq ptr %i.uf, null
  br i1 %.not.i.i.i.i178, label %_ZN8interpol19smooth_cubic_splineIfE6matrixD2Ev.exit179, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.ug = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !140
  %i.ui = ptrtoint ptr %i.uh to i64
  %i.uj = ptrtoint ptr %i.uf to i64
  %i.uk = sub i64 %i.ui, %i.uj
  call void @_ZdlPvm(ptr noundef nonnull %i.uf, i64 noundef %i.uk) #19
  br label %_ZN8interpol19smooth_cubic_splineIfE6matrixD2Ev.exit179

_ZN8interpol19smooth_cubic_splineIfE6matrixD2Ev.exit179: ; preds = %bb.bd, %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.ah
  %.pn87.pn = phi { ptr, i32 } [ %i.ih, %bb.ah ], [ %.pn87, %_ZNSt6vectorIfSaIfEED2Ev.exit ], [ %.pn87, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %bb.be

bb.be:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit.split-lp277.loopexit.split-lp, %bb.ac, %_ZN8interpol19smooth_cubic_splineIfE6matrixD2Ev.exit179
  %.sroa.45.3 = phi ptr [ %.sroa.45.2, %_ZN8interpol19smooth_cubic_splineIfE6matrixD2Ev.exit179 ], [ %.sroa.45.6, %bb.ac ], [ %.sroa.45.5, %.loopexit.split-lp277.loopexit.split-lp ], [ %.sroa.45.0310, %.loopexit.split-lp ], [ %.sroa.45.0320, %.loopexit ] ; 2 uses
  %.sroa.0191.2 = phi ptr [ %.sroa.0191.1, %_ZN8interpol19smooth_cubic_splineIfE6matrixD2Ev.exit179 ], [ %.sroa.0191.0.lcssa, %bb.ac ], [ %.sroa.0191.0321, %.loopexit.split-lp277.loopexit.split-lp ], [ %.sroa.0191.0303, %.loopexit.split-lp ], [ %.sroa.0191.0321, %.loopexit ] ; 3 uses
  %.sroa.29.2 = phi ptr [ %.sroa.29.1, %_ZN8interpol19smooth_cubic_splineIfE6matrixD2Ev.exit179 ], [ %.sroa.20.0.lcssa, %bb.ac ], [ %.sroa.29.0323, %.loopexit.split-lp277.loopexit.split-lp ], [ %.sroa.29.0292, %.loopexit.split-lp ], [ %.sroa.29.0323, %.loopexit ]
  %.sroa.0214.3 = phi ptr [ %.sroa.0214.2, %_ZN8interpol19smooth_cubic_splineIfE6matrixD2Ev.exit179 ], [ %.sroa.0214.6, %bb.ac ], [ %.sroa.0214.5, %.loopexit.split-lp277.loopexit.split-lp ], [ %.sroa.0214.0286, %.loopexit.split-lp ], [ %.sroa.0214.0324, %.loopexit ] ; 2 uses
  %.pn90.pn = phi { ptr, i32 } [ %.pn87.pn, %_ZN8interpol19smooth_cubic_splineIfE6matrixD2Ev.exit179 ], [ %i.dk, %bb.ac ], [ %lpad.loopexit.split-lp681, %.loopexit.split-lp277.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ] ; 2 uses
  %.not.i.i.i180 = icmp eq ptr %.sroa.0191.2, null
  br i1 %.not.i.i.i180, label %_ZNSt6vectorIfSaIfEED2Ev.exit181, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ul = ptrtoint ptr %.sroa.29.2 to i64
  %i.um = ptrtoint ptr %.sroa.0191.2 to i64
  %i.un = sub i64 %i.ul, %i.um
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0191.2, i64 noundef %i.un) #19
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit181

_ZNSt6vectorIfSaIfEED2Ev.exit181:                 ; preds = %.thread, %bb.be, %bb.bf
  %.pn90.pn269 = phi { ptr, i32 } [ %i.y, %.thread ], [ %.pn90.pn, %bb.be ], [ %.pn90.pn, %bb.bf ]
  %.sroa.0214.3268 = phi ptr [ %.sroa.0214.1, %.thread ], [ %.sroa.0214.3, %bb.be ], [ %.sroa.0214.3, %bb.bf ] ; 3 uses
  %.sroa.45.3267 = phi ptr [ %.sroa.45.1, %.thread ], [ %.sroa.45.3, %bb.be ], [ %.sroa.45.3, %bb.bf ]
  %.not.i.i.i182 = icmp eq ptr %.sroa.0214.3268, null
  br i1 %.not.i.i.i182, label %_ZNSt6vectorIfSaIfEED2Ev.exit183, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit181
  %i.uo = ptrtoint ptr %.sroa.45.3267 to i64
  %i.up = ptrtoint ptr %.sroa.0214.3268 to i64
  %i.uq = sub i64 %i.uo, %i.up
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0214.3268, i64 noundef %i.uq) #19
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit183

_ZNSt6vectorIfSaIfEED2Ev.exit183:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit181, %bb.bg
  resume { ptr, i32 } %.pn90.pn269

_ZNSt6vectorIfSaIfEED2Ev.exit177:                 ; preds = %bb.bc, %_ZNSt6vectorIfSaIfEED2Ev.exit175, %bb.b
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #6

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt16invalid_argumentD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #7

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_SH_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #2 comdat {
bb.a:
  %.fr29 = freeze ptr %1                          ; 3 uses
  %.fr28 = freeze ptr %0                          ; 36 uses
  %i.a = ptrtoint ptr %.fr28 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr29 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 192
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_SH_SH_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.fr28, i64 12 ; 6 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph50

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEESH_SH_SH_T0_.exit
  %i.g = icmp eq i64 %i.bt, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph50, !llvm.loop !156

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr46.i27.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.cn, %bb.b ]
  %storemerge25.lcssa = phi ptr [ %.fr29, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ]
  %i.h = udiv exact i64 %.fr46.i27.lcssa, 12      ; 3 uses
  %i.i = add nsw i64 %i.h, -2                     ; 2 uses
  %i.j = lshr i64 %i.i, 1                         ; 3 uses
  %i.k = add nsw i64 %i.h, -1
  %i.l = lshr i64 %i.k, 1                         ; 2 uses
  %i.m = and i64 %i.h, 1
  %i.n = icmp eq i64 %i.m, 0
  %3 = or disjoint i64 %i.i, 1                    ; 2 uses
  %i.o = getelementptr inbounds nuw [12 x i8], ptr %.fr28, i64 %3
  %i.p = getelementptr inbounds nuw [12 x i8], ptr %.fr28, i64 %i.j
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_T0_SM_T1_T2_.exit.i.i, %._crit_edge
  %.012.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.al, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_T0_SM_T1_T2_.exit.i.i ] ; 8 uses
  %i.q = getelementptr inbounds [12 x i8], ptr %.fr28, i64 %.012.i.i ; 2 uses
  %.sroa.05.0.copyload.i.i = load <2 x float>, ptr %i.q, align 4, !tbaa !34 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.4.0.copyload.i.i = load float, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !34
  %i.r = icmp slt i64 %.012.i.i, %i.l
  br i1 %i.r, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.041.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.012.i.i, %bb.c ] ; 2 uses
  %i.s = shl i64 %.041.i.i.i, 1                   ; 2 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [12 x i8], ptr %.fr28, i64 %i.t
  %i.v = or disjoint i64 %i.s, 1                  ; 2 uses
  %i.w = getelementptr inbounds [12 x i8], ptr %.fr28, i64 %i.v
  %i.x = load float, ptr %i.u, align 4, !tbaa !32
  %i.y = load float, ptr %i.w, align 4, !tbaa !32
  %i.z = fcmp reassoc nsz arcp contract afn olt float %i.x, %i.y
  %spec.select.i.i.i = select i1 %i.z, i64 %i.v, i64 %i.t ; 4 uses
  %i.aa = getelementptr inbounds [12 x i8], ptr %.fr28, i64 %spec.select.i.i.i
  %i.ab = getelementptr inbounds [12 x i8], ptr %.fr28, i64 %.041.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ab, ptr noundef nonnull align 4 dereferenceable(12) %i.aa, i64 12, i1 false), !tbaa.struct !62
  %i.ac = icmp slt i64 %spec.select.i.i.i, %i.l
  br i1 %i.ac, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !157

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ %.012.i.i, %bb.c ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.ad = icmp eq i64 %.0.lcssa.i.i.i, %i.j
  %or.cond.i.i = select i1 %i.n, i1 %i.ad, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.p, ptr noundef nonnull align 4 dereferenceable(12) %i.o, i64 12, i1 false), !tbaa.struct !62
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %3, %bb.d ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ae = icmp sgt i64 %.1.i.i.i, %.012.i.i
  br i1 %i.ae, label %.lr.ph.i.i.i.i17, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_T0_SM_T1_T2_.exit.i.i

.lr.ph.i.i.i.i17:                                 ; preds = %bb.e
  %.sroa.013.0.vec.extract.i.i.i.i = extractelement <2 x float> %.sroa.05.0.copyload.i.i, i64 0
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i17
  %.020.i.i.i.i = phi i64 [ %.1.i.i.i, %.lr.ph.i.i.i.i17 ], [ %.01021.i.i.i.i, %bb.g ] ; 3 uses
  %.01021.in.i.i.i.i = add nsw i64 %.020.i.i.i.i, -1
  %.01021.i.i.i.i = sdiv i64 %.01021.in.i.i.i.i, 2 ; 4 uses
  %i.af = getelementptr inbounds nuw [12 x i8], ptr %.fr28, i64 %.01021.i.i.i.i ; 2 uses
  %i.ag = load float, ptr %i.af, align 4, !tbaa !32
  %i.ah = fcmp reassoc nsz arcp contract afn olt float %i.ag, %.sroa.013.0.vec.extract.i.i.i.i
  br i1 %i.ah, label %bb.g, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_T0_SM_T1_T2_.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw [12 x i8], ptr %.fr28, i64 %.020.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ai, ptr noundef nonnull align 4 dereferenceable(12) %i.af, i64 12, i1 false), !tbaa.struct !62
  %i.aj = icmp sgt i64 %.01021.i.i.i.i, %.012.i.i
  br i1 %i.aj, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_T0_SM_T1_T2_.exit.i.i, !llvm.loop !158

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_T0_SM_T1_T2_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %.0.lcssa.i.i.i.i16 = phi i64 [ %.1.i.i.i, %bb.e ], [ %.01021.i.i.i.i, %bb.g ], [ %.020.i.i.i.i, %bb.f ]
  %i.ak = getelementptr inbounds nuw [12 x i8], ptr %.fr28, i64 %.0.lcssa.i.i.i.i16 ; 2 uses
  store <2 x float> %.sroa.05.0.copyload.i.i, ptr %i.ak, align 4, !tbaa !34
  %.sroa.3.0..sroa.0.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store float %.sroa.4.0.copyload.i.i, ptr %.sroa.3.0..sroa.0.0..sroa_idx.i.i.i.i, align 4, !tbaa !34
  %.not.i.i = icmp eq i64 %.012.i.i, 0
  %i.al = add nsw i64 %.012.i.i, -1
  br i1 %.not.i.i, label %.lr.ph.i.i, label %bb.c, !llvm.loop !159

.lr.ph.i.i:                                       ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_T0_SM_T1_T2_.exit.i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_SH_SH_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.am, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_SH_SH_RT0_.exit.i.i ], [ %storemerge25.lcssa, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_T0_SM_T1_T2_.exit.i.i ] ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -12 ; 4 uses
  %.sroa.05.0.copyload.i.i.i = load <2 x float>, ptr %i.am, align 4, !tbaa !34 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -4
  %.sroa.4.0.copyload.i.i.i = load float, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4, !tbaa !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.am, ptr noundef nonnull align 4 dereferenceable(12) %.fr28, i64 12, i1 false), !tbaa.struct !62
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %i.an, %i.a                     ; 3 uses
  %i.ap = sdiv exact i64 %i.ao, 12                ; 3 uses
  %i.aq = add nsw i64 %i.ap, -1
  %i.ar = sdiv i64 %i.aq, 2
  %i.as = icmp sgt i64 %i.ao, 24
  br i1 %i.as, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.041.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.at = shl i64 %.041.i.i.i.i, 1                ; 2 uses
  %i.au = add i64 %i.at, 2                        ; 2 uses
  %i.av = getelementptr inbounds [12 x i8], ptr %.fr28, i64 %i.au
  %i.aw = or disjoint i64 %i.at, 1                ; 2 uses
  %i.ax = getelementptr inbounds [12 x i8], ptr %.fr28, i64 %i.aw
  %i.ay = load float, ptr %i.av, align 4, !tbaa !32
  %i.az = load float, ptr %i.ax, align 4, !tbaa !32
  %i.ba = fcmp reassoc nsz arcp contract afn olt float %i.ay, %i.az
  %spec.select.i.i.i.i = select i1 %i.ba, i64 %i.aw, i64 %i.au ; 4 uses
  %i.bb = getelementptr inbounds [12 x i8], ptr %.fr28, i64 %spec.select.i.i.i.i
  %i.bc = getelementptr inbounds [12 x i8], ptr %.fr28, i64 %.041.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bc, ptr noundef nonnull align 4 dereferenceable(12) %i.bb, i64 12, i1 false), !tbaa.struct !62
  %i.bd = icmp slt i64 %spec.select.i.i.i.i, %i.ar
  br i1 %i.bd, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !157

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.be = and i64 %i.ap, 1
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bg = add nsw i64 %i.ap, -2
  %i.bh = ashr exact i64 %i.bg, 1
  %i.bi = icmp eq i64 %.0.lcssa.i.i.i.i, %i.bh
  br i1 %i.bi, label %.thread.i.i.i, label %bb.i

.thread.i.i.i:                                    ; preds = %bb.h
  %i.bj = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.bk = or disjoint i64 %i.bj, 1                ; 2 uses
  %i.bl = getelementptr inbounds nuw [12 x i8], ptr %.fr28, i64 %i.bk
  %i.bm = getelementptr inbounds [12 x i8], ptr %.fr28, i64 %.0.lcssa.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bm, ptr noundef nonnull align 4 dereferenceable(12) %i.bl, i64 12, i1 false), !tbaa.struct !62
  br label %.lr.ph.i.i.i.i.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_SH_SH_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %.thread.i.i.i
  %.1.i11.i.i.i = phi i64 [ %i.bk, %.thread.i.i.i ], [ %.0.lcssa.i.i.i.i, %bb.i ]
  %.sroa.013.0.vec.extract.i.i.i.i.i = extractelement <2 x float> %.sroa.05.0.copyload.i.i.i, i64 0
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi i64 [ %.1.i11.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.01021.i.i1213.i.i.i, %bb.k ] ; 3 uses
  %.01021.in.i.i.i.i.i = add nsw i64 %.020.i.i.i.i.i, -1
  %.01021.i.i1213.i.i.i = lshr i64 %.01021.in.i.i.i.i.i, 1 ; 3 uses
  %i.bn = getelementptr inbounds nuw [12 x i8], ptr %.fr28, i64 %.01021.i.i1213.i.i.i ; 2 uses
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !32
  %i.bp = fcmp reassoc nsz arcp contract afn olt float %i.bo, %.sroa.013.0.vec.extract.i.i.i.i.i
  br i1 %i.bp, label %bb.k, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_SH_SH_RT0_.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.bq = getelementptr inbounds [12 x i8], ptr %.fr28, i64 %.020.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bq, ptr noundef nonnull align 4 dereferenceable(12) %i.bn, i64 12, i1 false), !tbaa.struct !62
  %.not14.i.i.i = icmp eq i64 %.01021.i.i1213.i.i.i, 0
  br i1 %.not14.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_SH_SH_RT0_.exit.i.i, label %bb.j, !llvm.loop !158

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_SH_SH_RT0_.exit.i.i: ; preds = %bb.k, %bb.j, %bb.i
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.i ], [ %.020.i.i.i.i.i, %bb.j ], [ 0, %bb.k ]
  %i.br = getelementptr inbounds [12 x i8], ptr %.fr28, i64 %.0.lcssa.i.i.i.i.i ; 2 uses
  store <2 x float> %.sroa.05.0.copyload.i.i.i, ptr %i.br, align 4, !tbaa !34
  %.sroa.3.0..sroa.0.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store float %.sroa.4.0.copyload.i.i.i, ptr %.sroa.3.0..sroa.0.0..sroa_idx.i.i.i.i.i, align 4, !tbaa !34
  %i.bs = icmp sgt i64 %i.ao, 12
  br i1 %i.bs, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_SH_SH_T0_.exit, !llvm.loop !160

.lr.ph50:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2549 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %.fr29, %.lr.ph ] ; 3 uses
  %.02648 = phi i64 [ %i.bt, %bb.b ], [ %2, %.lr.ph ]
  %.fr46.i2747 = phi i64 [ %i.cn, %bb.b ], [ %i.c, %.lr.ph ]
  %i.bt = add nsw i64 %.02648, -1                 ; 3 uses
  %i.bu = udiv i64 %.fr46.i2747, 24
  %i.bv = getelementptr inbounds nuw [12 x i8], ptr %.fr28, i64 %i.bu ; 5 uses
  %i.bw = getelementptr inbounds i8, ptr %storemerge2549, i64 -12 ; 5 uses
  %i.bx = load float, ptr %i.e, align 4, !tbaa !32 ; 3 uses
  %i.by = load float, ptr %i.bv, align 4, !tbaa !32 ; 3 uses
  %i.bz = fcmp reassoc nsz arcp contract afn olt float %i.bx, %i.by
  %i.ca = load float, ptr %i.bw, align 4, !tbaa !32 ; 4 uses
  br i1 %i.bz, label %bb.l, label %bb.q

bb.l:                                             ; preds = %.lr.ph50
  %i.cb = fcmp reassoc nsz arcp contract afn olt float %i.by, %i.ca
  br i1 %i.cb, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.copyload = load <3 x float>, ptr %.fr28, align 4, !tbaa !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.fr28, ptr noundef nonnull align 4 dereferenceable(12) %i.bv, i64 12, i1 false), !tbaa.struct !62
  store <3 x float> %.sroa.0.0.copyload, ptr %i.bv, align 4, !tbaa !34
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_SH_SH_SH_T0_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  %i.cc = fcmp reassoc nsz arcp contract afn olt float %i.bx, %i.ca
  br i1 %i.cc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %.sroa.057.0.copyload = load <3 x float>, ptr %.fr28, align 4, !tbaa !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.fr28, ptr noundef nonnull align 4 dereferenceable(12) %i.bw, i64 12, i1 false), !tbaa.struct !62
  store <3 x float> %.sroa.057.0.copyload, ptr %i.bw, align 4, !tbaa !34
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_SH_SH_SH_T0_.exit.i.preheader

bb.p:                                             ; preds = %bb.n
  %.sroa.059.0.copyload = load <3 x float>, ptr %.fr28, align 4, !tbaa !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.fr28, ptr noundef nonnull align 4 dereferenceable(12) %i.e, i64 12, i1 false), !tbaa.struct !62
  store <3 x float> %.sroa.059.0.copyload, ptr %i.e, align 4, !tbaa !34
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_SH_SH_SH_T0_.exit.i.preheader

bb.q:                                             ; preds = %.lr.ph50
  %i.cd = fcmp reassoc nsz arcp contract afn olt float %i.bx, %i.ca
  br i1 %i.cd, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %.sroa.061.0.copyload = load <3 x float>, ptr %.fr28, align 4, !tbaa !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.fr28, ptr noundef nonnull align 4 dereferenceable(12) %i.e, i64 12, i1 false), !tbaa.struct !62
  store <3 x float> %.sroa.061.0.copyload, ptr %i.e, align 4, !tbaa !34
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_SH_SH_SH_T0_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  %i.ce = fcmp reassoc nsz arcp contract afn olt float %i.by, %i.ca
  br i1 %i.ce, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %.sroa.063.0.copyload = load <3 x float>, ptr %.fr28, align 4, !tbaa !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.fr28, ptr noundef nonnull align 4 dereferenceable(12) %i.bw, i64 12, i1 false), !tbaa.struct !62
  store <3 x float> %.sroa.063.0.copyload, ptr %i.bw, align 4, !tbaa !34
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_SH_SH_SH_T0_.exit.i.preheader

bb.u:                                             ; preds = %bb.s
  %.sroa.065.0.copyload = load <3 x float>, ptr %.fr28, align 4, !tbaa !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.fr28, ptr noundef nonnull align 4 dereferenceable(12) %i.bv, i64 12, i1 false), !tbaa.struct !62
  store <3 x float> %.sroa.065.0.copyload, ptr %i.bv, align 4, !tbaa !34
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_SH_SH_SH_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_SH_SH_SH_T0_.exit.i.preheader: ; preds = %bb.u, %bb.t, %bb.r, %bb.p, %bb.o, %bb.m
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_SH_SH_SH_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_SH_SH_SH_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_SH_SH_SH_T0_.exit.i.preheader, %bb.x
  %.sroa.010.0.i.i = phi ptr [ %i.ci, %bb.x ], [ %i.e, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_SH_SH_SH_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.x ], [ %storemerge2549, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_SH_SH_SH_T0_.exit.i.preheader ]
  %i.cf = load float, ptr %.fr28, align 4, !tbaa !32 ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_SH_SH_SH_T0_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_SH_SH_SH_T0_.exit.i ], [ %i.ci, %bb.v ] ; 9 uses
  %i.cg = load float, ptr %.sroa.010.1.i.i, align 4, !tbaa !32
  %i.ch = fcmp reassoc nsz arcp contract afn olt float %i.cg, %i.cf
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 12 ; 2 uses
  br i1 %i.ch, label %bb.v, label %.preheader.i.i, !llvm.loop !161

.preheader.i.i:                                   ; preds = %bb.v, %.preheader.i.i
end_hunk_0
begin_hunk_1_@_ZN8interpol11spline_baseIfEC2IP16CurveAnchorPointEET_S5_RKNS_6limitsIfEES9_b:bb.a
  %i.aw = phi ptr [ %i.am, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.r, %bb.d ]
  %i.ax = phi ptr [ %i.av, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.s, %bb.d ]
  %i.ay = phi ptr [ %i.ar, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.ab, %bb.d ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.075, i64 8 ; 2 uses
  %.not31 = icmp eq ptr %i.az, %2
  br i1 %.not31, label %.loopexit, label %bb.c, !llvm.loop !214

bb.g:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit49
  %i.ba = phi ptr [ null, %.lr.ph ], [ %i.cg, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit49 ] ; 8 uses
  %i.bb = phi ptr [ null, %.lr.ph ], [ %i.ch, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit49 ] ; 7 uses
  %i.bc = phi ptr [ null, %.lr.ph ], [ %i.ci, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit49 ] ; 6 uses
  %.02573 = phi ptr [ %1, %.lr.ph ], [ %i.cj, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit49 ] ; 3 uses
  %i.bd = load float, ptr %i.b, align 8, !tbaa !31
  %i.be = load float, ptr %.02573, align 4, !tbaa !45 ; 4 uses
  %i.bf = fcmp reassoc nsz arcp contract afn ugt float %i.bd, %i.be
  br i1 %i.bf, label %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit49, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bg = load float, ptr %i.g, align 4, !tbaa !30
  %i.bh = fcmp reassoc nsz arcp contract afn ugt float %i.be, %i.bg
  br i1 %i.bh, label %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit49, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %.02573, i64 4
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !46 ; 2 uses
  %.not.i.i34 = icmp eq ptr %i.bc, %i.bb
  br i1 %.not.i.i34, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store float %i.be, ptr %i.bc, align 4, !tbaa !34
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.bk = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bj, i64 0
  store <2 x float> %i.bk, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !34
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bc, i64 12 ; 2 uses
  store ptr %i.bl, ptr %i.h, align 8, !tbaa !17
  br label %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit49

bb.k:                                             ; preds = %bb.i
  %i.bm = ptrtoint ptr %i.bb to i64
  %i.bn = ptrtoint ptr %i.ba to i64               ; 2 uses
  %i.bo = sub i64 %i.bm, %i.bn                    ; 3 uses
  %i.bp = icmp eq i64 %i.bo, 9223372036854775800
  br i1 %i.bp, label %.invoke, label %_ZNKSt6vectorIN8interpol10base_pointIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i35

.invoke:                                          ; preds = %bb.k, %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #21
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIN8interpol10base_pointIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i35: ; preds = %bb.k
  %i.bq = sdiv exact i64 %i.bo, 12                ; 3 uses
  %.sroa.speculated.i.i.i.i36 = tail call i64 @llvm.umax.i64(i64 %i.bq, i64 1)
  %i.br = add nsw i64 %.sroa.speculated.i.i.i.i36, %i.bq ; 2 uses
  %i.bs = icmp ult i64 %i.br, %i.bq
  %i.bt = tail call i64 @llvm.umin.i64(i64 %i.br, i64 768614336404564650)
  %i.bu = select i1 %i.bs, i64 768614336404564650, i64 %i.bt ; 3 uses
  %.not.i.i.i.i37 = icmp ne i64 %i.bu, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i37)
  %i.bv = mul nuw nsw i64 %i.bu, 12
  %i.bw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #20
          to label %.noexc48 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc48:                                         ; preds = %_ZNKSt6vectorIN8interpol10base_pointIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i35
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bo ; 2 uses
  store float %i.be, ptr %i.bx, align 4, !tbaa !34
  %.sroa.6.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.by = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bj, i64 0
  store <2 x float> %i.by, ptr %.sroa.6.0..sroa_idx54, align 4, !tbaa !34
  %.not10.i.i.i.i.i.i38 = icmp eq ptr %i.ba, %i.bb
  br i1 %.not10.i.i.i.i.i.i38, label %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i43, label %.lr.ph.i.i.i.i.i.i39

.lr.ph.i.i.i.i.i.i39:                             ; preds = %.noexc48, %.lr.ph.i.i.i.i.i.i39
  %.012.i.i.i.i.i.i40 = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i.i39 ], [ %i.bw, %.noexc48 ] ; 2 uses
  %.0911.i.i.i.i.i.i41 = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i.i39 ], [ %i.ba, %.noexc48 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i.i40, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i.i41, i64 12, i1 false), !tbaa.struct !62, !alias.scope !220
  %i.bz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i41, i64 12 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i40, i64 12 ; 2 uses
  %.not.i.i.i.i.i.i42 = icmp eq ptr %i.bz, %i.bb
  br i1 %.not.i.i.i.i.i.i42, label %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i43, label %.lr.ph.i.i.i.i.i.i39, !llvm.loop !0

_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i43: ; preds = %.lr.ph.i.i.i.i.i.i39, %.noexc48
  %.0.lcssa.i.i.i.i.i.i44 = phi ptr [ %i.bw, %.noexc48 ], [ %i.ca, %.lr.ph.i.i.i.i.i.i39 ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i44, i64 12 ; 2 uses
  %.not.i23.i.i.i45 = icmp eq ptr %i.ba, null
  br i1 %.not.i23.i.i.i45, label %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i46, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i43
  %i.cc = load ptr, ptr %i.i, align 8, !tbaa !16
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = sub i64 %i.cd, %i.bn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.ce) #19
  br label %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i46

_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i46: ; preds = %bb.l, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i43
  store ptr %i.bw, ptr %0, align 8, !tbaa !15
  store ptr %i.cb, ptr %i.h, align 8, !tbaa !17
  %i.cf = getelementptr inbounds nuw [12 x i8], ptr %i.bw, i64 %i.bu ; 2 uses
  store ptr %i.cf, ptr %i.i, align 8, !tbaa !16
  br label %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit49

_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit49: ; preds = %bb.j, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i46, %bb.g, %bb.h
  %i.cg = phi ptr [ %i.ba, %bb.j ], [ %i.bw, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i46 ], [ %i.ba, %bb.g ], [ %i.ba, %bb.h ]
  %i.ch = phi ptr [ %i.bb, %bb.j ], [ %i.cf, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i46 ], [ %i.bb, %bb.g ], [ %i.bb, %bb.h ]
  %i.ci = phi ptr [ %i.bl, %bb.j ], [ %i.cb, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i46 ], [ %i.bc, %bb.g ], [ %i.bc, %bb.h ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.02573, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cj, %2
  br i1 %.not, label %.loopexit, label %bb.g, !llvm.loop !218

.loopexit:                                        ; preds = %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit49, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit, %.preheader, %bb.b
  %i.ck = phi ptr [ %i.ay, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit ], [ null, %bb.b ], [ null, %.preheader ], [ %i.ci, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit49 ] ; 4 uses
  %i.cl = load ptr, ptr %0, align 8, !tbaa !61    ; 4 uses
  %i.cm = icmp eq ptr %i.cl, %i.ck
  br i1 %i.cm, label %bb.m, label %bb.p

bb.m:                                             ; preds = %.loopexit
  %i.cn = tail call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, ptr noundef nonnull @.str)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @__cxa_throw(ptr nonnull %i.cn, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #21
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.m
  %i.co = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.cn) #18
  br label %.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIN8interpol10base_pointIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i, %_ZNKSt6vectorIN8interpol10base_pointIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i35, %.invoke, %.noexc51, %bb.p, %bb.n
  %lpad.loopexit.split-lp116 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %.loopexit
  %i.cp = ptrtoint ptr %i.ck to i64
  %i.cq = ptrtoint ptr %i.cl to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = sdiv exact i64 %i.cr, 12
  %i.ct = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cs, i1 true)
  %i.cu = shl nuw nsw i64 %i.ct, 1
  %i.cv = xor i64 %i.cu, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_SH_T0_T1_(ptr %i.cl, ptr %i.ck, i64 noundef %i.cv)
          to label %.noexc51 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc51:                                         ; preds = %bb.p
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_SH_T0_(ptr %i.cl, ptr %i.ck)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEEZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SF_RKNS2_6limitsIfEESJ_bEUlRKS4_SL_E_EvSF_SF_T0_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEEZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SF_RKNS2_6limitsIfEESJ_bEUlRKS4_SL_E_EvSF_SF_T0_.exit: ; preds = %.noexc51
  ret void

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.o
  %.pn = phi { ptr, i32 } [ %i.co, %bb.o ], [ %lpad.loopexit.split-lp116, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.cw = load ptr, ptr %0, align 8, !tbaa !15    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !16
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = ptrtoint ptr %i.cw to i64
  %i.db = sub i64 %i.cz, %i.da
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef %i.db) #19
  br label %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EED2Ev.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp, %bb.q
  resume { ptr, i32 } %.pn

bb.r:                                             ; preds = %bb.n
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_SH_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #2 comdat {
bb.a:
  %.fr29 = freeze ptr %1                          ; 3 uses
  %.fr28 = freeze ptr %0                          ; 36 uses
  %i.a = ptrtoint ptr %.fr28 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr29 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 192
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_SH_SH_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.fr28, i64 12 ; 6 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph50

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEESH_SH_SH_T0_.exit
  %i.g = icmp eq i64 %i.bt, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph50, !llvm.loop !221

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr46.i27.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.cn, %bb.b ]
  %storemerge25.lcssa = phi ptr [ %.fr29, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ]
  %i.h = udiv exact i64 %.fr46.i27.lcssa, 12      ; 3 uses
  %i.i = add nsw i64 %i.h, -2                     ; 2 uses
  %i.j = lshr i64 %i.i, 1                         ; 3 uses
  %i.k = add nsw i64 %i.h, -1
  %i.l = lshr i64 %i.k, 1                         ; 2 uses
  %i.m = and i64 %i.h, 1
  %i.n = icmp eq i64 %i.m, 0
  %3 = or disjoint i64 %i.i, 1                    ; 2 uses
  %i.o = getelementptr inbounds nuw [12 x i8], ptr %.fr28, i64 %3
  %i.p = getelementptr inbounds nuw [12 x i8], ptr %.fr28, i64 %i.j
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_T0_SQ_T1_T2_.exit.i.i, %._crit_edge
  %.012.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.al, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_T0_SQ_T1_T2_.exit.i.i ] ; 8 uses
  %i.q = getelementptr inbounds [12 x i8], ptr %.fr28, i64 %.012.i.i ; 2 uses
  %.sroa.05.0.copyload.i.i = load <2 x float>, ptr %i.q, align 4, !tbaa !34 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.4.0.copyload.i.i = load float, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !34
  %i.r = icmp slt i64 %.012.i.i, %i.l
  br i1 %i.r, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.041.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.012.i.i, %bb.c ] ; 2 uses
  %i.s = shl i64 %.041.i.i.i, 1                   ; 2 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [12 x i8], ptr %.fr28, i64 %i.t
  %i.v = or disjoint i64 %i.s, 1                  ; 2 uses
  %i.w = getelementptr inbounds [12 x i8], ptr %.fr28, i64 %i.v
  %i.x = load float, ptr %i.u, align 4, !tbaa !32
  %i.y = load float, ptr %i.w, align 4, !tbaa !32
  %i.z = fcmp reassoc nsz arcp contract afn olt float %i.x, %i.y
  %spec.select.i.i.i = select i1 %i.z, i64 %i.v, i64 %i.t ; 4 uses
  %i.aa = getelementptr inbounds [12 x i8], ptr %.fr28, i64 %spec.select.i.i.i
  %i.ab = getelementptr inbounds [12 x i8], ptr %.fr28, i64 %.041.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ab, ptr noundef nonnull align 4 dereferenceable(12) %i.aa, i64 12, i1 false), !tbaa.struct !62
  %i.ac = icmp slt i64 %spec.select.i.i.i, %i.l
  br i1 %i.ac, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !222

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ %.012.i.i, %bb.c ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.ad = icmp eq i64 %.0.lcssa.i.i.i, %i.j
  %or.cond.i.i = select i1 %i.n, i1 %i.ad, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.p, ptr noundef nonnull align 4 dereferenceable(12) %i.o, i64 12, i1 false), !tbaa.struct !62
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %3, %bb.d ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ae = icmp sgt i64 %.1.i.i.i, %.012.i.i
  br i1 %i.ae, label %.lr.ph.i.i.i.i17, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_T0_SQ_T1_T2_.exit.i.i

.lr.ph.i.i.i.i17:                                 ; preds = %bb.e
  %.sroa.013.0.vec.extract.i.i.i.i = extractelement <2 x float> %.sroa.05.0.copyload.i.i, i64 0
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i17
  %.020.i.i.i.i = phi i64 [ %.1.i.i.i, %.lr.ph.i.i.i.i17 ], [ %.01021.i.i.i.i, %bb.g ] ; 3 uses
  %.01021.in.i.i.i.i = add nsw i64 %.020.i.i.i.i, -1
  %.01021.i.i.i.i = sdiv i64 %.01021.in.i.i.i.i, 2 ; 4 uses
  %i.af = getelementptr inbounds nuw [12 x i8], ptr %.fr28, i64 %.01021.i.i.i.i ; 2 uses
  %i.ag = load float, ptr %i.af, align 4, !tbaa !32
  %i.ah = fcmp reassoc nsz arcp contract afn olt float %i.ag, %.sroa.013.0.vec.extract.i.i.i.i
  br i1 %i.ah, label %bb.g, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_T0_SQ_T1_T2_.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw [12 x i8], ptr %.fr28, i64 %.020.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ai, ptr noundef nonnull align 4 dereferenceable(12) %i.af, i64 12, i1 false), !tbaa.struct !62
  %i.aj = icmp sgt i64 %.01021.i.i.i.i, %.012.i.i
  br i1 %i.aj, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_T0_SQ_T1_T2_.exit.i.i, !llvm.loop !223

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_T0_SQ_T1_T2_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %.0.lcssa.i.i.i.i16 = phi i64 [ %.1.i.i.i, %bb.e ], [ %.01021.i.i.i.i, %bb.g ], [ %.020.i.i.i.i, %bb.f ]
  %i.ak = getelementptr inbounds nuw [12 x i8], ptr %.fr28, i64 %.0.lcssa.i.i.i.i16 ; 2 uses
  store <2 x float> %.sroa.05.0.copyload.i.i, ptr %i.ak, align 4, !tbaa !34
  %.sroa.3.0..sroa.0.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store float %.sroa.4.0.copyload.i.i, ptr %.sroa.3.0..sroa.0.0..sroa_idx.i.i.i.i, align 4, !tbaa !34
  %.not.i.i = icmp eq i64 %.012.i.i, 0
  %i.al = add nsw i64 %.012.i.i, -1
  br i1 %.not.i.i, label %.lr.ph.i.i, label %bb.c, !llvm.loop !224

.lr.ph.i.i:                                       ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_T0_SQ_T1_T2_.exit.i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_SH_SH_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.am, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_SH_SH_RT0_.exit.i.i ], [ %storemerge25.lcssa, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_T0_SQ_T1_T2_.exit.i.i ] ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -12 ; 4 uses
  %.sroa.05.0.copyload.i.i.i = load <2 x float>, ptr %i.am, align 4, !tbaa !34 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -4
  %.sroa.4.0.copyload.i.i.i = load float, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4, !tbaa !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.am, ptr noundef nonnull align 4 dereferenceable(12) %.fr28, i64 12, i1 false), !tbaa.struct !62
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %i.an, %i.a                     ; 3 uses
  %i.ap = sdiv exact i64 %i.ao, 12                ; 3 uses
  %i.aq = add nsw i64 %i.ap, -1
  %i.ar = sdiv i64 %i.aq, 2
  %i.as = icmp sgt i64 %i.ao, 24
  br i1 %i.as, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.041.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.at = shl i64 %.041.i.i.i.i, 1                ; 2 uses
  %i.au = add i64 %i.at, 2                        ; 2 uses
  %i.av = getelementptr inbounds [12 x i8], ptr %.fr28, i64 %i.au
  %i.aw = or disjoint i64 %i.at, 1                ; 2 uses
  %i.ax = getelementptr inbounds [12 x i8], ptr %.fr28, i64 %i.aw
  %i.ay = load float, ptr %i.av, align 4, !tbaa !32
  %i.az = load float, ptr %i.ax, align 4, !tbaa !32
  %i.ba = fcmp reassoc nsz arcp contract afn olt float %i.ay, %i.az
  %spec.select.i.i.i.i = select i1 %i.ba, i64 %i.aw, i64 %i.au ; 4 uses
  %i.bb = getelementptr inbounds [12 x i8], ptr %.fr28, i64 %spec.select.i.i.i.i
  %i.bc = getelementptr inbounds [12 x i8], ptr %.fr28, i64 %.041.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bc, ptr noundef nonnull align 4 dereferenceable(12) %i.bb, i64 12, i1 false), !tbaa.struct !62
  %i.bd = icmp slt i64 %spec.select.i.i.i.i, %i.ar
  br i1 %i.bd, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !222

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.be = and i64 %i.ap, 1
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bg = add nsw i64 %i.ap, -2
  %i.bh = ashr exact i64 %i.bg, 1
  %i.bi = icmp eq i64 %.0.lcssa.i.i.i.i, %i.bh
  br i1 %i.bi, label %.thread.i.i.i, label %bb.i

.thread.i.i.i:                                    ; preds = %bb.h
  %i.bj = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.bk = or disjoint i64 %i.bj, 1                ; 2 uses
  %i.bl = getelementptr inbounds nuw [12 x i8], ptr %.fr28, i64 %i.bk
  %i.bm = getelementptr inbounds [12 x i8], ptr %.fr28, i64 %.0.lcssa.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bm, ptr noundef nonnull align 4 dereferenceable(12) %i.bl, i64 12, i1 false), !tbaa.struct !62
  br label %.lr.ph.i.i.i.i.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_SH_SH_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %.thread.i.i.i
  %.1.i11.i.i.i = phi i64 [ %i.bk, %.thread.i.i.i ], [ %.0.lcssa.i.i.i.i, %bb.i ]
  %.sroa.013.0.vec.extract.i.i.i.i.i = extractelement <2 x float> %.sroa.05.0.copyload.i.i.i, i64 0
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi i64 [ %.1.i11.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.01021.i.i1213.i.i.i, %bb.k ] ; 3 uses
  %.01021.in.i.i.i.i.i = add nsw i64 %.020.i.i.i.i.i, -1
  %.01021.i.i1213.i.i.i = lshr i64 %.01021.in.i.i.i.i.i, 1 ; 3 uses
  %i.bn = getelementptr inbounds nuw [12 x i8], ptr %.fr28, i64 %.01021.i.i1213.i.i.i ; 2 uses
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !32
  %i.bp = fcmp reassoc nsz arcp contract afn olt float %i.bo, %.sroa.013.0.vec.extract.i.i.i.i.i
  br i1 %i.bp, label %bb.k, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_SH_SH_RT0_.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.bq = getelementptr inbounds [12 x i8], ptr %.fr28, i64 %.020.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bq, ptr noundef nonnull align 4 dereferenceable(12) %i.bn, i64 12, i1 false), !tbaa.struct !62
  %.not14.i.i.i = icmp eq i64 %.01021.i.i1213.i.i.i, 0
  br i1 %.not14.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_SH_SH_RT0_.exit.i.i, label %bb.j, !llvm.loop !223

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_SH_SH_RT0_.exit.i.i: ; preds = %bb.k, %bb.j, %bb.i
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.i ], [ %.020.i.i.i.i.i, %bb.j ], [ 0, %bb.k ]
  %i.br = getelementptr inbounds [12 x i8], ptr %.fr28, i64 %.0.lcssa.i.i.i.i.i ; 2 uses
  store <2 x float> %.sroa.05.0.copyload.i.i.i, ptr %i.br, align 4, !tbaa !34
  %.sroa.3.0..sroa.0.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store float %.sroa.4.0.copyload.i.i.i, ptr %.sroa.3.0..sroa.0.0..sroa_idx.i.i.i.i.i, align 4, !tbaa !34
  %i.bs = icmp sgt i64 %i.ao, 12
  br i1 %i.bs, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_SH_SH_T0_.exit, !llvm.loop !225

.lr.ph50:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2549 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %.fr29, %.lr.ph ] ; 3 uses
  %.02648 = phi i64 [ %i.bt, %bb.b ], [ %2, %.lr.ph ]
  %.fr46.i2747 = phi i64 [ %i.cn, %bb.b ], [ %i.c, %.lr.ph ]
  %i.bt = add nsw i64 %.02648, -1                 ; 3 uses
  %i.bu = udiv i64 %.fr46.i2747, 24
  %i.bv = getelementptr inbounds nuw [12 x i8], ptr %.fr28, i64 %i.bu ; 5 uses
  %i.bw = getelementptr inbounds i8, ptr %storemerge2549, i64 -12 ; 5 uses
  %i.bx = load float, ptr %i.e, align 4, !tbaa !32 ; 3 uses
  %i.by = load float, ptr %i.bv, align 4, !tbaa !32 ; 3 uses
  %i.bz = fcmp reassoc nsz arcp contract afn olt float %i.bx, %i.by
  %i.ca = load float, ptr %i.bw, align 4, !tbaa !32 ; 4 uses
  br i1 %i.bz, label %bb.l, label %bb.q

bb.l:                                             ; preds = %.lr.ph50
  %i.cb = fcmp reassoc nsz arcp contract afn olt float %i.by, %i.ca
  br i1 %i.cb, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.copyload = load <3 x float>, ptr %.fr28, align 4, !tbaa !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.fr28, ptr noundef nonnull align 4 dereferenceable(12) %i.bv, i64 12, i1 false), !tbaa.struct !62
  store <3 x float> %.sroa.0.0.copyload, ptr %i.bv, align 4, !tbaa !34
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_SH_SH_SH_T0_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  %i.cc = fcmp reassoc nsz arcp contract afn olt float %i.bx, %i.ca
  br i1 %i.cc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %.sroa.057.0.copyload = load <3 x float>, ptr %.fr28, align 4, !tbaa !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.fr28, ptr noundef nonnull align 4 dereferenceable(12) %i.bw, i64 12, i1 false), !tbaa.struct !62
  store <3 x float> %.sroa.057.0.copyload, ptr %i.bw, align 4, !tbaa !34
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_SH_SH_SH_T0_.exit.i.preheader

bb.p:                                             ; preds = %bb.n
  %.sroa.059.0.copyload = load <3 x float>, ptr %.fr28, align 4, !tbaa !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.fr28, ptr noundef nonnull align 4 dereferenceable(12) %i.e, i64 12, i1 false), !tbaa.struct !62
  store <3 x float> %.sroa.059.0.copyload, ptr %i.e, align 4, !tbaa !34
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_SH_SH_SH_T0_.exit.i.preheader

bb.q:                                             ; preds = %.lr.ph50
  %i.cd = fcmp reassoc nsz arcp contract afn olt float %i.bx, %i.ca
  br i1 %i.cd, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %.sroa.061.0.copyload = load <3 x float>, ptr %.fr28, align 4, !tbaa !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.fr28, ptr noundef nonnull align 4 dereferenceable(12) %i.e, i64 12, i1 false), !tbaa.struct !62
  store <3 x float> %.sroa.061.0.copyload, ptr %i.e, align 4, !tbaa !34
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_SH_SH_SH_T0_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  %i.ce = fcmp reassoc nsz arcp contract afn olt float %i.by, %i.ca
  br i1 %i.ce, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %.sroa.063.0.copyload = load <3 x float>, ptr %.fr28, align 4, !tbaa !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.fr28, ptr noundef nonnull align 4 dereferenceable(12) %i.bw, i64 12, i1 false), !tbaa.struct !62
  store <3 x float> %.sroa.063.0.copyload, ptr %i.bw, align 4, !tbaa !34
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_SH_SH_SH_T0_.exit.i.preheader

bb.u:                                             ; preds = %bb.s
  %.sroa.065.0.copyload = load <3 x float>, ptr %.fr28, align 4, !tbaa !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.fr28, ptr noundef nonnull align 4 dereferenceable(12) %i.bv, i64 12, i1 false), !tbaa.struct !62
  store <3 x float> %.sroa.065.0.copyload, ptr %i.bv, align 4, !tbaa !34
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_SH_SH_SH_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_SH_SH_SH_T0_.exit.i.preheader: ; preds = %bb.u, %bb.t, %bb.r, %bb.p, %bb.o, %bb.m
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_SH_SH_SH_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_SH_SH_SH_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_SH_SH_SH_T0_.exit.i.preheader, %bb.x
  %.sroa.010.0.i.i = phi ptr [ %i.ci, %bb.x ], [ %i.e, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_SH_SH_SH_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.x ], [ %storemerge2549, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_SH_SH_SH_T0_.exit.i.preheader ]
  %i.cf = load float, ptr %.fr28, align 4, !tbaa !32 ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_SH_SH_SH_T0_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_RKNS2_6limitsIfEESL_bEUlRKS4_SN_E_EEEvSH_SH_SH_SH_T0_.exit.i ], [ %i.ci, %bb.v ] ; 9 uses
  %i.cg = load float, ptr %.sroa.010.1.i.i, align 4, !tbaa !32
  %i.ch = fcmp reassoc nsz arcp contract afn olt float %i.cg, %i.cf
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 12 ; 2 uses
  br i1 %i.ch, label %bb.v, label %.preheader.i.i, !llvm.loop !226

.preheader.i.i:                                   ; preds = %bb.v, %.preheader.i.i
end_hunk_1
begin_hunk_2_@_ZN8interpol11spline_baseIfEC2IN9__gnu_cxx17__normal_iteratorIPNS_5pointIfEESt6vectorIS6_SaIS6_EEEEEET_SC_RKNS_6limitsIfEESG_b:bb.a
  %i.aw = phi ptr [ %i.am, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.r, %bb.d ]
  %i.ax = phi ptr [ %i.av, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.s, %bb.d ]
  %i.ay = phi ptr [ %i.ar, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.ab, %bb.d ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.056.072, i64 8 ; 2 uses
  %.not62 = icmp eq ptr %i.az, %2
  br i1 %.not62, label %.loopexit, label %bb.c, !llvm.loop !235

bb.g:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit33
  %i.ba = phi ptr [ null, %.lr.ph ], [ %i.cg, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit33 ] ; 8 uses
  %i.bb = phi ptr [ null, %.lr.ph ], [ %i.ch, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit33 ] ; 7 uses
  %i.bc = phi ptr [ null, %.lr.ph ], [ %i.ci, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit33 ] ; 6 uses
  %.sroa.042.070 = phi ptr [ %1, %.lr.ph ], [ %i.cj, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit33 ] ; 3 uses
  %i.bd = load float, ptr %i.b, align 8, !tbaa !31
  %i.be = load float, ptr %.sroa.042.070, align 4, !tbaa !54 ; 4 uses
  %i.bf = fcmp reassoc nsz arcp contract afn ugt float %i.bd, %i.be
  br i1 %i.bf, label %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit33, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bg = load float, ptr %i.g, align 4, !tbaa !30
  %i.bh = fcmp reassoc nsz arcp contract afn ugt float %i.be, %i.bg
  br i1 %i.bh, label %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit33, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.042.070, i64 4
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !55 ; 2 uses
  %.not.i.i18 = icmp eq ptr %i.bc, %i.bb
  br i1 %.not.i.i18, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store float %i.be, ptr %i.bc, align 4, !tbaa !34
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.bk = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bj, i64 0
  store <2 x float> %i.bk, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !34
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bc, i64 12 ; 2 uses
  store ptr %i.bl, ptr %i.h, align 8, !tbaa !17
  br label %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit33

bb.k:                                             ; preds = %bb.i
  %i.bm = ptrtoint ptr %i.bb to i64
  %i.bn = ptrtoint ptr %i.ba to i64               ; 2 uses
  %i.bo = sub i64 %i.bm, %i.bn                    ; 3 uses
  %i.bp = icmp eq i64 %i.bo, 9223372036854775800
  br i1 %i.bp, label %.invoke, label %_ZNKSt6vectorIN8interpol10base_pointIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i19

.invoke:                                          ; preds = %bb.k, %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #21
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIN8interpol10base_pointIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i19: ; preds = %bb.k
  %i.bq = sdiv exact i64 %i.bo, 12                ; 3 uses
  %.sroa.speculated.i.i.i.i20 = tail call i64 @llvm.umax.i64(i64 %i.bq, i64 1)
  %i.br = add nsw i64 %.sroa.speculated.i.i.i.i20, %i.bq ; 2 uses
  %i.bs = icmp ult i64 %i.br, %i.bq
  %i.bt = tail call i64 @llvm.umin.i64(i64 %i.br, i64 768614336404564650)
  %i.bu = select i1 %i.bs, i64 768614336404564650, i64 %i.bt ; 3 uses
  %.not.i.i.i.i21 = icmp ne i64 %i.bu, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i21)
  %i.bv = mul nuw nsw i64 %i.bu, 12
  %i.bw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #20
          to label %.noexc32 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc32:                                         ; preds = %_ZNKSt6vectorIN8interpol10base_pointIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i19
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bo ; 2 uses
  store float %i.be, ptr %i.bx, align 4, !tbaa !34
  %.sroa.6.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.by = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bj, i64 0
  store <2 x float> %i.by, ptr %.sroa.6.0..sroa_idx38, align 4, !tbaa !34
  %.not10.i.i.i.i.i.i22 = icmp eq ptr %i.ba, %i.bb
  br i1 %.not10.i.i.i.i.i.i22, label %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i27, label %.lr.ph.i.i.i.i.i.i23

.lr.ph.i.i.i.i.i.i23:                             ; preds = %.noexc32, %.lr.ph.i.i.i.i.i.i23
  %.012.i.i.i.i.i.i24 = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i.i23 ], [ %i.bw, %.noexc32 ] ; 2 uses
  %.0911.i.i.i.i.i.i25 = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i.i23 ], [ %i.ba, %.noexc32 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i.i24, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i.i25, i64 12, i1 false), !tbaa.struct !62, !alias.scope !241
  %i.bz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i25, i64 12 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i24, i64 12 ; 2 uses
  %.not.i.i.i.i.i.i26 = icmp eq ptr %i.bz, %i.bb
  br i1 %.not.i.i.i.i.i.i26, label %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i27, label %.lr.ph.i.i.i.i.i.i23, !llvm.loop !0

_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i27: ; preds = %.lr.ph.i.i.i.i.i.i23, %.noexc32
  %.0.lcssa.i.i.i.i.i.i28 = phi ptr [ %i.bw, %.noexc32 ], [ %i.ca, %.lr.ph.i.i.i.i.i.i23 ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i28, i64 12 ; 2 uses
  %.not.i23.i.i.i29 = icmp eq ptr %i.ba, null
  br i1 %.not.i23.i.i.i29, label %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i30, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i27
  %i.cc = load ptr, ptr %i.i, align 8, !tbaa !16
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = sub i64 %i.cd, %i.bn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.ce) #19
  br label %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i30

_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i30: ; preds = %bb.l, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i27
  store ptr %i.bw, ptr %0, align 8, !tbaa !15
  store ptr %i.cb, ptr %i.h, align 8, !tbaa !17
  %i.cf = getelementptr inbounds nuw [12 x i8], ptr %i.bw, i64 %i.bu ; 2 uses
  store ptr %i.cf, ptr %i.i, align 8, !tbaa !16
  br label %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit33

_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit33: ; preds = %bb.j, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i30, %bb.g, %bb.h
  %i.cg = phi ptr [ %i.ba, %bb.j ], [ %i.bw, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i30 ], [ %i.ba, %bb.g ], [ %i.ba, %bb.h ]
  %i.ch = phi ptr [ %i.bb, %bb.j ], [ %i.cf, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i30 ], [ %i.bb, %bb.g ], [ %i.bb, %bb.h ]
  %i.ci = phi ptr [ %i.bl, %bb.j ], [ %i.cb, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i30 ], [ %i.bc, %bb.g ], [ %i.bc, %bb.h ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.042.070, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cj, %2
  br i1 %.not, label %.loopexit, label %bb.g, !llvm.loop !239

.loopexit:                                        ; preds = %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit33, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit, %.preheader, %bb.b
  %i.ck = phi ptr [ %i.ay, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit ], [ null, %bb.b ], [ null, %.preheader ], [ %i.ci, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit33 ] ; 4 uses
  %i.cl = load ptr, ptr %0, align 8, !tbaa !61    ; 4 uses
  %i.cm = icmp eq ptr %i.cl, %i.ck
  br i1 %i.cm, label %bb.m, label %bb.p

bb.m:                                             ; preds = %.loopexit
  %i.cn = tail call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, ptr noundef nonnull @.str)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @__cxa_throw(ptr nonnull %i.cn, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #21
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.m
  %i.co = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.cn) #18
  br label %.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIN8interpol10base_pointIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i, %_ZNKSt6vectorIN8interpol10base_pointIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i19, %.invoke, %.noexc35, %bb.p, %bb.n
  %lpad.loopexit.split-lp113 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %.loopexit
  %i.cp = ptrtoint ptr %i.ck to i64
  %i.cq = ptrtoint ptr %i.cl to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = sdiv exact i64 %i.cr, 12
  %i.ct = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cs, i1 true)
  %i.cu = shl nuw nsw i64 %i.ct, 1
  %i.cv = xor i64 %i.cu, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_T0_T1_(ptr %i.cl, ptr %i.ck, i64 noundef %i.cv)
          to label %.noexc35 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc35:                                         ; preds = %bb.p
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_T0_(ptr %i.cl, ptr %i.ck)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEEZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISE_SaISE_EEEEEET_SJ_RKNS2_6limitsIfEESN_bEUlRKS4_SP_E_EvSJ_SJ_T0_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEEZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISE_SaISE_EEEEEET_SJ_RKNS2_6limitsIfEESN_bEUlRKS4_SP_E_EvSJ_SJ_T0_.exit: ; preds = %.noexc35
  ret void

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.o
  %.pn = phi { ptr, i32 } [ %i.co, %bb.o ], [ %lpad.loopexit.split-lp113, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.cw = load ptr, ptr %0, align 8, !tbaa !15    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !16
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = ptrtoint ptr %i.cw to i64
  %i.db = sub i64 %i.cz, %i.da
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef %i.db) #19
  br label %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EED2Ev.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp, %bb.q
  resume { ptr, i32 } %.pn

bb.r:                                             ; preds = %bb.n
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #2 comdat {
bb.a:
  %.fr29 = freeze ptr %1                          ; 3 uses
  %.fr28 = freeze ptr %0                          ; 36 uses
  %i.a = ptrtoint ptr %.fr28 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr29 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 192
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_SL_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.fr28, i64 12 ; 6 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph50

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEESL_SL_SL_T0_.exit
  %i.g = icmp eq i64 %i.bt, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph50, !llvm.loop !242

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr46.i27.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.cn, %bb.b ]
  %storemerge25.lcssa = phi ptr [ %.fr29, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ]
  %i.h = udiv exact i64 %.fr46.i27.lcssa, 12      ; 3 uses
  %i.i = add nsw i64 %i.h, -2                     ; 2 uses
  %i.j = lshr i64 %i.i, 1                         ; 3 uses
  %i.k = add nsw i64 %i.h, -1
  %i.l = lshr i64 %i.k, 1                         ; 2 uses
  %i.m = and i64 %i.h, 1
  %i.n = icmp eq i64 %i.m, 0
  %3 = or disjoint i64 %i.i, 1                    ; 2 uses
  %i.o = getelementptr inbounds nuw [12 x i8], ptr %.fr28, i64 %3
  %i.p = getelementptr inbounds nuw [12 x i8], ptr %.fr28, i64 %i.j
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_T0_SU_T1_T2_.exit.i.i, %._crit_edge
  %.012.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.al, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_T0_SU_T1_T2_.exit.i.i ] ; 8 uses
  %i.q = getelementptr inbounds [12 x i8], ptr %.fr28, i64 %.012.i.i ; 2 uses
  %.sroa.05.0.copyload.i.i = load <2 x float>, ptr %i.q, align 4, !tbaa !34 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.4.0.copyload.i.i = load float, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !34
  %i.r = icmp slt i64 %.012.i.i, %i.l
  br i1 %i.r, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.041.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.012.i.i, %bb.c ] ; 2 uses
  %i.s = shl i64 %.041.i.i.i, 1                   ; 2 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [12 x i8], ptr %.fr28, i64 %i.t
  %i.v = or disjoint i64 %i.s, 1                  ; 2 uses
  %i.w = getelementptr inbounds [12 x i8], ptr %.fr28, i64 %i.v
  %i.x = load float, ptr %i.u, align 4, !tbaa !32
  %i.y = load float, ptr %i.w, align 4, !tbaa !32
  %i.z = fcmp reassoc nsz arcp contract afn olt float %i.x, %i.y
  %spec.select.i.i.i = select i1 %i.z, i64 %i.v, i64 %i.t ; 4 uses
  %i.aa = getelementptr inbounds [12 x i8], ptr %.fr28, i64 %spec.select.i.i.i
  %i.ab = getelementptr inbounds [12 x i8], ptr %.fr28, i64 %.041.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ab, ptr noundef nonnull align 4 dereferenceable(12) %i.aa, i64 12, i1 false), !tbaa.struct !62
  %i.ac = icmp slt i64 %spec.select.i.i.i, %i.l
  br i1 %i.ac, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !243

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ %.012.i.i, %bb.c ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.ad = icmp eq i64 %.0.lcssa.i.i.i, %i.j
  %or.cond.i.i = select i1 %i.n, i1 %i.ad, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.p, ptr noundef nonnull align 4 dereferenceable(12) %i.o, i64 12, i1 false), !tbaa.struct !62
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %3, %bb.d ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ae = icmp sgt i64 %.1.i.i.i, %.012.i.i
  br i1 %i.ae, label %.lr.ph.i.i.i.i17, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_T0_SU_T1_T2_.exit.i.i

.lr.ph.i.i.i.i17:                                 ; preds = %bb.e
  %.sroa.013.0.vec.extract.i.i.i.i = extractelement <2 x float> %.sroa.05.0.copyload.i.i, i64 0
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i17
  %.020.i.i.i.i = phi i64 [ %.1.i.i.i, %.lr.ph.i.i.i.i17 ], [ %.01021.i.i.i.i, %bb.g ] ; 3 uses
  %.01021.in.i.i.i.i = add nsw i64 %.020.i.i.i.i, -1
  %.01021.i.i.i.i = sdiv i64 %.01021.in.i.i.i.i, 2 ; 4 uses
  %i.af = getelementptr inbounds nuw [12 x i8], ptr %.fr28, i64 %.01021.i.i.i.i ; 2 uses
  %i.ag = load float, ptr %i.af, align 4, !tbaa !32
  %i.ah = fcmp reassoc nsz arcp contract afn olt float %i.ag, %.sroa.013.0.vec.extract.i.i.i.i
  br i1 %i.ah, label %bb.g, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_T0_SU_T1_T2_.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw [12 x i8], ptr %.fr28, i64 %.020.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ai, ptr noundef nonnull align 4 dereferenceable(12) %i.af, i64 12, i1 false), !tbaa.struct !62
  %i.aj = icmp sgt i64 %.01021.i.i.i.i, %.012.i.i
  br i1 %i.aj, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_T0_SU_T1_T2_.exit.i.i, !llvm.loop !244

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_T0_SU_T1_T2_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %.0.lcssa.i.i.i.i16 = phi i64 [ %.1.i.i.i, %bb.e ], [ %.01021.i.i.i.i, %bb.g ], [ %.020.i.i.i.i, %bb.f ]
  %i.ak = getelementptr inbounds nuw [12 x i8], ptr %.fr28, i64 %.0.lcssa.i.i.i.i16 ; 2 uses
  store <2 x float> %.sroa.05.0.copyload.i.i, ptr %i.ak, align 4, !tbaa !34
  %.sroa.3.0..sroa.0.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store float %.sroa.4.0.copyload.i.i, ptr %.sroa.3.0..sroa.0.0..sroa_idx.i.i.i.i, align 4, !tbaa !34
  %.not.i.i = icmp eq i64 %.012.i.i, 0
  %i.al = add nsw i64 %.012.i.i, -1
  br i1 %.not.i.i, label %.lr.ph.i.i, label %bb.c, !llvm.loop !245

.lr.ph.i.i:                                       ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_T0_SU_T1_T2_.exit.i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_SL_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.am, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_SL_RT0_.exit.i.i ], [ %storemerge25.lcssa, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_T0_SU_T1_T2_.exit.i.i ] ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -12 ; 4 uses
  %.sroa.05.0.copyload.i.i.i = load <2 x float>, ptr %i.am, align 4, !tbaa !34 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -4
  %.sroa.4.0.copyload.i.i.i = load float, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4, !tbaa !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.am, ptr noundef nonnull align 4 dereferenceable(12) %.fr28, i64 12, i1 false), !tbaa.struct !62
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %i.an, %i.a                     ; 3 uses
  %i.ap = sdiv exact i64 %i.ao, 12                ; 3 uses
  %i.aq = add nsw i64 %i.ap, -1
  %i.ar = sdiv i64 %i.aq, 2
  %i.as = icmp sgt i64 %i.ao, 24
  br i1 %i.as, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.041.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.at = shl i64 %.041.i.i.i.i, 1                ; 2 uses
  %i.au = add i64 %i.at, 2                        ; 2 uses
  %i.av = getelementptr inbounds [12 x i8], ptr %.fr28, i64 %i.au
  %i.aw = or disjoint i64 %i.at, 1                ; 2 uses
  %i.ax = getelementptr inbounds [12 x i8], ptr %.fr28, i64 %i.aw
  %i.ay = load float, ptr %i.av, align 4, !tbaa !32
  %i.az = load float, ptr %i.ax, align 4, !tbaa !32
  %i.ba = fcmp reassoc nsz arcp contract afn olt float %i.ay, %i.az
  %spec.select.i.i.i.i = select i1 %i.ba, i64 %i.aw, i64 %i.au ; 4 uses
  %i.bb = getelementptr inbounds [12 x i8], ptr %.fr28, i64 %spec.select.i.i.i.i
  %i.bc = getelementptr inbounds [12 x i8], ptr %.fr28, i64 %.041.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bc, ptr noundef nonnull align 4 dereferenceable(12) %i.bb, i64 12, i1 false), !tbaa.struct !62
  %i.bd = icmp slt i64 %spec.select.i.i.i.i, %i.ar
  br i1 %i.bd, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !243

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.be = and i64 %i.ap, 1
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bg = add nsw i64 %i.ap, -2
  %i.bh = ashr exact i64 %i.bg, 1
  %i.bi = icmp eq i64 %.0.lcssa.i.i.i.i, %i.bh
  br i1 %i.bi, label %.thread.i.i.i, label %bb.i

.thread.i.i.i:                                    ; preds = %bb.h
  %i.bj = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.bk = or disjoint i64 %i.bj, 1                ; 2 uses
  %i.bl = getelementptr inbounds nuw [12 x i8], ptr %.fr28, i64 %i.bk
  %i.bm = getelementptr inbounds [12 x i8], ptr %.fr28, i64 %.0.lcssa.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bm, ptr noundef nonnull align 4 dereferenceable(12) %i.bl, i64 12, i1 false), !tbaa.struct !62
  br label %.lr.ph.i.i.i.i.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_SL_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %.thread.i.i.i
  %.1.i11.i.i.i = phi i64 [ %i.bk, %.thread.i.i.i ], [ %.0.lcssa.i.i.i.i, %bb.i ]
  %.sroa.013.0.vec.extract.i.i.i.i.i = extractelement <2 x float> %.sroa.05.0.copyload.i.i.i, i64 0
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi i64 [ %.1.i11.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.01021.i.i1213.i.i.i, %bb.k ] ; 3 uses
  %.01021.in.i.i.i.i.i = add nsw i64 %.020.i.i.i.i.i, -1
  %.01021.i.i1213.i.i.i = lshr i64 %.01021.in.i.i.i.i.i, 1 ; 3 uses
  %i.bn = getelementptr inbounds nuw [12 x i8], ptr %.fr28, i64 %.01021.i.i1213.i.i.i ; 2 uses
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !32
  %i.bp = fcmp reassoc nsz arcp contract afn olt float %i.bo, %.sroa.013.0.vec.extract.i.i.i.i.i
  br i1 %i.bp, label %bb.k, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_SL_RT0_.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.bq = getelementptr inbounds [12 x i8], ptr %.fr28, i64 %.020.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bq, ptr noundef nonnull align 4 dereferenceable(12) %i.bn, i64 12, i1 false), !tbaa.struct !62
  %.not14.i.i.i = icmp eq i64 %.01021.i.i1213.i.i.i, 0
  br i1 %.not14.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_SL_RT0_.exit.i.i, label %bb.j, !llvm.loop !244

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_SL_RT0_.exit.i.i: ; preds = %bb.k, %bb.j, %bb.i
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.i ], [ %.020.i.i.i.i.i, %bb.j ], [ 0, %bb.k ]
  %i.br = getelementptr inbounds [12 x i8], ptr %.fr28, i64 %.0.lcssa.i.i.i.i.i ; 2 uses
  store <2 x float> %.sroa.05.0.copyload.i.i.i, ptr %i.br, align 4, !tbaa !34
  %.sroa.3.0..sroa.0.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store float %.sroa.4.0.copyload.i.i.i, ptr %.sroa.3.0..sroa.0.0..sroa_idx.i.i.i.i.i, align 4, !tbaa !34
  %i.bs = icmp sgt i64 %i.ao, 12
  br i1 %i.bs, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_SL_T0_.exit, !llvm.loop !246

.lr.ph50:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2549 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %.fr29, %.lr.ph ] ; 3 uses
  %.02648 = phi i64 [ %i.bt, %bb.b ], [ %2, %.lr.ph ]
  %.fr46.i2747 = phi i64 [ %i.cn, %bb.b ], [ %i.c, %.lr.ph ]
  %i.bt = add nsw i64 %.02648, -1                 ; 3 uses
  %i.bu = udiv i64 %.fr46.i2747, 24
  %i.bv = getelementptr inbounds nuw [12 x i8], ptr %.fr28, i64 %i.bu ; 5 uses
  %i.bw = getelementptr inbounds i8, ptr %storemerge2549, i64 -12 ; 5 uses
  %i.bx = load float, ptr %i.e, align 4, !tbaa !32 ; 3 uses
  %i.by = load float, ptr %i.bv, align 4, !tbaa !32 ; 3 uses
  %i.bz = fcmp reassoc nsz arcp contract afn olt float %i.bx, %i.by
  %i.ca = load float, ptr %i.bw, align 4, !tbaa !32 ; 4 uses
  br i1 %i.bz, label %bb.l, label %bb.q

bb.l:                                             ; preds = %.lr.ph50
  %i.cb = fcmp reassoc nsz arcp contract afn olt float %i.by, %i.ca
  br i1 %i.cb, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.copyload = load <3 x float>, ptr %.fr28, align 4, !tbaa !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.fr28, ptr noundef nonnull align 4 dereferenceable(12) %i.bv, i64 12, i1 false), !tbaa.struct !62
  store <3 x float> %.sroa.0.0.copyload, ptr %i.bv, align 4, !tbaa !34
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_SL_SL_T0_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  %i.cc = fcmp reassoc nsz arcp contract afn olt float %i.bx, %i.ca
  br i1 %i.cc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %.sroa.057.0.copyload = load <3 x float>, ptr %.fr28, align 4, !tbaa !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.fr28, ptr noundef nonnull align 4 dereferenceable(12) %i.bw, i64 12, i1 false), !tbaa.struct !62
  store <3 x float> %.sroa.057.0.copyload, ptr %i.bw, align 4, !tbaa !34
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_SL_SL_T0_.exit.i.preheader

bb.p:                                             ; preds = %bb.n
  %.sroa.059.0.copyload = load <3 x float>, ptr %.fr28, align 4, !tbaa !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.fr28, ptr noundef nonnull align 4 dereferenceable(12) %i.e, i64 12, i1 false), !tbaa.struct !62
  store <3 x float> %.sroa.059.0.copyload, ptr %i.e, align 4, !tbaa !34
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_SL_SL_T0_.exit.i.preheader

bb.q:                                             ; preds = %.lr.ph50
  %i.cd = fcmp reassoc nsz arcp contract afn olt float %i.bx, %i.ca
  br i1 %i.cd, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %.sroa.061.0.copyload = load <3 x float>, ptr %.fr28, align 4, !tbaa !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.fr28, ptr noundef nonnull align 4 dereferenceable(12) %i.e, i64 12, i1 false), !tbaa.struct !62
  store <3 x float> %.sroa.061.0.copyload, ptr %i.e, align 4, !tbaa !34
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_SL_SL_T0_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  %i.ce = fcmp reassoc nsz arcp contract afn olt float %i.by, %i.ca
  br i1 %i.ce, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %.sroa.063.0.copyload = load <3 x float>, ptr %.fr28, align 4, !tbaa !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.fr28, ptr noundef nonnull align 4 dereferenceable(12) %i.bw, i64 12, i1 false), !tbaa.struct !62
  store <3 x float> %.sroa.063.0.copyload, ptr %i.bw, align 4, !tbaa !34
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_SL_SL_T0_.exit.i.preheader

bb.u:                                             ; preds = %bb.s
  %.sroa.065.0.copyload = load <3 x float>, ptr %.fr28, align 4, !tbaa !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.fr28, ptr noundef nonnull align 4 dereferenceable(12) %i.bv, i64 12, i1 false), !tbaa.struct !62
  store <3 x float> %.sroa.065.0.copyload, ptr %i.bv, align 4, !tbaa !34
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_SL_SL_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_SL_SL_T0_.exit.i.preheader: ; preds = %bb.u, %bb.t, %bb.r, %bb.p, %bb.o, %bb.m
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_SL_SL_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_SL_SL_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_SL_SL_T0_.exit.i.preheader, %bb.x
  %.sroa.010.0.i.i = phi ptr [ %i.ci, %bb.x ], [ %i.e, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_SL_SL_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.x ], [ %storemerge2549, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_SL_SL_T0_.exit.i.preheader ]
  %i.cf = load float, ptr %.fr28, align 4, !tbaa !32 ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_SL_SL_T0_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_SL_SL_T0_.exit.i ], [ %i.ci, %bb.v ] ; 9 uses
  %i.cg = load float, ptr %.sroa.010.1.i.i, align 4, !tbaa !32
  %i.ch = fcmp reassoc nsz arcp contract afn olt float %i.cg, %i.cf
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 12 ; 2 uses
  br i1 %i.ch, label %bb.v, label %.preheader.i.i, !llvm.loop !247

.preheader.i.i:                                   ; preds = %bb.v, %.preheader.i.i
end_hunk_2
