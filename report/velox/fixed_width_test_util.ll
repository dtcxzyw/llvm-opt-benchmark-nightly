Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/fixed_width_test_util?download=true
inline.NumInlined: 482
inline.NumDeleted: 245
begin_hunk_0_@_ZN5arrow4util8internal19NestedListGenerator15NestedListArrayERKSt10shared_ptrINS_8DataTypeEERKSt6vectorIiSaIiEEl:bb.a
bb.k:                                             ; preds = %.noexc
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #17
  %i.ad = load ptr, ptr %4, align 8, !tbaa !44, !noalias !121
  %.not.i11.i = icmp eq ptr %i.ad, null
  br i1 %.not.i11.i, label %bb.m, label %bb.l, !prof !45

bb.l:                                             ; preds = %bb.k
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
  br label %bb.m

_ZN5arrow6StatusD2Ev.exit14.i:                    ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17, !noalias !121
  %i.ae = add nuw nsw i64 %.0816.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ae, %3
  br i1 %exitcond.not.i, label %.critedge10.i, label %_ZN5arrow6StatusD2Ev.exit.i14, !llvm.loop !3

.critedge10.i:                                    ; preds = %_ZN5arrow6StatusD2Ev.exit14.i, %bb.j
  invoke void @_ZN5arrow12ArrayBuilder6FinishEv(ptr dead_on_unwind writable sret(%"class.arrow::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(144) %i.z)
          to label %.thread22 unwind label %.thread24

.thread24:                                        ; preds = %.critedge10.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN5arrow12ArrayBuilderEEclEPS1_.exit.i17

.thread22:                                        ; preds = %.critedge10.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17, !noalias !121
  br label %_ZNKSt14default_deleteIN5arrow12ArrayBuilderEEclEPS1_.exit.i

bb.m:                                             ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17, !noalias !121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17, !noalias !121
  %.not.i = icmp eq i64 %i.x, 0
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5arrow12ArrayBuilderESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow12ArrayBuilderEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5arrow12ArrayBuilderEEclEPS1_.exit.i: ; preds = %.thread22, %bb.m
  %i.ag = load ptr, ptr %i.z, align 8, !tbaa !33
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(144) %i.z) #17, !inline_history !4
  br label %_ZNSt10unique_ptrIN5arrow12ArrayBuilderESt14default_deleteIS1_EED2Ev.exit

bb.n:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i14
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i16 = icmp eq i64 %i.x, 0
  br i1 %.not.i16, label %_ZNSt10unique_ptrIN5arrow12ArrayBuilderESt14default_deleteIS1_EED2Ev.exit18, label %_ZNKSt14default_deleteIN5arrow12ArrayBuilderEEclEPS1_.exit.i17

_ZNKSt14default_deleteIN5arrow12ArrayBuilderEEclEPS1_.exit.i17: ; preds = %.thread24, %bb.n
  %i.ak = phi { ptr, i32 } [ %i.af, %.thread24 ], [ %i.aj, %bb.n ]
  %i.al = load ptr, ptr %i.z, align 8, !tbaa !33
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(144) %i.z) #17, !inline_history !4
  br label %_ZNSt10unique_ptrIN5arrow12ArrayBuilderESt14default_deleteIS1_EED2Ev.exit18

_ZNSt10unique_ptrIN5arrow12ArrayBuilderESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN5arrow12ArrayBuilderEEclEPS1_.exit.i, %bb.m, %bb.h
  %i.ao = load ptr, ptr %10, align 8, !tbaa !44
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.o, label %_ZN5arrow6ResultISt10unique_ptrINS_12ArrayBuilderESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !45

bb.o:                                             ; preds = %_ZNSt10unique_ptrIN5arrow12ArrayBuilderESt14default_deleteIS1_EED2Ev.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !46 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6ResultISt10unique_ptrINS_12ArrayBuilderESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_12ArrayBuilderESt14default_deleteIS2_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_12ArrayBuilderESt14default_deleteIS2_EEE7DestroyEv.exit.i: ; preds = %bb.o
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !33
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(144) %i.ar) #17, !inline_history !5
  %.pr.pre.i = load ptr, ptr %10, align 8, !tbaa !44
  %i.av = icmp eq ptr %.pr.pre.i, null
  br i1 %i.av, label %_ZN5arrow6ResultISt10unique_ptrINS_12ArrayBuilderESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_12ArrayBuilderESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !52

