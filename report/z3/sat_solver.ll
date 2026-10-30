Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/sat_solver?download=true
inline.NumInlined: 5241
inline.NumDeleted: 1638
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 101
loop-unroll.NumUnrolled: 119
begin_hunk_0_@_ZN3sat6solver13unassign_varsEjj:bb.a

.._crit_edge_crit_edge.i.i.i:                     ; preds = %_ZN6vectorIiLb0EjE9push_backERKi.exit.i.i
  %.pre.i3.i.i = load ptr, ptr %i.k, align 8, !tbaa !253
  br label %_ZN4heapIN9var_queueI7svectorIjjEE2ltEE6insertEi.exit.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6vectorIiLb0EjE9push_backERKi.exit.i.i
  %i.cd = load ptr, ptr %i.j, align 8, !tbaa !339, !nonnull !316, !align !321
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !289 ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %.pre24.i.i.i
  %i.cg = load ptr, ptr %i.k, align 8             ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.lr.ph.i.i.i
  %i.ch = phi i32 [ %i.cb, %.lr.ph.i.i.i ], [ %i.ct, %bb.j ] ; 4 uses
  %.01520.i.i.i = phi i32 [ %.0.i6.i.i, %.lr.ph.i.i.i ], [ %i.ch, %bb.j ] ; 3 uses
  %i.ci = zext i32 %i.ch to i64                   ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !250 ; 2 uses
  %i.cl = load i32, ptr %i.cf, align 4, !tbaa !250
  %i.cm = zext i32 %i.ck to i64                   ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !250
  %i.cp = icmp ugt i32 %i.cl, %i.co
  %i.cq = zext i32 %.01520.i.i.i to i64           ; 2 uses
  br i1 %i.cp, label %bb.j, label %_ZN4heapIN9var_queueI7svectorIjjEE2ltEE6insertEi.exit.i

bb.j:                                             ; preds = %bb.i
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.cq
  store i32 %i.ck, ptr %i.cr, align 4, !tbaa !250
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.cm
  store i32 %.01520.i.i.i, ptr %i.cs, align 4, !tbaa !250
  %i.ct = ashr i32 %i.ch, 1                       ; 2 uses
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %_ZN4heapIN9var_queueI7svectorIjjEE2ltEE6insertEi.exit.i, label %bb.i

_ZN4heapIN9var_queueI7svectorIjjEE2ltEE6insertEi.exit.i: ; preds = %bb.j, %bb.i, %.._crit_edge_crit_edge.i.i.i
  %.pre-phi.i.i.i = phi i64 [ %i.by, %.._crit_edge_crit_edge.i.i.i ], [ %i.ci, %bb.j ], [ %i.cq, %bb.i ]
  %i.cv = phi ptr [ %.pre.i3.i.i, %.._crit_edge_crit_edge.i.i.i ], [ %i.cg, %bb.i ], [ %i.cg, %bb.j ]
  %.015.lcssa.i.i.i = phi i32 [ %.0.i6.i.i, %.._crit_edge_crit_edge.i.i.i ], [ %i.ch, %bb.j ], [ %.01520.i.i.i, %bb.i ]
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %.pre-phi.i.i.i
  store i32 %i.ca, ptr %i.cw, align 4, !tbaa !250
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %.pre24.i.i.i
  store i32 %.015.lcssa.i.i.i, ptr %i.cx, align 4, !tbaa !250
  br label %_ZN9var_queueI7svectorIjjEE15unassign_var_ehEj.exit

_ZN9var_queueI7svectorIjjEE15unassign_var_ehEj.exit: ; preds = %_ZNK4heapIN9var_queueI7svectorIjjEE2ltEE8containsEi.exit.i, %_ZN4heapIN9var_queueI7svectorIjjEE2ltEE6insertEi.exit.i
  %i.cy = load i8, ptr %i.m, align 4, !tbaa !361, !range !315, !noundef !316
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN9var_queueI7svectorIjjEE15unassign_var_ehEj.exit
  %i.da = load i32, ptr %i.n, align 8, !tbaa !354
  %i.db = zext i32 %i.da to i64
  %i.dc = load ptr, ptr %i.o, align 8, !tbaa !269
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.ag
  store i64 %i.db, ptr %i.dd, align 8, !tbaa !299
  br label %bb.l

bb.l:                                             ; preds = %_ZN9var_queueI7svectorIjjEE15unassign_var_ehEj.exit, %bb.k, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit
  %.wide = icmp ugt i64 %i.aa, %i.q
  br i1 %.wide, label %bb.b, label %._crit_edge

bb.m:                                             ; preds = %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit
  %i.de = tail call noundef i32 @_Z19get_verbosity_levelv()
  %i.df = icmp ugt i32 %i.de, 19
  br i1 %i.df, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.dg = tail call noundef zeroext i1 @_Z11is_threadedv()
  br i1 %i.dg, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  tail call void @_Z12verbose_lockv()
  %i.dh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() ; 2 uses
  %i.di = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef nonnull @.str.59, i64 noundef 15) ; 0 uses
  %i.dj = load ptr, ptr %i.u, align 8, !tbaa !267 ; 2 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit17, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dl = getelementptr inbounds i8, ptr %i.dj, i64 -4
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !250
  %i.dn = zext i32 %i.dm to i64
  br label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit17

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit17:   ; preds = %bb.o, %bb.p
  %.0.i16 = phi i64 [ %i.dn, %bb.p ], [ 0, %bb.o ]
  %i.do = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, i64 noundef %.0.i16)
  %i.dp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef nonnull @.str.11, i64 noundef 1) ; 0 uses
  tail call void @_Z14verbose_unlockv()
  br label %bb.s

bb.q:                                             ; preds = %bb.n
  %i.dq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() ; 2 uses
  %i.dr = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dq, ptr noundef nonnull @.str.59, i64 noundef 15) ; 0 uses
  %i.ds = load ptr, ptr %i.u, align 8, !tbaa !267 ; 2 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit19, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.du = getelementptr inbounds i8, ptr %i.ds, i64 -4
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !250
  %i.dw = zext i32 %i.dv to i64
  br label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit19

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit19:   ; preds = %bb.q, %bb.r
  %.0.i18 = phi i64 [ %i.dw, %bb.r ], [ 0, %bb.q ]
  %i.dx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dq, i64 noundef %.0.i18)
  %i.dy = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dx, ptr noundef nonnull @.str.11, i64 noundef 1) ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.m, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit19, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit17, %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit
  %.pr = load ptr, ptr %i.u, align 8, !tbaa !267  ; 3 uses
  %i.dz = icmp eq ptr %.pr, null
  br i1 %i.dz, label %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit21

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit21:   ; preds = %bb.s
  %i.ea = getelementptr inbounds i8, ptr %.pr, i64 -4
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !250 ; 2 uses
  %.not37 = icmp eq i32 %i.eb, 0
  br i1 %.not37, label %._crit_edge40.thread75, label %.lr.ph39.preheader

.lr.ph39.preheader:                               ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit21
  %i.ec = zext i32 %i.eb to i64
  %.pre49 = load ptr, ptr %i.a, align 8, !tbaa !267
  br label %.lr.ph39

._crit_edge40:                                    ; preds = %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit26
  %.pre50 = load ptr, ptr %i.u, align 8, !tbaa !267 ; 2 uses
  %.not.i22 = icmp eq ptr %.pre50, null
  br i1 %.not.i22, label %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit, label %._crit_edge40.thread75

._crit_edge40.thread75:                           ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit21, %._crit_edge40
  %i.ed = phi ptr [ %.pre50, %._crit_edge40 ], [ %.pr, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit21 ]
  %i.ee = getelementptr inbounds i8, ptr %i.ed, i64 -4
  store i32 0, ptr %i.ee, align 4, !tbaa !250
  br label %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit

_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit:     ; preds = %bb.s, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit14, %._crit_edge40, %._crit_edge40.thread75
  ret void

.lr.ph39:                                         ; preds = %.lr.ph39.preheader, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit26
  %i.ef = phi ptr [ %.pre49, %.lr.ph39.preheader ], [ %i.eq, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit26 ] ; 4 uses
  %indvars.iv46 = phi i64 [ %i.ec, %.lr.ph39.preheader ], [ %i.eg, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit26 ]
  %i.eg = add nsw i64 %indvars.iv46, -1           ; 3 uses
  %i.eh = load ptr, ptr %i.u, align 8, !tbaa !267
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.eg
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !250
  %i.ek = icmp eq ptr %i.ef, null
  br i1 %i.ek, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph39
  %i.el = getelementptr inbounds i8, ptr %i.ef, i64 -4
  %i.em = load i32, ptr %i.el, align 4, !tbaa !250 ; 2 uses
  %i.en = getelementptr inbounds i8, ptr %i.ef, i64 -8
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !250
  %i.ep = icmp eq i32 %i.em, %i.eo
  br i1 %i.ep, label %bb.u, label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit26

bb.u:                                             ; preds = %bb.t, %.lr.ph39
  tail call void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre.i23 = load ptr, ptr %i.a, align 8, !tbaa !267 ; 2 uses
  %.phi.trans.insert.i24 = getelementptr inbounds i8, ptr %.pre.i23, i64 -4
  %.pre2.i25 = load i32, ptr %.phi.trans.insert.i24, align 4, !tbaa !250
  br label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit26

