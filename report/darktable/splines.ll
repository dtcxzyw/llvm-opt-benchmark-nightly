Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/splines?download=true
inline.NumInlined: 1094
inline.NumDeleted: 285
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@interpolate_val_V2:bb.a

_ZN8interpol11spline_baseIfED2Ev.exit30:          ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.u

bb.s:                                             ; preds = %_ZN8interpol23monotone_hermite_splineIfEC2IP16CurveAnchorPointEET_S5_.exit
  %i.bd = landingpad { ptr, i32 }
          cleanup
  %i.be = load ptr, ptr %6, align 8, !tbaa !11    ; 3 uses
  %.not.i.i.i.i31 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i31, label %_ZN8interpol11spline_baseIfED2Ev.exit32, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !15
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.be to i64
  %i.bj = sub i64 %i.bh, %i.bi
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bj) #19
  br label %_ZN8interpol11spline_baseIfED2Ev.exit32

_ZN8interpol11spline_baseIfED2Ev.exit32:          ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %common.resume

bb.u:                                             ; preds = %bb.a, %_ZN8interpol11spline_baseIfED2Ev.exit30, %_ZN8interpol11spline_baseIfED2Ev.exit24, %_ZN8interpol11spline_baseIfED2Ev.exit
  %.018 = phi nsz float [ %i.j, %_ZN8interpol11spline_baseIfED2Ev.exit ], [ %i.z, %_ZN8interpol11spline_baseIfED2Ev.exit24 ], [ %i.aw, %_ZN8interpol11spline_baseIfED2Ev.exit30 ], [ +qnan, %bb.a ]
  ret float %.018
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef float @_ZNK8interpol11spline_baseIfEclEf(ptr noundef nonnull align 8 dereferenceable(41) %0, float noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !11     ; 15 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 5 uses
  %i.g = sdiv exact i64 %i.f, 12                  ; 3 uses
  %i.h = icmp eq i64 %i.f, 12
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.j = load float, ptr %i.i, align 4, !tbaa !17
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load i8, ptr %i.k, align 8, !tbaa !20, !range !27, !noundef !28
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.o = icmp sgt i64 %i.f, 0                     ; 2 uses
  br i1 %i.m, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.q = load float, ptr %i.p, align 4, !tbaa !29
  %i.r = load float, ptr %i.n, align 8, !tbaa !30
  %i.s = fsub reassoc nsz arcp contract afn float %i.q, %i.r ; 3 uses
  %i.t = frem reassoc nsz arcp contract afn float %1, %i.s ; 3 uses
  %i.u = load float, ptr %i.c, align 4, !tbaa !31
  %i.v = fcmp reassoc nsz arcp contract afn olt float %i.t, %i.u
  %i.w = fadd reassoc nsz arcp contract afn float %i.t, %i.s
  %.0108 = select nsz i1 %i.v, float %i.w, float %i.t ; 3 uses
  br i1 %i.o, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEES4_ZNKS2_11spline_baseIfEclEfEUlRS5_SD_E_ET_SF_SF_RKT0_T1_.exit.thread

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i: ; preds = %bb.d
  %i.x = udiv exact i64 %i.f, 12
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i
  %.016.i.i = phi i64 [ %i.x, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i ], [ %.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 2 uses
  %.sroa.011.015.i.i = phi ptr [ %i.c, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i ], [ %.sroa.011.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 2 uses
  %i.y = lshr i64 %.016.i.i, 1                    ; 3 uses
  %i.z = getelementptr inbounds nuw [12 x i8], ptr %.sroa.011.015.i.i, i64 %i.y ; 2 uses
  %i.aa = load float, ptr %i.z, align 4, !tbaa !31
  %i.ab = fcmp reassoc nsz arcp contract afn olt float %.0108, %i.aa ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.ad = xor i64 %i.y, -1
  %i.ae = add nsw i64 %.016.i.i, %i.ad
  %.sroa.011.1.i.i = select i1 %i.ab, ptr %.sroa.011.015.i.i, ptr %i.ac ; 3 uses
  %.1.i.i = select i1 %i.ab, i64 %i.y, i64 %i.ae  ; 2 uses
  %i.af = icmp sgt i64 %.1.i.i, 0
  br i1 %i.af, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEES4_ZNKS2_11spline_baseIfEclEfEUlRS5_SD_E_ET_SF_SF_RKT0_T1_.exit, !llvm.loop !32

_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEES4_ZNKS2_11spline_baseIfEclEfEUlRS5_SD_E_ET_SF_SF_RKT0_T1_.exit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.pre = ptrtoint ptr %.sroa.011.1.i.i to i64
  %i.ag = icmp eq ptr %.sroa.011.1.i.i, %i.c
  %i.ah = sub i64 %.pre, %i.e
  %i.ai = sdiv exact i64 %i.ah, 12
  %cond.fr = freeze i1 %i.ag
  br i1 %cond.fr, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEES4_ZNKS2_11spline_baseIfEclEfEUlRS5_SD_E_ET_SF_SF_RKT0_T1_.exit.thread, label %bb.e

_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEES4_ZNKS2_11spline_baseIfEclEfEUlRS5_SD_E_ET_SF_SF_RKT0_T1_.exit.thread: ; preds = %bb.d, %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEES4_ZNKS2_11spline_baseIfEclEfEUlRS5_SD_E_ET_SF_SF_RKT0_T1_.exit
  br label %bb.e

bb.e:                                             ; preds = %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEES4_ZNKS2_11spline_baseIfEclEfEUlRS5_SD_E_ET_SF_SF_RKT0_T1_.exit, %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEES4_ZNKS2_11spline_baseIfEclEfEUlRS5_SD_E_ET_SF_SF_RKT0_T1_.exit.thread
  %i.aj = phi i64 [ %i.g, %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEES4_ZNKS2_11spline_baseIfEclEfEUlRS5_SD_E_ET_SF_SF_RKT0_T1_.exit.thread ], [ %i.ai, %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEES4_ZNKS2_11spline_baseIfEclEfEUlRS5_SD_E_ET_SF_SF_RKT0_T1_.exit ] ; 3 uses
  %i.ak = add nsw i64 %i.aj, -1                   ; 4 uses
  %i.al = icmp ult i64 %i.aj, %i.g
  %i.am = select i1 %i.al, i64 %i.aj, i64 0       ; 4 uses
  %i.an = icmp ugt i64 %i.am, %i.ak
  %i.ao = getelementptr inbounds nuw [12 x i8], ptr %i.c, i64 %i.am
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !31 ; 2 uses
  %i.aq = getelementptr inbounds nuw [12 x i8], ptr %i.c, i64 %i.ak
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !31 ; 4 uses
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.as = fsub reassoc nsz arcp contract afn float %i.ap, %i.ar
  br label %.thread

bb.g:                                             ; preds = %bb.e
  %i.at = fadd reassoc nsz arcp contract afn float %i.ap, %i.s
  %i.au = fsub reassoc nsz arcp contract afn float %i.at, %i.ar
  br label %.thread

bb.h:                                             ; preds = %bb.c
  %i.av = load float, ptr %i.n, align 8, !tbaa !34 ; 2 uses
  %i.aw = fcmp reassoc nsz arcp contract afn olt float %1, %i.av
  %.sroa.speculated105 = select i1 %i.aw, float %i.av, float %1 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !34 ; 2 uses
  %i.az = fcmp reassoc nsz arcp contract afn olt float %i.ay, %.sroa.speculated105
  %.sroa.speculated102 = select i1 %i.az, float %i.ay, float %.sroa.speculated105 ; 6 uses
  %i.ba = load float, ptr %i.c, align 4, !tbaa !31 ; 3 uses
  %i.bb = fcmp reassoc nsz arcp contract afn oge float %.sroa.speculated102, %i.ba
  %or.cond = and i1 %i.bb, %i.o
  br i1 %or.cond, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i64, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEES4_ZNKS2_11spline_baseIfEclEfEUlRS5_SD_E0_ET_SF_SF_RKT0_T1_.exit.thread

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i64: ; preds = %bb.h
  %i.bc = udiv exact i64 %i.f, 12
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i65

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i65: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i65, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i64
  %.016.i.i66 = phi i64 [ %i.bc, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i64 ], [ %.1.i.i71, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i65 ] ; 2 uses
  %.sroa.011.015.i.i67 = phi ptr [ %i.c, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i64 ], [ %.sroa.011.1.i.i70, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i65 ] ; 2 uses
  %i.bd = lshr i64 %.016.i.i66, 1                 ; 3 uses
  %i.be = getelementptr inbounds nuw [12 x i8], ptr %.sroa.011.015.i.i67, i64 %i.bd ; 2 uses
  %i.bf = load float, ptr %i.be, align 4, !tbaa !31
  %i.bg = fcmp reassoc nsz arcp contract afn olt float %.sroa.speculated102, %i.bf ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.bi = xor i64 %i.bd, -1
  %i.bj = add nsw i64 %.016.i.i66, %i.bi
  %.sroa.011.1.i.i70 = select i1 %i.bg, ptr %.sroa.011.015.i.i67, ptr %i.bh ; 3 uses
  %.1.i.i71 = select i1 %i.bg, i64 %i.bd, i64 %i.bj ; 2 uses
  %i.bk = icmp sgt i64 %.1.i.i71, 0
  br i1 %i.bk, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i65, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEES4_ZNKS2_11spline_baseIfEclEfEUlRS5_SD_E0_ET_SF_SF_RKT0_T1_.exit, !llvm.loop !35

_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEES4_ZNKS2_11spline_baseIfEclEfEUlRS5_SD_E0_ET_SF_SF_RKT0_T1_.exit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i65
  %.not = icmp eq ptr %.sroa.011.1.i.i70, %i.c
  br i1 %.not, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEES4_ZNKS2_11spline_baseIfEclEfEUlRS5_SD_E0_ET_SF_SF_RKT0_T1_.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEES4_ZNKS2_11spline_baseIfEclEfEUlRS5_SD_E0_ET_SF_SF_RKT0_T1_.exit
  %i.bl = ptrtoint ptr %.sroa.011.1.i.i70 to i64
  %i.bm = sub i64 %i.bl, %i.e
  %i.bn = sdiv exact i64 %i.bm, 12
  %i.bo = add nsw i64 %i.bn, -1
  %i.bp = add nsw i64 %i.g, -2
  %.sroa.speculated80 = tail call i64 @llvm.umin.i64(i64 %i.bp, i64 %i.bo)
  br label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEES4_ZNKS2_11spline_baseIfEclEfEUlRS5_SD_E0_ET_SF_SF_RKT0_T1_.exit.thread

_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEES4_ZNKS2_11spline_baseIfEclEfEUlRS5_SD_E0_ET_SF_SF_RKT0_T1_.exit.thread: ; preds = %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEES4_ZNKS2_11spline_baseIfEclEfEUlRS5_SD_E0_ET_SF_SF_RKT0_T1_.exit, %bb.i, %bb.h
  %.050 = phi i64 [ %.sroa.speculated80, %bb.i ], [ 0, %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEES4_ZNKS2_11spline_baseIfEclEfEUlRS5_SD_E0_ET_SF_SF_RKT0_T1_.exit ], [ 0, %bb.h ] ; 3 uses
  %i.bq = fcmp reassoc nsz arcp contract afn ugt float %.sroa.speculated102, %i.ba
  br i1 %i.bq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEES4_ZNKS2_11spline_baseIfEclEfEUlRS5_SD_E0_ET_SF_SF_RKT0_T1_.exit.thread
  %i.br = add nsw i64 %.050, 1                    ; 2 uses
  %i.bs = getelementptr inbounds nuw [12 x i8], ptr %i.c, i64 %i.br
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !31
  %i.bu = getelementptr inbounds nuw [12 x i8], ptr %i.c, i64 %.050
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !31 ; 2 uses
  %i.bw = fsub reassoc nsz arcp contract afn float %i.bt, %i.bv
  %i.bx = getelementptr inbounds i8, ptr %i.b, i64 -12 ; 2 uses
  %i.by = load float, ptr %i.bx, align 4, !tbaa !31 ; 2 uses
  %i.bz = fcmp reassoc nsz arcp contract afn ult float %.sroa.speculated102, %i.by
  br i1 %i.bz, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEES4_ZNKS2_11spline_baseIfEclEfEUlRS5_SD_E0_ET_SF_SF_RKT0_T1_.exit.thread
  %i.ca = phi float [ %i.ba, %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEES4_ZNKS2_11spline_baseIfEclEfEUlRS5_SD_E0_ET_SF_SF_RKT0_T1_.exit.thread ], [ %i.by, %bb.j ]
  %i.cb = phi ptr [ %i.c, %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEES4_ZNKS2_11spline_baseIfEclEfEUlRS5_SD_E0_ET_SF_SF_RKT0_T1_.exit.thread ], [ %i.bx, %bb.j ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !17
  %i.ce = fsub reassoc nsz arcp contract afn float %.sroa.speculated102, %i.ca
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !36
  %i.ch = fmul reassoc nsz arcp contract afn float %i.ce, %i.cg
  %i.ci = fadd reassoc nsz arcp contract afn float %i.ch, %i.cd
  br label %bb.l

.thread:                                          ; preds = %bb.g, %bb.f, %bb.j
  %i.cj = phi float [ %i.bv, %bb.j ], [ %i.ar, %bb.f ], [ %i.ar, %bb.g ]
  %.1117 = phi i64 [ %.050, %bb.j ], [ %i.ak, %bb.f ], [ %i.ak, %bb.g ]
  %.051116 = phi i64 [ %i.br, %bb.j ], [ %i.am, %bb.f ], [ %i.am, %bb.g ]
  %.153115 = phi float [ %i.bw, %bb.j ], [ %i.as, %bb.f ], [ %i.au, %bb.g ] ; 3 uses
  %.1109114 = phi float [ %.sroa.speculated102, %bb.j ], [ %.0108, %bb.f ], [ %.0108, %bb.g ]
  %i.ck = getelementptr inbounds nuw [12 x i8], ptr %i.c, i64 %.1117 ; 2 uses
  %i.cl = fsub reassoc nsz arcp contract afn float %.1109114, %i.cj
  %i.cm = fdiv reassoc nsz arcp contract afn float %i.cl, %.153115 ; 4 uses
  %i.cn = fmul reassoc nsz arcp contract afn float %i.cm, %i.cm ; 4 uses
  %i.co = fmul reassoc nsz arcp contract afn float %i.cn, %i.cm ; 3 uses
  %i.cp = fmul reassoc nsz arcp contract afn float %i.co, 2.000000e+00 ; 2 uses
  %i.cq = fmul reassoc nsz arcp contract afn float %i.cn, 3.000000e+00 ; 2 uses
  %i.cr = fsub reassoc nsz arcp contract afn float %i.cp, %i.cq
  %i.cs = fadd reassoc nsz arcp contract afn float %i.cr, 1.000000e+00
  %.neg120 = fmul reassoc nsz arcp contract afn float %i.cn, -2.000000e+00
  %i.ct = fadd reassoc nsz arcp contract afn float %i.cm, %.neg120
  %i.cu = fadd reassoc nsz arcp contract afn float %i.ct, %i.co
  %i.cv = fsub reassoc nsz arcp contract afn float %i.cq, %i.cp
  %i.cw = fsub reassoc nsz arcp contract afn float %i.co, %i.cn
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !17
  %i.cz = fmul reassoc nsz arcp contract afn float %i.cs, %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.db = load float, ptr %i.da, align 4, !tbaa !36
  %2 = fmul reassoc nsz arcp contract afn float %i.db, %.153115
  %i.dc = fmul reassoc nsz arcp contract afn float %2, %i.cu
  %3 = fadd reassoc nsz arcp contract afn float %i.cz, %i.dc
  %i.dd = getelementptr inbounds nuw [12 x i8], ptr %i.c, i64 %.051116 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.df = load float, ptr %i.de, align 4, !tbaa !17
  %i.dg = fmul reassoc nsz arcp contract afn float %i.cv, %i.df
  %4 = fadd reassoc nsz arcp contract afn float %i.dg, %3
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.di = load float, ptr %i.dh, align 4, !tbaa !36
  %i.dj = fmul reassoc nsz arcp contract afn float %i.di, %.153115
  %i.dk = fmul reassoc nsz arcp contract afn float %i.dj, %i.cw
  %i.dl = fadd reassoc nsz arcp contract afn float %4, %i.dk
  br label %bb.l

bb.l:                                             ; preds = %.thread, %bb.k
  %storemerge = phi float [ %i.ci, %bb.k ], [ %i.dl, %.thread ] ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dn = load float, ptr %i.dm, align 8, !tbaa !34 ; 2 uses
  %i.do = fcmp reassoc nsz arcp contract afn olt float %storemerge, %i.dn
  %.sroa.speculated78 = select i1 %i.do, float %i.dn, float %storemerge ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !34 ; 2 uses
  %i.dr = fcmp reassoc nsz arcp contract afn olt float %i.dq, %.sroa.speculated78
  %.sroa.speculated = select i1 %i.dr, float %i.dq, float %.sroa.speculated78
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.b
  %.0 = phi nsz float [ %i.j, %bb.b ], [ %.sroa.speculated, %bb.l ]
  ret float %.0
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define noundef float @interpolate_val_V2_periodic(i32 noundef %0, ptr noundef %1, float noundef %2, i32 noundef %3, float noundef %4) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.interpol::smooth_cubic_spline", align 8 ; 12 uses
  %6 = alloca %"struct.interpol::limits", align 4 ; 5 uses
  %7 = alloca %"struct.interpol::limits", align 8 ; 4 uses
  %8 = alloca %"class.interpol::Catmull_Rom_spline", align 8 ; 10 uses
  %9 = alloca %"struct.interpol::limits", align 4 ; 5 uses
  %10 = alloca %"struct.interpol::limits", align 8 ; 4 uses
  %11 = alloca %"class.interpol::monotone_hermite_spline", align 8 ; 12 uses
  %12 = alloca %"struct.interpol::limits", align 4 ; 5 uses
  %13 = alloca %"struct.interpol::limits", align 8 ; 4 uses
  switch i32 %3, label %bb.u [
    i32 0, label %bb.b
    i32 1, label %bb.i
    i32 2, label %bb.n
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr inbounds [8 x i8], ptr %1, i64 %i.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.c = fcmp reassoc nsz arcp contract afn olt float %4, 0.000000e+00
  %.sroa.speculated5.i = select i1 %i.c, float %4, float 0.000000e+00
  store float %.sroa.speculated5.i, ptr %6, align 4, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.e = fcmp reassoc nsz arcp contract afn ogt float %4, 0.000000e+00
  %.sroa.speculated.i = select i1 %i.e, float %4, float 0.000000e+00
  store float %.sroa.speculated.i, ptr %i.d, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  store <2 x float> <float -inf, float +inf>, ptr %7, align 8
  call void @_ZN8interpol11spline_baseIfEC2IP16CurveAnchorPointEET_S5_RKNS_6limitsIfEES9_b(ptr noundef nonnull align 8 dereferenceable(41) %5, ptr noundef %1, ptr noundef %i.b, ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %7, i1 noundef zeroext true)
  invoke void @_ZN8interpol19smooth_cubic_splineIfE4initEv(ptr noundef nonnull align 8 dereferenceable(41) %5)
          to label %_ZN8interpol19smooth_cubic_splineIfEC2IP16CurveAnchorPointEET_S5_RKNS_6limitsIfEES9_b.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.g = load ptr, ptr %5, align 8, !tbaa !11     ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i, label %common.resume, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !15
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #19
  br label %common.resume

common.resume:                                    ; preds = %_ZN8interpol11spline_baseIfED2Ev.exit25, %_ZN8interpol11spline_baseIfED2Ev.exit31, %_ZN8interpol11spline_baseIfED2Ev.exit39, %bb.o, %bb.p, %bb.c, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.ay, %bb.o ], [ %i.f, %bb.c ], [ %i.f, %bb.d ], [ %i.ay, %bb.p ], [ %i.t, %_ZN8interpol11spline_baseIfED2Ev.exit25 ], [ %i.am, %_ZN8interpol11spline_baseIfED2Ev.exit31 ], [ %i.bm, %_ZN8interpol11spline_baseIfED2Ev.exit39 ]
  resume { ptr, i32 } %common.resume.op

_ZN8interpol19smooth_cubic_splineIfEC2IP16CurveAnchorPointEET_S5_RKNS_6limitsIfEES9_b.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.m = invoke noundef float @_ZNK8interpol11spline_baseIfEclEf(ptr noundef nonnull align 8 dereferenceable(41) %5, float noundef %2)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %_ZN8interpol19smooth_cubic_splineIfEC2IP16CurveAnchorPointEET_S5_RKNS_6limitsIfEES9_b.exit
  %i.n = load ptr, ptr %5, align 8, !tbaa !11     ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %_ZN8interpol11spline_baseIfED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !15
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #19
  br label %_ZN8interpol11spline_baseIfED2Ev.exit

_ZN8interpol11spline_baseIfED2Ev.exit:            ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.u

bb.g:                                             ; preds = %_ZN8interpol19smooth_cubic_splineIfEC2IP16CurveAnchorPointEET_S5_RKNS_6limitsIfEES9_b.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %5, align 8, !tbaa !11     ; 3 uses
  %.not.i.i.i.i24 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i24, label %_ZN8interpol11spline_baseIfED2Ev.exit25, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !15
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #19
  br label %_ZN8interpol11spline_baseIfED2Ev.exit25

_ZN8interpol11spline_baseIfED2Ev.exit25:          ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %common.resume

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.aa = sext i32 %0 to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr %1, i64 %i.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.ac = fcmp reassoc nsz arcp contract afn olt float %4, 0.000000e+00
  %.sroa.speculated5.i26 = select i1 %i.ac, float %4, float 0.000000e+00
  store float %.sroa.speculated5.i26, ptr %9, align 4, !tbaa !37
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.ae = fcmp reassoc nsz arcp contract afn ogt float %4, 0.000000e+00
  %.sroa.speculated.i27 = select i1 %i.ae, float %4, float 0.000000e+00
  store float %.sroa.speculated.i27, ptr %i.ad, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  store <2 x float> <float -inf, float +inf>, ptr %10, align 8
  call void @_ZN8interpol11spline_baseIfEC2IP16CurveAnchorPointEET_S5_RKNS_6limitsIfEES9_b(ptr noundef nonnull align 8 dereferenceable(41) %8, ptr noundef %1, ptr noundef %i.ab, ptr noundef nonnull align 4 dereferenceable(8) %9, ptr noundef nonnull align 4 dereferenceable(8) %10, i1 noundef zeroext true)
  call void @_ZN8interpol18Catmull_Rom_splineIfE4initEv(ptr noundef nonnull align 8 dereferenceable(41) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  %i.af = invoke noundef float @_ZNK8interpol11spline_baseIfEclEf(ptr noundef nonnull align 8 dereferenceable(41) %8, float noundef %2)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ag = load ptr, ptr %8, align 8, !tbaa !11    ; 3 uses
  %.not.i.i.i.i28 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i28, label %_ZN8interpol11spline_baseIfED2Ev.exit29, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !15
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.al) #19
  br label %_ZN8interpol11spline_baseIfED2Ev.exit29

_ZN8interpol11spline_baseIfED2Ev.exit29:          ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.u

bb.l:                                             ; preds = %bb.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load ptr, ptr %8, align 8, !tbaa !11    ; 3 uses
  %.not.i.i.i.i30 = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i30, label %_ZN8interpol11spline_baseIfED2Ev.exit31, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !15
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = sub i64 %i.aq, %i.ar
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.as) #19
  br label %_ZN8interpol11spline_baseIfED2Ev.exit31

_ZN8interpol11spline_baseIfED2Ev.exit31:          ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %common.resume

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %i.at = sext i32 %0 to i64
  %i.au = getelementptr inbounds [8 x i8], ptr %1, i64 %i.at
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  %i.av = fcmp reassoc nsz arcp contract afn olt float %4, 0.000000e+00
  %.sroa.speculated5.i32 = select i1 %i.av, float %4, float 0.000000e+00
  store float %.sroa.speculated5.i32, ptr %12, align 4, !tbaa !37
  %i.aw = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.ax = fcmp reassoc nsz arcp contract afn ogt float %4, 0.000000e+00
  %.sroa.speculated.i33 = select i1 %i.ax, float %4, float 0.000000e+00
  store float %.sroa.speculated.i33, ptr %i.aw, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  store <2 x float> <float -inf, float +inf>, ptr %13, align 8
  call void @_ZN8interpol11spline_baseIfEC2IP16CurveAnchorPointEET_S5_RKNS_6limitsIfEES9_b(ptr noundef nonnull align 8 dereferenceable(41) %11, ptr noundef %1, ptr noundef %i.au, ptr noundef nonnull align 4 dereferenceable(8) %12, ptr noundef nonnull align 4 dereferenceable(8) %13, i1 noundef zeroext true)
  invoke void @_ZN8interpol23monotone_hermite_splineIfE4initEv(ptr noundef nonnull align 8 dereferenceable(41) %11)
          to label %_ZN8interpol23monotone_hermite_splineIfEC2IP16CurveAnchorPointEET_S5_RKNS_6limitsIfEES9_b.exit unwind label %bb.o
end_hunk_0
