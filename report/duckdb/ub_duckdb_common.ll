inline.NumInlined: 29988
inline.NumDeleted: 10454
loop-unroll.NumCompletelyUnrolled: 46
loop-unroll.NumRuntimeUnrolled: 385
loop-unroll.NumUnrolled: 431
begin_hunk_0_@_ZN6duckdb10StringUtil19LevenshteinDistanceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_m:bb.a
  %i.cm = icmp eq i64 %index.next172, %n.vec169
  br i1 %i.cm, label %middle.block173, label %vector.body170, !llvm.loop !3438

middle.block173:                                  ; preds = %vector.body170
  %cmp.n174 = icmp eq i64 %i.cd, %n.vec169
  br i1 %cmp.n174, label %.preheader108.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.i, %middle.block173
  %.051109.ph = phi i64 [ 0, %bb.i ], [ %n.vec169, %middle.block173 ]
  br label %scalar.ph

bb.j:                                             ; preds = %bb.h
  %i.cn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.co = load ptr, ptr %4, align 8, !tbaa !16    ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.an
  br i1 %i.cp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.051109 = phi i64 [ %i.cr, %scalar.ph ], [ %.051109.ph, %scalar.ph.preheader ] ; 3 uses
  %i.cq = getelementptr [8 x i8], ptr %i.cj, i64 %.051109
  store i64 %.051109, ptr %i.cq, align 8, !tbaa !33
  %i.cr = add nuw i64 %.051109, 1                 ; 2 uses
  %exitcond = icmp eq i64 %i.cr, %umax
  br i1 %exitcond, label %.preheader108.preheader, label %scalar.ph, !llvm.loop !3439

.preheader108.preheader:                          ; preds = %scalar.ph, %middle.block173
  %umax113 = call i64 @llvm.umax.i64(i64 %i.ce, i64 1) ; 2 uses
  %xtraiter = and i64 %umax113, 3                 ; 3 uses
  %i.cs = icmp ult i64 %i.ce, 4
  br i1 %i.cs, label %.preheader108.epil.preheader, label %.preheader108.preheader.new

.preheader108.preheader.new:                      ; preds = %.preheader108.preheader
  %unroll_iter = and i64 %umax113, -4
  br label %.preheader108

.preheader107.unr-lcssa:                          ; preds = %.preheader108
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader107, label %.preheader108.epil.preheader

.preheader108.epil.preheader:                     ; preds = %.preheader107.unr-lcssa, %.preheader108.preheader
  %.054110.epil.init = phi i64 [ 0, %.preheader108.preheader ], [ %i.dj, %.preheader107.unr-lcssa ]
  %lcmp.mod175 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod175)
  br label %.preheader108.epil

.preheader108.epil:                               ; preds = %.preheader108.epil, %.preheader108.epil.preheader
  %.054110.epil = phi i64 [ %i.cv, %.preheader108.epil ], [ %.054110.epil.init, %.preheader108.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader108.epil ], [ 0, %.preheader108.epil.preheader ]
  %i.ct = mul i64 %.054110.epil, %i.cd
  %i.cu = getelementptr [8 x i8], ptr %i.cj, i64 %i.ct
  store i64 %.054110.epil, ptr %i.cu, align 8, !tbaa !33
  %i.cv = add nuw i64 %.054110.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader107, label %.preheader108.epil, !llvm.loop !3440

.preheader107:                                    ; preds = %.preheader108.epil, %.preheader107.unr-lcssa
  %i.cw = load ptr, ptr %3, align 8, !tbaa !16
  %i.cx = load ptr, ptr %4, align 8, !tbaa !16
  %umax115 = call i64 @llvm.umax.i64(i64 %i.ce, i64 2)
  %umax117 = call i64 @llvm.umax.i64(i64 %i.cd, i64 2)
  br label %.preheader

.preheader108:                                    ; preds = %.preheader108, %.preheader108.preheader.new
  %.054110 = phi i64 [ 0, %.preheader108.preheader.new ], [ %i.dj, %.preheader108 ] ; 6 uses
  %niter = phi i64 [ 0, %.preheader108.preheader.new ], [ %niter.next.3, %.preheader108 ]
  %i.cy = mul i64 %.054110, %i.cd
  %i.cz = getelementptr [8 x i8], ptr %i.cj, i64 %i.cy
  store i64 %.054110, ptr %i.cz, align 8, !tbaa !33
  %i.da = or disjoint i64 %.054110, 1             ; 2 uses
  %i.db = mul i64 %i.da, %i.cd
  %i.dc = getelementptr [8 x i8], ptr %i.cj, i64 %i.db
  store i64 %i.da, ptr %i.dc, align 8, !tbaa !33
  %i.dd = or disjoint i64 %.054110, 2             ; 2 uses
  %i.de = mul i64 %i.dd, %i.cd
  %i.df = getelementptr [8 x i8], ptr %i.cj, i64 %i.de
  store i64 %i.dd, ptr %i.df, align 8, !tbaa !33
  %i.dg = or disjoint i64 %.054110, 3             ; 2 uses
  %i.dh = mul i64 %i.dg, %i.cd
  %i.di = getelementptr [8 x i8], ptr %i.cj, i64 %i.dh
  store i64 %i.dg, ptr %i.di, align 8, !tbaa !33
  %i.dj = add nuw i64 %.054110, 4                 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader107.unr-lcssa, label %.preheader108, !llvm.loop !3441

