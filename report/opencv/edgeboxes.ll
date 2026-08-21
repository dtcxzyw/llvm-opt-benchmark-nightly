inline.NumInlined: 1391
inline.NumDeleted: 525
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN2cv8ximgproc13EdgeBoxesImpl13scoreAllBoxesERSt6vectorINS0_3BoxESaIS3_EE:bb.a
  %i.br = fmul float %i.bl, %i.bq
  %i.bs = fptosi float %i.br to i32
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.bs, i32 2) ; 2 uses
  %i.bt = sub i32 %.sroa.speculated, %i.bp        ; 2 uses
  %i.bu = add i32 %i.bt, %i.ba
  %i.bv = icmp sgt i32 %i.bu, 0
  br i1 %i.bv, label %.preheader.lr.ph, label %._crit_edge100

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.bw = sub i32 %.sroa.speculated74, %i.bj      ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.bx = phi i32 [ %i.aw, %.preheader.lr.ph ], [ %i.dd, %._crit_edge ]
  %i.by = phi ptr [ %i.ax, %.preheader.lr.ph ], [ %i.de, %._crit_edge ] ; 2 uses
  %i.bz = phi ptr [ %i.ay, %.preheader.lr.ph ], [ %i.df, %._crit_edge ] ; 2 uses
  %i.ca = phi i32 [ %i.az, %.preheader.lr.ph ], [ %i.dg, %._crit_edge ] ; 2 uses
  %.04999 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.dh, %._crit_edge ] ; 3 uses
  %i.cb = add i32 %i.bw, %i.ca
  %i.cc = icmp sgt i32 %i.cb, 0
  br i1 %i.cc, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %.pre = load ptr, ptr %i.ag, align 8, !tbaa !176
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIN2cv8ximgproc3BoxESaIS2_EE9push_backERKS2_.exit
  %i.cd = phi ptr [ %i.cw, %_ZNSt6vectorIN2cv8ximgproc3BoxESaIS2_EE9push_backERKS2_.exit ], [ %i.by, %.lr.ph.preheader ] ; 5 uses
  %i.ce = phi ptr [ %i.cx, %_ZNSt6vectorIN2cv8ximgproc3BoxESaIS2_EE9push_backERKS2_.exit ], [ %.pre, %.lr.ph.preheader ] ; 3 uses
  %i.cf = phi ptr [ %i.cy, %_ZNSt6vectorIN2cv8ximgproc3BoxESaIS2_EE9push_backERKS2_.exit ], [ %i.bz, %.lr.ph.preheader ] ; 6 uses
  %.05098 = phi i32 [ %i.cz, %_ZNSt6vectorIN2cv8ximgproc3BoxESaIS2_EE9push_backERKS2_.exit ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.not.i = icmp eq ptr %i.cf, %i.ce
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  store i32 %.04999, ptr %i.cf, align 4, !tbaa !89
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  store i32 %.05098, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !89
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i32 %i.bp, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !89
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  store i32 %i.bj, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !89
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 20 ; 2 uses
  store ptr %i.cg, ptr %i.a, align 8, !tbaa !171
  br label %_ZNSt6vectorIN2cv8ximgproc3BoxESaIS2_EE9push_backERKS2_.exit

bb.d:                                             ; preds = %.lr.ph
  %i.ch = ptrtoint ptr %i.ce to i64
  %i.ci = ptrtoint ptr %i.cd to i64
  %i.cj = sub i64 %i.ch, %i.ci                    ; 6 uses
  %i.ck = icmp eq i64 %i.cj, 9223372036854775800
  br i1 %i.ck, label %bb.e, label %_ZNKSt6vectorIN2cv8ximgproc3BoxESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #20
  unreachable

_ZNKSt6vectorIN2cv8ximgproc3BoxESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.cl = sdiv exact i64 %i.cj, 20                ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cl, i64 1)
  %i.cm = add nsw i64 %.sroa.speculated.i.i.i, %i.cl ; 2 uses
  %i.cn = icmp ult i64 %i.cm, %i.cl
  %i.co = tail call i64 @llvm.umin.i64(i64 %i.cm, i64 461168601842738790)
  %i.cp = select i1 %i.cn, i64 461168601842738790, i64 %i.co ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cp, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.cq = mul nuw nsw i64 %i.cp, 20
  %i.cr = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cq) #21 ; 5 uses
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 %i.cj ; 5 uses
  store i32 %.04999, ptr %i.cs, align 4, !tbaa !89
  %.sroa.5.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  store i32 %.05098, ptr %.sroa.5.0..sroa_idx63, align 4, !tbaa !89
  %.sroa.6.0..sroa_idx65 = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i32 %i.bp, ptr %.sroa.6.0..sroa_idx65, align 4, !tbaa !89
  %.sroa.7.0..sroa_idx67 = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  store i32 %i.bj, ptr %.sroa.7.0..sroa_idx67, align 4, !tbaa !89
  %i.ct = icmp sgt i64 %i.cj, 0
  br i1 %i.ct, label %bb.f, label %_ZNSt6vectorIN2cv8ximgproc3BoxESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIN2cv8ximgproc3BoxESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cr, ptr align 4 %i.cd, i64 %i.cj, i1 false)
  br label %_ZNSt6vectorIN2cv8ximgproc3BoxESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIN2cv8ximgproc3BoxESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.f, %_ZNKSt6vectorIN2cv8ximgproc3BoxESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 20 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN2cv8ximgproc3BoxESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN2cv8ximgproc3BoxESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef %i.cj) #19
  br label %_ZNSt6vectorIN2cv8ximgproc3BoxESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN2cv8ximgproc3BoxESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIN2cv8ximgproc3BoxESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.cr, ptr %1, align 8, !tbaa !173
  store ptr %i.cu, ptr %i.a, align 8, !tbaa !171
  %i.cv = getelementptr inbounds nuw [20 x i8], ptr %i.cr, i64 %i.cp ; 2 uses
  store ptr %i.cv, ptr %i.ag, align 8, !tbaa !176
  br label %_ZNSt6vectorIN2cv8ximgproc3BoxESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN2cv8ximgproc3BoxESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.c, %_ZNSt6vectorIN2cv8ximgproc3BoxESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.cw = phi ptr [ %i.cd, %bb.c ], [ %i.cr, %_ZNSt6vectorIN2cv8ximgproc3BoxESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ] ; 2 uses
  %i.cx = phi ptr [ %i.ce, %bb.c ], [ %i.cv, %_ZNSt6vectorIN2cv8ximgproc3BoxESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ]
  %i.cy = phi ptr [ %i.cg, %bb.c ], [ %i.cu, %_ZNSt6vectorIN2cv8ximgproc3BoxESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ] ; 2 uses
  %i.cz = add nuw nsw i32 %.05098, %.sroa.speculated74 ; 2 uses
  %i.da = load i32, ptr %i.r, align 8, !tbaa !76  ; 2 uses
  %i.db = add i32 %i.bw, %i.da
  %i.dc = icmp slt i32 %i.cz, %i.db
  br i1 %i.dc, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !177

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIN2cv8ximgproc3BoxESaIS2_EE9push_backERKS2_.exit
  %.pre116 = load i32, ptr %i.q, align 4, !tbaa !75
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.dd = phi i32 [ %.pre116, %._crit_edge.loopexit ], [ %i.bx, %.preheader ] ; 4 uses
  %i.de = phi ptr [ %i.cw, %._crit_edge.loopexit ], [ %i.by, %.preheader ] ; 2 uses
  %i.df = phi ptr [ %i.cy, %._crit_edge.loopexit ], [ %i.bz, %.preheader ] ; 2 uses
  %i.dg = phi i32 [ %i.da, %._crit_edge.loopexit ], [ %i.ca, %.preheader ] ; 2 uses
  %i.dh = add nuw nsw i32 %.04999, %.sroa.speculated ; 2 uses
  %i.di = add i32 %i.bt, %i.dd
  %i.dj = icmp slt i32 %i.dh, %i.di
  br i1 %i.dj, label %.preheader, label %._crit_edge100, !llvm.loop !178

._crit_edge100:                                   ; preds = %._crit_edge, %bb.b
  %i.dk = phi i32 [ %i.aw, %bb.b ], [ %i.dd, %._crit_edge ] ; 2 uses
  %i.dl = phi ptr [ %i.ax, %bb.b ], [ %i.de, %._crit_edge ] ; 3 uses
  %i.dm = phi ptr [ %i.ay, %bb.b ], [ %i.df, %._crit_edge ] ; 3 uses
  %i.dn = phi i32 [ %i.az, %bb.b ], [ %i.dg, %._crit_edge ] ; 2 uses
  %i.do = phi i32 [ %i.ba, %bb.b ], [ %i.dd, %._crit_edge ] ; 2 uses
  %i.dp = add nuw nsw i32 %.051102, 1
  %exitcond.not = icmp eq i32 %.051102, %smax
  br i1 %exitcond.not, label %._crit_edge104, label %bb.b, !llvm.loop !179

._crit_edge104:                                   ; preds = %._crit_edge100
  %i.dq = add nuw nsw i32 %.052105, 1             ; 2 uses
  %exitcond113.not = icmp eq i32 %i.dq, %i.ad
  br i1 %exitcond113.not, label %._crit_edge106.split, label %.preheader97, !llvm.loop !180

