Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/SimpleSTRtree?download=true
inline.NumInlined: 707
inline.NumDeleted: 296
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4geos5index7strtree13SimpleSTRtree17createParentNodesERSt6vectorIPNS1_13SimpleSTRnodeESaIS5_EEi:bb.a
bb.a:
  %4 = alloca %"class.std::vector", align 8       ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = load ptr, ptr %2, align 8, !tbaa !42
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 3
  %i.h = uitofp i64 %i.g to double                ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.j = load i64, ptr %i.i, align 8, !tbaa !68
  %i.k = uitofp i64 %i.j to double
  %i.l = fdiv double %i.h, %i.k
  %i.m = tail call double @llvm.ceil.f64(double %i.l)
  %i.n = fptoui double %i.m to i64
  %i.o = uitofp i64 %i.n to double
  %sqrt = tail call double @llvm.sqrt.f64(double %i.o)
  %i.p = tail call double @llvm.ceil.f64(double %sqrt)
  %i.q = fptoui double %i.p to i64                ; 5 uses
  %i.r = uitofp i64 %i.q to double
  %i.s = fdiv double %i.h, %i.r
  %i.t = tail call double @llvm.ceil.f64(double %i.s)
  %i.u = fptoui double %i.t to i64
  %.fr62 = freeze i64 %i.u                        ; 6 uses
  tail call void @_ZN4geos5index7strtree13SimpleSTRtree10sortNodesXERSt6vectorIPNS1_13SimpleSTRnodeESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.w = load ptr, ptr %2, align 8, !tbaa !42
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 3                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.ab = icmp ugt i64 %.fr62, 1152921504606846975
  br i1 %i.ab, label %bb.b, label %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #15
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i: ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 16, i1 false)
  %.not.i.i.i.i = icmp eq i64 %.fr62, 0
  br i1 %.not.i.i.i.i, label %.thread, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i
  %i.ac = shl nuw nsw i64 %.fr62, 3
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #16
          to label %.noexc26 unwind label %bb.f   ; 5 uses

.noexc26:                                         ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.fr62 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !44
  store ptr null, ptr %i.ad, align 8, !tbaa !28
  %i.ag = getelementptr i8, ptr %i.ad, i64 8      ; 3 uses
  %i.ah = add nsw i64 %.fr62, -1                  ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.d, label %_ZSt6fill_nIPPN4geos5index7strtree13SimpleSTRnodeEmS4_ET_S6_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPPN4geos5index7strtree13SimpleSTRnodeEmS4_ET_S6_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc26
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ah, 3  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ag, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !28
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx.i.i.i.i.i.i.i
  br label %bb.d

bb.d:                                             ; preds = %_ZSt6fill_nIPPN4geos5index7strtree13SimpleSTRnodeEmS4_ET_S6_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc26
  %.promoted60 = phi ptr [ %i.aj, %_ZSt6fill_nIPPN4geos5index7strtree13SimpleSTRnodeEmS4_ET_S6_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ag, %.noexc26 ]
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %._crit_edge57.thread110, label %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE5clearEv.exit.lr.ph

.thread:                                          ; preds = %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.not100 = icmp eq i64 %i.q, 0
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i8 0, i64 16, i1 false)
  br i1 %.not100, label %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EED2Ev.exit, label %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE5clearEv.exit.lr.ph.split.us

_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE5clearEv.exit.lr.ph: ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE5clearEv.exit

_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE5clearEv.exit.lr.ph.split.us: ; preds = %.thread
  store ptr null, ptr %4, align 8
  store ptr null, ptr %i.al, align 8
  br label %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE5clearEv.exit.us