.preheader:                                       ; preds = %.preheader107, %bb.k
  %.053112 = phi i64 [ 1, %.preheader107 ], [ %i.dm, %bb.k ] ; 4 uses
  %i.dk = add i64 %.053112, -1                    ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.dk
  %.pre = load i8, ptr %i.dl, align 1, !tbaa !79
  br label %bb.l

bb.k:                                             ; preds = %bb.l
  %i.dm = add nuw i64 %.053112, 1                 ; 2 uses
  %exitcond118 = icmp eq i64 %i.dm, %umax117
  br i1 %exitcond118, label %_ZN6duckdb16LevenshteinArrayD2Ev.exit, label %.preheader, !llvm.loop !3442

bb.l:                                             ; preds = %.preheader, %bb.l
  %.052111 = phi i64 [ 1, %.preheader ], [ %i.ei, %bb.l ] ; 3 uses
  %i.dn = add i64 %.052111, -1                    ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !79
  %i.dq = icmp eq i8 %.pre, %i.dp
  %i.dr = select i1 %i.dq, i64 0, i64 %2
  %i.ds = mul i64 %.052111, %i.cd
  %i.dt = getelementptr [8 x i8], ptr %i.cj, i64 %i.ds ; 2 uses
  %i.du = getelementptr [8 x i8], ptr %i.dt, i64 %i.dk
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !33
  %i.dw = add i64 %i.dv, 1
  %i.dx = mul i64 %i.dn, %i.cd
  %i.dy = getelementptr [8 x i8], ptr %i.cj, i64 %i.dx ; 2 uses
  %i.dz = getelementptr [8 x i8], ptr %i.dy, i64 %.053112
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !33
  %i.eb = getelementptr [8 x i8], ptr %i.dy, i64 %i.dk
  %i.ec = add i64 %i.ea, 1
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !33
  %i.ee = add i64 %i.ed, %i.dr
  %i.ef = call noundef i64 @llvm.umin.i64(i64 %i.dw, i64 %i.ec)
  %i.eg = call noundef i64 @llvm.umin.i64(i64 %i.ef, i64 %i.ee)
  %i.eh = getelementptr [8 x i8], ptr %i.dt, i64 %.053112
  store i64 %i.eg, ptr %i.eh, align 8, !tbaa !33
  %i.ei = add nuw i64 %.052111, 1                 ; 2 uses
  %exitcond116 = icmp eq i64 %i.ei, %umax115
  br i1 %exitcond116, label %bb.k, label %bb.l, !llvm.loop !3443

_ZN6duckdb16LevenshteinArrayD2Ev.exit:            ; preds = %bb.k
  %i.ej = mul i64 %i.cd, %.pr
  %i.ek = getelementptr [8 x i8], ptr %i.cj, i64 %i.ej
  %i.el = getelementptr [8 x i8], ptr %i.ek, i64 %i.by
  %i.em = load i64, ptr %i.el, align 8, !tbaa !33
  call void @_ZdaPv(ptr noundef nonnull %i.cj) #60
  br label %.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.j
  %i.en = icmp ult i64 %.pr, 16
  call void @llvm.assume(i1 %i.en)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.co) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.thread:                                          ; preds = %_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit76.thread, %bb.g, %_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit76, %_ZN6duckdb16LevenshteinArrayD2Ev.exit
  %.0 = phi i64 [ %i.em, %_ZN6duckdb16LevenshteinArrayD2Ev.exit ], [ %.pr, %_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit76 ], [ %i.by, %bb.g ], [ %i.ca, %_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit76.thread ]
  %i.eo = load ptr, ptr %4, align 8, !tbaa !16    ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.an
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %.thread
  call void @_ZdlPv(ptr noundef %i.eo) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  %i.eq = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.er = icmp eq ptr %i.eq, %i.c
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84
  call void @_ZdlPv(ptr noundef %i.eq) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  ret i64 %.0

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %bb.f
  %.pn63.pn.pn = phi { ptr, i32 } [ %i.cb, %bb.f ], [ %i.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ], [ %i.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  %i.es = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.c
  br i1 %i.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.es) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  resume { ptr, i32 } %.pn63.pn.pn
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN6duckdb10StringUtil15SimilarityScoreERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noundef i64 @_ZN6duckdb10StringUtil19LevenshteinDistanceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_m(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 3)
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef double @_ZN6duckdb10StringUtil16SimilarityRatingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16     ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !139  ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !16     ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !139  ; 2 uses
  %.sroa.speculated45.i.i.a = tail call i64 @llvm.smin.i64(i64 %i.f, i64 %i.c) ; 5 uses
  %i.g = icmp sgt i64 %.sroa.speculated45.i.i.a, 0
  br i1 %i.g, label %.lr.ph.preheader.i.i, label %_ZN19duckdb_jaro_winkler23jaro_winkler_similarityIPKcS2_EENSt9enable_ifIXaasr6common11is_iteratorIT_EE5valuesr6common11is_iteratorIT0_EE5valueEdE4typeES4_S4_S5_S5_dd.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %2 = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated45.i.i.a, i64 4) ; 4 uses
  %i.h = load i8, ptr %i.d, align 1, !tbaa !79
  %i.i = load i8, ptr %i.a, align 1, !tbaa !79
  %.not.i.i = icmp eq i8 %i.h, %i.i
  br i1 %.not.i.i, label %bb.b, label %._crit_edge.loopexit.i.i

