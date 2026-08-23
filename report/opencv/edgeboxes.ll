Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/edgeboxes?download=true
inline.NumInlined: 1391
inline.NumDeleted: 525
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN2cv8ximgproc13EdgeBoxesImpl13scoreAllBoxesERSt6vectorINS0_3BoxESaIS3_EE:bb.a
  %i.bq = sitofp i32 %i.bp to float
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
  %i.ea = phi ptr [ %.pre117, %._crit_edge111.loopexit ], [ %i.ap, %._crit_edge106.split ] ; 7 uses
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
  %.ptr49.i = getelementptr inbounds i8, ptr %i.ea, i64 -20 ; 4 uses
  br i1 %i.ei, label %.lr.ph.i.preheader.i, label %bb.n

.lr.ph.i.preheader.i:                             ; preds = %bb.j
  %i.ej = getelementptr inbounds i8, ptr %i.ea, i64 -4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.m, %.lr.ph.i.preheader.i
  %.sroa.010.018.i.idx.i = phi i64 [ %.sroa.010.018.i.add.i, %bb.m ], [ -20, %.lr.ph.i.preheader.i ] ; 3 uses
  %.sroa.010.018.i.ptr.i = getelementptr inbounds i8, ptr %i.ea, i64 %.sroa.010.018.i.idx.i ; 4 uses
  %.sroa.010.018.i.add.i = add nsw i64 %.sroa.010.018.i.idx.i, -20 ; 3 uses
  %.ptr.i = getelementptr inbounds i8, ptr %i.ea, i64 %.sroa.010.018.i.add.i ; 4 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.ptr.i, i64 16
  %i.el = load float, ptr %i.ek, align 4, !tbaa !161 ; 4 uses
  %i.em = load float, ptr %i.ej, align 4, !tbaa !161
  %i.en = fcmp olt float %i.el, %i.em
  br i1 %i.en, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %.ptr.i, i64 20, i1 false), !tbaa.struct !169
  %gepdiff.i = sub nsw i64 0, %.sroa.010.018.i.idx.i
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.ptr.i, ptr noundef nonnull align 4 dereferenceable(1) %.sroa.010.018.i.ptr.i, i64 %gepdiff.i, i1 false), !noalias !189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.ptr49.i, ptr noundef nonnull align 4 dereferenceable(20) %3, i64 20, i1 false), !tbaa.struct !169
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.m

bb.l:                                             ; preds = %.lr.ph.i.i
  %.sroa.081.sroa.0.0.copyload = load <4 x i32>, ptr %.ptr.i, align 4
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i.ptr.i, i64 16
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !161
  %i.eq = fcmp olt float %i.el, %i.ep
  br i1 %i.eq, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.l, %.lr.ph.i.i.i
  %.pn6.i.i.i = phi ptr [ %.sroa.01.0.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.010.018.i.ptr.i, %bb.l ] ; 4 uses
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %.pn6.i.i.i, i64 20 ; 2 uses
  %i.er = getelementptr inbounds i8, ptr %.pn6.i.i.i, i64 -20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.er, ptr noundef nonnull align 4 dereferenceable(20) %.pn6.i.i.i, i64 20, i1 false), !tbaa.struct !169
  %i.es = getelementptr inbounds nuw i8, ptr %.pn6.i.i.i, i64 36
  %i.et = load float, ptr %i.es, align 4, !tbaa !161
  %i.eu = fcmp olt float %i.el, %i.et
  br i1 %i.eu, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i.i, !llvm.loop !200

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.l
  %.sroa.0.1.ptr.i.i = phi ptr [ %.sroa.010.018.i.ptr.i, %bb.l ], [ %.sroa.01.0.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.ev = getelementptr inbounds i8, ptr %.sroa.0.1.ptr.i.i, i64 -20
  store <4 x i32> %.sroa.081.sroa.0.0.copyload, ptr %i.ev, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %.sroa.0.1.ptr.i.i, i64 -4
  store float %i.el, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !55
  br label %bb.m

bb.m:                                             ; preds = %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i.i, %bb.k
  %.not.i.i59 = icmp eq i64 %.sroa.010.018.i.add.i, -320
  br i1 %.not.i.i59, label %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops15_Iter_comp_iterIPFbRKS5_SF_EEEEvT_SJ_T0_.exit.i, label %.lr.ph.i.i, !llvm.loop !201

_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops15_Iter_comp_iterIPFbRKS5_SF_EEEEvT_SJ_T0_.exit.i: ; preds = %bb.m
  %i.ew = getelementptr inbounds i8, ptr %i.ea, i64 -320 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.ew, %i.eb
  br i1 %.not7.i.i, label %_ZSt4sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEEPFbRKS5_SD_EEvT_SG_T0_.exit, label %.lr.ph.i4.i

.lr.ph.i4.i:                                      ; preds = %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops15_Iter_comp_iterIPFbRKS5_SF_EEEEvT_SJ_T0_.exit.i, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i5.i
  %.sroa.05.08.i.i = phi ptr [ %i.ex, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i5.i ], [ %i.ew, %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops15_Iter_comp_iterIPFbRKS5_SF_EEEEvT_SJ_T0_.exit.i ] ; 5 uses
  %i.ex = getelementptr inbounds i8, ptr %.sroa.05.08.i.i, i64 -20 ; 3 uses
  %.sroa.084.sroa.0.0.copyload = load <4 x i32>, ptr %i.ex, align 4
  %.sroa.485.0..sroa_idx = getelementptr inbounds i8, ptr %.sroa.05.08.i.i, i64 -4
  %.sroa.485.0.copyload = load float, ptr %.sroa.485.0..sroa_idx, align 4, !tbaa !55 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i, i64 16
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !161
  %i.fa = fcmp olt float %.sroa.485.0.copyload, %i.ez
  br i1 %i.fa, label %.lr.ph.i.i8.i, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i5.i

.lr.ph.i.i8.i:                                    ; preds = %.lr.ph.i4.i, %.lr.ph.i.i8.i
  %.pn6.i.i9.i = phi ptr [ %.sroa.01.0.i.i10.i, %.lr.ph.i.i8.i ], [ %.sroa.05.08.i.i, %.lr.ph.i4.i ] ; 4 uses
  %.sroa.01.0.i.i10.i = getelementptr inbounds nuw i8, ptr %.pn6.i.i9.i, i64 20 ; 2 uses
  %i.fb = getelementptr inbounds i8, ptr %.pn6.i.i9.i, i64 -20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.fb, ptr noundef nonnull align 4 dereferenceable(20) %.pn6.i.i9.i, i64 20, i1 false), !tbaa.struct !169
  %i.fc = getelementptr inbounds nuw i8, ptr %.pn6.i.i9.i, i64 36
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !161
  %i.fe = fcmp olt float %.sroa.485.0.copyload, %i.fd
  br i1 %i.fe, label %.lr.ph.i.i8.i, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i5.i, !llvm.loop !200

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i5.i: ; preds = %.lr.ph.i.i8.i, %.lr.ph.i4.i
  %.sroa.0.1.in.i.i = phi ptr [ %.sroa.05.08.i.i, %.lr.ph.i4.i ], [ %.sroa.01.0.i.i10.i, %.lr.ph.i.i8.i ] ; 2 uses
  %i.ff = getelementptr inbounds i8, ptr %.sroa.0.1.in.i.i, i64 -20
  store <4 x i32> %.sroa.084.sroa.0.0.copyload, ptr %i.ff, align 4
  %.sroa.485.0..sroa_idx86 = getelementptr inbounds i8, ptr %.sroa.0.1.in.i.i, i64 -4
  store float %.sroa.485.0.copyload, ptr %.sroa.485.0..sroa_idx86, align 4, !tbaa !55
  %.not.i7.i = icmp eq ptr %i.ex, %i.eb
  br i1 %.not.i7.i, label %_ZSt4sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEEPFbRKS5_SD_EEvT_SG_T0_.exit, label %.lr.ph.i4.i, !llvm.loop !202

