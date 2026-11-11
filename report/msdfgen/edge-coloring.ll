Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msdfgen/original/edge-coloring?download=true
inline.NumInlined: 874
inline.NumDeleted: 392
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN7msdfgen19edgeColoringInkTrapERNS_5ShapeEdy:bb.a
  %i.ml = load ptr, ptr %.sroa.0172.0361, align 8, !tbaa !24
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.ml, i64 %i.mk
  %i.mn = invoke noundef ptr @_ZN7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.mm)
          to label %bb.bf unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp

bb.bf:                                            ; preds = %bb.be
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  store i32 %.6, ptr %i.mo, align 8, !tbaa !22
  %i.mp = add nuw nsw i32 %.0345, 1               ; 2 uses
  %exitcond429.not = icmp eq i32 %i.mp, %i.ll
  br i1 %exitcond429.not, label %.loopexit, label %.lr.ph347, !llvm.loop !66

.loopexit254:                                     ; preds = %.lr.ph359
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.loopexit.split-lp:    ; preds = %bb.be, %.noexc132, %.noexc131, %.noexc130, %.noexc129, %bb.o, %bb.n, %bb.q, %bb.p
  %lpad.loopexit.split-lp564 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.g, %.lr.ph, %_ZNKSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.sroa.38.1316.lcssa = phi ptr [ %.sroa.38.1316, %bb.g ], [ %.sroa.38.1316, %.lr.ph ], [ %.sroa.29.1319, %_ZNKSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EE12_M_check_lenEmPKc.exit.i.i ]
  %lpad.loopexit261 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit:                                        ; preds = %bb.bf, %bb.s, %._crit_edge342, %._crit_edge.thread, %.loopexit255, %bb.c
  %.sroa.38.5 = phi ptr [ %.sroa.38.0364, %bb.c ], [ %.sroa.38.1.lcssa471, %._crit_edge.thread ], [ %.sroa.38.2, %.loopexit255 ], [ %.sroa.38.2, %._crit_edge342 ], [ %.sroa.38.1.lcssa471, %bb.s ], [ %.sroa.38.2, %bb.bf ] ; 2 uses
  %.sroa.29.3 = phi ptr [ %.sroa.29.0365, %bb.c ], [ %.sroa.29.1.lcssa474, %._crit_edge.thread ], [ %.sroa.29.2, %.loopexit255 ], [ %.sroa.29.2, %._crit_edge342 ], [ %.sroa.29.1.lcssa474, %bb.s ], [ %.sroa.29.2, %bb.bf ]
  %.sroa.0191.5 = phi ptr [ %.sroa.0191.0366, %bb.c ], [ %.sroa.0191.1.lcssa475, %._crit_edge.thread ], [ %.sroa.0191.2, %.loopexit255 ], [ %.sroa.0191.2, %._crit_edge342 ], [ %.sroa.0191.1.lcssa475, %bb.s ], [ %.sroa.0191.2, %bb.bf ] ; 4 uses
  %.7 = phi i32 [ %.0243367, %bb.c ], [ %i.eq, %._crit_edge.thread ], [ %i.fn, %.loopexit255 ], [ %i.lf, %._crit_edge342 ], [ %i.eq, %bb.s ], [ %.6, %bb.bf ]
  %.3241 = phi i64 [ %.0238368, %bb.c ], [ %i.el, %._crit_edge.thread ], [ %i.fj, %.loopexit255 ], [ %.1239.lcssa480, %._crit_edge342 ], [ %i.el, %bb.s ], [ %.1239.lcssa480, %bb.bf ]
  %i.mq = getelementptr inbounds nuw i8, ptr %.sroa.0172.0361, i64 24 ; 2 uses
  %i.mr = load ptr, ptr %i.e, align 8, !tbaa !12
  %.not249 = icmp eq ptr %i.mq, %i.mr
  br i1 %.not249, label %._crit_edge371, label %bb.c, !llvm.loop !67

.loopexit.split-lp:                               ; preds = %.loopexit254, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit.split-lp, %bb.f, %bb.an
  %.sroa.38.6 = phi ptr [ %.sroa.38.0364, %bb.f ], [ %.sroa.29.1319, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.38.2, %bb.an ], [ %.sroa.38.1.lcssa471, %.loopexit254 ], [ %.sroa.38.2, %.loopexit.split-lp.loopexit.loopexit.split-lp ], [ %.sroa.38.1316.lcssa, %.loopexit.split-lp.loopexit.split-lp.loopexit ]
  %.sroa.0191.6 = phi ptr [ %.sroa.0191.0366, %bb.f ], [ %.sroa.0191.1320, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.0191.2, %bb.an ], [ %.sroa.0191.1.lcssa475, %.loopexit254 ], [ %.sroa.0191.2, %.loopexit.split-lp.loopexit.loopexit.split-lp ], [ %.sroa.0191.1320, %.loopexit.split-lp.loopexit.split-lp.loopexit ] ; 3 uses
  %.pn114.pn.pn = phi { ptr, i32 } [ %i.ah, %bb.f ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn109.pn, %bb.an ], [ %lpad.loopexit, %.loopexit254 ], [ %lpad.loopexit.split-lp564, %.loopexit.split-lp.loopexit.loopexit.split-lp ], [ %lpad.loopexit261, %.loopexit.split-lp.loopexit.split-lp.loopexit ]
  %.not.i.i.i138 = icmp eq ptr %.sroa.0191.6, null
  br i1 %.not.i.i.i138, label %_ZNSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EED2Ev.exit139, label %bb.bg

bb.bg:                                            ; preds = %.loopexit.split-lp
  %i.ms = ptrtoint ptr %.sroa.38.6 to i64
  %i.mt = ptrtoint ptr %.sroa.0191.6 to i64
  %i.mu = sub i64 %i.ms, %i.mt
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0191.6, i64 noundef %i.mu) #17
  br label %_ZNSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EED2Ev.exit139

_ZNSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EED2Ev.exit139: ; preds = %.loopexit.split-lp, %bb.bg
  resume { ptr, i32 } %.pn114.pn.pn
}

declare noundef ptr @_ZNK7msdfgen10EdgeHoldercvPKNS_11EdgeSegmentEEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN7msdfgen22edgeColoringByDistanceERNS_5ShapeEdy(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %0, double noundef %1, i64 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::queue", align 8        ; 17 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca [7 x ptr], align 16               ; 19 uses
  %4 = alloca %"class.msdfgen::EdgeHolder", align 8 ; 8 uses
  %i.d = tail call double @sin(double noundef %1) #16
  %i.e = load ptr, ptr %0, align 8, !tbaa !12     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !12
  %.not6781321 = icmp eq ptr %i.e, %i.g
  br i1 %.not6781321, label %._crit_edge1335.thread, label %.lr.ph1334

.lr.ph1334:                                       ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  br label %bb.f

._crit_edge1335:                                  ; preds = %.loopexit717
  %i.m = ptrtoint ptr %.sroa.33.7 to i64
  %i.n = ptrtoint ptr %.sroa.0602.11 to i64       ; 3 uses
  %i.o = sub i64 %i.m, %i.n
  %i.p = lshr i64 %i.o, 3                         ; 3 uses
  %i.q = trunc i64 %i.p to i32                    ; 3 uses
  %.not.i.i = icmp eq ptr %.sroa.24.7, %.sroa.43.11
  br i1 %.not.i.i, label %._crit_edge1335.thread, label %bb.b

bb.b:                                             ; preds = %._crit_edge1335
  store i32 %i.q, ptr %.sroa.24.7, align 4, !tbaa !19
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

._crit_edge1335.thread:                           ; preds = %bb.a, %._crit_edge1335
  %i.r = phi i32 [ %i.q, %._crit_edge1335 ], [ 0, %bb.a ] ; 2 uses
  %i.s = phi i64 [ %i.p, %._crit_edge1335 ], [ 0, %bb.a ]
  %i.t = phi i64 [ %i.n, %._crit_edge1335 ], [ 0, %bb.a ]
  %.sroa.0602.0.lcssa1866 = phi ptr [ %.sroa.0602.11, %._crit_edge1335 ], [ null, %bb.a ] ; 2 uses
  %.sroa.67.0.lcssa1863 = phi ptr [ %.sroa.67.11, %._crit_edge1335 ], [ null, %bb.a ] ; 2 uses
  %.sroa.0569.0.lcssa1861 = phi ptr [ %.sroa.0569.11, %._crit_edge1335 ], [ null, %bb.a ] ; 5 uses
  %.sroa.43.0.lcssa1860 = phi ptr [ %.sroa.43.11, %._crit_edge1335 ], [ null, %bb.a ] ; 2 uses
  %.sroa.0552.0.lcssa1858 = phi ptr [ %.sroa.0552.7, %._crit_edge1335 ], [ null, %bb.a ] ; 2 uses
  %.sroa.23.0.lcssa1855 = phi ptr [ %.sroa.23.7, %._crit_edge1335 ], [ null, %bb.a ] ; 2 uses
  %i.u = ptrtoint ptr %.sroa.43.0.lcssa1860 to i64
  %i.v = ptrtoint ptr %.sroa.0569.0.lcssa1861 to i64
  %i.w = sub i64 %i.u, %i.v                       ; 6 uses
  %i.x = icmp eq i64 %i.w, 9223372036854775804
  br i1 %i.x, label %bb.c, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.c:                                             ; preds = %._crit_edge1335.thread
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
          to label %.noexc unwind label %.loopexit.split-lp754

.noexc:                                           ; preds = %bb.c
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %._crit_edge1335.thread
  %i.y = ashr exact i64 %i.w, 2                   ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.y, i64 1)
  %i.z = add nsw i64 %.sroa.speculated.i.i.i.i, %i.y ; 2 uses
  %i.aa = icmp ult i64 %i.z, %i.y
  %i.ab = call i64 @llvm.umin.i64(i64 %i.z, i64 2305843009213693951)
  %i.ac = select i1 %i.aa, i64 2305843009213693951, i64 %i.ab ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ac, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ad = shl nuw nsw i64 %i.ac, 2
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #19
          to label %.noexc191 unwind label %.loopexit.split-lp754 ; 4 uses

.noexc191:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 %i.w ; 2 uses
  store i32 %i.r, ptr %i.af, align 4, !tbaa !19
  %i.ag = icmp sgt i64 %i.w, 0
  br i1 %i.ag, label %bb.d, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.d:                                             ; preds = %.noexc191
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ae, ptr align 4 %.sroa.0569.0.lcssa1861, i64 %i.w, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.d, %.noexc191
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0569.0.lcssa1861, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0569.0.lcssa1861, i64 noundef %i.w) #17
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ac
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.f:                                             ; preds = %.lr.ph1334, %.loopexit717
  %.sroa.0602.01332 = phi ptr [ null, %.lr.ph1334 ], [ %.sroa.0602.11, %.loopexit717 ] ; 29 uses
  %.sroa.33.01331 = phi ptr [ null, %.lr.ph1334 ], [ %.sroa.33.7, %.loopexit717 ] ; 18 uses
  %.sroa.67.01330 = phi ptr [ null, %.lr.ph1334 ], [ %.sroa.67.11, %.loopexit717 ] ; 21 uses
  %.sroa.0569.01329 = phi ptr [ null, %.lr.ph1334 ], [ %.sroa.0569.11, %.loopexit717 ] ; 11 uses
  %.sroa.24.01328 = phi ptr [ null, %.lr.ph1334 ], [ %.sroa.24.7, %.loopexit717 ] ; 6 uses
  %.sroa.43.01327 = phi ptr [ null, %.lr.ph1334 ], [ %.sroa.43.11, %.loopexit717 ] ; 7 uses
  %.sroa.0552.01326 = phi ptr [ null, %.lr.ph1334 ], [ %.sroa.0552.7, %.loopexit717 ] ; 6 uses
  %.sroa.15.01325 = phi ptr [ null, %.lr.ph1334 ], [ %.sroa.15.3, %.loopexit717 ] ; 3 uses
  %.sroa.23.01324 = phi ptr [ null, %.lr.ph1334 ], [ %.sroa.23.7, %.loopexit717 ] ; 4 uses
  %.sroa.0532.01322 = phi ptr [ %i.e, %.lr.ph1334 ], [ %i.pv, %.loopexit717 ] ; 13 uses
  %i.ai = load ptr, ptr %.sroa.0532.01322, align 8, !tbaa !16
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0532.01322, i64 8 ; 13 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !16 ; 2 uses
  %i.al = icmp eq ptr %i.ai, %i.ak
  br i1 %i.al, label %.loopexit717, label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %bb.f
  %.not.i.i192 = icmp eq ptr %.sroa.15.01325, %.sroa.0552.01326
  %spec.select677 = select i1 %.not.i.i192, ptr %.sroa.15.01325, ptr %.sroa.0552.01326 ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 -8
  %i.an = invoke noundef ptr @_ZN7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.am)
          to label %bb.g unwind label %.loopexit753 ; 2 uses

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !18
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = invoke { double, double } %i.aq(ptr noundef nonnull align 8 dereferenceable(12) %i.an, double noundef 1.000000e+00)
          to label %bb.h unwind label %.loopexit753

