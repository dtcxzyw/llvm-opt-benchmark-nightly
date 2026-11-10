Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/crow/original/example?download=true
inline.NumInlined: 14924
inline.NumDeleted: 5588
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZNK4crow4json6rvalueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  invoke void @__cxa_throw(ptr nonnull %i.ce, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #39
          to label %bb.w unwind label %bb.u

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZN4crow4json6detaileqERKNS1_8r_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  br label %bb.v

bb.u:                                             ; preds = %bb.t, %bb.s
  %.0 = phi i1 [ false, %bb.t ], [ true, %bb.s ]  ; 2 uses
  %i.cg = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ch = load ptr, ptr %2, align 8, !tbaa !113   ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.u
  %i.ck = load i64, ptr %i.ci, align 8, !tbaa !114
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.cl) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  br i1 %.0, label %bb.v, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  br i1 %.0, label %bb.v, label %common.resume

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn22 = phi { ptr, i32 } [ %i.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.ce) #40
  br label %common.resume

bb.w:                                             ; preds = %bb.t
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIPN4crow4json6rvalueElN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS2_ixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4PredEEEvT_SH_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1 ; 3 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 1024
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = icmp eq i64 %2, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph118

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIPN4crow4json6rvalueEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS2_ixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4PredEEET_SH_SH_T0_.exit
  %i.i = icmp eq i64 %i.ct, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph118, !llvm.loop !1783

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.041.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIPN4crow4json6rvalueEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS2_ixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4PredEEEvT_SH_RT0_(ptr noundef %0, ptr noundef %.041.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.lr.ph.i5.i

.lr.ph.i5.i:                                      ; preds = %._crit_edge, %.lr.ph.i5.i
  %.07.i.i = phi ptr [ %i.j, %.lr.ph.i5.i ], [ %.041.lcssa, %._crit_edge ]
  %i.j = getelementptr inbounds i8, ptr %.07.i.i, i64 -64 ; 4 uses
  call void @_ZSt10__pop_heapIPN4crow4json6rvalueEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS2_ixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4PredEEEvT_SH_SH_RT0_(ptr noundef %0, ptr noundef nonnull %i.j, ptr noundef nonnull %i.j, ptr noundef nonnull align 1 dereferenceable(1) %4)
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = sub i64 %i.k, %i.a
  %i.m = icmp sgt i64 %i.l, 64
  br i1 %i.m, label %.lr.ph.i5.i, label %_ZSt14__partial_sortIPN4crow4json6rvalueEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS2_ixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4PredEEEvT_SH_SH_T0_.exit, !llvm.loop !1784

_ZSt14__partial_sortIPN4crow4json6rvalueEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS2_ixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4PredEEEvT_SH_SH_T0_.exit: ; preds = %.lr.ph.i5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.loopexit

.lr.ph118:                                        ; preds = %.lr.ph, %bb.b
  %.01740117 = phi i64 [ %i.ct, %bb.b ], [ %2, %.lr.ph ]
  %.041116 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.n = phi i64 [ %i.cv, %bb.b ], [ %i.c, %.lr.ph ]
  %i.o = lshr i64 %i.n, 7
  %i.p = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %i.o
  %i.q = getelementptr inbounds i8, ptr %.041116, i64 -64
  tail call void @_ZSt22__move_median_to_firstIPN4crow4json6rvalueEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS2_ixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4PredEEEvT_SH_SH_SH_T0_(ptr noundef %0, ptr noundef nonnull %i.e, ptr noundef %i.p, ptr noundef nonnull %i.q)
  br label %bb.c

bb.c:                                             ; preds = %_ZSt4swapIN4crow4json6rvalueEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_.exit, %.lr.ph118
  %.013.i.i = phi ptr [ %.041116, %.lr.ph118 ], [ %.114.i.i, %_ZSt4swapIN4crow4json6rvalueEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_.exit ]
  %.0.i.i = phi ptr [ %i.e, %.lr.ph118 ], [ %i.cs, %_ZSt4swapIN4crow4json6rvalueEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_.exit ]
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !599  ; 7 uses
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !600  ; 3 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.v = sub i64 %i.t, %i.u                       ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4crow4json6rvalueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4PredEclIPS4_SG_EEbT_T0_.exit.thread.i.i, %bb.c
  %.1.i.i = phi ptr [ %.0.i.i, %bb.c ], [ %i.ao, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4crow4json6rvalueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4PredEclIPS4_SG_EEbT_T0_.exit.thread.i.i ] ; 20 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !599  ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !600  ; 3 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64                ; 2 uses
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = icmp slt i64 %i.v, %i.ac
  %i.ae = getelementptr inbounds i8, ptr %i.x, i64 %i.v
  %i.af = select i1 %i.ad, ptr %i.ae, ptr %i.z    ; 3 uses
  %.not22.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.x, %i.af
  br i1 %.not22.i.i.i.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.d
  %i.ag = ptrtoaddr ptr %i.af to i64
  %i.ah = sub i64 %i.ag, %i.ab
  %scevgep.i.i.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.r, i64 %i.ah
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.f, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i
  %.01924.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.an, %bb.f ], [ %i.r, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.02023.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.am, %bb.f ], [ %i.x, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ai = load i8, ptr %.02023.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !114 ; 2 uses
  %i.aj = load i8, ptr %.01924.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !114 ; 2 uses
  %i.ak = icmp slt i8 %i.ai, %i.aj
  br i1 %i.ak, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4crow4json6rvalueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4PredEclIPS4_SG_EEbT_T0_.exit.thread.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.al = icmp slt i8 %i.aj, %i.ai
  br i1 %i.al, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4crow4json6rvalueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4PredEclIPS4_SG_EEbT_T0_.exit.preheader.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i.i.i.i, i64 1 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i.i.i.i, i64 1
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.am, %i.af
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !35

.critedge.i.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.f, %bb.d
  %.019.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.r, %bb.d ], [ %scevgep.i.i.i.i.i.i.i.i.i.i, %bb.f ]
  %.not.i.i = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i.i.i.i, %i.s
  br i1 %.not.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4crow4json6rvalueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4PredEclIPS4_SG_EEbT_T0_.exit.preheader.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4crow4json6rvalueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4PredEclIPS4_SG_EEbT_T0_.exit.thread.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4crow4json6rvalueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4PredEclIPS4_SG_EEbT_T0_.exit.thread.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.critedge.i.i.i.i.i.i.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 64
  br label %bb.d, !llvm.loop !1785

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4crow4json6rvalueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4PredEclIPS4_SG_EEbT_T0_.exit.preheader.i.i: ; preds = %.critedge.i.i.i.i.i.i.i.i.i.i, %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 24
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4crow4json6rvalueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4PredEclIPS4_SG_EEbT_T0_.exit.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4crow4json6rvalueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4PredEclIPS4_SG_EEbT_T0_.exit.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4crow4json6rvalueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4PredEclIPS4_SG_EEbT_T0_.exit.backedge.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4crow4json6rvalueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4PredEclIPS4_SG_EEbT_T0_.exit.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.013.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4crow4json6rvalueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4PredEclIPS4_SG_EEbT_T0_.exit.preheader.i.i ], [ %.114.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4crow4json6rvalueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4PredEclIPS4_SG_EEbT_T0_.exit.backedge.i.i ] ; 12 uses
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -64 ; 5 uses
  %i.ar = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -48
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !599 ; 5 uses
  %i.at = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !600 ; 3 uses
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = sub i64 %i.av, %i.aw                    ; 2 uses
  %i.ay = icmp slt i64 %i.ax, %i.v
  %i.az = getelementptr inbounds i8, ptr %i.r, i64 %i.ax
  %i.ba = select i1 %i.ay, ptr %i.az, ptr %i.s    ; 3 uses
  %.not22.i.i.i.i.i.i.i.i15.i.i = icmp eq ptr %i.r, %i.ba
  br i1 %.not22.i.i.i.i.i.i.i.i15.i.i, label %.critedge.i.i.i.i.i.i.i.i22.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i16.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i16.i.i:           ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4crow4json6rvalueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4PredEclIPS4_SG_EEbT_T0_.exit.i.i
  %i.bb = ptrtoaddr ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.u
  %scevgep.i.i.i.i.i.i.i.i17.i.i = getelementptr i8, ptr %i.as, i64 %i.bc
  br label %.lr.ph.i.i.i.i.i.i.i.i18.i.i