bb.b:                                             ; preds = %.lr.ph.preheader.i.i
  %exitcond.not.i.i = icmp eq i64 %.sroa.speculated45.i.i.a, 1
  br i1 %exitcond.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !79
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !79
  %.not.i.i.1 = icmp eq i8 %i.k, %i.m
  br i1 %.not.i.i.1, label %bb.c, label %._crit_edge.loopexit.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.1
  %exitcond.not.i.i.1 = icmp eq i64 %.sroa.speculated45.i.i.a, 2
  br i1 %exitcond.not.i.i.1, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.o = load i8, ptr %i.n, align 1, !tbaa !79
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.q = load i8, ptr %i.p, align 1, !tbaa !79
  %.not.i.i.2 = icmp eq i8 %i.o, %i.q
  br i1 %.not.i.i.2, label %bb.d, label %._crit_edge.loopexit.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.2
  %exitcond.not.i.i.2 = icmp eq i64 %.sroa.speculated45.i.i.a, 3
  br i1 %exitcond.not.i.i.2, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.3

.lr.ph.i.i.3:                                     ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %i.s = load i8, ptr %i.r, align 1, !tbaa !79
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.u = load i8, ptr %i.t, align 1, !tbaa !79
  %.not.i.i.3 = icmp eq i8 %i.s, %i.u
  %spec.select = select i1 %.not.i.i.3, i64 %2, i64 3
  br label %._crit_edge.loopexit.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.3, %bb.d, %.lr.ph.i.i.2, %bb.c, %.lr.ph.i.i.1, %bb.b, %.lr.ph.preheader.i.i
  %.030.lcssa.ph.i.i = phi i64 [ %2, %bb.b ], [ 0, %.lr.ph.preheader.i.i ], [ 1, %.lr.ph.i.i.1 ], [ %2, %bb.c ], [ 2, %.lr.ph.i.i.2 ], [ %2, %bb.d ], [ %spec.select, %.lr.ph.i.i.3 ]
  %i.v = uitofp nneg i64 %.030.lcssa.ph.i.i to double
  %i.w = fmul nnan double %i.v, 1.000000e-01
  br label %_ZN19duckdb_jaro_winkler23jaro_winkler_similarityIPKcS2_EENSt9enable_ifIXaasr6common11is_iteratorIT_EE5valuesr6common11is_iteratorIT0_EE5valueEdE4typeES4_S4_S5_S5_dd.exit