bb.h:                                             ; preds = %bb.g
  %i.as = load ptr, ptr %.sroa.0532.01322, align 8, !tbaa !16 ; 2 uses
  %i.at = load ptr, ptr %i.aj, align 8, !tbaa !16
  %.not6941267 = icmp eq ptr %i.as, %i.at
  br i1 %.not6941267, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.v, %bb.h
  %.sroa.23.1.lcssa = phi ptr [ %.sroa.23.01324, %bb.h ], [ %.sroa.23.2, %bb.v ] ; 18 uses
  %.sroa.15.1.lcssa = phi ptr [ %spec.select677, %bb.h ], [ %.sroa.15.2, %bb.v ] ; 10 uses
  %.sroa.0552.1.lcssa = phi ptr [ %.sroa.0552.01326, %bb.h ], [ %.sroa.0552.2, %bb.v ] ; 23 uses
  %i.au = ptrtoint ptr %.sroa.33.01331 to i64
  %i.av = ptrtoint ptr %.sroa.0602.01332 to i64   ; 2 uses
  %i.aw = sub i64 %i.au, %i.av                    ; 11 uses
  %i.ax = ashr exact i64 %i.aw, 3                 ; 7 uses
  %i.ay = trunc i64 %i.ax to i32                  ; 2 uses
  %.not.i.i193 = icmp eq ptr %.sroa.24.01328, %.sroa.43.01327
  br i1 %.not.i.i193, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  store i32 %i.ay, ptr %.sroa.24.01328, align 4, !tbaa !19
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit202

bb.j:                                             ; preds = %._crit_edge
  %i.az = ptrtoint ptr %.sroa.24.01328 to i64
  %i.ba = ptrtoint ptr %.sroa.0569.01329 to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 6 uses
  %i.bc = icmp eq i64 %i.bb, 9223372036854775804
  br i1 %i.bc, label %bb.k, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i194

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
          to label %.noexc200 unwind label %.loopexit.split-lp744.loopexit.split-lp.loopexit.split-lp

.noexc200:                                        ; preds = %bb.k
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i194: ; preds = %bb.j
  %i.bd = ashr exact i64 %i.bb, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i195 = call i64 @llvm.umax.i64(i64 %i.bd, i64 1)
  %i.be = add nsw i64 %.sroa.speculated.i.i.i.i195, %i.bd ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.bd
  %i.bg = call i64 @llvm.umin.i64(i64 %i.be, i64 2305843009213693951)
  %i.bh = select i1 %i.bf, i64 2305843009213693951, i64 %i.bg ; 3 uses
  %.not.i.i.i.i196 = icmp ne i64 %i.bh, 0
  call void @llvm.assume(i1 %.not.i.i.i.i196)
  %i.bi = shl nuw nsw i64 %i.bh, 2
  %i.bj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #19
          to label %.noexc201 unwind label %.loopexit.split-lp744.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc201:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i194
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 %i.bb ; 2 uses
  store i32 %i.ay, ptr %i.bk, align 4, !tbaa !19
  %i.bl = icmp sgt i64 %i.bb, 0
  br i1 %i.bl, label %bb.l, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i197

bb.l:                                             ; preds = %.noexc201
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bj, ptr align 4 %.sroa.0569.01329, i64 %i.bb, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i197

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i197: ; preds = %bb.l, %.noexc201
  %.not.i17.i.i.i198 = icmp eq ptr %.sroa.0569.01329, null
  br i1 %.not.i17.i.i.i198, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i199, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i197
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0569.01329, i64 noundef %i.bb) #17
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i199

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i199: ; preds = %bb.m, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i197
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bh
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit202

.lr.ph:                                           ; preds = %bb.h, %bb.v
  %.sroa.0552.11273 = phi ptr [ %.sroa.0552.2, %bb.v ], [ %.sroa.0552.01326, %bb.h ] ; 9 uses
  %.sroa.15.11272 = phi ptr [ %.sroa.15.2, %bb.v ], [ %spec.select677, %bb.h ] ; 7 uses
  %.sroa.0523.01271 = phi ptr [ %i.dh, %bb.v ], [ %i.as, %bb.h ] ; 3 uses
  %.06561270 = phi i32 [ %i.di, %bb.v ], [ 0, %bb.h ] ; 3 uses
  %.pn6921269 = phi { double, double } [ %i.dg, %bb.v ], [ %i.ar, %bb.h ] ; 2 uses
  %.sroa.23.11268 = phi ptr [ %.sroa.23.2, %bb.v ], [ %.sroa.23.01324, %bb.h ] ; 4 uses
  %.sroa.0530.0 = extractvalue { double, double } %.pn6921269, 0 ; 3 uses
  %.sroa.6.0 = extractvalue { double, double } %.pn6921269, 1 ; 3 uses
  %i.bn = fmul double %.sroa.6.0, %.sroa.6.0
  %i.bo = call double @llvm.fmuladd.f64(double %.sroa.0530.0, double %.sroa.0530.0, double %i.bn) ; 2 uses
  %sqrt.i.i = call noundef double @llvm.sqrt.f64(double %i.bo) ; 2 uses
  %i.bp = fcmp une double %i.bo, 0.000000e+00     ; 2 uses
  %i.bq = fdiv double %.sroa.0530.0, %sqrt.i.i
  %i.br = fdiv double %.sroa.6.0, %sqrt.i.i
  %.sroa.3.1.i = select i1 %i.bp, double %i.br, double 1.000000e+00 ; 2 uses
  %.sroa.0.1.i = select i1 %i.bp, double %i.bq, double 0.000000e+00 ; 2 uses
  %i.bs = invoke noundef ptr @_ZNK7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0523.01271)
          to label %bb.n unwind label %.loopexit743 ; 2 uses

bb.n:                                             ; preds = %.lr.ph
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !18
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = invoke { double, double } %i.bv(ptr noundef nonnull align 8 dereferenceable(12) %i.bs, double noundef 0.000000e+00)
          to label %bb.o unwind label %.loopexit743 ; 2 uses

bb.o:                                             ; preds = %bb.n
  %i.bx = extractvalue { double, double } %i.bw, 0 ; 3 uses
  %i.by = extractvalue { double, double } %i.bw, 1 ; 3 uses
  %i.bz = fmul double %i.by, %i.by
  %i.ca = call double @llvm.fmuladd.f64(double %i.bx, double %i.bx, double %i.bz) ; 2 uses
  %sqrt.i.i203 = call noundef double @llvm.sqrt.f64(double %i.ca) ; 2 uses
  %i.cb = fcmp une double %i.ca, 0.000000e+00     ; 2 uses
  %i.cc = fdiv double %i.bx, %sqrt.i.i203
  %i.cd = fdiv double %i.by, %sqrt.i.i203
  %.sroa.3.1.i204 = select i1 %i.cb, double %i.cd, double 1.000000e+00 ; 2 uses
  %.sroa.0.1.i205 = select i1 %i.cb, double %i.cc, double 0.000000e+00 ; 2 uses
  %i.ce = fmul double %.sroa.3.1.i, %.sroa.3.1.i204
  %i.cf = call noundef double @llvm.fmuladd.f64(double %.sroa.0.1.i, double %.sroa.0.1.i205, double %i.ce)
  %i.cg = fcmp ugt double %i.cf, 0.000000e+00
  br i1 %i.cg, label %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit, label %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit.thread

_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit:    ; preds = %bb.o
  %i.ch = fneg double %.sroa.0.1.i205
  %i.ci = fmul double %.sroa.3.1.i, %i.ch
  %i.cj = call noundef double @llvm.fmuladd.f64(double %.sroa.0.1.i, double %.sroa.3.1.i204, double %i.ci)
  %i.ck = call double @llvm.fabs.f64(double %i.cj)
  %i.cl = fcmp ogt double %i.ck, %i.d
  br i1 %i.cl, label %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit.thread, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit.thread: ; preds = %bb.o, %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit
  %.not.i = icmp eq ptr %.sroa.15.11272, %.sroa.23.11268
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit.thread
  store i32 %.06561270, ptr %.sroa.15.11272, align 4, !tbaa !19
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.15.11272, i64 4
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.q:                                             ; preds = %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit.thread
  %i.cn = ptrtoint ptr %.sroa.15.11272 to i64
  %i.co = ptrtoint ptr %.sroa.0552.11273 to i64
  %i.cp = sub i64 %i.cn, %i.co                    ; 6 uses
  %i.cq = icmp eq i64 %i.cp, 9223372036854775804
  br i1 %i.cq, label %bb.r, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
          to label %.noexc208 unwind label %.loopexit.split-lp749

.noexc208:                                        ; preds = %bb.r
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.q
  %i.cr = ashr exact i64 %i.cp, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.cr, i64 1)
  %i.cs = add nsw i64 %.sroa.speculated.i.i.i, %i.cr ; 2 uses
  %i.ct = icmp ult i64 %i.cs, %i.cr
  %i.cu = call i64 @llvm.umin.i64(i64 %i.cs, i64 2305843009213693951)
  %i.cv = select i1 %i.ct, i64 2305843009213693951, i64 %i.cu ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cv, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.cw = shl nuw nsw i64 %i.cv, 2
  %i.cx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cw) #19
          to label %.noexc209 unwind label %.loopexit748 ; 4 uses

.noexc209:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.cy = getelementptr inbounds i8, ptr %i.cx, i64 %i.cp ; 2 uses
  store i32 %.06561270, ptr %i.cy, align 4, !tbaa !19
  %i.cz = icmp sgt i64 %i.cp, 0
  br i1 %i.cz, label %bb.s, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.s:                                             ; preds = %.noexc209
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cx, ptr align 4 %.sroa.0552.11273, i64 %i.cp, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.s, %.noexc209
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %.not.i17.i.i = icmp eq ptr %.sroa.0552.11273, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0552.11273, i64 noundef %i.cp) #17
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.t, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.cv
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.p, %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit
  %.sroa.23.2 = phi ptr [ %.sroa.23.11268, %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit ], [ %i.db, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.23.11268, %bb.p ] ; 4 uses
  %.sroa.15.2 = phi ptr [ %.sroa.15.11272, %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit ], [ %i.da, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.cm, %bb.p ] ; 2 uses
  %.sroa.0552.2 = phi ptr [ %.sroa.0552.11273, %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit ], [ %i.cx, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.0552.11273, %bb.p ] ; 4 uses
  %i.dc = invoke noundef ptr @_ZNK7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0523.01271)
          to label %bb.u unwind label %.loopexit748 ; 2 uses

bb.u:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !18
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 48
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = invoke { double, double } %i.df(ptr noundef nonnull align 8 dereferenceable(12) %i.dc, double noundef 1.000000e+00)
          to label %bb.v unwind label %.loopexit748

bb.v:                                             ; preds = %bb.u
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0523.01271, i64 8 ; 2 uses
  %i.di = add nuw nsw i32 %.06561270, 1
  %i.dj = load ptr, ptr %i.aj, align 8, !tbaa !16
  %.not694 = icmp eq ptr %i.dh, %i.dj
  br i1 %.not694, label %._crit_edge, label %.lr.ph, !llvm.loop !78

.loopexit748:                                     ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %bb.u, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %.sroa.23.3.ph = phi ptr [ %.sroa.15.11272, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.23.2, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %.sroa.23.2, %bb.u ]
  %.sroa.0552.3.ph = phi ptr [ %.sroa.0552.11273, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.0552.2, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %.sroa.0552.2, %bb.u ]
  %lpad.loopexit750 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp744

.loopexit.split-lp749:                            ; preds = %bb.r
  %lpad.loopexit.split-lp751 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp744

_ZNSt6vectorIiSaIiEE9push_backEOi.exit202:        ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i199, %bb.i
  %.sroa.43.14 = phi ptr [ %i.bm, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i199 ], [ %.sroa.43.01327, %bb.i ] ; 26 uses
  %.pn695 = phi ptr [ %i.bk, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i199 ], [ %.sroa.24.01328, %bb.i ] ; 3 uses
  %.sroa.0569.14 = phi ptr [ %i.bj, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i199 ], [ %.sroa.0569.01329, %bb.i ] ; 30 uses
  %.sroa.24.9 = getelementptr inbounds nuw i8, ptr %.pn695, i64 4 ; 11 uses
  %i.dk = icmp eq ptr %.sroa.0552.1.lcssa, %.sroa.15.1.lcssa
  br i1 %i.dk, label %bb.w, label %bb.ad