.lr.ph.i.i.i.i.i.i.i.i18.i.i:                     ; preds = %bb.h, %.lr.ph.preheader.i.i.i.i.i.i.i.i16.i.i
  %.01924.i.i.i.i.i.i.i.i19.i.i = phi ptr [ %i.bi, %bb.h ], [ %i.as, %.lr.ph.preheader.i.i.i.i.i.i.i.i16.i.i ] ; 2 uses
  %.02023.i.i.i.i.i.i.i.i20.i.i = phi ptr [ %i.bh, %bb.h ], [ %i.r, %.lr.ph.preheader.i.i.i.i.i.i.i.i16.i.i ] ; 2 uses
  %i.bd = load i8, ptr %.02023.i.i.i.i.i.i.i.i20.i.i, align 1, !tbaa !114 ; 2 uses
  %i.be = load i8, ptr %.01924.i.i.i.i.i.i.i.i19.i.i, align 1, !tbaa !114 ; 2 uses
  %i.bf = icmp slt i8 %i.bd, %i.be
  br i1 %i.bf, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4crow4json6rvalueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4PredEclIPS4_SG_EEbT_T0_.exit.backedge.i.i, label %bb.g, !llvm.loop !1786

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i18.i.i
  %i.bg = icmp slt i8 %i.be, %i.bd
  br i1 %i.bg, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4crow4json6rvalueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4PredEclIPS4_SG_EEbT_T0_.exit25.thread.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i.i20.i.i, i64 1 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i.i19.i.i, i64 1
  %.not.i.i.i.i.i.i.i.i21.i.i = icmp eq ptr %i.bh, %i.ba
  br i1 %.not.i.i.i.i.i.i.i.i21.i.i, label %.critedge.i.i.i.i.i.i.i.i22.i.i, label %.lr.ph.i.i.i.i.i.i.i.i18.i.i, !llvm.loop !35