bb.n:                                             ; preds = %bb.j
  %.not17.i13.i = icmp eq ptr %.ptr49.i, %i.eb
  br i1 %.not17.i13.i, label %_ZSt4sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEEPFbRKS5_SD_EEvT_SG_T0_.exit, label %.lr.ph.i15.i.preheader

.lr.ph.i15.i.preheader:                           ; preds = %bb.n
  %i.fg = getelementptr inbounds i8, ptr %i.ea, i64 -4
  br label %.lr.ph.i15.i

.lr.ph.i15.i:                                     ; preds = %.lr.ph.i15.i.preheader, %bb.q
  %.sroa.010.018.i16.i = phi ptr [ %i.fh, %bb.q ], [ %.ptr49.i, %.lr.ph.i15.i.preheader ] ; 7 uses
  %i.fh = getelementptr inbounds i8, ptr %.sroa.010.018.i16.i, i64 -20 ; 5 uses
  %i.fi = getelementptr inbounds i8, ptr %.sroa.010.018.i16.i, i64 -4
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !161 ; 4 uses
  %i.fk = load float, ptr %i.fg, align 4, !tbaa !161
  %i.fl = fcmp olt float %i.fj, %i.fk
  br i1 %i.fl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph.i15.i
  %i.fm = ptrtoint ptr %.sroa.010.018.i16.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %i.fh, i64 20, i1 false), !tbaa.struct !169
  %i.fn = sub i64 %.pre-phi, %i.fm                ; 3 uses
  %i.fo = icmp sgt i64 %i.fn, 0
  br i1 %i.fo, label %.lr.ph.preheader.i.i.i.i.i.i25.i, label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEESB_ET0_T_SD_SC_.exit.i24.i

.lr.ph.preheader.i.i.i.i.i.i25.i:                 ; preds = %bb.o
  %i.fp = udiv i64 %i.fn, 20
  %i.fq = add nuw nsw i64 %i.fp, 1
  %i.fr = icmp samesign ugt i64 %i.fn, 19
  %umin.neg.i26.i = sext i1 %i.fr to i64
  %i.fs = add nsw i64 %i.fq, %umin.neg.i26.i
  %i.ft = mul nuw i64 %i.fs, 20
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fh, ptr nonnull align 4 %.sroa.010.018.i16.i, i64 %i.ft, i1 false), !noalias !203
  br label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEESB_ET0_T_SD_SC_.exit.i24.i

_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEESB_ET0_T_SD_SC_.exit.i24.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i25.i, %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.ptr49.i, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !169
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.q

bb.p:                                             ; preds = %.lr.ph.i15.i
  %.sroa.089.sroa.0.0.copyload = load <4 x i32>, ptr %i.fh, align 4
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i16.i, i64 16
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !161
  %i.fw = fcmp olt float %i.fj, %i.fv
  br i1 %i.fw, label %.lr.ph.i.i21.i, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i17.i

.lr.ph.i.i21.i:                                   ; preds = %bb.p, %.lr.ph.i.i21.i
  %.pn6.i.i22.i = phi ptr [ %.sroa.01.0.i.i23.i, %.lr.ph.i.i21.i ], [ %.sroa.010.018.i16.i, %bb.p ] ; 4 uses
  %.sroa.01.0.i.i23.i = getelementptr inbounds nuw i8, ptr %.pn6.i.i22.i, i64 20 ; 2 uses
  %i.fx = getelementptr inbounds i8, ptr %.pn6.i.i22.i, i64 -20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.fx, ptr noundef nonnull align 4 dereferenceable(20) %.pn6.i.i22.i, i64 20, i1 false), !tbaa.struct !169
  %i.fy = getelementptr inbounds nuw i8, ptr %.pn6.i.i22.i, i64 36
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !161
  %i.ga = fcmp olt float %i.fj, %i.fz
  br i1 %i.ga, label %.lr.ph.i.i21.i, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i17.i, !llvm.loop !200

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i17.i: ; preds = %.lr.ph.i.i21.i, %bb.p
  %.sroa.0.1.ptr.i18.i = phi ptr [ %.sroa.010.018.i16.i, %bb.p ], [ %.sroa.01.0.i.i23.i, %.lr.ph.i.i21.i ] ; 2 uses
  %i.gb = getelementptr inbounds i8, ptr %.sroa.0.1.ptr.i18.i, i64 -20
  store <4 x i32> %.sroa.089.sroa.0.0.copyload, ptr %i.gb, align 4
  %.sroa.490.0..sroa_idx91 = getelementptr inbounds i8, ptr %.sroa.0.1.ptr.i18.i, i64 -4
  store float %i.fj, ptr %.sroa.490.0..sroa_idx91, align 4, !tbaa !55
  br label %bb.q

bb.q:                                             ; preds = %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i17.i, %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEESB_ET0_T_SD_SC_.exit.i24.i
  %.not.i20.i = icmp eq ptr %i.fh, %i.eb
  br i1 %.not.i20.i, label %_ZSt4sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEEPFbRKS5_SD_EEvT_SG_T0_.exit, label %.lr.ph.i15.i, !llvm.loop !201

_ZSt4sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEEPFbRKS5_SD_EEvT_SG_T0_.exit: ; preds = %bb.q, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i5.i, %bb.n, %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops15_Iter_comp_iterIPFbRKS5_SF_EEEEvT_SJ_T0_.exit.i, %._crit_edge111
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.gc = load ptr, ptr %i.a, align 8, !tbaa !171 ; 2 uses
  %i.gd = load ptr, ptr %1, align 8, !tbaa !173   ; 2 uses
  %i.ge = ptrtoint ptr %i.gc to i64
  %i.gf = ptrtoint ptr %i.gd to i64
  %i.gg = sub i64 %i.ge, %i.gf
  %i.gh = sdiv exact i64 %i.gg, 20                ; 3 uses
  %i.gi = icmp ult i64 %i.gh, %.0.lcssa
  br i1 %i.gi, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZSt4sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEEPFbRKS5_SD_EEvT_SG_T0_.exit
  %i.gj = sub nuw nsw i64 %.0.lcssa, %i.gh
  call void @_ZNSt6vectorIN2cv8ximgproc3BoxESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.gj)
  br label %_ZNSt6vectorIN2cv8ximgproc3BoxESaIS2_EE6resizeEm.exit58

bb.s:                                             ; preds = %_ZSt4sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEEPFbRKS5_SD_EEvT_SG_T0_.exit
  %i.gk = icmp ugt i64 %i.gh, %.0.lcssa
  br i1 %i.gk, label %bb.t, label %_ZNSt6vectorIN2cv8ximgproc3BoxESaIS2_EE6resizeEm.exit58

bb.t:                                             ; preds = %bb.s
  %i.gl = getelementptr inbounds nuw [20 x i8], ptr %i.gd, i64 %.0.lcssa ; 2 uses
  %.not.i.i56 = icmp eq ptr %i.gc, %i.gl
  br i1 %.not.i.i56, label %_ZNSt6vectorIN2cv8ximgproc3BoxESaIS2_EE6resizeEm.exit58, label %_ZSt8_DestroyIPN2cv8ximgproc3BoxES2_EvT_S4_RSaIT0_E.exit.i.i57

_ZSt8_DestroyIPN2cv8ximgproc3BoxES2_EvT_S4_RSaIT0_E.exit.i.i57: ; preds = %bb.t
  store ptr %i.gl, ptr %i.a, align 8, !tbaa !171
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !182, !noalias !214 ; 8 uses
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
  %.ptr49.i = getelementptr inbounds i8, ptr %i.b, i64 -20 ; 4 uses
  br i1 %i.k, label %.lr.ph.i.preheader.i, label %bb.f