bb.w:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit202
  %i.dl = load ptr, ptr %.sroa.0532.01322, align 8, !tbaa !16 ; 2 uses
  %i.dm = load ptr, ptr %i.aj, align 8, !tbaa !16
  %.not7001311 = icmp eq ptr %i.dl, %i.dm
  br i1 %.not7001311, label %.loopexit717, label %.lr.ph1317

.loopexit743:                                     ; preds = %bb.n, %.lr.ph
  %lpad.loopexit745 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp744

.loopexit.split-lp744.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i194, %bb.k
  %lpad.loopexit.split-lp2768 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp744

.lr.ph1317:                                       ; preds = %bb.w, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit
  %.sroa.0602.11315 = phi ptr [ %.sroa.0602.13, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit ], [ %.sroa.0602.01332, %bb.w ] ; 7 uses
  %.sroa.33.11314 = phi ptr [ %.sroa.33.8, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit ], [ %.sroa.33.01331, %bb.w ] ; 6 uses
  %.sroa.67.11313 = phi ptr [ %.sroa.67.13, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit ], [ %.sroa.67.01330, %bb.w ] ; 3 uses
  %.sroa.0511.01312 = phi ptr [ %i.ec, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit ], [ %i.dl, %bb.w ] ; 2 uses
  %i.dn = invoke noundef nonnull align 8 dereferenceable(12) ptr @_ZN7msdfgen10EdgeHolderdeEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0511.01312)
          to label %bb.x unwind label %.loopexit718 ; 2 uses

bb.x:                                             ; preds = %.lr.ph1317
  %.not.i.i210 = icmp eq ptr %.sroa.33.11314, %.sroa.67.11313
  br i1 %.not.i.i210, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  store ptr %i.dn, ptr %.sroa.33.11314, align 8, !tbaa !27
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit

bb.z:                                             ; preds = %bb.x
  %i.do = ptrtoint ptr %.sroa.33.11314 to i64
  %i.dp = ptrtoint ptr %.sroa.0602.11315 to i64
  %i.dq = sub i64 %i.do, %i.dp                    ; 6 uses
  %i.dr = icmp eq i64 %i.dq, 9223372036854775800
  br i1 %i.dr, label %bb.aa, label %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
          to label %.noexc214 unwind label %.loopexit.split-lp719

.noexc214:                                        ; preds = %bb.aa
  unreachable

_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.z
  %i.ds = ashr exact i64 %i.dq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i211 = call i64 @llvm.umax.i64(i64 %i.ds, i64 1)
  %i.dt = add nsw i64 %.sroa.speculated.i.i.i.i211, %i.ds ; 2 uses
  %i.du = icmp ult i64 %i.dt, %i.ds
  %i.dv = call i64 @llvm.umin.i64(i64 %i.dt, i64 1152921504606846975)
  %i.dw = select i1 %i.du, i64 1152921504606846975, i64 %i.dv ; 3 uses
  %.not.i.i.i.i212 = icmp ne i64 %i.dw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i212)
  %i.dx = shl nuw nsw i64 %i.dw, 3
  %i.dy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dx) #19
          to label %.noexc215 unwind label %.loopexit718 ; 4 uses

.noexc215:                                        ; preds = %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 %i.dq ; 2 uses
  store ptr %i.dn, ptr %i.dz, align 8, !tbaa !27
  %i.ea = icmp sgt i64 %i.dq, 0
  br i1 %i.ea, label %bb.ab, label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.ab:                                            ; preds = %.noexc215
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dy, ptr align 8 %.sroa.0602.11315, i64 %i.dq, i1 false)
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.ab, %.noexc215
  %.not.i17.i.i.i213 = icmp eq ptr %.sroa.0602.11315, null
  br i1 %.not.i17.i.i.i213, label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0602.11315, i64 noundef %i.dq) #17
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.ac, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.dw
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.y
  %.sroa.67.13 = phi ptr [ %i.eb, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.67.11313, %bb.y ] ; 2 uses
  %.pn701 = phi ptr [ %i.dz, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.33.11314, %bb.y ]
  %.sroa.0602.13 = phi ptr [ %i.dy, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.0602.11315, %bb.y ] ; 2 uses
  %.sroa.33.8 = getelementptr inbounds nuw i8, ptr %.pn701, i64 8 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0511.01312, i64 8 ; 2 uses
  %i.ed = load ptr, ptr %i.aj, align 8, !tbaa !16
  %.not700 = icmp eq ptr %i.ec, %i.ed
  br i1 %.not700, label %.loopexit717, label %.lr.ph1317, !llvm.loop !79

.loopexit718:                                     ; preds = %.lr.ph1317, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %.sroa.67.11313.lcssa = phi ptr [ %.sroa.67.11313, %.lr.ph1317 ], [ %.sroa.33.11314, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ]
  %lpad.loopexit720 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp744

.loopexit.split-lp719:                            ; preds = %bb.aa
  %lpad.loopexit.split-lp721 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp744

bb.ad:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit202
  %i.ee = ptrtoint ptr %.sroa.15.1.lcssa to i64
  %i.ef = ptrtoint ptr %.sroa.0552.1.lcssa to i64 ; 2 uses
  %i.eg = sub i64 %i.ee, %i.ef                    ; 2 uses
  %i.eh = icmp eq i64 %i.eg, 4
  br i1 %i.eh, label %bb.ae, label %bb.cv

bb.ae:                                            ; preds = %bb.ad
  %i.ei = load i32, ptr %.sroa.0552.1.lcssa, align 4, !tbaa !19 ; 2 uses
  %i.ej = load ptr, ptr %i.aj, align 8, !tbaa !25 ; 2 uses
  %i.ek = load ptr, ptr %.sroa.0532.01322, align 8, !tbaa !24 ; 3 uses
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = ptrtoint ptr %i.ek to i64
  %i.en = sub i64 %i.el, %i.em
  %i.eo = ashr exact i64 %i.en, 3                 ; 2 uses
  %i.ep = icmp ugt i64 %i.eo, 2
  br i1 %i.ep, label %bb.af, label %bb.aw

bb.af:                                            ; preds = %bb.ae
  %i.eq = trunc i64 %i.eo to i32                  ; 5 uses
  %i.er = icmp sgt i32 %i.eq, 0
  br i1 %i.er, label %.lr.ph1304, label %.loopexit717

.lr.ph1304:                                       ; preds = %bb.af
  %i.es = lshr i32 %i.eq, 1
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph1304, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit235
  %.01391302 = phi i32 [ 0, %.lr.ph1304 ], [ %i.gq, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit235 ] ; 4 uses
  %.sroa.0602.21301 = phi ptr [ %.sroa.0602.01332, %.lr.ph1304 ], [ %.sroa.0602.3, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit235 ] ; 10 uses
  %.sroa.33.21300 = phi ptr [ %.sroa.33.01331, %.lr.ph1304 ], [ %.sroa.33.3, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit235 ] ; 8 uses
  %.sroa.67.21299 = phi ptr [ %.sroa.67.01330, %.lr.ph1304 ], [ %.sroa.67.3, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit235 ] ; 6 uses
  %.sroa.0569.11298 = phi ptr [ %.sroa.0569.14, %.lr.ph1304 ], [ %.sroa.0569.2, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit235 ] ; 7 uses
  %.sroa.24.11297 = phi ptr [ %.sroa.24.9, %.lr.ph1304 ], [ %.sroa.24.2, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit235 ] ; 6 uses
  %.sroa.43.11296 = phi ptr [ %.sroa.43.14, %.lr.ph1304 ], [ %.sroa.43.2, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit235 ] ; 3 uses
  %i.et = icmp eq i32 %.01391302, %i.es
  br i1 %i.et, label %bb.ah, label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit225

bb.ah:                                            ; preds = %bb.ag
  %i.eu = ptrtoint ptr %.sroa.33.21300 to i64
  %i.ev = ptrtoint ptr %.sroa.0602.21301 to i64
  %i.ew = sub i64 %i.eu, %i.ev
  %i.ex = lshr exact i64 %i.ew, 3
  %i.ey = trunc i64 %i.ex to i32                  ; 2 uses
  %.not.i.i216 = icmp eq ptr %.sroa.24.11297, %.sroa.43.11296
  br i1 %.not.i.i216, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store i32 %i.ey, ptr %.sroa.24.11297, align 4, !tbaa !19
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.24.11297, i64 4
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit225

bb.aj:                                            ; preds = %bb.ah
  %i.fa = ptrtoint ptr %.sroa.24.11297 to i64
  %i.fb = ptrtoint ptr %.sroa.0569.11298 to i64
  %i.fc = sub i64 %i.fa, %i.fb                    ; 6 uses
  %i.fd = icmp eq i64 %i.fc, 9223372036854775804
  br i1 %i.fd, label %bb.ak, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i217

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
          to label %.noexc223 unwind label %.loopexit.split-lp725.loopexit.split-lp

.noexc223:                                        ; preds = %bb.ak
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i217: ; preds = %bb.aj
  %i.fe = ashr exact i64 %i.fc, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i218 = call i64 @llvm.umax.i64(i64 %i.fe, i64 1)
  %i.ff = add nsw i64 %.sroa.speculated.i.i.i.i218, %i.fe ; 2 uses
  %i.fg = icmp ult i64 %i.ff, %i.fe
  %i.fh = call i64 @llvm.umin.i64(i64 %i.ff, i64 2305843009213693951)
  %i.fi = select i1 %i.fg, i64 2305843009213693951, i64 %i.fh ; 3 uses
  %.not.i.i.i.i219 = icmp ne i64 %i.fi, 0
  call void @llvm.assume(i1 %.not.i.i.i.i219)
  %i.fj = shl nuw nsw i64 %i.fi, 2
  %i.fk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fj) #19
          to label %.noexc224 unwind label %.loopexit.split-lp725.loopexit.split-lp ; 4 uses

.noexc224:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i217
  %i.fl = getelementptr inbounds i8, ptr %i.fk, i64 %i.fc ; 2 uses
  store i32 %i.ey, ptr %i.fl, align 4, !tbaa !19
  %i.fm = icmp sgt i64 %i.fc, 0
  br i1 %i.fm, label %bb.al, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i220

bb.al:                                            ; preds = %.noexc224
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fk, ptr align 4 %.sroa.0569.11298, i64 %i.fc, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i220

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i220: ; preds = %bb.al, %.noexc224
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  %.not.i17.i.i.i221 = icmp eq ptr %.sroa.0569.11298, null
  br i1 %.not.i17.i.i.i221, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i222, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i220
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0569.11298, i64 noundef %i.fc) #17
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i222

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i222: ; preds = %bb.am, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i220
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %i.fi
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit225

.loopexit.split-lp725.loopexit.split-lp:          ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i217, %bb.ak
  %lpad.loopexit.split-lp2760 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp744

_ZNSt6vectorIiSaIiEE9push_backEOi.exit225:        ; preds = %bb.ai, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i222, %bb.ag
  %.sroa.43.2 = phi ptr [ %.sroa.43.11296, %bb.ag ], [ %i.fo, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i222 ], [ %.sroa.43.11296, %bb.ai ] ; 4 uses
  %.sroa.24.2 = phi ptr [ %.sroa.24.11297, %bb.ag ], [ %i.fn, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i222 ], [ %i.ez, %bb.ai ] ; 2 uses
  %.sroa.0569.2 = phi ptr [ %.sroa.0569.11298, %bb.ag ], [ %i.fk, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i222 ], [ %.sroa.0569.11298, %bb.ai ] ; 4 uses
  %i.fp = mul nuw nsw i32 %.01391302, 3
  %i.fq = add nuw nsw i32 %i.fp, 1
  %i.fr = udiv i32 %i.fq, %i.eq
  %.not177 = icmp eq i32 %i.fr, 1
  %i.fs = add nsw i32 %.01391302, %i.ei
  %i.ft = srem i32 %i.fs, %i.eq
  %i.fu = sext i32 %i.ft to i64
  %i.fv = load ptr, ptr %.sroa.0532.01322, align 8, !tbaa !24
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %i.fu ; 2 uses
  br i1 %.not177, label %bb.au, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit225
  %i.fx = invoke noundef nonnull align 8 dereferenceable(12) ptr @_ZN7msdfgen10EdgeHolderdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fw)
          to label %bb.ao unwind label %.loopexit729 ; 2 uses