_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit26: ; preds = %bb.t, %bb.u
  %i.eq = phi ptr [ %.pre.i23, %bb.u ], [ %i.ef, %bb.t ] ; 3 uses
  %i.er = phi i32 [ %.pre2.i25, %bb.u ], [ %i.em, %bb.t ] ; 2 uses
  %i.es = getelementptr inbounds i8, ptr %i.eq, i64 -4
  %i.et = zext i32 %i.er to i64
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %i.et
  store i32 %i.ej, ptr %i.eu, align 4, !tbaa !250
  %i.ev = add i32 %i.er, 1
  store i32 %i.ev, ptr %i.es, align 4, !tbaa !250
  %.not.wide = icmp eq i64 %i.eg, 0
  br i1 %.not.wide, label %._crit_edge40, label %.lr.ph39, !llvm.loop !951
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3sat6solver14reinit_clausesEj(ptr noundef nonnull align 8 dereferenceable(4264) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3792 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !311  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN6vectorIN3sat14clause_wrapperELb0EjE6shrinkEj.exit, label %_ZNK6vectorIN3sat14clause_wrapperELb0EjE4sizeEv.exit

_ZNK6vectorIN3sat14clause_wrapperELb0EjE4sizeEv.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !250  ; 2 uses
  %i.f = icmp ult i32 %1, %i.e
  br i1 %i.f, label %.lr.ph, label %._crit_edge.thread78

.lr.ph:                                           ; preds = %_ZNK6vectorIN3sat14clause_wrapperELb0EjE4sizeEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3612 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3328 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2336
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3264 ; 2 uses
  %i.l = zext i32 %1 to i64
  %wide.trip.count = zext i32 %i.e to i64
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNK3sat6solver23has_variables_to_reinitENS_7literalES1_.exit.thread65
  %.pre71 = load ptr, ptr %i.a, align 8, !tbaa !311 ; 2 uses
  %.not.i = icmp eq ptr %.pre71, null
  br i1 %.not.i, label %_ZN6vectorIN3sat14clause_wrapperELb0EjE6shrinkEj.exit, label %._crit_edge.thread78

._crit_edge.thread78:                             ; preds = %_ZNK6vectorIN3sat14clause_wrapperELb0EjE4sizeEv.exit, %._crit_edge
  %.0.lcssa81 = phi i32 [ %.2, %._crit_edge ], [ %1, %_ZNK6vectorIN3sat14clause_wrapperELb0EjE4sizeEv.exit ]
  %i.m = phi ptr [ %.pre71, %._crit_edge ], [ %i.b, %_ZNK6vectorIN3sat14clause_wrapperELb0EjE4sizeEv.exit ]
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -4
  store i32 %.0.lcssa81, ptr %i.n, align 4, !tbaa !250
  br label %_ZN6vectorIN3sat14clause_wrapperELb0EjE6shrinkEj.exit

_ZN6vectorIN3sat14clause_wrapperELb0EjE6shrinkEj.exit: ; preds = %bb.a, %._crit_edge, %._crit_edge.thread78
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNK3sat6solver23has_variables_to_reinitENS_7literalES1_.exit.thread65
  %indvars.iv = phi i64 [ %i.l, %.lr.ph ], [ %indvars.iv.next, %_ZNK3sat6solver23has_variables_to_reinitENS_7literalES1_.exit.thread65 ] ; 2 uses
  %.069 = phi i32 [ %1, %.lr.ph ], [ %.2, %_ZNK3sat6solver23has_variables_to_reinitENS_7literalES1_.exit.thread65 ] ; 12 uses
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !311
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %indvars.iv ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.p, align 8, !tbaa !262 ; 11 uses
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.16.0.copyload = load i32, ptr %.sroa.16.0..sroa_idx, align 8, !tbaa !250 ; 5 uses
  %.not = icmp eq i32 %.sroa.16.0.copyload, -2
  br i1 %.not, label %bb.f, label %_ZNK3sat14clause_wrapperixEj.exit23

_ZNK3sat14clause_wrapperixEj.exit23:              ; preds = %bb.b
  %i.q = ptrtoint ptr %.sroa.0.0.copyload to i64  ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.q to i32
  %i.r = tail call noundef zeroext i1 @_ZN3sat6solver20propagate_bin_clauseENS_7literalES1_(ptr noundef nonnull align 8 dereferenceable(4264) %0, i32 %.sroa.0.0.extract.trunc, i32 %.sroa.16.0.copyload)
  %.pre = load i32, ptr %i.g, align 4, !tbaa !256
  %i.s = icmp eq i32 %.pre, 0                     ; 2 uses
  br i1 %i.r, label %bb.c, label %_ZNK3sat14clause_wrapperixEj.exit31

bb.c:                                             ; preds = %_ZNK3sat14clause_wrapperixEj.exit23
  br i1 %i.s, label %_ZNK3sat6solver23has_variables_to_reinitENS_7literalES1_.exit.thread65, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = add i32 %.069, 1
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !311
  %i.v = zext i32 %.069 to i64
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.v ; 2 uses
  store ptr %.sroa.0.0.copyload, ptr %i.w, align 8, !tbaa !262
  %.sroa.16.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i32 %.sroa.16.0.copyload, ptr %.sroa.16.0..sroa_idx46, align 8, !tbaa !250
  br label %_ZNK3sat6solver23has_variables_to_reinitENS_7literalES1_.exit.thread65

_ZNK3sat14clause_wrapperixEj.exit31:              ; preds = %_ZNK3sat14clause_wrapperixEj.exit23
  br i1 %i.s, label %_ZNK3sat6solver23has_variables_to_reinitENS_7literalES1_.exit.thread65, label %bb.e

bb.e:                                             ; preds = %_ZNK3sat14clause_wrapperixEj.exit31
  %i.x = lshr i64 %i.q, 1
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !289  ; 2 uses
  %i.z = and i64 %i.x, 2147483647
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !250
  %.not.i32 = icmp eq i32 %i.ab, 0
  br i1 %.not.i32, label %_ZNK3sat6solver23has_variables_to_reinitENS_7literalES1_.exit, label %_ZNK3sat6solver23has_variables_to_reinitENS_7literalES1_.exit.thread

_ZNK3sat6solver23has_variables_to_reinitENS_7literalES1_.exit: ; preds = %bb.e
  %i.ac = lshr i32 %.sroa.16.0.copyload, 1
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !250
  %.not2.i.not = icmp eq i32 %i.af, 0
  br i1 %.not2.i.not, label %_ZNK3sat6solver23has_variables_to_reinitENS_7literalES1_.exit.thread65, label %_ZNK3sat6solver23has_variables_to_reinitENS_7literalES1_.exit.thread

_ZNK3sat6solver23has_variables_to_reinitENS_7literalES1_.exit.thread: ; preds = %bb.e, %_ZNK3sat6solver23has_variables_to_reinitENS_7literalES1_.exit
  %i.ag = add i32 %.069, 1
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !311
  %i.ai = zext i32 %.069 to i64
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %i.ai ; 2 uses
  store ptr %.sroa.0.0.copyload, ptr %i.aj, align 8, !tbaa !262
  %.sroa.16.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i32 %.sroa.16.0.copyload, ptr %.sroa.16.0..sroa_idx48, align 8, !tbaa !250
  br label %_ZNK3sat6solver23has_variables_to_reinitENS_7literalES1_.exit.thread65

bb.f:                                             ; preds = %bb.b
  %i.ak = load i8, ptr %i.j, align 8, !tbaa !239, !range !315, !noundef !316
  %i.al = zext nneg i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw [568 x i8], ptr %i.i, i64 %i.al
  %i.an = tail call noundef i64 @_ZNK3sat16clause_allocator10get_offsetEPKNS_6clauseE(ptr noundef nonnull align 8 dereferenceable(568) %i.am, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.0.0.copyload) ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 20 ; 3 uses
  %.sroa.02.0.copyload.i.i = load i32, ptr %i.ao, align 4, !tbaa !250
  %i.ap = xor i32 %.sroa.02.0.copyload.i.i, 1
  %i.aq = load ptr, ptr %i.k, align 8, !tbaa !295
  %i.ar = zext i32 %i.ap to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ar
  %i.at = tail call noundef zeroext i1 @_ZN3sat18erase_clause_watchER6vectorINS_7watchedELb1EjEm(ptr noundef nonnull align 8 dereferenceable(8) %i.as, i64 noundef %i.an) ; 0 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 24
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.au, align 4, !tbaa !250
  %i.av = xor i32 %.sroa.0.0.copyload.i.i, 1
  %i.aw = load ptr, ptr %i.k, align 8, !tbaa !295
  %i.ax = zext i32 %i.av to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ax
  %i.az = tail call noundef zeroext i1 @_ZN3sat18erase_clause_watchER6vectorINS_7watchedELb1EjEm(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, i64 noundef %i.an) ; 0 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 16 ; 3 uses
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = and i32 %i.bb, 36
  %i.bd = icmp eq i32 %i.bc, 4
  %i.be = tail call noundef zeroext i1 @_ZN3sat6solver18attach_nary_clauseERNS_6clauseEb(ptr noundef nonnull align 8 dereferenceable(4264) %0, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.0.0.copyload, i1 noundef zeroext %i.bd)
  br i1 %i.be, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.bf = load i32, ptr %i.g, align 4, !tbaa !256
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bh = add i32 %.069, 1
  %i.bi = load ptr, ptr %i.a, align 8, !tbaa !311
  %i.bj = zext i32 %.069 to i64
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %i.bj ; 2 uses
  store ptr %.sroa.0.0.copyload, ptr %i.bk, align 8, !tbaa !262
  %.sroa.16.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i32 -2, ptr %.sroa.16.0..sroa_idx50, align 8, !tbaa !250
  br label %_ZNK3sat6solver23has_variables_to_reinitENS_7literalES1_.exit.thread65

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !326 ; 2 uses
  %i.bn = zext i32 %i.bm to i64
  %.idx.i = shl nuw nsw i64 %i.bn, 2
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.idx.i
  %.not15.not.i = icmp eq i32 %i.bm, 0
  br i1 %.not15.not.i, label %_ZNK3sat6solver23has_variables_to_reinitERKNS_6clauseE.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.bp = load ptr, ptr %i.h, align 8, !tbaa !289
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %.01016.i, i64 4 ; 2 uses
  %.not.not.i = icmp eq ptr %i.bq, %i.bo
  br i1 %.not.not.i, label %_ZNK3sat6solver23has_variables_to_reinitERKNS_6clauseE.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.i
  %.01016.i = phi ptr [ %i.ao, %.lr.ph.i ], [ %i.bq, %bb.j ] ; 2 uses
  %i.br = load i32, ptr %.01016.i, align 4, !tbaa !250
  %i.bs = lshr i32 %i.br, 1
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !250
  %.not13.not.i = icmp eq i32 %i.bv, 0
  br i1 %.not13.not.i, label %bb.j, label %_ZNK3sat6solver23has_variables_to_reinitERKNS_6clauseE.exit

_ZNK3sat6solver23has_variables_to_reinitERKNS_6clauseE.exit: ; preds = %bb.k
  %i.bw = load i32, ptr %i.g, align 4, !tbaa !256
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %_ZNK3sat6solver23has_variables_to_reinitERKNS_6clauseE.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZNK3sat6solver23has_variables_to_reinitERKNS_6clauseE.exit
  %i.by = add i32 %.069, 1
  %i.bz = load ptr, ptr %i.a, align 8, !tbaa !311
  %i.ca = zext i32 %.069 to i64
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.bz, i64 %i.ca ; 2 uses
  store ptr %.sroa.0.0.copyload, ptr %i.cb, align 8, !tbaa !262
  %.sroa.16.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i32 -2, ptr %.sroa.16.0..sroa_idx52, align 8, !tbaa !250
  br label %_ZNK3sat6solver23has_variables_to_reinitENS_7literalES1_.exit.thread65

_ZNK3sat6solver23has_variables_to_reinitERKNS_6clauseE.exit.thread: ; preds = %bb.j, %bb.i, %_ZNK3sat6solver23has_variables_to_reinitERKNS_6clauseE.exit
  %i.cc = load i32, ptr %i.ba, align 4
  %i.cd = and i32 %i.cc, -33
  store i32 %i.cd, ptr %i.ba, align 4
  br label %_ZNK3sat6solver23has_variables_to_reinitENS_7literalES1_.exit.thread65

_ZNK3sat6solver23has_variables_to_reinitENS_7literalES1_.exit.thread65: ; preds = %bb.c, %_ZNK3sat14clause_wrapperixEj.exit31, %bb.h, %_ZNK3sat6solver23has_variables_to_reinitERKNS_6clauseE.exit.thread, %bb.l, %bb.d, %_ZNK3sat6solver23has_variables_to_reinitENS_7literalES1_.exit.thread, %_ZNK3sat6solver23has_variables_to_reinitENS_7literalES1_.exit
  %.2 = phi i32 [ %i.bh, %bb.h ], [ %i.ag, %_ZNK3sat6solver23has_variables_to_reinitENS_7literalES1_.exit.thread ], [ %.069, %_ZNK3sat6solver23has_variables_to_reinitENS_7literalES1_.exit ], [ %i.t, %bb.d ], [ %.069, %_ZNK3sat6solver23has_variables_to_reinitERKNS_6clauseE.exit.thread ], [ %i.by, %bb.l ], [ %.069, %_ZNK3sat14clause_wrapperixEj.exit31 ], [ %.069, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !952
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3sat6solver9user_pushEv(ptr noundef nonnull align 8 dereferenceable(4264) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3928
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !267  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -4
  store i32 0, ptr %i.c, align 4, !tbaa !250
  br label %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit.i.i

_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit.i.i: ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3936 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3944 ; 7 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !289  ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZN3sat11literal_set5resetEv.exit.i.i, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i.i:          ; preds = %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit.i.i
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !250  ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.thread10.i.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i.i
  %wide.trip.count.i.i.i.i = zext i32 %i.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i.i, 3 ; 3 uses
  %i.j = icmp ult i32 %i.i, 4
  br i1 %i.j, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.preheader.i.i.i.i.new

.lr.ph.preheader.i.i.i.i.new:                     ; preds = %.lr.ph.preheader.i.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i.i, 4294967292
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i.unr-lcssa:                    ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %._crit_edge.i.i.i.i.unr-lcssa, %.lr.ph.preheader.i.i.i.i
  %indvars.iv.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.3, %._crit_edge.i.i.i.i.unr-lcssa ]
  %lcmp.mod18 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod18)
  br label %.lr.ph.i.i.i.i.epil

.lr.ph.i.i.i.i.epil:                              ; preds = %.lr.ph.i.i.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader
  %indvars.iv.i.i.i.i.epil = phi i64 [ %indvars.iv.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.epil.preheader ], [ %indvars.iv.next.i.i.i.i.epil, %.lr.ph.i.i.i.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.i.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.i.epil ]
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !289
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i.i.i.i.epil
  %i.m = load i32, ptr %i.l, align 4, !tbaa !250
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !249
  %i.o = zext i32 %i.m to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o
  store i8 0, ptr %i.p, align 1, !tbaa !262
  %indvars.iv.next.i.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i.epil, !llvm.loop !953

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.epil, %._crit_edge.i.i.i.i.unr-lcssa
  %.pre.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !289 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.pre.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZN3sat11literal_set5resetEv.exit.i.i, label %._crit_edge.thread10.i.i.i.i

._crit_edge.thread10.i.i.i.i:                     ; preds = %._crit_edge.i.i.i.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i.i
  %i.q = phi ptr [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.f, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i.i ]
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -4
  store i32 0, ptr %i.r, align 4, !tbaa !250
  br label %_ZN3sat11literal_set5resetEv.exit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i.new
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i.new ], [ %indvars.iv.next.i.i.i.i.3, %.lr.ph.i.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i.new ], [ %niter.next.3, %.lr.ph.i.i.i.i ]
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !289
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.i.i.i.i
  %i.u = load i32, ptr %i.t, align 4, !tbaa !250
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !249
  %i.w = zext i32 %i.u to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  store i8 0, ptr %i.x, align 1, !tbaa !262
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !289
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !250
  %i.ac = load ptr, ptr %i.d, align 8, !tbaa !249
  %i.ad = zext i32 %i.ab to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ad
  store i8 0, ptr %i.ae, align 1, !tbaa !262
  %i.af = load ptr, ptr %i.e, align 8, !tbaa !289
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !250
  %i.aj = load ptr, ptr %i.d, align 8, !tbaa !249
  %i.ak = zext i32 %i.ai to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ak
  store i8 0, ptr %i.al, align 1, !tbaa !262
  %i.am = load ptr, ptr %i.e, align 8, !tbaa !289
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !250
  %i.aq = load ptr, ptr %i.d, align 8, !tbaa !249
  %i.ar = zext i32 %i.ap to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ar
  store i8 0, ptr %i.as, align 1, !tbaa !262
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.i.i.i.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !6

_ZN3sat11literal_set5resetEv.exit.i.i:            ; preds = %._crit_edge.thread10.i.i.i.i, %._crit_edge.i.i.i.i, %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 3952 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 3960 ; 7 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !289 ; 3 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %_ZN3sat6solver17pop_to_base_levelEv.exit, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i1.i.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i1.i.i:         ; preds = %_ZN3sat11literal_set5resetEv.exit.i.i
  %i.ax = getelementptr inbounds i8, ptr %i.av, i64 -4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !250 ; 3 uses
  %.not.i.i2.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i2.i.i, label %._crit_edge.thread10.i.i12.i.i, label %.lr.ph.preheader.i.i3.i.i

