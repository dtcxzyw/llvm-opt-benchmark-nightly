Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaRrr?download=true
inline.NumInlined: 27716
inline.NumDeleted: 6990
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 40
loop-unroll.NumUnrolled: 76
begin_hunk_0_@_ZN3rrr9OptimizerINS_10AndNetworkENS_11BddAnalyzerIS1_EEE35ApplyCombinationSampledRandomlyStopEiiRKSt8functionIFbRKSt6vectorIiSaIiEEEE:bb.a
  call void @_ZdlPvm(ptr noundef nonnull %i.fe, i64 noundef %i.fi) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  br i1 %i.ab, label %bb.o, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #27
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i28, label %._crit_edge56, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.fj = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #29 ; 9 uses
  store ptr %i.fj, ptr %6, align 8, !tbaa !224
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.aa
  store ptr %i.fk, ptr %i.ad, align 8, !tbaa !222
  store i32 0, ptr %i.fj, align 4, !tbaa !220
  %i.fl = getelementptr i8, ptr %i.fj, i64 4      ; 3 uses
  br i1 %i.af, label %.lr.ph55, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %bb.p
  call void @llvm.memset.p0.i64(ptr align 4 %i.fl, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !220
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %.idx.i.i.i.i.i.i.i
  br label %.lr.ph55

.lr.ph55:                                         ; preds = %bb.p, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %.0.i.i.i.i.i.ph = phi ptr [ %i.fm, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.fl, %bb.p ]
  store ptr %.0.i.i.i.i.i.ph, ptr %i.ag, align 8, !tbaa !223
  br i1 %i.an, label %.epil.preheader, label %.lr.ph55.new

._crit_edge56.loopexit.unr-lcssa:                 ; preds = %.lr.ph55.new
  br i1 %lcmp.mod.not, label %._crit_edge56, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge56.loopexit.unr-lcssa, %.lr.ph55
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph55 ], [ %indvars.iv.next.3, %._crit_edge56.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod100)
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.q ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.q ]
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.037.0, i64 %indvars.iv.epil
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !220
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.fp
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !220
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %indvars.iv.epil
  store i32 %i.fr, ptr %i.fs, align 4, !tbaa !220
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge56, label %bb.q, !llvm.loop !1983

._crit_edge56:                                    ; preds = %._crit_edge56.loopexit.unr-lcssa, %bb.q, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ft = load ptr, ptr %i.ai, align 8, !tbaa !212
  %.not.i.i29 = icmp eq ptr %i.ft, null
  br i1 %.not.i.i29, label %bb.r, label %_ZNKSt8functionIFbRKSt6vectorIiSaIiEEEEclES4_.exit

bb.r:                                             ; preds = %._crit_edge56
  call void @_ZSt25__throw_bad_function_callv() #27
  unreachable

_ZNKSt8functionIFbRKSt6vectorIiSaIiEEEEclES4_.exit: ; preds = %._crit_edge56
  %i.fu = load ptr, ptr %i.aj, align 8, !tbaa !217
  %i.fv = call noundef zeroext i1 %i.fu(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %6) #26, !inline_history !1
  %i.fw = load ptr, ptr %6, align 8, !tbaa !224   ; 3 uses
  %.not.i.i.i30 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i.i30, label %_ZNSt6vectorIiSaIiEED2Ev.exit31, label %bb.s

bb.s:                                             ; preds = %_ZNKSt8functionIFbRKSt6vectorIiSaIiEEEEclES4_.exit
  %i.fx = load ptr, ptr %i.ad, align 8, !tbaa !222
  %i.fy = ptrtoint ptr %i.fx to i64
  %i.fz = ptrtoint ptr %i.fw to i64
  %i.ga = sub i64 %i.fy, %i.fz
  call void @_ZdlPvm(ptr noundef nonnull %i.fw, i64 noundef %i.ga) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit31

_ZNSt6vectorIiSaIiEED2Ev.exit31:                  ; preds = %_ZNKSt8functionIFbRKSt6vectorIiSaIiEEEEclES4_.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %.not.i.i.i32 = icmp eq ptr %.sroa.037.0, null
  br i1 %.not.i.i.i32, label %_ZNSt6vectorIiSaIiEED2Ev.exit33, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit31
  %i.gb = sub i64 %.sroa.13.0, %i.et
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.037.0, i64 noundef %i.gb) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit33

_ZNSt6vectorIiSaIiEED2Ev.exit33:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit31, %bb.t
  %i.gc = load ptr, ptr %i.q, align 8, !tbaa !276
  call void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.gc)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br i1 %i.fv, label %_ZNSt6vectorIiSaIiEED2Ev.exit33._ZN3rrr9OptimizerINS_10AndNetworkENS_11BddAnalyzerIS1_EEE7TimeoutEv.exit.thread_crit_edge, label %bb.c, !llvm.loop !1979

.lr.ph55.new:                                     ; preds = %.lr.ph55, %.lr.ph55.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph55.new ], [ 0, %.lr.ph55 ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph55.new ], [ 0, %.lr.ph55 ]
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.037.0, i64 %indvars.iv
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !220
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.gf
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !220
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %indvars.iv
  store i32 %i.gh, ptr %i.gi, align 4, !tbaa !220
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.037.0, i64 %indvars.iv.next
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !220
  %i.gl = sext i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.gl
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !220
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %indvars.iv.next
  store i32 %i.gn, ptr %i.go, align 4, !tbaa !220
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.037.0, i64 %indvars.iv.next.1
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !220
  %i.gr = sext i32 %i.gq to i64
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.gr
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !220
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %indvars.iv.next.1
  store i32 %i.gt, ptr %i.gu, align 4, !tbaa !220
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.037.0, i64 %indvars.iv.next.2
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !220
  %i.gx = sext i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.gx
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !220
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %indvars.iv.next.2
  store i32 %i.gz, ptr %i.ha, align 4, !tbaa !220
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge56.loopexit.unr-lcssa, label %.lr.ph55.new, !llvm.loop !1984

_ZNSt6vectorIiSaIiEED2Ev.exit33._ZN3rrr9OptimizerINS_10AndNetworkENS_11BddAnalyzerIS1_EEE7TimeoutEv.exit.thread_crit_edge: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit33
  br label %_ZN3rrr9OptimizerINS_10AndNetworkENS_11BddAnalyzerIS1_EEE7TimeoutEv.exit.thread, !llvm.loop !1979

_ZN3rrr9OptimizerINS_10AndNetworkENS_11BddAnalyzerIS1_EEE7TimeoutEv.exit.thread: ; preds = %bb.c, %bb.d, %_ZNSt6vectorIiSaIiEED2Ev.exit33._ZN3rrr9OptimizerINS_10AndNetworkENS_11BddAnalyzerIS1_EEE7TimeoutEv.exit.thread_crit_edge, %_ZNK3rrr10AndNetwork7GetIntsEv.exit
  %.not.i.i.i34 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i34, label %_ZNSt6vectorIiSaIiEED2Ev.exit35, label %bb.u

bb.u:                                             ; preds = %_ZN3rrr9OptimizerINS_10AndNetworkENS_11BddAnalyzerIS1_EEE7TimeoutEv.exit.thread
  %.idx = shl nuw nsw i64 %i.e, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %.idx) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit35

_ZNSt6vectorIiSaIiEED2Ev.exit35:                  ; preds = %_ZN3rrr9OptimizerINS_10AndNetworkENS_11BddAnalyzerIS1_EEE7TimeoutEv.exit.thread, %bb.u
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN3rrr9OptimizerINS_10AndNetworkENS_11BddAnalyzerIS1_EEE6ReduceEb(ptr noundef nonnull align 8 dereferenceable(5688) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #26
  %i.b = load ptr, ptr %0, align 8, !tbaa !852    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !231, !noalias !1989 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.f = load i64, ptr %i.e, align 8, !tbaa !274, !noalias !1989 ; 4 uses
  %i.g = icmp ugt i64 %i.f, 2305843009213693951
  br i1 %i.g, label %bb.b, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #27, !noalias !1989
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i: ; preds = %bb.a
  %.not.i7.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i7.i.i.i, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.h = shl nuw nsw i64 %i.f, 2
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #29, !noalias !1989
  br label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i: ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.j = phi ptr [ %i.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i ] ; 4 uses
  %.not6.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not6.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.j, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.d, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.l = load i32, ptr %i.k, align 4, !tbaa !220, !noalias !1989
  store i32 %i.l, ptr %.08.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !220, !noalias !1989
  %i.m = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.n = load ptr, ptr %.sroa.03.07.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !231, !noalias !1989 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.c
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !48

.lr.ph:                                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.o = load ptr, ptr %0, align 8, !tbaa !852
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !276
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %._crit_edge, label %.lr.ph.split

._crit_edge:                                      ; preds = %_ZNK3rrr10AndNetwork5IsIntEi.exit.thread, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i, %.lr.ph
  %.0.lcssa = phi i1 [ false, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i ], [ false, %.lr.ph ], [ %.1, %_ZNK3rrr10AndNetwork5IsIntEi.exit.thread ]
  br i1 %1, label %bb.h, label %bb.g

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNK3rrr10AndNetwork5IsIntEi.exit.thread
  %.021 = phi i1 [ %.1, %_ZNK3rrr10AndNetwork5IsIntEi.exit.thread ], [ false, %.lr.ph ] ; 5 uses
  %.sroa.08.020 = phi ptr [ %i.t, %_ZNK3rrr10AndNetwork5IsIntEi.exit.thread ], [ %i.m, %.lr.ph ]
  %i.s = load ptr, ptr %0, align 8, !tbaa !852    ; 4 uses
  %i.t = getelementptr inbounds i8, ptr %.sroa.08.020, i64 -4 ; 4 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !220  ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !276  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 64 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not10.i.i.i.i, label %_ZNK3rrr10AndNetwork5IsIntEi.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.split, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.w, %.lr.ph.split ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.x, %.lr.ph.split ]
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.z = load i32, ptr %i.y, align 4, !tbaa !220
  %i.aa = icmp slt i32 %i.z, %i.u                 ; 2 uses
  %.19.i.i.i.i = select i1 %i.aa, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i = select i1 %i.aa, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !279 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !16