_ZN19duckdb_jaro_winkler23jaro_winkler_similarityIPKcS2_EENSt9enable_ifIXaasr6common11is_iteratorIT_EE5valuesr6common11is_iteratorIT0_EE5valueEdE4typeES4_S4_S5_S5_dd.exit: ; preds = %bb.a, %._crit_edge.loopexit.i.i
  %.030.lcssa.i.i = phi double [ 0.000000e+00, %bb.a ], [ %i.w, %._crit_edge.loopexit.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c
  %i.z = tail call noundef double @_ZN19duckdb_jaro_winkler6detail15jaro_similarityIPKcS3_EEdT_S4_T0_S5_d(ptr noundef %i.a, ptr noundef %i.y, ptr noundef %i.d, ptr noundef %i.x, double noundef 0.000000e+00) ; 4 uses
  %i.aa = fcmp ogt double %i.z, f0x3FE6666666666666
  %i.ab = fsub double 1.000000e+00, %i.z
  %i.ac = tail call double @llvm.fmuladd.f64(double %.030.lcssa.i.i, double %i.ab, double %i.z)
  %.0.i.i = select i1 %i.aa, double %i.ac, double %i.z ; 2 uses
  %i.ad = fcmp oge double %.0.i.i, 0.000000e+00
  %i.ae = select i1 %i.ad, double %.0.i.i, double 0.000000e+00
  ret double %i.ae
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb10StringUtil15TopNLevenshteinERKNS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS7_EEERKS7_mm(ptr dead_on_unwind noalias writable sret(%"class.duckdb::vector.33") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.duckdb::vector.1902", align 8 ; 15 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !109  ; 4 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !112    ; 4 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 5                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, 230584300921369395
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2128) #59
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %.not65 = icmp eq ptr %i.g, %i.h
  br i1 %.not65, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmESaIS7_EE7reserveEm.exit, label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmESaIS7_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmESaIS7_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = mul nuw nsw i64 %i.l, 40
  %i.p = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #64
          to label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmESaIS7_EE13_M_deallocateEPS7_m.exit.i unwind label %bb.d ; 3 uses

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmESaIS7_EE13_M_deallocateEPS7_m.exit.i: ; preds = %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmESaIS7_EE11_M_allocateEm.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.p, ptr %5, align 8, !tbaa !3444
  store ptr %i.p, ptr %i.q, align 8, !tbaa !3446
  %i.r = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %i.l
  store ptr %i.r, ptr %i.n, align 8, !tbaa !3447
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmESaIS7_EE7reserveEm.exit

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmESaIS7_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmESaIS7_EE13_M_deallocateEPS7_m.exit.i, %bb.c
  %.not44 = icmp eq ptr %i.h, %i.g
  br i1 %.not44, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmESaIS7_EE7reserveEm.exit
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.e

._crit_edge:                                      ; preds = %bb.v, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmESaIS7_EE7reserveEm.exit
  invoke void @_ZN6duckdb10StringUtil11TopNStringsERKNS_6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1ESaIS9_EEEmm(ptr dead_on_unwind writable sret(%"class.duckdb::vector.33") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %3, i64 noundef %4)
          to label %bb.w unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmESaIS7_EE11_M_allocateEm.exit.i, %bb.b, %._crit_edge
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.e:                                             ; preds = %.lr.ph, %bb.v
  %.sroa.039.045 = phi ptr [ %i.h, %.lr.ph ], [ %i.cd, %bb.v ] ; 8 uses
  %i.x = load i64, ptr %i.s, align 8, !tbaa !139  ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.039.045, i64 8 ; 3 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !139
  %i.aa = icmp ult i64 %i.x, %i.z
  br i1 %i.aa, label %bb.f, label %bb.p

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #58
  call void @llvm.experimental.noalias.scope.decl(metadata !3448)
  store ptr %i.u, ptr %6, align 8, !tbaa !178, !alias.scope !3448
  %i.ab = load ptr, ptr %.sroa.039.045, align 8, !tbaa !16, !noalias !3448 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #58, !noalias !3448
  store i64 %i.x, ptr %i.c, align 8, !tbaa !33, !noalias !3448
  %i.ac = icmp ugt i64 %i.x, 15
  br i1 %i.ac, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %bb.f
  %i.ad = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc23 unwind label %bb.n   ; 2 uses

.noexc23:                                         ; preds = %.noexc10.i.i
  store ptr %i.ad, ptr %6, align 8, !tbaa !16, !alias.scope !3448
  %i.ae = load i64, ptr %i.c, align 8, !tbaa !33, !noalias !3448
  store i64 %i.ae, ptr %i.u, align 8, !tbaa !79, !alias.scope !3448
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc23, %bb.f
  %i.af = phi ptr [ %i.ad, %.noexc23 ], [ %i.u, %bb.f ] ; 2 uses
  switch i64 %i.x, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.ag = load i8, ptr %i.ab, align 1, !tbaa !79
  store i8 %i.ag, ptr %i.af, align 1, !tbaa !79
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 1 %i.ab, i64 %i.x, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i
  %i.ah = load i64, ptr %i.c, align 8, !tbaa !33, !noalias !3448 ; 2 uses
  store i64 %i.ah, ptr %i.v, align 8, !tbaa !139, !alias.scope !3448
  %i.ai = load ptr, ptr %6, align 8, !tbaa !16, !alias.scope !3448
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ah
  store i8 0, ptr %i.aj, align 1, !tbaa !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #58, !noalias !3448
  %i.ak = invoke noundef i64 @_ZN6duckdb10StringUtil19LevenshteinDistanceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_m(ptr noundef nonnull readonly align 8 dereferenceable(32) %6, ptr noundef nonnull readonly align 8 dereferenceable(32) %2, i64 noundef 3)
          to label %_ZN6duckdb10StringUtil15SimilarityScoreERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit unwind label %bb.o

_ZN6duckdb10StringUtil15SimilarityScoreERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit: ; preds = %bb.i
  store i64 %i.ak, ptr %i.d, align 8, !tbaa !33
  %i.al = load ptr, ptr %i.t, align 8, !tbaa !3446 ; 9 uses
  %i.am = load ptr, ptr %i.n, align 8, !tbaa !3447
  %.not.i = icmp eq ptr %i.al, %i.am
  br i1 %.not.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %_ZN6duckdb10StringUtil15SimilarityScoreERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 3 uses
  store ptr %i.an, ptr %i.al, align 8, !tbaa !178
  %i.ao = load ptr, ptr %.sroa.039.045, align 8, !tbaa !16 ; 2 uses
  %i.ap = load i64, ptr %i.y, align 8, !tbaa !139 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #58
  store i64 %i.ap, ptr %i.b, align 8, !tbaa !33
  %i.aq = icmp ugt i64 %i.ap, 15
  br i1 %i.aq, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.j
  %i.ar = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.al, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc25 unwind label %bb.o   ; 2 uses

.noexc25:                                         ; preds = %.noexc.i.i.i
  store ptr %i.ar, ptr %i.al, align 8, !tbaa !16
  %i.as = load i64, ptr %i.b, align 8, !tbaa !33
  store i64 %i.as, ptr %i.an, align 8, !tbaa !79
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc25, %bb.j
  %i.at = phi ptr [ %i.ar, %.noexc25 ], [ %i.an, %bb.j ] ; 2 uses
  switch i64 %i.ap, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEC2IRKS5_mTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_.exit.i
  ]

bb.k:                                             ; preds = %._crit_edge.i.i.i.i
  %i.au = load i8, ptr %i.ao, align 1, !tbaa !79
  store i8 %i.au, ptr %i.at, align 1, !tbaa !79
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEC2IRKS5_mTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_.exit.i