.lr.ph110:                                        ; preds = %.lr.ph110.preheader, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph110.preheader ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %.0108 = phi i32 [ 0, %.lr.ph110.preheader ], [ %.1, %bb.i ] ; 2 uses
  %i.dr = load ptr, ptr %1, align 8, !tbaa !173
  %i.ds = getelementptr inbounds nuw [20 x i8], ptr %i.dr, i64 %indvars.iv
  tail call void @_ZN2cv8ximgproc13EdgeBoxesImpl8scoreBoxERNS0_3BoxE(ptr noundef nonnull align 8 dereferenceable(2132) %0, ptr noundef nonnull align 4 dereferenceable(20) %i.ds)
  %i.dt = load ptr, ptr %1, align 8, !tbaa !173
  %i.du = getelementptr inbounds nuw [20 x i8], ptr %i.dt, i64 %indvars.iv ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !161
  %i.dx = fcmp une float %i.dw, 0.000000e+00
  br i1 %i.dx, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph110
  %i.dy = add nsw i32 %.0108, 1
  tail call void @_ZN2cv8ximgproc13EdgeBoxesImpl9refineBoxERNS0_3BoxE(ptr noundef nonnull align 8 dereferenceable(2132) %0, ptr noundef nonnull align 4 dereferenceable(20) %i.du)
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph110, %bb.h
  %.1 = phi i32 [ %i.dy, %bb.h ], [ %.0108, %.lr.ph110 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond115.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond115.not, label %._crit_edge111.loopexit, label %.lr.ph110, !llvm.loop !181

._crit_edge111.loopexit:                          ; preds = %bb.i
  %.pre117 = load ptr, ptr %i.a, align 8, !tbaa !182, !noalias !183 ; 2 uses
  %.pre118 = ptrtoint ptr %.pre117 to i64
  %i.dz = sext i32 %.1 to i64
  br label %._crit_edge111

._crit_edge111:                                   ; preds = %._crit_edge111.loopexit, %._crit_edge106.split
  %.pre-phi = phi i64 [ %.pre118, %._crit_edge111.loopexit ], [ %i.aq, %._crit_edge106.split ] ; 3 uses
  %i.ea = phi ptr [ %.pre117, %._crit_edge111.loopexit ], [ %i.ap, %._crit_edge106.split ] ; 9 uses
  %.0.lcssa = phi i64 [ %i.dz, %._crit_edge111.loopexit ], [ 0, %._crit_edge106.split ] ; 4 uses
  %i.eb = load ptr, ptr %1, align 8, !tbaa !182, !noalias !186 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %.not.i.i55 = icmp eq ptr %i.ea, %i.eb
  br i1 %.not.i.i55, label %_ZSt4sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEEPFbRKS5_SD_EEvT_SG_T0_.exit, label %bb.j

bb.j:                                             ; preds = %._crit_edge111
  %i.ec = ptrtoint ptr %i.eb to i64               ; 2 uses
  store i64 %.pre-phi, ptr %4, align 8, !tbaa !182
  store i64 %i.ec, ptr %5, align 8, !tbaa !182
  %i.ed = sub i64 %.pre-phi, %i.ec                ; 2 uses
  %i.ee = sdiv exact i64 %i.ed, 20
  %i.ef = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ee, i1 true)
  %i.eg = shl nuw nsw i64 %i.ef, 1
  %i.eh = sub nuw nsw i64 126, %i.eg
  call void @_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEElNS1_5__ops15_Iter_comp_iterIPFbRKS5_SF_EEEEvT_SJ_T0_T1_(ptr noundef nonnull align 8 dead_on_return %4, ptr noundef nonnull align 8 dead_on_return %5, i64 noundef %i.eh, ptr nonnull @_ZN2cv8ximgproc13EdgeBoxesImpl12boxesCompareERKNS0_3BoxES4_)
  %i.ei = icmp sgt i64 %i.ed, 320
  %.ptr52.i = getelementptr inbounds i8, ptr %i.ea, i64 -20 ; 4 uses
  br i1 %i.ei, label %.lr.ph.i.preheader.i, label %bb.n

.lr.ph.i.preheader.i:                             ; preds = %bb.j
  %i.ej = getelementptr inbounds i8, ptr %i.ea, i64 -4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.m, %.lr.ph.i.preheader.i
  %indvar.i.i = phi i64 [ %indvar.next.i.i, %bb.m ], [ 0, %.lr.ph.i.preheader.i ] ; 2 uses
  %.sroa.010.018.i.idx.i = phi i64 [ %.sroa.010.018.i.add.i, %bb.m ], [ -20, %.lr.ph.i.preheader.i ] ; 3 uses
  %.sroa.010.018.i.ptr.i = getelementptr inbounds i8, ptr %i.ea, i64 %.sroa.010.018.i.idx.i ; 4 uses
  %.sroa.010.018.i.add.i = add nsw i64 %.sroa.010.018.i.idx.i, -20 ; 3 uses
  %.ptr.i = getelementptr inbounds i8, ptr %i.ea, i64 %.sroa.010.018.i.add.i ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.ptr.i, i64 16
  %i.el = load float, ptr %i.ek, align 4, !tbaa !161 ; 4 uses
  %i.em = load float, ptr %i.ej, align 4, !tbaa !161
  %i.en = fcmp olt float %i.el, %i.em
  br i1 %i.en, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.eo = mul nsw i64 %indvar.i.i, -20
  %i.ep = getelementptr i8, ptr %i.ea, i64 %i.eo
  %scevgep.i.i = getelementptr i8, ptr %i.ep, i64 -40
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %.ptr.i, i64 20, i1 false), !tbaa.struct !169
  %gepdiff.i = sub nsw i64 0, %.sroa.010.018.i.idx.i
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i, ptr noundef nonnull align 4 dereferenceable(1) %.sroa.010.018.i.ptr.i, i64 %gepdiff.i, i1 false), !noalias !189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.ptr52.i, ptr noundef nonnull align 4 dereferenceable(20) %3, i64 20, i1 false), !tbaa.struct !169
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.m

bb.l:                                             ; preds = %.lr.ph.i.i
  %.sroa.081.sroa.0.0.copyload = load <4 x i32>, ptr %.ptr.i, align 4
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i.ptr.i, i64 16
  %i.er = load float, ptr %i.eq, align 4, !tbaa !161
  %i.es = fcmp olt float %i.el, %i.er
  br i1 %i.es, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.l, %.lr.ph.i.i.i
  %.pn6.i.i.i = phi ptr [ %.sroa.01.0.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.010.018.i.ptr.i, %bb.l ] ; 4 uses
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %.pn6.i.i.i, i64 20 ; 2 uses
  %i.et = getelementptr inbounds i8, ptr %.pn6.i.i.i, i64 -20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.et, ptr noundef nonnull align 4 dereferenceable(20) %.pn6.i.i.i, i64 20, i1 false), !tbaa.struct !169
  %i.eu = getelementptr inbounds nuw i8, ptr %.pn6.i.i.i, i64 36
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !161
  %i.ew = fcmp olt float %i.el, %i.ev
  br i1 %i.ew, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i.i, !llvm.loop !200

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.l
  %.sroa.0.1.ptr.i.i = phi ptr [ %.sroa.010.018.i.ptr.i, %bb.l ], [ %.sroa.01.0.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.ex = getelementptr inbounds i8, ptr %.sroa.0.1.ptr.i.i, i64 -20
  store <4 x i32> %.sroa.081.sroa.0.0.copyload, ptr %i.ex, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %.sroa.0.1.ptr.i.i, i64 -4
  store float %i.el, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !55
  br label %bb.m

bb.m:                                             ; preds = %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i.i, %bb.k
  %.not.i.i59 = icmp eq i64 %.sroa.010.018.i.add.i, -320
  %indvar.next.i.i = add nuw nsw i64 %indvar.i.i, 1
  br i1 %.not.i.i59, label %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops15_Iter_comp_iterIPFbRKS5_SF_EEEEvT_SJ_T0_.exit.i, label %.lr.ph.i.i, !llvm.loop !201

_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops15_Iter_comp_iterIPFbRKS5_SF_EEEEvT_SJ_T0_.exit.i: ; preds = %bb.m
  %i.ey = getelementptr inbounds i8, ptr %i.ea, i64 -320 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.ey, %i.eb
  br i1 %.not7.i.i, label %_ZSt4sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEEPFbRKS5_SD_EEvT_SG_T0_.exit, label %.lr.ph.i4.i

.lr.ph.i4.i:                                      ; preds = %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops15_Iter_comp_iterIPFbRKS5_SF_EEEEvT_SJ_T0_.exit.i, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i5.i
  %.sroa.05.08.i.i = phi ptr [ %i.ez, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i5.i ], [ %i.ey, %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops15_Iter_comp_iterIPFbRKS5_SF_EEEEvT_SJ_T0_.exit.i ] ; 5 uses
  %i.ez = getelementptr inbounds i8, ptr %.sroa.05.08.i.i, i64 -20 ; 3 uses
  %.sroa.084.sroa.0.0.copyload = load <4 x i32>, ptr %i.ez, align 4
  %.sroa.485.0..sroa_idx = getelementptr inbounds i8, ptr %.sroa.05.08.i.i, i64 -4
  %.sroa.485.0.copyload = load float, ptr %.sroa.485.0..sroa_idx, align 4, !tbaa !55 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i, i64 16
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !161
  %i.fc = fcmp olt float %.sroa.485.0.copyload, %i.fb
  br i1 %i.fc, label %.lr.ph.i.i8.i, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i5.i

.lr.ph.i.i8.i:                                    ; preds = %.lr.ph.i4.i, %.lr.ph.i.i8.i
  %.pn6.i.i9.i = phi ptr [ %.sroa.01.0.i.i10.i, %.lr.ph.i.i8.i ], [ %.sroa.05.08.i.i, %.lr.ph.i4.i ] ; 4 uses
  %.sroa.01.0.i.i10.i = getelementptr inbounds nuw i8, ptr %.pn6.i.i9.i, i64 20 ; 2 uses
  %i.fd = getelementptr inbounds i8, ptr %.pn6.i.i9.i, i64 -20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.fd, ptr noundef nonnull align 4 dereferenceable(20) %.pn6.i.i9.i, i64 20, i1 false), !tbaa.struct !169
  %i.fe = getelementptr inbounds nuw i8, ptr %.pn6.i.i9.i, i64 36
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !161
  %i.fg = fcmp olt float %.sroa.485.0.copyload, %i.ff
  br i1 %i.fg, label %.lr.ph.i.i8.i, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i5.i, !llvm.loop !200

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i5.i: ; preds = %.lr.ph.i.i8.i, %.lr.ph.i4.i
  %.sroa.0.1.in.i.i = phi ptr [ %.sroa.05.08.i.i, %.lr.ph.i4.i ], [ %.sroa.01.0.i.i10.i, %.lr.ph.i.i8.i ] ; 2 uses
  %i.fh = getelementptr inbounds i8, ptr %.sroa.0.1.in.i.i, i64 -20
  store <4 x i32> %.sroa.084.sroa.0.0.copyload, ptr %i.fh, align 4
  %.sroa.485.0..sroa_idx86 = getelementptr inbounds i8, ptr %.sroa.0.1.in.i.i, i64 -4
  store float %.sroa.485.0.copyload, ptr %.sroa.485.0..sroa_idx86, align 4, !tbaa !55
  %.not.i7.i = icmp eq ptr %i.ez, %i.eb
  br i1 %.not.i7.i, label %_ZSt4sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEEPFbRKS5_SD_EEvT_SG_T0_.exit, label %.lr.ph.i4.i, !llvm.loop !202