_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ab = icmp eq ptr %.19.i.i.i.i, %i.x
  br i1 %i.ab, label %_ZNK3rrr10AndNetwork5IsIntEi.exit.thread, label %_ZNK3rrr10AndNetwork5IsIntEi.exit

_ZNK3rrr10AndNetwork5IsIntEi.exit:                ; preds = %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !220
  %.not18 = icmp slt i32 %i.u, %i.ad
  br i1 %.not18, label %_ZNK3rrr10AndNetwork5IsIntEi.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK3rrr10AndNetwork5IsIntEi.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 152
  %i.af = sext i32 %i.u to i64
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !224
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.af
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !220
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN3rrr10AndNetwork12RemoveUnusedEibb(ptr noundef nonnull align 8 dereferenceable(264) %i.s, i32 noundef %i.u, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %_ZNK3rrr10AndNetwork5IsIntEi.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.ak = tail call noundef zeroext i1 @_ZN3rrr9OptimizerINS_10AndNetworkENS_11BddAnalyzerIS1_EEE12ReduceFaninsEib(ptr noundef nonnull align 8 dereferenceable(5688) %0, i32 noundef %i.u, i1 noundef zeroext false)
  %2 = or i1 %.021, %i.ak                         ; 2 uses
  %i.al = load ptr, ptr %0, align 8, !tbaa !852   ; 2 uses
  %i.am = load i32, ptr %i.t, align 4, !tbaa !220 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 128
  %i.ao = sext i32 %i.am to i64
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !228
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %i.ao ; 2 uses
  %.val.i = load ptr, ptr %i.aq, align 8, !tbaa !224
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  %.val1.i = load ptr, ptr %i.ar, align 8, !tbaa !223
  %i.as = ptrtoint ptr %.val1.i to i64
  %i.at = ptrtoint ptr %.val.i to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = lshr exact i64 %i.au, 2
  %i.aw = trunc i64 %i.av to i32
  %i.ax = icmp slt i32 %i.aw, 2
  br i1 %i.ax, label %bb.f, label %_ZNK3rrr10AndNetwork5IsIntEi.exit.thread

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN3rrr10AndNetwork9PropagateEi(ptr noundef nonnull align 8 dereferenceable(264) %i.al, i32 noundef %i.am)
  br label %_ZNK3rrr10AndNetwork5IsIntEi.exit.thread

_ZNK3rrr10AndNetwork5IsIntEi.exit.thread:         ; preds = %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i.i, %.lr.ph.split, %bb.e, %bb.f, %_ZNK3rrr10AndNetwork5IsIntEi.exit, %bb.d
  %.1 = phi i1 [ %.021, %bb.d ], [ %2, %bb.f ], [ %2, %bb.e ], [ %.021, %_ZNK3rrr10AndNetwork5IsIntEi.exit ], [ %.021, %.lr.ph.split ], [ %.021, %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i.i ] ; 2 uses
  %.not = icmp eq ptr %i.t, %i.j
  br i1 %.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !1988

bb.g:                                             ; preds = %._crit_edge
  %i.ay = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #26
  %i.az = sub nsw i64 %i.ay, %i.a
  %i.ba = sitofp i64 %i.az to double
  %i.bb = fdiv double %i.ba, 1.000000e+09
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 5680 ; 2 uses
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !958
  %i.be = fadd double %i.bd, %i.bb
  store double %i.be, ptr %i.bc, align 8, !tbaa !958
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.idx = shl nuw nsw i64 %i.f, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %.idx) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.h, %bb.i
  ret i1 %.0.lcssa
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3rrr9OptimizerINS_10AndNetworkENS_11BddAnalyzerIS1_EEE10SortFaninsEi(ptr noundef nonnull align 8 dereferenceable(5688) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %2 = alloca %class.anon.325, align 8            ; 4 uses
  %3 = alloca %class.anon.326, align 8            ; 4 uses
  %4 = alloca %class.anon.327, align 8            ; 4 uses
  %5 = alloca %class.anon.328, align 8            ; 4 uses
  %6 = alloca %class.anon.329, align 8            ; 4 uses
  %7 = alloca %class.anon.330, align 8            ; 4 uses
  %8 = alloca %class.anon.331, align 8            ; 4 uses
  %9 = alloca %class.anon.332, align 8            ; 4 uses
  %10 = alloca %class.anon.333, align 8           ; 4 uses
  %11 = alloca %class.anon.334, align 8           ; 4 uses
  %12 = alloca %class.anon.335, align 8           ; 4 uses
  %13 = alloca %class.anon.336, align 8           ; 4 uses
  %14 = alloca %class.anon.337, align 8           ; 4 uses
  %15 = alloca %class.anon.338, align 8           ; 4 uses
  %16 = alloca %class.anon.339, align 8           ; 4 uses
  %17 = alloca %class.anon.340, align 8           ; 4 uses
  %18 = alloca %class.anon.341, align 8           ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !901
  switch i32 %i.b, label %bb.ae [
    i32 17, label %bb.ad
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.h
    i32 5, label %bb.i
    i32 6, label %bb.j
    i32 7, label %bb.k
    i32 8, label %bb.o
    i32 9, label %bb.p
    i32 10, label %bb.q
    i32 11, label %bb.u
    i32 12, label %bb.v
    i32 13, label %bb.w
    i32 14, label %bb.aa
    i32 15, label %bb.ab
    i32 16, label %bb.ac
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !852
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store ptr %0, ptr %2, align 8, !tbaa !965
  call void @_ZN3rrr10AndNetwork10SortFaninsIZNS_9OptimizerIS0_NS_11BddAnalyzerIS0_EEE10SortFaninsEiEUliiE_EEviRKT_(ptr noundef nonnull align 8 dereferenceable(264) %i.c, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.ae

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !852
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr %0, ptr %3, align 8, !tbaa !967
  call void @_ZN3rrr10AndNetwork10SortFaninsIZNS_9OptimizerIS0_NS_11BddAnalyzerIS0_EEE10SortFaninsEiEUliiE0_EEviRKT_(ptr noundef nonnull align 8 dereferenceable(264) %i.d, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.ae

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 5496 ; 3 uses
  %.val.i = load ptr, ptr %i.e, align 8, !tbaa !224 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 5504 ; 3 uses
  %.val4.i = load ptr, ptr %i.f, align 8, !tbaa !223 ; 3 uses
  %i.g = ptrtoint ptr %.val4.i to i64
  %i.h = ptrtoint ptr %.val.i to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 2
  %i.k = trunc i64 %i.j to i32
  %i.l = load ptr, ptr %0, align 8, !tbaa !852    ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.val.i.i = load ptr, ptr %i.m, align 8, !tbaa !224
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.val1.i.i = load ptr, ptr %i.n, align 8, !tbaa !223
  %i.o = ptrtoint ptr %.val1.i.i to i64
  %i.p = ptrtoint ptr %.val.i.i to i64            ; 2 uses
  %i.q = sub i64 %i.o, %i.p                       ; 2 uses
  %i.r = lshr exact i64 %i.q, 2
  %i.s = trunc i64 %i.r to i32
  %.not.i = icmp eq i32 %i.k, %i.s
  br i1 %.not.i, label %_ZN3rrr9OptimizerINS_10AndNetworkENS_11BddAnalyzerIS1_EEE14SetRandPiOrderEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i = icmp eq ptr %.val4.i, %.val.i
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %.val.i, ptr %i.f, align 8, !tbaa !223
  %.val1.i6.pre.i = load ptr, ptr %i.n, align 8, !tbaa !223
  %.pre10.i = ptrtoint ptr %.val1.i6.pre.i to i64
  %.pre11.i = sub i64 %.pre10.i, %i.p
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit.i

_ZNSt6vectorIiSaIiEE5clearEv.exit.i:              ; preds = %bb.f, %bb.e
  %.pre-phi12.i = phi i64 [ %i.q, %bb.e ], [ %.pre11.i, %bb.f ]
  %i.t = phi ptr [ %.val4.i, %bb.e ], [ %.val.i, %bb.f ]
  %sext.i = shl i64 %.pre-phi12.i, 30
  %i.u = ashr i64 %sext.i, 32                     ; 2 uses
  %.not22.i = icmp eq i64 %i.u, 0
  br i1 %.not22.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit.i
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.u)
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !219
  %.pre9.i = load ptr, ptr %i.f, align 8, !tbaa !219
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

_ZNSt6vectorIiSaIiEE6resizeEm.exit.i:             ; preds = %bb.g, %_ZNSt6vectorIiSaIiEE5clearEv.exit.i
  %i.v = phi ptr [ %.pre9.i, %bb.g ], [ %i.t, %_ZNSt6vectorIiSaIiEE5clearEv.exit.i ] ; 4 uses
  %i.w = phi ptr [ %.pre.i, %bb.g ], [ %.val.i, %_ZNSt6vectorIiSaIiEE5clearEv.exit.i ] ; 6 uses
  %.not5.i.i = icmp eq ptr %i.w, %i.v
  br i1 %.not5.i.i, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i
  %i.x = ptrtoaddr ptr %i.v to i64
  %i.y = ptrtoaddr ptr %i.w to i64
  %i.z = add i64 %i.x, -4
  %i.aa = sub i64 %i.z, %i.y                      ; 2 uses
  %i.ab = lshr i64 %i.aa, 2
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check132 = icmp ult i64 %i.aa, 28
  br i1 %min.iters.check132, label %.lr.ph.i.i.preheader146, label %vector.ph133

vector.ph133:                                     ; preds = %.lr.ph.i.i.preheader
  %n.vec134 = and i64 %i.ac, 9223372036854775800  ; 4 uses
  %i.ad = trunc i64 %n.vec134 to i32
  %i.ae = shl i64 %n.vec134, 2
  %i.af = getelementptr i8, ptr %i.w, i64 %i.ae
  br label %vector.body135

vector.body135:                                   ; preds = %vector.body135, %vector.ph133
  %index136 = phi i64 [ 0, %vector.ph133 ], [ %index.next140, %vector.body135 ] ; 2 uses
  %vec.ind137 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph133 ], [ %vec.ind.next141, %vector.body135 ] ; 3 uses
  %step.add138 = add nuw nsw <4 x i32> %vec.ind137, splat (i32 4)
  %i.ag = shl i64 %index136, 2
  %next.gep139 = getelementptr i8, ptr %i.w, i64 %i.ag ; 2 uses
  %i.ah = getelementptr i8, ptr %next.gep139, i64 16
  store <4 x i32> %vec.ind137, ptr %next.gep139, align 4, !tbaa !220
  store <4 x i32> %step.add138, ptr %i.ah, align 4, !tbaa !220
  %index.next140 = add nuw i64 %index136, 8       ; 2 uses
  %vec.ind.next141 = add nuw nsw <4 x i32> %vec.ind137, splat (i32 8)
  %i.ai = icmp eq i64 %index.next140, %n.vec134
  br i1 %i.ai, label %middle.block142, label %vector.body135, !llvm.loop !1990

middle.block142:                                  ; preds = %vector.body135
  %cmp.n143 = icmp eq i64 %i.ac, %n.vec134
  br i1 %cmp.n143, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit.i, label %.lr.ph.i.i.preheader146

.lr.ph.i.i.preheader146:                          ; preds = %.lr.ph.i.i.preheader, %middle.block142
  %.07.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.ad, %middle.block142 ]
  %.sroa.02.06.i.i.ph = phi ptr [ %i.w, %.lr.ph.i.i.preheader ], [ %i.af, %middle.block142 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader146, %.lr.ph.i.i
  %.07.i.i = phi i32 [ %i.aj, %.lr.ph.i.i ], [ %.07.i.i.ph, %.lr.ph.i.i.preheader146 ] ; 2 uses
  %.sroa.02.06.i.i = phi ptr [ %i.ak, %.lr.ph.i.i ], [ %.sroa.02.06.i.i.ph, %.lr.ph.i.i.preheader146 ] ; 2 uses
  store i32 %.07.i.i, ptr %.sroa.02.06.i.i, align 4, !tbaa !220
  %i.aj = add nuw nsw i32 %.07.i.i, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ak, %i.v
  br i1 %.not.i.i, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit.i, label %.lr.ph.i.i, !llvm.loop !1991

_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit.i: ; preds = %.lr.ph.i.i, %middle.block142, %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 416
  tail call void @_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEvT_SA_OT0_(ptr %i.w, ptr %i.v, ptr noundef nonnull align 8 dereferenceable(5000) %i.al)
  %.pre88 = load ptr, ptr %0, align 8, !tbaa !852
  br label %_ZN3rrr9OptimizerINS_10AndNetworkENS_11BddAnalyzerIS1_EEE14SetRandPiOrderEv.exit

_ZN3rrr9OptimizerINS_10AndNetworkENS_11BddAnalyzerIS1_EEE14SetRandPiOrderEv.exit: ; preds = %bb.d, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit.i
  %i.am = phi ptr [ %i.l, %bb.d ], [ %.pre88, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr %0, ptr %4, align 8, !tbaa !969
  call void @_ZN3rrr10AndNetwork10SortFaninsIZNS_9OptimizerIS0_NS_11BddAnalyzerIS0_EEE10SortFaninsEiEUliiE1_EEviRKT_(ptr noundef nonnull align 8 dereferenceable(264) %i.am, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.ae

end_hunk_0
begin_hunk_1_@_ZN3rrr9OptimizerINS_10AndNetworkENS_15BddMspfAnalyzerIS1_EEE35ApplyCombinationSampledRandomlyStopEiiRKSt8functionIFbRKSt6vectorIiSaIiEEEE:bb.a
  call void @_ZdlPvm(ptr noundef nonnull %i.fe, i64 noundef %i.fi) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  br i1 %i.ab, label %bb.o, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #27
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i28, label %._crit_edge56, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.fj = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #29 ; 9 uses
  store ptr %i.fj, ptr %6, align 8, !tbaa !224
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.aa
  store ptr %i.fk, ptr %i.ad, align 8, !tbaa !222
  store i32 0, ptr %i.fj, align 4, !tbaa !220
  %i.fl = getelementptr i8, ptr %i.fj, i64 4      ; 3 uses
  br i1 %i.af, label %.lr.ph55, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %bb.p
  call void @llvm.memset.p0.i64(ptr align 4 %i.fl, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !220
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %.idx.i.i.i.i.i.i.i
  br label %.lr.ph55

.lr.ph55:                                         ; preds = %bb.p, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %.0.i.i.i.i.i.ph = phi ptr [ %i.fm, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.fl, %bb.p ]
  store ptr %.0.i.i.i.i.i.ph, ptr %i.ag, align 8, !tbaa !223
  br i1 %i.an, label %.epil.preheader, label %.lr.ph55.new

._crit_edge56.loopexit.unr-lcssa:                 ; preds = %.lr.ph55.new
  br i1 %lcmp.mod.not, label %._crit_edge56, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge56.loopexit.unr-lcssa, %.lr.ph55
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph55 ], [ %indvars.iv.next.3, %._crit_edge56.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod100)
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.q ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.q ]
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.037.0, i64 %indvars.iv.epil
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !220
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.fp
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !220
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %indvars.iv.epil
  store i32 %i.fr, ptr %i.fs, align 4, !tbaa !220
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge56, label %bb.q, !llvm.loop !2807

._crit_edge56:                                    ; preds = %._crit_edge56.loopexit.unr-lcssa, %bb.q, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ft = load ptr, ptr %i.ai, align 8, !tbaa !212
  %.not.i.i29 = icmp eq ptr %i.ft, null
  br i1 %.not.i.i29, label %bb.r, label %_ZNKSt8functionIFbRKSt6vectorIiSaIiEEEEclES4_.exit

bb.r:                                             ; preds = %._crit_edge56
  call void @_ZSt25__throw_bad_function_callv() #27
  unreachable

_ZNKSt8functionIFbRKSt6vectorIiSaIiEEEEclES4_.exit: ; preds = %._crit_edge56
  %i.fu = load ptr, ptr %i.aj, align 8, !tbaa !217
  %i.fv = call noundef zeroext i1 %i.fu(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %6) #26, !inline_history !1
  %i.fw = load ptr, ptr %6, align 8, !tbaa !224   ; 3 uses
  %.not.i.i.i30 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i.i30, label %_ZNSt6vectorIiSaIiEED2Ev.exit31, label %bb.s

bb.s:                                             ; preds = %_ZNKSt8functionIFbRKSt6vectorIiSaIiEEEEclES4_.exit
  %i.fx = load ptr, ptr %i.ad, align 8, !tbaa !222
  %i.fy = ptrtoint ptr %i.fx to i64
  %i.fz = ptrtoint ptr %i.fw to i64
  %i.ga = sub i64 %i.fy, %i.fz
  call void @_ZdlPvm(ptr noundef nonnull %i.fw, i64 noundef %i.ga) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit31

_ZNSt6vectorIiSaIiEED2Ev.exit31:                  ; preds = %_ZNKSt8functionIFbRKSt6vectorIiSaIiEEEEclES4_.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %.not.i.i.i32 = icmp eq ptr %.sroa.037.0, null
  br i1 %.not.i.i.i32, label %_ZNSt6vectorIiSaIiEED2Ev.exit33, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit31
  %i.gb = sub i64 %.sroa.13.0, %i.et
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.037.0, i64 noundef %i.gb) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit33

_ZNSt6vectorIiSaIiEED2Ev.exit33:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit31, %bb.t
  %i.gc = load ptr, ptr %i.q, align 8, !tbaa !276
  call void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.gc)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br i1 %i.fv, label %_ZNSt6vectorIiSaIiEED2Ev.exit33._ZN3rrr9OptimizerINS_10AndNetworkENS_15BddMspfAnalyzerIS1_EEE7TimeoutEv.exit.thread_crit_edge, label %bb.c, !llvm.loop !2803

.lr.ph55.new:                                     ; preds = %.lr.ph55, %.lr.ph55.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph55.new ], [ 0, %.lr.ph55 ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph55.new ], [ 0, %.lr.ph55 ]
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.037.0, i64 %indvars.iv
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !220
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.gf
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !220
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %indvars.iv
  store i32 %i.gh, ptr %i.gi, align 4, !tbaa !220
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.037.0, i64 %indvars.iv.next
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !220
  %i.gl = sext i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.gl
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !220
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %indvars.iv.next
  store i32 %i.gn, ptr %i.go, align 4, !tbaa !220
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.037.0, i64 %indvars.iv.next.1
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !220
  %i.gr = sext i32 %i.gq to i64
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.gr
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !220
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %indvars.iv.next.1
  store i32 %i.gt, ptr %i.gu, align 4, !tbaa !220
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.037.0, i64 %indvars.iv.next.2
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !220
  %i.gx = sext i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.gx
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !220
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %indvars.iv.next.2
  store i32 %i.gz, ptr %i.ha, align 4, !tbaa !220
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge56.loopexit.unr-lcssa, label %.lr.ph55.new, !llvm.loop !2808

