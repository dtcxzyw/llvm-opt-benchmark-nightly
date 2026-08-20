inline.NumInlined: 1619
inline.NumDeleted: 787
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN5folly13CacheLocalityC2ESt6vectorIS1_ImSaImEESaIS3_EE:bb.a
  br i1 %.not28.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i, label %bb.m, !llvm.loop !83

bb.m:                                             ; preds = %.lr.ph162
  %i.ep = icmp ult i64 %i.em, %i.eo
  br label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5folly13CacheLocalityC1ESt6vectorIS4_ImSaImEESaIS6_EEE3$_0EclImNS_17__normal_iteratorIPmS6_EEEEbRT_T0_.exit.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5folly13CacheLocalityC1ESt6vectorIS4_ImSaImEESaIS6_EEE3$_0EclImNS_17__normal_iteratorIPmS6_EEEEbRT_T0_.exit.i.i.i.i.i": ; preds = %.preheader.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.preheader, %bb.m
  %.not27.i.i.i.i.i.i.i149 = phi i1 [ false, %bb.m ], [ true, %.preheader.i.i.i.i.i.i.i.preheader ], [ true, %.preheader.i.i.i.i.i.i.i ]
  %.2.i.i.i.i.i.i.i = phi i1 [ %i.ep, %bb.m ], [ undef, %.preheader.i.i.i.i.i.i.i.preheader ], [ undef, %.preheader.i.i.i.i.i.i.i ]
  %i.eq = icmp ult i64 %i.dr, %i.ea
  %spec.select.i.i.i.i.i.i.i = select i1 %.not27.i.i.i.i.i.i.i149, i1 %i.eq, i1 %.2.i.i.i.i.i.i.i
  br i1 %spec.select.i.i.i.i.i.i.i, label %bb.n, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZN5folly13CacheLocalityC1ES3_IS5_SaIS5_EEE3$_0EEEvT_T0_.exit.i.i.i.i"

bb.n:                                             ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5folly13CacheLocalityC1ESt6vectorIS4_ImSaImEESaIS6_EEE3$_0EclImNS_17__normal_iteratorIPmS6_EEEEbRT_T0_.exit.i.i.i.i.i", %.split.i.i.i.i.i
  store i64 %i.ea, ptr %.sroa.06.0.i.i.i.i.i, align 8, !tbaa !60
  br label %bb.l, !llvm.loop !84

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZN5folly13CacheLocalityC1ES3_IS5_SaIS5_EEE3$_0EEEvT_T0_.exit.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5folly13CacheLocalityC1ESt6vectorIS4_ImSaImEESaIS6_EEE3$_0EclImNS_17__normal_iteratorIPmS6_EEEEbRT_T0_.exit.i.i.i.i.i", %.split.i.i.i.i.i
  store i64 %i.dr, ptr %.sroa.06.0.i.i.i.i.i, align 8, !tbaa !60
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i, i64 8 ; 2 uses
  %i.es = icmp eq ptr %i.er, %.0.i.i.i.i.i62
  br i1 %i.es, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZN5folly13CacheLocalityC1ES3_IS5_SaIS5_EEE3$_0EvT_SC_T0_.exit", label %bb.k, !llvm.loop !85

bb.o:                                             ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEiEvT_S7_T0_.exit
  tail call fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN5folly13CacheLocalityC1ES3_IS5_SaIS5_EEE3$_0EEEvT_SF_T0_"(ptr nonnull %i.y, ptr %.0.i.i.i.i.i62, ptr nonnull readonly %1)
  br label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZN5folly13CacheLocalityC1ES3_IS5_SaIS5_EEE3$_0EvT_SC_T0_.exit"

"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZN5folly13CacheLocalityC1ES3_IS5_SaIS5_EEE3$_0EvT_SC_T0_.exit": ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZN5folly13CacheLocalityC1ES3_IS5_SaIS5_EEE3$_0EEEvT_T0_.exit.i.i.i.i", %bb.a, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i, %bb.o, %bb.j
  %.sroa.040.05368 = phi ptr [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.y, %bb.o ], [ %i.y, %bb.j ], [ null, %bb.a ], [ %i.y, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZN5folly13CacheLocalityC1ES3_IS5_SaIS5_EEE3$_0EEEvT_T0_.exit.i.i.i.i" ] ; 12 uses
  %.sroa.16.05467 = phi ptr [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.z, %bb.o ], [ %i.z, %bb.j ], [ null, %bb.a ], [ %i.z, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZN5folly13CacheLocalityC1ES3_IS5_SaIS5_EEE3$_0EEEvT_T0_.exit.i.i.i.i" ] ; 2 uses
  %.0.i.i.i.i.i5566 = phi ptr [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ], [ %.0.i.i.i.i.i62, %bb.o ], [ %.0.i.i.i.i.i62, %bb.j ], [ null, %bb.a ], [ %.0.i.i.i.i.i62, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZN5folly13CacheLocalityC1ES3_IS5_SaIS5_EEE3$_0EEEvT_T0_.exit.i.i.i.i" ] ; 2 uses
  %i.et = load i64, ptr %0, align 8, !tbaa !68    ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !61 ; 2 uses
  %i.ew = load ptr, ptr %i.b, align 8, !tbaa !56  ; 2 uses
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = sub i64 %i.ex, %i.ey
  %i.fa = ashr exact i64 %i.ez, 3                 ; 3 uses
  %i.fb = icmp ugt i64 %i.et, %i.fa
  br i1 %i.fb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZN5folly13CacheLocalityC1ES3_IS5_SaIS5_EEE3$_0EvT_SC_T0_.exit"
  %i.fc = sub nuw i64 %i.et, %i.fa
  invoke void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.fc)
          to label %_ZNSt6vectorImSaImEE6resizeEm.exit unwind label %bb.x

bb.q:                                             ; preds = %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZN5folly13CacheLocalityC1ES3_IS5_SaIS5_EEE3$_0EvT_SC_T0_.exit"
  %i.fd = icmp ult i64 %i.et, %i.fa
  br i1 %i.fd, label %bb.r, label %_ZNSt6vectorImSaImEE6resizeEm.exit

bb.r:                                             ; preds = %bb.q
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.et ; 2 uses
  %.not.i.i32 = icmp eq ptr %i.ev, %i.fe
  br i1 %.not.i.i32, label %_ZNSt6vectorImSaImEE6resizeEm.exit, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.r
  store ptr %i.fe, ptr %i.eu, align 8, !tbaa !61
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

_ZNSt6vectorImSaImEE6resizeEm.exit:               ; preds = %bb.p, %bb.q, %bb.r, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i
  %i.ff = ptrtoint ptr %.sroa.040.05368 to i64    ; 2 uses
  %.not93 = icmp eq ptr %.0.i.i.i.i.i5566, %.sroa.040.05368
  br i1 %.not93, label %._crit_edge89, label %.lr.ph88

.lr.ph88:                                         ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.fg = ptrtoint ptr %.0.i.i.i.i.i5566 to i64
  %i.fh = sub i64 %i.fg, %i.ff
  %i.fi = ashr exact i64 %i.fh, 3                 ; 3 uses
  %i.fj = load ptr, ptr %i.b, align 8, !tbaa !56  ; 5 uses
  %xtraiter = and i64 %i.fi, 3                    ; 3 uses
  %i.fk = icmp ult i64 %i.fi, 4
  br i1 %i.fk, label %.epil.preheader, label %.lr.ph88.new

.lr.ph88.new:                                     ; preds = %.lr.ph88
  %unroll_iter = and i64 %i.fi, -4
  br label %bb.z

._crit_edge89.loopexit.unr-lcssa:                 ; preds = %bb.z
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge89, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge89.loopexit.unr-lcssa, %.lr.ph88
  %.087.epil.init = phi i64 [ 0, %.lr.ph88 ], [ %i.hd, %._crit_edge89.loopexit.unr-lcssa ]
  %lcmp.mod175 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod175)
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.epil.preheader
  %.087.epil = phi i64 [ %.087.epil.init, %.epil.preheader ], [ %i.fo, %bb.s ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.s ]
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.040.05368, i64 %.087.epil
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !60
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.fm
  store i64 %.087.epil, ptr %i.fn, align 8, !tbaa !60
  %i.fo = add nuw i64 %.087.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge89, label %bb.s, !llvm.loop !86

._crit_edge89:                                    ; preds = %._crit_edge89.loopexit.unr-lcssa, %bb.s, %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.fp = load ptr, ptr %i.c, align 8, !tbaa !62  ; 5 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !65 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !66
  %i.fu = load <2 x ptr>, ptr %1, align 8, !tbaa !88
  store <2 x ptr> %i.fu, ptr %i.c, align 8, !tbaa !88
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !66
  store ptr %i.fw, ptr %i.fs, align 8, !tbaa !66
  %.not4.i.i.i.i.i = icmp eq ptr %i.fp, %i.fr
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %._crit_edge89, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.gd, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i.i ], [ %i.fp, %._crit_edge89 ] ; 3 uses
  %i.fx = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !56 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fx, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.fy = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !59
  %i.ga = ptrtoint ptr %i.fz to i64
  %i.gb = ptrtoint ptr %i.fx to i64
  %i.gc = sub i64 %i.ga, %i.gb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fx, i64 noundef %i.gc) #37
  br label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.t, %.lr.ph.i.i.i.i.i
  %i.gd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.gd, %i.fr
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !67

_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i.i.i, %._crit_edge89
  %.not.i.i1.i.i.i = icmp eq ptr %i.fp, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorIS_ImSaImEESaIS1_EEaSEOS3_.exit, label %bb.u