.lr.ph.i.preheader.i:                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.b, i64 -4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.preheader.i
  %.sroa.010.018.i.idx.i = phi i64 [ %.sroa.010.018.i.add.i, %bb.e ], [ -20, %.lr.ph.i.preheader.i ] ; 3 uses
  %.sroa.010.018.i.ptr.i = getelementptr inbounds i8, ptr %i.b, i64 %.sroa.010.018.i.idx.i ; 4 uses
  %.sroa.010.018.i.add.i = add nsw i64 %.sroa.010.018.i.idx.i, -20 ; 3 uses
  %.ptr.i = getelementptr inbounds i8, ptr %i.b, i64 %.sroa.010.018.i.add.i ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.ptr.i, i64 16
  %i.n = load float, ptr %i.m, align 4, !tbaa !161 ; 4 uses
  %i.o = load float, ptr %i.l, align 4, !tbaa !161
  %i.p = fcmp olt float %i.n, %i.o
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %8, ptr noundef nonnull align 4 dereferenceable(20) %.ptr.i, i64 20, i1 false), !tbaa.struct !169
  %gepdiff.i = sub nsw i64 0, %.sroa.010.018.i.idx.i
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.ptr.i, ptr noundef nonnull align 4 dereferenceable(1) %.sroa.010.018.i.ptr.i, i64 %gepdiff.i, i1 false), !noalias !220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.ptr49.i, ptr noundef nonnull align 4 dereferenceable(20) %8, i64 20, i1 false), !tbaa.struct !169
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i
  %.sroa.0154.sroa.0.0.copyload = load <4 x i32>, ptr %.ptr.i, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i.ptr.i, i64 16
  %i.r = load float, ptr %i.q, align 4, !tbaa !161
  %i.s = fcmp olt float %i.n, %i.r
  br i1 %i.s, label %.lr.ph.i.i.i97, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i.i

.lr.ph.i.i.i97:                                   ; preds = %bb.d, %.lr.ph.i.i.i97
  %.pn6.i.i.i = phi ptr [ %.sroa.01.0.i.i.i, %.lr.ph.i.i.i97 ], [ %.sroa.010.018.i.ptr.i, %bb.d ] ; 4 uses
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %.pn6.i.i.i, i64 20 ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %.pn6.i.i.i, i64 -20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.t, ptr noundef nonnull align 4 dereferenceable(20) %.pn6.i.i.i, i64 20, i1 false), !tbaa.struct !169
  %i.u = getelementptr inbounds nuw i8, ptr %.pn6.i.i.i, i64 36
  %i.v = load float, ptr %i.u, align 4, !tbaa !161
  %i.w = fcmp olt float %i.n, %i.v
  br i1 %i.w, label %.lr.ph.i.i.i97, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i.i, !llvm.loop !200

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i.i: ; preds = %.lr.ph.i.i.i97, %bb.d
  %.sroa.0.1.ptr.i.i = phi ptr [ %.sroa.010.018.i.ptr.i, %bb.d ], [ %.sroa.01.0.i.i.i, %.lr.ph.i.i.i97 ] ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %.sroa.0.1.ptr.i.i, i64 -20
  store <4 x i32> %.sroa.0154.sroa.0.0.copyload, ptr %i.x, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %.sroa.0.1.ptr.i.i, i64 -4
  store float %i.n, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !55
  br label %bb.e

bb.e:                                             ; preds = %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i.i, %bb.c
  %.not.i.i96 = icmp eq i64 %.sroa.010.018.i.add.i, -320
  br i1 %.not.i.i96, label %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops15_Iter_comp_iterIPFbRKS5_SF_EEEEvT_SJ_T0_.exit.i, label %.lr.ph.i.i, !llvm.loop !201

_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops15_Iter_comp_iterIPFbRKS5_SF_EEEEvT_SJ_T0_.exit.i: ; preds = %bb.e
  %i.y = getelementptr inbounds i8, ptr %i.b, i64 -320 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.y, %i.c
  br i1 %.not7.i.i, label %_ZSt4sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEEPFbRKS5_SD_EEvT_SG_T0_.exit, label %.lr.ph.i4.i

.lr.ph.i4.i:                                      ; preds = %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops15_Iter_comp_iterIPFbRKS5_SF_EEEEvT_SJ_T0_.exit.i, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i5.i
  %.sroa.05.08.i.i = phi ptr [ %i.z, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i5.i ], [ %i.y, %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops15_Iter_comp_iterIPFbRKS5_SF_EEEEvT_SJ_T0_.exit.i ] ; 5 uses
  %i.z = getelementptr inbounds i8, ptr %.sroa.05.08.i.i, i64 -20 ; 3 uses
  %.sroa.0157.sroa.0.0.copyload = load <4 x i32>, ptr %i.z, align 4
  %.sroa.4158.0..sroa_idx = getelementptr inbounds i8, ptr %.sroa.05.08.i.i, i64 -4
  %.sroa.4158.0.copyload = load float, ptr %.sroa.4158.0..sroa_idx, align 4, !tbaa !55 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i, i64 16
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !161
  %i.ac = fcmp olt float %.sroa.4158.0.copyload, %i.ab
  br i1 %i.ac, label %.lr.ph.i.i8.i, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i5.i

.lr.ph.i.i8.i:                                    ; preds = %.lr.ph.i4.i, %.lr.ph.i.i8.i
  %.pn6.i.i9.i = phi ptr [ %.sroa.01.0.i.i10.i, %.lr.ph.i.i8.i ], [ %.sroa.05.08.i.i, %.lr.ph.i4.i ] ; 4 uses
  %.sroa.01.0.i.i10.i = getelementptr inbounds nuw i8, ptr %.pn6.i.i9.i, i64 20 ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %.pn6.i.i9.i, i64 -20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ad, ptr noundef nonnull align 4 dereferenceable(20) %.pn6.i.i9.i, i64 20, i1 false), !tbaa.struct !169
  %i.ae = getelementptr inbounds nuw i8, ptr %.pn6.i.i9.i, i64 36
  %i.af = load float, ptr %i.ae, align 4, !tbaa !161
  %i.ag = fcmp olt float %.sroa.4158.0.copyload, %i.af
  br i1 %i.ag, label %.lr.ph.i.i8.i, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i5.i, !llvm.loop !200

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i5.i: ; preds = %.lr.ph.i.i8.i, %.lr.ph.i4.i
  %.sroa.0.1.in.i.i = phi ptr [ %.sroa.05.08.i.i, %.lr.ph.i4.i ], [ %.sroa.01.0.i.i10.i, %.lr.ph.i.i8.i ] ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %.sroa.0.1.in.i.i, i64 -20
  store <4 x i32> %.sroa.0157.sroa.0.0.copyload, ptr %i.ah, align 4
  %.sroa.4158.0..sroa_idx159 = getelementptr inbounds i8, ptr %.sroa.0.1.in.i.i, i64 -4
  store float %.sroa.4158.0.copyload, ptr %.sroa.4158.0..sroa_idx159, align 4, !tbaa !55
  %.not.i7.i = icmp eq ptr %i.z, %i.c
  br i1 %.not.i7.i, label %_ZSt4sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEEPFbRKS5_SD_EEvT_SG_T0_.exit, label %.lr.ph.i4.i, !llvm.loop !202

bb.f:                                             ; preds = %bb.b
  %.not17.i13.i = icmp eq ptr %.ptr49.i, %i.c
  br i1 %.not17.i13.i, label %_ZSt4sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEEPFbRKS5_SD_EEvT_SG_T0_.exit, label %.lr.ph.i15.i.preheader