_ZNSt6vectorIiSaIiEED2Ev.exit33._ZN3rrr9OptimizerINS_10AndNetworkENS_15BddMspfAnalyzerIS1_EEE7TimeoutEv.exit.thread_crit_edge: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit33
  br label %_ZN3rrr9OptimizerINS_10AndNetworkENS_15BddMspfAnalyzerIS1_EEE7TimeoutEv.exit.thread, !llvm.loop !2803

_ZN3rrr9OptimizerINS_10AndNetworkENS_15BddMspfAnalyzerIS1_EEE7TimeoutEv.exit.thread: ; preds = %bb.c, %bb.d, %_ZNSt6vectorIiSaIiEED2Ev.exit33._ZN3rrr9OptimizerINS_10AndNetworkENS_15BddMspfAnalyzerIS1_EEE7TimeoutEv.exit.thread_crit_edge, %_ZNK3rrr10AndNetwork7GetIntsEv.exit
  %.not.i.i.i34 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i34, label %_ZNSt6vectorIiSaIiEED2Ev.exit35, label %bb.u

bb.u:                                             ; preds = %_ZN3rrr9OptimizerINS_10AndNetworkENS_15BddMspfAnalyzerIS1_EEE7TimeoutEv.exit.thread
  %.idx = shl nuw nsw i64 %i.e, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %.idx) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit35