bb.u:                                             ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit.i.i.i
  %i.ge = ptrtoint ptr %i.ft to i64
  %i.gf = ptrtoint ptr %i.fp to i64
  %i.gg = sub i64 %i.ge, %i.gf
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fp, i64 noundef %i.gg) #37
  br label %_ZNSt6vectorIS_ImSaImEESaIS1_EEaSEOS3_.exit

_ZNSt6vectorIS_ImSaImEESaIS1_EEaSEOS3_.exit:      ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEES2_EvT_S4_RSaIT0_E.exit.i.i.i, %bb.u
  %.not.i.i.i = icmp eq ptr %.sroa.040.05368, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIS_ImSaImEESaIS1_EEaSEOS3_.exit
  %i.gh = ptrtoint ptr %.sroa.16.05467 to i64
  %i.gi = sub i64 %i.gh, %i.ff
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.040.05368, i64 noundef %i.gi) #37
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt6vectorIS_ImSaImEESaIS1_EEaSEOS3_.exit, %bb.v
  ret void

bb.w:                                             ; preds = %bb.c, %bb.b
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit35

bb.x:                                             ; preds = %bb.p
  %i.gk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %.sroa.040.05368, null
  br i1 %.not.i.i.i34, label %_ZNSt6vectorImSaImEED2Ev.exit35, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gl = ptrtoint ptr %.sroa.16.05467 to i64
  %i.gm = ptrtoint ptr %.sroa.040.05368 to i64
  %i.gn = sub i64 %i.gl, %i.gm
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.040.05368, i64 noundef %i.gn) #37
  br label %_ZNSt6vectorImSaImEED2Ev.exit35

bb.z:                                             ; preds = %bb.z, %.lr.ph88.new
  %.087 = phi i64 [ 0, %.lr.ph88.new ], [ %i.hd, %bb.z ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph88.new ], [ %niter.next.3, %bb.z ]
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %.sroa.040.05368, i64 %.087
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !60
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.gp
  store i64 %.087, ptr %i.gq, align 8, !tbaa !60
  %i.gr = or disjoint i64 %.087, 1                ; 2 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.040.05368, i64 %i.gr
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !60
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.gt
  store i64 %i.gr, ptr %i.gu, align 8, !tbaa !60
  %i.gv = or disjoint i64 %.087, 2                ; 2 uses
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.040.05368, i64 %i.gv
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !60
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.gx
  store i64 %i.gv, ptr %i.gy, align 8, !tbaa !60
  %i.gz = or disjoint i64 %.087, 3                ; 2 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %.sroa.040.05368, i64 %i.gz
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !60
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.hb
  store i64 %i.gz, ptr %i.hc, align 8, !tbaa !60
  %i.hd = add nuw i64 %.087, 4                    ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge89.loopexit.unr-lcssa, label %bb.z, !llvm.loop !89

_ZNSt6vectorImSaImEED2Ev.exit35:                  ; preds = %.loopexit, %.loopexit.split-lp, %bb.w, %bb.x, %bb.y
  %.pn26 = phi { ptr, i32 } [ %i.gk, %bb.y ], [ %i.gj, %bb.w ], [ %i.gk, %bb.x ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  tail call void @_ZNSt6vectorIS_ImSaImEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #34
  %i.he = load ptr, ptr %i.b, align 8, !tbaa !56  ; 3 uses
  %.not.i.i.i36 = icmp eq ptr %i.he, null
  br i1 %.not.i.i.i36, label %_ZNSt6vectorImSaImEED2Ev.exit37, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit35
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !59
  %i.hh = ptrtoint ptr %i.hg to i64
  %i.hi = ptrtoint ptr %i.he to i64
  %i.hj = sub i64 %i.hh, %i.hi
  tail call void @_ZdlPvm(ptr noundef nonnull %i.he, i64 noundef %i.hj) #37
  br label %_ZNSt6vectorImSaImEED2Ev.exit37

_ZNSt6vectorImSaImEED2Ev.exit37:                  ; preds = %_ZNSt6vectorImSaImEED2Ev.exit35, %bb.aa
  %i.hk = load ptr, ptr %i.a, align 8, !tbaa !56  ; 3 uses
  %.not.i.i.i38 = icmp eq ptr %i.hk, null
  br i1 %.not.i.i.i38, label %_ZNSt6vectorImSaImEED2Ev.exit39, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit37
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !59
  %i.hn = ptrtoint ptr %i.hm to i64
  %i.ho = ptrtoint ptr %i.hk to i64
  %i.hp = sub i64 %i.hn, %i.ho
  tail call void @_ZdlPvm(ptr noundef nonnull %i.hk, i64 noundef %i.hp) #37
  br label %_ZNSt6vectorImSaImEED2Ev.exit39

_ZNSt6vectorImSaImEED2Ev.exit39:                  ; preds = %_ZNSt6vectorImSaImEED2Ev.exit37, %bb.ab
  resume { ptr, i32 } %.pn26
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZN5folly13CacheLocalityC1ES3_IS5_SaIS5_EEE3$_0EEEvT_SF_T0_T1_"(ptr %0, ptr %1, i64 noundef %2, ptr nofree readonly captures(none) %3) unnamed_addr #11 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN5folly13CacheLocalityC1ES3_IS5_SaIS5_EEE3$_0EEEvT_SF_SF_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph218

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN5folly13CacheLocalityC1ES3_IS5_SaIS5_EEE3$_0EEET_SF_SF_T0_.exit"
  %i.h = icmp eq i64 %i.v, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph218, !llvm.loop !90

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa180 = phi i64 [ %i.d, %.lr.ph ], [ %i.et, %bb.b ] ; 2 uses
  %storemerge50.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.024.1.i.i, %bb.b ]
  %i.i = add nsw i64 %.lcssa180, -2
  %i.j = lshr i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.09.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.m, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.i.i.i
  %i.l = load i64, ptr %i.k, align 8, !tbaa !60
  tail call fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZN5folly13CacheLocalityC1ES3_IS5_SaIS5_EEE3$_0EEEvT_T0_SG_T1_T2_"(ptr %0, i64 noundef %.09.i.i.i, i64 noundef %.lcssa180, i64 noundef %i.l, ptr readonly %3)
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.m = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i9.i, label %bb.c, !llvm.loop !91

.lr.ph.i9.i:                                      ; preds = %bb.c, %.lr.ph.i9.i
  %.sroa.0.03.i.i = phi ptr [ %i.n, %.lr.ph.i9.i ], [ %storemerge50.lcssa, %bb.c ]
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !60
  %i.p = load i64, ptr %0, align 8, !tbaa !60
  store i64 %i.p, ptr %i.n, align 8, !tbaa !60
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.q, %i.a                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  tail call fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZN5folly13CacheLocalityC1ES3_IS5_SaIS5_EEE3$_0EEEvT_T0_SG_T1_T2_"(ptr nonnull %0, i64 noundef 0, i64 noundef %i.s, i64 noundef %i.o, ptr readonly %3)
  %i.t = icmp sgt i64 %i.r, 8
  br i1 %i.t, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN5folly13CacheLocalityC1ES3_IS5_SaIS5_EEE3$_0EEEvT_SF_SF_T0_.exit", !llvm.loop !92