.critedge.i.i.i.i.i.i.i.i22.i.i:                  ; preds = %bb.h, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4crow4json6rvalueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4PredEclIPS4_SG_EEbT_T0_.exit.i.i
  %.019.lcssa.i.i.i.i.i.i.i.i23.i.i = phi ptr [ %i.as, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4crow4json6rvalueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4PredEclIPS4_SG_EEbT_T0_.exit.i.i ], [ %scevgep.i.i.i.i.i.i.i.i17.i.i, %bb.h ]
  %.not28.i.i = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i.i23.i.i, %i.au
  br i1 %.not28.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4crow4json6rvalueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4PredEclIPS4_SG_EEbT_T0_.exit25.thread.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4crow4json6rvalueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4PredEclIPS4_SG_EEbT_T0_.exit.backedge.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4crow4json6rvalueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4PredEclIPS4_SG_EEbT_T0_.exit.backedge.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i18.i.i, %.critedge.i.i.i.i.i.i.i.i22.i.i
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4crow4json6rvalueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4PredEclIPS4_SG_EEbT_T0_.exit.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4crow4json6rvalueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4PredEclIPS4_SG_EEbT_T0_.exit25.thread.i.i: ; preds = %.critedge.i.i.i.i.i.i.i.i22.i.i, %bb.g
  %i.bj = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -48
  %i.bk = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -40
  %i.bl = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.bl, label %bb.i, label %_ZSt27__unguarded_partition_pivotIPN4crow4json6rvalueEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS2_ixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4PredEEET_SH_SH_T0_.exit

bb.i:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4crow4json6rvalueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4PredEclIPS4_SG_EEbT_T0_.exit25.thread.i.i
  %i.bm = load <2 x ptr>, ptr %.1.i.i, align 8, !tbaa !481
  %i.bn = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 32 ; 3 uses
  %i.bo = load i8, ptr %i.bn, align 8, !tbaa !601 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.bo, 0
  br i1 %.not.i.i.i.i, label %_ZN4crow4json6rvalueC2EOS1_.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 0, ptr %i.bn, align 8, !tbaa !601
  br label %_ZN4crow4json6rvalueC2EOS1_.exit.i