bb.n:                                             ; preds = %bb.j
  %.not17.i13.i = icmp eq ptr %.ptr52.i, %i.eb
  br i1 %.not17.i13.i, label %_ZSt4sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEEPFbRKS5_SD_EEvT_SG_T0_.exit, label %.lr.ph.i15.i.preheader

.lr.ph.i15.i.preheader:                           ; preds = %bb.n
  %i.fi = getelementptr inbounds i8, ptr %i.ea, i64 -4
  br label %.lr.ph.i15.i

.lr.ph.i15.i:                                     ; preds = %.lr.ph.i15.i.preheader, %bb.q
  %indvar.i16.i = phi i64 [ %indvar.next.i23.i, %bb.q ], [ 0, %.lr.ph.i15.i.preheader ] ; 2 uses
  %.sroa.010.018.i17.i = phi ptr [ %i.fl, %bb.q ], [ %.ptr52.i, %.lr.ph.i15.i.preheader ] ; 7 uses
  %i.fj = mul i64 %indvar.i16.i, -20
  %i.fk = getelementptr i8, ptr %i.ea, i64 %i.fj
  %scevgep.i18.i = getelementptr i8, ptr %i.fk, i64 -40
  %i.fl = getelementptr inbounds i8, ptr %.sroa.010.018.i17.i, i64 -20 ; 4 uses
  %i.fm = getelementptr inbounds i8, ptr %.sroa.010.018.i17.i, i64 -4
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !161 ; 4 uses
  %i.fo = load float, ptr %i.fi, align 4, !tbaa !161
  %i.fp = fcmp olt float %i.fn, %i.fo
  br i1 %i.fp, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph.i15.i
  %i.fq = ptrtoint ptr %.sroa.010.018.i17.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %i.fl, i64 20, i1 false), !tbaa.struct !169
  %i.fr = sub i64 %.pre-phi, %i.fq                ; 3 uses
  %i.fs = icmp sgt i64 %i.fr, 0
  br i1 %i.fs, label %.lr.ph.preheader.i.i.i.i.i.i28.i, label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEESB_ET0_T_SD_SC_.exit.i27.i

.lr.ph.preheader.i.i.i.i.i.i28.i:                 ; preds = %bb.o
  %i.ft = udiv i64 %i.fr, 20
  %i.fu = add nuw nsw i64 %i.ft, 1
  %i.fv = icmp samesign ugt i64 %i.fr, 19
  %umin.neg.i29.i = sext i1 %i.fv to i64
  %i.fw = add nsw i64 %i.fu, %umin.neg.i29.i
  %i.fx = mul nuw i64 %i.fw, 20
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %scevgep.i18.i, ptr nonnull align 4 %.sroa.010.018.i17.i, i64 %i.fx, i1 false), !noalias !203
  br label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEESB_ET0_T_SD_SC_.exit.i27.i

_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEESB_ET0_T_SD_SC_.exit.i27.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i28.i, %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.ptr52.i, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !169
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.q

bb.p:                                             ; preds = %.lr.ph.i15.i
  %.sroa.089.sroa.0.0.copyload = load <4 x i32>, ptr %i.fl, align 4
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i17.i, i64 16
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !161
  %i.ga = fcmp olt float %i.fn, %i.fz
  br i1 %i.ga, label %.lr.ph.i.i24.i, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i19.i

.lr.ph.i.i24.i:                                   ; preds = %bb.p, %.lr.ph.i.i24.i
  %.pn6.i.i25.i = phi ptr [ %.sroa.01.0.i.i26.i, %.lr.ph.i.i24.i ], [ %.sroa.010.018.i17.i, %bb.p ] ; 4 uses
  %.sroa.01.0.i.i26.i = getelementptr inbounds nuw i8, ptr %.pn6.i.i25.i, i64 20 ; 2 uses
  %i.gb = getelementptr inbounds i8, ptr %.pn6.i.i25.i, i64 -20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.gb, ptr noundef nonnull align 4 dereferenceable(20) %.pn6.i.i25.i, i64 20, i1 false), !tbaa.struct !169
  %i.gc = getelementptr inbounds nuw i8, ptr %.pn6.i.i25.i, i64 36
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !161
  %i.ge = fcmp olt float %i.fn, %i.gd
  br i1 %i.ge, label %.lr.ph.i.i24.i, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i19.i, !llvm.loop !200

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i19.i: ; preds = %.lr.ph.i.i24.i, %bb.p
  %.sroa.0.1.ptr.i20.i = phi ptr [ %.sroa.010.018.i17.i, %bb.p ], [ %.sroa.01.0.i.i26.i, %.lr.ph.i.i24.i ] ; 2 uses
  %i.gf = getelementptr inbounds i8, ptr %.sroa.0.1.ptr.i20.i, i64 -20
  store <4 x i32> %.sroa.089.sroa.0.0.copyload, ptr %i.gf, align 4
  %.sroa.490.0..sroa_idx91 = getelementptr inbounds i8, ptr %.sroa.0.1.ptr.i20.i, i64 -4
  store float %i.fn, ptr %.sroa.490.0..sroa_idx91, align 4, !tbaa !55
  br label %bb.q

bb.q:                                             ; preds = %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i19.i, %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEESB_ET0_T_SD_SC_.exit.i27.i
  %.not.i22.i = icmp eq ptr %i.fl, %i.eb
  %indvar.next.i23.i = add nuw nsw i64 %indvar.i16.i, 1
  br i1 %.not.i22.i, label %_ZSt4sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEEPFbRKS5_SD_EEvT_SG_T0_.exit, label %.lr.ph.i15.i, !llvm.loop !201

_ZSt4sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEEPFbRKS5_SD_EEvT_SG_T0_.exit: ; preds = %bb.q, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i5.i, %bb.n, %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops15_Iter_comp_iterIPFbRKS5_SF_EEEEvT_SJ_T0_.exit.i, %._crit_edge111
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.gg = load ptr, ptr %i.a, align 8, !tbaa !171 ; 2 uses
  %i.gh = load ptr, ptr %1, align 8, !tbaa !173   ; 2 uses
  %i.gi = ptrtoint ptr %i.gg to i64
  %i.gj = ptrtoint ptr %i.gh to i64
  %i.gk = sub i64 %i.gi, %i.gj
  %i.gl = sdiv exact i64 %i.gk, 20                ; 3 uses
  %i.gm = icmp ult i64 %i.gl, %.0.lcssa
  br i1 %i.gm, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZSt4sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEEPFbRKS5_SD_EEvT_SG_T0_.exit
  %i.gn = sub nuw nsw i64 %.0.lcssa, %i.gl
  call void @_ZNSt6vectorIN2cv8ximgproc3BoxESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.gn)
  br label %_ZNSt6vectorIN2cv8ximgproc3BoxESaIS2_EE6resizeEm.exit58

bb.s:                                             ; preds = %_ZSt4sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEEPFbRKS5_SD_EEvT_SG_T0_.exit
  %i.go = icmp ugt i64 %i.gl, %.0.lcssa
  br i1 %i.go, label %bb.t, label %_ZNSt6vectorIN2cv8ximgproc3BoxESaIS2_EE6resizeEm.exit58

bb.t:                                             ; preds = %bb.s
  %i.gp = getelementptr inbounds nuw [20 x i8], ptr %i.gh, i64 %.0.lcssa ; 2 uses
  %.not.i.i56 = icmp eq ptr %i.gg, %i.gp
  br i1 %.not.i.i56, label %_ZNSt6vectorIN2cv8ximgproc3BoxESaIS2_EE6resizeEm.exit58, label %_ZSt8_DestroyIPN2cv8ximgproc3BoxES2_EvT_S4_RSaIT0_E.exit.i.i57

_ZSt8_DestroyIPN2cv8ximgproc3BoxES2_EvT_S4_RSaIT0_E.exit.i.i57: ; preds = %bb.t
  store ptr %i.gp, ptr %i.a, align 8, !tbaa !171
  br label %_ZNSt6vectorIN2cv8ximgproc3BoxESaIS2_EE6resizeEm.exit58