_ZNSt6vectorIiSaIiEED2Ev.exit35:                  ; preds = %_ZN3rrr9OptimizerINS_10AndNetworkENS_15BddMspfAnalyzerIS1_EEE7TimeoutEv.exit.thread, %bb.u
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN3rrr9OptimizerINS_10AndNetworkENS_15BddMspfAnalyzerIS1_EEE6ReduceEb(ptr noundef nonnull align 8 dereferenceable(5720) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #26
  %i.b = load ptr, ptr %0, align 8, !tbaa !1054   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !231, !noalias !2813 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.f = load i64, ptr %i.e, align 8, !tbaa !274, !noalias !2813 ; 4 uses
  %i.g = icmp ugt i64 %i.f, 2305843009213693951
  br i1 %i.g, label %bb.b, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #27, !noalias !2813
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i: ; preds = %bb.a
  %.not.i7.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i7.i.i.i, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.h = shl nuw nsw i64 %i.f, 2
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #29, !noalias !2813
  br label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i: ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.j = phi ptr [ %i.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i ] ; 4 uses
  %.not6.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not6.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.j, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.d, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.l = load i32, ptr %i.k, align 4, !tbaa !220, !noalias !2813
  store i32 %i.l, ptr %.08.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !220, !noalias !2813
  %i.m = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.n = load ptr, ptr %.sroa.03.07.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !231, !noalias !2813 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.c
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !48

.lr.ph:                                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.o = load ptr, ptr %0, align 8, !tbaa !1054
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !276
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %._crit_edge, label %.lr.ph.split

._crit_edge:                                      ; preds = %_ZNK3rrr10AndNetwork5IsIntEi.exit.thread, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i, %.lr.ph
  %.0.lcssa = phi i1 [ false, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i ], [ false, %.lr.ph ], [ %.1, %_ZNK3rrr10AndNetwork5IsIntEi.exit.thread ]
  br i1 %1, label %bb.h, label %bb.g

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNK3rrr10AndNetwork5IsIntEi.exit.thread
  %.021 = phi i1 [ %.1, %_ZNK3rrr10AndNetwork5IsIntEi.exit.thread ], [ false, %.lr.ph ] ; 5 uses
  %.sroa.08.020 = phi ptr [ %i.t, %_ZNK3rrr10AndNetwork5IsIntEi.exit.thread ], [ %i.m, %.lr.ph ]
  %i.s = load ptr, ptr %0, align 8, !tbaa !1054   ; 4 uses
  %i.t = getelementptr inbounds i8, ptr %.sroa.08.020, i64 -4 ; 4 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !220  ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !276  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 64 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not10.i.i.i.i, label %_ZNK3rrr10AndNetwork5IsIntEi.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.split, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.w, %.lr.ph.split ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.x, %.lr.ph.split ]
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.z = load i32, ptr %i.y, align 4, !tbaa !220
  %i.aa = icmp slt i32 %i.z, %i.u                 ; 2 uses
  %.19.i.i.i.i = select i1 %i.aa, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i = select i1 %i.aa, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !279 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !16

_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ab = icmp eq ptr %.19.i.i.i.i, %i.x
  br i1 %i.ab, label %_ZNK3rrr10AndNetwork5IsIntEi.exit.thread, label %_ZNK3rrr10AndNetwork5IsIntEi.exit