.lr.ph218:                                        ; preds = %.lr.ph, %bb.b
  %storemerge50217 = phi ptr [ %.sroa.024.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.051216 = phi i64 [ %i.v, %bb.b ], [ %2, %.lr.ph ]
  %i.u = phi i64 [ %i.et, %bb.b ], [ %i.d, %.lr.ph ]
  %i.v = add nsw i64 %.051216, -1                 ; 3 uses
  %.val = load ptr, ptr %3, align 8, !tbaa !62    ; 7 uses
  %i.w = lshr i64 %i.u, 1
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.w ; 4 uses
  %i.y = getelementptr inbounds i8, ptr %storemerge50217, i64 -8 ; 6 uses
  %i.z = load i64, ptr %i.f, align 8, !tbaa !60   ; 7 uses
  %i.aa = load i64, ptr %i.x, align 8, !tbaa !60  ; 7 uses
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %i.z ; 2 uses
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %i.aa ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !61 ; 4 uses
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !56 ; 7 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3                 ; 9 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !61 ; 3 uses
  %i.am = load ptr, ptr %i.ac, align 8, !tbaa !56 ; 6 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 3                 ; 8 uses
  %.not.i.i.i.i = icmp eq i64 %i.aj, %i.aq
  br i1 %.not.i.i.i.i, label %.preheader.i.i.i.i.preheader, label %.split.i.i

.preheader.i.i.i.i.preheader:                     ; preds = %.lr.ph218
  %.not27.i.i.i.i182 = icmp eq ptr %i.ae, %i.af
  br i1 %.not27.i.i.i.i182, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5folly13CacheLocalityC1ESt6vectorIS4_ImSaImEESaIS6_EEE3$_0EclINS_17__normal_iteratorIPmS6_EESE_EEbT_T0_.exit.i.i", label %.lr.ph185

.split.i.i:                                       ; preds = %.lr.ph218
  %i.ar = icmp ult i64 %i.aj, %i.aq
  br i1 %i.ar, label %bb.e, label %bb.j

.preheader.i.i.i.i:                               ; preds = %.lr.ph185
  %.not27.i.i.i.i = icmp eq i64 %i.as, 0
  br i1 %.not27.i.i.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5folly13CacheLocalityC1ESt6vectorIS4_ImSaImEESaIS6_EEE3$_0EclINS_17__normal_iteratorIPmS6_EESE_EEbT_T0_.exit.i.i", label %.lr.ph185, !llvm.loop !83

.lr.ph185:                                        ; preds = %.preheader.i.i.i.i.preheader, %.preheader.i.i.i.i
  %.0.i.i.i.i183 = phi i64 [ %i.as, %.preheader.i.i.i.i ], [ %i.aj, %.preheader.i.i.i.i.preheader ]
  %i.as = add i64 %.0.i.i.i.i183, -1              ; 4 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.as
  %i.au = load i64, ptr %i.at, align 8, !tbaa !60 ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.as
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !60 ; 2 uses
  %.not28.i.i.i.i = icmp eq i64 %i.au, %i.aw
  br i1 %.not28.i.i.i.i, label %.preheader.i.i.i.i, label %bb.d, !llvm.loop !83

bb.d:                                             ; preds = %.lr.ph185
  %i.ax = icmp ult i64 %i.au, %i.aw
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5folly13CacheLocalityC1ESt6vectorIS4_ImSaImEESaIS6_EEE3$_0EclINS_17__normal_iteratorIPmS6_EESE_EEbT_T0_.exit.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5folly13CacheLocalityC1ESt6vectorIS4_ImSaImEESaIS6_EEE3$_0EclINS_17__normal_iteratorIPmS6_EESE_EEbT_T0_.exit.i.i": ; preds = %.preheader.i.i.i.i, %.preheader.i.i.i.i.preheader, %bb.d
  %.not27.i.i.i.i151 = phi i1 [ false, %bb.d ], [ true, %.preheader.i.i.i.i.preheader ], [ true, %.preheader.i.i.i.i ]
  %.2.i.i.i.i = phi i1 [ %i.ax, %bb.d ], [ undef, %.preheader.i.i.i.i.preheader ], [ undef, %.preheader.i.i.i.i ]
  %i.ay = icmp ult i64 %i.z, %i.aa
  %spec.select.i.i.i.i = select i1 %.not27.i.i.i.i151, i1 %i.ay, i1 %.2.i.i.i.i
  br i1 %spec.select.i.i.i.i, label %bb.e, label %bb.j

bb.e:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5folly13CacheLocalityC1ESt6vectorIS4_ImSaImEESaIS6_EEE3$_0EclINS_17__normal_iteratorIPmS6_EESE_EEbT_T0_.exit.i.i", %.split.i.i
  %i.az = load i64, ptr %i.y, align 8, !tbaa !60  ; 5 uses
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %i.az ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !61
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !56 ; 3 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = ashr exact i64 %i.bg, 3                 ; 4 uses
  %.not.i.i30.i.i = icmp eq i64 %i.aq, %i.bh
  br i1 %.not.i.i30.i.i, label %.preheader.i.i32.i.i.preheader, label %.split70.i.i

.preheader.i.i32.i.i.preheader:                   ; preds = %bb.e
  %.not27.i.i34.i.i196 = icmp eq ptr %i.al, %i.am
  br i1 %.not27.i.i34.i.i196, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5folly13CacheLocalityC1ESt6vectorIS4_ImSaImEESaIS6_EEE3$_0EclINS_17__normal_iteratorIPmS6_EESE_EEbT_T0_.exit39.i.i", label %.lr.ph199

.split70.i.i:                                     ; preds = %bb.e
  %i.bi = icmp ult i64 %i.aq, %i.bh
  br i1 %i.bi, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN5folly13CacheLocalityC1ES3_IS5_SaIS5_EEE3$_0EEEvT_SF_SF_SF_T0_.exit.i", label %bb.g

.preheader.i.i32.i.i:                             ; preds = %.lr.ph199
  %.not27.i.i34.i.i = icmp eq i64 %i.bj, 0
  br i1 %.not27.i.i34.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5folly13CacheLocalityC1ESt6vectorIS4_ImSaImEESaIS6_EEE3$_0EclINS_17__normal_iteratorIPmS6_EESE_EEbT_T0_.exit39.i.i", label %.lr.ph199, !llvm.loop !83

.lr.ph199:                                        ; preds = %.preheader.i.i32.i.i.preheader, %.preheader.i.i32.i.i
  %.0.i.i33.i.i197 = phi i64 [ %i.bj, %.preheader.i.i32.i.i ], [ %i.aq, %.preheader.i.i32.i.i.preheader ]
  %i.bj = add i64 %.0.i.i33.i.i197, -1            ; 4 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.bj
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !60 ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bj
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !60 ; 2 uses
  %.not28.i.i35.i.i = icmp eq i64 %i.bl, %i.bn
  br i1 %.not28.i.i35.i.i, label %.preheader.i.i32.i.i, label %bb.f, !llvm.loop !83

bb.f:                                             ; preds = %.lr.ph199
  %i.bo = icmp ult i64 %i.bl, %i.bn
end_hunk_0
begin_hunk_1_@_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_:bb.a
  %i.c = load i64, ptr %i.a, align 8, !tbaa !60   ; 8 uses
  %i.d = load i64, ptr %i.b, align 8, !tbaa !60   ; 8 uses
  %i.e = icmp eq i64 %i.c, %i.d
  %i.f = icmp ult i64 %i.c, %i.d
  br i1 %i.e, label %bb.b, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i64, ptr %i.g, align 8, !tbaa !60   ; 2 uses
  %i.j = load i64, ptr %i.h, align 8, !tbaa !60   ; 2 uses
  %i.k = icmp eq i64 %i.i, %i.j
  %i.l = icmp ult i64 %i.i, %i.j
  br i1 %i.k, label %.split, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit

.split:                                           ; preds = %bb.b
  %i.m = load i64, ptr %1, align 8, !tbaa !60
  %i.n = load i64, ptr %2, align 8, !tbaa !60
  %i.o = icmp ult i64 %i.m, %i.n
  br i1 %i.o, label %bb.c, label %bb.j

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit: ; preds = %bb.a, %bb.b
  %.sroa.06.0.i.i.i = phi i1 [ %i.f, %bb.a ], [ %i.l, %bb.b ]
  br i1 %.sroa.06.0.i.i.i, label %bb.c, label %bb.j

bb.c:                                             ; preds = %.split, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !60   ; 5 uses
  %i.r = icmp eq i64 %i.d, %i.q
  %i.s = icmp ult i64 %i.d, %i.q
  br i1 %i.r, label %bb.d, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = load i64, ptr %i.t, align 8, !tbaa !60   ; 2 uses
  %i.w = load i64, ptr %i.u, align 8, !tbaa !60   ; 2 uses
  %i.x = icmp eq i64 %i.v, %i.w
  %i.y = icmp ult i64 %i.v, %i.w
  br i1 %i.x, label %.split34, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27

.split34:                                         ; preds = %bb.d
  %i.z = load i64, ptr %2, align 8, !tbaa !60
  %i.aa = load i64, ptr %3, align 8, !tbaa !60
  %i.ab = icmp ult i64 %i.z, %i.aa
  br i1 %i.ab, label %bb.e, label %bb.f

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27: ; preds = %bb.c, %bb.d
  %.sroa.06.0.i.i.i26 = phi i1 [ %i.s, %bb.c ], [ %i.y, %bb.d ]
  br i1 %.sroa.06.0.i.i.i26, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.split34, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !60
  store i64 %i.d, ptr %i.ac, align 8, !tbaa !60
  store i64 %i.ad, ptr %i.b, align 8, !tbaa !60
  br label %bb.q

bb.f:                                             ; preds = %.split34, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27
  %i.ae = icmp eq i64 %i.c, %i.q
  %i.af = icmp ult i64 %i.c, %i.q
  br i1 %i.ae, label %bb.g, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !60 ; 2 uses
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !60 ; 2 uses
  %i.ak = icmp eq i64 %i.ai, %i.aj
  %i.al = icmp ult i64 %i.ai, %i.aj
  br i1 %i.ak, label %.split35, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29

.split35:                                         ; preds = %bb.g
  %i.am = load i64, ptr %1, align 8, !tbaa !60
  %i.an = load i64, ptr %3, align 8, !tbaa !60
  %i.ao = icmp ult i64 %i.am, %i.an
  br i1 %i.ao, label %bb.h, label %bb.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29: ; preds = %bb.f, %bb.g
  %.sroa.06.0.i.i.i28 = phi i1 [ %i.af, %bb.f ], [ %i.al, %bb.g ]
  br i1 %.sroa.06.0.i.i.i28, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.split35, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !60
  store i64 %i.q, ptr %i.ap, align 8, !tbaa !60
  store i64 %i.aq, ptr %i.p, align 8, !tbaa !60
  br label %bb.q

bb.i:                                             ; preds = %.split35, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !60
  store i64 %i.c, ptr %i.ar, align 8, !tbaa !60
  store i64 %i.as, ptr %i.a, align 8, !tbaa !60
  br label %bb.q

bb.j:                                             ; preds = %.split, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !60 ; 5 uses
  %i.av = icmp eq i64 %i.c, %i.au
  %i.aw = icmp ult i64 %i.c, %i.au
  br i1 %i.av, label %bb.k, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit31

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !60 ; 2 uses
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !60 ; 2 uses
  %i.bb = icmp eq i64 %i.az, %i.ba
  %i.bc = icmp ult i64 %i.az, %i.ba
  br i1 %i.bb, label %.split36, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit31

.split36:                                         ; preds = %bb.k
  %i.bd = load i64, ptr %1, align 8, !tbaa !60
  %i.be = load i64, ptr %3, align 8, !tbaa !60
  %i.bf = icmp ult i64 %i.bd, %i.be
  br i1 %i.bf, label %bb.l, label %bb.m

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit31: ; preds = %bb.j, %bb.k
  %.sroa.06.0.i.i.i30 = phi i1 [ %i.aw, %bb.j ], [ %i.bc, %bb.k ]
  br i1 %.sroa.06.0.i.i.i30, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.split36, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit31
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !60
  store i64 %i.c, ptr %i.bg, align 8, !tbaa !60
  store i64 %i.bh, ptr %i.a, align 8, !tbaa !60
  br label %bb.q

bb.m:                                             ; preds = %.split36, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit31
  %i.bi = icmp eq i64 %i.d, %i.au
  %i.bj = icmp ult i64 %i.d, %i.au
  br i1 %i.bi, label %bb.n, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit33

bb.n:                                             ; preds = %bb.m
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !60 ; 2 uses
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !60 ; 2 uses
  %i.bo = icmp eq i64 %i.bm, %i.bn
  %i.bp = icmp ult i64 %i.bm, %i.bn
  br i1 %i.bo, label %.split37, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit33

.split37:                                         ; preds = %bb.n
  %i.bq = load i64, ptr %2, align 8, !tbaa !60
  %i.br = load i64, ptr %3, align 8, !tbaa !60
  %i.bs = icmp ult i64 %i.bq, %i.br
  br i1 %i.bs, label %bb.o, label %bb.p

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit33: ; preds = %bb.m, %bb.n
  %.sroa.06.0.i.i.i32 = phi i1 [ %i.bj, %bb.m ], [ %i.bp, %bb.n ]
  br i1 %.sroa.06.0.i.i.i32, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.split37, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit33
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !60
  store i64 %i.au, ptr %i.bt, align 8, !tbaa !60
  store i64 %i.bu, ptr %i.at, align 8, !tbaa !60
  br label %bb.q

bb.p:                                             ; preds = %.split37, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit33
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !60
  store i64 %i.d, ptr %i.bv, align 8, !tbaa !60
  store i64 %i.bw, ptr %i.b, align 8, !tbaa !60
  br label %bb.q

bb.q:                                             ; preds = %bb.l, %bb.p, %bb.o, %bb.e, %bb.i, %bb.h
  %.sink = phi ptr [ %1, %bb.l ], [ %2, %bb.p ], [ %3, %bb.o ], [ %2, %bb.e ], [ %1, %bb.i ], [ %3, %bb.h ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sink, i64 8 ; 2 uses
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !60
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !60
  store i64 %i.ca, ptr %i.bx, align 8, !tbaa !60
  store i64 %i.bz, ptr %i.by, align 8, !tbaa !60
  %i.cb = load i64, ptr %0, align 8, !tbaa !60
  %i.cc = load i64, ptr %.sink, align 8, !tbaa !60
  store i64 %i.cc, ptr %0, align 8, !tbaa !60
  store i64 %i.cb, ptr %.sink, align 8, !tbaa !60
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.07.016 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = icmp eq ptr %.sroa.07.016, %1
  br i1 %i.b, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %bb.g ] ; 3 uses
  %.sroa.07.018 = phi ptr [ %.sroa.07.016, %.lr.ph ], [ %.sroa.07.0, %bb.g ] ; 10 uses
  %.pn17 = phi ptr [ %0, %.lr.ph ], [ %.sroa.07.018, %bb.g ] ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.pn17, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !60   ; 6 uses
  %i.h = load i64, ptr %i.c, align 8, !tbaa !60   ; 2 uses
  %i.i = icmp eq i64 %i.g, %i.h
  %i.j = icmp ult i64 %i.g, %i.h
  br i1 %i.i, label %bb.c, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.pn17, i64 32
  %i.l = load i64, ptr %i.k, align 8, !tbaa !60   ; 4 uses
  %i.m = load i64, ptr %i.d, align 8, !tbaa !60   ; 2 uses
  %i.n = icmp eq i64 %i.l, %i.m
  %i.o = icmp ult i64 %i.l, %i.m
  br i1 %i.n, label %.split, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit

.split:                                           ; preds = %bb.c
  %i.p = load i64, ptr %.sroa.07.018, align 8, !tbaa !60 ; 3 uses
  %i.q = load i64, ptr %0, align 8, !tbaa !60
  %i.r = icmp ult i64 %i.p, %i.q
  br i1 %i.r, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit._crit_edge21, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit._crit_edge

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit: ; preds = %bb.b, %bb.c
  %.sroa.06.0.i.i.i = phi i1 [ %i.j, %bb.b ], [ %i.o, %bb.c ]
  %.pre20 = load i64, ptr %.sroa.07.018, align 8, !tbaa !60 ; 2 uses
  %.phi.trans.insert22 = getelementptr inbounds nuw i8, ptr %.pn17, i64 32
  %.pre = load i64, ptr %.phi.trans.insert22, align 8, !tbaa !60 ; 2 uses
  br i1 %.sroa.06.0.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit._crit_edge21, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit._crit_edge

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit._crit_edge21: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit, %.split
  %i.s = phi i64 [ %i.l, %.split ], [ %.pre, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit ]
  %i.t = phi i64 [ %i.p, %.split ], [ %.pre20, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit ]
  %i.u = ptrtoint ptr %.sroa.07.018 to i64
  %i.v = sub i64 %i.u, %i.e                       ; 2 uses
  %i.w = icmp sgt i64 %i.v, 0
  br i1 %i.w, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit._crit_edge21
  %2 = getelementptr inbounds nuw i8, ptr %.pn17, i64 48
  %3 = udiv exact i64 %i.v, 24                    ; 2 uses
  %4 = and i64 %indvar, 1
  %lcmp.mod.not.not = icmp eq i64 %4, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.preheader.i.i.i.i.i.a, label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.preheader.i.i.i.i.i.a:                     ; preds = %.lr.ph.preheader.i.i.i.i.i
  %5 = getelementptr inbounds i8, ptr %.sroa.07.018, i64 -24 ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %.pn17, i64 24 ; 2 uses
  %7 = getelementptr inbounds i8, ptr %.sroa.07.018, i64 -8
  %8 = load i64, ptr %7, align 8, !tbaa !60
  %9 = getelementptr inbounds nuw i8, ptr %.pn17, i64 40
  store i64 %8, ptr %9, align 8, !tbaa !60
  %10 = getelementptr inbounds i8, ptr %.sroa.07.018, i64 -16
  %11 = load i64, ptr %10, align 8, !tbaa !60
  %i.x = getelementptr inbounds nuw i8, ptr %.pn17, i64 32
  store i64 %11, ptr %i.x, align 8, !tbaa !60
  %12 = load i64, ptr %5, align 8, !tbaa !60
  store i64 %12, ptr %6, align 8, !tbaa !60
  %13 = add nsw i64 %3, -1
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.preheader.i.i.i.i.i.a, %.lr.ph.preheader.i.i.i.i.i
  %.010.i.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.preheader.i.i.i.i.i ], [ %13, %.lr.ph.preheader.i.i.i.i.i.a ]
  %.069.i.i.i.i.i.unr = phi ptr [ %2, %.lr.ph.preheader.i.i.i.i.i ], [ %6, %.lr.ph.preheader.i.i.i.i.i.a ]
  %.078.i.i.i.i.i.unr = phi ptr [ %.sroa.07.018, %.lr.ph.preheader.i.i.i.i.i ], [ %5, %.lr.ph.preheader.i.i.i.i.i.a ]
  %14 = icmp eq i64 %indvar, 0
  br i1 %14, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.010.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i ], [ %.069.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %.078.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i ], [ %.078.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %15 = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  %16 = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  %17 = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8
  %18 = load i64, ptr %17, align 8, !tbaa !60
  %19 = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8
  store i64 %18, ptr %19, align 8, !tbaa !60
  %20 = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -16
  %21 = load i64, ptr %20, align 8, !tbaa !60
  %22 = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -16
  store i64 %21, ptr %22, align 8, !tbaa !60
  %23 = load i64, ptr %15, align 8, !tbaa !60
  store i64 %23, ptr %16, align 8, !tbaa !60
  %i.y = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -48 ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -48 ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !60
  %i.ac = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !60
  %i.ad = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -40
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !60
  %i.af = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -40
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !60
  %i.ag = load i64, ptr %i.y, align 8, !tbaa !60
  store i64 %i.ag, ptr %i.z, align 8, !tbaa !60
  %i.ah = add nsw i64 %.010.i.i.i.i.i, -2
  %24 = icmp sgt i64 %.010.i.i.i.i.i, 2
  br i1 %24, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, !llvm.loop !199

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit._crit_edge21
  store i64 %i.g, ptr %i.c, align 8, !tbaa !60
  store i64 %i.s, ptr %i.d, align 8, !tbaa !60
  store i64 %i.t, ptr %0, align 8, !tbaa !60
  br label %bb.g

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit._crit_edge: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit, %.split
  %i.ai = phi i64 [ %i.l, %.split ], [ %.pre, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit ] ; 4 uses
  %i.aj = phi i64 [ %i.p, %.split ], [ %.pre20, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit ] ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit._crit_edge
  %.sroa.07.0.i = phi ptr [ %.sroa.07.018, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit._crit_edge ], [ %.sroa.0.0.i, %bb.f ] ; 10 uses
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.07.0.i, i64 -24 ; 3 uses
  %i.ak = getelementptr inbounds i8, ptr %.sroa.07.0.i, i64 -8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !60 ; 3 uses
  %i.am = icmp eq i64 %i.g, %i.al
  %i.an = icmp ult i64 %i.g, %i.al
  br i1 %i.am, label %bb.e, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5tupleIJmmmEENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds i8, ptr %.sroa.07.0.i, i64 -16
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !60 ; 2 uses
  %i.aq = icmp eq i64 %i.ai, %i.ap
  %i.ar = icmp ult i64 %i.ai, %i.ap
  br i1 %i.aq, label %.split.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5tupleIJmmmEENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i

.split.i:                                         ; preds = %bb.e
  %i.as = load i64, ptr %.sroa.0.0.i, align 8, !tbaa !60 ; 2 uses
  %i.at = icmp ult i64 %i.aj, %i.as
  br i1 %i.at, label %bb.f, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5tupleIJmmmEENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i: ; preds = %bb.e, %bb.d
  %.sroa.06.0.i.i.i.i = phi i1 [ %i.an, %bb.d ], [ %i.ar, %bb.e ]
  br i1 %.sroa.06.0.i.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5tupleIJmmmEENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit._crit_edge.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5tupleIJmmmEENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit._crit_edge.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5tupleIJmmmEENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.sroa.07.0.i, i64 -16
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !60
  %.pre10.i = load i64, ptr %.sroa.0.0.i, align 8, !tbaa !60
  br label %bb.f

bb.f:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5tupleIJmmmEENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit._crit_edge.i, %.split.i
  %i.au = phi i64 [ %.pre10.i, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5tupleIJmmmEENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit._crit_edge.i ], [ %i.as, %.split.i ]
  %i.av = phi i64 [ %.pre.i, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5tupleIJmmmEENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit._crit_edge.i ], [ %i.ai, %.split.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i, i64 16
  store i64 %i.al, ptr %i.aw, align 8, !tbaa !60
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i, i64 8
  store i64 %i.av, ptr %i.ax, align 8, !tbaa !60
  store i64 %i.au, ptr %.sroa.07.0.i, align 8, !tbaa !60
  br label %bb.d, !llvm.loop !200

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit: ; preds = %.split.i, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5tupleIJmmmEENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i, i64 16
  store i64 %i.g, ptr %i.ay, align 8, !tbaa !60
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i, i64 8
  store i64 %i.ai, ptr %i.az, align 8, !tbaa !60
  store i64 %i.aj, ptr %.sroa.07.0.i, align 8, !tbaa !60
  br label %bb.g

bb.g:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit
  %.sroa.07.0 = getelementptr inbounds nuw i8, ptr %.sroa.07.018, i64 24 ; 2 uses
  %i.ba = icmp eq ptr %.sroa.07.0, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ba, label %.loopexit, label %bb.b, !llvm.loop !201

.loopexit:                                        ; preds = %bb.g, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256), ptr noundef, i32 noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256)) unnamed_addr #8 align 2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !28     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !49 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !43
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #37
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !55

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !28
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !52
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #37
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #16

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #10

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !28     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #35
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #36 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !45
  %i.s = load ptr, ptr %2, align 8, !tbaa !49     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !51   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  store ptr %i.s, ptr %i.q, align 8, !tbaa !49
  %i.z = load i64, ptr %i.t, align 8, !tbaa !43
  store i64 %i.z, ptr %i.r, align 8, !tbaa !43
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !51
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit

_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.aa = phi i64 [ %i.w, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !51
  store ptr %i.t, ptr %2, align 8, !tbaa !49
  store i64 0, ptr %i.ab, align 8, !tbaa !51
  store i8 0, ptr %i.t, align 8, !tbaa !43
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214)
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ad, ptr %.012.i.i.i, align 8, !tbaa !45, !alias.scope !211, !noalias !214
  %i.ae = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !49, !alias.scope !214, !noalias !211 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !51, !alias.scope !214, !noalias !211 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ak, i1 false), !alias.scope !216
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ae, ptr %.012.i.i.i, align 8, !tbaa !49, !alias.scope !211, !noalias !214
  %i.al = load i64, ptr %i.af, align 8, !tbaa !43, !alias.scope !214, !noalias !211
  store i64 %i.al, ptr %i.ad, align 8, !tbaa !43, !alias.scope !211, !noalias !214
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !51, !alias.scope !214, !noalias !211
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.d
  %i.am = phi i64 [ %i.ai, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !51, !alias.scope !211, !noalias !214
  store ptr %i.af, ptr %.0911.i.i.i, align 8, !tbaa !49, !alias.scope !214, !noalias !211
  store i64 0, ptr %i.an, align 8, !tbaa !51, !alias.scope !214, !noalias !211
  store i8 0, ptr %i.af, align 8, !tbaa !43, !alias.scope !214, !noalias !211
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !217

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit ], [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !221)
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.as, ptr %.012.i.i.i18, align 8, !tbaa !45, !alias.scope !218, !noalias !221
  %i.at = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !49, !alias.scope !221, !noalias !218 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !51, !alias.scope !221, !noalias !218 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 16
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = add nuw nsw i64 %i.ax, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.au, i64 %i.az, i1 false), !alias.scope !223
end_hunk_1
begin_hunk_2_@_ZSt18__do_uninit_fill_nIPSt6vectorImSaImEEmS2_ET_S4_T0_RKT1_:bb.a
  %i.t = load i64, ptr %i.m, align 8, !tbaa !60
  store i64 %i.t, ptr %i.i, align 8, !tbaa !60
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.u = getelementptr inbounds i8, ptr %i.i, i64 %i.q
  store ptr %i.u, ptr %i.j, align 8, !tbaa !61
  %i.v = add i64 %.01117, -1                      ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.018, i64 24 ; 2 uses
  %.not = icmp eq i64 %i.v, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !224