bb.ao:                                            ; preds = %bb.an
  %.not.i.i226 = icmp eq ptr %.sroa.33.21300, %.sroa.67.21299
  br i1 %.not.i.i226, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store ptr %i.fx, ptr %.sroa.33.21300, align 8, !tbaa !27
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.33.21300, i64 8
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit235

bb.aq:                                            ; preds = %bb.ao
  %i.fz = ptrtoint ptr %.sroa.33.21300 to i64
  %i.ga = ptrtoint ptr %.sroa.0602.21301 to i64
  %i.gb = sub i64 %i.fz, %i.ga                    ; 6 uses
  %i.gc = icmp eq i64 %i.gb, 9223372036854775800
  br i1 %i.gc, label %bb.ar, label %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i227

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
          to label %.noexc233 unwind label %.loopexit.split-lp730

.noexc233:                                        ; preds = %bb.ar
  unreachable

_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i227: ; preds = %bb.aq
  %i.gd = ashr exact i64 %i.gb, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i228 = call i64 @llvm.umax.i64(i64 %i.gd, i64 1)
  %i.ge = add nsw i64 %.sroa.speculated.i.i.i.i228, %i.gd ; 2 uses
  %i.gf = icmp ult i64 %i.ge, %i.gd
  %i.gg = call i64 @llvm.umin.i64(i64 %i.ge, i64 1152921504606846975)
  %i.gh = select i1 %i.gf, i64 1152921504606846975, i64 %i.gg ; 3 uses
  %.not.i.i.i.i229 = icmp ne i64 %i.gh, 0
  call void @llvm.assume(i1 %.not.i.i.i.i229)
  %i.gi = shl nuw nsw i64 %i.gh, 3
  %i.gj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gi) #19
          to label %.noexc234 unwind label %.loopexit729 ; 4 uses

.noexc234:                                        ; preds = %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i227
  %i.gk = getelementptr inbounds i8, ptr %i.gj, i64 %i.gb ; 2 uses
  store ptr %i.fx, ptr %i.gk, align 8, !tbaa !27
  %i.gl = icmp sgt i64 %i.gb, 0
  br i1 %i.gl, label %bb.as, label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i230

bb.as:                                            ; preds = %.noexc234
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gj, ptr align 8 %.sroa.0602.21301, i64 %i.gb, i1 false)
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i230

_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i230: ; preds = %bb.as, %.noexc234
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %.not.i17.i.i.i231 = icmp eq ptr %.sroa.0602.21301, null
  br i1 %.not.i17.i.i.i231, label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i232, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i230
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0602.21301, i64 noundef %i.gb) #17
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i232

_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i232: ; preds = %bb.at, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i230
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %i.gh
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit235

.loopexit729:                                     ; preds = %bb.an, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i227, %bb.au
  %.sroa.67.21299.lcssa1439 = phi ptr [ %.sroa.67.21299, %bb.an ], [ %.sroa.33.21300, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i227 ], [ %.sroa.67.21299, %bb.au ]
  %lpad.loopexit731 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp744

.loopexit.split-lp730:                            ; preds = %bb.ar
  %lpad.loopexit.split-lp732 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp744

bb.au:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit225
  %i.go = invoke noundef ptr @_ZN7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fw)
          to label %bb.av unwind label %.loopexit729

bb.av:                                            ; preds = %bb.au
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  store i32 7, ptr %i.gp, align 8, !tbaa !22
end_hunk_0
begin_hunk_1_@_ZN7msdfgen22edgeColoringByDistanceERNS_5ShapeEdy:bb.a
  %.not.i.i.i.i255 = icmp ne i64 %i.jq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i255)
  %i.jr = shl nuw nsw i64 %i.jq, 2
  %i.js = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jr) #19
          to label %.noexc260 unwind label %.loopexit.split-lp776.loopexit.split-lp ; 4 uses

.noexc260:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i253
  %i.jt = getelementptr inbounds i8, ptr %i.js, i64 %i.jk ; 2 uses
  store i32 %i.jg, ptr %i.jt, align 4, !tbaa !19
  %i.ju = icmp sgt i64 %i.jk, 0
  br i1 %i.ju, label %bb.bp, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i256

bb.bp:                                            ; preds = %.noexc260
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.js, ptr align 4 %.sroa.0569.14, i64 %i.jk, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i256

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i256: ; preds = %bb.bp, %.noexc260
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 4
  %.not.i17.i.i.i257 = icmp eq ptr %.sroa.0569.14, null
  br i1 %.not.i17.i.i.i257, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i258, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i256
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0569.14, i64 noundef %i.jk) #17
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i258

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i258: ; preds = %bb.bq, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i256
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.jq
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit261

_ZNSt6vectorIiSaIiEE9push_backEOi.exit261:        ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i258, %bb.bm
  %.sroa.43.16 = phi ptr [ %i.jw, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i258 ], [ %.sroa.43.14, %bb.bm ] ; 6 uses
  %.sroa.24.11 = phi ptr [ %i.jv, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i258 ], [ %i.jh, %bb.bm ] ; 2 uses
  %.sroa.0569.16 = phi ptr [ %i.js, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i258 ], [ %.sroa.0569.14, %bb.bm ] ; 6 uses
  %.not.i262 = icmp eq ptr %.sroa.33.11, %.sroa.67.16
  br i1 %.not.i262, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit261
  %i.jx = load ptr, ptr %i.k, align 16, !tbaa !27
  store ptr %i.jx, ptr %.sroa.33.11, align 8, !tbaa !27
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backERKS2_.exit271

bb.bs:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit261
  %i.jy = icmp eq i64 %i.je, 9223372036854775800
  br i1 %i.jy, label %bb.bt, label %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i263

bb.bt:                                            ; preds = %bb.bs
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
          to label %.noexc269 unwind label %.loopexit.split-lp762

.noexc269:                                        ; preds = %bb.bt
  unreachable

_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i263: ; preds = %bb.bs
  %.sroa.speculated.i.i.i264 = call i64 @llvm.umax.i64(i64 %i.jf, i64 1)
  %i.jz = add nsw i64 %.sroa.speculated.i.i.i264, %i.jf ; 2 uses
  %i.ka = icmp ult i64 %i.jz, %i.jf
  %i.kb = call i64 @llvm.umin.i64(i64 %i.jz, i64 1152921504606846975)
  %i.kc = select i1 %i.ka, i64 1152921504606846975, i64 %i.kb ; 3 uses
  %.not.i.i.i265 = icmp ne i64 %i.kc, 0
  call void @llvm.assume(i1 %.not.i.i.i265)
  %i.kd = shl nuw nsw i64 %i.kc, 3
  %i.ke = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kd) #19
          to label %.noexc270 unwind label %.loopexit761 ; 4 uses

.noexc270:                                        ; preds = %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i263
  %i.kf = getelementptr inbounds i8, ptr %i.ke, i64 %i.je ; 2 uses
  %i.kg = load ptr, ptr %i.k, align 16, !tbaa !27
  store ptr %i.kg, ptr %i.kf, align 8, !tbaa !27
  %i.kh = icmp sgt i64 %i.je, 0
  br i1 %i.kh, label %bb.bu, label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i266

bb.bu:                                            ; preds = %.noexc270
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ke, ptr align 8 %.sroa.0602.16, i64 %i.je, i1 false)
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i266

_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i266: ; preds = %bb.bu, %.noexc270
  %.not.i17.i.i267 = icmp eq ptr %.sroa.0602.16, null
  br i1 %.not.i17.i.i267, label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i268, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i266
  %i.ki = ptrtoint ptr %.sroa.67.16 to i64
  %i.kj = sub i64 %i.ki, %i.jd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0602.16, i64 noundef %i.kj) #17
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i268

_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i268: ; preds = %bb.bv, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i266
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.ke, i64 %i.kc
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backERKS2_.exit271

_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backERKS2_.exit271: ; preds = %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i268, %bb.br
  %.sroa.67.17 = phi ptr [ %i.kk, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i268 ], [ %.sroa.67.16, %bb.br ] ; 5 uses
  %.pn699 = phi ptr [ %i.kf, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i268 ], [ %.sroa.33.11, %bb.br ] ; 2 uses
  %.sroa.0602.17 = phi ptr [ %i.ke, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i268 ], [ %.sroa.0602.16, %bb.br ] ; 7 uses
  %.sroa.33.12 = getelementptr inbounds nuw i8, ptr %.pn699, i64 8 ; 2 uses
  %.not.i272 = icmp eq ptr %.sroa.33.12, %.sroa.67.17
  br i1 %.not.i272, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backERKS2_.exit271
  %i.kl = load ptr, ptr %i.l, align 8, !tbaa !27
  store ptr %i.kl, ptr %.sroa.33.12, align 8, !tbaa !27
  %i.km = getelementptr inbounds nuw i8, ptr %.pn699, i64 16
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backERKS2_.exit281

bb.bx:                                            ; preds = %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backERKS2_.exit271
  %i.kn = ptrtoint ptr %.sroa.67.17 to i64
  %i.ko = ptrtoint ptr %.sroa.0602.17 to i64
  %i.kp = sub i64 %i.kn, %i.ko                    ; 6 uses
  %i.kq = icmp eq i64 %i.kp, 9223372036854775800
  br i1 %i.kq, label %bb.by, label %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i273

bb.by:                                            ; preds = %bb.bx
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
          to label %.noexc279 unwind label %.loopexit.split-lp762

.noexc279:                                        ; preds = %bb.by
  unreachable

_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i273: ; preds = %bb.bx
  %i.kr = ashr exact i64 %i.kp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i274 = call i64 @llvm.umax.i64(i64 %i.kr, i64 1)
  %i.ks = add nsw i64 %.sroa.speculated.i.i.i274, %i.kr ; 2 uses
  %i.kt = icmp ult i64 %i.ks, %i.kr
  %i.ku = call i64 @llvm.umin.i64(i64 %i.ks, i64 1152921504606846975)
  %i.kv = select i1 %i.kt, i64 1152921504606846975, i64 %i.ku ; 3 uses
  %.not.i.i.i275 = icmp ne i64 %i.kv, 0
  call void @llvm.assume(i1 %.not.i.i.i275)
  %i.kw = shl nuw nsw i64 %i.kv, 3
  %i.kx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kw) #19
          to label %.noexc280 unwind label %.loopexit761 ; 4 uses

.noexc280:                                        ; preds = %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i273
  %i.ky = getelementptr inbounds i8, ptr %i.kx, i64 %i.kp ; 2 uses
  %i.kz = load ptr, ptr %i.l, align 8, !tbaa !27
  store ptr %i.kz, ptr %i.ky, align 8, !tbaa !27
  %i.la = icmp sgt i64 %i.kp, 0
  br i1 %i.la, label %bb.bz, label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i276

bb.bz:                                            ; preds = %.noexc280
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.kx, ptr align 8 %.sroa.0602.17, i64 %i.kp, i1 false)
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i276

_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i276: ; preds = %bb.bz, %.noexc280
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  %.not.i17.i.i277 = icmp eq ptr %.sroa.0602.17, null
  br i1 %.not.i17.i.i277, label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i278, label %bb.ca

bb.ca:                                            ; preds = %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i276
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0602.17, i64 noundef %i.kp) #17
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i278

_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i278: ; preds = %bb.ca, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i276
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.kx, i64 %i.kv
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backERKS2_.exit281

.loopexit761:                                     ; preds = %bb.ax, %bb.ay, %bb.ba, %bb.bb, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i243, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i263, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i273, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i283, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i303
  %.sroa.43.3.ph = phi ptr [ %.sroa.43.14, %bb.ax ], [ %.sroa.43.14, %bb.ay ], [ %.sroa.43.14, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i283 ], [ %.sroa.43.17, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i303 ], [ %.sroa.43.14, %bb.ba ], [ %.sroa.43.14, %bb.bb ], [ %.sroa.43.14, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.43.14, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i243 ], [ %.sroa.43.16, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i263 ], [ %.sroa.43.16, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i273 ]
  %.sroa.0569.3.ph = phi ptr [ %.sroa.0569.14, %bb.ax ], [ %.sroa.0569.14, %bb.ay ], [ %.sroa.0569.14, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i283 ], [ %.sroa.0569.17, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i303 ], [ %.sroa.0569.14, %bb.ba ], [ %.sroa.0569.14, %bb.bb ], [ %.sroa.0569.14, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.0569.14, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i243 ], [ %.sroa.0569.16, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i263 ], [ %.sroa.0569.16, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i273 ]
  %.sroa.67.4.ph = phi ptr [ %.sroa.67.01330, %bb.ax ], [ %.sroa.67.01330, %bb.ay ], [ %.sroa.33.01331, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i283 ], [ %.sroa.67.19, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i303 ], [ %.sroa.67.01330, %bb.ba ], [ %.sroa.67.01330, %bb.bb ], [ %.sroa.33.01331, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.67.15, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i243 ], [ %.sroa.67.16, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i263 ], [ %.sroa.67.17, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i273 ]
  %.sroa.0602.4.ph = phi ptr [ %.sroa.0602.01332, %bb.ax ], [ %.sroa.0602.01332, %bb.ay ], [ %.sroa.0602.01332, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i283 ], [ %.sroa.0602.19, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i303 ], [ %.sroa.0602.01332, %bb.ba ], [ %.sroa.0602.01332, %bb.bb ], [ %.sroa.0602.01332, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.0602.15, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i243 ], [ %.sroa.0602.16, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i263 ], [ %.sroa.0602.17, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i273 ]
  %lpad.loopexit767 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