_ZN5arrow6ResultISt10unique_ptrINS_12ArrayBuilderESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_12ArrayBuilderESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZNSt10unique_ptrIN5arrow12ArrayBuilderESt14default_deleteIS1_EED2Ev.exit
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %10)
  br label %_ZN5arrow6ResultISt10unique_ptrINS_12ArrayBuilderESt14default_deleteIS2_EEED2Ev.exit

_ZN5arrow6ResultISt10unique_ptrINS_12ArrayBuilderESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.o, %_ZN5arrow6ResultISt10unique_ptrINS_12ArrayBuilderESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10unique_ptrINS_12ArrayBuilderESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !23 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_12ArrayBuilderESt14default_deleteIS2_EEED2Ev.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 4 uses
  %i.az = load atomic i64, ptr %i.ay acquire, align 8 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 4294967297
  %i.bb = trunc i64 %i.az to i32                  ; 2 uses
  br i1 %i.ba, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.ay, align 8, !tbaa !30
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  store i32 0, ptr %i.bc, align 4, !tbaa !31
  %i.bd = load ptr, ptr %i.ax, align 8, !tbaa !33
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #17, !inline_history !1
  %i.bg = load ptr, ptr %i.ax, align 8, !tbaa !33
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #17, !inline_history !1
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.r:                                             ; preds = %bb.p
  %i.bj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i = icmp eq i8 %i.bj, 0
  br i1 %.not.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bk = add nsw i32 %i.bb, -1
  store i32 %i.bk, ptr %i.ay, align 8, !tbaa !26
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.bl = atomicrmw volatile add ptr %i.ay, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i = phi i32 [ %i.bb, %bb.s ], [ %i.bl, %bb.t ]
  %i.bm = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bm, label %bb.u, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !34

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #17
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_12ArrayBuilderESt14default_deleteIS2_EEED2Ev.exit, %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  ret void

_ZNSt10unique_ptrIN5arrow12ArrayBuilderESt14default_deleteIS1_EED2Ev.exit18: ; preds = %bb.n, %_ZNKSt14default_deleteIN5arrow12ArrayBuilderEEclEPS1_.exit.i17
  %.pn.pn = phi { ptr, i32 } [ %i.ak, %_ZNKSt14default_deleteIN5arrow12ArrayBuilderEEclEPS1_.exit.i17 ], [ %i.aj, %bb.n ]
  call void @_ZN5arrow6ResultISt10unique_ptrINS_12ArrayBuilderESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %.body