.lr.ph.i15.i.preheader:                           ; preds = %bb.f
  %i.ai = getelementptr inbounds i8, ptr %i.b, i64 -4
  br label %.lr.ph.i15.i

.lr.ph.i15.i:                                     ; preds = %.lr.ph.i15.i.preheader, %bb.i
  %.sroa.010.018.i16.i = phi ptr [ %i.aj, %bb.i ], [ %.ptr49.i, %.lr.ph.i15.i.preheader ] ; 7 uses
  %i.aj = getelementptr inbounds i8, ptr %.sroa.010.018.i16.i, i64 -20 ; 5 uses
  %i.ak = getelementptr inbounds i8, ptr %.sroa.010.018.i16.i, i64 -4
  %i.al = load float, ptr %i.ak, align 4, !tbaa !161 ; 4 uses
  %i.am = load float, ptr %i.ai, align 4, !tbaa !161
  %i.an = fcmp olt float %i.al, %i.am
  br i1 %i.an, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i15.i
  %i.ao = ptrtoint ptr %.sroa.010.018.i16.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %7, ptr noundef nonnull align 4 dereferenceable(20) %i.aj, i64 20, i1 false), !tbaa.struct !169
  %i.ap = sub i64 %i.d, %i.ao                     ; 3 uses
  %i.aq = icmp sgt i64 %i.ap, 0
  br i1 %i.aq, label %.lr.ph.preheader.i.i.i.i.i.i25.i, label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEESB_ET0_T_SD_SC_.exit.i24.i

.lr.ph.preheader.i.i.i.i.i.i25.i:                 ; preds = %bb.g
  %i.ar = udiv i64 %i.ap, 20
  %i.as = add nuw nsw i64 %i.ar, 1
  %i.at = icmp samesign ugt i64 %i.ap, 19
  %umin.neg.i26.i = sext i1 %i.at to i64
  %i.au = add nsw i64 %i.as, %umin.neg.i26.i
  %i.av = mul nuw i64 %i.au, 20
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aj, ptr nonnull align 4 %.sroa.010.018.i16.i, i64 %i.av, i1 false), !noalias !231
  br label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEESB_ET0_T_SD_SC_.exit.i24.i

_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEESB_ET0_T_SD_SC_.exit.i24.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i25.i, %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.ptr49.i, ptr noundef nonnull align 4 dereferenceable(20) %7, i64 20, i1 false), !tbaa.struct !169
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph.i15.i
  %.sroa.0162.sroa.0.0.copyload = load <4 x i32>, ptr %i.aj, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i16.i, i64 16
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !161
  %i.ay = fcmp olt float %i.al, %i.ax
  br i1 %i.ay, label %.lr.ph.i.i21.i, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i17.i

.lr.ph.i.i21.i:                                   ; preds = %bb.h, %.lr.ph.i.i21.i
  %.pn6.i.i22.i = phi ptr [ %.sroa.01.0.i.i23.i, %.lr.ph.i.i21.i ], [ %.sroa.010.018.i16.i, %bb.h ] ; 4 uses
  %.sroa.01.0.i.i23.i = getelementptr inbounds nuw i8, ptr %.pn6.i.i22.i, i64 20 ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %.pn6.i.i22.i, i64 -20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.az, ptr noundef nonnull align 4 dereferenceable(20) %.pn6.i.i22.i, i64 20, i1 false), !tbaa.struct !169
  %i.ba = getelementptr inbounds nuw i8, ptr %.pn6.i.i22.i, i64 36
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !161
  %i.bc = fcmp olt float %i.al, %i.bb
  br i1 %i.bc, label %.lr.ph.i.i21.i, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i17.i, !llvm.loop !200

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i17.i: ; preds = %.lr.ph.i.i21.i, %bb.h
  %.sroa.0.1.ptr.i18.i = phi ptr [ %.sroa.010.018.i16.i, %bb.h ], [ %.sroa.01.0.i.i23.i, %.lr.ph.i.i21.i ] ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %.sroa.0.1.ptr.i18.i, i64 -20
  store <4 x i32> %.sroa.0162.sroa.0.0.copyload, ptr %i.bd, align 4
  %.sroa.4163.0..sroa_idx164 = getelementptr inbounds i8, ptr %.sroa.0.1.ptr.i18.i, i64 -4
  store float %i.al, ptr %.sroa.4163.0..sroa_idx164, align 4, !tbaa !55
  br label %bb.i

bb.i:                                             ; preds = %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i17.i, %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEESB_ET0_T_SD_SC_.exit.i24.i
  %.not.i20.i = icmp eq ptr %i.aj, %i.c
  br i1 %.not.i20.i, label %_ZSt4sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEEPFbRKS5_SD_EEvT_SG_T0_.exit, label %.lr.ph.i15.i, !llvm.loop !201

_ZSt4sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEEPFbRKS5_SD_EEvT_SG_T0_.exit: ; preds = %bb.i, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i5.i, %bb.f, %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops15_Iter_comp_iterIPFbRKS5_SF_EEEEvT_SJ_T0_.exit.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %i.be = fcmp ogt float %2, 9.900000e-01
  br i1 %i.be, label %bb.aj, label %_ZNKSt6vectorIS_IN2cv8ximgproc3BoxESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorIS_IN2cv8ximgproc3BoxESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit.i: ; preds = %_ZSt4sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEEPFbRKS5_SD_EEvT_SG_T0_.exit
  %i.bf = fdiv float 1.000000e+00, %2
  %i.bg = call noundef float @logf(float noundef %i.bf) #18 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.bi = invoke noalias noundef nonnull dereferenceable(240024) ptr @_Znwm(i64 noundef 240024) #21
          to label %.noexc103 unwind label %bb.n  ; 8 uses

.noexc103:                                        ; preds = %_ZNKSt6vectorIS_IN2cv8ximgproc3BoxESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit.i
  %i.bj = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(240024) %i.bi, i8 0, i64 240024, i1 false)
  store ptr %i.bi, ptr %13, align 8, !tbaa !242
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 240024 ; 2 uses
  store ptr %i.bk, ptr %i.bh, align 8, !tbaa !245
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !246
  %i.bl = load ptr, ptr %i.a, align 8, !tbaa !171 ; 2 uses
  %i.bm = load ptr, ptr %1, align 8, !tbaa !173   ; 2 uses
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = sdiv exact i64 %i.bp, 20                ; 3 uses
  %i.br = trunc i64 %i.bq to i32
  %i.bs = icmp sgt i32 %i.br, 0
  %i.bt = icmp sgt i32 %4, 0
  %i.bu = and i1 %i.bs, %i.bt
  br i1 %i.bu, label %.lr.ph206, label %._crit_edge.thread

.lr.ph206:                                        ; preds = %.noexc103
  %i.bv = fcmp olt float %3, 1.000000e+00
  %i.bw = and i64 %i.bq, 2147483647
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph206, %.thread
  %indvars.iv223 = phi i64 [ 0, %.lr.ph206 ], [ %indvars.iv.next224, %.thread ] ; 2 uses
  %.064205 = phi i32 [ 1, %.lr.ph206 ], [ %.165, %.thread ] ; 8 uses
  %.066204 = phi i32 [ 0, %.lr.ph206 ], [ %.167184, %.thread ] ; 2 uses
  %.079201 = phi float [ %2, %.lr.ph206 ], [ %.180, %.thread ] ; 6 uses
  %i.bx = load ptr, ptr %1, align 8, !tbaa !173
  %i.by = getelementptr inbounds nuw [20 x i8], ptr %i.bx, i64 %indvars.iv223 ; 6 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !160 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !158 ; 4 uses
  %i.cd = mul nsw i32 %i.cc, %i.ca
  %i.ce = sitofp i32 %i.cd to float
  %i.cf = call noundef float @logf(float noundef %i.ce) #18
  %i.cg = fdiv float %i.cf, %i.bg
  %i.ch = call noundef float @llvm.ceil.f32(float %i.cg)
  %i.ci = fptosi float %i.ch to i32               ; 2 uses
  %i.cj = sub nsw i32 10000, %.064205
  %i.ck = icmp sgt i32 %.064205, %i.ci
  %i.cl = call i32 @llvm.smin.i32(i32 %i.ci, i32 %i.cj)
  %i.cm = select i1 %i.ck, i32 %.064205, i32 %i.cl ; 3 uses
  %.not195 = icmp slt i32 %.064205, 0
  br i1 %.not195, label %._crit_edge198.thread, label %.preheader187.lr.ph