_ZNK3rrr10AndNetwork5IsIntEi.exit:                ; preds = %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !220
  %.not18 = icmp slt i32 %i.u, %i.ad
  br i1 %.not18, label %_ZNK3rrr10AndNetwork5IsIntEi.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK3rrr10AndNetwork5IsIntEi.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 152
  %i.af = sext i32 %i.u to i64
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !224
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.af
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !220
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN3rrr10AndNetwork12RemoveUnusedEibb(ptr noundef nonnull align 8 dereferenceable(264) %i.s, i32 noundef %i.u, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %_ZNK3rrr10AndNetwork5IsIntEi.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.ak = tail call noundef zeroext i1 @_ZN3rrr9OptimizerINS_10AndNetworkENS_15BddMspfAnalyzerIS1_EEE12ReduceFaninsEib(ptr noundef nonnull align 8 dereferenceable(5720) %0, i32 noundef %i.u, i1 noundef zeroext false)
  %2 = or i1 %.021, %i.ak                         ; 2 uses
  %i.al = load ptr, ptr %0, align 8, !tbaa !1054  ; 2 uses
  %i.am = load i32, ptr %i.t, align 4, !tbaa !220 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 128
  %i.ao = sext i32 %i.am to i64
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !228
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %i.ao ; 2 uses
  %.val.i = load ptr, ptr %i.aq, align 8, !tbaa !224
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  %.val1.i = load ptr, ptr %i.ar, align 8, !tbaa !223
  %i.as = ptrtoint ptr %.val1.i to i64
  %i.at = ptrtoint ptr %.val.i to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = lshr exact i64 %i.au, 2
  %i.aw = trunc i64 %i.av to i32
  %i.ax = icmp slt i32 %i.aw, 2
  br i1 %i.ax, label %bb.f, label %_ZNK3rrr10AndNetwork5IsIntEi.exit.thread

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN3rrr10AndNetwork9PropagateEi(ptr noundef nonnull align 8 dereferenceable(264) %i.al, i32 noundef %i.am)
  br label %_ZNK3rrr10AndNetwork5IsIntEi.exit.thread

_ZNK3rrr10AndNetwork5IsIntEi.exit.thread:         ; preds = %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i.i, %.lr.ph.split, %bb.e, %bb.f, %_ZNK3rrr10AndNetwork5IsIntEi.exit, %bb.d
  %.1 = phi i1 [ %.021, %bb.d ], [ %2, %bb.f ], [ %2, %bb.e ], [ %.021, %_ZNK3rrr10AndNetwork5IsIntEi.exit ], [ %.021, %.lr.ph.split ], [ %.021, %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i.i ] ; 2 uses
  %.not = icmp eq ptr %i.t, %i.j
  br i1 %.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !2812

bb.g:                                             ; preds = %._crit_edge
  %i.ay = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #26
  %i.az = sub nsw i64 %i.ay, %i.a
  %i.ba = sitofp i64 %i.az to double
  %i.bb = fdiv double %i.ba, 1.000000e+09
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 5712 ; 2 uses
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !1087
  %i.be = fadd double %i.bd, %i.bb
  store double %i.be, ptr %i.bc, align 8, !tbaa !1087
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.idx = shl nuw nsw i64 %i.f, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %.idx) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.h, %bb.i
  ret i1 %.0.lcssa
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3rrr9OptimizerINS_10AndNetworkENS_15BddMspfAnalyzerIS1_EEE10SortFaninsEi(ptr noundef nonnull align 8 dereferenceable(5720) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %2 = alloca %class.anon.604, align 8            ; 4 uses
  %3 = alloca %class.anon.605, align 8            ; 4 uses
  %4 = alloca %class.anon.606, align 8            ; 4 uses
  %5 = alloca %class.anon.607, align 8            ; 4 uses
  %6 = alloca %class.anon.608, align 8            ; 4 uses
  %7 = alloca %class.anon.609, align 8            ; 4 uses
  %8 = alloca %class.anon.610, align 8            ; 4 uses
  %9 = alloca %class.anon.611, align 8            ; 4 uses
  %10 = alloca %class.anon.612, align 8           ; 4 uses
  %11 = alloca %class.anon.613, align 8           ; 4 uses
  %12 = alloca %class.anon.614, align 8           ; 4 uses
  %13 = alloca %class.anon.615, align 8           ; 4 uses
  %14 = alloca %class.anon.616, align 8           ; 4 uses
  %15 = alloca %class.anon.617, align 8           ; 4 uses
  %16 = alloca %class.anon.618, align 8           ; 4 uses
  %17 = alloca %class.anon.619, align 8           ; 4 uses
  %18 = alloca %class.anon.620, align 8           ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1076
  switch i32 %i.b, label %bb.ae [
    i32 17, label %bb.ad
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.h
    i32 5, label %bb.i
    i32 6, label %bb.j
    i32 7, label %bb.k
    i32 8, label %bb.o
    i32 9, label %bb.p
    i32 10, label %bb.q
    i32 11, label %bb.u
    i32 12, label %bb.v
    i32 13, label %bb.w
    i32 14, label %bb.aa
    i32 15, label %bb.ab
    i32 16, label %bb.ac
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !1054
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store ptr %0, ptr %2, align 8, !tbaa !1089
  call void @_ZN3rrr10AndNetwork10SortFaninsIZNS_9OptimizerIS0_NS_15BddMspfAnalyzerIS0_EEE10SortFaninsEiEUliiE_EEviRKT_(ptr noundef nonnull align 8 dereferenceable(264) %i.c, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.ae

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !1054
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr %0, ptr %3, align 8, !tbaa !1091
  call void @_ZN3rrr10AndNetwork10SortFaninsIZNS_9OptimizerIS0_NS_15BddMspfAnalyzerIS0_EEE10SortFaninsEiEUliiE0_EEviRKT_(ptr noundef nonnull align 8 dereferenceable(264) %i.d, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.ae

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 5528 ; 3 uses
  %.val.i = load ptr, ptr %i.e, align 8, !tbaa !224 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 5536 ; 3 uses
  %.val4.i = load ptr, ptr %i.f, align 8, !tbaa !223 ; 3 uses
  %i.g = ptrtoint ptr %.val4.i to i64
  %i.h = ptrtoint ptr %.val.i to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 2
  %i.k = trunc i64 %i.j to i32
  %i.l = load ptr, ptr %0, align 8, !tbaa !1054   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.val.i.i = load ptr, ptr %i.m, align 8, !tbaa !224
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.val1.i.i = load ptr, ptr %i.n, align 8, !tbaa !223
  %i.o = ptrtoint ptr %.val1.i.i to i64
  %i.p = ptrtoint ptr %.val.i.i to i64            ; 2 uses
  %i.q = sub i64 %i.o, %i.p                       ; 2 uses
  %i.r = lshr exact i64 %i.q, 2
  %i.s = trunc i64 %i.r to i32
  %.not.i = icmp eq i32 %i.k, %i.s
  br i1 %.not.i, label %_ZN3rrr9OptimizerINS_10AndNetworkENS_15BddMspfAnalyzerIS1_EEE14SetRandPiOrderEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i = icmp eq ptr %.val4.i, %.val.i
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %.val.i, ptr %i.f, align 8, !tbaa !223
  %.val1.i6.pre.i = load ptr, ptr %i.n, align 8, !tbaa !223
  %.pre10.i = ptrtoint ptr %.val1.i6.pre.i to i64
  %.pre11.i = sub i64 %.pre10.i, %i.p
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit.i

_ZNSt6vectorIiSaIiEE5clearEv.exit.i:              ; preds = %bb.f, %bb.e
  %.pre-phi12.i = phi i64 [ %i.q, %bb.e ], [ %.pre11.i, %bb.f ]
  %i.t = phi ptr [ %.val4.i, %bb.e ], [ %.val.i, %bb.f ]
  %sext.i = shl i64 %.pre-phi12.i, 30
  %i.u = ashr i64 %sext.i, 32                     ; 2 uses
  %.not22.i = icmp eq i64 %i.u, 0
  br i1 %.not22.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit.i
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.u)
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !219
  %.pre9.i = load ptr, ptr %i.f, align 8, !tbaa !219
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

_ZNSt6vectorIiSaIiEE6resizeEm.exit.i:             ; preds = %bb.g, %_ZNSt6vectorIiSaIiEE5clearEv.exit.i
  %i.v = phi ptr [ %.pre9.i, %bb.g ], [ %i.t, %_ZNSt6vectorIiSaIiEE5clearEv.exit.i ] ; 4 uses
  %i.w = phi ptr [ %.pre.i, %bb.g ], [ %.val.i, %_ZNSt6vectorIiSaIiEE5clearEv.exit.i ] ; 6 uses
  %.not5.i.i = icmp eq ptr %i.w, %i.v
  br i1 %.not5.i.i, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i
  %i.x = ptrtoaddr ptr %i.v to i64
  %i.y = ptrtoaddr ptr %i.w to i64
  %i.z = add i64 %i.x, -4
  %i.aa = sub i64 %i.z, %i.y                      ; 2 uses
  %i.ab = lshr i64 %i.aa, 2
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check132 = icmp ult i64 %i.aa, 28
  br i1 %min.iters.check132, label %.lr.ph.i.i.preheader146, label %vector.ph133

vector.ph133:                                     ; preds = %.lr.ph.i.i.preheader
  %n.vec134 = and i64 %i.ac, 9223372036854775800  ; 4 uses
  %i.ad = trunc i64 %n.vec134 to i32
  %i.ae = shl i64 %n.vec134, 2
  %i.af = getelementptr i8, ptr %i.w, i64 %i.ae
  br label %vector.body135

vector.body135:                                   ; preds = %vector.body135, %vector.ph133
  %index136 = phi i64 [ 0, %vector.ph133 ], [ %index.next140, %vector.body135 ] ; 2 uses
  %vec.ind137 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph133 ], [ %vec.ind.next141, %vector.body135 ] ; 3 uses
  %step.add138 = add nuw nsw <4 x i32> %vec.ind137, splat (i32 4)
  %i.ag = shl i64 %index136, 2
  %next.gep139 = getelementptr i8, ptr %i.w, i64 %i.ag ; 2 uses
  %i.ah = getelementptr i8, ptr %next.gep139, i64 16
  store <4 x i32> %vec.ind137, ptr %next.gep139, align 4, !tbaa !220
  store <4 x i32> %step.add138, ptr %i.ah, align 4, !tbaa !220
  %index.next140 = add nuw i64 %index136, 8       ; 2 uses
  %vec.ind.next141 = add nuw nsw <4 x i32> %vec.ind137, splat (i32 8)
  %i.ai = icmp eq i64 %index.next140, %n.vec134
  br i1 %i.ai, label %middle.block142, label %vector.body135, !llvm.loop !2814

middle.block142:                                  ; preds = %vector.body135
  %cmp.n143 = icmp eq i64 %i.ac, %n.vec134
  br i1 %cmp.n143, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit.i, label %.lr.ph.i.i.preheader146

.lr.ph.i.i.preheader146:                          ; preds = %.lr.ph.i.i.preheader, %middle.block142
  %.07.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.ad, %middle.block142 ]
  %.sroa.02.06.i.i.ph = phi ptr [ %i.w, %.lr.ph.i.i.preheader ], [ %i.af, %middle.block142 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader146, %.lr.ph.i.i
  %.07.i.i = phi i32 [ %i.aj, %.lr.ph.i.i ], [ %.07.i.i.ph, %.lr.ph.i.i.preheader146 ] ; 2 uses
  %.sroa.02.06.i.i = phi ptr [ %i.ak, %.lr.ph.i.i ], [ %.sroa.02.06.i.i.ph, %.lr.ph.i.i.preheader146 ] ; 2 uses
  store i32 %.07.i.i, ptr %.sroa.02.06.i.i, align 4, !tbaa !220
  %i.aj = add nuw nsw i32 %.07.i.i, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ak, %i.v
  br i1 %.not.i.i, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit.i, label %.lr.ph.i.i, !llvm.loop !2815

_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit.i: ; preds = %.lr.ph.i.i, %middle.block142, %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 448
  tail call void @_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEvT_SA_OT0_(ptr %i.w, ptr %i.v, ptr noundef nonnull align 8 dereferenceable(5000) %i.al)
  %.pre88 = load ptr, ptr %0, align 8, !tbaa !1054
  br label %_ZN3rrr9OptimizerINS_10AndNetworkENS_15BddMspfAnalyzerIS1_EEE14SetRandPiOrderEv.exit

_ZN3rrr9OptimizerINS_10AndNetworkENS_15BddMspfAnalyzerIS1_EEE14SetRandPiOrderEv.exit: ; preds = %bb.d, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit.i
  %i.am = phi ptr [ %i.l, %bb.d ], [ %.pre88, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr %0, ptr %4, align 8, !tbaa !1093
  call void @_ZN3rrr10AndNetwork10SortFaninsIZNS_9OptimizerIS0_NS_15BddMspfAnalyzerIS0_EEE10SortFaninsEiEUliiE1_EEviRKT_(ptr noundef nonnull align 8 dereferenceable(264) %i.am, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.ae

end_hunk_1
begin_hunk_2_@_ZN3rrr9OptimizerINS_10AndNetworkENS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEE35ApplyCombinationSampledRandomlyStopEiiRKSt8functionIFbRKSt6vectorIiSaIiEEEE:bb.a
  call void @_ZdlPvm(ptr noundef nonnull %i.fe, i64 noundef %i.fi) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  br i1 %i.ab, label %bb.o, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #27
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i28, label %._crit_edge56, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.fj = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #29 ; 9 uses
  store ptr %i.fj, ptr %6, align 8, !tbaa !224
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.aa
  store ptr %i.fk, ptr %i.ad, align 8, !tbaa !222
  store i32 0, ptr %i.fj, align 4, !tbaa !220
  %i.fl = getelementptr i8, ptr %i.fj, i64 4      ; 3 uses
  br i1 %i.af, label %.lr.ph55, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %bb.p
  call void @llvm.memset.p0.i64(ptr align 4 %i.fl, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !220
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %.idx.i.i.i.i.i.i.i
  br label %.lr.ph55

.lr.ph55:                                         ; preds = %bb.p, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %.0.i.i.i.i.i.ph = phi ptr [ %i.fm, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.fl, %bb.p ]
  store ptr %.0.i.i.i.i.i.ph, ptr %i.ag, align 8, !tbaa !223
  br i1 %i.an, label %.epil.preheader, label %.lr.ph55.new

._crit_edge56.loopexit.unr-lcssa:                 ; preds = %.lr.ph55.new
  br i1 %lcmp.mod.not, label %._crit_edge56, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge56.loopexit.unr-lcssa, %.lr.ph55
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph55 ], [ %indvars.iv.next.3, %._crit_edge56.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod100)
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.q ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.q ]
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.037.0, i64 %indvars.iv.epil
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !220
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.fp
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !220
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %indvars.iv.epil
  store i32 %i.fr, ptr %i.fs, align 4, !tbaa !220
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge56, label %bb.q, !llvm.loop !3460

._crit_edge56:                                    ; preds = %._crit_edge56.loopexit.unr-lcssa, %bb.q, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ft = load ptr, ptr %i.ai, align 8, !tbaa !212
  %.not.i.i29 = icmp eq ptr %i.ft, null
  br i1 %.not.i.i29, label %bb.r, label %_ZNKSt8functionIFbRKSt6vectorIiSaIiEEEEclES4_.exit

bb.r:                                             ; preds = %._crit_edge56
  call void @_ZSt25__throw_bad_function_callv() #27
  unreachable

_ZNKSt8functionIFbRKSt6vectorIiSaIiEEEEclES4_.exit: ; preds = %._crit_edge56
  %i.fu = load ptr, ptr %i.aj, align 8, !tbaa !217
  %i.fv = call noundef zeroext i1 %i.fu(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %6) #26, !inline_history !1
  %i.fw = load ptr, ptr %6, align 8, !tbaa !224   ; 3 uses
  %.not.i.i.i30 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i.i30, label %_ZNSt6vectorIiSaIiEED2Ev.exit31, label %bb.s

bb.s:                                             ; preds = %_ZNKSt8functionIFbRKSt6vectorIiSaIiEEEEclES4_.exit
  %i.fx = load ptr, ptr %i.ad, align 8, !tbaa !222
  %i.fy = ptrtoint ptr %i.fx to i64
  %i.fz = ptrtoint ptr %i.fw to i64
  %i.ga = sub i64 %i.fy, %i.fz
  call void @_ZdlPvm(ptr noundef nonnull %i.fw, i64 noundef %i.ga) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit31

_ZNSt6vectorIiSaIiEED2Ev.exit31:                  ; preds = %_ZNKSt8functionIFbRKSt6vectorIiSaIiEEEEclES4_.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %.not.i.i.i32 = icmp eq ptr %.sroa.037.0, null
  br i1 %.not.i.i.i32, label %_ZNSt6vectorIiSaIiEED2Ev.exit33, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit31
  %i.gb = sub i64 %.sroa.13.0, %i.et
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.037.0, i64 noundef %i.gb) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit33

_ZNSt6vectorIiSaIiEED2Ev.exit33:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit31, %bb.t
  %i.gc = load ptr, ptr %i.q, align 8, !tbaa !276
  call void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.gc)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br i1 %i.fv, label %_ZNSt6vectorIiSaIiEED2Ev.exit33._ZN3rrr9OptimizerINS_10AndNetworkENS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEE7TimeoutEv.exit.thread_crit_edge, label %bb.c, !llvm.loop !3456

.lr.ph55.new:                                     ; preds = %.lr.ph55, %.lr.ph55.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph55.new ], [ 0, %.lr.ph55 ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph55.new ], [ 0, %.lr.ph55 ]
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.037.0, i64 %indvars.iv
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !220
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.gf
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !220
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %indvars.iv
  store i32 %i.gh, ptr %i.gi, align 4, !tbaa !220
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.037.0, i64 %indvars.iv.next
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !220
  %i.gl = sext i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.gl
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !220
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %indvars.iv.next
  store i32 %i.gn, ptr %i.go, align 4, !tbaa !220
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.037.0, i64 %indvars.iv.next.1
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !220
  %i.gr = sext i32 %i.gq to i64
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.gr
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !220
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %indvars.iv.next.1
  store i32 %i.gt, ptr %i.gu, align 4, !tbaa !220
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.037.0, i64 %indvars.iv.next.2
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !220
  %i.gx = sext i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.gx
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !220
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %indvars.iv.next.2
  store i32 %i.gz, ptr %i.ha, align 4, !tbaa !220
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge56.loopexit.unr-lcssa, label %.lr.ph55.new, !llvm.loop !3461