.lr.ph.preheader.i.i3.i.i:                        ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i1.i.i
  %wide.trip.count.i.i4.i.i = zext i32 %i.ay to i64 ; 2 uses
  %xtraiter19 = and i64 %wide.trip.count.i.i4.i.i, 3 ; 3 uses
  %i.az = icmp ult i32 %i.ay, 4
  br i1 %i.az, label %.lr.ph.i.i5.i.i.epil.preheader, label %.lr.ph.preheader.i.i3.i.i.new

.lr.ph.preheader.i.i3.i.i.new:                    ; preds = %.lr.ph.preheader.i.i3.i.i
  %unroll_iter23 = and i64 %wide.trip.count.i.i4.i.i, 4294967292
  br label %.lr.ph.i.i5.i.i

._crit_edge.i.i9.i.i.unr-lcssa:                   ; preds = %.lr.ph.i.i5.i.i
  %lcmp.mod21.not = icmp eq i64 %xtraiter19, 0
  br i1 %lcmp.mod21.not, label %._crit_edge.i.i9.i.i, label %.lr.ph.i.i5.i.i.epil.preheader

.lr.ph.i.i5.i.i.epil.preheader:                   ; preds = %._crit_edge.i.i9.i.i.unr-lcssa, %.lr.ph.preheader.i.i3.i.i
  %indvars.iv.i.i6.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i3.i.i ], [ %indvars.iv.next.i.i7.i.i.3, %._crit_edge.i.i9.i.i.unr-lcssa ]
  %lcmp.mod22 = icmp ne i64 %xtraiter19, 0
  tail call void @llvm.assume(i1 %lcmp.mod22)
  br label %.lr.ph.i.i5.i.i.epil

.lr.ph.i.i5.i.i.epil:                             ; preds = %.lr.ph.i.i5.i.i.epil, %.lr.ph.i.i5.i.i.epil.preheader
  %indvars.iv.i.i6.i.i.epil = phi i64 [ %indvars.iv.i.i6.i.i.epil.init, %.lr.ph.i.i5.i.i.epil.preheader ], [ %indvars.iv.next.i.i7.i.i.epil, %.lr.ph.i.i5.i.i.epil ] ; 2 uses
  %epil.iter20 = phi i64 [ 0, %.lr.ph.i.i5.i.i.epil.preheader ], [ %epil.iter20.next, %.lr.ph.i.i5.i.i.epil ]
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !289
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.i.i6.i.i.epil
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !250
  %i.bd = load ptr, ptr %i.at, align 8, !tbaa !249
  %i.be = zext i32 %i.bc to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.be
  store i8 0, ptr %i.bf, align 1, !tbaa !262
  %indvars.iv.next.i.i7.i.i.epil = add nuw nsw i64 %indvars.iv.i.i6.i.i.epil, 1
  %epil.iter20.next = add i64 %epil.iter20, 1     ; 2 uses
  %epil.iter20.cmp.not = icmp eq i64 %epil.iter20.next, %xtraiter19
  br i1 %epil.iter20.cmp.not, label %._crit_edge.i.i9.i.i, label %.lr.ph.i.i5.i.i.epil, !llvm.loop !954

._crit_edge.i.i9.i.i:                             ; preds = %.lr.ph.i.i5.i.i.epil, %._crit_edge.i.i9.i.i.unr-lcssa
  %.pre.i.i10.i.i = load ptr, ptr %i.au, align 8, !tbaa !289 ; 2 uses
  %.not.i.i.i11.i.i = icmp eq ptr %.pre.i.i10.i.i, null
  br i1 %.not.i.i.i11.i.i, label %_ZN3sat6solver17pop_to_base_levelEv.exit, label %._crit_edge.thread10.i.i12.i.i

._crit_edge.thread10.i.i12.i.i:                   ; preds = %._crit_edge.i.i9.i.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i1.i.i
  %i.bg = phi ptr [ %.pre.i.i10.i.i, %._crit_edge.i.i9.i.i ], [ %i.av, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i1.i.i ]
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -4
  store i32 0, ptr %i.bh, align 4, !tbaa !250
  br label %_ZN3sat6solver17pop_to_base_levelEv.exit

.lr.ph.i.i5.i.i:                                  ; preds = %.lr.ph.i.i5.i.i, %.lr.ph.preheader.i.i3.i.i.new
  %indvars.iv.i.i6.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i3.i.i.new ], [ %indvars.iv.next.i.i7.i.i.3, %.lr.ph.i.i5.i.i ] ; 5 uses
  %niter24 = phi i64 [ 0, %.lr.ph.preheader.i.i3.i.i.new ], [ %niter24.next.3, %.lr.ph.i.i5.i.i ]
  %i.bi = load ptr, ptr %i.au, align 8, !tbaa !289
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.i.i6.i.i
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !250
  %i.bl = load ptr, ptr %i.at, align 8, !tbaa !249
  %i.bm = zext i32 %i.bk to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bm
  store i8 0, ptr %i.bn, align 1, !tbaa !262
  %i.bo = load ptr, ptr %i.au, align 8, !tbaa !289
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.i.i6.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !250
  %i.bs = load ptr, ptr %i.at, align 8, !tbaa !249
  %i.bt = zext i32 %i.br to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bt
  store i8 0, ptr %i.bu, align 1, !tbaa !262
  %i.bv = load ptr, ptr %i.au, align 8, !tbaa !289
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv.i.i6.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !250
  %i.bz = load ptr, ptr %i.at, align 8, !tbaa !249
  %i.ca = zext i32 %i.by to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.ca
  store i8 0, ptr %i.cb, align 1, !tbaa !262
  %i.cc = load ptr, ptr %i.au, align 8, !tbaa !289
end_hunk_0
begin_hunk_1_@_ZN3sat6solver24get_bounded_consequencesERK7svectorINS_7literalEjERKS1_IjjER6vectorIS3_Lb1EjE:bb.a
  %i.ht = shl i32 %i.hs, 1
  store i32 %i.ht, ptr %7, align 4, !tbaa !247
  invoke void @_ZN3sat6solver16init_assumptionsEjPKNS_7literalE(ptr noundef nonnull align 8 dereferenceable(4264) %0, i32 noundef 1, ptr noundef nonnull %7)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.hu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br label %.body

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit:     ; preds = %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit
  invoke void @_ZN3sat6solver16init_assumptionsEjPKNS_7literalE(ptr noundef nonnull align 8 dereferenceable(4264) %0, i32 noundef %i.hq, ptr noundef nonnull %i.hn)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit, %bb.v
  %i.hv = load i32, ptr %i.fo, align 8, !tbaa !255
  %i.hw = invoke noundef zeroext i1 @_ZN3sat6solver14propagate_coreEb(ptr noundef nonnull align 8 dereferenceable(4264) %0, i1 noundef zeroext false)
          to label %.noexc55 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc55:                                         ; preds = %bb.x
  %i.hx = load i32, ptr %i.fr, align 8, !tbaa !358
  %i.hy = icmp eq i32 %i.hx, 1
  br i1 %i.hy, label %bb.y, label %_ZN3sat6solver9propagateEb.exit56

bb.y:                                             ; preds = %.noexc55
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !359 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.ic = load double, ptr %i.ib, align 8
  %i.id = fmul double %i.ia, %i.ic
  %i.ie = select i1 %i.hw, double %i.id, double %i.ia
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 3784 ; 2 uses
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !267 ; 2 uses
  %i.ih = icmp eq ptr %i.ig, null
  br i1 %i.ih, label %_ZN3sat6solver9propagateEb.exit56, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.lr.ph.i.i50

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.lr.ph.i.i50: ; preds = %bb.y
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 3376
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 3360
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 3424
  %i.im = zext i32 %i.hv to i64
  br label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i.i51

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i.i51: ; preds = %bb.z, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.lr.ph.i.i50
  %indvars.iv.i.i52 = phi i64 [ %i.im, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.lr.ph.i.i50 ], [ %indvars.iv.next.i.i54, %bb.z ] ; 3 uses
  %i.in = phi ptr [ %i.ig, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.lr.ph.i.i50 ], [ %i.jo, %bb.z ] ; 2 uses
  %i.io = getelementptr inbounds i8, ptr %i.in, i64 -4
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !250
  %i.iq = zext i32 %i.ip to i64
  %i.ir = icmp samesign ult i64 %indvars.iv.i.i52, %i.iq
  br i1 %i.ir, label %bb.z, label %_ZN3sat6solver9propagateEb.exit56

bb.z:                                             ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i.i51
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %indvars.iv.i.i52
  %i.it = load i32, ptr %i.is, align 4, !tbaa !247
  %i.iu = lshr i32 %i.it, 1                       ; 2 uses
  %i.iv = load i32, ptr %i.ii, align 8, !tbaa !354
  %i.iw = zext i32 %i.iv to i64
  %i.ix = load ptr, ptr %i.ij, align 8, !tbaa !269
  %i.iy = zext nneg i32 %i.iu to i64              ; 2 uses
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %i.iy
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !299
  %i.jb = add nuw nsw i64 %i.iw, 1
  %i.jc = sub i64 %i.jb, %i.ja
  %spec.store.select.i.i53 = call i64 @llvm.umax.i64(i64 %i.jc, i64 1)
  %i.jd = uitofp i64 %spec.store.select.i.i53 to double
  %i.je = fdiv double %i.ie, %i.jd
  %i.jf = load ptr, ptr %i.ik, align 8, !tbaa !289
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %i.iy
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !250
  %i.ji = load double, ptr %i.il, align 8, !tbaa !276 ; 2 uses
  %i.jj = fsub double 1.000000e+00, %i.ji
  %i.jk = uitofp i32 %i.jh to double
  %i.jl = fmul double %i.jj, %i.jk
  %i.jm = call double @llvm.fmuladd.f64(double %i.ji, double %i.je, double %i.jl)
  %i.jn = fptoui double %i.jm to i32
  call void @_ZN3sat6solver12set_activityEjj(ptr noundef nonnull readonly align 8 dereferenceable(4264) %0, i32 noundef %i.iu, i32 noundef %i.jn)
  %indvars.iv.next.i.i54 = add nuw nsw i64 %indvars.iv.i.i52, 1
  %i.jo = load ptr, ptr %i.if, align 8, !tbaa !267 ; 2 uses
  %i.jp = icmp eq ptr %i.jo, null
  br i1 %i.jp, label %_ZN3sat6solver9propagateEb.exit56, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i.i51, !llvm.loop !14

_ZN3sat6solver9propagateEb.exit56:                ; preds = %bb.z, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i.i51, %bb.y, %.noexc55
  %i.jq = load i8, ptr %i.fj, align 8, !tbaa !242, !range !315, !noundef !316
  %i.jr = trunc nuw i8 %i.jq to i1
  br i1 %i.jr, label %bb.aa, label %_ZN3sat6solver18check_inconsistentEv.exit.thread131

bb.aa:                                            ; preds = %_ZN3sat6solver9propagateEb.exit56
  %i.js = load ptr, ptr %i.by, align 8, !tbaa !267 ; 2 uses
  %i.jt = icmp eq ptr %i.js, null
  br i1 %i.jt, label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.thread.i.i, label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.i.i

_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.i.i: ; preds = %bb.aa
  %i.ju = getelementptr inbounds i8, ptr %i.js, i64 -4
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !250
  %i.jw = icmp eq i32 %i.jv, 0
  br i1 %i.jw, label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.thread.i.i, label %_ZNK3sat6solver20tracking_assumptionsEv.exit.thread.i

_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.thread.i.i: ; preds = %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.i.i, %bb.aa
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 4200
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !267 ; 2 uses
  %i.jz = icmp eq ptr %i.jy, null
  br i1 %i.jz, label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit1.thread.i.i, label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit1.i.i

_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit1.i.i: ; preds = %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.thread.i.i
  %i.ka = getelementptr inbounds i8, ptr %i.jy, i64 -4
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !250
  %i.kc = icmp eq i32 %i.kb, 0
  br i1 %i.kc, label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit1.thread.i.i, label %_ZNK3sat6solver20tracking_assumptionsEv.exit.thread.i

_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit1.thread.i.i: ; preds = %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit1.i.i, %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.thread.i.i
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !287 ; 3 uses
  %.not.i.i57 = icmp eq ptr %i.ke, null
  br i1 %.not.i.i57, label %_ZNK3sat6solver20tracking_assumptionsEv.exit.thread4.i, label %_ZNK3sat6solver20tracking_assumptionsEv.exit.i

_ZNK3sat6solver20tracking_assumptionsEv.exit.i:   ; preds = %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit1.thread.i.i
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !87
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 344
  %i.kh = load ptr, ptr %i.kg, align 8
  %i.ki = invoke noundef zeroext i1 %i.kh(ptr noundef nonnull align 8 dereferenceable(32) %i.ke)
          to label %.noexc58 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !451

.noexc58:                                         ; preds = %_ZNK3sat6solver20tracking_assumptionsEv.exit.i
  br i1 %i.ki, label %_ZNK3sat6solver20tracking_assumptionsEv.exit.thread.i, label %_ZNK3sat6solver20tracking_assumptionsEv.exit.thread4.i