end_hunk_0
begin_hunk_1_@_ZN2cv8ximgproc13EdgeBoxesImpl8boxesNmsERSt6vectorINS0_3BoxESaIS3_EEffi:bb.a
  %i.fk = icmp eq i64 %i.fj, 9223372036854775800
  br i1 %i.fk, label %bb.q, label %_ZNKSt6vectorIN2cv8ximgproc3BoxESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #20
          to label %.noexc87 unwind label %.loopexit.split-lp

.noexc87:                                         ; preds = %bb.q
  unreachable

_ZNKSt6vectorIN2cv8ximgproc3BoxESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.p
  %i.fl = sdiv exact i64 %i.fj, 20                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.fl, i64 1)
  %i.fm = add nsw i64 %.sroa.speculated.i.i.i, %i.fl ; 2 uses
  %i.fn = icmp ult i64 %i.fm, %i.fl
  %i.fo = call i64 @llvm.umin.i64(i64 %i.fm, i64 461168601842738790)
  %i.fp = select i1 %i.fn, i64 461168601842738790, i64 %i.fo ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.fp, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.fq = mul nuw nsw i64 %i.fp, 20
  %i.fr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fq) #21
          to label %.noexc88 unwind label %.loopexit188 ; 4 uses

.noexc88:                                         ; preds = %_ZNKSt6vectorIN2cv8ximgproc3BoxESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.fs = getelementptr inbounds i8, ptr %i.fr, i64 %i.fj ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.fs, ptr noundef nonnull align 4 dereferenceable(20) %i.by, i64 20, i1 false), !tbaa.struct !169
  %i.ft = icmp sgt i64 %i.fj, 0
  br i1 %i.ft, label %bb.r, label %_ZNSt6vectorIN2cv8ximgproc3BoxESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.r:                                             ; preds = %.noexc88
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fr, ptr align 4 %i.fg, i64 %i.fj, i1 false)
  br label %_ZNSt6vectorIN2cv8ximgproc3BoxESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIN2cv8ximgproc3BoxESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.r, %.noexc88
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 20
  %.not.i17.i.i = icmp eq ptr %i.fg, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN2cv8ximgproc3BoxESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIN2cv8ximgproc3BoxESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fg, i64 noundef %i.fj) #19
  br label %_ZNSt6vectorIN2cv8ximgproc3BoxESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN2cv8ximgproc3BoxESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.s, %_ZNSt6vectorIN2cv8ximgproc3BoxESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.fr, ptr %i.ez, align 8, !tbaa !173
  store ptr %i.fu, ptr %i.fa, align 8, !tbaa !171
  %i.fv = getelementptr inbounds nuw [20 x i8], ptr %i.fr, i64 %i.fp
  store ptr %i.fv, ptr %i.fc, align 8, !tbaa !176
  br label %bb.t

bb.t:                                             ; preds = %bb.o, %_ZNSt6vectorIN2cv8ximgproc3BoxESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.fw = add nsw i32 %.066204, 1                 ; 2 uses
  %i.fx = fcmp ogt float %.079201, 5.000000e-01
  %or.cond3 = select i1 %i.bv, i1 %i.fx, i1 false
  br i1 %or.cond3, label %bb.u, label %.thread

bb.u:                                             ; preds = %bb.t
  %i.fy = fmul float %3, %.079201                 ; 2 uses
  %i.fz = fdiv float 1.000000e+00, %i.fy
  %i.ga = call noundef float @logf(float noundef %i.fz) #18
  %i.gb = fdiv float %i.ga, %i.bg
  %i.gc = call noundef float @llvm.ceil.f32(float %i.gb)
  %i.gd = fptosi float %i.gc to i32
  br label %.thread

.thread:                                          ; preds = %._crit_edge198, %bb.u, %bb.t
  %.167184 = phi i32 [ %i.fw, %bb.u ], [ %i.fw, %bb.t ], [ %.066204, %._crit_edge198 ] ; 3 uses
  %.180 = phi float [ %i.fy, %bb.u ], [ %.079201, %bb.t ], [ %.079201, %._crit_edge198 ]
  %.165 = phi i32 [ %i.gd, %bb.u ], [ %.064205, %bb.t ], [ %.064205, %._crit_edge198 ]
  %indvars.iv.next224 = add nuw nsw i64 %indvars.iv223, 1 ; 2 uses
  %i.ge = icmp samesign ult i64 %indvars.iv.next224, %i.bw
  %i.gf = icmp slt i32 %.167184, %4
  %i.gg = select i1 %i.ge, i1 %i.gf, i1 false
  br i1 %i.gg, label %bb.j, label %._crit_edge, !llvm.loop !251

._crit_edge:                                      ; preds = %.thread
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !171 ; 2 uses
  %.pre237 = load ptr, ptr %1, align 8, !tbaa !173 ; 2 uses
  %.pre238 = ptrtoint ptr %.pre to i64
  %.pre239 = ptrtoint ptr %.pre237 to i64
  %.pre241 = sub i64 %.pre238, %.pre239
  %.pre243 = sdiv exact i64 %.pre241, 20          ; 3 uses
  %i.gh = sext i32 %.167184 to i64                ; 3 uses
  %i.gi = icmp ult i64 %.pre243, %i.gh
  br i1 %i.gi, label %bb.v, label %._crit_edge.thread

bb.v:                                             ; preds = %._crit_edge
  %i.gj = sub nuw nsw i64 %i.gh, %.pre243
  invoke void @_ZNSt6vectorIN2cv8ximgproc3BoxESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.gj)
          to label %.preheader.preheader unwind label %bb.x

._crit_edge.thread:                               ; preds = %.noexc103, %._crit_edge
  %.066.lcssa287 = phi i64 [ %i.gh, %._crit_edge ], [ 0, %.noexc103 ] ; 2 uses
  %i.gk = phi ptr [ %.pre, %._crit_edge ], [ %i.bl, %.noexc103 ]
  %i.gl = phi ptr [ %.pre237, %._crit_edge ], [ %i.bm, %.noexc103 ]
  %.pre-phi244286 = phi i64 [ %.pre243, %._crit_edge ], [ %i.bq, %.noexc103 ]
  %i.gm = icmp ugt i64 %.pre-phi244286, %.066.lcssa287
  br i1 %i.gm, label %bb.w, label %.preheader.preheader