_ZNSt6vectorIN2cv8ximgproc3BoxESaIS2_EE6resizeEm.exit58: ; preds = %bb.r, %bb.s, %bb.t, %_ZSt8_DestroyIPN2cv8ximgproc3BoxES2_EvT_S4_RSaIT0_E.exit.i.i57
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2cv8ximgproc13EdgeBoxesImpl12boxesCompareERKNS0_3BoxES4_(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef nonnull align 4 dereferenceable(20) %1) #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load float, ptr %i.a, align 4, !tbaa !161
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load float, ptr %i.c, align 4, !tbaa !161
  %i.e = fcmp olt float %i.b, %i.d
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef float @_ZN2cv8ximgproc13EdgeBoxesImpl12boxesOverlapERNS0_3BoxES3_(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(2132) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %2) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !156  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !158  ; 3 uses
  %i.e = add nsw i32 %i.d, %i.b
  %i.f = load i32, ptr %1, align 4, !tbaa !159    ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i32, ptr %i.g, align 4, !tbaa !160  ; 3 uses
  %i.i = add nsw i32 %i.h, %i.f
  %.not = icmp sgt i32 %i.d, 0
  %.not28 = icmp sgt i32 %i.h, 0
  %or.cond = select i1 %.not, i1 %.not28, i1 false
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !156  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !158  ; 2 uses
  %i.n = add nsw i32 %i.m, %i.k                   ; 2 uses
  %i.o = load i32, ptr %2, align 4, !tbaa !159    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !160  ; 2 uses
  %i.r = add nsw i32 %i.q, %i.o                   ; 2 uses
  %.not29 = icmp slt i32 %i.b, %i.n
  %.not30 = icmp slt i32 %i.f, %i.r
  %or.cond58 = select i1 %.not29, i1 %.not30, i1 false
  br i1 %or.cond58, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = uitofp nneg i32 %i.h to float
  %i.t = uitofp nneg i32 %i.d to float
  %i.u = fmul nnan float %i.t, %i.s
  %i.v = tail call i32 @llvm.smax.i32(i32 %i.b, i32 %i.k)
  %.sroa.speculated49 = tail call i32 @llvm.smin.i32(i32 %i.n, i32 %i.e)
  %i.w = sitofp i32 %i.q to float
  %i.x = sitofp i32 %i.m to float
  %i.y = fmul nnan float %i.x, %i.w
  %i.z = tail call i32 @llvm.smax.i32(i32 %i.f, i32 %i.o)
  %.sroa.speculated44 = tail call i32 @llvm.smin.i32(i32 %i.r, i32 %i.i)
  %i.aa = sub nsw i32 %.sroa.speculated49, %i.v
  %.sroa.speculated39 = tail call i32 @llvm.smax.i32(i32 %i.aa, i32 0)
  %i.ab = uitofp nneg i32 %.sroa.speculated39 to float
  %i.ac = sub nsw i32 %.sroa.speculated44, %i.z
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.ac, i32 0)
  %i.ad = uitofp nneg i32 %.sroa.speculated to float
  %i.ae = fmul nnan float %i.ab, %i.ad            ; 2 uses
  %i.af = fadd float %i.u, %i.y
  %i.ag = fsub float %i.af, %i.ae
  %i.ah = fdiv float %i.ae, %i.ag
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi float [ %i.ah, %bb.c ], [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %bb.b ]
  ret float %.0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv8ximgproc13EdgeBoxesImpl8boxesNmsERSt6vectorINS0_3BoxESaIS3_EEffi(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, float noundef %2, float noundef %3, i32 noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.cv::ximgproc::Box", align 4 ; 4 uses
  %6 = alloca %"struct.cv::ximgproc::Box", align 4 ; 4 uses
  %7 = alloca %"struct.cv::ximgproc::Box", align 4 ; 4 uses
  %8 = alloca %"struct.cv::ximgproc::Box", align 4 ; 4 uses
  %9 = alloca %"class.std::reverse_iterator", align 8 ; 4 uses
  %10 = alloca %"class.std::reverse_iterator", align 8 ; 4 uses
  %11 = alloca %"class.std::reverse_iterator", align 8 ; 4 uses
  %12 = alloca %"class.std::reverse_iterator", align 8 ; 4 uses
  %13 = alloca %"class.std::vector.25", align 8   ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !182, !noalias !214 ; 10 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !182, !noalias !217 ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  %.not.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i, label %_ZSt4sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEEPFbRKS5_SD_EEvT_SG_T0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  store i64 %i.d, ptr %11, align 8, !tbaa !182
  store i64 %i.e, ptr %12, align 8, !tbaa !182
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 20
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.i = shl nuw nsw i64 %i.h, 1
  %i.j = sub nuw nsw i64 126, %i.i
  call void @_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEElNS1_5__ops15_Iter_comp_iterIPFbRKS5_SF_EEEEvT_SJ_T0_T1_(ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, i64 noundef %i.j, ptr nonnull @_ZN2cv8ximgproc13EdgeBoxesImpl12boxesCompareERKNS0_3BoxES4_)
  %i.k = icmp sgt i64 %i.f, 320
  %.ptr52.i = getelementptr inbounds i8, ptr %i.b, i64 -20 ; 4 uses
  br i1 %i.k, label %.lr.ph.i.preheader.i, label %bb.f

.lr.ph.i.preheader.i:                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.b, i64 -4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.preheader.i
  %indvar.i.i = phi i64 [ %indvar.next.i.i, %bb.e ], [ 0, %.lr.ph.i.preheader.i ] ; 2 uses
  %.sroa.010.018.i.idx.i = phi i64 [ %.sroa.010.018.i.add.i, %bb.e ], [ -20, %.lr.ph.i.preheader.i ] ; 3 uses
  %.sroa.010.018.i.ptr.i = getelementptr inbounds i8, ptr %i.b, i64 %.sroa.010.018.i.idx.i ; 4 uses
  %.sroa.010.018.i.add.i = add nsw i64 %.sroa.010.018.i.idx.i, -20 ; 3 uses
  %.ptr.i = getelementptr inbounds i8, ptr %i.b, i64 %.sroa.010.018.i.add.i ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.ptr.i, i64 16
  %i.n = load float, ptr %i.m, align 4, !tbaa !161 ; 4 uses
  %i.o = load float, ptr %i.l, align 4, !tbaa !161
  %i.p = fcmp olt float %i.n, %i.o
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.q = mul nsw i64 %indvar.i.i, -20
  %i.r = getelementptr i8, ptr %i.b, i64 %i.q
  %scevgep.i.i = getelementptr i8, ptr %i.r, i64 -40
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %8, ptr noundef nonnull align 4 dereferenceable(20) %.ptr.i, i64 20, i1 false), !tbaa.struct !169
  %gepdiff.i = sub nsw i64 0, %.sroa.010.018.i.idx.i
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i, ptr noundef nonnull align 4 dereferenceable(1) %.sroa.010.018.i.ptr.i, i64 %gepdiff.i, i1 false), !noalias !220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.ptr52.i, ptr noundef nonnull align 4 dereferenceable(20) %8, i64 20, i1 false), !tbaa.struct !169
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i
  %.sroa.0160.sroa.0.0.copyload = load <4 x i32>, ptr %.ptr.i, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i.ptr.i, i64 16
  %i.t = load float, ptr %i.s, align 4, !tbaa !161
  %i.u = fcmp olt float %i.n, %i.t
  br i1 %i.u, label %.lr.ph.i.i.i97, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i.i

.lr.ph.i.i.i97:                                   ; preds = %bb.d, %.lr.ph.i.i.i97
  %.pn6.i.i.i = phi ptr [ %.sroa.01.0.i.i.i, %.lr.ph.i.i.i97 ], [ %.sroa.010.018.i.ptr.i, %bb.d ] ; 4 uses
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %.pn6.i.i.i, i64 20 ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %.pn6.i.i.i, i64 -20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.v, ptr noundef nonnull align 4 dereferenceable(20) %.pn6.i.i.i, i64 20, i1 false), !tbaa.struct !169
  %i.w = getelementptr inbounds nuw i8, ptr %.pn6.i.i.i, i64 36
  %i.x = load float, ptr %i.w, align 4, !tbaa !161
  %i.y = fcmp olt float %i.n, %i.x
  br i1 %i.y, label %.lr.ph.i.i.i97, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i.i, !llvm.loop !200

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i.i: ; preds = %.lr.ph.i.i.i97, %bb.d
  %.sroa.0.1.ptr.i.i = phi ptr [ %.sroa.010.018.i.ptr.i, %bb.d ], [ %.sroa.01.0.i.i.i, %.lr.ph.i.i.i97 ] ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %.sroa.0.1.ptr.i.i, i64 -20
  store <4 x i32> %.sroa.0160.sroa.0.0.copyload, ptr %i.z, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %.sroa.0.1.ptr.i.i, i64 -4
  store float %i.n, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !55
  br label %bb.e

bb.e:                                             ; preds = %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i.i, %bb.c
  %.not.i.i96 = icmp eq i64 %.sroa.010.018.i.add.i, -320
  %indvar.next.i.i = add nuw nsw i64 %indvar.i.i, 1
  br i1 %.not.i.i96, label %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops15_Iter_comp_iterIPFbRKS5_SF_EEEEvT_SJ_T0_.exit.i, label %.lr.ph.i.i, !llvm.loop !201

_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops15_Iter_comp_iterIPFbRKS5_SF_EEEEvT_SJ_T0_.exit.i: ; preds = %bb.e
  %i.aa = getelementptr inbounds i8, ptr %i.b, i64 -320 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.aa, %i.c
  br i1 %.not7.i.i, label %_ZSt4sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEEPFbRKS5_SD_EEvT_SG_T0_.exit, label %.lr.ph.i4.i

.lr.ph.i4.i:                                      ; preds = %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops15_Iter_comp_iterIPFbRKS5_SF_EEEEvT_SJ_T0_.exit.i, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i5.i
  %.sroa.05.08.i.i = phi ptr [ %i.ab, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i5.i ], [ %i.aa, %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops15_Iter_comp_iterIPFbRKS5_SF_EEEEvT_SJ_T0_.exit.i ] ; 5 uses
  %i.ab = getelementptr inbounds i8, ptr %.sroa.05.08.i.i, i64 -20 ; 3 uses
  %.sroa.0163.sroa.0.0.copyload = load <4 x i32>, ptr %i.ab, align 4
  %.sroa.4164.0..sroa_idx = getelementptr inbounds i8, ptr %.sroa.05.08.i.i, i64 -4
  %.sroa.4164.0.copyload = load float, ptr %.sroa.4164.0..sroa_idx, align 4, !tbaa !55 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i, i64 16
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !161
  %i.ae = fcmp olt float %.sroa.4164.0.copyload, %i.ad
  br i1 %i.ae, label %.lr.ph.i.i8.i, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i5.i