_ZNK3sat6solver20tracking_assumptionsEv.exit.thread.i: ; preds = %.noexc58, %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit1.i.i, %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.i.i
  %i.kj = load i32, ptr %i.fh, align 4, !tbaa !256
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 3616
  %i.kl = load i32, ptr %i.kk, align 8, !tbaa !257
  %i.km = icmp eq i32 %i.kj, %i.kl
  br i1 %i.km, label %.preheader5.i, label %_ZNK3sat6solver20tracking_assumptionsEv.exit.thread4.i

.preheader5.i:                                    ; preds = %_ZNK3sat6solver20tracking_assumptionsEv.exit.thread.i, %bb.ab
  %i.kn = invoke noundef i32 @_ZN3sat6solver21resolve_conflict_coreEv(ptr noundef nonnull align 8 dereferenceable(4264) %0)
          to label %.noexc59 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc59:                                         ; preds = %.preheader5.i
  %.not.not.not.i.not.i = icmp eq i32 %i.kn, -1
  br i1 %.not.not.not.i.not.i, label %_ZN3sat6solver18check_inconsistentEv.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %.noexc59
  %i.ko = load i8, ptr %i.fj, align 8, !tbaa !242, !range !315, !noundef !316
  %i.kp = trunc nuw i8 %i.ko to i1
  br i1 %i.kp, label %.preheader5.i, label %_ZN3sat6solver18check_inconsistentEv.exit.thread

_ZNK3sat6solver20tracking_assumptionsEv.exit.thread4.i: ; preds = %_ZNK3sat6solver20tracking_assumptionsEv.exit.thread.i, %.noexc58, %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit1.thread.i.i
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.kr = load i8, ptr %i.kq, align 8, !tbaa !337, !range !315, !noundef !316
  %i.ks = trunc nuw i8 %i.kr to i1
  br i1 %i.ks, label %bb.ac, label %_ZN3sat6solver18check_inconsistentEv.exit.thread

bb.ac:                                            ; preds = %_ZNK3sat6solver20tracking_assumptionsEv.exit.thread4.i
  %i.kt = load i32, ptr %i.fh, align 4, !tbaa !256
  %i.ku = icmp eq i32 %i.kt, 0
  br i1 %i.ku, label %.preheader.i, label %_ZN3sat6solver18check_inconsistentEv.exit.thread

.preheader.i:                                     ; preds = %bb.ac, %bb.ad
  %i.kv = invoke noundef i32 @_ZN3sat6solver21resolve_conflict_coreEv(ptr noundef nonnull align 8 dereferenceable(4264) %0)
          to label %.noexc60 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc60:                                         ; preds = %.preheader.i
  %.not.not.not.i2.not.i = icmp eq i32 %i.kv, -1
  br i1 %.not.not.not.i2.not.i, label %_ZN3sat6solver18check_inconsistentEv.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %.noexc60
  %i.kw = load i8, ptr %i.fj, align 8, !tbaa !242, !range !315, !noundef !316
  %i.kx = trunc nuw i8 %i.kw to i1
  br i1 %i.kx, label %.preheader.i, label %_ZN3sat6solver18check_inconsistentEv.exit.thread

_ZN3sat6solver18check_inconsistentEv.exit.thread131: ; preds = %_ZN3sat6solver9propagateEb.exit56
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  invoke void @_ZN3sat11literal_setC2ERK7svectorINS_7literalEjE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.ae unwind label %bb.au

bb.ae:                                            ; preds = %_ZN3sat6solver18check_inconsistentEv.exit.thread131
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 3784 ; 4 uses
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !267 ; 2 uses
  %i.la = icmp eq ptr %i.kz, null
  br i1 %i.la, label %_ZN3sat6solver26extract_fixed_consequencesERjRKNS_11literal_setER16tracked_uint_setR6vectorI7svectorINS_7literalEjELb1EjE.exit, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i:   ; preds = %bb.ae
  %i.lb = getelementptr inbounds i8, ptr %i.kz, i64 -4
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !250 ; 4 uses
  %.not136 = icmp eq i32 %i.lc, 0
  br i1 %.not136, label %_ZN3sat6solver26extract_fixed_consequencesERjRKNS_11literal_setER16tracked_uint_setR6vectorI7svectorINS_7literalEjELb1EjE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 3280
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 4256 ; 4 uses
  %i.lf = zext i32 %i.lc to i64
  br label %bb.af

bb.af:                                            ; preds = %_ZN3sat6solver26extract_fixed_consequencesENS_7literalERKNS_11literal_setER16tracked_uint_setR6vectorI7svectorIS1_jELb1EjE.exit.i, %.lr.ph.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN3sat6solver26extract_fixed_consequencesENS_7literalERKNS_11literal_setER16tracked_uint_setR6vectorI7svectorIS1_jELb1EjE.exit.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.lg = load ptr, ptr %i.ky, align 8, !tbaa !267
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.lg, i64 %indvars.iv
  %.sroa.01.0.copyload.i = load i32, ptr %i.lh, align 4, !tbaa !250 ; 2 uses
  %i.li = lshr i32 %.sroa.01.0.copyload.i, 1
  %i.lj = load ptr, ptr %i.ld, align 8, !tbaa !291
  %i.lk = zext nneg i32 %i.li to i64
  %i.ll = getelementptr inbounds nuw [24 x i8], ptr %i.lj, i64 %i.lk
  %i.lm = load i32, ptr %i.ll, align 8, !tbaa !244
  %i.ln = icmp ult i32 %i.lm, 2
  br i1 %i.ln, label %bb.ag, label %_ZN3sat6solver26extract_fixed_consequencesERjRKNS_11literal_setER16tracked_uint_setR6vectorI7svectorINS_7literalEjELb1EjE.exit

bb.ag:                                            ; preds = %bb.af
  %i.lo = load ptr, ptr %i.le, align 8, !tbaa !267 ; 4 uses
  %i.lp = icmp eq ptr %i.lo, null
  br i1 %i.lp, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.lq = getelementptr inbounds i8, ptr %i.lo, i64 -4
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !250 ; 2 uses
  %i.ls = getelementptr inbounds i8, ptr %i.lo, i64 -8
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !250
  %i.lu = icmp eq i32 %i.lr, %i.lt
  br i1 %i.lu, label %bb.ai, label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.preheader.i.i

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  invoke void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.le)
          to label %.noexc63 unwind label %.loopexit.split-lp163.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc63:                                         ; preds = %bb.ai
  %.pre.i.i.i = load ptr, ptr %i.le, align 8, !tbaa !267 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i, i64 -4
  %.pre2.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !250
  br label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.preheader.i.i

_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.preheader.i.i: ; preds = %.noexc63, %bb.ah
  %i.lv = phi i32 [ %.pre2.i.i.i, %.noexc63 ], [ %i.lr, %bb.ah ] ; 2 uses
  %i.lw = phi ptr [ %.pre.i.i.i, %.noexc63 ], [ %i.lo, %bb.ah ] ; 3 uses
  %i.lx = getelementptr inbounds i8, ptr %i.lw, i64 -4
  %i.ly = zext i32 %i.lv to i64
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.lw, i64 %i.ly
  store i32 %.sroa.01.0.copyload.i, ptr %i.lz, align 4, !tbaa !250
  %i.ma = add i32 %i.lv, 1
  store i32 %i.ma, ptr %i.lx, align 4, !tbaa !250
  br label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.i.i61

_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.i.i61: ; preds = %bb.ak, %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.preheader.i.i
  %i.mb = phi ptr [ %.pre.i.i62, %bb.ak ], [ %i.lw, %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.preheader.i.i ] ; 2 uses
  %i.mc = getelementptr inbounds i8, ptr %i.mb, i64 -4
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !250 ; 2 uses
  %i.me = icmp eq i32 %i.md, 0
  br i1 %i.me, label %_ZN3sat6solver26extract_fixed_consequencesENS_7literalERKNS_11literal_setER16tracked_uint_setR6vectorI7svectorIS1_jELb1EjE.exit.i, label %_ZN6vectorIN3sat7literalELb0EjE4backEv.exit.i.i

_ZN6vectorIN3sat7literalELb0EjE4backEv.exit.i.i:  ; preds = %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.i.i61
  %i.mf = add i32 %i.md, -1
  %i.mg = zext i32 %i.mf to i64
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.mb, i64 %i.mg
  %.sroa.01.0.copyload.i.i = load i32, ptr %i.mh, align 4, !tbaa !250
  %i.mi = invoke noundef zeroext i1 @_ZN3sat6solver27extract_fixed_consequences1ENS_7literalERKNS_11literal_setER16tracked_uint_setR6vectorI7svectorIS1_jELb1EjE(ptr noundef nonnull align 8 dereferenceable(4264) %0, i32 %.sroa.01.0.copyload.i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %8, ptr noundef nonnull readonly align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc64 unwind label %.loopexit.split-lp163.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc64:                                         ; preds = %_ZN6vectorIN3sat7literalELb0EjE4backEv.exit.i.i
  %.pre.i.i62 = load ptr, ptr %i.le, align 8, !tbaa !267 ; 3 uses
  br i1 %i.mi, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.noexc64
  %i.mj = getelementptr inbounds i8, ptr %.pre.i.i62, i64 -4 ; 2 uses
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !250
  %i.ml = add i32 %i.mk, -1
  store i32 %i.ml, ptr %i.mj, align 4, !tbaa !250
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.noexc64
  %i.mm = icmp eq ptr %.pre.i.i62, null
  br i1 %i.mm, label %_ZN3sat6solver26extract_fixed_consequencesENS_7literalERKNS_11literal_setER16tracked_uint_setR6vectorI7svectorIS1_jELb1EjE.exit.i, label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.i.i61, !llvm.loop !36

_ZN3sat6solver26extract_fixed_consequencesENS_7literalERKNS_11literal_setER16tracked_uint_setR6vectorI7svectorIS1_jELb1EjE.exit.i: ; preds = %bb.ak, %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.i.i61
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next, %i.lf
  br i1 %exitcond.not.i, label %_ZN3sat6solver26extract_fixed_consequencesERjRKNS_11literal_setER16tracked_uint_setR6vectorI7svectorINS_7literalEjELb1EjE.exit, label %bb.af, !llvm.loop !37

_ZN3sat6solver26extract_fixed_consequencesERjRKNS_11literal_setER16tracked_uint_setR6vectorI7svectorINS_7literalEjELb1EjE.exit: ; preds = %_ZN3sat6solver26extract_fixed_consequencesENS_7literalERKNS_11literal_setER16tracked_uint_setR6vectorI7svectorIS1_jELb1EjE.exit.i, %bb.af, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i, %bb.ae
  %.0.i20.i = phi i32 [ 0, %bb.ae ], [ 0, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i ], [ %i.lc, %bb.af ], [ %i.lc, %_ZN3sat6solver26extract_fixed_consequencesENS_7literalERKNS_11literal_setER16tracked_uint_setR6vectorI7svectorIS1_jELb1EjE.exit.i ]
  %i.mn = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !289 ; 2 uses
  %.not.i.i.i.i65 = icmp eq ptr %i.mo, null
  br i1 %.not.i.i.i.i65, label %_ZN6vectorIjLb0EjED2Ev.exit.i.i, label %bb.al

bb.al:                                            ; preds = %_ZN3sat6solver26extract_fixed_consequencesERjRKNS_11literal_setER16tracked_uint_setR6vectorI7svectorINS_7literalEjELb1EjE.exit
  %i.mp = getelementptr inbounds i8, ptr %i.mo, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.mp)
          to label %_ZN6vectorIjLb0EjED2Ev.exit.i.i unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.mq = landingpad { ptr, i32 }
          catch ptr null
  %i.mr = extractvalue { ptr, i32 } %i.mq, 0
  call void @__clang_call_terminate(ptr %i.mr) #38
  unreachable

_ZN6vectorIjLb0EjED2Ev.exit.i.i:                  ; preds = %bb.al, %_ZN3sat6solver26extract_fixed_consequencesERjRKNS_11literal_setER16tracked_uint_setR6vectorI7svectorINS_7literalEjELb1EjE.exit
  %i.ms = load ptr, ptr %8, align 8, !tbaa !249   ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ms, null
  br i1 %.not.i.i1.i.i, label %_ZN3sat11literal_setD2Ev.exit, label %bb.an

bb.an:                                            ; preds = %_ZN6vectorIjLb0EjED2Ev.exit.i.i
  %i.mt = getelementptr inbounds i8, ptr %i.ms, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.mt)
          to label %_ZN3sat11literal_setD2Ev.exit unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.mu = landingpad { ptr, i32 }
          catch ptr null
  %i.mv = extractvalue { ptr, i32 } %i.mu, 0
  call void @__clang_call_terminate(ptr %i.mv) #38
  unreachable

_ZN3sat11literal_setD2Ev.exit:                    ; preds = %_ZN6vectorIjLb0EjED2Ev.exit.i.i, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  invoke void @_ZN3sat6solver11do_simplifyEv(ptr noundef nonnull align 8 dereferenceable(4264) %0)
          to label %bb.ap unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ap:                                            ; preds = %_ZN3sat11literal_setD2Ev.exit
  %i.mw = load i8, ptr %i.fj, align 8, !tbaa !242, !range !315, !noundef !316
  %i.mx = trunc nuw i8 %i.mw to i1
  br i1 %i.mx, label %bb.aq, label %.critedge.preheader