bb.l:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr align 1 %i.ao, i64 %i.ap, i1 false)
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEC2IRKS5_mTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_.exit.i

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEC2IRKS5_mTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_.exit.i: ; preds = %bb.l, %bb.k, %._crit_edge.i.i.i.i
  %i.av = load i64, ptr %i.b, align 8, !tbaa !33  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !139
  %i.ax = load ptr, ptr %i.al, align 8, !tbaa !16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.av
  store i8 0, ptr %i.ay, align 1, !tbaa !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.ba = load i64, ptr %i.d, align 8, !tbaa !33
  store i64 %i.ba, ptr %i.az, align 8, !tbaa !3416
  %i.bb = load ptr, ptr %i.t, align 8, !tbaa !3446
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  store ptr %i.bc, ptr %i.t, align 8, !tbaa !3446
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmESaIS7_EE12emplace_backIJRKS6_mEEEvDpOT_.exit

bb.m:                                             ; preds = %_ZN6duckdb10StringUtil15SimilarityScoreERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit
end_hunk_0
begin_hunk_1_@_ZN6duckdb10StringUtil15TopNLevenshteinERKNS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS7_EEERKS7_mm:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  call void @_ZdlPv(ptr noundef %i.ch) #60
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ck, %i.cg
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3451

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !3444
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmES7_EvT_S9_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, %bb.w
  %i.cl = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i ], [ %i.ce, %bb.w ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmESaIS7_EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmES7_EvT_S9_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.cl) #60
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmESaIS7_EED2Ev.exit

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmES7_EvT_S9_RSaIT0_E.exit.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  ret void

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %bb.u, %bb.d
  %.pn.pn.pn = phi { ptr, i32 } [ %i.w, %bb.d ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ], [ %i.cc, %bb.u ]
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !3444   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3446 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmES7_EvT_S9_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.g, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  tail call void @_ZdlPv(ptr noundef %i.d) #60
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEEvPT_.exit.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmES7_EvT_S9_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !3451

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmES7_EvT_S9_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !3444
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmES7_EvT_S9_RSaIT0_E.exit

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmES7_EvT_S9_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmES7_EvT_S9_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.h = phi ptr [ %.pr, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmES7_EvT_S9_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmESaIS7_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmES7_EvT_S9_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #60
  br label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmESaIS7_EED2Ev.exit

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmES7_EvT_S9_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb10StringUtil15TopNJaroWinklerERKNS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS7_EEERKS7_md(ptr dead_on_unwind noalias writable sret(%"class.duckdb::vector.33") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, i64 noundef %3, double noundef %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.duckdb::vector.1891", align 8 ; 15 uses
  %i.b = alloca double, align 8                   ; 6 uses
  %6 = alloca %"class.duckdb::vector.1891", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !109  ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !112    ; 4 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 5                   ; 3 uses
  %i.j = icmp ugt i64 %i.i, 230584300921369395
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2128) #59
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %.not63 = icmp eq ptr %i.d, %i.e
  br i1 %.not63, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE7reserveEm.exit, label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.l = mul nuw nsw i64 %i.i, 40
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #64
          to label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE13_M_deallocateEPS7_m.exit.i unwind label %bb.g ; 4 uses

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE13_M_deallocateEPS7_m.exit.i: ; preds = %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE11_M_allocateEm.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.m, ptr %5, align 8, !tbaa !3408
  store ptr %i.m, ptr %i.n, align 8, !tbaa !3410
  %i.o = getelementptr inbounds nuw [40 x i8], ptr %i.m, i64 %i.i
  store ptr %i.o, ptr %i.k, align 8, !tbaa !3418
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE7reserveEm.exit

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE13_M_deallocateEPS7_m.exit.i, %bb.c
  %i.p = phi ptr [ %i.m, %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE13_M_deallocateEPS7_m.exit.i ], [ null, %bb.c ] ; 2 uses
  %.not37 = icmp eq ptr %i.e, %i.d
  br i1 %.not37, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE7reserveEm.exit
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %.noexc15

.lr.ph:                                           ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE7reserveEm.exit
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE12emplace_backIJRKS6_dEEEvDpOT_.exit
  %.pre = load ptr, ptr %i.s, align 8, !tbaa !3410 ; 4 uses
  %.pre39 = load ptr, ptr %5, align 8, !tbaa !3408 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.u = ptrtoint ptr %.pre to i64
  %i.v = ptrtoint ptr %.pre39 to i64
  %i.w = sub i64 %i.u, %i.v                       ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i13 = icmp eq ptr %.pre, %.pre39
  br i1 %.not.i.i.i.i.i13, label %.noexc15, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.x = sdiv exact i64 %i.w, 40
  %i.y = icmp ugt i64 %i.x, 230584300921369395
  br i1 %i.y, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEE8allocateEmPKv.exit.i.i.i.i.i, !prof !81

.noexc.i.i.i:                                     ; preds = %bb.d
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #59
          to label %.noexc14 unwind label %bb.g

.noexc14:                                         ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.d
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #64
          to label %.noexc15 unwind label %bb.g

.noexc15:                                         ; preds = %._crit_edge.thread, %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEE8allocateEmPKv.exit.i.i.i.i.i, %._crit_edge
  %i.aa = phi i64 [ 0, %._crit_edge ], [ %i.w, %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEE8allocateEmPKv.exit.i.i.i.i.i ], [ 0, %._crit_edge.thread ]
  %i.ab = phi ptr [ %i.t, %._crit_edge ], [ %i.t, %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.q, %._crit_edge.thread ]
  %i.ac = phi ptr [ %.pre, %._crit_edge ], [ %.pre, %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.p, %._crit_edge.thread ]
  %i.ad = phi ptr [ %.pre39, %._crit_edge ], [ %.pre39, %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.p, %._crit_edge.thread ]
  %i.ae = phi ptr [ null, %._crit_edge ], [ %i.z, %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEE8allocateEmPKv.exit.i.i.i.i.i ], [ null, %._crit_edge.thread ] ; 4 uses
  store ptr %i.ae, ptr %6, align 8, !tbaa !3408
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !3410
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aa
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !3418
  %i.ai = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESt6vectorIS9_SaIS9_EEEEPS9_ET0_T_SI_SH_(ptr %i.ad, ptr %i.ac, ptr noundef %i.ae)
          to label %bb.r unwind label %bb.e

bb.e:                                             ; preds = %.noexc15
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ak = load ptr, ptr %6, align 8, !tbaa !3408  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i, label %.body, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZdlPv(ptr noundef nonnull %i.ak) #60
  br label %.body

bb.g:                                             ; preds = %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i, %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE11_M_allocateEm.exit.i, %bb.b
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.h:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE12emplace_backIJRKS6_dEEEvDpOT_.exit
  %.sroa.034.038 = phi ptr [ %i.e, %.lr.ph ], [ %i.ci, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE12emplace_backIJRKS6_dEEEvDpOT_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #58
  %i.am = load ptr, ptr %.sroa.034.038, align 8, !tbaa !16 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.034.038, i64 8 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !139 ; 2 uses
  %i.ap = load ptr, ptr %2, align 8, !tbaa !16    ; 6 uses
  %i.aq = load i64, ptr %i.r, align 8, !tbaa !139 ; 2 uses
  %.sroa.speculated45.i.i.i.a = call i64 @llvm.smin.i64(i64 %i.aq, i64 %i.ao) ; 5 uses
  %i.ar = icmp sgt i64 %.sroa.speculated45.i.i.i.a, 0
  br i1 %i.ar, label %.lr.ph.preheader.i.i.i, label %_ZN19duckdb_jaro_winkler23jaro_winkler_similarityIPKcS2_EENSt9enable_ifIXaasr6common11is_iteratorIT_EE5valuesr6common11is_iteratorIT0_EE5valueEdE4typeES4_S4_S5_S5_dd.exit.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.h
  %7 = call i64 @llvm.umin.i64(i64 %.sroa.speculated45.i.i.i.a, i64 4) ; 4 uses
  %i.as = load i8, ptr %i.ap, align 1, !tbaa !79
  %i.at = load i8, ptr %i.am, align 1, !tbaa !79
  %.not.i.i.i = icmp eq i8 %i.as, %i.at
  br i1 %.not.i.i.i, label %bb.i, label %._crit_edge.loopexit.i.i.i

bb.i:                                             ; preds = %.lr.ph.preheader.i.i.i
  %exitcond.not.i.i.i = icmp eq i64 %.sroa.speculated45.i.i.i.a, 1
  br i1 %exitcond.not.i.i.i, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %i.av = load i8, ptr %i.au, align 1, !tbaa !79
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !79
  %.not.i.i.i.1 = icmp eq i8 %i.av, %i.ax
  br i1 %.not.i.i.i.1, label %bb.j, label %._crit_edge.loopexit.i.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i.1
  %exitcond.not.i.i.i.1 = icmp eq i64 %.sroa.speculated45.i.i.i.a, 2
  br i1 %exitcond.not.i.i.i.1, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i.2

.lr.ph.i.i.i.2:                                   ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !79
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !79
  %.not.i.i.i.2 = icmp eq i8 %i.az, %i.bb
  br i1 %.not.i.i.i.2, label %bb.k, label %._crit_edge.loopexit.i.i.i

bb.k:                                             ; preds = %.lr.ph.i.i.i.2
  %exitcond.not.i.i.i.2 = icmp eq i64 %.sroa.speculated45.i.i.i.a, 3
  br i1 %exitcond.not.i.i.i.2, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i.3

.lr.ph.i.i.i.3:                                   ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ap, i64 3
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !79
  %i.be = getelementptr inbounds nuw i8, ptr %i.am, i64 3
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !79
  %.not.i.i.i.3 = icmp eq i8 %i.bd, %i.bf
  %spec.select = select i1 %.not.i.i.i.3, i64 %7, i64 3
  br label %._crit_edge.loopexit.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i.3, %bb.k, %.lr.ph.i.i.i.2, %bb.j, %.lr.ph.i.i.i.1, %bb.i, %.lr.ph.preheader.i.i.i
  %.030.lcssa.ph.i.i.i = phi i64 [ %7, %bb.i ], [ 0, %.lr.ph.preheader.i.i.i ], [ 1, %.lr.ph.i.i.i.1 ], [ %7, %bb.j ], [ 2, %.lr.ph.i.i.i.2 ], [ %7, %bb.k ], [ %spec.select, %.lr.ph.i.i.i.3 ]
  %i.bg = uitofp nneg i64 %.030.lcssa.ph.i.i.i to double
  %i.bh = fmul nnan double %i.bg, 1.000000e-01
  br label %_ZN19duckdb_jaro_winkler23jaro_winkler_similarityIPKcS2_EENSt9enable_ifIXaasr6common11is_iteratorIT_EE5valuesr6common11is_iteratorIT0_EE5valueEdE4typeES4_S4_S5_S5_dd.exit.i

_ZN19duckdb_jaro_winkler23jaro_winkler_similarityIPKcS2_EENSt9enable_ifIXaasr6common11is_iteratorIT_EE5valuesr6common11is_iteratorIT0_EE5valueEdE4typeES4_S4_S5_S5_dd.exit.i: ; preds = %._crit_edge.loopexit.i.i.i, %bb.h
  %.030.lcssa.i.i.i = phi double [ 0.000000e+00, %bb.h ], [ %i.bh, %._crit_edge.loopexit.i.i.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.aq
  %i.bj = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ao
  %i.bk = invoke noundef double @_ZN19duckdb_jaro_winkler6detail15jaro_similarityIPKcS3_EEdT_S4_T0_S5_d(ptr noundef %i.am, ptr noundef %i.bj, ptr noundef %i.ap, ptr noundef %i.bi, double noundef 0.000000e+00)
          to label %bb.l unwind label %bb.q       ; 4 uses

bb.l:                                             ; preds = %_ZN19duckdb_jaro_winkler23jaro_winkler_similarityIPKcS2_EENSt9enable_ifIXaasr6common11is_iteratorIT_EE5valuesr6common11is_iteratorIT0_EE5valueEdE4typeES4_S4_S5_S5_dd.exit.i
  %i.bl = fcmp ogt double %i.bk, f0x3FE6666666666666
  %i.bm = fsub double 1.000000e+00, %i.bk
  %i.bn = call double @llvm.fmuladd.f64(double %.030.lcssa.i.i.i, double %i.bm, double %i.bk)
  %.0.i.i.i = select i1 %i.bl, double %i.bn, double %i.bk ; 2 uses
  %i.bo = fcmp oge double %.0.i.i.i, 0.000000e+00
  %i.bp = select i1 %i.bo, double %.0.i.i.i, double 0.000000e+00
  store double %i.bp, ptr %i.b, align 8, !tbaa !1499
  %i.bq = load ptr, ptr %i.s, align 8, !tbaa !3410 ; 9 uses
  %i.br = load ptr, ptr %i.k, align 8, !tbaa !3418
  %.not.i = icmp eq ptr %i.bq, %i.br
  br i1 %.not.i, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 3 uses
  store ptr %i.bs, ptr %i.bq, align 8, !tbaa !178
  %i.bt = load ptr, ptr %.sroa.034.038, align 8, !tbaa !16 ; 2 uses
  %i.bu = load i64, ptr %i.an, align 8, !tbaa !139 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  store i64 %i.bu, ptr %i.a, align 8, !tbaa !33
  %i.bv = icmp ugt i64 %i.bu, 15
  br i1 %i.bv, label %.noexc.i.i.i17, label %._crit_edge.i.i.i.i

.noexc.i.i.i17:                                   ; preds = %bb.m
  %i.bw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.bq, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc18 unwind label %bb.q   ; 2 uses

.noexc18:                                         ; preds = %.noexc.i.i.i17
  store ptr %i.bw, ptr %i.bq, align 8, !tbaa !16
  %i.bx = load i64, ptr %i.a, align 8, !tbaa !33
  store i64 %i.bx, ptr %i.bs, align 8, !tbaa !79
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc18, %bb.m
  %i.by = phi ptr [ %i.bw, %.noexc18 ], [ %i.bs, %bb.m ] ; 2 uses
  switch i64 %i.bu, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEC2IRKS5_dTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_.exit.i
  ]

bb.n:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bz = load i8, ptr %i.bt, align 1, !tbaa !79
  store i8 %i.bz, ptr %i.by, align 1, !tbaa !79
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEC2IRKS5_dTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_.exit.i

bb.o:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.by, ptr align 1 %i.bt, i64 %i.bu, i1 false)
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEC2IRKS5_dTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_.exit.i

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEC2IRKS5_dTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_.exit.i: ; preds = %bb.o, %bb.n, %._crit_edge.i.i.i.i
  %i.ca = load i64, ptr %i.a, align 8, !tbaa !33  ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !139
  %i.cc = load ptr, ptr %i.bq, align 8, !tbaa !16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.ca
  store i8 0, ptr %i.cd, align 1, !tbaa !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.cf = load double, ptr %i.b, align 8, !tbaa !1499
  store double %i.cf, ptr %i.ce, align 8, !tbaa !3411
  %i.cg = load ptr, ptr %i.s, align 8, !tbaa !3410
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  store ptr %i.ch, ptr %i.s, align 8, !tbaa !3410
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE12emplace_backIJRKS6_dEEEvDpOT_.exit

bb.p:                                             ; preds = %bb.l
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE17_M_realloc_insertIJRKS6_dEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %i.bq, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.034.038, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE12emplace_backIJRKS6_dEEEvDpOT_.exit unwind label %bb.q

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE12emplace_backIJRKS6_dEEEvDpOT_.exit: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEC2IRKS5_dTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.034.038, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.ci, %i.d
  br i1 %.not, label %._crit_edge, label %bb.h

bb.q:                                             ; preds = %bb.p, %.noexc.i.i.i17, %_ZN19duckdb_jaro_winkler23jaro_winkler_similarityIPKcS2_EENSt9enable_ifIXaasr6common11is_iteratorIT_EE5valuesr6common11is_iteratorIT0_EE5valueEdE4typeES4_S4_S5_S5_dd.exit.i
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58
  br label %.body

bb.r:                                             ; preds = %.noexc15
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !3410
  invoke void @_ZN6duckdb10StringUtil11TopNStringsENS_6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdELb1ESaIS9_EEEmd(ptr dead_on_unwind writable sret(%"class.duckdb::vector.33") align 8 %0, ptr noundef nonnull %6, i64 noundef %3, double noundef %4)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.ck = load ptr, ptr %6, align 8, !tbaa !3408  ; 3 uses
  %i.cl = load ptr, ptr %i.af, align 8, !tbaa !3410 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ck, %i.cl
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i20

.lr.ph.i.i.i20:                                   ; preds = %bb.s, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.cp, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEvPT_.exit.i.i.i ], [ %i.ck, %bb.s ] ; 3 uses
  %i.cm = load ptr, ptr %.05.i.i.i, align 8, !tbaa !16 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i20
  call void @_ZdlPv(ptr noundef %i.cm) #60
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.cp, %i.cl
  br i1 %.not.i.i.i21, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i20, !llvm.loop !3422

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !3408
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_EvT_S9_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, %bb.s
  %i.cq = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i ], [ %i.ck, %bb.s ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_EvT_S9_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.cq) #60
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EED2Ev.exit

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_EvT_S9_RSaIT0_E.exit.i, %bb.t
  %i.cr = load ptr, ptr %5, align 8, !tbaa !3408  ; 3 uses
  %i.cs = load ptr, ptr %i.ab, align 8, !tbaa !3410 ; 2 uses
  %.not4.i.i.i22 = icmp eq ptr %i.cr, %i.cs
  br i1 %.not4.i.i.i22, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_EvT_S9_RSaIT0_E.exit.i30, label %.lr.ph.i.i.i23