.lr.ph.i.i8.i:                                    ; preds = %.lr.ph.i4.i, %.lr.ph.i.i8.i
  %.pn6.i.i9.i = phi ptr [ %.sroa.01.0.i.i10.i, %.lr.ph.i.i8.i ], [ %.sroa.05.08.i.i, %.lr.ph.i4.i ] ; 4 uses
  %.sroa.01.0.i.i10.i = getelementptr inbounds nuw i8, ptr %.pn6.i.i9.i, i64 20 ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %.pn6.i.i9.i, i64 -20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.af, ptr noundef nonnull align 4 dereferenceable(20) %.pn6.i.i9.i, i64 20, i1 false), !tbaa.struct !169
  %i.ag = getelementptr inbounds nuw i8, ptr %.pn6.i.i9.i, i64 36
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !161
  %i.ai = fcmp olt float %.sroa.4164.0.copyload, %i.ah
  br i1 %i.ai, label %.lr.ph.i.i8.i, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i5.i, !llvm.loop !200

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i5.i: ; preds = %.lr.ph.i.i8.i, %.lr.ph.i4.i
  %.sroa.0.1.in.i.i = phi ptr [ %.sroa.05.08.i.i, %.lr.ph.i4.i ], [ %.sroa.01.0.i.i10.i, %.lr.ph.i.i8.i ] ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %.sroa.0.1.in.i.i, i64 -20
  store <4 x i32> %.sroa.0163.sroa.0.0.copyload, ptr %i.aj, align 4
  %.sroa.4164.0..sroa_idx165 = getelementptr inbounds i8, ptr %.sroa.0.1.in.i.i, i64 -4
  store float %.sroa.4164.0.copyload, ptr %.sroa.4164.0..sroa_idx165, align 4, !tbaa !55
  %.not.i7.i = icmp eq ptr %i.ab, %i.c
  br i1 %.not.i7.i, label %_ZSt4sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEEPFbRKS5_SD_EEvT_SG_T0_.exit, label %.lr.ph.i4.i, !llvm.loop !202

bb.f:                                             ; preds = %bb.b
  %.not17.i13.i = icmp eq ptr %.ptr52.i, %i.c
  br i1 %.not17.i13.i, label %_ZSt4sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEEPFbRKS5_SD_EEvT_SG_T0_.exit, label %.lr.ph.i15.i.preheader

.lr.ph.i15.i.preheader:                           ; preds = %bb.f
  %i.ak = getelementptr inbounds i8, ptr %i.b, i64 -4
  br label %.lr.ph.i15.i

.lr.ph.i15.i:                                     ; preds = %.lr.ph.i15.i.preheader, %bb.i
  %indvar.i16.i = phi i64 [ %indvar.next.i23.i, %bb.i ], [ 0, %.lr.ph.i15.i.preheader ] ; 2 uses
  %.sroa.010.018.i17.i = phi ptr [ %i.an, %bb.i ], [ %.ptr52.i, %.lr.ph.i15.i.preheader ] ; 7 uses
  %i.al = mul i64 %indvar.i16.i, -20
  %i.am = getelementptr i8, ptr %i.b, i64 %i.al
  %scevgep.i18.i = getelementptr i8, ptr %i.am, i64 -40
  %i.an = getelementptr inbounds i8, ptr %.sroa.010.018.i17.i, i64 -20 ; 4 uses
  %i.ao = getelementptr inbounds i8, ptr %.sroa.010.018.i17.i, i64 -4
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !161 ; 4 uses
  %i.aq = load float, ptr %i.ak, align 4, !tbaa !161
  %i.ar = fcmp olt float %i.ap, %i.aq
  br i1 %i.ar, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i15.i
  %i.as = ptrtoint ptr %.sroa.010.018.i17.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %7, ptr noundef nonnull align 4 dereferenceable(20) %i.an, i64 20, i1 false), !tbaa.struct !169
  %i.at = sub i64 %i.d, %i.as                     ; 3 uses
  %i.au = icmp sgt i64 %i.at, 0
  br i1 %i.au, label %.lr.ph.preheader.i.i.i.i.i.i28.i, label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEESB_ET0_T_SD_SC_.exit.i27.i

.lr.ph.preheader.i.i.i.i.i.i28.i:                 ; preds = %bb.g
  %i.av = udiv i64 %i.at, 20
  %i.aw = add nuw nsw i64 %i.av, 1
  %i.ax = icmp samesign ugt i64 %i.at, 19
  %umin.neg.i29.i = sext i1 %i.ax to i64
  %i.ay = add nsw i64 %i.aw, %umin.neg.i29.i
  %i.az = mul nuw i64 %i.ay, 20
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %scevgep.i18.i, ptr nonnull align 4 %.sroa.010.018.i17.i, i64 %i.az, i1 false), !noalias !231
  br label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEESB_ET0_T_SD_SC_.exit.i27.i

_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEESB_ET0_T_SD_SC_.exit.i27.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i28.i, %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.ptr52.i, ptr noundef nonnull align 4 dereferenceable(20) %7, i64 20, i1 false), !tbaa.struct !169
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph.i15.i
  %.sroa.0168.sroa.0.0.copyload = load <4 x i32>, ptr %i.an, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i17.i, i64 16
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !161
  %i.bc = fcmp olt float %i.ap, %i.bb
  br i1 %i.bc, label %.lr.ph.i.i24.i, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i19.i

.lr.ph.i.i24.i:                                   ; preds = %bb.h, %.lr.ph.i.i24.i
  %.pn6.i.i25.i = phi ptr [ %.sroa.01.0.i.i26.i, %.lr.ph.i.i24.i ], [ %.sroa.010.018.i17.i, %bb.h ] ; 4 uses
  %.sroa.01.0.i.i26.i = getelementptr inbounds nuw i8, ptr %.pn6.i.i25.i, i64 20 ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %.pn6.i.i25.i, i64 -20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bd, ptr noundef nonnull align 4 dereferenceable(20) %.pn6.i.i25.i, i64 20, i1 false), !tbaa.struct !169
  %i.be = getelementptr inbounds nuw i8, ptr %.pn6.i.i25.i, i64 36
  %i.bf = load float, ptr %i.be, align 4, !tbaa !161
  %i.bg = fcmp olt float %i.ap, %i.bf
  br i1 %i.bg, label %.lr.ph.i.i24.i, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i19.i, !llvm.loop !200

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i19.i: ; preds = %.lr.ph.i.i24.i, %bb.h
  %.sroa.0.1.ptr.i20.i = phi ptr [ %.sroa.010.018.i17.i, %bb.h ], [ %.sroa.01.0.i.i26.i, %.lr.ph.i.i24.i ] ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %.sroa.0.1.ptr.i20.i, i64 -20
  store <4 x i32> %.sroa.0168.sroa.0.0.copyload, ptr %i.bh, align 4
  %.sroa.4169.0..sroa_idx170 = getelementptr inbounds i8, ptr %.sroa.0.1.ptr.i20.i, i64 -4
  store float %i.ap, ptr %.sroa.4169.0..sroa_idx170, align 4, !tbaa !55
  br label %bb.i

bb.i:                                             ; preds = %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i19.i, %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEESB_ET0_T_SD_SC_.exit.i27.i
  %.not.i22.i = icmp eq ptr %i.an, %i.c
  %indvar.next.i23.i = add nuw nsw i64 %indvar.i16.i, 1
  br i1 %.not.i22.i, label %_ZSt4sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEEPFbRKS5_SD_EEvT_SG_T0_.exit, label %.lr.ph.i15.i, !llvm.loop !201

_ZSt4sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEEPFbRKS5_SD_EEvT_SG_T0_.exit: ; preds = %bb.i, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i5.i, %bb.f, %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops15_Iter_comp_iterIPFbRKS5_SF_EEEEvT_SJ_T0_.exit.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %i.bi = fcmp ogt float %2, 9.900000e-01
  br i1 %i.bi, label %bb.aj, label %_ZNKSt6vectorIS_IN2cv8ximgproc3BoxESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorIS_IN2cv8ximgproc3BoxESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit.i: ; preds = %_ZSt4sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEEPFbRKS5_SD_EEvT_SG_T0_.exit
  %i.bj = fdiv float 1.000000e+00, %2
  %i.bk = call noundef float @logf(float noundef %i.bj) #18 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.bm = invoke noalias noundef nonnull dereferenceable(240024) ptr @_Znwm(i64 noundef 240024) #21
          to label %.noexc103 unwind label %bb.n  ; 8 uses

.noexc103:                                        ; preds = %_ZNKSt6vectorIS_IN2cv8ximgproc3BoxESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit.i
  %i.bn = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(240024) %i.bm, i8 0, i64 240024, i1 false)
  store ptr %i.bm, ptr %13, align 8, !tbaa !242
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 240024 ; 2 uses
  store ptr %i.bo, ptr %i.bl, align 8, !tbaa !245
  store ptr %i.bo, ptr %i.bn, align 8, !tbaa !246
  %i.bp = load ptr, ptr %i.a, align 8, !tbaa !171 ; 2 uses
  %i.bq = load ptr, ptr %1, align 8, !tbaa !173   ; 2 uses
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = sdiv exact i64 %i.bt, 20                ; 3 uses
  %i.bv = trunc i64 %i.bu to i32
  %i.bw = icmp sgt i32 %i.bv, 0
  %i.bx = icmp sgt i32 %4, 0
  %i.by = and i1 %i.bw, %i.bx
  br i1 %i.by, label %.lr.ph212, label %._crit_edge.thread

.lr.ph212:                                        ; preds = %.noexc103
  %i.bz = fcmp olt float %3, 1.000000e+00
  %i.ca = and i64 %i.bu, 2147483647
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph212, %.thread
  %indvars.iv229 = phi i64 [ 0, %.lr.ph212 ], [ %indvars.iv.next230, %.thread ] ; 2 uses
  %.064211 = phi i32 [ 1, %.lr.ph212 ], [ %.165, %.thread ] ; 8 uses
  %.066210 = phi i32 [ 0, %.lr.ph212 ], [ %.167190, %.thread ] ; 2 uses
  %.079207 = phi float [ %2, %.lr.ph212 ], [ %.180, %.thread ] ; 6 uses
  %i.cb = load ptr, ptr %1, align 8, !tbaa !173
  %i.cc = getelementptr inbounds nuw [20 x i8], ptr %i.cb, i64 %indvars.iv229 ; 6 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !160 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !158 ; 4 uses
  %i.ch = mul nsw i32 %i.cg, %i.ce
  %i.ci = sitofp i32 %i.ch to float
  %i.cj = call noundef float @logf(float noundef %i.ci) #18
  %i.ck = fdiv float %i.cj, %i.bk
  %i.cl = call noundef float @llvm.ceil.f32(float %i.ck)
  %i.cm = fptosi float %i.cl to i32               ; 2 uses
  %i.cn = sub nsw i32 10000, %.064211