bb.w:                                             ; preds = %._crit_edge.thread
  %i.gn = getelementptr inbounds nuw [20 x i8], ptr %i.gl, i64 %.066.lcssa287 ; 2 uses
  %.not.i.i89 = icmp eq ptr %i.gk, %i.gn
  br i1 %.not.i.i89, label %.preheader.preheader, label %_ZSt8_DestroyIPN2cv8ximgproc3BoxES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv8ximgproc3BoxES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.w
  store ptr %i.gn, ptr %i.a, align 8, !tbaa !171
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.v, %._crit_edge.thread, %bb.w, %_ZSt8_DestroyIPN2cv8ximgproc3BoxES2_EvT_S4_RSaIT0_E.exit.i.i
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge211
  %indvars.iv233 = phi i64 [ %indvars.iv.next234, %._crit_edge211 ], [ 0, %.preheader.preheader ] ; 3 uses
  %.173213 = phi i32 [ %.274.lcssa, %._crit_edge211 ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.go = getelementptr inbounds nuw [24 x i8], ptr %i.bi, i64 %indvars.iv233 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !171
  %i.gr = load ptr, ptr %i.go, align 8, !tbaa !173 ; 2 uses
  %i.gs = ptrtoint ptr %i.gq to i64
  %i.gt = ptrtoint ptr %i.gr to i64
  %i.gu = sub i64 %i.gs, %i.gt
  %i.gv = sdiv exact i64 %i.gu, 20
  %i.gw = trunc i64 %i.gv to i32
  %i.gx = icmp sgt i32 %i.gw, 0
  br i1 %i.gx, label %.lr.ph210.preheader, label %._crit_edge211

.lr.ph210.preheader:                              ; preds = %.preheader
  %i.gy = sext i32 %.173213 to i64
  %i.gz = getelementptr inbounds nuw [24 x i8], ptr %i.bi, i64 %indvars.iv233 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  br label %.lr.ph210

.lr.ph210:                                        ; preds = %.lr.ph210.preheader, %.lr.ph210
  %indvars.iv228 = phi i64 [ %i.gy, %.lr.ph210.preheader ], [ %indvars.iv.next229, %.lr.ph210 ] ; 2 uses
  %indvars.iv226 = phi i64 [ 0, %.lr.ph210.preheader ], [ %indvars.iv.next227, %.lr.ph210 ] ; 2 uses
  %i.hb = phi ptr [ %i.gr, %.lr.ph210.preheader ], [ %i.hg, %.lr.ph210 ]
  %i.hc = getelementptr inbounds nuw [20 x i8], ptr %i.hb, i64 %indvars.iv226
  %indvars.iv.next229 = add nsw i64 %indvars.iv228, 1 ; 2 uses
  %i.hd = load ptr, ptr %1, align 8, !tbaa !173
  %i.he = getelementptr inbounds nuw [20 x i8], ptr %i.hd, i64 %indvars.iv228
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.he, ptr noundef nonnull align 4 dereferenceable(20) %i.hc, i64 20, i1 false), !tbaa.struct !169
  %indvars.iv.next227 = add nuw nsw i64 %indvars.iv226, 1 ; 2 uses
  %i.hf = load ptr, ptr %i.ha, align 8, !tbaa !171
  %i.hg = load ptr, ptr %i.gz, align 8, !tbaa !173 ; 2 uses
  %i.hh = ptrtoint ptr %i.hf to i64
  %i.hi = ptrtoint ptr %i.hg to i64
  %i.hj = sub i64 %i.hh, %i.hi
  %i.hk = sdiv exact i64 %i.hj, 20
  %sext = shl i64 %i.hk, 32
  %i.hl = ashr exact i64 %sext, 32
  %i.hm = icmp slt i64 %indvars.iv.next227, %i.hl
  br i1 %i.hm, label %.lr.ph210, label %._crit_edge211.loopexit, !llvm.loop !252

bb.x:                                             ; preds = %bb.z, %bb.v
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

._crit_edge211.loopexit:                          ; preds = %.lr.ph210
  %i.ho = trunc nsw i64 %indvars.iv.next229 to i32
  br label %._crit_edge211

._crit_edge211:                                   ; preds = %._crit_edge211.loopexit, %.preheader
  %.274.lcssa = phi i32 [ %.173213, %.preheader ], [ %i.ho, %._crit_edge211.loopexit ]
  %indvars.iv.next234 = add nuw nsw i64 %indvars.iv233, 1 ; 2 uses
  %exitcond236.not = icmp eq i64 %indvars.iv.next234, 10000
  br i1 %exitcond236.not, label %bb.y, label %.preheader, !llvm.loop !253

bb.y:                                             ; preds = %._crit_edge211
  %i.hp = load ptr, ptr %i.a, align 8, !tbaa !182, !noalias !254 ; 8 uses
  %i.hq = load ptr, ptr %1, align 8, !tbaa !182, !noalias !257 ; 6 uses
  %i.hr = ptrtoint ptr %i.hp to i64               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %.not.i.i91 = icmp eq ptr %i.hp, %i.hq
  br i1 %.not.i.i91, label %.loopexit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.hs = ptrtoint ptr %i.hq to i64               ; 2 uses
  store i64 %i.hr, ptr %9, align 8, !tbaa !182
  store i64 %i.hs, ptr %10, align 8, !tbaa !182
  %i.ht = sub i64 %i.hr, %i.hs                    ; 2 uses
  %i.hu = sdiv exact i64 %i.ht, 20
  %i.hv = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.hu, i1 true)
  %i.hw = shl nuw nsw i64 %i.hv, 1
  %i.hx = sub nuw nsw i64 126, %i.hw
  invoke void @_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEElNS1_5__ops15_Iter_comp_iterIPFbRKS5_SF_EEEEvT_SJ_T0_T1_(ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, i64 noundef %i.hx, ptr nonnull @_ZN2cv8ximgproc13EdgeBoxesImpl12boxesCompareERKNS0_3BoxES4_)
          to label %.noexc92 unwind label %bb.x

.noexc92:                                         ; preds = %bb.z
  %i.hy = icmp sgt i64 %i.ht, 320
  %.ptr49.i120 = getelementptr inbounds i8, ptr %i.hp, i64 -20 ; 4 uses
  br i1 %i.hy, label %.lr.ph.i.preheader.i119, label %bb.ad

.lr.ph.i.preheader.i119:                          ; preds = %.noexc92
  %i.hz = getelementptr inbounds i8, ptr %i.hp, i64 -4
  br label %.lr.ph.i.i121

.lr.ph.i.i121:                                    ; preds = %bb.ac, %.lr.ph.i.preheader.i119
  %.sroa.010.018.i.idx.i122 = phi i64 [ %.sroa.010.018.i.add.i124, %bb.ac ], [ -20, %.lr.ph.i.preheader.i119 ] ; 3 uses
  %.sroa.010.018.i.ptr.i123 = getelementptr inbounds i8, ptr %i.hp, i64 %.sroa.010.018.i.idx.i122 ; 4 uses
  %.sroa.010.018.i.add.i124 = add nsw i64 %.sroa.010.018.i.idx.i122, -20 ; 3 uses
  %.ptr.i125 = getelementptr inbounds i8, ptr %i.hp, i64 %.sroa.010.018.i.add.i124 ; 4 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.ptr.i125, i64 16
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !161 ; 4 uses
  %i.ic = load float, ptr %i.hz, align 4, !tbaa !161
  %i.id = fcmp olt float %i.ib, %i.ic
  br i1 %i.id, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i.i121
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %6, ptr noundef nonnull align 4 dereferenceable(20) %.ptr.i125, i64 20, i1 false), !tbaa.struct !169
  %gepdiff.i144 = sub nsw i64 0, %.sroa.010.018.i.idx.i122
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.ptr.i125, ptr noundef nonnull align 4 dereferenceable(1) %.sroa.010.018.i.ptr.i123, i64 %gepdiff.i144, i1 false), !noalias !260
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.ptr49.i120, ptr noundef nonnull align 4 dereferenceable(20) %6, i64 20, i1 false), !tbaa.struct !169
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.ac

bb.ab:                                            ; preds = %.lr.ph.i.i121
  %.sroa.0167.sroa.0.0.copyload = load <4 x i32>, ptr %.ptr.i125, align 4
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i.ptr.i123, i64 16
  %i.if = load float, ptr %i.ie, align 4, !tbaa !161
  %i.ig = fcmp olt float %i.ib, %i.if
  br i1 %i.ig, label %.lr.ph.i.i.i141, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i.i126