.body:                                            ; preds = %bb.i, %_ZNSt10unique_ptrIN5arrow12ArrayBuilderESt14default_deleteIS1_EED2Ev.exit.i, %_ZNSt10unique_ptrIN5arrow12ArrayBuilderESt14default_deleteIS1_EED2Ev.exit18
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt10unique_ptrIN5arrow12ArrayBuilderESt14default_deleteIS1_EED2Ev.exit18 ], [ %i.w, %bb.i ], [ %i.m, %_ZNSt10unique_ptrIN5arrow12ArrayBuilderESt14default_deleteIS1_EED2Ev.exit.i ]
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow4util8internal19NestedListGenerator32VisitAllNestedListConfigurationsERKSt6vectorISt10shared_ptrINS_8DataTypeEESaIS6_EERKSt8functionIFvRKS6_RKS3_IiSaIiEEEEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !129 {
bb.a:
  %4 = alloca %"class.std::vector", align 8       ; 11 uses
  %.not65 = icmp slt i32 %2, 1
  br i1 %.not65, label %._crit_edge69, label %.lr.ph68

.lr.ph68:                                         ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %0, align 8, !tbaa !131
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !131
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %._crit_edge69, label %.lr.ph68.split.preheader

.lr.ph68.split.preheader:                         ; preds = %.lr.ph68
  %i.i = add nuw i32 %2, 1
  %wide.trip.count = zext i32 %i.i to i64
  br label %.lr.ph68.split

._crit_edge69:                                    ; preds = %._crit_edge, %.lr.ph68, %bb.a
  ret void

.lr.ph68.split:                                   ; preds = %.lr.ph68.split.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 1, %.lr.ph68.split.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !131    ; 2 uses
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !131  ; 2 uses
  %.not5063 = icmp eq ptr %i.j, %i.k
  br i1 %.not5063, label %._crit_edge, label %.lr.ph.i

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit35, %.lr.ph68.split
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge69, label %.lr.ph68.split, !llvm.loop !124

.lr.ph.i:                                         ; preds = %.lr.ph68.split, %_ZNSt6vectorIiSaIiEED2Ev.exit35
  %.sroa.040.064 = phi ptr [ %i.cy, %_ZNSt6vectorIiSaIiEED2Ev.exit35 ], [ %i.j, %.lr.ph68.split ] ; 3 uses
  %i.l = load ptr, ptr %.sroa.040.064, align 8, !tbaa !38 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !33
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = call noundef i32 %i.o(ptr noundef nonnull align 8 dereferenceable(72) %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i, %.lr.ph.i
  %i.q = phi ptr [ null, %.lr.ph.i ], [ %i.ai, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i ] ; 4 uses
  %i.r = phi ptr [ null, %.lr.ph.i ], [ %i.ak, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i ] ; 2 uses
  %i.s = phi i64 [ 0, %.lr.ph.i ], [ %i.ao, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i ] ; 3 uses
  %i.t = phi i64 [ 0, %.lr.ph.i ], [ %i.an, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i ] ; 4 uses
  %i.u = phi i64 [ 0, %.lr.ph.i ], [ %i.am, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i ]
  %i.v = phi ptr [ null, %.lr.ph.i ], [ %i.aj, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.v, %i.r
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %i.v, align 4, !tbaa !26
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4 ; 2 uses
  store ptr %i.w, ptr %i.b, align 8, !tbaa !65
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i

bb.d:                                             ; preds = %bb.b
  %i.x = icmp eq i64 %i.t, 9223372036854775804
  br i1 %i.x, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.d
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.y = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.s ; 2 uses
  %5 = icmp ult i64 %i.y, %i.s
  %6 = call i64 @llvm.umin.i64(i64 %i.y, i64 2305843009213693951)
  %7 = select i1 %5, i64 2305843009213693951, i64 %6 ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %7, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.z = shl nuw nsw i64 %7, 2
  %i.aa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #18
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc17:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %i.t ; 2 uses
  store i32 1, ptr %i.ab, align 4, !tbaa !26
  %i.ac = icmp sgt i64 %i.t, 0
  br i1 %i.ac, label %bb.e, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i

bb.e:                                             ; preds = %.noexc17
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aa, ptr align 4 %i.q, i64 %i.t, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.e, %.noexc17
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 2 uses
  %.not.i17.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i
  %i.ae = load ptr, ptr %i.c, align 8, !tbaa !133
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.af, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.ag) #19
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i: ; preds = %bb.f, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i
  store ptr %i.aa, ptr %4, align 8, !tbaa !51
  store ptr %i.ad, ptr %i.b, align 8, !tbaa !65
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %7 ; 2 uses
  store ptr %i.ah, ptr %i.c, align 8, !tbaa !133
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i

_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i:         ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i, %bb.c
  %i.ai = phi ptr [ %i.q, %bb.c ], [ %i.aa, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i ] ; 2 uses
  %i.aj = phi ptr [ %i.w, %bb.c ], [ %i.ad, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i ] ; 2 uses
  %i.ak = phi ptr [ %i.r, %bb.c ], [ %i.ah, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i ]
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.an = sub i64 %i.al, %i.am                    ; 2 uses
  %i.ao = ashr exact i64 %i.an, 2                 ; 2 uses
  %i.ap = icmp ult i64 %i.ao, %indvars.iv
  br i1 %i.ap, label %bb.b, label %"_ZZN5arrow4util8internal19NestedListGenerator32VisitAllNestedListConfigurationsERKSt6vectorISt10shared_ptrINS_8DataTypeEESaIS6_EERKSt8functionIFvRKS6_RKS3_IiSaIiEEEEiiENK3$_2clEv.exit", !llvm.loop !125

"_ZZN5arrow4util8internal19NestedListGenerator32VisitAllNestedListConfigurationsERKSt6vectorISt10shared_ptrINS_8DataTypeEESaIS6_EERKSt8functionIFvRKS6_RKS3_IiSaIiEEEEiiENK3$_2clEv.exit": ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i, %"_ZZN5arrow4util8internal19NestedListGenerator32VisitAllNestedListConfigurationsERKSt6vectorISt10shared_ptrINS_8DataTypeEESaIS6_EERKSt8functionIFvRKS6_RKS3_IiSaIiEEEEiiENK3$_2clEv.exit32"
  %.0 = phi i32 [ %i.aw, %"_ZZN5arrow4util8internal19NestedListGenerator32VisitAllNestedListConfigurationsERKSt6vectorISt10shared_ptrINS_8DataTypeEESaIS6_EERKSt8functionIFvRKS6_RKS3_IiSaIiEEEEiiENK3$_2clEv.exit32" ], [ %i.p, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i ]
  %i.aq = load ptr, ptr %i.d, align 8, !tbaa !135
  %.not.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %"_ZZN5arrow4util8internal19NestedListGenerator32VisitAllNestedListConfigurationsERKSt6vectorISt10shared_ptrINS_8DataTypeEESaIS6_EERKSt8functionIFvRKS6_RKS3_IiSaIiEEEEiiENK3$_2clEv.exit"
  invoke void @_ZSt25__throw_bad_function_callv() #21
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc18:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %"_ZZN5arrow4util8internal19NestedListGenerator32VisitAllNestedListConfigurationsERKSt6vectorISt10shared_ptrINS_8DataTypeEESaIS6_EERKSt8functionIFvRKS6_RKS3_IiSaIiEEEEiiENK3$_2clEv.exit"
  %i.ar = load ptr, ptr %i.e, align 8, !tbaa !137
  invoke void %i.ar(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.040.064, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZNKSt8functionIFvRKSt10shared_ptrIN5arrow8DataTypeEERKSt6vectorIiSaIiEEEEclES5_SA_.exit.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !126

_ZNKSt8functionIFvRKSt10shared_ptrIN5arrow8DataTypeEERKSt6vectorIiSaIiEEEEclES5_SA_.exit.preheader: ; preds = %bb.h
  %i.as = load ptr, ptr %4, align 8, !tbaa !28    ; 8 uses
  %i.at = load ptr, ptr %i.b, align 8, !tbaa !28  ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNKSt8functionIFvRKSt10shared_ptrIN5arrow8DataTypeEERKSt6vectorIiSaIiEEEEclES5_SA_.exit.preheader, %_ZNKSt8functionIFvRKSt10shared_ptrIN5arrow8DataTypeEERKSt6vectorIiSaIiEEEEclES5_SA_.exit
  %i.av = phi ptr [ %i.ax, %_ZNKSt8functionIFvRKSt10shared_ptrIN5arrow8DataTypeEERKSt6vectorIiSaIiEEEEclES5_SA_.exit ], [ %i.at, %_ZNKSt8functionIFvRKSt10shared_ptrIN5arrow8DataTypeEERKSt6vectorIiSaIiEEEEclES5_SA_.exit.preheader ] ; 4 uses
  %.161 = phi i32 [ %i.cn, %_ZNKSt8functionIFvRKSt10shared_ptrIN5arrow8DataTypeEERKSt6vectorIiSaIiEEEEclES5_SA_.exit ], [ %.0, %_ZNKSt8functionIFvRKSt10shared_ptrIN5arrow8DataTypeEERKSt6vectorIiSaIiEEEEclES5_SA_.exit.preheader ]
  %i.aw = shl nsw i32 %.161, 1                    ; 3 uses
  %i.ax = getelementptr inbounds i8, ptr %i.av, i64 -4 ; 5 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !26
  %i.az = shl nsw i32 %i.ay, 1                    ; 2 uses
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !26
  %.not9 = icmp sgt i32 %i.aw, %3
  br i1 %.not9, label %_ZNKSt8functionIFvRKSt10shared_ptrIN5arrow8DataTypeEERKSt6vectorIiSaIiEEEEclES5_SA_.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.ba = ptrtoint ptr %i.av to i64
  %i.bb = ptrtoint ptr %i.as to i64               ; 2 uses
  %i.bc = sub i64 %i.ba, %i.bb                    ; 2 uses
  %i.bd = ashr exact i64 %i.bc, 2                 ; 2 uses
  %i.be = icmp ult i64 %i.bd, %indvars.iv
  br i1 %i.be, label %.lr.ph.i20, label %"_ZZN5arrow4util8internal19NestedListGenerator32VisitAllNestedListConfigurationsERKSt6vectorISt10shared_ptrINS_8DataTypeEESaIS6_EERKSt8functionIFvRKS6_RKS3_IiSaIiEEEEiiENK3$_2clEv.exit32"

.lr.ph.i20:                                       ; preds = %bb.i
  %.pre.i21 = load ptr, ptr %i.c, align 8, !tbaa !133
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i23, %.lr.ph.i20
  %i.bf = phi ptr [ %i.as, %.lr.ph.i20 ], [ %i.ca, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i23 ] ; 4 uses
  %i.bg = phi ptr [ %.pre.i21, %.lr.ph.i20 ], [ %i.cc, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i23 ] ; 2 uses
  %i.bh = phi i64 [ %i.bd, %.lr.ph.i20 ], [ %i.cg, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i23 ] ; 3 uses
  %i.bi = phi i64 [ %i.bc, %.lr.ph.i20 ], [ %i.cf, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i23 ] ; 4 uses
  %i.bj = phi i64 [ %i.bb, %.lr.ph.i20 ], [ %i.ce, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i23 ]
  %i.bk = phi ptr [ %i.av, %.lr.ph.i20 ], [ %i.cb, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i23 ] ; 3 uses
  %.not.i.i.i22 = icmp eq ptr %i.bk, %i.bg
  br i1 %.not.i.i.i22, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 1, ptr %i.bk, align 4, !tbaa !26
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4 ; 2 uses
  store ptr %i.bl, ptr %i.b, align 8, !tbaa !65
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i23

bb.l:                                             ; preds = %bb.j
  %i.bm = icmp eq i64 %i.bi, 9223372036854775804
  br i1 %i.bm, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i24

.invoke:                                          ; preds = %bb.d, %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #21
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i24: ; preds = %bb.l
  %.sroa.speculated.i.i.i.i.i25 = call i64 @llvm.umax.i64(i64 %i.bh, i64 1)
  %i.bn = add nsw i64 %.sroa.speculated.i.i.i.i.i25, %i.bh ; 2 uses
  %i.bo = icmp ult i64 %i.bn, %i.bh
  %i.bp = call i64 @llvm.umin.i64(i64 %i.bn, i64 2305843009213693951)
  %i.bq = select i1 %i.bo, i64 2305843009213693951, i64 %i.bp ; 3 uses
  %.not.i.i.i.i.i26 = icmp ne i64 %i.bq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i26)
  %i.br = shl nuw nsw i64 %i.bq, 2
  %i.bs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.br) #18
          to label %.noexc31 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc31:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i24
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 %i.bi ; 2 uses
  store i32 1, ptr %i.bt, align 4, !tbaa !26
  %i.bu = icmp sgt i64 %i.bi, 0
  br i1 %i.bu, label %bb.m, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i27

bb.m:                                             ; preds = %.noexc31
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bs, ptr align 4 %i.bf, i64 %i.bi, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i27

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i27: ; preds = %bb.m, %.noexc31
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 4 ; 2 uses
  %.not.i17.i.i.i.i28 = icmp eq ptr %i.bf, null
  br i1 %.not.i17.i.i.i.i28, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i29, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i27
  %i.bw = load ptr, ptr %i.c, align 8, !tbaa !133
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = sub i64 %i.bx, %i.bj
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.by) #19
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i29

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i29: ; preds = %bb.n, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i27
  store ptr %i.bs, ptr %4, align 8, !tbaa !51
  store ptr %i.bv, ptr %i.b, align 8, !tbaa !65
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.bq ; 2 uses
  store ptr %i.bz, ptr %i.c, align 8, !tbaa !133
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i23