_ZN4crow4json6rvalueC2EOS1_.exit.i:               ; preds = %bb.j, %bb.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 40 ; 5 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !602
  store ptr null, ptr %i.bp, align 8, !tbaa !602
  %i.br = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 48 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !608
  %i.bt = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 52 ; 2 uses
  %i.bu = load i16, ptr %i.bt, align 4, !tbaa !609
  %i.bv = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 54 ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 2, !tbaa !604
  %i.bx = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 55 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !610
  %i.bz = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 56 ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 8, !tbaa !598
  %i.cb = load <2 x ptr>, ptr %.114.i.i, align 8, !tbaa !481
  store <2 x ptr> %i.cb, ptr %.1.i.i, align 8, !tbaa !481
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !599
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !600
  %i.cc = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -32 ; 3 uses
  %i.cd = load i8, ptr %i.cc, align 8, !tbaa !601 ; 2 uses
  store i8 %i.cd, ptr %i.bn, align 8, !tbaa !601
  %.not.i.i.i = icmp eq i8 %i.cd, 0
  br i1 %.not.i.i.i, label %_ZN4crow4json6detail8r_stringaSEOS2_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZN4crow4json6rvalueC2EOS1_.exit.i
  store i8 0, ptr %i.cc, align 8, !tbaa !601
  br label %_ZN4crow4json6detail8r_stringaSEOS2_.exit.i.i

_ZN4crow4json6detail8r_stringaSEOS2_.exit.i.i:    ; preds = %bb.k, %_ZN4crow4json6rvalueC2EOS1_.exit.i
  %i.ce = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -24 ; 5 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !602
  store ptr null, ptr %i.ce, align 8, !tbaa !602
  %i.cg = load ptr, ptr %i.bp, align 8, !tbaa !602 ; 2 uses
  store ptr %i.cf, ptr %i.bp, align 8, !tbaa !602
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4crow4json6rvalueaSEOS1_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZN4crow4json6detail8r_stringaSEOS2_.exit.i.i
  tail call void @_ZNKSt14default_deleteIA_N4crow4json6rvalueEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef nonnull %i.cg)
  br label %_ZN4crow4json6rvalueaSEOS1_.exit.i

_ZN4crow4json6rvalueaSEOS1_.exit.i:               ; preds = %bb.l, %_ZN4crow4json6detail8r_stringaSEOS2_.exit.i.i
  %i.ch = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -16 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !608
  store i32 %i.ci, ptr %i.br, align 8, !tbaa !608
  %i.cj = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -12 ; 2 uses
  %i.ck = load i16, ptr %i.cj, align 4, !tbaa !609
  store i16 %i.ck, ptr %i.bt, align 4, !tbaa !609
  %i.cl = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -10 ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 2, !tbaa !604
  store i8 %i.cm, ptr %i.bv, align 2, !tbaa !604
  %i.cn = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -9 ; 2 uses
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !610
  store i8 %i.co, ptr %i.bx, align 1, !tbaa !610
  %i.cp = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -8 ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 8, !tbaa !598
  store i8 %i.cq, ptr %i.bz, align 8, !tbaa !598
  store <2 x ptr> %i.bm, ptr %.114.i.i, align 8, !tbaa !481
  store ptr %i.x, ptr %i.bj, align 8, !tbaa !599
  store ptr %i.z, ptr %i.bk, align 8, !tbaa !600
  store i8 %i.bo, ptr %i.cc, align 8, !tbaa !601
  %i.cr = load ptr, ptr %i.ce, align 8, !tbaa !602 ; 2 uses
  store ptr %i.bq, ptr %i.ce, align 8, !tbaa !602
  %.not.i.i.i.i.i6.i = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i.i.i6.i, label %_ZSt4swapIN4crow4json6rvalueEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4crow4json6rvalueaSEOS1_.exit.i
  tail call void @_ZNKSt14default_deleteIA_N4crow4json6rvalueEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr noundef nonnull %i.cr)
  br label %_ZSt4swapIN4crow4json6rvalueEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_.exit

_ZSt4swapIN4crow4json6rvalueEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_.exit: ; preds = %_ZN4crow4json6rvalueaSEOS1_.exit.i, %bb.m
  store i32 %i.bs, ptr %i.ch, align 8, !tbaa !608
  store i16 %i.bu, ptr %i.cj, align 4, !tbaa !609
  store i8 %i.bw, ptr %i.cl, align 2, !tbaa !604
  store i8 %i.by, ptr %i.cn, align 1, !tbaa !610
  store i8 %i.ca, ptr %i.cp, align 8, !tbaa !598
  %i.cs = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 64
  br label %bb.c, !llvm.loop !1787