.loopexit:                                        ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.x = extractvalue { ptr, i32 } %lpad.phi, 0
  %i.y = tail call ptr @__cxa_begin_catch(ptr %i.x) #34 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_(ptr noundef %0, ptr noundef nonnull %.018)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_rethrow() #35
          to label %bb.m unwind label %bb.j

._crit_edge:                                      ; preds = %bb.g, %bb.a
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.w, %bb.g ]
  ret ptr %.0.lcssa

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  resume { ptr, i32 } %i.z

bb.l:                                             ; preds = %bb.j
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #38
  unreachable

bb.m:                                             ; preds = %bb.i
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @_ZN5folly6Getcpu15resolveVdsoFuncEv() local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = tail call ptr @dlopen(ptr noundef nonnull @.str.34, i32 noundef 5) #34 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @dlsym(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.35) #34 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @dlclose(ptr noundef nonnull %i.a) #34 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ %i.c, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind
declare ptr @dlopen(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @dlsym(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @dlclose(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define noundef i32 @_ZN5folly18SequentialThreadId3getEv() local_unnamed_addr #22 align 2 {
bb.a:
  %i.a = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZZN5folly18SequentialThreadId3getEvE5local) ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !102  ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !48

bb.b:                                             ; preds = %bb.a
  %i.c = atomicrmw add ptr @_ZZN5folly18SequentialThreadId3getEvE6global, i32 1 seq_cst, align 4
  %i.d = add i32 %i.c, 1                          ; 2 uses
  store i32 %i.d, ptr %i.a, align 4, !tbaa !102
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi i32 [ %i.d, %bb.b ], [ %i.b, %bb.a ]
  ret i32 %i.e
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #13

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN5folly15HashingThreadId3getEv() local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i64 @_ZN5folly18getCurrentThreadIDEv() ; 2 uses
  %i.b = xor i64 %i.a, -1
  %i.c = shl i64 %i.a, 18
  %i.d = add i64 %i.c, %i.b                       ; 2 uses
  %i.e = lshr i64 %i.d, 31
  %i.f = xor i64 %i.e, %i.d
  %i.g = mul i64 %i.f, 21                         ; 2 uses
  %i.h = lshr i64 %i.g, 11
  %i.i = xor i64 %i.h, %i.g
  %i.j = mul i64 %i.i, 65                         ; 2 uses
  %i.k = lshr i64 %i.j, 22
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  ret i32 %i.m
}

declare noundef i64 @_ZN5folly18getCurrentThreadIDEv() local_unnamed_addr #16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef i32 @_ZN5folly6detail18AccessSpreaderBase16degenerateGetcpuEPjS2_Pv(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #23 align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %0, align 4, !tbaa !102
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not5 = icmp eq ptr %1, null
  br i1 %.not5, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %1, align 4, !tbaa !102
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly14AccessSpreaderISt6atomicE10initializeERNS2_11GlobalStateE(ptr noundef nonnull align 8 dereferenceable(65800) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZN5folly13CacheLocality6systemISt6atomicEERKS0_v(), !inline_history !225 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !68
  %.fr.i = freeze i64 %i.b                        ; 10 uses
  %invariant.umin.i = tail call i64 @llvm.umin.i64(i64 %.fr.i, i64 256) ; 4 uses
  %i.c = icmp ult i64 %.fr.i, 256
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 5 uses
  br i1 %i.c, label %.split.us.i, label %.lr.ph.us62.i

.split.us.i:                                      ; preds = %bb.a
  %.not.i = icmp ne i64 %.fr.i, 0
  tail call void @llvm.assume(i1 %.not.i)
  %xtraiter = and i64 %invariant.umin.i, 1
  %i.e = icmp eq i64 %.fr.i, 1
  %unroll_iter = and i64 %invariant.umin.i, 254
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod11 = trunc i64 %invariant.umin.i to i1
  br label %.lr.ph.us.us.i

.lr.ph.us.us.i:                                   ; preds = %.split.us.i, %..preheader_crit_edge.us.us.preheader.i
  %storemerge54.us.us.i = phi i64 [ %i.az, %..preheader_crit_edge.us.us.preheader.i ], [ 0, %.split.us.i ] ; 3 uses
  %i.f = getelementptr inbounds nuw [256 x i8], ptr %0, i64 %storemerge54.us.us.i ; 9 uses
  %.sroa.speculated42.us.us.i = tail call i64 @llvm.umax.i64(i64 %storemerge54.us.us.i, i64 1) ; 3 uses
  br i1 %i.e, label %.epil.preheader, label %.lr.ph.us.us.i.new

.lr.ph.us.us.i.new:                               ; preds = %.lr.ph.us.us.i, %.lr.ph.us.us.i.new
  %.02849.us.us.i = phi i64 [ %i.v, %.lr.ph.us.us.i.new ], [ 0, %.lr.ph.us.us.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.us.us.i.new ], [ 0, %.lr.ph.us.us.i ]
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !56
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.02849.us.us.i
  %i.i = load i64, ptr %i.h, align 8, !tbaa !60
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %.02849.us.us.i
  %i.k = mul i64 %i.i, %.sroa.speculated42.us.us.i
  %i.l = udiv i64 %i.k, %.fr.i
  %i.m = trunc i64 %i.l to i8
  store atomic i8 %i.m, ptr %i.j monotonic, align 2
  %i.n = or disjoint i64 %.02849.us.us.i, 1       ; 2 uses
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !56
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.n
  %i.q = load i64, ptr %i.p, align 8, !tbaa !60
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.n
  %i.s = mul i64 %i.q, %.sroa.speculated42.us.us.i
  %i.t = udiv i64 %i.s, %.fr.i
  %i.u = trunc i64 %i.t to i8
  store atomic i8 %i.u, ptr %i.r monotonic, align 1
  %i.v = add nuw nsw i64 %.02849.us.us.i, 2       ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph51.us.us.i.preheader.unr-lcssa, label %.lr.ph.us.us.i.new, !llvm.loop !226

.lr.ph51.us.us.i.preheader.unr-lcssa:             ; preds = %.lr.ph.us.us.i.new
  br i1 %lcmp.mod.not, label %.lr.ph51.us.us.i.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph51.us.us.i.preheader.unr-lcssa, %.lr.ph.us.us.i
  %.02849.us.us.i.epil.init = phi i64 [ 0, %.lr.ph.us.us.i ], [ %i.v, %.lr.ph51.us.us.i.preheader.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod11)
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !56
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.02849.us.us.i.epil.init
  %i.y = load i64, ptr %i.x, align 8, !tbaa !60
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 %.02849.us.us.i.epil.init
  %i.aa = mul i64 %i.y, %.sroa.speculated42.us.us.i
  %i.ab = udiv i64 %i.aa, %.fr.i
  %i.ac = trunc i64 %i.ab to i8
  store atomic i8 %i.ac, ptr %i.z monotonic, align 1
  br label %.lr.ph51.us.us.i.preheader

.lr.ph51.us.us.i.preheader:                       ; preds = %.lr.ph51.us.us.i.preheader.unr-lcssa, %.epil.preheader
  br label %.lr.ph51.us.us.i

bb.b:                                             ; preds = %bb.b, %.lr.ph51.us.us.i.new
  %.02750.us.us.i = phi i64 [ 0, %.lr.ph51.us.us.i.new ], [ %i.as, %bb.b ] ; 6 uses
  %niter17 = phi i64 [ 0, %.lr.ph51.us.us.i.new ], [ %niter17.next.3, %bb.b ]
  %i.ad = getelementptr i8, ptr %i.bb, i64 %.02750.us.us.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 %.02750.us.us.i
  %i.af = load atomic i8, ptr %i.ae monotonic, align 4
  store atomic i8 %i.af, ptr %i.ad monotonic, align 1
  %i.ag = or disjoint i64 %.02750.us.us.i, 1      ; 2 uses
  %i.ah = getelementptr i8, ptr %i.bb, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ag
  %i.aj = load atomic i8, ptr %i.ai monotonic, align 1
  store atomic i8 %i.aj, ptr %i.ah monotonic, align 1
  %i.ak = or disjoint i64 %.02750.us.us.i, 2      ; 2 uses
  %i.al = getelementptr i8, ptr %i.bb, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ak
  %i.an = load atomic i8, ptr %i.am monotonic, align 2
  store atomic i8 %i.an, ptr %i.al monotonic, align 1
  %i.ao = or disjoint i64 %.02750.us.us.i, 3      ; 2 uses
  %i.ap = getelementptr i8, ptr %i.bb, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ao
  %i.ar = load atomic i8, ptr %i.aq monotonic, align 1
  store atomic i8 %i.ar, ptr %i.ap monotonic, align 1
  %i.as = add nuw i64 %.02750.us.us.i, 4          ; 2 uses
  %niter17.next.3 = add nuw i64 %niter17, 4       ; 2 uses
  %niter17.ncmp.3 = icmp eq i64 %niter17.next.3, %unroll_iter16
  br i1 %niter17.ncmp.3, label %._crit_edge.us.us.i.unr-lcssa, label %bb.b, !llvm.loop !227

._crit_edge.us.us.i.unr-lcssa:                    ; preds = %bb.b
  %lcmp.mod14.not = icmp eq i64 %xtraiter13, 0
  br i1 %lcmp.mod14.not, label %._crit_edge.us.us.i, label %.epil.preheader12

.epil.preheader12:                                ; preds = %._crit_edge.us.us.i.unr-lcssa, %.lr.ph51.us.us.i
  %.02750.us.us.i.epil.init = phi i64 [ 0, %.lr.ph51.us.us.i ], [ %i.as, %._crit_edge.us.us.i.unr-lcssa ]
  %lcmp.mod15 = icmp ne i64 %xtraiter13, 0
  tail call void @llvm.assume(i1 %lcmp.mod15)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader12
  %.02750.us.us.i.epil = phi i64 [ %.02750.us.us.i.epil.init, %.epil.preheader12 ], [ %i.aw, %bb.c ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader12 ], [ %epil.iter.next, %bb.c ]
  %i.at = getelementptr i8, ptr %i.bb, i64 %.02750.us.us.i.epil
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 %.02750.us.us.i.epil
  %i.av = load atomic i8, ptr %i.au monotonic, align 1
  store atomic i8 %i.av, ptr %i.at monotonic, align 1
  %i.aw = add nuw i64 %.02750.us.us.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter13
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.us.i, label %bb.c, !llvm.loop !228

._crit_edge.us.us.i:                              ; preds = %bb.c, %._crit_edge.us.us.i.unr-lcssa
  %i.ax = add nuw nsw i64 %.sroa.speculated.us.us.i, %storemerge3252.us.us.i ; 2 uses
  %i.ay = icmp ult i64 %i.ax, 256
  br i1 %i.ay, label %.lr.ph51.us.us.i, label %..preheader_crit_edge.us.us.preheader.i, !llvm.loop !229

..preheader_crit_edge.us.us.preheader.i:          ; preds = %._crit_edge.us.us.i
  %i.az = add nuw nsw i64 %storemerge54.us.us.i, 1 ; 2 uses
  %exitcond72.not.i = icmp eq i64 %i.az, 257
  br i1 %exitcond72.not.i, label %_ZN5folly6detail18AccessSpreaderBase10initializeERNS1_11GlobalStateERFPFiPjS4_PvEvERFRKNS_13CacheLocalityEvE.exit, label %.lr.ph.us.us.i, !llvm.loop !230

.lr.ph51.us.us.i:                                 ; preds = %.lr.ph51.us.us.i.preheader, %._crit_edge.us.us.i
  %storemerge3252.us.us.i = phi i64 [ %i.ax, %._crit_edge.us.us.i ], [ %.fr.i, %.lr.ph51.us.us.i.preheader ] ; 4 uses
  %i.ba = sub nuw nsw i64 256, %storemerge3252.us.us.i
  %.sroa.speculated.us.us.i = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 %storemerge3252.us.us.i) ; 4 uses
  %i.bb = getelementptr i8, ptr %i.f, i64 %storemerge3252.us.us.i ; 5 uses
  %i.bc = add nsw i64 %.sroa.speculated.us.us.i, -1
  %xtraiter13 = and i64 %.sroa.speculated.us.us.i, 3 ; 3 uses
  %i.bd = icmp ult i64 %i.bc, 3
  br i1 %i.bd, label %.epil.preheader12, label %.lr.ph51.us.us.i.new

.lr.ph51.us.us.i.new:                             ; preds = %.lr.ph51.us.us.i
  %unroll_iter16 = and i64 %.sroa.speculated.us.us.i, 508
  br label %bb.b

.lr.ph.us62.i:                                    ; preds = %bb.a, %..preheader48_crit_edge.us63.preheader.i
  %storemerge54.us57.i = phi i64 [ %i.bv, %..preheader48_crit_edge.us63.preheader.i ], [ 0, %bb.a ] ; 3 uses
  %i.be = getelementptr inbounds nuw [256 x i8], ptr %0, i64 %storemerge54.us57.i ; 2 uses
  %.sroa.speculated42.us58.i = tail call i64 @llvm.umax.i64(i64 %storemerge54.us57.i, i64 1) ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.us62.i
  %.02849.us59.i = phi i64 [ 0, %.lr.ph.us62.i ], [ %i.bu, %bb.d ] ; 4 uses
  %i.bf = load ptr, ptr %i.d, align 8, !tbaa !56
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %.02849.us59.i
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !60
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 %.02849.us59.i
  %i.bj = mul i64 %i.bh, %.sroa.speculated42.us58.i
  %i.bk = udiv i64 %i.bj, %.fr.i
  %i.bl = trunc i64 %i.bk to i8
  store atomic i8 %i.bl, ptr %i.bi monotonic, align 2
  %i.bm = or disjoint i64 %.02849.us59.i, 1       ; 2 uses
  %i.bn = load ptr, ptr %i.d, align 8, !tbaa !56
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bm
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !60
  %i.bq = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bm
  %i.br = mul i64 %i.bp, %.sroa.speculated42.us58.i
  %i.bs = udiv i64 %i.br, %.fr.i
  %i.bt = trunc i64 %i.bs to i8
  store atomic i8 %i.bt, ptr %i.bq monotonic, align 1
  %i.bu = add nuw nsw i64 %.02849.us59.i, 2       ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.bu, %invariant.umin.i
  br i1 %exitcond.not.i.1, label %..preheader48_crit_edge.us63.preheader.i, label %bb.d, !llvm.loop !226

..preheader48_crit_edge.us63.preheader.i:         ; preds = %bb.d
  %i.bv = add nuw nsw i64 %storemerge54.us57.i, 1 ; 2 uses
  %exitcond69.not.i = icmp eq i64 %i.bv, 257
  br i1 %exitcond69.not.i, label %_ZN5folly6detail18AccessSpreaderBase10initializeERNS1_11GlobalStateERFPFiPjS4_PvEvERFRKNS_13CacheLocalityEvE.exit, label %.lr.ph.us62.i, !llvm.loop !230

_ZN5folly6detail18AccessSpreaderBase10initializeERNS1_11GlobalStateERFPFiPjS4_PvEvERFRKNS_13CacheLocalityEvE.exit: ; preds = %..preheader48_crit_edge.us63.preheader.i, %..preheader_crit_edge.us.us.preheader.i
  %i.bw = tail call ptr @dlopen(ptr noundef nonnull @.str.34, i32 noundef 5) #34 ; 3 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %_ZN5folly14AccessSpreaderISt6atomicE14pickGetcpuFuncEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5folly6detail18AccessSpreaderBase10initializeERNS1_11GlobalStateERFPFiPjS4_PvEvERFRKNS_13CacheLocalityEvE.exit
  %i.by = tail call ptr @dlsym(ptr noundef nonnull %i.bw, ptr noundef nonnull @.str.35) #34 ; 2 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.f, label %_ZN5folly14AccessSpreaderISt6atomicE14pickGetcpuFuncEv.exit

bb.f:                                             ; preds = %bb.e
  %i.ca = tail call i32 @dlclose(ptr noundef nonnull %i.bw) #34 ; 0 uses
  br label %_ZN5folly14AccessSpreaderISt6atomicE14pickGetcpuFuncEv.exit

_ZN5folly14AccessSpreaderISt6atomicE14pickGetcpuFuncEv.exit: ; preds = %_ZN5folly6detail18AccessSpreaderBase10initializeERNS1_11GlobalStateERFPFiPjS4_PvEvERFRKNS_13CacheLocalityEvE.exit, %bb.e, %bb.f
  %.0.i.i = phi ptr [ null, %_ZN5folly6detail18AccessSpreaderBase10initializeERNS1_11GlobalStateERFPFiPjS4_PvEvERFRKNS_13CacheLocalityEvE.exit ], [ null, %bb.f ], [ %i.by, %bb.e ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 65792
  %.not.i1 = icmp eq ptr %.0.i.i, null
  %i.cc = select i1 %.not.i1, ptr @_ZN5folly14FallbackGetcpuINS_18SequentialThreadIdEE6getcpuEPjS3_Pv, ptr %.0.i.i
  %i.cd = atomicrmw xchg ptr %i.cb, ptr %i.cc acq_rel, align 8 ; 0 uses
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5folly6detail18AccessSpreaderBase10initializeERNS1_11GlobalStateERFPFiPjS4_PvEvERFRKNS_13CacheLocalityEvE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(65800) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(80) ptr %2() ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !68
  %.fr = freeze i64 %i.b                          ; 10 uses
  %invariant.umin = tail call i64 @llvm.umin.i64(i64 %.fr, i64 256) ; 4 uses
  %i.c = icmp ult i64 %.fr, 256
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 5 uses
  br i1 %i.c, label %.split.us, label %.lr.ph.us62

.split.us:                                        ; preds = %bb.a
  %.not = icmp ne i64 %.fr, 0
  tail call void @llvm.assume(i1 %.not)
  %xtraiter = and i64 %invariant.umin, 1
  %i.e = icmp eq i64 %.fr, 1
  %unroll_iter = and i64 %invariant.umin, 254
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod82 = trunc i64 %invariant.umin to i1
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.split.us, %..preheader_crit_edge.us.us.preheader
  %storemerge54.us.us = phi i64 [ %i.az, %..preheader_crit_edge.us.us.preheader ], [ 0, %.split.us ] ; 3 uses
  %i.f = getelementptr inbounds nuw [256 x i8], ptr %0, i64 %storemerge54.us.us ; 9 uses
  %.sroa.speculated42.us.us = tail call i64 @llvm.umax.i64(i64 %storemerge54.us.us, i64 1) ; 3 uses
  br i1 %i.e, label %.epil.preheader, label %.lr.ph.us.us.new

.lr.ph.us.us.new:                                 ; preds = %.lr.ph.us.us, %.lr.ph.us.us.new
  %.02849.us.us = phi i64 [ %i.v, %.lr.ph.us.us.new ], [ 0, %.lr.ph.us.us ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.us.us.new ], [ 0, %.lr.ph.us.us ]
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !56
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.02849.us.us
  %i.i = load i64, ptr %i.h, align 8, !tbaa !60
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %.02849.us.us
  %i.k = mul i64 %i.i, %.sroa.speculated42.us.us
  %i.l = udiv i64 %i.k, %.fr
  %i.m = trunc i64 %i.l to i8
  store atomic i8 %i.m, ptr %i.j monotonic, align 2
  %i.n = or disjoint i64 %.02849.us.us, 1         ; 2 uses
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !56
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.n
  %i.q = load i64, ptr %i.p, align 8, !tbaa !60
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.n
  %i.s = mul i64 %i.q, %.sroa.speculated42.us.us
  %i.t = udiv i64 %i.s, %.fr
  %i.u = trunc i64 %i.t to i8
  store atomic i8 %i.u, ptr %i.r monotonic, align 1
  %i.v = add nuw nsw i64 %.02849.us.us, 2         ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph51.us.us.preheader.unr-lcssa, label %.lr.ph.us.us.new, !llvm.loop !226

.lr.ph51.us.us.preheader.unr-lcssa:               ; preds = %.lr.ph.us.us.new
  br i1 %lcmp.mod.not, label %.lr.ph51.us.us.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph51.us.us.preheader.unr-lcssa, %.lr.ph.us.us
  %.02849.us.us.epil.init = phi i64 [ 0, %.lr.ph.us.us ], [ %i.v, %.lr.ph51.us.us.preheader.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod82)
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !56
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.02849.us.us.epil.init
  %i.y = load i64, ptr %i.x, align 8, !tbaa !60
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 %.02849.us.us.epil.init
  %i.aa = mul i64 %i.y, %.sroa.speculated42.us.us
  %i.ab = udiv i64 %i.aa, %.fr
  %i.ac = trunc i64 %i.ab to i8
  store atomic i8 %i.ac, ptr %i.z monotonic, align 1
  br label %.lr.ph51.us.us.preheader

.lr.ph51.us.us.preheader:                         ; preds = %.lr.ph51.us.us.preheader.unr-lcssa, %.epil.preheader
  br label %.lr.ph51.us.us

bb.b:                                             ; preds = %bb.b, %.lr.ph51.us.us.new
  %.02750.us.us = phi i64 [ 0, %.lr.ph51.us.us.new ], [ %i.as, %bb.b ] ; 6 uses
  %niter88 = phi i64 [ 0, %.lr.ph51.us.us.new ], [ %niter88.next.3, %bb.b ]
  %i.ad = getelementptr i8, ptr %i.bb, i64 %.02750.us.us
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 %.02750.us.us
  %i.af = load atomic i8, ptr %i.ae monotonic, align 4
  store atomic i8 %i.af, ptr %i.ad monotonic, align 1
  %i.ag = or disjoint i64 %.02750.us.us, 1        ; 2 uses
  %i.ah = getelementptr i8, ptr %i.bb, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ag
  %i.aj = load atomic i8, ptr %i.ai monotonic, align 1
  store atomic i8 %i.aj, ptr %i.ah monotonic, align 1
  %i.ak = or disjoint i64 %.02750.us.us, 2        ; 2 uses
  %i.al = getelementptr i8, ptr %i.bb, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ak
  %i.an = load atomic i8, ptr %i.am monotonic, align 2
  store atomic i8 %i.an, ptr %i.al monotonic, align 1
  %i.ao = or disjoint i64 %.02750.us.us, 3        ; 2 uses
  %i.ap = getelementptr i8, ptr %i.bb, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ao
  %i.ar = load atomic i8, ptr %i.aq monotonic, align 1
  store atomic i8 %i.ar, ptr %i.ap monotonic, align 1
  %i.as = add nuw i64 %.02750.us.us, 4            ; 2 uses
  %niter88.next.3 = add nuw i64 %niter88, 4       ; 2 uses
  %niter88.ncmp.3 = icmp eq i64 %niter88.next.3, %unroll_iter87
  br i1 %niter88.ncmp.3, label %._crit_edge.us.us.unr-lcssa, label %bb.b, !llvm.loop !227

._crit_edge.us.us.unr-lcssa:                      ; preds = %bb.b
  %lcmp.mod85.not = icmp eq i64 %xtraiter84, 0
  br i1 %lcmp.mod85.not, label %._crit_edge.us.us, label %.epil.preheader83

.epil.preheader83:                                ; preds = %._crit_edge.us.us.unr-lcssa, %.lr.ph51.us.us
  %.02750.us.us.epil.init = phi i64 [ 0, %.lr.ph51.us.us ], [ %i.as, %._crit_edge.us.us.unr-lcssa ]
  %lcmp.mod86 = icmp ne i64 %xtraiter84, 0
  tail call void @llvm.assume(i1 %lcmp.mod86)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader83
  %.02750.us.us.epil = phi i64 [ %.02750.us.us.epil.init, %.epil.preheader83 ], [ %i.aw, %bb.c ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader83 ], [ %epil.iter.next, %bb.c ]
  %i.at = getelementptr i8, ptr %i.bb, i64 %.02750.us.us.epil
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 %.02750.us.us.epil
  %i.av = load atomic i8, ptr %i.au monotonic, align 1
  store atomic i8 %i.av, ptr %i.at monotonic, align 1
  %i.aw = add nuw i64 %.02750.us.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter84
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.us, label %bb.c, !llvm.loop !231

._crit_edge.us.us:                                ; preds = %bb.c, %._crit_edge.us.us.unr-lcssa
  %i.ax = add nuw nsw i64 %.sroa.speculated.us.us, %storemerge3252.us.us ; 2 uses
  %i.ay = icmp ult i64 %i.ax, 256
  br i1 %i.ay, label %.lr.ph51.us.us, label %..preheader_crit_edge.us.us.preheader, !llvm.loop !229

..preheader_crit_edge.us.us.preheader:            ; preds = %._crit_edge.us.us
  %i.az = add nuw nsw i64 %storemerge54.us.us, 1  ; 2 uses
  %exitcond72.not = icmp eq i64 %i.az, 257
  br i1 %exitcond72.not, label %.split56.us, label %.lr.ph.us.us, !llvm.loop !230

.lr.ph51.us.us:                                   ; preds = %.lr.ph51.us.us.preheader, %._crit_edge.us.us
  %storemerge3252.us.us = phi i64 [ %i.ax, %._crit_edge.us.us ], [ %.fr, %.lr.ph51.us.us.preheader ] ; 4 uses
  %i.ba = sub nuw nsw i64 256, %storemerge3252.us.us
  %.sroa.speculated.us.us = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 %storemerge3252.us.us) ; 4 uses
  %i.bb = getelementptr i8, ptr %i.f, i64 %storemerge3252.us.us ; 5 uses
  %i.bc = add nsw i64 %.sroa.speculated.us.us, -1
  %xtraiter84 = and i64 %.sroa.speculated.us.us, 3 ; 3 uses
  %i.bd = icmp ult i64 %i.bc, 3
  br i1 %i.bd, label %.epil.preheader83, label %.lr.ph51.us.us.new

.lr.ph51.us.us.new:                               ; preds = %.lr.ph51.us.us
  %unroll_iter87 = and i64 %.sroa.speculated.us.us, 508
  br label %bb.b

.lr.ph.us62:                                      ; preds = %bb.a, %..preheader48_crit_edge.us63.preheader
  %storemerge54.us57 = phi i64 [ %i.bv, %..preheader48_crit_edge.us63.preheader ], [ 0, %bb.a ] ; 3 uses
  %i.be = getelementptr inbounds nuw [256 x i8], ptr %0, i64 %storemerge54.us57 ; 2 uses
  %.sroa.speculated42.us58 = tail call i64 @llvm.umax.i64(i64 %storemerge54.us57, i64 1) ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.us62
  %.02849.us59 = phi i64 [ 0, %.lr.ph.us62 ], [ %i.bu, %bb.d ] ; 4 uses
  %i.bf = load ptr, ptr %i.d, align 8, !tbaa !56
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %.02849.us59
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !60
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 %.02849.us59
  %i.bj = mul i64 %i.bh, %.sroa.speculated42.us58
  %i.bk = udiv i64 %i.bj, %.fr
  %i.bl = trunc i64 %i.bk to i8
  store atomic i8 %i.bl, ptr %i.bi monotonic, align 2
  %i.bm = or disjoint i64 %.02849.us59, 1         ; 2 uses
  %i.bn = load ptr, ptr %i.d, align 8, !tbaa !56
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bm
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !60
  %i.bq = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bm
  %i.br = mul i64 %i.bp, %.sroa.speculated42.us58
  %i.bs = udiv i64 %i.br, %.fr
  %i.bt = trunc i64 %i.bs to i8
  store atomic i8 %i.bt, ptr %i.bq monotonic, align 1
  %i.bu = add nuw nsw i64 %.02849.us59, 2         ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.bu, %invariant.umin
  br i1 %exitcond.not.1, label %..preheader48_crit_edge.us63.preheader, label %bb.d, !llvm.loop !226

..preheader48_crit_edge.us63.preheader:           ; preds = %bb.d
  %i.bv = add nuw nsw i64 %storemerge54.us57, 1   ; 2 uses
  %exitcond69.not = icmp eq i64 %i.bv, 257
  br i1 %exitcond69.not, label %.split56.us, label %.lr.ph.us62, !llvm.loop !230

.split56.us:                                      ; preds = %..preheader48_crit_edge.us63.preheader, %..preheader_crit_edge.us.us.preheader
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 65792
  %i.bx = tail call noundef ptr %1()
  %i.by = atomicrmw xchg ptr %i.bw, ptr %i.bx acq_rel, align 8 ; 0 uses
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZN5folly14FallbackGetcpuINS_18SequentialThreadIdEE6getcpuEPjS3_Pv(ptr noundef %0, ptr noundef %1, ptr noundef %2) #8 comdat align 2 {
bb.a:
  %i.a = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZZN5folly18SequentialThreadId3getEvE5local) ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !102  ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.b, label %_ZN5folly18SequentialThreadId3getEv.exit, !prof !48