end_hunk_0
begin_hunk_1_@_ZN2cv8ximgproc13EdgeBoxesImpl8boxesNmsERSt6vectorINS0_3BoxESaIS3_EEffi:bb.a
  br i1 %i.fo, label %bb.q, label %_ZNKSt6vectorIN2cv8ximgproc3BoxESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #20
          to label %.noexc87 unwind label %.loopexit.split-lp

.noexc87:                                         ; preds = %bb.q
  unreachable

_ZNKSt6vectorIN2cv8ximgproc3BoxESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.p
  %i.fp = sdiv exact i64 %i.fn, 20                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.fp, i64 1)
  %i.fq = add nsw i64 %.sroa.speculated.i.i.i, %i.fp ; 2 uses
  %i.fr = icmp ult i64 %i.fq, %i.fp
  %i.fs = call i64 @llvm.umin.i64(i64 %i.fq, i64 461168601842738790)
  %i.ft = select i1 %i.fr, i64 461168601842738790, i64 %i.fs ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ft, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.fu = mul nuw nsw i64 %i.ft, 20
  %i.fv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fu) #21
          to label %.noexc88 unwind label %.loopexit194 ; 4 uses

.noexc88:                                         ; preds = %_ZNKSt6vectorIN2cv8ximgproc3BoxESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.fw = getelementptr inbounds i8, ptr %i.fv, i64 %i.fn ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.fw, ptr noundef nonnull align 4 dereferenceable(20) %i.cc, i64 20, i1 false), !tbaa.struct !169
  %i.fx = icmp sgt i64 %i.fn, 0
  br i1 %i.fx, label %bb.r, label %_ZNSt6vectorIN2cv8ximgproc3BoxESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.r:                                             ; preds = %.noexc88
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fv, ptr align 4 %i.fk, i64 %i.fn, i1 false)
  br label %_ZNSt6vectorIN2cv8ximgproc3BoxESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIN2cv8ximgproc3BoxESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.r, %.noexc88
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 20
  %.not.i17.i.i = icmp eq ptr %i.fk, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN2cv8ximgproc3BoxESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIN2cv8ximgproc3BoxESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fk, i64 noundef %i.fn) #19
  br label %_ZNSt6vectorIN2cv8ximgproc3BoxESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN2cv8ximgproc3BoxESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.s, %_ZNSt6vectorIN2cv8ximgproc3BoxESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.fv, ptr %i.fd, align 8, !tbaa !173
  store ptr %i.fy, ptr %i.fe, align 8, !tbaa !171
  %i.fz = getelementptr inbounds nuw [20 x i8], ptr %i.fv, i64 %i.ft
  store ptr %i.fz, ptr %i.fg, align 8, !tbaa !176
  br label %bb.t

bb.t:                                             ; preds = %bb.o, %_ZNSt6vectorIN2cv8ximgproc3BoxESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.ga = add nsw i32 %.066210, 1                 ; 2 uses
  %i.gb = fcmp ogt float %.079207, 5.000000e-01
  %or.cond3 = select i1 %i.bz, i1 %i.gb, i1 false
  br i1 %or.cond3, label %bb.u, label %.thread

bb.u:                                             ; preds = %bb.t
  %i.gc = fmul float %3, %.079207                 ; 2 uses
  %i.gd = fdiv float 1.000000e+00, %i.gc
  %i.ge = call noundef float @logf(float noundef %i.gd) #18
  %i.gf = fdiv float %i.ge, %i.bk
  %i.gg = call noundef float @llvm.ceil.f32(float %i.gf)
  %i.gh = fptosi float %i.gg to i32
  br label %.thread

.thread:                                          ; preds = %._crit_edge204, %bb.u, %bb.t
  %.167190 = phi i32 [ %i.ga, %bb.u ], [ %i.ga, %bb.t ], [ %.066210, %._crit_edge204 ] ; 3 uses
  %.180 = phi float [ %i.gc, %bb.u ], [ %.079207, %bb.t ], [ %.079207, %._crit_edge204 ]
  %.165 = phi i32 [ %i.gh, %bb.u ], [ %.064211, %bb.t ], [ %.064211, %._crit_edge204 ]
  %indvars.iv.next230 = add nuw nsw i64 %indvars.iv229, 1 ; 2 uses
  %i.gi = icmp samesign ult i64 %indvars.iv.next230, %i.ca
  %i.gj = icmp slt i32 %.167190, %4
  %i.gk = select i1 %i.gi, i1 %i.gj, i1 false
  br i1 %i.gk, label %bb.j, label %._crit_edge, !llvm.loop !251

._crit_edge:                                      ; preds = %.thread
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !171 ; 2 uses
  %.pre243 = load ptr, ptr %1, align 8, !tbaa !173 ; 2 uses
  %.pre244 = ptrtoint ptr %.pre to i64
  %.pre245 = ptrtoint ptr %.pre243 to i64
  %.pre247 = sub i64 %.pre244, %.pre245
  %.pre249 = sdiv exact i64 %.pre247, 20          ; 3 uses
  %i.gl = sext i32 %.167190 to i64                ; 3 uses
  %i.gm = icmp ult i64 %.pre249, %i.gl
  br i1 %i.gm, label %bb.v, label %._crit_edge.thread

bb.v:                                             ; preds = %._crit_edge
  %i.gn = sub nuw nsw i64 %i.gl, %.pre249
  invoke void @_ZNSt6vectorIN2cv8ximgproc3BoxESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.gn)
          to label %.preheader.preheader unwind label %bb.x

._crit_edge.thread:                               ; preds = %.noexc103, %._crit_edge
  %.066.lcssa293 = phi i64 [ %i.gl, %._crit_edge ], [ 0, %.noexc103 ] ; 2 uses
  %i.go = phi ptr [ %.pre, %._crit_edge ], [ %i.bp, %.noexc103 ]
  %i.gp = phi ptr [ %.pre243, %._crit_edge ], [ %i.bq, %.noexc103 ]
  %.pre-phi250292 = phi i64 [ %.pre249, %._crit_edge ], [ %i.bu, %.noexc103 ]
  %i.gq = icmp ugt i64 %.pre-phi250292, %.066.lcssa293
  br i1 %i.gq, label %bb.w, label %.preheader.preheader

bb.w:                                             ; preds = %._crit_edge.thread
  %i.gr = getelementptr inbounds nuw [20 x i8], ptr %i.gp, i64 %.066.lcssa293 ; 2 uses
  %.not.i.i89 = icmp eq ptr %i.go, %i.gr
  br i1 %.not.i.i89, label %.preheader.preheader, label %_ZSt8_DestroyIPN2cv8ximgproc3BoxES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv8ximgproc3BoxES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.w
  store ptr %i.gr, ptr %i.a, align 8, !tbaa !171
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.v, %._crit_edge.thread, %bb.w, %_ZSt8_DestroyIPN2cv8ximgproc3BoxES2_EvT_S4_RSaIT0_E.exit.i.i
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge217
  %indvars.iv239 = phi i64 [ %indvars.iv.next240, %._crit_edge217 ], [ 0, %.preheader.preheader ] ; 3 uses
  %.173219 = phi i32 [ %.274.lcssa, %._crit_edge217 ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.gs = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %indvars.iv239 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !171
  %i.gv = load ptr, ptr %i.gs, align 8, !tbaa !173 ; 2 uses
  %i.gw = ptrtoint ptr %i.gu to i64
  %i.gx = ptrtoint ptr %i.gv to i64
  %i.gy = sub i64 %i.gw, %i.gx
  %i.gz = sdiv exact i64 %i.gy, 20
  %i.ha = trunc i64 %i.gz to i32
  %i.hb = icmp sgt i32 %i.ha, 0
  br i1 %i.hb, label %.lr.ph216.preheader, label %._crit_edge217

.lr.ph216.preheader:                              ; preds = %.preheader
  %i.hc = sext i32 %.173219 to i64
  %i.hd = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %indvars.iv239 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  br label %.lr.ph216

.lr.ph216:                                        ; preds = %.lr.ph216.preheader, %.lr.ph216
  %indvars.iv234 = phi i64 [ %i.hc, %.lr.ph216.preheader ], [ %indvars.iv.next235, %.lr.ph216 ] ; 2 uses
  %indvars.iv232 = phi i64 [ 0, %.lr.ph216.preheader ], [ %indvars.iv.next233, %.lr.ph216 ] ; 2 uses
  %i.hf = phi ptr [ %i.gv, %.lr.ph216.preheader ], [ %i.hk, %.lr.ph216 ]
  %i.hg = getelementptr inbounds nuw [20 x i8], ptr %i.hf, i64 %indvars.iv232
  %indvars.iv.next235 = add nsw i64 %indvars.iv234, 1 ; 2 uses
  %i.hh = load ptr, ptr %1, align 8, !tbaa !173
  %i.hi = getelementptr inbounds nuw [20 x i8], ptr %i.hh, i64 %indvars.iv234
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.hi, ptr noundef nonnull align 4 dereferenceable(20) %i.hg, i64 20, i1 false), !tbaa.struct !169
  %indvars.iv.next233 = add nuw nsw i64 %indvars.iv232, 1 ; 2 uses
  %i.hj = load ptr, ptr %i.he, align 8, !tbaa !171
  %i.hk = load ptr, ptr %i.hd, align 8, !tbaa !173 ; 2 uses
  %i.hl = ptrtoint ptr %i.hj to i64
  %i.hm = ptrtoint ptr %i.hk to i64
  %i.hn = sub i64 %i.hl, %i.hm
  %i.ho = sdiv exact i64 %i.hn, 20
  %sext = shl i64 %i.ho, 32
  %i.hp = ashr exact i64 %sext, 32
  %i.hq = icmp slt i64 %indvars.iv.next233, %i.hp
  br i1 %i.hq, label %.lr.ph216, label %._crit_edge217.loopexit, !llvm.loop !252

bb.x:                                             ; preds = %bb.z, %bb.v
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

._crit_edge217.loopexit:                          ; preds = %.lr.ph216
  %i.hs = trunc nsw i64 %indvars.iv.next235 to i32
  br label %._crit_edge217