.critedge.preheader:                              ; preds = %bb.ap
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 4104 ; 4 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 4105 ; 4 uses
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 3280
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 4256 ; 4 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %9, i64 8
  br label %.critedge

bb.aq:                                            ; preds = %bb.ap
  %i.nd = load ptr, ptr %i.by, align 8, !tbaa !267 ; 2 uses
  %i.ne = icmp eq ptr %i.nd, null
  br i1 %i.ne, label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.thread.i.i73, label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.i.i66

_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.i.i66: ; preds = %bb.aq
  %i.nf = getelementptr inbounds i8, ptr %i.nd, i64 -4
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !250
  %i.nh = icmp eq i32 %i.ng, 0
  br i1 %i.nh, label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.thread.i.i73, label %_ZNK3sat6solver20tracking_assumptionsEv.exit.thread.i67

_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.thread.i.i73: ; preds = %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.i.i66, %bb.aq
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 4200
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !267 ; 2 uses
  %i.nk = icmp eq ptr %i.nj, null
  br i1 %i.nk, label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit1.thread.i.i75, label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit1.i.i74

_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit1.i.i74: ; preds = %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.thread.i.i73
  %i.nl = getelementptr inbounds i8, ptr %i.nj, i64 -4
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !250
  %i.nn = icmp eq i32 %i.nm, 0
  br i1 %i.nn, label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit1.thread.i.i75, label %_ZNK3sat6solver20tracking_assumptionsEv.exit.thread.i67

_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit1.thread.i.i75: ; preds = %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit1.i.i74, %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.thread.i.i73
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !287 ; 3 uses
  %.not.i.i76 = icmp eq ptr %i.np, null
  br i1 %.not.i.i76, label %_ZNK3sat6solver20tracking_assumptionsEv.exit.thread4.i68, label %_ZNK3sat6solver20tracking_assumptionsEv.exit.i77

_ZNK3sat6solver20tracking_assumptionsEv.exit.i77: ; preds = %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit1.thread.i.i75
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !87
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 344
  %i.ns = load ptr, ptr %i.nr, align 8
  %i.nt = invoke noundef zeroext i1 %i.ns(ptr noundef nonnull align 8 dereferenceable(32) %i.np)
          to label %.noexc78 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !451

.noexc78:                                         ; preds = %_ZNK3sat6solver20tracking_assumptionsEv.exit.i77
  br i1 %i.nt, label %_ZNK3sat6solver20tracking_assumptionsEv.exit.thread.i67, label %_ZNK3sat6solver20tracking_assumptionsEv.exit.thread4.i68

_ZNK3sat6solver20tracking_assumptionsEv.exit.thread.i67: ; preds = %.noexc78, %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit1.i.i74, %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.i.i66
  %i.nu = load i32, ptr %i.fh, align 4, !tbaa !256
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 3616
  %i.nw = load i32, ptr %i.nv, align 8, !tbaa !257
  %i.nx = icmp eq i32 %i.nu, %i.nw
  br i1 %i.nx, label %.preheader5.i71, label %_ZNK3sat6solver20tracking_assumptionsEv.exit.thread4.i68

.preheader5.i71:                                  ; preds = %_ZNK3sat6solver20tracking_assumptionsEv.exit.thread.i67, %bb.ar
  %i.ny = invoke noundef i32 @_ZN3sat6solver21resolve_conflict_coreEv(ptr noundef nonnull align 8 dereferenceable(4264) %0)
          to label %.noexc79 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc79:                                         ; preds = %.preheader5.i71
  %.not.not.not.i.not.i72 = icmp eq i32 %i.ny, -1
  br i1 %.not.not.not.i.not.i72, label %_ZN3sat6solver18check_inconsistentEv.exit81.thread.invoke, label %bb.ar

bb.ar:                                            ; preds = %.noexc79
  %i.nz = load i8, ptr %i.fj, align 8, !tbaa !242, !range !315, !noundef !316
  %i.oa = trunc nuw i8 %i.nz to i1
  br i1 %i.oa, label %.preheader5.i71, label %_ZN3sat6solver18check_inconsistentEv.exit81.thread.invoke

_ZNK3sat6solver20tracking_assumptionsEv.exit.thread4.i68: ; preds = %_ZNK3sat6solver20tracking_assumptionsEv.exit.thread.i67, %.noexc78, %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit1.thread.i.i75
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.oc = load i8, ptr %i.ob, align 8, !tbaa !337, !range !315, !noundef !316
  %i.od = trunc nuw i8 %i.oc to i1
  br i1 %i.od, label %bb.as, label %_ZN3sat6solver18check_inconsistentEv.exit81.thread.invoke

bb.as:                                            ; preds = %_ZNK3sat6solver20tracking_assumptionsEv.exit.thread4.i68
  %i.oe = load i32, ptr %i.fh, align 4, !tbaa !256
  %i.of = icmp eq i32 %i.oe, 0
  br i1 %i.of, label %.preheader.i69, label %_ZN3sat6solver18check_inconsistentEv.exit81.thread.invoke

.preheader.i69:                                   ; preds = %bb.as, %bb.at
  %i.og = invoke noundef i32 @_ZN3sat6solver21resolve_conflict_coreEv(ptr noundef nonnull align 8 dereferenceable(4264) %0)
          to label %.noexc80 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc80:                                         ; preds = %.preheader.i69
  %.not.not.not.i2.not.i70 = icmp eq i32 %i.og, -1
  br i1 %.not.not.not.i2.not.i70, label %_ZN3sat6solver18check_inconsistentEv.exit81.thread.invoke, label %bb.at

bb.at:                                            ; preds = %.noexc80
  %i.oh = load i8, ptr %i.fj, align 8, !tbaa !242, !range !315, !noundef !316
  %i.oi = trunc nuw i8 %i.oh to i1
  br i1 %i.oi, label %.preheader.i69, label %_ZN3sat6solver18check_inconsistentEv.exit81.thread.invoke

_ZN3sat6solver18check_inconsistentEv.exit81.thread.invoke: ; preds = %bb.bn, %.noexc117, %bb.bp, %.noexc118, %bb.ar, %.noexc79, %bb.at, %.noexc80, %bb.as, %_ZNK3sat6solver20tracking_assumptionsEv.exit.thread4.i68, %bb.bo, %_ZNK3sat6solver20tracking_assumptionsEv.exit.thread4.i106
  invoke void @_ZN3sat6solver22fixup_consequence_coreEv(ptr noundef nonnull align 8 dereferenceable(4264) %0)
          to label %_ZN3sat6solver18check_inconsistentEv.exit.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.au:                                            ; preds = %_ZN3sat6solver18check_inconsistentEv.exit.thread131
  %i.oj = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

.loopexit.split-lp163.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZN6vectorIN3sat7literalELb0EjE4backEv.exit.i.i, %bb.ai
  %lpad.loopexit.split-lp484 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3sat11literal_setD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #36
  br label %bb.av

bb.av:                                            ; preds = %.loopexit.split-lp163.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.au
  %.pn36 = phi { ptr, i32 } [ %lpad.loopexit.split-lp484, %.loopexit.split-lp163.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.oj, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %.body

.critedge:                                        ; preds = %.critedge.preheader, %bb.bt
  %.0 = phi i32 [ %.0.i20.i83, %bb.bt ], [ %.0.i20.i, %.critedge.preheader ] ; 2 uses
  %i.ok = load i8, ptr %i.my, align 8, !tbaa !301, !range !315, !noundef !316 ; 2 uses
  store i8 0, ptr %i.my, align 8, !tbaa !301
  %i.ol = load i8, ptr %i.mz, align 1, !tbaa !301, !range !315, !noundef !316 ; 2 uses
  store i8 0, ptr %i.mz, align 1, !tbaa !301
  %i.om = invoke noundef i32 @_ZN3sat6solver6searchEv(ptr noundef nonnull align 8 dereferenceable(4264) %0)
          to label %bb.ax unwind label %bb.aw     ; 2 uses

bb.aw:                                            ; preds = %.critedge
  %i.on = landingpad { ptr, i32 }
          cleanup
  store i8 %i.ol, ptr %i.mz, align 1, !tbaa !301
  store i8 %i.ok, ptr %i.my, align 8, !tbaa !301
  br label %.body

bb.ax:                                            ; preds = %.critedge
  store i8 %i.ol, ptr %i.mz, align 1, !tbaa !301
  store i8 %i.ok, ptr %i.my, align 8, !tbaa !301
  %.not38 = icmp eq i32 %i.om, 0
  br i1 %.not38, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  invoke void @_ZN3sat6solver22fixup_consequence_coreEv(ptr noundef nonnull align 8 dereferenceable(4264) %0)
          to label %_ZN3sat6solver18check_inconsistentEv.exit.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader5.i109, %.preheader.i107, %.preheader5.i, %.preheader.i, %.preheader.i69, %.preheader5.i71, %bb.bs, %_ZN3sat6solver18check_inconsistentEv.exit119.thread132, %bb.bk, %_ZN3sat11literal_setD2Ev.exit103, %_ZN3sat6solver18check_inconsistentEv.exit81.thread.invoke, %_ZNK3sat6solver20tracking_assumptionsEv.exit.i115, %_ZNK3sat6solver20tracking_assumptionsEv.exit.i77, %_ZNK3sat6solver20tracking_assumptionsEv.exit.i, %bb.x, %bb.q, %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.thread, %bb.p, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit, %_ZN3sat11literal_setD2Ev.exit, %bb.ay
  %lpad.loopexit.split-lp452 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.az:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  invoke void @_ZN3sat11literal_setC2ERK7svectorINS_7literalEjE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.ba unwind label %bb.bq

bb.ba:                                            ; preds = %bb.az
  %i.oo = load ptr, ptr %i.ky, align 8, !tbaa !267 ; 2 uses
  %i.op = icmp eq ptr %i.oo, null
  br i1 %i.op, label %_ZN3sat6solver26extract_fixed_consequencesERjRKNS_11literal_setER16tracked_uint_setR6vectorI7svectorINS_7literalEjELb1EjE.exit99, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i82

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i82: ; preds = %bb.ba
  %i.oq = getelementptr inbounds i8, ptr %i.oo, i64 -4
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !250 ; 5 uses
  %i.os = icmp ult i32 %.0, %i.or
  br i1 %i.os, label %.lr.ph.i84.preheader, label %_ZN3sat6solver26extract_fixed_consequencesERjRKNS_11literal_setER16tracked_uint_setR6vectorI7svectorINS_7literalEjELb1EjE.exit99

.lr.ph.i84.preheader:                             ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i82
  %i.ot = zext i32 %.0 to i64
  %10 = zext i32 %i.or to i64
  br label %.lr.ph.i84

.lr.ph.i84:                                       ; preds = %.lr.ph.i84.preheader, %_ZN3sat6solver26extract_fixed_consequencesENS_7literalERKNS_11literal_setER16tracked_uint_setR6vectorI7svectorIS1_jELb1EjE.exit.i92
  %indvars.iv282 = phi i64 [ %i.ot, %.lr.ph.i84.preheader ], [ %indvars.iv.next283, %_ZN3sat6solver26extract_fixed_consequencesENS_7literalERKNS_11literal_setER16tracked_uint_setR6vectorI7svectorIS1_jELb1EjE.exit.i92 ] ; 2 uses
  %i.ou = load ptr, ptr %i.ky, align 8, !tbaa !267
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %indvars.iv282
  %.sroa.01.0.copyload.i86 = load i32, ptr %i.ov, align 4, !tbaa !250 ; 2 uses
  %i.ow = lshr i32 %.sroa.01.0.copyload.i86, 1
  %i.ox = load ptr, ptr %i.na, align 8, !tbaa !291
  %i.oy = zext nneg i32 %i.ow to i64
  %i.oz = getelementptr inbounds nuw [24 x i8], ptr %i.ox, i64 %i.oy
  %i.pa = load i32, ptr %i.oz, align 8, !tbaa !244
  %i.pb = icmp ult i32 %i.pa, 2
  br i1 %i.pb, label %bb.bb, label %_ZN3sat6solver26extract_fixed_consequencesERjRKNS_11literal_setER16tracked_uint_setR6vectorI7svectorINS_7literalEjELb1EjE.exit99

bb.bb:                                            ; preds = %.lr.ph.i84
  %i.pc = load ptr, ptr %i.nb, align 8, !tbaa !267 ; 4 uses
  %i.pd = icmp eq ptr %i.pc, null
  br i1 %i.pd, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.pe = getelementptr inbounds i8, ptr %i.pc, i64 -4
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !250 ; 2 uses
  %i.pg = getelementptr inbounds i8, ptr %i.pc, i64 -8
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !250
  %i.pi = icmp eq i32 %i.pf, %i.ph
  br i1 %i.pi, label %bb.bd, label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.preheader.i.i87

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  invoke void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.nb)
          to label %.noexc97 unwind label %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc97:                                         ; preds = %bb.bd
  %.pre.i.i.i94 = load ptr, ptr %i.nb, align 8, !tbaa !267 ; 2 uses
  %.phi.trans.insert.i.i.i95 = getelementptr inbounds i8, ptr %.pre.i.i.i94, i64 -4
  %.pre2.i.i.i96 = load i32, ptr %.phi.trans.insert.i.i.i95, align 4, !tbaa !250
  br label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.preheader.i.i87