_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE5clearEv.exit.us: ; preds = %bb.e, %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE5clearEv.exit.lr.ph.split.us
  %.02156.us = phi i64 [ 0, %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE5clearEv.exit.lr.ph.split.us ], [ %i.ao, %bb.e ]
  invoke void @_ZN4geos5index7strtree13SimpleSTRtree31addParentNodesFromVerticalSliceERSt6vectorIPNS1_13SimpleSTRnodeESaIS5_EEiS8_(ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split.us

bb.e:                                             ; preds = %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE5clearEv.exit.us
  %i.ao = add nuw i64 %.02156.us, 1               ; 2 uses
  %exitcond79.not = icmp eq i64 %i.ao, %i.q
  br i1 %exitcond79.not, label %._crit_edge57, label %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE5clearEv.exit.us, !llvm.loop !75

.loopexit.split-lp.loopexit.split.us:             ; preds = %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE5clearEv.exit.us
  %lpad.loopexit34.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

._crit_edge57:                                    ; preds = %bb.n, %bb.e
  %i.ap = phi ptr [ null, %bb.e ], [ %.lcssa42, %bb.n ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EED2Ev.exit, label %._crit_edge57.thread110

._crit_edge57.thread110:                          ; preds = %bb.d, %._crit_edge57
  %i.aq = phi ptr [ %i.ap, %._crit_edge57 ], [ %i.ad, %bb.d ]
  tail call void @_ZdlPv(ptr noundef nonnull %i.aq) #17
  br label %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EED2Ev.exit

_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EED2Ev.exit: ; preds = %.thread, %._crit_edge57, %._crit_edge57.thread110
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void

bb.f:                                             ; preds = %bb.c, %bb.b
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EED2Ev.exit31

_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE5clearEv.exit: ; preds = %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE5clearEv.exit.lr.ph, %bb.n
  %.promoted49 = phi ptr [ %.promoted4980, %bb.n ], [ %i.ae, %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE5clearEv.exit.lr.ph ] ; 2 uses
  %i.as = phi ptr [ %.lcssa, %bb.n ], [ %.promoted60, %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE5clearEv.exit.lr.ph ] ; 2 uses
  %i.at = phi ptr [ %.lcssa42, %bb.n ], [ %i.ad, %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE5clearEv.exit.lr.ph ] ; 4 uses
  %.02156 = phi i64 [ %i.bz, %bb.n ], [ 0, %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE5clearEv.exit.lr.ph ]
  %.02455 = phi i64 [ %.1.lcssa, %bb.n ], [ 0, %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE5clearEv.exit.lr.ph ] ; 3 uses
  %.not.i.i = icmp eq ptr %i.as, %i.at
  %spec.store.select = select i1 %.not.i.i, ptr %i.as, ptr %i.at ; 2 uses
  %i.au = icmp ult i64 %.02455, %i.aa
  br i1 %i.au, label %.lr.ph, label %bb.m

.lr.ph:                                           ; preds = %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE5clearEv.exit, %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE9push_backERKS4_.exit
  %i.av = phi ptr [ %i.bq, %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE9push_backERKS4_.exit ], [ %.promoted49, %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE5clearEv.exit ] ; 3 uses
  %.046 = phi i64 [ %i.bu, %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE9push_backERKS4_.exit ], [ 0, %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE5clearEv.exit ]
  %.145 = phi i64 [ %i.bt, %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE9push_backERKS4_.exit ], [ %.02455, %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE5clearEv.exit ] ; 2 uses
  %i.aw = phi ptr [ %i.bs, %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE9push_backERKS4_.exit ], [ %spec.store.select, %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE5clearEv.exit ] ; 3 uses
  %i.ax = phi ptr [ %i.br, %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE9push_backERKS4_.exit ], [ %i.at, %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE5clearEv.exit ] ; 7 uses
  %i.ay = load ptr, ptr %2, align 8, !tbaa !42
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.145 ; 2 uses
  %.not.i = icmp eq ptr %i.aw, %i.av
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !28
  store ptr %i.ba, ptr %i.aw, align 8, !tbaa !28
  br label %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE9push_backERKS4_.exit

bb.h:                                             ; preds = %.lr.ph
  %i.bb = ptrtoint ptr %i.av to i64
  %i.bc = ptrtoint ptr %i.ax to i64
  %i.bd = sub i64 %i.bb, %i.bc                    ; 5 uses
  %i.be = icmp eq i64 %i.bd, 9223372036854775800
  br i1 %i.be, label %bb.i, label %_ZNKSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #15
          to label %.noexc28 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc28:                                         ; preds = %bb.i
  unreachable

_ZNKSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.bf = ashr exact i64 %i.bd, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bf, i64 1)
  %i.bg = add nsw i64 %.sroa.speculated.i.i.i, %i.bf ; 2 uses
  %i.bh = icmp ult i64 %i.bg, %i.bf
  %i.bi = tail call i64 @llvm.umin.i64(i64 %i.bg, i64 1152921504606846975)
  %i.bj = select i1 %i.bh, i64 1152921504606846975, i64 %i.bi ; 3 uses
  %.not.i.i.i27 = icmp ne i64 %i.bj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i27)
  %i.bk = shl nuw nsw i64 %i.bj, 3
  %i.bl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #16
          to label %.noexc29 unwind label %.loopexit ; 4 uses