.loopexit.split-lp762:                            ; preds = %.invoke, %bb.bj, %bb.bt, %bb.by, %bb.cn
  %.sroa.43.3.ph763 = phi ptr [ %.sroa.43.17, %bb.cn ], [ %.sroa.43.14, %.invoke ], [ %.sroa.43.16, %bb.by ], [ %.sroa.43.16, %bb.bt ], [ %.sroa.43.14, %bb.bj ]
  %.sroa.0569.3.ph764 = phi ptr [ %.sroa.0569.17, %bb.cn ], [ %.sroa.0569.14, %.invoke ], [ %.sroa.0569.16, %bb.by ], [ %.sroa.0569.16, %bb.bt ], [ %.sroa.0569.14, %bb.bj ]
  %.sroa.67.4.ph765 = phi ptr [ %.sroa.67.19, %bb.cn ], [ %.sroa.33.01331, %.invoke ], [ %.sroa.67.17, %bb.by ], [ %.sroa.67.16, %bb.bt ], [ %.sroa.67.15, %bb.bj ]
  %.sroa.0602.4.ph766 = phi ptr [ %.sroa.0602.19, %bb.cn ], [ %.sroa.0602.01332, %.invoke ], [ %.sroa.0602.17, %bb.by ], [ %.sroa.0602.16, %bb.bt ], [ %.sroa.0602.15, %bb.bj ]
  %lpad.loopexit.split-lp768 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

.loopexit.split-lp776.loopexit.split-lp:          ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i253, %bb.bo
  %lpad.loopexit.split-lp2774 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.cb:                                            ; preds = %bb.az
  %.not.i282 = icmp eq ptr %.sroa.33.01331, %.sroa.67.01330
  br i1 %.not.i282, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ld = load ptr, ptr %i.c, align 16, !tbaa !27
  store ptr %i.ld, ptr %.sroa.33.01331, align 8, !tbaa !27
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backERKS2_.exit291

bb.cd:                                            ; preds = %bb.cb
  %i.le = icmp eq i64 %i.aw, 9223372036854775800
  br i1 %i.le, label %.invoke, label %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i283

_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i283: ; preds = %bb.cd
  %.sroa.speculated.i.i.i284 = call i64 @llvm.umax.i64(i64 %i.ax, i64 1)
  %i.lf = add nsw i64 %.sroa.speculated.i.i.i284, %i.ax ; 2 uses
  %i.lg = icmp ult i64 %i.lf, %i.ax
  %i.lh = call i64 @llvm.umin.i64(i64 %i.lf, i64 1152921504606846975)
  %i.li = select i1 %i.lg, i64 1152921504606846975, i64 %i.lh ; 3 uses
  %.not.i.i.i285 = icmp ne i64 %i.li, 0
  call void @llvm.assume(i1 %.not.i.i.i285)
  %i.lj = shl nuw nsw i64 %i.li, 3
  %i.lk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lj) #19
          to label %.noexc290 unwind label %.loopexit761 ; 5 uses

.noexc290:                                        ; preds = %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i283
  %i.ll = getelementptr inbounds i8, ptr %i.lk, i64 %i.aw ; 2 uses
  %i.lm = load ptr, ptr %i.c, align 16, !tbaa !27
  store ptr %i.lm, ptr %i.ll, align 8, !tbaa !27
  %i.ln = icmp sgt i64 %i.aw, 0
  br i1 %i.ln, label %bb.ce, label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i286

bb.ce:                                            ; preds = %.noexc290
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.lk, ptr align 8 %.sroa.0602.01332, i64 %i.aw, i1 false)
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i286

_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i286: ; preds = %bb.ce, %.noexc290
  %.not.i17.i.i287 = icmp eq ptr %.sroa.0602.01332, null
  br i1 %.not.i17.i.i287, label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i288, label %bb.cf

bb.cf:                                            ; preds = %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i286
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0602.01332, i64 noundef %i.aw) #17
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i288

_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i288: ; preds = %bb.cf, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i286
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.lk, i64 %i.li
  %.pre1784 = ptrtoint ptr %i.lk to i64
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backERKS2_.exit291

_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backERKS2_.exit291: ; preds = %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i288, %bb.cc
  %.pre-phi = phi i64 [ %.pre1784, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i288 ], [ %i.av, %bb.cc ] ; 2 uses
  %.sroa.67.19 = phi ptr [ %i.lo, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i288 ], [ %.sroa.67.01330, %bb.cc ] ; 6 uses
  %.pn697 = phi ptr [ %i.ll, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i288 ], [ %.sroa.33.01331, %bb.cc ] ; 2 uses
  %.sroa.0602.19 = phi ptr [ %i.lk, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i288 ], [ %.sroa.0602.01332, %bb.cc ] ; 7 uses
  %.sroa.33.14 = getelementptr inbounds nuw i8, ptr %.pn697, i64 8 ; 3 uses
  %i.lp = load ptr, ptr %i.h, align 8, !tbaa !27
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  store i32 7, ptr %i.lq, align 8, !tbaa !22
  %i.lr = ptrtoint ptr %.sroa.33.14 to i64
  %i.ls = sub i64 %i.lr, %.pre-phi                ; 5 uses
  %i.lt = ashr exact i64 %i.ls, 3                 ; 4 uses
  %i.lu = trunc i64 %i.lt to i32                  ; 2 uses
  %.not.i.i292 = icmp eq ptr %.sroa.24.9, %.sroa.43.14
  br i1 %.not.i.i292, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backERKS2_.exit291
  store i32 %i.lu, ptr %.sroa.24.9, align 4, !tbaa !19
  %i.lv = getelementptr inbounds nuw i8, ptr %.pn695, i64 8
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit301

bb.ch:                                            ; preds = %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backERKS2_.exit291
  %i.lw = ptrtoint ptr %.sroa.43.14 to i64
  %i.lx = ptrtoint ptr %.sroa.0569.14 to i64
  %i.ly = sub i64 %i.lw, %i.lx                    ; 6 uses
  %i.lz = icmp eq i64 %i.ly, 9223372036854775804
  br i1 %i.lz, label %bb.ci, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i293

bb.ci:                                            ; preds = %bb.ch
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
          to label %.noexc299 unwind label %.loopexit.split-lp771.loopexit.split-lp

.noexc299:                                        ; preds = %bb.ci
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i293: ; preds = %bb.ch
  %i.ma = ashr exact i64 %i.ly, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i294 = call i64 @llvm.umax.i64(i64 %i.ma, i64 1)
  %i.mb = add nsw i64 %.sroa.speculated.i.i.i.i294, %i.ma ; 2 uses
  %i.mc = icmp ult i64 %i.mb, %i.ma
  %i.md = call i64 @llvm.umin.i64(i64 %i.mb, i64 2305843009213693951)
  %i.me = select i1 %i.mc, i64 2305843009213693951, i64 %i.md ; 3 uses
  %.not.i.i.i.i295 = icmp ne i64 %i.me, 0
  call void @llvm.assume(i1 %.not.i.i.i.i295)
  %i.mf = shl nuw nsw i64 %i.me, 2
  %i.mg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mf) #19
          to label %.noexc300 unwind label %.loopexit.split-lp771.loopexit.split-lp ; 4 uses

.noexc300:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i293
  %i.mh = getelementptr inbounds i8, ptr %i.mg, i64 %i.ly ; 2 uses
  store i32 %i.lu, ptr %i.mh, align 4, !tbaa !19
  %i.mi = icmp sgt i64 %i.ly, 0
  br i1 %i.mi, label %bb.cj, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i296

bb.cj:                                            ; preds = %.noexc300
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.mg, ptr align 4 %.sroa.0569.14, i64 %i.ly, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i296

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i296: ; preds = %bb.cj, %.noexc300
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mh, i64 4
  %.not.i17.i.i.i297 = icmp eq ptr %.sroa.0569.14, null
  br i1 %.not.i17.i.i.i297, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i298, label %bb.ck

bb.ck:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i296
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0569.14, i64 noundef %i.ly) #17
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i298

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i298: ; preds = %bb.ck, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i296
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %i.me
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit301

_ZNSt6vectorIiSaIiEE9push_backEOi.exit301:        ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i298, %bb.cg
  %.sroa.43.17 = phi ptr [ %i.mk, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i298 ], [ %.sroa.43.14, %bb.cg ] ; 4 uses
  %.sroa.24.12 = phi ptr [ %i.mj, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i298 ], [ %i.lv, %bb.cg ] ; 2 uses
  %.sroa.0569.17 = phi ptr [ %i.mg, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i298 ], [ %.sroa.0569.14, %bb.cg ] ; 4 uses
  %.not.i302 = icmp eq ptr %.sroa.33.14, %.sroa.67.19
  br i1 %.not.i302, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit301
  %i.ml = load ptr, ptr %i.i, align 16, !tbaa !27
  store ptr %i.ml, ptr %.sroa.33.14, align 8, !tbaa !27
  %i.mm = getelementptr inbounds nuw i8, ptr %.pn697, i64 16
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backERKS2_.exit281

bb.cm:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit301
  %i.mn = icmp eq i64 %i.ls, 9223372036854775800
  br i1 %i.mn, label %bb.cn, label %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i303

bb.cn:                                            ; preds = %bb.cm
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
          to label %.noexc309 unwind label %.loopexit.split-lp762

.noexc309:                                        ; preds = %bb.cn
  unreachable

_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i303: ; preds = %bb.cm
  %.sroa.speculated.i.i.i304 = call i64 @llvm.umax.i64(i64 %i.lt, i64 1)
  %i.mo = add nsw i64 %.sroa.speculated.i.i.i304, %i.lt ; 2 uses
  %i.mp = icmp ult i64 %i.mo, %i.lt
  %i.mq = call i64 @llvm.umin.i64(i64 %i.mo, i64 1152921504606846975)
  %i.mr = select i1 %i.mp, i64 1152921504606846975, i64 %i.mq ; 3 uses
  %.not.i.i.i305 = icmp ne i64 %i.mr, 0
  call void @llvm.assume(i1 %.not.i.i.i305)
  %i.ms = shl nuw nsw i64 %i.mr, 3
  %i.mt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ms) #19
          to label %.noexc310 unwind label %.loopexit761 ; 4 uses

.noexc310:                                        ; preds = %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i303
  %i.mu = getelementptr inbounds i8, ptr %i.mt, i64 %i.ls ; 2 uses
  %i.mv = load ptr, ptr %i.i, align 16, !tbaa !27
  store ptr %i.mv, ptr %i.mu, align 8, !tbaa !27
  %i.mw = icmp sgt i64 %i.ls, 0
  br i1 %i.mw, label %bb.co, label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i306

bb.co:                                            ; preds = %.noexc310
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.mt, ptr align 8 %.sroa.0602.19, i64 %i.ls, i1 false)
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i306

_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i306: ; preds = %bb.co, %.noexc310
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  %.not.i17.i.i307 = icmp eq ptr %.sroa.0602.19, null
  br i1 %.not.i17.i.i307, label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i308, label %bb.cp

bb.cp:                                            ; preds = %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i306
  %i.my = ptrtoint ptr %.sroa.67.19 to i64
  %i.mz = sub i64 %i.my, %.pre-phi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0602.19, i64 noundef %i.mz) #17
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i308

_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i308: ; preds = %bb.cp, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i306
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.mt, i64 %i.mr
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backERKS2_.exit281