bb.b:                                             ; preds = %bb.a
  %i.c = atomicrmw add ptr @_ZZN5folly18SequentialThreadId3getEvE6global, i32 1 seq_cst, align 4
  %i.d = add i32 %i.c, 1                          ; 2 uses
  store i32 %i.d, ptr %i.a, align 4, !tbaa !102
  br label %_ZN5folly18SequentialThreadId3getEv.exit

_ZN5folly18SequentialThreadId3getEv.exit:         ; preds = %bb.a, %bb.b
  %i.e = phi i32 [ %i.d, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN5folly18SequentialThreadId3getEv.exit
  store i32 %i.e, ptr %0, align 4, !tbaa !102
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN5folly18SequentialThreadId3getEv.exit
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %i.e, ptr %1, align 4, !tbaa !102
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(40) ptr @_ZN5folly17LLCAccessSpreader3getEv() local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN5folly17LLCAccessSpreader3getEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !232

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly17LLCAccessSpreader3getEvE8instance) #34
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5folly17LLCAccessSpreaderC1ENS0_10PrivateTagE(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN5folly17LLCAccessSpreader3getEvE8instance)
          to label %_ZN5folly14IndestructibleINS_17LLCAccessSpreaderEEC2INS1_10PrivateTagETnPNSt9enable_ifIXsr3std16is_constructibleIS1_OT_EE5valueEvE4typeELPv0ETnPNS5_IXntsr3std7is_sameIS2_NS_12remove_cvrefIS6_E4typeEEE5valueEvE4typeELSB_0ETnPNS5_IXntsr3std14is_convertibleIS7_S1_EE5valueEvE4typeELSB_0EEES7_.exit unwind label %bb.e