_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.preheader.i.i87: ; preds = %.noexc97, %bb.bc
  %i.pj = phi i32 [ %.pre2.i.i.i96, %.noexc97 ], [ %i.pf, %bb.bc ] ; 2 uses
  %i.pk = phi ptr [ %.pre.i.i.i94, %.noexc97 ], [ %i.pc, %bb.bc ] ; 3 uses
  %i.pl = getelementptr inbounds i8, ptr %i.pk, i64 -4
  %i.pm = zext i32 %i.pj to i64
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.pk, i64 %i.pm
  store i32 %.sroa.01.0.copyload.i86, ptr %i.pn, align 4, !tbaa !250
  %i.po = add i32 %i.pj, 1
  store i32 %i.po, ptr %i.pl, align 4, !tbaa !250
  br label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.i.i88

_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.i.i88: ; preds = %bb.bf, %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.preheader.i.i87
  %i.pp = phi ptr [ %.pre.i.i91, %bb.bf ], [ %i.pk, %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.preheader.i.i87 ] ; 2 uses
  %i.pq = getelementptr inbounds i8, ptr %i.pp, i64 -4
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !250 ; 2 uses
  %i.ps = icmp eq i32 %i.pr, 0
  br i1 %i.ps, label %_ZN3sat6solver26extract_fixed_consequencesENS_7literalERKNS_11literal_setER16tracked_uint_setR6vectorI7svectorIS1_jELb1EjE.exit.i92, label %_ZN6vectorIN3sat7literalELb0EjE4backEv.exit.i.i89

_ZN6vectorIN3sat7literalELb0EjE4backEv.exit.i.i89: ; preds = %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.i.i88
  %i.pt = add i32 %i.pr, -1
  %i.pu = zext i32 %i.pt to i64
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %i.pp, i64 %i.pu
  %.sroa.01.0.copyload.i.i90 = load i32, ptr %i.pv, align 4, !tbaa !250
  %i.pw = invoke noundef zeroext i1 @_ZN3sat6solver27extract_fixed_consequences1ENS_7literalERKNS_11literal_setER16tracked_uint_setR6vectorI7svectorIS1_jELb1EjE(ptr noundef nonnull align 8 dereferenceable(4264) %0, i32 %.sroa.01.0.copyload.i.i90, ptr noundef nonnull readonly align 8 dereferenceable(16) %9, ptr noundef nonnull readonly align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc98 unwind label %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc98:                                         ; preds = %_ZN6vectorIN3sat7literalELb0EjE4backEv.exit.i.i89
  %.pre.i.i91 = load ptr, ptr %i.nb, align 8, !tbaa !267 ; 3 uses
  br i1 %i.pw, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %.noexc98
  %i.px = getelementptr inbounds i8, ptr %.pre.i.i91, i64 -4 ; 2 uses
  %i.py = load i32, ptr %i.px, align 4, !tbaa !250
  %i.pz = add i32 %i.py, -1
  store i32 %i.pz, ptr %i.px, align 4, !tbaa !250
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %.noexc98
  %i.qa = icmp eq ptr %.pre.i.i91, null
  br i1 %i.qa, label %_ZN3sat6solver26extract_fixed_consequencesENS_7literalERKNS_11literal_setER16tracked_uint_setR6vectorI7svectorIS1_jELb1EjE.exit.i92, label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.i.i88, !llvm.loop !36

_ZN3sat6solver26extract_fixed_consequencesENS_7literalERKNS_11literal_setER16tracked_uint_setR6vectorI7svectorIS1_jELb1EjE.exit.i92: ; preds = %bb.bf, %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.i.i88
  %indvars.iv.next283 = add nuw nsw i64 %indvars.iv282, 1 ; 2 uses
  %exitcond.not.i93 = icmp eq i64 %indvars.iv.next283, %10
  br i1 %exitcond.not.i93, label %_ZN3sat6solver26extract_fixed_consequencesERjRKNS_11literal_setER16tracked_uint_setR6vectorI7svectorINS_7literalEjELb1EjE.exit99, label %.lr.ph.i84, !llvm.loop !37

_ZN3sat6solver26extract_fixed_consequencesERjRKNS_11literal_setER16tracked_uint_setR6vectorI7svectorINS_7literalEjELb1EjE.exit99: ; preds = %_ZN3sat6solver26extract_fixed_consequencesENS_7literalERKNS_11literal_setER16tracked_uint_setR6vectorI7svectorIS1_jELb1EjE.exit.i92, %.lr.ph.i84, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i82, %bb.ba
  %.0.i20.i83 = phi i32 [ 0, %bb.ba ], [ %i.or, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i82 ], [ %i.or, %.lr.ph.i84 ], [ %i.or, %_ZN3sat6solver26extract_fixed_consequencesENS_7literalERKNS_11literal_setER16tracked_uint_setR6vectorI7svectorIS1_jELb1EjE.exit.i92 ]
  %i.qb = load ptr, ptr %i.nc, align 8, !tbaa !289 ; 2 uses
  %.not.i.i.i.i100 = icmp eq ptr %i.qb, null
  br i1 %.not.i.i.i.i100, label %_ZN6vectorIjLb0EjED2Ev.exit.i.i101, label %bb.bg

bb.bg:                                            ; preds = %_ZN3sat6solver26extract_fixed_consequencesERjRKNS_11literal_setER16tracked_uint_setR6vectorI7svectorINS_7literalEjELb1EjE.exit99
  %i.qc = getelementptr inbounds i8, ptr %i.qb, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.qc)
          to label %_ZN6vectorIjLb0EjED2Ev.exit.i.i101 unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.qd = landingpad { ptr, i32 }
          catch ptr null
  %i.qe = extractvalue { ptr, i32 } %i.qd, 0
  call void @__clang_call_terminate(ptr %i.qe) #38
  unreachable

_ZN6vectorIjLb0EjED2Ev.exit.i.i101:               ; preds = %bb.bg, %_ZN3sat6solver26extract_fixed_consequencesERjRKNS_11literal_setER16tracked_uint_setR6vectorI7svectorINS_7literalEjELb1EjE.exit99
  %i.qf = load ptr, ptr %9, align 8, !tbaa !249   ; 2 uses
  %.not.i.i1.i.i102 = icmp eq ptr %i.qf, null
  br i1 %.not.i.i1.i.i102, label %_ZN3sat11literal_setD2Ev.exit103, label %bb.bi

bb.bi:                                            ; preds = %_ZN6vectorIjLb0EjED2Ev.exit.i.i101
  %i.qg = getelementptr inbounds i8, ptr %i.qf, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.qg)
          to label %_ZN3sat11literal_setD2Ev.exit103 unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.qh = landingpad { ptr, i32 }
          catch ptr null
  %i.qi = extractvalue { ptr, i32 } %i.qh, 0
  call void @__clang_call_terminate(ptr %i.qi) #38
  unreachable

_ZN3sat11literal_setD2Ev.exit103:                 ; preds = %_ZN6vectorIjLb0EjED2Ev.exit.i.i101, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  invoke void @_ZN3sat6solver10do_restartEb(ptr noundef nonnull align 8 dereferenceable(4264) %0, i1 noundef zeroext true)
          to label %bb.bk unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bk:                                            ; preds = %_ZN3sat11literal_setD2Ev.exit103
  invoke void @_ZN3sat6solver11do_simplifyEv(ptr noundef nonnull align 8 dereferenceable(4264) %0)
          to label %bb.bl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bl:                                            ; preds = %bb.bk
  %i.qj = load i8, ptr %i.fj, align 8, !tbaa !242, !range !315, !noundef !316
  %i.qk = trunc nuw i8 %i.qj to i1
  br i1 %i.qk, label %bb.bm, label %_ZN3sat6solver18check_inconsistentEv.exit119.thread132

bb.bm:                                            ; preds = %bb.bl
  %i.ql = load ptr, ptr %i.by, align 8, !tbaa !267 ; 2 uses
  %i.qm = icmp eq ptr %i.ql, null
  br i1 %i.qm, label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.thread.i.i111, label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.i.i104

_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.i.i104: ; preds = %bb.bm
  %i.qn = getelementptr inbounds i8, ptr %i.ql, i64 -4
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !250
  %i.qp = icmp eq i32 %i.qo, 0
  br i1 %i.qp, label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.thread.i.i111, label %_ZNK3sat6solver20tracking_assumptionsEv.exit.thread.i105

_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.thread.i.i111: ; preds = %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.i.i104, %bb.bm
  %i.qq = getelementptr inbounds nuw i8, ptr %0, i64 4200
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !267 ; 2 uses
  %i.qs = icmp eq ptr %i.qr, null
  br i1 %i.qs, label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit1.thread.i.i113, label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit1.i.i112

_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit1.i.i112: ; preds = %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.thread.i.i111
  %i.qt = getelementptr inbounds i8, ptr %i.qr, i64 -4
  %i.qu = load i32, ptr %i.qt, align 4, !tbaa !250
  %i.qv = icmp eq i32 %i.qu, 0
  br i1 %i.qv, label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit1.thread.i.i113, label %_ZNK3sat6solver20tracking_assumptionsEv.exit.thread.i105

_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit1.thread.i.i113: ; preds = %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit1.i.i112, %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.thread.i.i111
  %i.qw = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !287 ; 3 uses
  %.not.i.i114 = icmp eq ptr %i.qx, null
  br i1 %.not.i.i114, label %_ZNK3sat6solver20tracking_assumptionsEv.exit.thread4.i106, label %_ZNK3sat6solver20tracking_assumptionsEv.exit.i115

_ZNK3sat6solver20tracking_assumptionsEv.exit.i115: ; preds = %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit1.thread.i.i113
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !87
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 344
  %i.ra = load ptr, ptr %i.qz, align 8
  %i.rb = invoke noundef zeroext i1 %i.ra(ptr noundef nonnull align 8 dereferenceable(32) %i.qx)
          to label %.noexc116 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !451

.noexc116:                                        ; preds = %_ZNK3sat6solver20tracking_assumptionsEv.exit.i115
  br i1 %i.rb, label %_ZNK3sat6solver20tracking_assumptionsEv.exit.thread.i105, label %_ZNK3sat6solver20tracking_assumptionsEv.exit.thread4.i106

_ZNK3sat6solver20tracking_assumptionsEv.exit.thread.i105: ; preds = %.noexc116, %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit1.i.i112, %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.i.i104
  %i.rc = load i32, ptr %i.fh, align 4, !tbaa !256
  %i.rd = getelementptr inbounds nuw i8, ptr %0, i64 3616
  %i.re = load i32, ptr %i.rd, align 8, !tbaa !257
  %i.rf = icmp eq i32 %i.rc, %i.re
  br i1 %i.rf, label %.preheader5.i109, label %_ZNK3sat6solver20tracking_assumptionsEv.exit.thread4.i106

.preheader5.i109:                                 ; preds = %_ZNK3sat6solver20tracking_assumptionsEv.exit.thread.i105, %bb.bn
  %i.rg = invoke noundef i32 @_ZN3sat6solver21resolve_conflict_coreEv(ptr noundef nonnull align 8 dereferenceable(4264) %0)
          to label %.noexc117 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc117:                                        ; preds = %.preheader5.i109
  %.not.not.not.i.not.i110 = icmp eq i32 %i.rg, -1
  br i1 %.not.not.not.i.not.i110, label %_ZN3sat6solver18check_inconsistentEv.exit81.thread.invoke, label %bb.bn

bb.bn:                                            ; preds = %.noexc117
  %i.rh = load i8, ptr %i.fj, align 8, !tbaa !242, !range !315, !noundef !316
  %i.ri = trunc nuw i8 %i.rh to i1
  br i1 %i.ri, label %.preheader5.i109, label %_ZN3sat6solver18check_inconsistentEv.exit81.thread.invoke

_ZNK3sat6solver20tracking_assumptionsEv.exit.thread4.i106: ; preds = %_ZNK3sat6solver20tracking_assumptionsEv.exit.thread.i105, %.noexc116, %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit1.thread.i.i113
  %i.rj = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.rk = load i8, ptr %i.rj, align 8, !tbaa !337, !range !315, !noundef !316
  %i.rl = trunc nuw i8 %i.rk to i1
  br i1 %i.rl, label %bb.bo, label %_ZN3sat6solver18check_inconsistentEv.exit81.thread.invoke

bb.bo:                                            ; preds = %_ZNK3sat6solver20tracking_assumptionsEv.exit.thread4.i106
  %i.rm = load i32, ptr %i.fh, align 4, !tbaa !256
  %i.rn = icmp eq i32 %i.rm, 0
  br i1 %i.rn, label %.preheader.i107, label %_ZN3sat6solver18check_inconsistentEv.exit81.thread.invoke

.preheader.i107:                                  ; preds = %bb.bo, %bb.bp
  %i.ro = invoke noundef i32 @_ZN3sat6solver21resolve_conflict_coreEv(ptr noundef nonnull align 8 dereferenceable(4264) %0)
          to label %.noexc118 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc118:                                        ; preds = %.preheader.i107
  %.not.not.not.i2.not.i108 = icmp eq i32 %i.ro, -1
  br i1 %.not.not.not.i2.not.i108, label %_ZN3sat6solver18check_inconsistentEv.exit81.thread.invoke, label %bb.bp

bb.bp:                                            ; preds = %.noexc118
  %i.rp = load i8, ptr %i.fj, align 8, !tbaa !242, !range !315, !noundef !316
  %i.rq = trunc nuw i8 %i.rp to i1
  br i1 %i.rq, label %.preheader.i107, label %_ZN3sat6solver18check_inconsistentEv.exit81.thread.invoke