.loopexit.split-lp771.loopexit.split-lp:          ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i293, %bb.ci
  %lpad.loopexit.split-lp2771 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backERKS2_.exit281: ; preds = %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i308, %bb.cl, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i278, %bb.bw
  %.sroa.43.4 = phi ptr [ %.sroa.43.16, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i278 ], [ %.sroa.43.16, %bb.bw ], [ %.sroa.43.17, %bb.cl ], [ %.sroa.43.17, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i308 ] ; 2 uses
  %.sroa.24.3 = phi ptr [ %.sroa.24.11, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i278 ], [ %.sroa.24.11, %bb.bw ], [ %.sroa.24.12, %bb.cl ], [ %.sroa.24.12, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i308 ]
  %.sroa.0569.4 = phi ptr [ %.sroa.0569.16, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i278 ], [ %.sroa.0569.16, %bb.bw ], [ %.sroa.0569.17, %bb.cl ], [ %.sroa.0569.17, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i308 ] ; 2 uses
  %.sroa.67.5 = phi ptr [ %i.lc, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i278 ], [ %.sroa.67.17, %bb.bw ], [ %.sroa.67.19, %bb.cl ], [ %i.na, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i308 ] ; 2 uses
  %.sroa.33.4 = phi ptr [ %i.lb, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i278 ], [ %i.km, %bb.bw ], [ %i.mm, %bb.cl ], [ %i.mx, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i308 ]
  %.sroa.0602.5 = phi ptr [ %i.kx, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i278 ], [ %.sroa.0602.17, %bb.bw ], [ %.sroa.0602.19, %bb.cl ], [ %i.mt, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i308 ] ; 2 uses
  %i.nb = load ptr, ptr %.sroa.0532.01322, align 8, !tbaa !24 ; 3 uses
  %i.nc = load ptr, ptr %i.aj, align 8, !tbaa !25 ; 2 uses
  %.not.i.i312 = icmp eq ptr %i.nc, %i.nb
  br i1 %.not.i.i312, label %_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backERKS2_.exit281, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.nd, %.lr.ph.i.i.i.i ], [ %i.nb, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backERKS2_.exit281 ] ; 2 uses
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i) #16
  %i.nd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i313 = icmp eq ptr %i.nd, %i.nc
  br i1 %.not.i.i.i.i313, label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.nb, ptr %i.aj, align 8, !tbaa !25
  br label %_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE5clearEv.exit

_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE5clearEv.exit: ; preds = %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backERKS2_.exit281, %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.ne = load ptr, ptr %i.c, align 16, !tbaa !27 ; 2 uses
  %.not1741292 = icmp eq ptr %i.ne, null
  br i1 %.not1741292, label %._crit_edge1295, label %.lr.ph1294

.lr.ph1294:                                       ; preds = %_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE5clearEv.exit
  %i.nf = getelementptr inbounds nuw i8, ptr %.sroa.0532.01322, i64 16
  br label %bb.cq

._crit_edge1295:                                  ; preds = %_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE5clearEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %.loopexit717

bb.cq:                                            ; preds = %.lr.ph1294, %_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE9push_backEOS1_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph1294 ], [ %indvars.iv.next, %_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE9push_backEOS1_.exit ]
  %i.ng = phi ptr [ %i.ne, %.lr.ph1294 ], [ %i.nm, %_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE9push_backEOS1_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store ptr %i.ng, ptr %4, align 8, !tbaa !29
  %i.nh = load ptr, ptr %i.aj, align 8, !tbaa !25 ; 3 uses
  %i.ni = load ptr, ptr %i.nf, align 8, !tbaa !30
  %.not.i.i314 = icmp eq ptr %i.nh, %i.ni
  br i1 %.not.i.i314, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  invoke void @_ZN7msdfgen10EdgeHolderC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.nh, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc315 unwind label %bb.ct

.noexc315:                                        ; preds = %bb.cr
  %i.nj = load ptr, ptr %i.aj, align 8, !tbaa !25
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 8
  store ptr %i.nk, ptr %i.aj, align 8, !tbaa !25
  br label %_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE9push_backEOS1_.exit

bb.cs:                                            ; preds = %bb.cq
  invoke void @_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0532.01322, ptr %i.nh, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE9push_backEOS1_.exit unwind label %bb.ct

_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE9push_backEOS1_.exit: ; preds = %.noexc315, %bb.cs
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !27 ; 2 uses
  %.not174 = icmp eq ptr %i.nm, null
end_hunk_1
begin_hunk_2_@_ZN7msdfgen22edgeColoringByDistanceERNS_5ShapeEdy:bb.a
  %i.agv = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.agw = icmp ult ptr %.06.i.i.i.i.i, %i.agr
  br i1 %i.agw, label %.lr.ph.i.i.i.i.i, label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i.i.i.i, !llvm.loop !1

_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %3, align 8, !tbaa !48
  br label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i.i.i.i

_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i.i.i.i: ; preds = %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i.i.i.i, %bb.fm
  %i.agx = phi ptr [ %.pre.i.i.i.i, %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i.i.i.i ], [ %i.agp, %bb.fm ]
  %i.agy = load i64, ptr %i.acg, align 8, !tbaa !50
  %i.agz = shl i64 %i.agy, 3
  call void @_ZdlPvm(ptr noundef %i.agx, i64 noundef %i.agz) #17
  br label %_ZNSt5queueIiSt5dequeIiSaIiEEED2Ev.exit.i

_ZNSt5queueIiSt5dequeIiSaIiEEED2Ev.exit.i:        ; preds = %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i.i.i.i, %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %_ZN7msdfgenL10tryAddEdgeEPiPKS0_iiiS0_.exit

_ZN7msdfgenL10tryAddEdgeEPiPKS0_iiiS0_.exit:      ; preds = %_ZNSt5queueIiSt5dequeIiSaIiEEED2Ev.exit.i, %_ZN7msdfgenL20vertexPossibleColorsEPKiS1_i.exit.thread.i, %bb.ev
  %indvars.iv.next1777 = add nuw nsw i64 %indvars.iv1776, 1 ; 2 uses
  %i.aha = trunc nuw i64 %indvars.iv.next1777 to i32
  %i.ahb = icmp slt i32 %i.aha, %i.xn
  br i1 %i.ahb, label %bb.ev, label %.preheader, !llvm.loop !103

bb.fn:                                            ; preds = %.critedge
  %i.ahc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPiSaIS0_EED2Ev.exit417

bb.fo:                                            ; preds = %bb.fa
  %i.ahd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.fo
  %eh.lpad-body = phi { ptr, i32 } [ %i.ahd, %bb.fo ], [ %lpad.loopexit.split-lp2739, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZdlPvm(ptr noundef nonnull %i.aad, i64 noundef %i.aac) #17
  br label %_ZNSt6vectorIPiSaIS0_EED2Ev.exit417

_ZNSt6vectorIiSaIiEED2Ev.exit407.loopexit.unr-lcssa: ; preds = %.lr.ph1381
  %lcmp.mod3244.not = icmp eq i64 %xtraiter3242, 0
  br i1 %lcmp.mod3244.not, label %_ZNSt6vectorIiSaIiEED2Ev.exit407, label %.lr.ph1381.epil.preheader

.lr.ph1381.epil.preheader:                        ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit407.loopexit.unr-lcssa, %.lr.ph1381.preheader
  %indvars.iv1779.epil.init = phi i64 [ 0, %.lr.ph1381.preheader ], [ %indvars.iv.next1780.1, %_ZNSt6vectorIiSaIiEED2Ev.exit407.loopexit.unr-lcssa ] ; 2 uses
  %.01241379.epil.init = phi i32 [ -1, %.lr.ph1381.preheader ], [ %spec.select.1, %_ZNSt6vectorIiSaIiEED2Ev.exit407.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod3245 = trunc i64 %i.py to i1
  call void @llvm.assume(i1 %lcmp.mod3245)
  %i.ahe = add nsw i32 %.01241379.epil.init, 1    ; 2 uses
  %i.ahf = sext i32 %i.ahe to i64
  %i.ahg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0569.13, i64 %i.ahf
  %i.ahh = load i32, ptr %i.ahg, align 4, !tbaa !19
  %i.ahi = zext i32 %i.ahh to i64
  %i.ahj = icmp eq i64 %indvars.iv1779.epil.init, %i.ahi
  %spec.select.epil = select i1 %i.ahj, i32 %i.ahe, i32 %.01241379.epil.init
  %i.ahk = sext i32 %spec.select.epil to i64
  %i.ahl = getelementptr inbounds nuw [4 x i8], ptr %i.aad, i64 %i.ahk
  %i.ahm = load i32, ptr %i.ahl, align 4, !tbaa !19
  %i.ahn = sext i32 %i.ahm to i64
  %i.aho = getelementptr inbounds [4 x i8], ptr @__const._ZN7msdfgen22edgeColoringByDistanceERNS_5ShapeEdy.colors, i64 %i.ahn
  %i.ahp = load i32, ptr %i.aho, align 4, !tbaa !14
  %i.ahq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0602.0.lcssa1865, i64 %indvars.iv1779.epil.init
  %i.ahr = load ptr, ptr %i.ahq, align 8, !tbaa !27
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahr, i64 8
  store i32 %i.ahp, ptr %i.ahs, align 8, !tbaa !22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit407

_ZNSt6vectorIiSaIiEED2Ev.exit407:                 ; preds = %.lr.ph1381.epil.preheader, %_ZNSt6vectorIiSaIiEED2Ev.exit407.loopexit.unr-lcssa, %.preheader
  call void @_ZdlPvm(ptr noundef nonnull %i.aad, i64 noundef %i.aac) #17
  call void @_ZdlPvm(ptr noundef nonnull %i.yl, i64 noundef %i.qp) #17
  call void @_ZdlPvm(ptr noundef nonnull %i.yj, i64 noundef %i.yi) #17
  %.not.i.i.i408 = icmp eq ptr %.sroa.0455.1.lcssa, null
  br i1 %.not.i.i.i408, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.fp

bb.fp:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit407
  %i.aht = ptrtoint ptr %.sroa.27.1.lcssa to i64
  %i.ahu = sub i64 %i.aht, %i.xk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0455.1.lcssa, i64 noundef %i.ahu) #17
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit407, %bb.fp
  call void @_ZdlPvm(ptr noundef nonnull %i.qq, i64 noundef %i.qp) #17
  call void @_ZdlPvm(ptr noundef nonnull %i.qj, i64 noundef %i.qi) #17
  br label %bb.fq

.lr.ph1381:                                       ; preds = %.lr.ph1381, %.lr.ph1381.preheader.new
  %indvars.iv1779 = phi i64 [ 0, %.lr.ph1381.preheader.new ], [ %indvars.iv.next1780.1, %.lr.ph1381 ] ; 4 uses
  %.01241379 = phi i32 [ -1, %.lr.ph1381.preheader.new ], [ %spec.select.1, %.lr.ph1381 ] ; 2 uses
  %niter3247 = phi i64 [ 0, %.lr.ph1381.preheader.new ], [ %niter3247.next.1, %.lr.ph1381 ]
  %i.ahv = add nsw i32 %.01241379, 1              ; 2 uses
  %i.ahw = sext i32 %i.ahv to i64
  %i.ahx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0569.13, i64 %i.ahw
  %i.ahy = load i32, ptr %i.ahx, align 4, !tbaa !19
  %i.ahz = zext i32 %i.ahy to i64
  %i.aia = icmp eq i64 %indvars.iv1779, %i.ahz
  %spec.select = select i1 %i.aia, i32 %i.ahv, i32 %.01241379 ; 3 uses
  %i.aib = sext i32 %spec.select to i64
  %i.aic = getelementptr inbounds nuw [4 x i8], ptr %i.aad, i64 %i.aib
  %i.aid = load i32, ptr %i.aic, align 4, !tbaa !19
  %i.aie = sext i32 %i.aid to i64
  %i.aif = getelementptr inbounds [4 x i8], ptr @__const._ZN7msdfgen22edgeColoringByDistanceERNS_5ShapeEdy.colors, i64 %i.aie
  %i.aig = load i32, ptr %i.aif, align 4, !tbaa !14
  %i.aih = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0602.0.lcssa1865, i64 %indvars.iv1779
  %i.aii = load ptr, ptr %i.aih, align 8, !tbaa !27
  %i.aij = getelementptr inbounds nuw i8, ptr %i.aii, i64 8
  store i32 %i.aig, ptr %i.aij, align 8, !tbaa !22
  %indvars.iv.next1780 = or disjoint i64 %indvars.iv1779, 1 ; 2 uses
  %i.aik = add nsw i32 %spec.select, 1            ; 2 uses
  %i.ail = sext i32 %i.aik to i64
  %i.aim = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0569.13, i64 %i.ail
  %i.ain = load i32, ptr %i.aim, align 4, !tbaa !19
  %i.aio = zext i32 %i.ain to i64
  %i.aip = icmp eq i64 %indvars.iv.next1780, %i.aio
  %spec.select.1 = select i1 %i.aip, i32 %i.aik, i32 %spec.select ; 3 uses
  %i.aiq = sext i32 %spec.select.1 to i64
  %i.air = getelementptr inbounds nuw [4 x i8], ptr %i.aad, i64 %i.aiq
  %i.ais = load i32, ptr %i.air, align 4, !tbaa !19
  %i.ait = sext i32 %i.ais to i64
  %i.aiu = getelementptr inbounds [4 x i8], ptr @__const._ZN7msdfgen22edgeColoringByDistanceERNS_5ShapeEdy.colors, i64 %i.ait
  %i.aiv = load i32, ptr %i.aiu, align 4, !tbaa !14
  %i.aiw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0602.0.lcssa1865, i64 %indvars.iv.next1780
  %i.aix = load ptr, ptr %i.aiw, align 8, !tbaa !27
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.aix, i64 8
  store i32 %i.aiv, ptr %i.aiy, align 8, !tbaa !22
  %indvars.iv.next1780.1 = add nuw nsw i64 %indvars.iv1779, 2 ; 2 uses
  %niter3247.next.1 = add i64 %niter3247, 2       ; 2 uses
  %niter3247.ncmp.1 = icmp eq i64 %niter3247.next.1, %unroll_iter3246
  br i1 %niter3247.ncmp.1, label %_ZNSt6vectorIiSaIiEED2Ev.exit407.loopexit.unr-lcssa, label %.lr.ph1381, !llvm.loop !104

bb.fq:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit, %_ZNSt6vectorIdSaIdEED2Ev.exit
  %.not.i.i.i411 = icmp eq ptr %.sroa.0552.0.lcssa1857, null
  br i1 %.not.i.i.i411, label %_ZNSt6vectorIiSaIiEED2Ev.exit412, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.aiz = ptrtoint ptr %.sroa.23.0.lcssa1854 to i64
  %i.aja = ptrtoint ptr %.sroa.0552.0.lcssa1857 to i64
  %i.ajb = sub i64 %i.aiz, %i.aja
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0552.0.lcssa1857, i64 noundef %i.ajb) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit412

_ZNSt6vectorIiSaIiEED2Ev.exit412:                 ; preds = %bb.fq, %bb.fr
  %.not.i.i.i413 = icmp eq ptr %.sroa.0569.13, null
  br i1 %.not.i.i.i413, label %_ZNSt6vectorIiSaIiEED2Ev.exit414, label %bb.fs

bb.fs:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit412
  %i.ajc = ptrtoint ptr %.sroa.43.13 to i64
  %i.ajd = sub i64 %i.ajc, %i.qb
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0569.13, i64 noundef %i.ajd) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit414