_ZNSt6vectorIiSaIiEED2Ev.exit33._ZN3rrr9OptimizerINS_10AndNetworkENS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEE7TimeoutEv.exit.thread_crit_edge: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit33
  br label %_ZN3rrr9OptimizerINS_10AndNetworkENS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEE7TimeoutEv.exit.thread, !llvm.loop !3456

_ZN3rrr9OptimizerINS_10AndNetworkENS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEE7TimeoutEv.exit.thread: ; preds = %bb.c, %bb.d, %_ZNSt6vectorIiSaIiEED2Ev.exit33._ZN3rrr9OptimizerINS_10AndNetworkENS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEE7TimeoutEv.exit.thread_crit_edge, %_ZNK3rrr10AndNetwork7GetIntsEv.exit
  %.not.i.i.i34 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i34, label %_ZNSt6vectorIiSaIiEED2Ev.exit35, label %bb.u

bb.u:                                             ; preds = %_ZN3rrr9OptimizerINS_10AndNetworkENS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEE7TimeoutEv.exit.thread
  %.idx = shl nuw nsw i64 %i.e, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %.idx) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit35

_ZNSt6vectorIiSaIiEED2Ev.exit35:                  ; preds = %_ZN3rrr9OptimizerINS_10AndNetworkENS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEE7TimeoutEv.exit.thread, %bb.u
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN3rrr9OptimizerINS_10AndNetworkENS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEE6ReduceEb(ptr noundef nonnull align 8 dereferenceable(5848) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #26
  %i.b = load ptr, ptr %0, align 8, !tbaa !1164   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !231, !noalias !3466 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.f = load i64, ptr %i.e, align 8, !tbaa !274, !noalias !3466 ; 4 uses
  %i.g = icmp ugt i64 %i.f, 2305843009213693951
  br i1 %i.g, label %bb.b, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #27, !noalias !3466
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i: ; preds = %bb.a
  %.not.i7.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i7.i.i.i, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.h = shl nuw nsw i64 %i.f, 2
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #29, !noalias !3466
  br label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i: ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.j = phi ptr [ %i.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i ] ; 4 uses
  %.not6.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not6.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.j, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.d, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.l = load i32, ptr %i.k, align 4, !tbaa !220, !noalias !3466
  store i32 %i.l, ptr %.08.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !220, !noalias !3466
  %i.m = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.n = load ptr, ptr %.sroa.03.07.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !231, !noalias !3466 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.c
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !48

.lr.ph:                                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.o = load ptr, ptr %0, align 8, !tbaa !1164
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !276
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %._crit_edge, label %.lr.ph.split

._crit_edge:                                      ; preds = %_ZNK3rrr10AndNetwork5IsIntEi.exit.thread, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i, %.lr.ph
  %.0.lcssa = phi i1 [ false, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i ], [ false, %.lr.ph ], [ %.1, %_ZNK3rrr10AndNetwork5IsIntEi.exit.thread ]
  br i1 %1, label %bb.h, label %bb.g

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNK3rrr10AndNetwork5IsIntEi.exit.thread
  %.021 = phi i1 [ %.1, %_ZNK3rrr10AndNetwork5IsIntEi.exit.thread ], [ false, %.lr.ph ] ; 5 uses
  %.sroa.08.020 = phi ptr [ %i.t, %_ZNK3rrr10AndNetwork5IsIntEi.exit.thread ], [ %i.m, %.lr.ph ]
  %i.s = load ptr, ptr %0, align 8, !tbaa !1164   ; 4 uses
  %i.t = getelementptr inbounds i8, ptr %.sroa.08.020, i64 -4 ; 4 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !220  ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !276  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 64 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not10.i.i.i.i, label %_ZNK3rrr10AndNetwork5IsIntEi.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.split, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.w, %.lr.ph.split ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.x, %.lr.ph.split ]
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.z = load i32, ptr %i.y, align 4, !tbaa !220
  %i.aa = icmp slt i32 %i.z, %i.u                 ; 2 uses
  %.19.i.i.i.i = select i1 %i.aa, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i = select i1 %i.aa, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !279 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !16