._crit_edge217:                                   ; preds = %._crit_edge217.loopexit, %.preheader
  %.274.lcssa = phi i32 [ %.173219, %.preheader ], [ %i.hs, %._crit_edge217.loopexit ]
  %indvars.iv.next240 = add nuw nsw i64 %indvars.iv239, 1 ; 2 uses
  %exitcond242.not = icmp eq i64 %indvars.iv.next240, 10000
  br i1 %exitcond242.not, label %bb.y, label %.preheader, !llvm.loop !253

bb.y:                                             ; preds = %._crit_edge217
  %i.ht = load ptr, ptr %i.a, align 8, !tbaa !182, !noalias !254 ; 10 uses
  %i.hu = load ptr, ptr %1, align 8, !tbaa !182, !noalias !257 ; 6 uses
  %i.hv = ptrtoint ptr %i.ht to i64               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %.not.i.i91 = icmp eq ptr %i.ht, %i.hu
  br i1 %.not.i.i91, label %.loopexit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.hw = ptrtoint ptr %i.hu to i64               ; 2 uses
  store i64 %i.hv, ptr %9, align 8, !tbaa !182
  store i64 %i.hw, ptr %10, align 8, !tbaa !182
  %i.hx = sub i64 %i.hv, %i.hw                    ; 2 uses
  %i.hy = sdiv exact i64 %i.hx, 20
  %i.hz = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.hy, i1 true)
  %i.ia = shl nuw nsw i64 %i.hz, 1
  %i.ib = sub nuw nsw i64 126, %i.ia
  invoke void @_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEElNS1_5__ops15_Iter_comp_iterIPFbRKS5_SF_EEEEvT_SJ_T0_T1_(ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, i64 noundef %i.ib, ptr nonnull @_ZN2cv8ximgproc13EdgeBoxesImpl12boxesCompareERKNS0_3BoxES4_)
          to label %.noexc92 unwind label %bb.x

.noexc92:                                         ; preds = %bb.z
  %i.ic = icmp sgt i64 %i.hx, 320
  %.ptr52.i123 = getelementptr inbounds i8, ptr %i.ht, i64 -20 ; 4 uses
  br i1 %i.ic, label %.lr.ph.i.preheader.i122, label %bb.ad

.lr.ph.i.preheader.i122:                          ; preds = %.noexc92
  %i.id = getelementptr inbounds i8, ptr %i.ht, i64 -4
  br label %.lr.ph.i.i124

.lr.ph.i.i124:                                    ; preds = %bb.ac, %.lr.ph.i.preheader.i122
  %indvar.i.i125 = phi i64 [ %indvar.next.i.i134, %bb.ac ], [ 0, %.lr.ph.i.preheader.i122 ] ; 2 uses
  %.sroa.010.018.i.idx.i126 = phi i64 [ %.sroa.010.018.i.add.i129, %bb.ac ], [ -20, %.lr.ph.i.preheader.i122 ] ; 3 uses
  %.sroa.010.018.i.ptr.i127 = getelementptr inbounds i8, ptr %i.ht, i64 %.sroa.010.018.i.idx.i126 ; 4 uses
  %.sroa.010.018.i.add.i129 = add nsw i64 %.sroa.010.018.i.idx.i126, -20 ; 3 uses
  %.ptr.i130 = getelementptr inbounds i8, ptr %i.ht, i64 %.sroa.010.018.i.add.i129 ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.ptr.i130, i64 16
  %i.if = load float, ptr %i.ie, align 4, !tbaa !161 ; 4 uses
  %i.ig = load float, ptr %i.id, align 4, !tbaa !161
  %i.ih = fcmp olt float %i.if, %i.ig
  br i1 %i.ih, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i.i124
  %i.ii = mul nsw i64 %indvar.i.i125, -20
  %i.ij = getelementptr i8, ptr %i.ht, i64 %i.ii
  %scevgep.i.i128 = getelementptr i8, ptr %i.ij, i64 -40
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %6, ptr noundef nonnull align 4 dereferenceable(20) %.ptr.i130, i64 20, i1 false), !tbaa.struct !169
  %gepdiff.i150 = sub nsw i64 0, %.sroa.010.018.i.idx.i126
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i128, ptr noundef nonnull align 4 dereferenceable(1) %.sroa.010.018.i.ptr.i127, i64 %gepdiff.i150, i1 false), !noalias !260
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.ptr52.i123, ptr noundef nonnull align 4 dereferenceable(20) %6, i64 20, i1 false), !tbaa.struct !169
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.ac

bb.ab:                                            ; preds = %.lr.ph.i.i124
  %.sroa.0173.sroa.0.0.copyload = load <4 x i32>, ptr %.ptr.i130, align 4
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i.ptr.i127, i64 16
  %i.il = load float, ptr %i.ik, align 4, !tbaa !161
  %i.im = fcmp olt float %i.if, %i.il
  br i1 %i.im, label %.lr.ph.i.i.i147, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i.i131

.lr.ph.i.i.i147:                                  ; preds = %bb.ab, %.lr.ph.i.i.i147
  %.pn6.i.i.i148 = phi ptr [ %.sroa.01.0.i.i.i149, %.lr.ph.i.i.i147 ], [ %.sroa.010.018.i.ptr.i127, %bb.ab ] ; 4 uses
  %.sroa.01.0.i.i.i149 = getelementptr inbounds nuw i8, ptr %.pn6.i.i.i148, i64 20 ; 2 uses
  %i.in = getelementptr inbounds i8, ptr %.pn6.i.i.i148, i64 -20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.in, ptr noundef nonnull align 4 dereferenceable(20) %.pn6.i.i.i148, i64 20, i1 false), !tbaa.struct !169
  %i.io = getelementptr inbounds nuw i8, ptr %.pn6.i.i.i148, i64 36
  %i.ip = load float, ptr %i.io, align 4, !tbaa !161
  %i.iq = fcmp olt float %i.if, %i.ip
  br i1 %i.iq, label %.lr.ph.i.i.i147, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i.i131, !llvm.loop !200

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i.i131: ; preds = %.lr.ph.i.i.i147, %bb.ab
  %.sroa.0.1.ptr.i.i132 = phi ptr [ %.sroa.010.018.i.ptr.i127, %bb.ab ], [ %.sroa.01.0.i.i.i149, %.lr.ph.i.i.i147 ] ; 2 uses
  %i.ir = getelementptr inbounds i8, ptr %.sroa.0.1.ptr.i.i132, i64 -20
  store <4 x i32> %.sroa.0173.sroa.0.0.copyload, ptr %i.ir, align 4
  %.sroa.4174.0..sroa_idx = getelementptr inbounds i8, ptr %.sroa.0.1.ptr.i.i132, i64 -4
  store float %i.if, ptr %.sroa.4174.0..sroa_idx, align 4, !tbaa !55
  br label %bb.ac

bb.ac:                                            ; preds = %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i.i131, %bb.aa
  %.not.i.i133 = icmp eq i64 %.sroa.010.018.i.add.i129, -320
  %indvar.next.i.i134 = add nuw nsw i64 %indvar.i.i125, 1
  br i1 %.not.i.i133, label %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops15_Iter_comp_iterIPFbRKS5_SF_EEEEvT_SJ_T0_.exit.i135, label %.lr.ph.i.i124, !llvm.loop !201

_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops15_Iter_comp_iterIPFbRKS5_SF_EEEEvT_SJ_T0_.exit.i135: ; preds = %bb.ac
  %i.is = getelementptr inbounds i8, ptr %i.ht, i64 -320 ; 2 uses
  %.not7.i.i138 = icmp eq ptr %i.is, %i.hu
  br i1 %.not7.i.i138, label %.loopexit, label %.lr.ph.i4.i139

.lr.ph.i4.i139:                                   ; preds = %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops15_Iter_comp_iterIPFbRKS5_SF_EEEEvT_SJ_T0_.exit.i135, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i5.i141
  %.sroa.05.08.i.i140 = phi ptr [ %i.it, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i5.i141 ], [ %i.is, %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops15_Iter_comp_iterIPFbRKS5_SF_EEEEvT_SJ_T0_.exit.i135 ] ; 5 uses
  %i.it = getelementptr inbounds i8, ptr %.sroa.05.08.i.i140, i64 -20 ; 3 uses
  %.sroa.0177.sroa.0.0.copyload = load <4 x i32>, ptr %i.it, align 4
  %.sroa.4178.0..sroa_idx = getelementptr inbounds i8, ptr %.sroa.05.08.i.i140, i64 -4
  %.sroa.4178.0.copyload = load float, ptr %.sroa.4178.0..sroa_idx, align 4, !tbaa !55 ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i140, i64 16
  %i.iv = load float, ptr %i.iu, align 4, !tbaa !161
  %i.iw = fcmp olt float %.sroa.4178.0.copyload, %i.iv
  br i1 %i.iw, label %.lr.ph.i.i8.i144, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i5.i141

.lr.ph.i.i8.i144:                                 ; preds = %.lr.ph.i4.i139, %.lr.ph.i.i8.i144
  %.pn6.i.i9.i145 = phi ptr [ %.sroa.01.0.i.i10.i146, %.lr.ph.i.i8.i144 ], [ %.sroa.05.08.i.i140, %.lr.ph.i4.i139 ] ; 4 uses
  %.sroa.01.0.i.i10.i146 = getelementptr inbounds nuw i8, ptr %.pn6.i.i9.i145, i64 20 ; 2 uses
  %i.ix = getelementptr inbounds i8, ptr %.pn6.i.i9.i145, i64 -20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ix, ptr noundef nonnull align 4 dereferenceable(20) %.pn6.i.i9.i145, i64 20, i1 false), !tbaa.struct !169
  %i.iy = getelementptr inbounds nuw i8, ptr %.pn6.i.i9.i145, i64 36
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !161
  %i.ja = fcmp olt float %.sroa.4178.0.copyload, %i.iz
  br i1 %i.ja, label %.lr.ph.i.i8.i144, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i5.i141, !llvm.loop !200

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i5.i141: ; preds = %.lr.ph.i.i8.i144, %.lr.ph.i4.i139
  %.sroa.0.1.in.i.i142 = phi ptr [ %.sroa.05.08.i.i140, %.lr.ph.i4.i139 ], [ %.sroa.01.0.i.i10.i146, %.lr.ph.i.i8.i144 ] ; 2 uses
  %i.jb = getelementptr inbounds i8, ptr %.sroa.0.1.in.i.i142, i64 -20
  store <4 x i32> %.sroa.0177.sroa.0.0.copyload, ptr %i.jb, align 4
  %.sroa.4178.0..sroa_idx179 = getelementptr inbounds i8, ptr %.sroa.0.1.in.i.i142, i64 -4
  store float %.sroa.4178.0.copyload, ptr %.sroa.4178.0..sroa_idx179, align 4, !tbaa !55
  %.not.i7.i143 = icmp eq ptr %i.it, %i.hu
  br i1 %.not.i7.i143, label %.loopexit, label %.lr.ph.i4.i139, !llvm.loop !202