bb.bq:                                            ; preds = %bb.az
  %i.rr = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZN6vectorIN3sat7literalELb0EjE4backEv.exit.i.i89, %bb.bd
  %lpad.loopexit.split-lp449 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3sat11literal_setD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #36
  br label %bb.br

bb.br:                                            ; preds = %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bq
  %.pn39 = phi { ptr, i32 } [ %lpad.loopexit.split-lp449, %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.rr, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  br label %.body

_ZN3sat6solver18check_inconsistentEv.exit119.thread132: ; preds = %bb.bl
  invoke void @_ZN3sat6solver5do_gcEv(ptr noundef nonnull align 8 dereferenceable(4264) %0)
          to label %bb.bs unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bs:                                            ; preds = %_ZN3sat6solver18check_inconsistentEv.exit119.thread132
  %i.rs = invoke noundef zeroext i1 @_ZN3sat6solver13should_cancelEv(ptr noundef nonnull align 8 dereferenceable(4264) %0)
          to label %bb.bt unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bt:                                            ; preds = %bb.bs
  br i1 %i.rs, label %_ZN3sat6solver18check_inconsistentEv.exit.thread, label %.critedge, !llvm.loop !999

_ZN3sat6solver18check_inconsistentEv.exit.thread: ; preds = %bb.bt, %.noexc59, %bb.ab, %.noexc60, %bb.ad, %_ZN3sat6solver18check_inconsistentEv.exit81.thread.invoke, %bb.ay, %_ZNK3sat6solver20tracking_assumptionsEv.exit.thread4.i, %bb.ac, %_ZN3sat6solver9propagateEb.exit
  %.232 = phi i32 [ -1, %.noexc60 ], [ -1, %_ZN3sat6solver9propagateEb.exit ], [ -1, %.noexc59 ], [ -1, %_ZN3sat6solver18check_inconsistentEv.exit81.thread.invoke ], [ -1, %_ZNK3sat6solver20tracking_assumptionsEv.exit.thread4.i ], [ -1, %bb.ac ], [ %i.om, %bb.ay ], [ -1, %bb.ad ], [ -1, %bb.ab ], [ 0, %bb.bt ]
  store i8 %i.fn, ptr %i.fm, align 1, !tbaa !301
  br label %bb.bu

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.aw, %bb.br, %bb.w, %bb.av
  %.pn43 = phi { ptr, i32 } [ %.pn39, %bb.br ], [ %i.hu, %bb.w ], [ %.pn36, %bb.av ], [ %i.on, %bb.aw ], [ %lpad.loopexit.split-lp452, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  store i8 %i.fn, ptr %i.fm, align 1, !tbaa !301
  br label %.body124

bb.bu:                                            ; preds = %_ZN3sat6solver17pop_to_base_levelEv.exit, %_ZN3sat6solver18check_inconsistentEv.exit.thread
  %.333 = phi i32 [ %.232, %_ZN3sat6solver18check_inconsistentEv.exit.thread ], [ -1, %_ZN3sat6solver17pop_to_base_levelEv.exit ]
  %i.rt = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !289 ; 2 uses
  %.not.i.i.i120 = icmp eq ptr %i.ru, null
  br i1 %.not.i.i.i120, label %_ZN6vectorIjLb0EjED2Ev.exit.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.rv = getelementptr inbounds i8, ptr %i.ru, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.rv)
          to label %_ZN6vectorIjLb0EjED2Ev.exit.i unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.rw = landingpad { ptr, i32 }
          catch ptr null
  %i.rx = extractvalue { ptr, i32 } %i.rw, 0
  call void @__clang_call_terminate(ptr %i.rx) #38
  unreachable

_ZN6vectorIjLb0EjED2Ev.exit.i:                    ; preds = %bb.bv, %bb.bu
  %i.ry = load ptr, ptr %6, align 8, !tbaa !249   ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.ry, null
  br i1 %.not.i.i1.i, label %_ZN16tracked_uint_setD2Ev.exit, label %bb.bx

bb.bx:                                            ; preds = %_ZN6vectorIjLb0EjED2Ev.exit.i
  %i.rz = getelementptr inbounds i8, ptr %i.ry, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.rz)
          to label %_ZN16tracked_uint_setD2Ev.exit unwind label %bb.by

end_hunk_1
begin_hunk_2_@_ZN3sat6solver22fixup_consequence_coreEv:.lr.ph.i.i.i.i.i.i.i
  %i.ex = getelementptr inbounds nuw i8, ptr %.0.i29, i64 4
  store i32 2, ptr %i.ex, align 4, !tbaa !573
  store i32 %i.bs, ptr %.0.i29, align 4, !tbaa !572
  %i.ey = add i32 %i.bq, 1                        ; 2 uses
  store i32 %i.ey, ptr %i.c, align 4, !tbaa !569
  br label %.noexc

bb.z:                                             ; preds = %bb.u, %bb.t, %.lr.ph70.i
  %.3.i = phi ptr [ %.269.i, %bb.u ], [ %.269.i, %bb.t ], [ %.14668.i, %.lr.ph70.i ]
  %i.ez = getelementptr inbounds nuw i8, ptr %.14668.i, i64 12 ; 2 uses
  %.not47.i = icmp eq ptr %i.ez, %i.dw
  br i1 %.not47.i, label %._crit_edge.i, label %.lr.ph70.i, !llvm.loop !44

._crit_edge.i:                                    ; preds = %bb.z, %.preheader.i
  invoke void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.139, i32 noundef 390, ptr noundef nonnull @.str.12)
          to label %.noexc32 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc32:                                         ; preds = %._crit_edge.i
  invoke void @_Z18invoke_exit_actionj(i32 noundef 114)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.y, %bb.v, %bb.r, %bb.o, %.noexc32
  %i.fa = phi i32 [ %i.ev, %bb.y ], [ %i.dt, %bb.v ], [ %i.eh, %bb.r ], [ %i.dt, %bb.o ], [ %i.dt, %.noexc32 ] ; 2 uses
  %i.fb = phi i32 [ %i.ey, %bb.y ], [ %i.bq, %bb.v ], [ %i.ek, %bb.r ], [ %i.bq, %bb.o ], [ %i.bq, %.noexc32 ] ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i, i64 12 ; 3 uses
  %.not1.i.i.i19 = icmp eq ptr %i.fc, %i.bh
  br i1 %.not1.i.i.i19, label %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE8iteratorppEv.exit.i, label %.lr.ph.i.i.i20

.lr.ph.i.i.i20:                                   ; preds = %.noexc, %bb.aa
  %.sroa.010.1.i = phi ptr [ %i.fg, %bb.aa ], [ %i.fc, %.noexc ] ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i, i64 4
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !573
  %i.ff = icmp eq i32 %i.fe, 2
  br i1 %i.ff, label %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE8iteratorppEv.exit.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i.i20
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i, i64 12 ; 3 uses
  %.not.i.i.i21 = icmp eq ptr %i.fg, %i.bh
  br i1 %.not.i.i.i21, label %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE8iteratorppEv.exit.i, label %.lr.ph.i.i.i20, !llvm.loop !38

_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE8iteratorppEv.exit.i: ; preds = %bb.aa, %.lr.ph.i.i.i20, %.noexc
  %.sroa.010.2.i = phi ptr [ %i.fc, %.noexc ], [ %.sroa.010.1.i, %.lr.ph.i.i.i20 ], [ %i.fg, %bb.aa ] ; 2 uses
  %.not.i22 = icmp eq ptr %.sroa.010.2.i, %i.bm
  br i1 %.not.i22, label %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqEoRERKS4_.exit, label %.lr.ph.i

_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqEoRERKS4_.exit: ; preds = %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE8iteratorppEv.exit.i, %_ZNK14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE5beginEv.exit.i, %bb.d
  %i.fh = phi ptr [ %i.z, %bb.d ], [ %i.z, %_ZNK14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE5beginEv.exit.i ], [ %i.dr, %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE8iteratorppEv.exit.i ] ; 2 uses
  %i.fi = phi ptr [ %i.aa, %bb.d ], [ %i.aa, %_ZNK14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE5beginEv.exit.i ], [ %i.dr, %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE8iteratorppEv.exit.i ]
  %i.fj = phi i32 [ %i.ab, %bb.d ], [ %i.ab, %_ZNK14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE5beginEv.exit.i ], [ %i.ds, %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE8iteratorppEv.exit.i ] ; 2 uses
  %i.fk = phi i32 [ %i.ac, %bb.d ], [ %i.ac, %_ZNK14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE5beginEv.exit.i ], [ %i.fa, %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE8iteratorppEv.exit.i ]
  %i.fl = phi i32 [ %i.ad, %bb.d ], [ %i.ad, %_ZNK14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE5beginEv.exit.i ], [ %i.fb, %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE8iteratorppEv.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.fm = load ptr, ptr %i.u, align 8, !tbaa !267 ; 2 uses
  %i.fn = icmp eq ptr %i.fm, null
  br i1 %i.fn, label %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.thread, !llvm.loop !1006

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %._crit_edge.i.i, %.noexc39, %bb.k, %bb.g, %.noexc32, %._crit_edge.i, %bb.c
  %lpad.loopexit.split-lp212 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %bb.ai

.loopexit:                                        ; preds = %.lr.ph.i.i.i, %bb.b, %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit
  %i.fo = phi ptr [ %i.ao, %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit ], [ %i.ap, %bb.b ], [ %i.ap, %.lr.ph.i.i.i ] ; 2 uses
  %i.fp = phi i64 [ 0, %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit ], [ %i.aq, %bb.b ], [ %i.aq, %.lr.ph.i.i.i ]
  %i.fq = phi ptr [ %i.am, %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit ], [ %i.ar, %bb.b ], [ %i.ar, %.lr.ph.i.i.i ] ; 3 uses
  %i.fr = phi ptr [ %i.ak, %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit ], [ %i.as, %bb.b ], [ %i.as, %.lr.ph.i.i.i ]
  %.sroa.0.1.i = phi ptr [ %i.am, %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit ], [ %.sroa.0.0.i, %.lr.ph.i.i.i ], [ %i.ap, %bb.b ] ; 2 uses
  %i.fs = getelementptr inbounds nuw [12 x i8], ptr %i.fq, i64 %i.fp ; 2 uses
  %.not81 = icmp eq ptr %.sroa.0.1.i, %i.fs
  br i1 %.not81, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE8iteratorppEv.exit, %.loopexit
  %i.ft = icmp eq ptr %i.fq, null
  br i1 %i.ft, label %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.fq)
          to label %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqED2Ev.exit unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fu = landingpad { ptr, i32 }
          catch ptr null
  %i.fv = extractvalue { ptr, i32 } %i.fu, 0
  call void @__clang_call_terminate(ptr %i.fv) #38
  unreachable

_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqED2Ev.exit: ; preds = %._crit_edge, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  ret void

.lr.ph:                                           ; preds = %.loopexit, %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE8iteratorppEv.exit
  %i.fw = phi ptr [ %i.gf, %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE8iteratorppEv.exit ], [ %i.fr, %.loopexit ] ; 4 uses
  %.sroa.043.082 = phi ptr [ %.sroa.043.2, %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE8iteratorppEv.exit ], [ %.sroa.0.1.i, %.loopexit ] ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.043.082, i64 8
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !250
  %i.fz = icmp eq ptr %i.fw, null
  br i1 %i.fz, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph
  %i.ga = getelementptr inbounds i8, ptr %i.fw, i64 -4
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !250 ; 2 uses
  %i.gc = getelementptr inbounds i8, ptr %i.fw, i64 -8
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !250
  %i.ge = icmp eq i32 %i.gb, %i.gd
  br i1 %i.ge, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad, %.lr.ph
  invoke void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %.noexc25 unwind label %bb.ah

.noexc25:                                         ; preds = %bb.ae
  %.pre.i = load ptr, ptr %i.u, align 8, !tbaa !267 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !250
  br label %bb.af

bb.af:                                            ; preds = %.noexc25, %bb.ad
  %i.gf = phi ptr [ %.pre.i, %.noexc25 ], [ %i.fw, %bb.ad ] ; 3 uses
  %i.gg = phi i32 [ %.pre2.i, %.noexc25 ], [ %i.gb, %bb.ad ] ; 2 uses
  %i.gh = getelementptr inbounds i8, ptr %i.gf, i64 -4
  %i.gi = zext i32 %i.gg to i64
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %i.gi
  store i32 %i.fy, ptr %i.gj, align 4, !tbaa !250
  %i.gk = add i32 %i.gg, 1
  store i32 %i.gk, ptr %i.gh, align 4, !tbaa !250
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.043.082, i64 12 ; 3 uses
  %.not1.i.i = icmp eq ptr %i.gl, %i.fo
  br i1 %.not1.i.i, label %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE8iteratorppEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.af, %bb.ag
  %.sroa.043.1 = phi ptr [ %i.gp, %bb.ag ], [ %i.gl, %bb.af ] ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.043.1, i64 4
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !573
  %i.go = icmp eq i32 %i.gn, 2
  br i1 %i.go, label %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE8iteratorppEv.exit, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i.i
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.043.1, i64 12 ; 3 uses
  %.not.i.i = icmp eq ptr %i.gp, %i.fo
  br i1 %.not.i.i, label %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE8iteratorppEv.exit, label %.lr.ph.i.i, !llvm.loop !38