.noexc29:                                         ; preds = %_ZNKSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 %i.bd ; 2 uses
  %i.bn = load ptr, ptr %i.az, align 8, !tbaa !28
  store ptr %i.bn, ptr %i.bm, align 8, !tbaa !28
  %i.bo = icmp sgt i64 %i.bd, 0
  br i1 %i.bo, label %bb.j, label %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

bb.j:                                             ; preds = %.noexc29
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bl, ptr align 8 %i.ax, i64 %i.bd, i1 false)
  br label %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i: ; preds = %bb.j, %.noexc29
  %.not.i17.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.ax) #17
  br label %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bj ; 2 uses
  store ptr %i.bp, ptr %i.an, align 8, !tbaa !44
  br label %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE9push_backERKS4_.exit

_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE9push_backERKS4_.exit: ; preds = %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.g
  %i.bq = phi ptr [ %i.bp, %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %i.av, %bb.g ] ; 2 uses
  %i.br = phi ptr [ %i.bl, %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %i.ax, %bb.g ] ; 2 uses
  %.pn64 = phi ptr [ %i.bm, %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %i.aw, %bb.g ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.pn64, i64 8 ; 2 uses
  %i.bt = add nuw i64 %.145, 1                    ; 3 uses
  %i.bu = add nuw i64 %.046, 1                    ; 2 uses
  %i.bv = icmp ult i64 %i.bt, %i.aa
  %i.bw = icmp ult i64 %i.bu, %.fr62
  %i.bx = select i1 %i.bv, i1 %i.bw, i1 false
  br i1 %i.bx, label %.lr.ph, label %bb.m, !llvm.loop !76

.loopexit:                                        ; preds = %_ZNKSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split:                ; preds = %bb.m
  %lpad.loopexit34 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.i
  %lpad.loopexit.split-lp35 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split.us, %.loopexit.split-lp.loopexit.split, %.loopexit
  %i.by = phi ptr [ %i.ax, %.loopexit ], [ %i.ax, %.loopexit.split-lp.loopexit.split-lp ], [ %.lcssa42, %.loopexit.split-lp.loopexit.split ], [ null, %.loopexit.split-lp.loopexit.split.us ] ; 2 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp35, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit34, %.loopexit.split-lp.loopexit.split ], [ %lpad.loopexit34.us, %.loopexit.split-lp.loopexit.split.us ] ; 2 uses
  %.not.i.i.i30 = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i30, label %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EED2Ev.exit31, label %bb.l

bb.l:                                             ; preds = %.loopexit.split-lp
  tail call void @_ZdlPv(ptr noundef nonnull %i.by) #17
  br label %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EED2Ev.exit31