bb.ad:                                            ; preds = %.noexc92
  %.not17.i13.i106 = icmp eq ptr %.ptr52.i123, %i.hu
  br i1 %.not17.i13.i106, label %.loopexit, label %.lr.ph.i15.i108.preheader

.lr.ph.i15.i108.preheader:                        ; preds = %bb.ad
  %i.jc = getelementptr inbounds i8, ptr %i.ht, i64 -4
  br label %.lr.ph.i15.i108

.lr.ph.i15.i108:                                  ; preds = %.lr.ph.i15.i108.preheader, %bb.ag
  %indvar.i16.i109 = phi i64 [ %indvar.next.i23.i115, %bb.ag ], [ 0, %.lr.ph.i15.i108.preheader ] ; 2 uses
  %.sroa.010.018.i17.i110 = phi ptr [ %i.jf, %bb.ag ], [ %.ptr52.i123, %.lr.ph.i15.i108.preheader ] ; 7 uses
  %i.jd = mul i64 %indvar.i16.i109, -20
  %i.je = getelementptr i8, ptr %i.ht, i64 %i.jd
  %scevgep.i18.i111 = getelementptr i8, ptr %i.je, i64 -40
  %i.jf = getelementptr inbounds i8, ptr %.sroa.010.018.i17.i110, i64 -20 ; 4 uses
  %i.jg = getelementptr inbounds i8, ptr %.sroa.010.018.i17.i110, i64 -4
  %i.jh = load float, ptr %i.jg, align 4, !tbaa !161 ; 4 uses
  %i.ji = load float, ptr %i.jc, align 4, !tbaa !161
  %i.jj = fcmp olt float %i.jh, %i.ji
  br i1 %i.jj, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.lr.ph.i15.i108
  %i.jk = ptrtoint ptr %.sroa.010.018.i17.i110 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %5, ptr noundef nonnull align 4 dereferenceable(20) %i.jf, i64 20, i1 false), !tbaa.struct !169
  %i.jl = sub i64 %i.hv, %i.jk                    ; 3 uses
  %i.jm = icmp sgt i64 %i.jl, 0
  br i1 %i.jm, label %.lr.ph.preheader.i.i.i.i.i.i28.i120, label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEESB_ET0_T_SD_SC_.exit.i27.i119

.lr.ph.preheader.i.i.i.i.i.i28.i120:              ; preds = %bb.ae
  %i.jn = udiv i64 %i.jl, 20
  %i.jo = add nuw nsw i64 %i.jn, 1
  %i.jp = icmp samesign ugt i64 %i.jl, 19
  %umin.neg.i29.i121 = sext i1 %i.jp to i64
  %i.jq = add nsw i64 %i.jo, %umin.neg.i29.i121
  %i.jr = mul nuw i64 %i.jq, 20
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %scevgep.i18.i111, ptr nonnull align 4 %.sroa.010.018.i17.i110, i64 %i.jr, i1 false), !noalias !271
  br label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEESB_ET0_T_SD_SC_.exit.i27.i119

_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEESB_ET0_T_SD_SC_.exit.i27.i119: ; preds = %.lr.ph.preheader.i.i.i.i.i.i28.i120, %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.ptr52.i123, ptr noundef nonnull align 4 dereferenceable(20) %5, i64 20, i1 false), !tbaa.struct !169
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.ag

bb.af:                                            ; preds = %.lr.ph.i15.i108
  %.sroa.0182.sroa.0.0.copyload = load <4 x i32>, ptr %i.jf, align 4
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i17.i110, i64 16
  %i.jt = load float, ptr %i.js, align 4, !tbaa !161
  %i.ju = fcmp olt float %i.jh, %i.jt
  br i1 %i.ju, label %.lr.ph.i.i24.i116, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i19.i112

.lr.ph.i.i24.i116:                                ; preds = %bb.af, %.lr.ph.i.i24.i116
  %.pn6.i.i25.i117 = phi ptr [ %.sroa.01.0.i.i26.i118, %.lr.ph.i.i24.i116 ], [ %.sroa.010.018.i17.i110, %bb.af ] ; 4 uses
  %.sroa.01.0.i.i26.i118 = getelementptr inbounds nuw i8, ptr %.pn6.i.i25.i117, i64 20 ; 2 uses
  %i.jv = getelementptr inbounds i8, ptr %.pn6.i.i25.i117, i64 -20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.jv, ptr noundef nonnull align 4 dereferenceable(20) %.pn6.i.i25.i117, i64 20, i1 false), !tbaa.struct !169
  %i.jw = getelementptr inbounds nuw i8, ptr %.pn6.i.i25.i117, i64 36
  %i.jx = load float, ptr %i.jw, align 4, !tbaa !161
  %i.jy = fcmp olt float %i.jh, %i.jx
  br i1 %i.jy, label %.lr.ph.i.i24.i116, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i19.i112, !llvm.loop !200

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i19.i112: ; preds = %.lr.ph.i.i24.i116, %bb.af
  %.sroa.0.1.ptr.i20.i113 = phi ptr [ %.sroa.010.018.i17.i110, %bb.af ], [ %.sroa.01.0.i.i26.i118, %.lr.ph.i.i24.i116 ] ; 2 uses
  %i.jz = getelementptr inbounds i8, ptr %.sroa.0.1.ptr.i20.i113, i64 -20
  store <4 x i32> %.sroa.0182.sroa.0.0.copyload, ptr %i.jz, align 4
  %.sroa.4183.0..sroa_idx184 = getelementptr inbounds i8, ptr %.sroa.0.1.ptr.i20.i113, i64 -4
  store float %i.jh, ptr %.sroa.4183.0..sroa_idx184, align 4, !tbaa !55
  br label %bb.ag

bb.ag:                                            ; preds = %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i19.i112, %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEESB_ET0_T_SD_SC_.exit.i27.i119
  %.not.i22.i114 = icmp eq ptr %i.jf, %i.hu
  %indvar.next.i23.i115 = add nuw nsw i64 %indvar.i16.i109, 1
  br i1 %.not.i22.i114, label %.loopexit, label %.lr.ph.i15.i108, !llvm.loop !201

.loopexit:                                        ; preds = %bb.ag, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i5.i141, %bb.y, %bb.ad, %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops15_Iter_comp_iterIPFbRKS5_SF_EEEEvT_SJ_T0_.exit.i135
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.ka = load ptr, ptr %13, align 8, !tbaa !242  ; 5 uses
  %i.kb = load ptr, ptr %i.bl, align 8, !tbaa !245 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ka, %i.kb
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN2cv8ximgproc3BoxESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.loopexit, %_ZSt8_DestroyISt6vectorIN2cv8ximgproc3BoxESaIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ki, %_ZSt8_DestroyISt6vectorIN2cv8ximgproc3BoxESaIS3_EEEvPT_.exit.i.i.i ], [ %i.ka, %.loopexit ] ; 3 uses
  %i.kc = load ptr, ptr %.05.i.i.i, align 8, !tbaa !173 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.kc, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN2cv8ximgproc3BoxESaIS3_EEEvPT_.exit.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i.i
  %i.kd = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !176
  %i.kf = ptrtoint ptr %i.ke to i64
  %i.kg = ptrtoint ptr %i.kc to i64
  %i.kh = sub i64 %i.kf, %i.kg
  call void @_ZdlPvm(ptr noundef nonnull %i.kc, i64 noundef %i.kh) #19
  br label %_ZSt8_DestroyISt6vectorIN2cv8ximgproc3BoxESaIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIN2cv8ximgproc3BoxESaIS3_EEEvPT_.exit.i.i.i: ; preds = %bb.ah, %.lr.ph.i.i.i
  %i.ki = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i95 = icmp eq ptr %i.ki, %i.kb
  br i1 %.not.i.i.i95, label %_ZSt8_DestroyIPSt6vectorIN2cv8ximgproc3BoxESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !282

_ZSt8_DestroyIPSt6vectorIN2cv8ximgproc3BoxESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorIN2cv8ximgproc3BoxESaIS3_EEEvPT_.exit.i.i.i, %.loopexit
  %.not.i.i1.i = icmp eq ptr %i.ka, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IN2cv8ximgproc3BoxESaIS2_EESaIS4_EED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv8ximgproc3BoxESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i
  %i.kj = load ptr, ptr %i.bn, align 8, !tbaa !246
  %i.kk = ptrtoint ptr %i.kj to i64
  %i.kl = ptrtoint ptr %i.ka to i64
  %i.km = sub i64 %i.kk, %i.kl
  call void @_ZdlPvm(ptr noundef nonnull %i.ka, i64 noundef %i.km) #19
  br label %_ZNSt6vectorIS_IN2cv8ximgproc3BoxESaIS2_EESaIS4_EED2Ev.exit

_ZNSt6vectorIS_IN2cv8ximgproc3BoxESaIS2_EESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv8ximgproc3BoxESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %bb.aj

bb.aj:                                            ; preds = %_ZSt4sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEEPFbRKS5_SD_EEvT_SG_T0_.exit, %_ZNSt6vectorIS_IN2cv8ximgproc3BoxESaIS2_EESaIS4_EED2Ev.exit
  ret void

bb.ak:                                            ; preds = %.loopexit194, %.loopexit.split-lp, %bb.x, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %i.fa, %bb.n ], [ %i.hr, %bb.x ], [ %lpad.loopexit, %.loopexit194 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6vectorIS_IN2cv8ximgproc3BoxESaIS2_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIS_IN2cv8ximgproc3BoxESaIS2_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_1