_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE8iteratorppEv.exit: ; preds = %.lr.ph.i.i, %bb.ag, %bb.af
  %.sroa.043.2 = phi ptr [ %i.gl, %bb.af ], [ %i.gp, %bb.ag ], [ %.sroa.043.1, %.lr.ph.i.i ] ; 2 uses
  %.not = icmp eq ptr %.sroa.043.2, %i.fs
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.ah:                                            ; preds = %bb.ae
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn17 = phi { ptr, i32 } [ %lpad.loopexit.split-lp212, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.gq, %bb.ah ]
  call void @_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqED2Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %1) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  resume { ptr, i32 } %.pn17
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqED2Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !304    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.a)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #38
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3sat6solver26extract_fixed_consequencesERjRKNS_11literal_setER16tracked_uint_setR6vectorI7svectorINS_7literalEjELb1EjE(ptr noundef nonnull align 8 dereferenceable(4264) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3784 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !267  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.critedge, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit:     ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !250  ; 5 uses
  %i.f = load i32, ptr %1, align 4, !tbaa !250    ; 2 uses
  %i.g = icmp ult i32 %i.f, %i.e
  br i1 %i.g, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3280
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4256 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN3sat6solver26extract_fixed_consequencesENS_7literalERKNS_11literal_setER16tracked_uint_setR6vectorI7svectorIS1_jELb1EjE.exit
  %.012 = phi i32 [ %i.f, %.lr.ph ], [ %6, %_ZN3sat6solver26extract_fixed_consequencesENS_7literalERKNS_11literal_setER16tracked_uint_setR6vectorI7svectorIS1_jELb1EjE.exit ] ; 2 uses
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !267
  %5 = zext i32 %.012 to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %5
  %.sroa.01.0.copyload = load i32, ptr %i.k, align 4, !tbaa !250 ; 2 uses
  %i.l = lshr i32 %.sroa.01.0.copyload, 1
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !291
  %i.n = zext nneg i32 %i.l to i64
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.n
  %i.p = load i32, ptr %i.o, align 8, !tbaa !244
  %i.q = icmp ult i32 %i.p, 2
  br i1 %i.q, label %bb.c, label %.critedge

.critedge:                                        ; preds = %bb.b, %_ZN3sat6solver26extract_fixed_consequencesENS_7literalERKNS_11literal_setER16tracked_uint_setR6vectorI7svectorIS1_jELb1EjE.exit, %bb.a, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit
  %.0.i20 = phi i32 [ 0, %bb.a ], [ %i.e, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit ], [ %i.e, %_ZN3sat6solver26extract_fixed_consequencesENS_7literalERKNS_11literal_setER16tracked_uint_setR6vectorI7svectorIS1_jELb1EjE.exit ], [ %i.e, %bb.b ]
  store i32 %.0.i20, ptr %1, align 4, !tbaa !250
  ret void

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !267  ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !250  ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.r, i64 -8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !250
  %i.x = icmp eq i32 %i.u, %i.w
  br i1 %i.x, label %bb.e, label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.preheader.i

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  %.pre.i.i = load ptr, ptr %i.i, align 8, !tbaa !267 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !250
  br label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.preheader.i

_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.preheader.i: ; preds = %bb.e, %bb.d
  %i.y = phi i32 [ %.pre2.i.i, %bb.e ], [ %i.u, %bb.d ] ; 2 uses
  %i.z = phi ptr [ %.pre.i.i, %bb.e ], [ %i.r, %bb.d ] ; 3 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -4
  %i.ab = zext i32 %i.y to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ab
  store i32 %.sroa.01.0.copyload, ptr %i.ac, align 4, !tbaa !250
  %i.ad = add i32 %i.y, 1
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !250
  br label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.i

_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.i:  ; preds = %bb.g, %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.preheader.i
  %i.ae = phi ptr [ %.pre.i, %bb.g ], [ %i.z, %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.preheader.i ] ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !250 ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %_ZN3sat6solver26extract_fixed_consequencesENS_7literalERKNS_11literal_setER16tracked_uint_setR6vectorI7svectorIS1_jELb1EjE.exit, label %_ZN6vectorIN3sat7literalELb0EjE4backEv.exit.i

_ZN6vectorIN3sat7literalELb0EjE4backEv.exit.i:    ; preds = %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.i
  %i.ai = add i32 %i.ag, -1
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.aj
  %.sroa.01.0.copyload.i = load i32, ptr %i.ak, align 4, !tbaa !250
  %i.al = tail call noundef zeroext i1 @_ZN3sat6solver27extract_fixed_consequences1ENS_7literalERKNS_11literal_setER16tracked_uint_setR6vectorI7svectorIS1_jELb1EjE(ptr noundef nonnull align 8 dereferenceable(4264) %0, i32 %.sroa.01.0.copyload.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %2, ptr noundef nonnull readonly align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !267 ; 3 uses
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN6vectorIN3sat7literalELb0EjE4backEv.exit.i
  %i.am = getelementptr inbounds i8, ptr %.pre.i, i64 -4 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !250
  %i.ao = add i32 %i.an, -1
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !250
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN6vectorIN3sat7literalELb0EjE4backEv.exit.i
  %i.ap = icmp eq ptr %.pre.i, null
  br i1 %i.ap, label %_ZN3sat6solver26extract_fixed_consequencesENS_7literalERKNS_11literal_setER16tracked_uint_setR6vectorI7svectorIS1_jELb1EjE.exit, label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.i, !llvm.loop !36

_ZN3sat6solver26extract_fixed_consequencesENS_7literalERKNS_11literal_setER16tracked_uint_setR6vectorI7svectorIS1_jELb1EjE.exit: ; preds = %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.i, %bb.g
  %6 = add nuw i32 %.012, 1                       ; 2 uses
  %exitcond.not = icmp eq i32 %6, %i.e
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !37
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3sat11literal_setC2ERK7svectorINS_7literalEjE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::allocator", align 1    ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !267    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.critedge, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.lr.ph

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.lr.ph: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit:     ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.lr.ph, %_ZN3sat11literal_set6insertENS_7literalE.exit
  %indvars.iv = phi i64 [ 0, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.lr.ph ], [ %indvars.iv.next, %_ZN3sat11literal_set6insertENS_7literalE.exit ] ; 3 uses
  %i.d = phi ptr [ %i.a, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.lr.ph ], [ %i.bw, %_ZN3sat11literal_set6insertENS_7literalE.exit ] ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !250
  %i.g = zext i32 %i.f to i64
  %i.h = icmp samesign ult i64 %indvars.iv, %i.g
  br i1 %i.h, label %bb.b, label %.critedge

.critedge:                                        ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit, %_ZN3sat11literal_set6insertENS_7literalE.exit, %bb.a
  ret void

.loopexit.split-lp:                               ; preds = %bb.i, %bb.c, %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %bb.h, %.loopexit.split-lp
  %eh.lpad-body = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.aw, %bb.h ]
  call void @_ZN16tracked_uint_setD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #36
  resume { ptr, i32 } %eh.lpad-body

bb.b:                                             ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  %.sroa.0.0.copyload = load i32, ptr %i.i, align 4, !tbaa !250 ; 3 uses
  %i.j = add i32 %.sroa.0.0.copyload, 1           ; 6 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !249    ; 4 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i, label %_ZNK6vectorIcLb0EjE4sizeEv.exit.thread.i.i.i

_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i:            ; preds = %bb.b
  %.not.i.i.i = icmp ne i32 %i.j, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  br label %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i.i.preheader

_ZNK6vectorIcLb0EjE4sizeEv.exit.thread.i.i.i:     ; preds = %bb.b
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 -4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !250  ; 2 uses
  %i.o = icmp ugt i32 %i.j, %i.n
  br i1 %i.o, label %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i.i.preheader, label %_ZN6vectorIcLb0EjE7reserveEjRKc.exit.i.i

_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i.i.preheader: ; preds = %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i, %_ZNK6vectorIcLb0EjE4sizeEv.exit.thread.i.i.i
  %.ph = phi ptr [ %i.k, %_ZNK6vectorIcLb0EjE4sizeEv.exit.thread.i.i.i ], [ null, %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i ]
  %.0.i17.i.i.i.i.ph = phi i32 [ %i.n, %_ZNK6vectorIcLb0EjE4sizeEv.exit.thread.i.i.i ], [ 0, %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i ] ; 2 uses
  br label %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i.i

_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i.i:          ; preds = %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i.i.backedge, %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i.i.preheader
  %i.p = phi ptr [ %.ph, %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i.i.preheader ], [ %.be, %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i.i.backedge ] ; 6 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.c, label %_ZNK6vectorIcLb0EjE8capacityEv.exit.i.i.i.i

_ZNK6vectorIcLb0EjE8capacityEv.exit.i.i.i.i:      ; preds = %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i.i
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 -8
  %i.s = load i32, ptr %i.r, align 4, !tbaa !250
  %i.t = icmp ugt i32 %i.j, %i.s
  br i1 %i.t, label %_ZNK6vectorIcLb0EjE8capacityEv.exit.thread.i.i.i.i, label %bb.k

bb.c:                                             ; preds = %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i.i
  %i.u = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 10)
          to label %.noexc8 unwind label %.loopexit.split-lp ; 3 uses

.noexc8:                                          ; preds = %bb.c
  store i32 2, ptr %i.u, align 4, !tbaa !250
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 0, ptr %i.v, align 4, !tbaa !250
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  store ptr %i.w, ptr %0, align 8, !tbaa !249
  br label %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i.i.backedge

_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i.i.backedge: ; preds = %.noexc8, %.noexc9
  %.be = phi ptr [ %i.az, %.noexc9 ], [ %i.w, %.noexc8 ]
  br label %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i.i, !llvm.loop !2

_ZNK6vectorIcLb0EjE8capacityEv.exit.thread.i.i.i.i: ; preds = %_ZNK6vectorIcLb0EjE8capacityEv.exit.i.i.i.i
  %i.x = getelementptr inbounds i8, ptr %i.p, i64 -8 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !250  ; 3 uses
  %i.z = mul i32 %i.y, 3
  %i.aa = add i32 %i.z, 1
  %i.ab = lshr i32 %i.aa, 1                       ; 3 uses
  %narrow.i = add nuw i32 %i.ab, 8                ; 2 uses
  %.not.i = icmp ugt i32 %i.ab, %i.y
  %i.ac = add i32 %i.y, 8
  %.not27.i = icmp ugt i32 %narrow.i, %i.ac
  %or.cond.i = select i1 %.not.i, i1 %.not27.i, i1 false
  br i1 %or.cond.i, label %bb.i, label %bb.d

bb.d:                                             ; preds = %_ZNK6vectorIcLb0EjE8capacityEv.exit.thread.i.i.i.i
  %i.ad = tail call ptr @__cxa_allocate_exception(i64 40) #36 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.136, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.ad, align 8, !tbaa !87
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 3 uses
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !260
  %i.ag = load ptr, ptr %2, align 8, !tbaa !288   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !261 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.am, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !288
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !262
  store i64 %i.an, ptr %i.af, align 8, !tbaa !262
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !261
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.f
  %i.ao = phi i64 [ %i.ak, %bb.f ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 %i.ao, ptr %i.aq, align 8, !tbaa !261
  store ptr %i.ah, ptr %2, align 8, !tbaa !288
  store i64 0, ptr %i.ap, align 8, !tbaa !261
  store i8 0, ptr %i.ah, align 8, !tbaa !262
  invoke void @__cxa_throw(ptr nonnull %i.ad, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #39
          to label %bb.j unwind label %bb.g

bb.g:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  %i.as = load ptr, ptr %2, align 8, !tbaa !288   ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.ah
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %bb.g
  %i.au = load i64, ptr %i.ah, align 8, !tbaa !262
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %.body

bb.h:                                             ; preds = %bb.d
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  call void @__cxa_free_exception(ptr %i.ad) #36
  br label %.body

bb.i:                                             ; preds = %_ZNK6vectorIcLb0EjE8capacityEv.exit.thread.i.i.i.i
  %i.ax = zext i32 %narrow.i to i64
  %i.ay = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.x, i64 noundef %i.ax)
          to label %.noexc9 unwind label %.loopexit.split-lp ; 2 uses

.noexc9:                                          ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  store ptr %i.az, ptr %0, align 8, !tbaa !249
  store i32 %i.ab, ptr %i.ay, align 4, !tbaa !250
  br label %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i.i.backedge

bb.j:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  unreachable

bb.k:                                             ; preds = %_ZNK6vectorIcLb0EjE8capacityEv.exit.i.i.i.i
  %i.ba = getelementptr inbounds i8, ptr %i.p, i64 -4
  store i32 %i.j, ptr %i.ba, align 4, !tbaa !250
  %.not1319.i.i.i.i = icmp eq i32 %.0.i17.i.i.i.i.ph, %i.j
  br i1 %.not1319.i.i.i.i, label %_ZN6vectorIcLb0EjE7reserveEjRKc.exit.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.k
  %i.bb = zext i32 %i.j to i64
  %i.bc = zext i32 %.0.i17.i.i.i.i.ph to i64      ; 2 uses
  %i.bd = getelementptr i8, ptr %i.p, i64 %i.bc
  %i.be = sub nsw i64 %i.bb, %i.bc
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bd, i8 0, i64 %i.be, i1 false), !tbaa !262
end_hunk_2