_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i23:       ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i29, %bb.k
  %i.ca = phi ptr [ %i.bf, %bb.k ], [ %i.bs, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i29 ] ; 3 uses
  %i.cb = phi ptr [ %i.bl, %bb.k ], [ %i.bv, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i29 ] ; 3 uses
  %i.cc = phi ptr [ %i.bg, %bb.k ], [ %i.bz, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i29 ]
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = ptrtoint ptr %i.ca to i64               ; 2 uses
  %i.cf = sub i64 %i.cd, %i.ce                    ; 2 uses
  %i.cg = ashr exact i64 %i.cf, 2                 ; 2 uses
  %i.ch = icmp ult i64 %i.cg, %indvars.iv
  br i1 %i.ch, label %bb.j, label %"_ZZN5arrow4util8internal19NestedListGenerator32VisitAllNestedListConfigurationsERKSt6vectorISt10shared_ptrINS_8DataTypeEESaIS6_EERKSt8functionIFvRKS6_RKS3_IiSaIiEEEEiiENK3$_2clEv.exit32", !llvm.loop !125

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.h, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i24, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i, %.invoke, %bb.g
  %lpad.loopexit.split-lp147 = landingpad { ptr, i32 }
          cleanup
  %i.ci = load ptr, ptr %4, align 8, !tbaa !51    ; 3 uses
  %.not.i.i.i33 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i33, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.cj = load ptr, ptr %i.c, align 8, !tbaa !133
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = ptrtoint ptr %i.ci to i64
  %i.cm = sub i64 %i.ck, %i.cl
  call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef %i.cm) #19
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  resume { ptr, i32 } %lpad.loopexit.split-lp147