.lr.ph.i.i.i23:                                   ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EED2Ev.exit, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEvPT_.exit.i.i.i26
  %.05.i.i.i24 = phi ptr [ %i.cw, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEvPT_.exit.i.i.i26 ], [ %i.cr, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EED2Ev.exit ] ; 3 uses
  %i.ct = load ptr, ptr %.05.i.i.i24, align 8, !tbaa !16 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.05.i.i.i24, i64 16
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEvPT_.exit.i.i.i26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i25: ; preds = %.lr.ph.i.i.i23
  call void @_ZdlPv(ptr noundef %i.ct) #60
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEvPT_.exit.i.i.i26

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEvPT_.exit.i.i.i26: ; preds = %.lr.ph.i.i.i23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i25
  %i.cw = getelementptr inbounds nuw i8, ptr %.05.i.i.i24, i64 40 ; 2 uses
  %.not.i.i.i27 = icmp eq ptr %i.cw, %i.cs
  br i1 %.not.i.i.i27, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i28, label %.lr.ph.i.i.i23, !llvm.loop !3422

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i28: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEvPT_.exit.i.i.i26
  %.pr.i29 = load ptr, ptr %5, align 8, !tbaa !3408
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_EvT_S9_RSaIT0_E.exit.i30

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_EvT_S9_RSaIT0_E.exit.i30: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i28, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EED2Ev.exit
  %i.cx = phi ptr [ %.pr.i29, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i28 ], [ %i.cr, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i31 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i1.i31, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EED2Ev.exit33, label %bb.u

bb.u:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_EvT_S9_RSaIT0_E.exit.i30
  call void @_ZdlPv(ptr noundef nonnull %i.cx) #60
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EED2Ev.exit33

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EED2Ev.exit33: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_EvT_S9_RSaIT0_E.exit.i30, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  ret void

bb.v:                                             ; preds = %bb.r
  %i.cy = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #58
  br label %.body

.body:                                            ; preds = %bb.g, %bb.f, %bb.e, %bb.v, %bb.q
  %.pn = phi { ptr, i32 } [ %i.cj, %bb.q ], [ %i.cy, %bb.v ], [ %i.al, %bb.g ], [ %i.aj, %bb.f ], [ %i.aj, %bb.e ]
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb10StringUtil17CandidatesMessageERKNS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS7_EEERKS7_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 21 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !178
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  store i64 0, ptr %i.b, align 8, !tbaa !139
  store i8 0, ptr %i.a, align 8, !tbaa !79
  %i.c = load ptr, ptr %1, align 8, !tbaa !184
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !184
  %i.f = icmp eq ptr %i.c, %i.e
end_hunk_1