bb.m:                                             ; preds = %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE9push_backERKS4_.exit, %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE5clearEv.exit
  %.promoted4980 = phi ptr [ %.promoted49, %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE5clearEv.exit ], [ %i.bq, %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE9push_backERKS4_.exit ]
  %.lcssa42 = phi ptr [ %i.at, %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE5clearEv.exit ], [ %i.br, %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE9push_backERKS4_.exit ] ; 4 uses
  %.lcssa = phi ptr [ %spec.store.select, %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE5clearEv.exit ], [ %i.bs, %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE9push_backERKS4_.exit ] ; 2 uses
  %.1.lcssa = phi i64 [ %.02455, %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE5clearEv.exit ], [ %i.bt, %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE9push_backERKS4_.exit ]
  store ptr %.lcssa, ptr %i.ak, align 8
  store ptr %.lcssa42, ptr %4, align 8
  invoke void @_ZN4geos5index7strtree13SimpleSTRtree31addParentNodesFromVerticalSliceERSt6vectorIPNS1_13SimpleSTRnodeESaIS5_EEiS8_(ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split

bb.n:                                             ; preds = %bb.m
  %i.bz = add nuw i64 %.02156, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bz, %i.q
  br i1 %exitcond.not, label %._crit_edge57, label %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE5clearEv.exit, !llvm.loop !75

_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EED2Ev.exit31: ; preds = %bb.l, %.loopexit.split-lp, %bb.f
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.f ], [ %lpad.phi, %.loopexit.split-lp ], [ %lpad.phi, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.ca = load ptr, ptr %0, align 8, !tbaa !42    ; 2 uses
  %.not.i.i.i32 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i32, label %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EED2Ev.exit33, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EED2Ev.exit31
  tail call void @_ZdlPv(ptr noundef nonnull %i.ca) #17
  br label %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EED2Ev.exit33

_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EED2Ev.exit33: ; preds = %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EED2Ev.exit31, %bb.o
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define void @_ZN4geos5index7strtree13SimpleSTRtree31addParentNodesFromVerticalSliceERSt6vectorIPNS1_13SimpleSTRnodeESaIS5_EEiS8_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN4geos5index7strtree13SimpleSTRtree10sortNodesYERSt6vectorIPNS1_13SimpleSTRnodeESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.a = load ptr, ptr %1, align 8, !tbaa !56     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !56   ; 2 uses
  %.not2729 = icmp eq ptr %i.a, %i.c
  br i1 %.not2729, label %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE9push_backERKS4_.exit16, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE9push_backERKS4_.exit
  %.not = icmp eq ptr %.2, null
  br i1 %.not, label %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE9push_backERKS4_.exit16, label %bb.k

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE9push_backERKS4_.exit
  %.sroa.017.031 = phi ptr [ %i.a, %.lr.ph ], [ %i.al, %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE9push_backERKS4_.exit ] ; 2 uses
  %.030 = phi ptr [ null, %.lr.ph ], [ %.2, %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE9push_backERKS4_.exit ] ; 2 uses
  %i.g = load ptr, ptr %.sroa.017.031, align 8, !tbaa !28
  %.not8 = icmp eq ptr %.030, null
  br i1 %.not8, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef ptr @_ZN4geos5index7strtree13SimpleSTRtree10createNodeEi(ptr noundef nonnull align 8 dereferenceable(136) %0, i32 noundef %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi ptr [ %i.h, %bb.c ], [ %.030, %bb.b ] ; 6 uses
  tail call void @_ZN4geos5index7strtree13SimpleSTRnode12addChildNodeEPS2_(ptr noundef nonnull align 8 dereferenceable(96) %.1, ptr noundef %i.g)
  %i.i = getelementptr inbounds nuw i8, ptr %.1, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %.1, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !43
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !42
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 3
  %i.q = load i64, ptr %i.d, align 8, !tbaa !68
  %i.r = icmp eq i64 %i.p, %i.q
  br i1 %i.r, label %bb.e, label %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE9push_backERKS4_.exit

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !43   ; 4 uses
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !44
  %.not.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %.1, ptr %i.s, align 8, !tbaa !28
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.u, ptr %i.e, align 8, !tbaa !43
  br label %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE9push_backERKS4_.exit

bb.g:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %3, align 8, !tbaa !42     ; 4 uses
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x                       ; 5 uses
  %i.z = icmp eq i64 %i.y, 9223372036854775800
  br i1 %i.z, label %bb.h, label %_ZNKSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #15
  unreachable

_ZNKSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.aa = ashr exact i64 %i.y, 3                  ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 1)
  %i.ab = add nsw i64 %.sroa.speculated.i.i.i, %i.aa ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.aa
  %i.ad = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 1152921504606846975)
  %i.ae = select i1 %i.ac, i64 1152921504606846975, i64 %i.ad ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ae, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.af = shl nuw nsw i64 %i.ae, 3
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #16 ; 4 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 %i.y ; 2 uses
  store ptr %.1, ptr %i.ah, align 8, !tbaa !28
  %i.ai = icmp sgt i64 %i.y, 0
  br i1 %i.ai, label %bb.i, label %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ag, ptr align 8 %i.v, i64 %i.y, i1 false)
  br label %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i: ; preds = %bb.i, %_ZNKSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.not.i17.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.v) #17
  br label %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  store ptr %i.ag, ptr %3, align 8, !tbaa !42
  store ptr %i.aj, ptr %i.e, align 8, !tbaa !43
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ae
  store ptr %i.ak, ptr %i.f, align 8, !tbaa !44
  br label %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE9push_backERKS4_.exit