_ZN5folly14IndestructibleINS_17LLCAccessSpreaderEEC2INS1_10PrivateTagETnPNSt9enable_ifIXsr3std16is_constructibleIS1_OT_EE5valueEvE4typeELPv0ETnPNS5_IXntsr3std7is_sameIS2_NS_12remove_cvrefIS6_E4typeEEE5valueEvE4typeELSB_0ETnPNS5_IXntsr3std14is_convertibleIS7_S1_EE5valueEvE4typeELSB_0EEES7_.exit: ; preds = %bb.c
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly17LLCAccessSpreader3getEvE8instance) #34
  br label %bb.d

bb.d:                                             ; preds = %_ZN5folly14IndestructibleINS_17LLCAccessSpreaderEEC2INS1_10PrivateTagETnPNSt9enable_ifIXsr3std16is_constructibleIS1_OT_EE5valueEvE4typeELPv0ETnPNS5_IXntsr3std7is_sameIS2_NS_12remove_cvrefIS6_E4typeEEE5valueEvE4typeELSB_0ETnPNS5_IXntsr3std14is_convertibleIS7_S1_EE5valueEvE4typeELSB_0EEES7_.exit, %bb.b, %bb.a
  ret ptr @_ZZN5folly17LLCAccessSpreader3getEvE8instance

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5folly17LLCAccessSpreader3getEvE8instance) #34
  resume { ptr, i32 } %i.d
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #24

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #24

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #24