_ZNSt6vectorIiSaIiEED2Ev.exit414:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit412, %bb.fs
  %.not.i.i.i415 = icmp eq ptr %.sroa.0602.0.lcssa1865, null
  br i1 %.not.i.i.i415, label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EED2Ev.exit, label %bb.ft

bb.ft:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit414
  %i.aje = ptrtoint ptr %.sroa.67.0.lcssa1862 to i64
  %i.ajf = sub i64 %i.aje, %i.pz
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0602.0.lcssa1865, i64 noundef %i.ajf) #17
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EED2Ev.exit

_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit414, %bb.ft
  ret void

_ZNSt6vectorIPiSaIS0_EED2Ev.exit417:              ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.fn
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ %i.ahc, %bb.fn ]
  call void @_ZdlPvm(ptr noundef nonnull %i.yl, i64 noundef %i.qp) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit419

_ZNSt6vectorIiSaIiEED2Ev.exit419:                 ; preds = %_ZNSt6vectorIPiSaIS0_EED2Ev.exit417, %bb.eg
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorIPiSaIS0_EED2Ev.exit417 ], [ %i.yu, %bb.eg ]
  call void @_ZdlPvm(ptr noundef nonnull %i.yj, i64 noundef %i.yi) #17
  br label %bb.fu

bb.fu:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp, %bb.ef, %_ZNSt6vectorIiSaIiEED2Ev.exit419, %bb.ed
  %.sroa.0455.3 = phi ptr [ %.sroa.0455.2, %bb.ed ], [ %.sroa.0455.1.lcssa, %bb.ef ], [ %.sroa.0455.1.lcssa, %_ZNSt6vectorIiSaIiEED2Ev.exit419 ], [ %.sroa.0455.11352, %.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.sroa.27.3 = phi ptr [ %.sroa.27.2, %bb.ed ], [ %.sroa.27.1.lcssa, %bb.ef ], [ %.sroa.27.1.lcssa, %_ZNSt6vectorIiSaIiEED2Ev.exit419 ], [ %.sroa.27.11354, %.loopexit.split-lp.loopexit.split-lp ]
  %.pn165 = phi { ptr, i32 } [ %i.yh, %bb.ed ], [ %i.yt, %bb.ef ], [ %.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit419 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i420 = icmp eq ptr %.sroa.0455.3, null
  br i1 %.not.i.i.i420, label %_ZNSt6vectorIPdSaIS0_EED2Ev.exit423, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.ajg = ptrtoint ptr %.sroa.27.3 to i64
  %i.ajh = ptrtoint ptr %.sroa.0455.3 to i64
  %i.aji = sub i64 %i.ajg, %i.ajh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0455.3, i64 noundef %i.aji) #17
  br label %_ZNSt6vectorIPdSaIS0_EED2Ev.exit423

_ZNSt6vectorIPdSaIS0_EED2Ev.exit423:              ; preds = %.loopexit.split-lp708.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.fv, %bb.fu
  %.pn167 = phi { ptr, i32 } [ %.pn165, %bb.fv ], [ %.pn165, %bb.fu ], [ %lpad.loopexit.split-lp2754, %.loopexit.split-lp708.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZdlPvm(ptr noundef nonnull %i.qq, i64 noundef %i.qp) #17
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit425

_ZNSt6vectorIdSaIdEED2Ev.exit425:                 ; preds = %_ZNSt6vectorIPdSaIS0_EED2Ev.exit423, %bb.dm
  %.pn167.pn = phi { ptr, i32 } [ %.pn167, %_ZNSt6vectorIPdSaIS0_EED2Ev.exit423 ], [ %i.ra, %bb.dm ]
  call void @_ZdlPvm(ptr noundef nonnull %i.qj, i64 noundef %i.qi) #17
  br label %.loopexit.split-lp744

.loopexit.split-lp744:                            ; preds = %.loopexit753, %.loopexit.split-lp754, %.loopexit738, %.loopexit.split-lp739, %.loopexit729, %.loopexit.split-lp730, %.loopexit.split-lp725.loopexit.split-lp, %.loopexit718, %.loopexit.split-lp719, %.loopexit743, %.loopexit.split-lp744.loopexit.split-lp.loopexit.split-lp, %.loopexit748, %.loopexit.split-lp749, %bb.dl, %_ZNSt6vectorIdSaIdEED2Ev.exit425, %bb.cu
  %.sroa.23.8 = phi ptr [ %.sroa.23.0.lcssa1854, %_ZNSt6vectorIdSaIdEED2Ev.exit425 ], [ %.sroa.23.1.lcssa, %.loopexit.split-lp739 ], [ %.sroa.23.1.lcssa, %bb.cu ], [ %.sroa.23.1.lcssa, %.loopexit.split-lp730 ], [ %.sroa.15.11272, %.loopexit.split-lp749 ], [ %.sroa.23.1.lcssa, %.loopexit.split-lp744.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.23.1.lcssa, %.loopexit.split-lp719 ], [ %.sroa.23.0.lcssa1854, %bb.dl ], [ %.sroa.23.1.lcssa, %.loopexit.split-lp725.loopexit.split-lp ], [ %.sroa.23.3.ph, %.loopexit748 ], [ %.sroa.23.11268, %.loopexit743 ], [ %.sroa.23.0.lcssa1855, %.loopexit.split-lp754 ], [ %.sroa.23.1.lcssa, %.loopexit718 ], [ %.sroa.23.01324, %.loopexit753 ], [ %.sroa.23.1.lcssa, %.loopexit729 ], [ %.sroa.23.1.lcssa, %.loopexit738 ]
  %.sroa.0552.8 = phi ptr [ %.sroa.0552.0.lcssa1857, %_ZNSt6vectorIdSaIdEED2Ev.exit425 ], [ %.sroa.0552.1.lcssa, %.loopexit.split-lp739 ], [ %.sroa.0552.1.lcssa, %bb.cu ], [ %.sroa.0552.1.lcssa, %.loopexit.split-lp730 ], [ %.sroa.0552.11273, %.loopexit.split-lp749 ], [ %.sroa.0552.1.lcssa, %.loopexit.split-lp744.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.0552.1.lcssa, %.loopexit.split-lp719 ], [ %.sroa.0552.0.lcssa1857, %bb.dl ], [ %.sroa.0552.1.lcssa, %.loopexit.split-lp725.loopexit.split-lp ], [ %.sroa.0552.3.ph, %.loopexit748 ], [ %.sroa.0552.11273, %.loopexit743 ], [ %.sroa.0552.0.lcssa1858, %.loopexit.split-lp754 ], [ %.sroa.0552.1.lcssa, %.loopexit718 ], [ %.sroa.0552.01326, %.loopexit753 ], [ %.sroa.0552.1.lcssa, %.loopexit729 ], [ %.sroa.0552.1.lcssa, %.loopexit738 ] ; 3 uses
  %.sroa.43.12 = phi ptr [ %.sroa.43.13, %_ZNSt6vectorIdSaIdEED2Ev.exit425 ], [ %.sroa.43.7, %.loopexit.split-lp739 ], [ %.sroa.43.5, %bb.cu ], [ %.sroa.43.2, %.loopexit.split-lp730 ], [ %.sroa.43.01327, %.loopexit.split-lp749 ], [ %.sroa.24.01328, %.loopexit.split-lp744.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.43.14, %.loopexit.split-lp719 ], [ %.sroa.43.13, %bb.dl ], [ %.sroa.24.11297, %.loopexit.split-lp725.loopexit.split-lp ], [ %.sroa.43.01327, %.loopexit748 ], [ %.sroa.43.01327, %.loopexit743 ], [ %.sroa.43.0.lcssa1860, %.loopexit.split-lp754 ], [ %.sroa.43.14, %.loopexit718 ], [ %.sroa.43.01327, %.loopexit753 ], [ %.sroa.43.2, %.loopexit729 ], [ %.sroa.43.7, %.loopexit738 ] ; 2 uses
  %.sroa.0569.12 = phi ptr [ %.sroa.0569.13, %_ZNSt6vectorIdSaIdEED2Ev.exit425 ], [ %.sroa.0569.7, %.loopexit.split-lp739 ], [ %.sroa.0569.5, %bb.cu ], [ %.sroa.0569.2, %.loopexit.split-lp730 ], [ %.sroa.0569.01329, %.loopexit.split-lp749 ], [ %.sroa.0569.01329, %.loopexit.split-lp744.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.0569.14, %.loopexit.split-lp719 ], [ %.sroa.0569.13, %bb.dl ], [ %.sroa.0569.11298, %.loopexit.split-lp725.loopexit.split-lp ], [ %.sroa.0569.01329, %.loopexit748 ], [ %.sroa.0569.01329, %.loopexit743 ], [ %.sroa.0569.0.lcssa1861, %.loopexit.split-lp754 ], [ %.sroa.0569.14, %.loopexit718 ], [ %.sroa.0569.01329, %.loopexit753 ], [ %.sroa.0569.2, %.loopexit729 ], [ %.sroa.0569.7, %.loopexit738 ] ; 2 uses
  %.sroa.67.12 = phi ptr [ %.sroa.67.0.lcssa1862, %_ZNSt6vectorIdSaIdEED2Ev.exit425 ], [ %.sroa.33.51280, %.loopexit.split-lp739 ], [ %.sroa.67.6, %bb.cu ], [ %.sroa.33.21300, %.loopexit.split-lp730 ], [ %.sroa.67.01330, %.loopexit.split-lp749 ], [ %.sroa.67.01330, %.loopexit.split-lp744.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.33.11314, %.loopexit.split-lp719 ], [ %.sroa.67.0.lcssa1862, %bb.dl ], [ %.sroa.67.21299, %.loopexit.split-lp725.loopexit.split-lp ], [ %.sroa.67.01330, %.loopexit748 ], [ %.sroa.67.01330, %.loopexit743 ], [ %.sroa.67.0.lcssa1863, %.loopexit.split-lp754 ], [ %.sroa.67.11313.lcssa, %.loopexit718 ], [ %.sroa.67.01330, %.loopexit753 ], [ %.sroa.67.21299.lcssa1439, %.loopexit729 ], [ %.sroa.67.71279.lcssa1417, %.loopexit738 ] ; 2 uses
  %.sroa.0602.12 = phi ptr [ %.sroa.0602.0.lcssa1865, %_ZNSt6vectorIdSaIdEED2Ev.exit425 ], [ %.sroa.0602.71281, %.loopexit.split-lp739 ], [ %.sroa.0602.6, %bb.cu ], [ %.sroa.0602.21301, %.loopexit.split-lp730 ], [ %.sroa.0602.01332, %.loopexit.split-lp749 ], [ %.sroa.0602.01332, %.loopexit.split-lp744.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.0602.11315, %.loopexit.split-lp719 ], [ %.sroa.0602.0.lcssa1865, %bb.dl ], [ %.sroa.0602.21301, %.loopexit.split-lp725.loopexit.split-lp ], [ %.sroa.0602.01332, %.loopexit748 ], [ %.sroa.0602.01332, %.loopexit743 ], [ %.sroa.0602.0.lcssa1866, %.loopexit.split-lp754 ], [ %.sroa.0602.11315, %.loopexit718 ], [ %.sroa.0602.01332, %.loopexit753 ], [ %.sroa.0602.21301, %.loopexit729 ], [ %.sroa.0602.71281, %.loopexit738 ] ; 2 uses
  %.pn183.pn.pn.pn = phi { ptr, i32 } [ %.pn167.pn, %_ZNSt6vectorIdSaIdEED2Ev.exit425 ], [ %lpad.loopexit.split-lp741, %.loopexit.split-lp739 ], [ %.pn175, %bb.cu ], [ %lpad.loopexit.split-lp732, %.loopexit.split-lp730 ], [ %lpad.loopexit.split-lp751, %.loopexit.split-lp749 ], [ %lpad.loopexit.split-lp2768, %.loopexit.split-lp744.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp721, %.loopexit.split-lp719 ], [ %i.qz, %bb.dl ], [ %lpad.loopexit.split-lp2760, %.loopexit.split-lp725.loopexit.split-lp ], [ %lpad.loopexit750, %.loopexit748 ], [ %lpad.loopexit745, %.loopexit743 ], [ %lpad.loopexit.split-lp756, %.loopexit.split-lp754 ], [ %lpad.loopexit720, %.loopexit718 ], [ %lpad.loopexit755, %.loopexit753 ], [ %lpad.loopexit731, %.loopexit729 ], [ %lpad.loopexit740, %.loopexit738 ] ; 2 uses
  %.not.i.i.i426 = icmp eq ptr %.sroa.0552.8, null
  br i1 %.not.i.i.i426, label %_ZNSt6vectorIiSaIiEED2Ev.exit427, label %.loopexit.split-lp744..thread_crit_edge

.loopexit.split-lp744..thread_crit_edge:          ; preds = %.loopexit.split-lp744
  %.pre1785 = ptrtoint ptr %.sroa.0552.8 to i64
  br label %.thread

.thread:                                          ; preds = %.loopexit.split-lp744..thread_crit_edge, %.thread.loopexit.split-lp.loopexit.split-lp
  %.pre-phi1786 = phi i64 [ %.pre1785, %.loopexit.split-lp744..thread_crit_edge ], [ %i.ef, %.thread.loopexit.split-lp.loopexit.split-lp ]
  %.pn183.pn.pn.pn675 = phi { ptr, i32 } [ %.pn183.pn.pn.pn, %.loopexit.split-lp744..thread_crit_edge ], [ %lpad.loopexit.split-lp2764, %.thread.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0602.12673.a = phi ptr [ %.sroa.0602.12, %.loopexit.split-lp744..thread_crit_edge ], [ %.sroa.0602.71281, %.thread.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.67.12671 = phi ptr [ %.sroa.67.12, %.loopexit.split-lp744..thread_crit_edge ], [ %.sroa.67.71279, %.thread.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0569.12669 = phi ptr [ %.sroa.0569.12, %.loopexit.split-lp744..thread_crit_edge ], [ %.sroa.0569.61278, %.thread.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.43.12667 = phi ptr [ %.sroa.43.12, %.loopexit.split-lp744..thread_crit_edge ], [ %.sroa.24.41277, %.thread.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0552.8666 = phi ptr [ %.sroa.0552.8, %.loopexit.split-lp744..thread_crit_edge ], [ %.sroa.0552.1.lcssa, %.thread.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.23.8665 = phi ptr [ %.sroa.23.8, %.loopexit.split-lp744..thread_crit_edge ], [ %.sroa.23.1.lcssa, %.thread.loopexit.split-lp.loopexit.split-lp ]
  %i.ajj = ptrtoint ptr %.sroa.23.8665 to i64
  %i.ajk = sub i64 %i.ajj, %.pre-phi1786
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0552.8666, i64 noundef %i.ajk) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit427

_ZNSt6vectorIiSaIiEED2Ev.exit427:                 ; preds = %.loopexit.split-lp744, %.thread
  %.pn183.pn.pn.pn676 = phi { ptr, i32 } [ %.pn183.pn.pn.pn, %.loopexit.split-lp744 ], [ %.pn183.pn.pn.pn675, %.thread ]
  %.sroa.0602.12674 = phi ptr [ %.sroa.0602.12, %.loopexit.split-lp744 ], [ %.sroa.0602.12673.a, %.thread ] ; 3 uses
  %.sroa.67.12672 = phi ptr [ %.sroa.67.12, %.loopexit.split-lp744 ], [ %.sroa.67.12671, %.thread ]
  %.sroa.0569.12670 = phi ptr [ %.sroa.0569.12, %.loopexit.split-lp744 ], [ %.sroa.0569.12669, %.thread ] ; 3 uses
  %.sroa.43.12668 = phi ptr [ %.sroa.43.12, %.loopexit.split-lp744 ], [ %.sroa.43.12667, %.thread ]
  %.not.i.i.i428 = icmp eq ptr %.sroa.0569.12670, null
  br i1 %.not.i.i.i428, label %_ZNSt6vectorIiSaIiEED2Ev.exit429, label %bb.fw

bb.fw:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit427
  %i.ajl = ptrtoint ptr %.sroa.43.12668 to i64
  %i.ajm = ptrtoint ptr %.sroa.0569.12670 to i64
  %i.ajn = sub i64 %i.ajl, %i.ajm
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0569.12670, i64 noundef %i.ajn) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit429

_ZNSt6vectorIiSaIiEED2Ev.exit429:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit427, %bb.fw
  %.not.i.i.i430 = icmp eq ptr %.sroa.0602.12674, null
  br i1 %.not.i.i.i430, label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EED2Ev.exit431, label %bb.fx

bb.fx:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit429
  %i.ajo = ptrtoint ptr %.sroa.67.12672 to i64
  %i.ajp = ptrtoint ptr %.sroa.0602.12674 to i64
  %i.ajq = sub i64 %i.ajo, %i.ajp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0602.12674, i64 noundef %i.ajq) #17
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EED2Ev.exit431

_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EED2Ev.exit431: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit429, %bb.fx
  resume { ptr, i32 } %.pn183.pn.pn.pn676
}

declare noundef nonnull align 8 dereferenceable(12) ptr @_ZN7msdfgen10EdgeHolderdeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef range(i32 -1, 2) i32 @_ZN7msdfgenL12cmpDoublePtrEPKvS1_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #7 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !34
  %i.b = load double, ptr %i.a, align 8, !tbaa !32
  %i.c = load ptr, ptr %1, align 8, !tbaa !34
  %i.d = load double, ptr %i.c, align 8, !tbaa !32
  %i.e = fsub double %i.b, %i.d                   ; 2 uses
  %i.f = fcmp ogt double %i.e, 0.000000e+00
  %i.g = zext i1 %i.f to i32
  %i.h = fcmp olt double %i.e, 0.000000e+00
  %.neg.i = sext i1 %i.h to i32
  %i.i = add nsw i32 %.neg.i, %i.g
  ret i32 %i.i
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN7msdfgenL20uncolorSameNeighborsERSt5queueIiSt5dequeIiSaIiEEEPiPKPKiii(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, i32 noundef %3, i32 noundef range(i32 -2147483648, 2147483647) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %storemerge22 = add nsw i32 %3, 1               ; 3 uses
  store i32 %storemerge22, ptr %i.a, align 4, !tbaa !19
  %i.c = icmp slt i32 %storemerge22, %4
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = sext i32 %3 to i64                       ; 2 uses
  %i.e = getelementptr inbounds [8 x i8], ptr %2, i64 %i.d
  %i.f = getelementptr inbounds [4 x i8], ptr %1, i64 %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i32 0, ptr %i.b, align 4, !tbaa !19
  %i.i = icmp sgt i32 %3, 0
  br i1 %i.i, label %.lr.ph26, label %._crit_edge27

.lr.ph26:                                         ; preds = %._crit_edge
  %i.j = zext nneg i32 %3 to i64                  ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.j
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.j
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.g

bb.b:                                             ; preds = %.lr.ph, %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit
  %storemerge23 = phi i32 [ %storemerge22, %.lr.ph ], [ %storemerge, %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit ] ; 2 uses
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !36
  %i.p = sext i32 %storemerge23 to i64            ; 2 uses
  %i.q = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !19
  %.not19 = icmp eq i32 %i.r, 0
  br i1 %.not19, label %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds [4 x i8], ptr %1, i64 %i.p ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !19
  %i.u = load i32, ptr %i.f, align 4, !tbaa !19
  %i.v = icmp eq i32 %i.t, %i.u
  br i1 %i.v, label %bb.d, label %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit

bb.d:                                             ; preds = %bb.c
  store i32 -1, ptr %i.s, align 4, !tbaa !19
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !51   ; 3 uses
  %i.x = load ptr, ptr %i.h, align 8, !tbaa !110
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -4
  %.not.i.i = icmp eq ptr %i.w, %i.y
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %storemerge23, ptr %i.w, align 4, !tbaa !19
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store ptr %i.z, ptr %i.g, align 8, !tbaa !51
  br label %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit

bb.f:                                             ; preds = %bb.d
  call void @_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit

_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit:     ; preds = %bb.f, %bb.e, %bb.b, %bb.c
  %i.aa = load i32, ptr %i.a, align 4, !tbaa !19
  %storemerge = add nsw i32 %i.aa, 1              ; 3 uses
  store i32 %storemerge, ptr %i.a, align 4, !tbaa !19
  %i.ab = icmp slt i32 %storemerge, %4
  br i1 %i.ab, label %bb.b, label %._crit_edge, !llvm.loop !108

._crit_edge27:                                    ; preds = %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit21, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  ret void

bb.g:                                             ; preds = %.lr.ph26, %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit21
  %storemerge1824 = phi i32 [ 0, %.lr.ph26 ], [ %i.ap, %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit21 ] ; 2 uses
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !36
  %i.ad = sext i32 %storemerge1824 to i64         ; 2 uses
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !19
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit21, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ad ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !19
  %i.ai = load i32, ptr %i.l, align 4, !tbaa !19
  %i.aj = icmp eq i32 %i.ah, %i.ai
  br i1 %i.aj, label %bb.i, label %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit21

bb.i:                                             ; preds = %bb.h
  store i32 -1, ptr %i.ag, align 4, !tbaa !19
  %i.ak = load ptr, ptr %i.m, align 8, !tbaa !51  ; 3 uses
  %i.al = load ptr, ptr %i.n, align 8, !tbaa !110
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -4
  %.not.i.i20 = icmp eq ptr %i.ak, %i.am
  br i1 %.not.i.i20, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 %storemerge1824, ptr %i.ak, align 4, !tbaa !19
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  store ptr %i.an, ptr %i.m, align 8, !tbaa !51
  br label %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit21

bb.k:                                             ; preds = %bb.i
  call void @_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  br label %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit21

_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit21:   ; preds = %bb.k, %bb.j, %bb.g, %bb.h
  %i.ao = load i32, ptr %i.b, align 4, !tbaa !19
  %i.ap = add nsw i32 %i.ao, 1                    ; 3 uses
  store i32 %i.ap, ptr %i.b, align 4, !tbaa !19
  %i.aq = icmp slt i32 %i.ap, %3
  br i1 %i.aq, label %bb.g, label %._crit_edge27, !llvm.loop !109
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt5queueIiSt5dequeIiSaIiEEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !48     ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt5dequeIiSaIiEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !43   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !49   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = icmp ult ptr %i.d, %i.f
  br i1 %i.g, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %.06.i.i.i, align 8, !tbaa !36
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef 512) #17
  %i.i = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.j = icmp ult ptr %.06.i.i.i, %i.e
  br i1 %i.j, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i.i, !llvm.loop !1

_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !48
  br label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i.i
end_hunk_2