_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE9push_backERKS4_.exit: ; preds = %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.f, %bb.d
  %.2 = phi ptr [ %.1, %bb.d ], [ null, %bb.f ], [ null, %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ] ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.017.031, i64 8 ; 2 uses
  %.not27 = icmp eq ptr %i.al, %i.c
  br i1 %.not27, label %._crit_edge, label %bb.b

bb.k:                                             ; preds = %._crit_edge
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !43 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !44
  %.not.i9 = icmp eq ptr %i.an, %i.ap
  br i1 %.not.i9, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %.2, ptr %i.an, align 8, !tbaa !28
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.aq, ptr %i.am, align 8, !tbaa !43
  br label %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE9push_backERKS4_.exit16

bb.m:                                             ; preds = %bb.k
  %i.ar = load ptr, ptr %3, align 8, !tbaa !42    ; 4 uses
  %i.as = ptrtoint ptr %i.an to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at                    ; 5 uses
  %i.av = icmp eq i64 %i.au, 9223372036854775800
  br i1 %i.av, label %bb.n, label %_ZNKSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i10

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #15
  unreachable

_ZNKSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i10: ; preds = %bb.m
  %i.aw = ashr exact i64 %i.au, 3                 ; 3 uses
  %.sroa.speculated.i.i.i11 = tail call i64 @llvm.umax.i64(i64 %i.aw, i64 1)
  %i.ax = add nsw i64 %.sroa.speculated.i.i.i11, %i.aw ; 2 uses
  %i.ay = icmp ult i64 %i.ax, %i.aw
  %i.az = tail call i64 @llvm.umin.i64(i64 %i.ax, i64 1152921504606846975)
  %i.ba = select i1 %i.ay, i64 1152921504606846975, i64 %i.az ; 3 uses
  %.not.i.i.i12 = icmp ne i64 %i.ba, 0
  tail call void @llvm.assume(i1 %.not.i.i.i12)
  %i.bb = shl nuw nsw i64 %i.ba, 3
  %i.bc = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #16 ; 4 uses
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 %i.au ; 2 uses
  store ptr %.2, ptr %i.bd, align 8, !tbaa !28
  %i.be = icmp sgt i64 %i.au, 0
  br i1 %i.be, label %bb.o, label %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i13

bb.o:                                             ; preds = %_ZNKSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i10
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bc, ptr align 8 %i.ar, i64 %i.au, i1 false)
  br label %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i13

_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i13: ; preds = %bb.o, %_ZNKSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i10
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.not.i17.i.i14 = icmp eq ptr %i.ar, null
  br i1 %.not.i17.i.i14, label %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i15, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i13
  tail call void @_ZdlPv(ptr noundef nonnull %i.ar) #17
  br label %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i15

_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i15: ; preds = %bb.p, %_ZNSt6vectorIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i13
  store ptr %i.bc, ptr %3, align 8, !tbaa !42
  store ptr %i.bf, ptr %i.am, align 8, !tbaa !43
end_hunk_0