_ZNKSt8functionIFvRKSt10shared_ptrIN5arrow8DataTypeEERKSt6vectorIiSaIiEEEEclES5_SA_.exit: ; preds = %.lr.ph
  %i.cn = sdiv i32 %i.aw, %i.az
  store ptr %i.ax, ptr %i.b, align 8, !tbaa !65
  %i.co = icmp eq ptr %i.as, %i.ax
  br i1 %i.co, label %.loopexit, label %.lr.ph, !llvm.loop !127

"_ZZN5arrow4util8internal19NestedListGenerator32VisitAllNestedListConfigurationsERKSt6vectorISt10shared_ptrINS_8DataTypeEESaIS6_EERKSt8functionIFvRKS6_RKS3_IiSaIiEEEEiiENK3$_2clEv.exit32": ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i23, %bb.i
  %i.cp = phi ptr [ %i.av, %bb.i ], [ %i.cb, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i23 ] ; 2 uses
  %i.cq = phi ptr [ %i.as, %bb.i ], [ %i.ca, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i23 ] ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.cp
  br i1 %i.cr, label %.thread, label %"_ZZN5arrow4util8internal19NestedListGenerator32VisitAllNestedListConfigurationsERKSt6vectorISt10shared_ptrINS_8DataTypeEESaIS6_EERKSt8functionIFvRKS6_RKS3_IiSaIiEEEEiiENK3$_2clEv.exit", !llvm.loop !128