.lr.ph.i.i.i141:                                  ; preds = %bb.ab, %.lr.ph.i.i.i141
  %.pn6.i.i.i142 = phi ptr [ %.sroa.01.0.i.i.i143, %.lr.ph.i.i.i141 ], [ %.sroa.010.018.i.ptr.i123, %bb.ab ] ; 4 uses
  %.sroa.01.0.i.i.i143 = getelementptr inbounds nuw i8, ptr %.pn6.i.i.i142, i64 20 ; 2 uses
  %i.ih = getelementptr inbounds i8, ptr %.pn6.i.i.i142, i64 -20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ih, ptr noundef nonnull align 4 dereferenceable(20) %.pn6.i.i.i142, i64 20, i1 false), !tbaa.struct !169
  %i.ii = getelementptr inbounds nuw i8, ptr %.pn6.i.i.i142, i64 36
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !161
  %i.ik = fcmp olt float %i.ib, %i.ij
  br i1 %i.ik, label %.lr.ph.i.i.i141, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i.i126, !llvm.loop !200

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i.i126: ; preds = %.lr.ph.i.i.i141, %bb.ab
  %.sroa.0.1.ptr.i.i127 = phi ptr [ %.sroa.010.018.i.ptr.i123, %bb.ab ], [ %.sroa.01.0.i.i.i143, %.lr.ph.i.i.i141 ] ; 2 uses
  %i.il = getelementptr inbounds i8, ptr %.sroa.0.1.ptr.i.i127, i64 -20
  store <4 x i32> %.sroa.0167.sroa.0.0.copyload, ptr %i.il, align 4
  %.sroa.4168.0..sroa_idx = getelementptr inbounds i8, ptr %.sroa.0.1.ptr.i.i127, i64 -4
  store float %i.ib, ptr %.sroa.4168.0..sroa_idx, align 4, !tbaa !55
  br label %bb.ac

bb.ac:                                            ; preds = %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i.i126, %bb.aa
  %.not.i.i128 = icmp eq i64 %.sroa.010.018.i.add.i124, -320
  br i1 %.not.i.i128, label %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops15_Iter_comp_iterIPFbRKS5_SF_EEEEvT_SJ_T0_.exit.i129, label %.lr.ph.i.i121, !llvm.loop !201

_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops15_Iter_comp_iterIPFbRKS5_SF_EEEEvT_SJ_T0_.exit.i129: ; preds = %bb.ac
  %i.im = getelementptr inbounds i8, ptr %i.hp, i64 -320 ; 2 uses
  %.not7.i.i132 = icmp eq ptr %i.im, %i.hq
  br i1 %.not7.i.i132, label %.loopexit, label %.lr.ph.i4.i133

.lr.ph.i4.i133:                                   ; preds = %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops15_Iter_comp_iterIPFbRKS5_SF_EEEEvT_SJ_T0_.exit.i129, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i5.i135
  %.sroa.05.08.i.i134 = phi ptr [ %i.in, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i5.i135 ], [ %i.im, %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops15_Iter_comp_iterIPFbRKS5_SF_EEEEvT_SJ_T0_.exit.i129 ] ; 5 uses
  %i.in = getelementptr inbounds i8, ptr %.sroa.05.08.i.i134, i64 -20 ; 3 uses
  %.sroa.0171.sroa.0.0.copyload = load <4 x i32>, ptr %i.in, align 4
  %.sroa.4172.0..sroa_idx = getelementptr inbounds i8, ptr %.sroa.05.08.i.i134, i64 -4
  %.sroa.4172.0.copyload = load float, ptr %.sroa.4172.0..sroa_idx, align 4, !tbaa !55 ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i134, i64 16
  %i.ip = load float, ptr %i.io, align 4, !tbaa !161
  %i.iq = fcmp olt float %.sroa.4172.0.copyload, %i.ip
  br i1 %i.iq, label %.lr.ph.i.i8.i138, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i5.i135

.lr.ph.i.i8.i138:                                 ; preds = %.lr.ph.i4.i133, %.lr.ph.i.i8.i138
  %.pn6.i.i9.i139 = phi ptr [ %.sroa.01.0.i.i10.i140, %.lr.ph.i.i8.i138 ], [ %.sroa.05.08.i.i134, %.lr.ph.i4.i133 ] ; 4 uses
  %.sroa.01.0.i.i10.i140 = getelementptr inbounds nuw i8, ptr %.pn6.i.i9.i139, i64 20 ; 2 uses
  %i.ir = getelementptr inbounds i8, ptr %.pn6.i.i9.i139, i64 -20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ir, ptr noundef nonnull align 4 dereferenceable(20) %.pn6.i.i9.i139, i64 20, i1 false), !tbaa.struct !169
  %i.is = getelementptr inbounds nuw i8, ptr %.pn6.i.i9.i139, i64 36
  %i.it = load float, ptr %i.is, align 4, !tbaa !161
  %i.iu = fcmp olt float %.sroa.4172.0.copyload, %i.it
  br i1 %i.iu, label %.lr.ph.i.i8.i138, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i5.i135, !llvm.loop !200

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i5.i135: ; preds = %.lr.ph.i.i8.i138, %.lr.ph.i4.i133
  %.sroa.0.1.in.i.i136 = phi ptr [ %.sroa.05.08.i.i134, %.lr.ph.i4.i133 ], [ %.sroa.01.0.i.i10.i140, %.lr.ph.i.i8.i138 ] ; 2 uses
  %i.iv = getelementptr inbounds i8, ptr %.sroa.0.1.in.i.i136, i64 -20
  store <4 x i32> %.sroa.0171.sroa.0.0.copyload, ptr %i.iv, align 4
  %.sroa.4172.0..sroa_idx173 = getelementptr inbounds i8, ptr %.sroa.0.1.in.i.i136, i64 -4
  store float %.sroa.4172.0.copyload, ptr %.sroa.4172.0..sroa_idx173, align 4, !tbaa !55
  %.not.i7.i137 = icmp eq ptr %i.in, %i.hq
  br i1 %.not.i7.i137, label %.loopexit, label %.lr.ph.i4.i133, !llvm.loop !202

bb.ad:                                            ; preds = %.noexc92
  %.not17.i13.i106 = icmp eq ptr %.ptr49.i120, %i.hq
  br i1 %.not17.i13.i106, label %.loopexit, label %.lr.ph.i15.i108.preheader

.lr.ph.i15.i108.preheader:                        ; preds = %bb.ad
  %i.iw = getelementptr inbounds i8, ptr %i.hp, i64 -4
  br label %.lr.ph.i15.i108

.lr.ph.i15.i108:                                  ; preds = %.lr.ph.i15.i108.preheader, %bb.ag
  %.sroa.010.018.i16.i109 = phi ptr [ %i.ix, %bb.ag ], [ %.ptr49.i120, %.lr.ph.i15.i108.preheader ] ; 7 uses
  %i.ix = getelementptr inbounds i8, ptr %.sroa.010.018.i16.i109, i64 -20 ; 5 uses
  %i.iy = getelementptr inbounds i8, ptr %.sroa.010.018.i16.i109, i64 -4
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !161 ; 4 uses
  %i.ja = load float, ptr %i.iw, align 4, !tbaa !161
  %i.jb = fcmp olt float %i.iz, %i.ja
  br i1 %i.jb, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.lr.ph.i15.i108
  %i.jc = ptrtoint ptr %.sroa.010.018.i16.i109 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %5, ptr noundef nonnull align 4 dereferenceable(20) %i.ix, i64 20, i1 false), !tbaa.struct !169
  %i.jd = sub i64 %i.hr, %i.jc                    ; 3 uses
  %i.je = icmp sgt i64 %i.jd, 0
  br i1 %i.je, label %.lr.ph.preheader.i.i.i.i.i.i25.i117, label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEESB_ET0_T_SD_SC_.exit.i24.i116