; Function Attrs: mustprogress uwtable
define void @_ZN5folly17LLCAccessSpreaderC2ENS0_10PrivateTagE(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 8), (16, 40)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.folly::CacheLocality", align 8 ; 16 uses
  %2 = alloca %"class.std::unordered_map", align 8 ; 16 uses
  %3 = alloca %struct.cpu_set_t, align 8          ; 5 uses
  %4 = alloca %"class.google::ErrnoLogMessage", align 8 ; 7 uses
  %i.a = alloca { i64, i64 }, align 8             ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.c = tail call ptr @dlopen(ptr noundef nonnull @.str.34, i32 noundef 5) #34 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN5folly6Getcpu15resolveVdsoFuncEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @dlsym(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.35) #34 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %_ZN5folly6Getcpu15resolveVdsoFuncEv.exit

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @dlclose(ptr noundef nonnull %i.c) #34 ; 0 uses
  br label %_ZN5folly6Getcpu15resolveVdsoFuncEv.exit

_ZN5folly6Getcpu15resolveVdsoFuncEv.exit:         ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %.not = icmp eq ptr %.0.i, null
  %i.h = select i1 %.not, ptr @_ZN5folly14FallbackGetcpuINS_18SequentialThreadIdEE6getcpuEPjS3_Pv, ptr %.0.i
  store ptr %i.h, ptr %0, align 8, !tbaa !233
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  invoke void @_ZN5folly13CacheLocality17readFromSysfsTreeESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"struct.folly::CacheLocality") align 8 %1, i64 1, ptr nonnull @.str.21)
          to label %_ZN5folly13CacheLocality13readFromSysfsEv.exit unwind label %bb.o

_ZN5folly13CacheLocality13readFromSysfsEv.exit:   ; preds = %_ZN5folly6Getcpu15resolveVdsoFuncEv.exit
  %i.i = load i64, ptr %1, align 8, !tbaa !68     ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !61   ; 2 uses
end_hunk_2