.loopexit:                                        ; preds = %_ZNKSt8functionIFvRKSt10shared_ptrIN5arrow8DataTypeEERKSt6vectorIiSaIiEEEEclES5_SA_.exit.preheader, %_ZNKSt8functionIFvRKSt10shared_ptrIN5arrow8DataTypeEERKSt6vectorIiSaIiEEEEclES5_SA_.exit
  %.not.i.i.i34 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i34, label %_ZNSt6vectorIiSaIiEED2Ev.exit35, label %.thread

.thread:                                          ; preds = %"_ZZN5arrow4util8internal19NestedListGenerator32VisitAllNestedListConfigurationsERKSt6vectorISt10shared_ptrINS_8DataTypeEESaIS6_EERKSt8functionIFvRKS6_RKS3_IiSaIiEEEEiiENK3$_2clEv.exit32", %.loopexit
  %i.cs = phi ptr [ %i.as, %.loopexit ], [ %i.cp, %"_ZZN5arrow4util8internal19NestedListGenerator32VisitAllNestedListConfigurationsERKSt6vectorISt10shared_ptrINS_8DataTypeEESaIS6_EERKSt8functionIFvRKS6_RKS3_IiSaIiEEEEiiENK3$_2clEv.exit32" ]
  %i.ct = phi ptr [ %i.as, %.loopexit ], [ %i.cq, %"_ZZN5arrow4util8internal19NestedListGenerator32VisitAllNestedListConfigurationsERKSt6vectorISt10shared_ptrINS_8DataTypeEESaIS6_EERKSt8functionIFvRKS6_RKS3_IiSaIiEEEEiiENK3$_2clEv.exit32" ]
  %i.cu = load ptr, ptr %i.c, align 8, !tbaa !133
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = ptrtoint ptr %i.cs to i64
  %i.cx = sub i64 %i.cv, %i.cw
  call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.cx) #19
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit35

_ZNSt6vectorIiSaIiEED2Ev.exit35:                  ; preds = %.loopexit, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.040.064, i64 16 ; 2 uses
  %.not50 = icmp eq ptr %i.cy, %i.k
  br i1 %.not50, label %._crit_edge, label %.lr.ph.i
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow4util8internal19NestedListGenerator16AppendNestedListEPNS_12ArrayBuilderEPKiPl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !188 {
bb.a:
  %4 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 5 uses
end_hunk_0