.lr.ph.preheader.i.i.i.i.i.i25.i117:              ; preds = %bb.ae
  %i.jf = udiv i64 %i.jd, 20
  %i.jg = add nuw nsw i64 %i.jf, 1
  %i.jh = icmp samesign ugt i64 %i.jd, 19
  %umin.neg.i26.i118 = sext i1 %i.jh to i64
  %i.ji = add nsw i64 %i.jg, %umin.neg.i26.i118
  %i.jj = mul nuw i64 %i.ji, 20
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ix, ptr nonnull align 4 %.sroa.010.018.i16.i109, i64 %i.jj, i1 false), !noalias !271
  br label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEESB_ET0_T_SD_SC_.exit.i24.i116

_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEESB_ET0_T_SD_SC_.exit.i24.i116: ; preds = %.lr.ph.preheader.i.i.i.i.i.i25.i117, %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.ptr49.i120, ptr noundef nonnull align 4 dereferenceable(20) %5, i64 20, i1 false), !tbaa.struct !169
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.ag

bb.af:                                            ; preds = %.lr.ph.i15.i108
  %.sroa.0176.sroa.0.0.copyload = load <4 x i32>, ptr %i.ix, align 4
  %i.jk = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i16.i109, i64 16
  %i.jl = load float, ptr %i.jk, align 4, !tbaa !161
  %i.jm = fcmp olt float %i.iz, %i.jl
  br i1 %i.jm, label %.lr.ph.i.i21.i113, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i17.i110

.lr.ph.i.i21.i113:                                ; preds = %bb.af, %.lr.ph.i.i21.i113
  %.pn6.i.i22.i114 = phi ptr [ %.sroa.01.0.i.i23.i115, %.lr.ph.i.i21.i113 ], [ %.sroa.010.018.i16.i109, %bb.af ] ; 4 uses
  %.sroa.01.0.i.i23.i115 = getelementptr inbounds nuw i8, ptr %.pn6.i.i22.i114, i64 20 ; 2 uses
  %i.jn = getelementptr inbounds i8, ptr %.pn6.i.i22.i114, i64 -20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.jn, ptr noundef nonnull align 4 dereferenceable(20) %.pn6.i.i22.i114, i64 20, i1 false), !tbaa.struct !169
  %i.jo = getelementptr inbounds nuw i8, ptr %.pn6.i.i22.i114, i64 36
  %i.jp = load float, ptr %i.jo, align 4, !tbaa !161
  %i.jq = fcmp olt float %i.iz, %i.jp
  br i1 %i.jq, label %.lr.ph.i.i21.i113, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i17.i110, !llvm.loop !200

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i17.i110: ; preds = %.lr.ph.i.i21.i113, %bb.af
  %.sroa.0.1.ptr.i18.i111 = phi ptr [ %.sroa.010.018.i16.i109, %bb.af ], [ %.sroa.01.0.i.i23.i115, %.lr.ph.i.i21.i113 ] ; 2 uses
  %i.jr = getelementptr inbounds i8, ptr %.sroa.0.1.ptr.i18.i111, i64 -20
  store <4 x i32> %.sroa.0176.sroa.0.0.copyload, ptr %i.jr, align 4
  %.sroa.4177.0..sroa_idx178 = getelementptr inbounds i8, ptr %.sroa.0.1.ptr.i18.i111, i64 -4
  store float %i.iz, ptr %.sroa.4177.0..sroa_idx178, align 4, !tbaa !55
  br label %bb.ag

bb.ag:                                            ; preds = %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i17.i110, %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEESB_ET0_T_SD_SC_.exit.i24.i116
  %.not.i20.i112 = icmp eq ptr %i.ix, %i.hq
  br i1 %.not.i20.i112, label %.loopexit, label %.lr.ph.i15.i108, !llvm.loop !201

.loopexit:                                        ; preds = %bb.ag, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops14_Val_comp_iterIPFbRKS5_SF_EEEEvT_T0_.exit.i5.i135, %bb.y, %bb.ad, %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEENS1_5__ops15_Iter_comp_iterIPFbRKS5_SF_EEEEvT_SJ_T0_.exit.i129
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.js = load ptr, ptr %13, align 8, !tbaa !242  ; 5 uses
  %i.jt = load ptr, ptr %i.bh, align 8, !tbaa !245 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.js, %i.jt
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN2cv8ximgproc3BoxESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.loopexit, %_ZSt8_DestroyISt6vectorIN2cv8ximgproc3BoxESaIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ka, %_ZSt8_DestroyISt6vectorIN2cv8ximgproc3BoxESaIS3_EEEvPT_.exit.i.i.i ], [ %i.js, %.loopexit ] ; 3 uses
  %i.ju = load ptr, ptr %.05.i.i.i, align 8, !tbaa !173 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ju, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN2cv8ximgproc3BoxESaIS3_EEEvPT_.exit.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i.i
  %i.jv = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !176
  %i.jx = ptrtoint ptr %i.jw to i64
  %i.jy = ptrtoint ptr %i.ju to i64
  %i.jz = sub i64 %i.jx, %i.jy
  call void @_ZdlPvm(ptr noundef nonnull %i.ju, i64 noundef %i.jz) #19
  br label %_ZSt8_DestroyISt6vectorIN2cv8ximgproc3BoxESaIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIN2cv8ximgproc3BoxESaIS3_EEEvPT_.exit.i.i.i: ; preds = %bb.ah, %.lr.ph.i.i.i
  %i.ka = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i95 = icmp eq ptr %i.ka, %i.jt
  br i1 %.not.i.i.i95, label %_ZSt8_DestroyIPSt6vectorIN2cv8ximgproc3BoxESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !282

_ZSt8_DestroyIPSt6vectorIN2cv8ximgproc3BoxESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorIN2cv8ximgproc3BoxESaIS3_EEEvPT_.exit.i.i.i, %.loopexit
  %.not.i.i1.i = icmp eq ptr %i.js, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IN2cv8ximgproc3BoxESaIS2_EESaIS4_EED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv8ximgproc3BoxESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i
  %i.kb = load ptr, ptr %i.bj, align 8, !tbaa !246
  %i.kc = ptrtoint ptr %i.kb to i64
  %i.kd = ptrtoint ptr %i.js to i64
  %i.ke = sub i64 %i.kc, %i.kd
  call void @_ZdlPvm(ptr noundef nonnull %i.js, i64 noundef %i.ke) #19
  br label %_ZNSt6vectorIS_IN2cv8ximgproc3BoxESaIS2_EESaIS4_EED2Ev.exit

_ZNSt6vectorIS_IN2cv8ximgproc3BoxESaIS2_EESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv8ximgproc3BoxESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %bb.aj

bb.aj:                                            ; preds = %_ZSt4sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc3BoxESt6vectorIS5_SaIS5_EEEEEPFbRKS5_SD_EEvT_SG_T0_.exit, %_ZNSt6vectorIS_IN2cv8ximgproc3BoxESaIS2_EESaIS4_EED2Ev.exit
  ret void

bb.ak:                                            ; preds = %.loopexit188, %.loopexit.split-lp, %bb.x, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %i.ew, %bb.n ], [ %i.hn, %bb.x ], [ %lpad.loopexit, %.loopexit188 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6vectorIS_IN2cv8ximgproc3BoxESaIS2_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIS_IN2cv8ximgproc3BoxESaIS2_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !242    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !245  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIN2cv8ximgproc3BoxESaIS3_EES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

end_hunk_1