_ZSt27__unguarded_partition_pivotIPN4crow4json6rvalueEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS2_ixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4PredEEET_SH_SH_T0_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4crow4json6rvalueixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4PredEclIPS4_SG_EEbT_T0_.exit25.thread.i.i
  %i.ct = add nsw i64 %.01740117, -1              ; 3 uses
  tail call void @_ZSt16__introsort_loopIPN4crow4json6rvalueElN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS2_ixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4PredEEEvT_SH_T0_T1_(ptr noundef %.1.i.i, ptr noundef %.041116, i64 noundef %i.ct)
  %i.cu = ptrtoint ptr %.1.i.i to i64
  %i.cv = sub i64 %i.cu, %i.a                     ; 2 uses
  %i.cw = icmp sgt i64 %i.cv, 1024
  br i1 %i.cw, label %bb.b, label %.loopexit, !llvm.loop !1783

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotIPN4crow4json6rvalueEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS2_ixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4PredEEET_SH_SH_T0_.exit, %bb.a, %_ZSt14__partial_sortIPN4crow4json6rvalueEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS2_ixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4PredEEEvT_SH_SH_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIPN4crow4json6rvalueEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS2_ixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4PredEEEvT_SH_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.crow::json::rvalue", align 8 ; 15 uses
  %4 = alloca %"class.crow::json::rvalue", align 8 ; 13 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 6                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2
  %i.g = lshr i64 %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 55
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 54
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 55
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 54
  br label %bb.c

bb.c:                                             ; preds = %_ZN4crow4json6rvalueD2Ev.exit24, %bb.b
  %.015 = phi i64 [ %i.g, %bb.b ], [ %i.bb, %_ZN4crow4json6rvalueD2Ev.exit24 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  %i.ab = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %.015 ; 11 uses
  store ptr null, ptr %i.j, align 8, !tbaa !607
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !605 ; 2 uses
  store ptr %i.ac, ptr %3, align 8, !tbaa !605
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !606 ; 2 uses
  store ptr %i.ae, ptr %i.m, align 8, !tbaa !606
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !599 ; 2 uses
  store ptr %i.ag, ptr %i.h, align 8, !tbaa !599
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !600 ; 2 uses
  store ptr %i.ai, ptr %i.n, align 8, !tbaa !600
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 32 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !601 ; 3 uses
  store i8 %i.ak, ptr %i.i, align 8, !tbaa !601
  %.not.i.i.i = icmp eq i8 %i.ak, 0               ; 2 uses
  br i1 %.not.i.i.i, label %_ZN4crow4json6rvalueC2EOS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.aj, align 8, !tbaa !601
  br label %_ZN4crow4json6rvalueC2EOS1_.exit

_ZN4crow4json6rvalueC2EOS1_.exit:                 ; preds = %bb.c, %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 40 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !602
  store ptr null, ptr %i.al, align 8, !tbaa !602
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !608 ; 2 uses
  store i32 %i.ao, ptr %i.o, align 8, !tbaa !608
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 52
  %i.aq = load i16, ptr %i.ap, align 4, !tbaa !609 ; 2 uses
  store i16 %i.aq, ptr %i.p, align 4, !tbaa !609
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ab, i64 54
  %i.as = load i8, ptr %i.ar, align 2, !tbaa !604 ; 2 uses
  store i8 %i.as, ptr %i.q, align 2, !tbaa !604
  %i.at = getelementptr inbounds nuw i8, ptr %i.ab, i64 55
  %i.au = load i8, ptr %i.at, align 1, !tbaa !610 ; 2 uses
  store i8 %i.au, ptr %i.k, align 1, !tbaa !610
  %i.av = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !598 ; 2 uses
  store i8 %i.aw, ptr %i.l, align 8, !tbaa !598
  store ptr %i.ac, ptr %4, align 8, !tbaa !605
  store ptr %i.ae, ptr %i.w, align 8, !tbaa !606
  store ptr %i.ag, ptr %i.r, align 8, !tbaa !599
  store ptr %i.ai, ptr %i.x, align 8, !tbaa !600
  store i8 %i.ak, ptr %i.s, align 8, !tbaa !601
  br i1 %.not.i.i.i, label %_ZN4crow4json6rvalueC2EOS1_.exit20, label %bb.e

bb.e:                                             ; preds = %_ZN4crow4json6rvalueC2EOS1_.exit
  store i8 0, ptr %i.i, align 8, !tbaa !601
end_hunk_0