_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ab = icmp eq ptr %.19.i.i.i.i, %i.x
  br i1 %i.ab, label %_ZNK3rrr10AndNetwork5IsIntEi.exit.thread, label %_ZNK3rrr10AndNetwork5IsIntEi.exit

_ZNK3rrr10AndNetwork5IsIntEi.exit:                ; preds = %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !220
  %.not18 = icmp slt i32 %i.u, %i.ad
  br i1 %.not18, label %_ZNK3rrr10AndNetwork5IsIntEi.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK3rrr10AndNetwork5IsIntEi.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 152
  %i.af = sext i32 %i.u to i64
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !224
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.af
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !220
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN3rrr10AndNetwork12RemoveUnusedEibb(ptr noundef nonnull align 8 dereferenceable(264) %i.s, i32 noundef %i.u, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %_ZNK3rrr10AndNetwork5IsIntEi.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.ak = tail call noundef zeroext i1 @_ZN3rrr9OptimizerINS_10AndNetworkENS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEE12ReduceFaninsEib(ptr noundef nonnull align 8 dereferenceable(5848) %0, i32 noundef %i.u, i1 noundef zeroext false)
  %2 = or i1 %.021, %i.ak                         ; 2 uses
  %i.al = load ptr, ptr %0, align 8, !tbaa !1164  ; 2 uses
  %i.am = load i32, ptr %i.t, align 4, !tbaa !220 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 128
  %i.ao = sext i32 %i.am to i64
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !228
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %i.ao ; 2 uses
  %.val.i = load ptr, ptr %i.aq, align 8, !tbaa !224
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  %.val1.i = load ptr, ptr %i.ar, align 8, !tbaa !223
  %i.as = ptrtoint ptr %.val1.i to i64
  %i.at = ptrtoint ptr %.val.i to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = lshr exact i64 %i.au, 2
  %i.aw = trunc i64 %i.av to i32
  %i.ax = icmp slt i32 %i.aw, 2
  br i1 %i.ax, label %bb.f, label %_ZNK3rrr10AndNetwork5IsIntEi.exit.thread

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN3rrr10AndNetwork9PropagateEi(ptr noundef nonnull align 8 dereferenceable(264) %i.al, i32 noundef %i.am)
  br label %_ZNK3rrr10AndNetwork5IsIntEi.exit.thread

_ZNK3rrr10AndNetwork5IsIntEi.exit.thread:         ; preds = %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i.i, %.lr.ph.split, %bb.e, %bb.f, %_ZNK3rrr10AndNetwork5IsIntEi.exit, %bb.d
  %.1 = phi i1 [ %.021, %bb.d ], [ %2, %bb.f ], [ %2, %bb.e ], [ %.021, %_ZNK3rrr10AndNetwork5IsIntEi.exit ], [ %.021, %.lr.ph.split ], [ %.021, %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i.i ] ; 2 uses
  %.not = icmp eq ptr %i.t, %i.j
  br i1 %.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !3465

bb.g:                                             ; preds = %._crit_edge
  %i.ay = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #26
  %i.az = sub nsw i64 %i.ay, %i.a
  %i.ba = sitofp i64 %i.az to double
  %i.bb = fdiv double %i.ba, 1.000000e+09
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 5840 ; 2 uses
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !1234
  %i.be = fadd double %i.bd, %i.bb
  store double %i.be, ptr %i.bc, align 8, !tbaa !1234
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.idx = shl nuw nsw i64 %i.f, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %.idx) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.h, %bb.i
  ret i1 %.0.lcssa
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3rrr9OptimizerINS_10AndNetworkENS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEE10SortFaninsEi(ptr noundef nonnull align 8 dereferenceable(5848) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %2 = alloca %class.anon.811, align 8            ; 4 uses
  %3 = alloca %class.anon.812, align 8            ; 4 uses
  %4 = alloca %class.anon.813, align 8            ; 4 uses
  %5 = alloca %class.anon.814, align 8            ; 4 uses
  %6 = alloca %class.anon.815, align 8            ; 4 uses
  %7 = alloca %class.anon.816, align 8            ; 4 uses
  %8 = alloca %class.anon.817, align 8            ; 4 uses
  %9 = alloca %class.anon.818, align 8            ; 4 uses
  %10 = alloca %class.anon.819, align 8           ; 4 uses
  %11 = alloca %class.anon.820, align 8           ; 4 uses
  %12 = alloca %class.anon.821, align 8           ; 4 uses
  %13 = alloca %class.anon.822, align 8           ; 4 uses
  %14 = alloca %class.anon.823, align 8           ; 4 uses
  %15 = alloca %class.anon.824, align 8           ; 4 uses
  %16 = alloca %class.anon.825, align 8           ; 4 uses
  %17 = alloca %class.anon.826, align 8           ; 4 uses
  %18 = alloca %class.anon.827, align 8           ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1190
  switch i32 %i.b, label %bb.ae [
    i32 17, label %bb.ad
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.h
    i32 5, label %bb.i
    i32 6, label %bb.j
    i32 7, label %bb.k
    i32 8, label %bb.o
    i32 9, label %bb.p
    i32 10, label %bb.q
    i32 11, label %bb.u
    i32 12, label %bb.v
    i32 13, label %bb.w
    i32 14, label %bb.aa
    i32 15, label %bb.ab
    i32 16, label %bb.ac
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !1164
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store ptr %0, ptr %2, align 8, !tbaa !1236
  call void @_ZN3rrr10AndNetwork10SortFaninsIZNS_9OptimizerIS0_NS_8AnalyzerIS0_NS_9SimulatorIS0_EENS_9SatSolverIS0_EEEEE10SortFaninsEiEUliiE_EEviRKT_(ptr noundef nonnull align 8 dereferenceable(264) %i.c, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.ae

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !1164
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr %0, ptr %3, align 8, !tbaa !1238
  call void @_ZN3rrr10AndNetwork10SortFaninsIZNS_9OptimizerIS0_NS_8AnalyzerIS0_NS_9SimulatorIS0_EENS_9SatSolverIS0_EEEEE10SortFaninsEiEUliiE0_EEviRKT_(ptr noundef nonnull align 8 dereferenceable(264) %i.d, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.ae

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 5656 ; 3 uses
  %.val.i = load ptr, ptr %i.e, align 8, !tbaa !224 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 5664 ; 3 uses
  %.val4.i = load ptr, ptr %i.f, align 8, !tbaa !223 ; 3 uses
  %i.g = ptrtoint ptr %.val4.i to i64
  %i.h = ptrtoint ptr %.val.i to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 2
  %i.k = trunc i64 %i.j to i32
  %i.l = load ptr, ptr %0, align 8, !tbaa !1164   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.val.i.i = load ptr, ptr %i.m, align 8, !tbaa !224
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.val1.i.i = load ptr, ptr %i.n, align 8, !tbaa !223
  %i.o = ptrtoint ptr %.val1.i.i to i64
  %i.p = ptrtoint ptr %.val.i.i to i64            ; 2 uses
  %i.q = sub i64 %i.o, %i.p                       ; 2 uses
  %i.r = lshr exact i64 %i.q, 2
  %i.s = trunc i64 %i.r to i32
  %.not.i = icmp eq i32 %i.k, %i.s
  br i1 %.not.i, label %_ZN3rrr9OptimizerINS_10AndNetworkENS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEE14SetRandPiOrderEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i = icmp eq ptr %.val4.i, %.val.i
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %.val.i, ptr %i.f, align 8, !tbaa !223
  %.val1.i6.pre.i = load ptr, ptr %i.n, align 8, !tbaa !223
  %.pre10.i = ptrtoint ptr %.val1.i6.pre.i to i64
  %.pre11.i = sub i64 %.pre10.i, %i.p
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit.i

_ZNSt6vectorIiSaIiEE5clearEv.exit.i:              ; preds = %bb.f, %bb.e
  %.pre-phi12.i = phi i64 [ %i.q, %bb.e ], [ %.pre11.i, %bb.f ]
  %i.t = phi ptr [ %.val4.i, %bb.e ], [ %.val.i, %bb.f ]
  %sext.i = shl i64 %.pre-phi12.i, 30
  %i.u = ashr i64 %sext.i, 32                     ; 2 uses
  %.not22.i = icmp eq i64 %i.u, 0
  br i1 %.not22.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit.i
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.u)
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !219
  %.pre9.i = load ptr, ptr %i.f, align 8, !tbaa !219
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

_ZNSt6vectorIiSaIiEE6resizeEm.exit.i:             ; preds = %bb.g, %_ZNSt6vectorIiSaIiEE5clearEv.exit.i
  %i.v = phi ptr [ %.pre9.i, %bb.g ], [ %i.t, %_ZNSt6vectorIiSaIiEE5clearEv.exit.i ] ; 4 uses
  %i.w = phi ptr [ %.pre.i, %bb.g ], [ %.val.i, %_ZNSt6vectorIiSaIiEE5clearEv.exit.i ] ; 6 uses
  %.not5.i.i = icmp eq ptr %i.w, %i.v
  br i1 %.not5.i.i, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i
  %i.x = ptrtoaddr ptr %i.v to i64
  %i.y = ptrtoaddr ptr %i.w to i64
  %i.z = add i64 %i.x, -4
  %i.aa = sub i64 %i.z, %i.y                      ; 2 uses
  %i.ab = lshr i64 %i.aa, 2
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check132 = icmp ult i64 %i.aa, 28
  br i1 %min.iters.check132, label %.lr.ph.i.i.preheader146, label %vector.ph133

vector.ph133:                                     ; preds = %.lr.ph.i.i.preheader
  %n.vec134 = and i64 %i.ac, 9223372036854775800  ; 4 uses
  %i.ad = trunc i64 %n.vec134 to i32
  %i.ae = shl i64 %n.vec134, 2
  %i.af = getelementptr i8, ptr %i.w, i64 %i.ae
  br label %vector.body135

vector.body135:                                   ; preds = %vector.body135, %vector.ph133
  %index136 = phi i64 [ 0, %vector.ph133 ], [ %index.next140, %vector.body135 ] ; 2 uses
  %vec.ind137 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph133 ], [ %vec.ind.next141, %vector.body135 ] ; 3 uses
  %step.add138 = add nuw nsw <4 x i32> %vec.ind137, splat (i32 4)
  %i.ag = shl i64 %index136, 2
  %next.gep139 = getelementptr i8, ptr %i.w, i64 %i.ag ; 2 uses
  %i.ah = getelementptr i8, ptr %next.gep139, i64 16
  store <4 x i32> %vec.ind137, ptr %next.gep139, align 4, !tbaa !220
  store <4 x i32> %step.add138, ptr %i.ah, align 4, !tbaa !220
  %index.next140 = add nuw i64 %index136, 8       ; 2 uses
  %vec.ind.next141 = add nuw nsw <4 x i32> %vec.ind137, splat (i32 8)
  %i.ai = icmp eq i64 %index.next140, %n.vec134
  br i1 %i.ai, label %middle.block142, label %vector.body135, !llvm.loop !3467

middle.block142:                                  ; preds = %vector.body135
  %cmp.n143 = icmp eq i64 %i.ac, %n.vec134
  br i1 %cmp.n143, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit.i, label %.lr.ph.i.i.preheader146

.lr.ph.i.i.preheader146:                          ; preds = %.lr.ph.i.i.preheader, %middle.block142
  %.07.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.ad, %middle.block142 ]
  %.sroa.02.06.i.i.ph = phi ptr [ %i.w, %.lr.ph.i.i.preheader ], [ %i.af, %middle.block142 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader146, %.lr.ph.i.i
  %.07.i.i = phi i32 [ %i.aj, %.lr.ph.i.i ], [ %.07.i.i.ph, %.lr.ph.i.i.preheader146 ] ; 2 uses
  %.sroa.02.06.i.i = phi ptr [ %i.ak, %.lr.ph.i.i ], [ %.sroa.02.06.i.i.ph, %.lr.ph.i.i.preheader146 ] ; 2 uses
  store i32 %.07.i.i, ptr %.sroa.02.06.i.i, align 4, !tbaa !220
  %i.aj = add nuw nsw i32 %.07.i.i, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ak, %i.v
  br i1 %.not.i.i, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit.i, label %.lr.ph.i.i, !llvm.loop !3468

_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit.i: ; preds = %.lr.ph.i.i, %middle.block142, %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 576
  tail call void @_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEvT_SA_OT0_(ptr %i.w, ptr %i.v, ptr noundef nonnull align 8 dereferenceable(5000) %i.al)
  %.pre88 = load ptr, ptr %0, align 8, !tbaa !1164
  br label %_ZN3rrr9OptimizerINS_10AndNetworkENS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEE14SetRandPiOrderEv.exit

_ZN3rrr9OptimizerINS_10AndNetworkENS_8AnalyzerIS1_NS_9SimulatorIS1_EENS_9SatSolverIS1_EEEEE14SetRandPiOrderEv.exit: ; preds = %bb.d, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit.i
  %i.am = phi ptr [ %i.l, %bb.d ], [ %.pre88, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr %0, ptr %4, align 8, !tbaa !1240
  call void @_ZN3rrr10AndNetwork10SortFaninsIZNS_9OptimizerIS0_NS_8AnalyzerIS0_NS_9SimulatorIS0_EENS_9SatSolverIS0_EEEEE10SortFaninsEiEUliiE1_EEviRKT_(ptr noundef nonnull align 8 dereferenceable(264) %i.am, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.ae

end_hunk_2
