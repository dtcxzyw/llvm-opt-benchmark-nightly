Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/colvarbias_meta?download=true
inline.NumInlined: 4972
inline.NumDeleted: 904
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN15colvarbias_meta6updateEv:bb.a
  br i1 %i.bk, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bl = load ptr, ptr %0, align 8, !tbaa !28
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = tail call noundef i32 %i.bn(ptr noundef nonnull align 8 dereferenceable(896) %0)
  %i.bp = or i32 %i.bo, %i.n
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %_ZN15colvarbias_meta16update_grid_dataEv.exit
  %.1 = phi i32 [ %i.bp, %bb.e ], [ %i.n, %bb.d ], [ %i.n, %_ZN15colvarbias_meta16update_grid_dataEv.exit ]
  %i.bq = load ptr, ptr %0, align 8, !tbaa !28
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 56
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = tail call noundef i32 %i.bs(ptr noundef nonnull align 8 dereferenceable(896) %0, ptr noundef null)
  %i.bu = or i32 %i.bt, %.1
  %i.bv = load ptr, ptr %0, align 8, !tbaa !28
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 64
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = tail call noundef i32 %i.bx(ptr noundef nonnull align 8 dereferenceable(896) %0, ptr noundef null)
  %i.bz = or i32 %i.bu, %i.by
  ret i32 %i.bz
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN15colvarbias_meta13replica_shareEv(ptr noundef nonnull align 8 dereferenceable(896) %0) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !184
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZN12colvarmodule4mainEv() ; 0 uses
  %i.e = load ptr, ptr @_ZN12colvarmodule5proxyE, align 8, !tbaa !212
  %i.f = load ptr, ptr %0, align 8, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i32 %i.h(ptr noundef nonnull align 8 dereferenceable(896) %0)
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 864 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef i32 %i.n(ptr noundef nonnull align 8 dereferenceable(224) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.k)
  %i.p = or i32 %i.o, %i.i
  %i.q = load ptr, ptr %0, align 8, !tbaa !28
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 168
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef i32 %i.s(ptr noundef nonnull align 8 dereferenceable(896) %0)
  %i.u = or i32 %i.p, %i.t
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.u, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZNK15colvarbias_meta18replica_share_freqEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(896) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.b = load i64, ptr %i.a, align 8, !tbaa !210
  ret i64 %i.b
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN15colvarbias_meta11calc_energyEPKSt6vectorI11colvarvalueSaIS1_EE(ptr noundef nonnull align 8 dereferenceable(896) %0, ptr noundef %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.13", align 8    ; 11 uses
  %3 = alloca %"class.std::vector.13", align 8    ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !206  ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !207  ; 8 uses
  %.not311 = icmp eq ptr %i.c, %i.d
  br i1 %.not311, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3                   ; 3 uses
  %xtraiter = and i64 %i.h, 3                     ; 3 uses
  %i.i = icmp ult i64 %i.h, 4
  br i1 %i.i, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.h, -4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.0302 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ao, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.0302
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !209  ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !28
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %i.k, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 248
  store double 0.000000e+00, ptr %i.p, align 8, !tbaa !412
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.0302
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !209  ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !28
  %i.u = getelementptr i8, ptr %i.t, i64 -24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds i8, ptr %i.s, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 248
  store double 0.000000e+00, ptr %i.x, align 8, !tbaa !412
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.0302
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !209 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !28
  %i.ac = getelementptr i8, ptr %i.ab, i64 -24
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds i8, ptr %i.aa, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 248
  store double 0.000000e+00, ptr %i.af, align 8, !tbaa !412
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.0302
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !209 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !28
  %i.ak = getelementptr i8, ptr %i.aj, i64 -24
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds i8, ptr %i.ai, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 248
  store double 0.000000e+00, ptr %i.an, align 8, !tbaa !412
  %i.ao = add nuw i64 %.0302, 4                   ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !396

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0302.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ao, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod355 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod355)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.0302.epil = phi i64 [ %i.aw, %.lr.ph.epil ], [ %.0302.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.0302.epil
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !209 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !28
  %i.as = getelementptr i8, ptr %i.ar, i64 -24
  %i.at = load i64, ptr %i.as, align 8
  %i.au = getelementptr inbounds i8, ptr %i.aq, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 248
  store double 0.000000e+00, ptr %i.av, align 8, !tbaa !412
  %i.aw = add nuw i64 %.0302.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !397

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !185, !range !182, !noundef !183
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.b, label %.critedge

bb.b:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %.not = icmp eq ptr %1, null
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !189 ; 7 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 320 ; 4 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !414)
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !224, !noalias !415 ; 4 uses
  %i.be = icmp ugt i64 %i.bd, 2305843009213693951
  br i1 %i.be, label %.noexc.i.i107.invoke, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i: ; preds = %bb.c
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE.exit.sink.split, label %_ZNK11colvar_gridIdE9new_indexEv.exit.i

_ZNK11colvar_gridIdE9new_indexEv.exit.i:          ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.bf = shl nuw nsw i64 %i.bd, 2                ; 3 uses
  %i.bg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #27
          to label %.noexc97 unwind label %bb.k   ; 6 uses

.noexc97:                                         ; preds = %_ZNK11colvar_gridIdE9new_indexEv.exit.i
  store ptr %i.bg, ptr %3, align 8, !tbaa !225, !alias.scope !415
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.bd
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !226, !alias.scope !415
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bg, i8 0, i64 %i.bf, i1 false), !tbaa !194, !noalias !415
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bf
  %.pre.i = load i64, ptr %i.bc, align 8, !tbaa !224, !noalias !413 ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !227, !alias.scope !415
  %.not.i = icmp eq i64 %.pre.i, 0
  br i1 %.not.i, label %_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc97
  %i.bl = load ptr, ptr %1, align 8, !tbaa !228, !noalias !413 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bb, i64 376
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !228, !noalias !413 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bb, i64 424
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !100, !noalias !413 ; 2 uses
  %min.iters.check = icmp ne i64 %.pre.i, 1
  %.not350 = icmp ult i64 %.pre.i, 2147483649
  %or.cond = and i1 %min.iters.check, %.not350
  br i1 %or.cond, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %.pre.i, 4294967294            ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.bq = or disjoint i64 %index, 1               ; 2 uses
  %i.br = getelementptr inbounds nuw [168 x i8], ptr %i.bl, i64 %index
  %i.bs = getelementptr inbounds nuw [168 x i8], ptr %i.bl, i64 %i.bq
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bv = load double, ptr %i.bt, align 8, !tbaa !229, !noalias !413
  %i.bw = load double, ptr %i.bu, align 8, !tbaa !229, !noalias !413
  %i.bx = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.by = insertelement <2 x double> %i.bx, double %i.bw, i64 1
  %i.bz = shl i64 %index, 32
  %i.ca = shl i64 %i.bq, 32
  %i.cb = ashr exact i64 %i.bz, 32                ; 2 uses
  %i.cc = ashr exact i64 %i.ca, 32
  %i.cd = getelementptr inbounds nuw [168 x i8], ptr %i.bn, i64 %i.cb
  %i.ce = getelementptr inbounds nuw [168 x i8], ptr %i.bn, i64 %i.cc
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ch = load double, ptr %i.cf, align 8, !tbaa !229, !noalias !413
  %i.ci = load double, ptr %i.cg, align 8, !tbaa !229, !noalias !413
  %i.cj = insertelement <2 x double> poison, double %i.ch, i64 0
  %i.ck = insertelement <2 x double> %i.cj, double %i.ci, i64 1
  %i.cl = fsub <2 x double> %i.by, %i.ck
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.cb
  %wide.load = load <2 x double>, ptr %i.cm, align 8, !tbaa !179, !noalias !413
  %i.cn = fdiv <2 x double> %i.cl, %wide.load
  %i.co = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %i.cn)
  %i.cp = fptosi <2 x double> %i.co to <2 x i32>
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %index
  store <2 x i32> %i.cp, ptr %i.cq, align 4, !tbaa !194, !noalias !413
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cr = icmp eq i64 %index.next, %n.vec
  br i1 %i.cr, label %middle.block, label %vector.body, !llvm.loop !402

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.pre.i, %n.vec
  br i1 %cmp.n, label %_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.07.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.07.i = phi i64 [ %i.dh, %scalar.ph ], [ %.07.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.cs = getelementptr inbounds nuw [168 x i8], ptr %i.bl, i64 %.07.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !229, !noalias !413
  %i.cv = shl i64 %.07.i, 32
  %i.cw = ashr exact i64 %i.cv, 32                ; 2 uses
  %i.cx = getelementptr inbounds nuw [168 x i8], ptr %i.bn, i64 %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !229, !noalias !413
  %i.da = fsub double %i.cu, %i.cz
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.cw
  %i.dc = load double, ptr %i.db, align 8, !tbaa !179, !noalias !413
  %i.dd = fdiv double %i.da, %i.dc
  %i.de = tail call noundef double @llvm.floor.f64(double %i.dd)
  %i.df = fptosi double %i.de to i32
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %.07.i
  store i32 %i.df, ptr %i.dg, align 4, !tbaa !194, !noalias !413
  %i.dh = add nuw i64 %.07.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dh, %.pre.i
  br i1 %exitcond.not.i, label %_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE.exit, label %scalar.ph, !llvm.loop !403

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !416)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !417)
  %i.di = load i64, ptr %i.bc, align 8, !tbaa !224, !noalias !418 ; 4 uses
  %i.dj = icmp ugt i64 %i.di, 2305843009213693951
  br i1 %i.dj, label %.noexc.i.i107.invoke, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i98

.noexc.i.i107.invoke:                             ; preds = %bb.d, %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.101) #26
          to label %.noexc.i.i107.cont unwind label %bb.k

.noexc.i.i107.cont:                               ; preds = %.noexc.i.i107.invoke
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i98: ; preds = %bb.d
  %.not.i.i.i.i.i.i99 = icmp eq i64 %i.di, 0
  br i1 %.not.i.i.i.i.i.i99, label %_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE.exit.sink.split, label %_ZNK11colvar_gridIdE9new_indexEv.exit.i100

_ZNK11colvar_gridIdE9new_indexEv.exit.i100:       ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i98
  %i.dk = shl nuw nsw i64 %i.di, 2                ; 3 uses
  %i.dl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dk) #27
          to label %.noexc109 unwind label %bb.k  ; 5 uses

.noexc109:                                        ; preds = %_ZNK11colvar_gridIdE9new_indexEv.exit.i100
  store ptr %i.dl, ptr %3, align 8, !tbaa !225, !alias.scope !418
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.di
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.dm, ptr %i.dn, align 8, !tbaa !226, !alias.scope !418
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.dl, i8 0, i64 %i.dk, i1 false), !tbaa !194, !noalias !418
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dk
  %.pre.i101 = load i64, ptr %i.bc, align 8, !tbaa !224, !noalias !416 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.do, ptr %i.dp, align 8, !tbaa !227, !alias.scope !418
  %.not.i102 = icmp eq i64 %.pre.i101, 0
  br i1 %.not.i102, label %_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE.exit, label %.lr.ph.i103

.lr.ph.i103:                                      ; preds = %.noexc109
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bb, i64 536
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !232, !noalias !416
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bb, i64 512
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !105, !noalias !416
  %i.du = getelementptr inbounds nuw i8, ptr %i.bb, i64 376
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !228, !noalias !416
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bb, i64 424
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !100, !noalias !416
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i103
  %.07.i104 = phi i64 [ 0, %.lr.ph.i103 ], [ %i.ex, %bb.e ] ; 5 uses
  %i.dy = trunc i64 %.07.i104 to i32
  %sext.i = shl i64 %.07.i104, 32
  %i.dz = ashr exact i64 %sext.i, 32              ; 4 uses
  %i.ea = sdiv i32 %i.dy, 64
  %.sext.i.i = sext i32 %i.ea to i64
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.dr, i64 %.sext.i.i
  %i.ec = and i64 %i.dz, -9223372036854775745
  %i.ed = icmp ugt i64 %i.ec, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i.i = select i1 %i.ed, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.eb, i64 %storemerge.idx.i.i.i.i.i.i.i
  %i.ee = and i64 %.07.i104, 63
  %i.ef = shl nuw i64 1, %i.ee
  %i.eg = load i64, ptr %storemerge.i.i.i.i.i.i.i, align 8, !tbaa !34, !noalias !416
  %i.eh = and i64 %i.ef, %i.eg
  %.not.i.i = icmp eq i64 %i.eh, 0
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.dz
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !107, !noalias !416
  %i.ek = select i1 %.not.i.i, i64 680, i64 512
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.ek
  %i.em = load double, ptr %i.el, align 8, !tbaa !229, !noalias !416
  %i.en = getelementptr inbounds nuw [168 x i8], ptr %i.dv, i64 %i.dz
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !229, !noalias !416
  %i.eq = fsub double %i.em, %i.ep
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.dz
  %i.es = load double, ptr %i.er, align 8, !tbaa !179, !noalias !416
  %i.et = fdiv double %i.eq, %i.es
  %i.eu = tail call noundef double @llvm.floor.f64(double %i.et)
  %i.ev = fptosi double %i.eu to i32
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %.07.i104
  store i32 %i.ev, ptr %i.ew, align 4, !tbaa !194, !noalias !416
  %i.ex = add nuw i64 %.07.i104, 1                ; 2 uses
  %exitcond.not.i105 = icmp eq i64 %i.ex, %.pre.i101
  br i1 %exitcond.not.i105, label %_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE.exit, label %bb.e, !llvm.loop !4

_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE.exit.sink.split: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i98, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br label %_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE.exit

_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE.exit: ; preds = %scalar.ph, %bb.e, %middle.block, %_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE.exit.sink.split, %.noexc109, %.noexc97
  %i.ey = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.f unwind label %bb.l       ; 0 uses

bb.f:                                             ; preds = %_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE.exit
  %i.ez = load ptr, ptr %3, align 8, !tbaa !225   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ez, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !226
  %i.fc = ptrtoint ptr %i.fb to i64
  %i.fd = ptrtoint ptr %i.ez to i64
  %i.fe = sub i64 %i.fc, %i.fd
  call void @_ZdlPvm(ptr noundef nonnull %i.ez, i64 noundef %i.fe) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !189 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 320
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !224 ; 2 uses
  %i.fj = icmp eq i64 %i.fi, 0
  br i1 %i.fj, label %_ZNK11colvar_gridIdE8index_okERKSt6vectorIiSaIiEE.exit, label %.lr.ph.i110

.lr.ph.i110:                                      ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 328
  %i.fl = load ptr, ptr %2, align 8, !tbaa !225
  %i.fm = load ptr, ptr %i.fk, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.j
  %i.fn = add nuw i64 %.0911.i, 1                 ; 2 uses
  %exitcond.not.i112 = icmp eq i64 %i.fn, %i.fi
  br i1 %exitcond.not.i112, label %_ZNK11colvar_gridIdE8index_okERKSt6vectorIiSaIiEE.exit, label %bb.i, !llvm.loop !5

bb.i:                                             ; preds = %bb.h, %.lr.ph.i110
  %.0911.i = phi i64 [ 0, %.lr.ph.i110 ], [ %i.fn, %bb.h ] ; 3 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %.0911.i
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !194 ; 2 uses
  %i.fq = icmp slt i32 %i.fp, 0
  br i1 %i.fq, label %.critedge.loopexit, label %bb.j

end_hunk_0
begin_hunk_1_@_ZN15colvarbias_meta11calc_energyEPKSt6vectorI11colvarvalueSaIS1_EE:bb.a
  br label %.loopexit.split-lp

.loopexit297:                                     ; preds = %bb.q
  %i.js = icmp eq ptr %i.jl, %i.jm
  br i1 %i.js, label %._crit_edge310, label %.lr.ph309.preheader

.lr.ph309.preheader:                              ; preds = %.loopexit296, %.loopexit297
  %.ph = phi ptr [ %i.jm, %.loopexit297 ], [ %i.fu, %.loopexit296 ]
  br label %.lr.ph309

.lr.ph309:                                        ; preds = %.lr.ph309.preheader, %bb.r
  %i.jt = phi ptr [ %i.kh, %bb.r ], [ %.ph, %.lr.ph309.preheader ]
  %.3307 = phi i64 [ %i.kf, %bb.r ], [ 0, %.lr.ph309.preheader ] ; 2 uses
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.jt, i64 %.3307
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !209 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 88
  %.sroa.01.0.copyload = load ptr, ptr %i.jw, align 8, !tbaa !204
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 64
  %i.jy = load ptr, ptr %0, align 8, !tbaa !28    ; 2 uses
  %i.jz = getelementptr i8, ptr %i.jy, i64 -24
  %i.ka = load i64, ptr %i.jz, align 8
  %i.kb = getelementptr inbounds i8, ptr %0, i64 %i.ka
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 248
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jy, i64 144
  %i.ke = load ptr, ptr %i.kd, align 8
  invoke void %i.ke(ptr noundef nonnull align 8 dereferenceable(896) %0, ptr %.sroa.01.0.copyload, ptr nonnull %i.jx, ptr noundef nonnull align 8 dereferenceable(8) %i.kc, ptr noundef %1)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %.lr.ph309
  %i.kf = add nuw i64 %.3307, 1                   ; 2 uses
  %i.kg = load ptr, ptr %i.b, align 8, !tbaa !206
  %i.kh = load ptr, ptr %i.a, align 8, !tbaa !207 ; 2 uses
  %i.ki = ptrtoint ptr %i.kg to i64
  %i.kj = ptrtoint ptr %i.kh to i64
  %i.kk = sub i64 %i.ki, %i.kj
  %i.kl = ashr exact i64 %i.kk, 3
  %i.km = icmp ult i64 %i.kf, %i.kl
  br i1 %i.km, label %.lr.ph309, label %._crit_edge310, !llvm.loop !411

._crit_edge310:                                   ; preds = %bb.r, %.critedge, %_ZNK11colvar_gridIdE8index_okERKSt6vectorIiSaIiEE.exit, %.loopexit297
  %i.kn = load ptr, ptr %2, align 8, !tbaa !225   ; 3 uses
  %.not.i.i.i291 = icmp eq ptr %i.kn, null
  br i1 %.not.i.i.i291, label %_ZNSt6vectorIiSaIiEED2Ev.exit292, label %bb.s

bb.s:                                             ; preds = %._crit_edge310
  %i.ko = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !226
  %i.kq = ptrtoint ptr %i.kp to i64
  %i.kr = ptrtoint ptr %i.kn to i64
  %i.ks = sub i64 %i.kq, %i.kr
  call void @_ZdlPvm(ptr noundef nonnull %i.kn, i64 noundef %i.ks) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit292

_ZNSt6vectorIiSaIiEED2Ev.exit292:                 ; preds = %._crit_edge310, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret i32 0

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt6vectorIiSaIiEED2Ev.exit114
  %.pn84.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit114 ], [ %lpad.loopexit.split-lp351, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.kt = load ptr, ptr %2, align 8, !tbaa !225   ; 3 uses
  %.not.i.i.i293 = icmp eq ptr %i.kt, null
  br i1 %.not.i.i.i293, label %_ZNSt6vectorIiSaIiEED2Ev.exit294, label %bb.t

bb.t:                                             ; preds = %.loopexit.split-lp
  %i.ku = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !226
  %i.kw = ptrtoint ptr %i.kv to i64
  %i.kx = ptrtoint ptr %i.kt to i64
  %i.ky = sub i64 %i.kw, %i.kx
  call void @_ZdlPvm(ptr noundef nonnull %i.kt, i64 noundef %i.ky) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit294

_ZNSt6vectorIiSaIiEED2Ev.exit294:                 ; preds = %.loopexit.split-lp, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %.pn84.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN15colvarbias_meta11calc_forcesEPKSt6vectorI11colvarvalueSaIS1_EE(ptr noundef nonnull align 8 dereferenceable(896) %0, ptr noundef %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 16 uses
  %2 = alloca %"class.std::vector.13", align 8    ; 11 uses
  %3 = alloca %"class.std::vector.13", align 8    ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 0, ptr %i.a, align 8, !tbaa !34
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !206  ; 4 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !207  ; 2 uses
  %.not237 = icmp eq ptr %i.d, %i.e
  br i1 %.not237, label %._crit_edge223, label %.preheader218.preheader

.preheader218.preheader:                          ; preds = %bb.a
  %.pre = load ptr, ptr %0, align 8, !tbaa !28
  br label %.preheader218

.preheader218:                                    ; preds = %.preheader218.preheader, %._crit_edge
  %i.f = phi ptr [ %i.an, %._crit_edge ], [ %i.e, %.preheader218.preheader ]
  %i.g = phi ptr [ %i.ao, %._crit_edge ], [ %i.d, %.preheader218.preheader ]
  %i.h = phi ptr [ %i.ap, %._crit_edge ], [ %.pre, %.preheader218.preheader ] ; 2 uses
  %.0222 = phi i64 [ %i.aq, %._crit_edge ], [ 0, %.preheader218.preheader ] ; 2 uses
  store i64 0, ptr %i.a, align 8, !tbaa !34
  %i.i = getelementptr i8, ptr %i.h, i64 -24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds i8, ptr %0, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 152
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 160
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !104
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !105
  %.not238 = icmp eq ptr %i.n, %i.o
  br i1 %.not238, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader218, %.lr.ph
  %storemerge80221 = phi i64 [ %i.z, %.lr.ph ], [ 0, %.preheader218 ] ; 2 uses
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !207
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.0222
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !209  ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !28
  %i.t = getelementptr i8, ptr %i.s, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %i.r, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 200
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !228
  %i.y = getelementptr inbounds nuw [168 x i8], ptr %i.x, i64 %storemerge80221
  tail call void @_ZN11colvarvalue5resetEv(ptr noundef nonnull align 8 dereferenceable(168) %i.y)
  %i.z = add nuw i64 %storemerge80221, 1          ; 3 uses
  store i64 %i.z, ptr %i.a, align 8, !tbaa !34
  %i.aa = load ptr, ptr %0, align 8, !tbaa !28    ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds i8, ptr %0, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 152
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 160
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !104
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !105
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 3
  %i.am = icmp ult i64 %i.z, %i.al
  br i1 %i.am, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !419

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre248 = load ptr, ptr %i.c, align 8, !tbaa !206
  %.pre249 = load ptr, ptr %i.b, align 8, !tbaa !207
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader218
  %i.an = phi ptr [ %.pre249, %._crit_edge.loopexit ], [ %i.f, %.preheader218 ] ; 3 uses
  %i.ao = phi ptr [ %.pre248, %._crit_edge.loopexit ], [ %i.g, %.preheader218 ] ; 3 uses
  %i.ap = phi ptr [ %i.aa, %._crit_edge.loopexit ], [ %i.h, %.preheader218 ]
  %i.aq = add nuw i64 %.0222, 1                   ; 2 uses
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = ptrtoint ptr %i.an to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = ashr exact i64 %i.at, 3
  %i.av = icmp ult i64 %i.aq, %i.au
  br i1 %i.av, label %.preheader218, label %._crit_edge223, !llvm.loop !420

._crit_edge223:                                   ; preds = %._crit_edge, %bb.a
  %i.aw = phi ptr [ %i.d, %bb.a ], [ %i.an, %._crit_edge ]
  %i.ax = phi ptr [ %i.d, %bb.a ], [ %i.ao, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !185, !range !182, !noundef !183
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.b, label %.critedge

bb.b:                                             ; preds = %._crit_edge223
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %.not = icmp eq ptr %1, null
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !189 ; 7 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 320 ; 4 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !438)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !439)
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !224, !noalias !440 ; 4 uses
  %i.bf = icmp ugt i64 %i.be, 2305843009213693951
  br i1 %i.bf, label %.noexc.i.i99.invoke, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i: ; preds = %bb.c
  %.not.i.i.i.i.i.i = icmp eq i64 %i.be, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE.exit.sink.split, label %_ZNK11colvar_gridIdE9new_indexEv.exit.i

_ZNK11colvar_gridIdE9new_indexEv.exit.i:          ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.bg = shl nuw nsw i64 %i.be, 2                ; 3 uses
  %i.bh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #27
          to label %.noexc89 unwind label %bb.k   ; 6 uses

.noexc89:                                         ; preds = %_ZNK11colvar_gridIdE9new_indexEv.exit.i
  store ptr %i.bh, ptr %3, align 8, !tbaa !225, !alias.scope !440
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.be
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !226, !alias.scope !440
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bh, i8 0, i64 %i.bg, i1 false), !tbaa !194, !noalias !440
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bg
  %.pre.i = load i64, ptr %i.bd, align 8, !tbaa !224, !noalias !438 ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !227, !alias.scope !440
  %.not.i = icmp eq i64 %.pre.i, 0
  br i1 %.not.i, label %_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc89
  %i.bm = load ptr, ptr %1, align 8, !tbaa !228, !noalias !438 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bc, i64 376
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !228, !noalias !438 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bc, i64 424
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !100, !noalias !438 ; 2 uses
  %min.iters.check = icmp ne i64 %.pre.i, 1
  %.not302 = icmp ult i64 %.pre.i, 2147483649
  %or.cond = and i1 %min.iters.check, %.not302
  br i1 %or.cond, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %.pre.i, 4294967294            ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.br = or disjoint i64 %index, 1               ; 2 uses
  %i.bs = getelementptr inbounds nuw [168 x i8], ptr %i.bm, i64 %index
  %i.bt = getelementptr inbounds nuw [168 x i8], ptr %i.bm, i64 %i.br
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bw = load double, ptr %i.bu, align 8, !tbaa !229, !noalias !438
  %i.bx = load double, ptr %i.bv, align 8, !tbaa !229, !noalias !438
  %i.by = insertelement <2 x double> poison, double %i.bw, i64 0
  %i.bz = insertelement <2 x double> %i.by, double %i.bx, i64 1
  %i.ca = shl i64 %index, 32
  %i.cb = shl i64 %i.br, 32
  %i.cc = ashr exact i64 %i.ca, 32                ; 2 uses
  %i.cd = ashr exact i64 %i.cb, 32
  %i.ce = getelementptr inbounds nuw [168 x i8], ptr %i.bo, i64 %i.cc
  %i.cf = getelementptr inbounds nuw [168 x i8], ptr %i.bo, i64 %i.cd
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ci = load double, ptr %i.cg, align 8, !tbaa !229, !noalias !438
  %i.cj = load double, ptr %i.ch, align 8, !tbaa !229, !noalias !438
  %i.ck = insertelement <2 x double> poison, double %i.ci, i64 0
  %i.cl = insertelement <2 x double> %i.ck, double %i.cj, i64 1
  %i.cm = fsub <2 x double> %i.bz, %i.cl
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.cc
  %wide.load = load <2 x double>, ptr %i.cn, align 8, !tbaa !179, !noalias !438
  %i.co = fdiv <2 x double> %i.cm, %wide.load
  %i.cp = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %i.co)
  %i.cq = fptosi <2 x double> %i.cp to <2 x i32>
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %index
  store <2 x i32> %i.cq, ptr %i.cr, align 4, !tbaa !194, !noalias !438
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cs = icmp eq i64 %index.next, %n.vec
  br i1 %i.cs, label %middle.block, label %vector.body, !llvm.loop !425

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.pre.i, %n.vec
  br i1 %cmp.n, label %_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.07.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.07.i = phi i64 [ %i.di, %scalar.ph ], [ %.07.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ct = getelementptr inbounds nuw [168 x i8], ptr %i.bm, i64 %.07.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !229, !noalias !438
  %i.cw = shl i64 %.07.i, 32
  %i.cx = ashr exact i64 %i.cw, 32                ; 2 uses
  %i.cy = getelementptr inbounds nuw [168 x i8], ptr %i.bo, i64 %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load double, ptr %i.cz, align 8, !tbaa !229, !noalias !438
  %i.db = fsub double %i.cv, %i.da
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.cx
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !179, !noalias !438
  %i.de = fdiv double %i.db, %i.dd
  %i.df = tail call noundef double @llvm.floor.f64(double %i.de)
  %i.dg = fptosi double %i.df to i32
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %.07.i
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !194, !noalias !438
  %i.di = add nuw i64 %.07.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.di, %.pre.i
  br i1 %exitcond.not.i, label %_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE.exit, label %scalar.ph, !llvm.loop !426

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !441)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !442)
  %i.dj = load i64, ptr %i.bd, align 8, !tbaa !224, !noalias !443 ; 4 uses
  %i.dk = icmp ugt i64 %i.dj, 2305843009213693951
  br i1 %i.dk, label %.noexc.i.i99.invoke, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i90

.noexc.i.i99.invoke:                              ; preds = %bb.d, %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.101) #26
          to label %.noexc.i.i99.cont unwind label %bb.k

.noexc.i.i99.cont:                                ; preds = %.noexc.i.i99.invoke
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i90: ; preds = %bb.d
  %.not.i.i.i.i.i.i91 = icmp eq i64 %i.dj, 0
  br i1 %.not.i.i.i.i.i.i91, label %_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE.exit.sink.split, label %_ZNK11colvar_gridIdE9new_indexEv.exit.i92

_ZNK11colvar_gridIdE9new_indexEv.exit.i92:        ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i90
  %i.dl = shl nuw nsw i64 %i.dj, 2                ; 3 uses
  %i.dm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dl) #27
          to label %.noexc101 unwind label %bb.k  ; 5 uses

.noexc101:                                        ; preds = %_ZNK11colvar_gridIdE9new_indexEv.exit.i92
  store ptr %i.dm, ptr %3, align 8, !tbaa !225, !alias.scope !443
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %i.dj
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !226, !alias.scope !443
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.dm, i8 0, i64 %i.dl, i1 false), !tbaa !194, !noalias !443
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dl
  %.pre.i93 = load i64, ptr %i.bd, align 8, !tbaa !224, !noalias !441 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.dp, ptr %i.dq, align 8, !tbaa !227, !alias.scope !443
  %.not.i94 = icmp eq i64 %.pre.i93, 0
  br i1 %.not.i94, label %_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE.exit, label %.lr.ph.i95

.lr.ph.i95:                                       ; preds = %.noexc101
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bc, i64 536
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !232, !noalias !441
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bc, i64 512
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !105, !noalias !441
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bc, i64 376
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !228, !noalias !441
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bc, i64 424
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !100, !noalias !441
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i95
  %.07.i96 = phi i64 [ 0, %.lr.ph.i95 ], [ %i.ey, %bb.e ] ; 5 uses
  %i.dz = trunc i64 %.07.i96 to i32
  %sext.i = shl i64 %.07.i96, 32
  %i.ea = ashr exact i64 %sext.i, 32              ; 4 uses
  %i.eb = sdiv i32 %i.dz, 64
  %.sext.i.i = sext i32 %i.eb to i64
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %.sext.i.i
  %i.ed = and i64 %i.ea, -9223372036854775745
  %i.ee = icmp ugt i64 %i.ed, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i.i = select i1 %i.ee, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ec, i64 %storemerge.idx.i.i.i.i.i.i.i
  %i.ef = and i64 %.07.i96, 63
  %i.eg = shl nuw i64 1, %i.ef
  %i.eh = load i64, ptr %storemerge.i.i.i.i.i.i.i, align 8, !tbaa !34, !noalias !441
  %i.ei = and i64 %i.eg, %i.eh
  %.not.i.i = icmp eq i64 %i.ei, 0
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.ea
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !107, !noalias !441
  %i.el = select i1 %.not.i.i, i64 680, i64 512
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.el
  %i.en = load double, ptr %i.em, align 8, !tbaa !229, !noalias !441
  %i.eo = getelementptr inbounds nuw [168 x i8], ptr %i.dw, i64 %i.ea
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !229, !noalias !441
  %i.er = fsub double %i.en, %i.eq
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.ea
  %i.et = load double, ptr %i.es, align 8, !tbaa !179, !noalias !441
  %i.eu = fdiv double %i.er, %i.et
  %i.ev = tail call noundef double @llvm.floor.f64(double %i.eu)
  %i.ew = fptosi double %i.ev to i32
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %.07.i96
  store i32 %i.ew, ptr %i.ex, align 4, !tbaa !194, !noalias !441
  %i.ey = add nuw i64 %.07.i96, 1                 ; 2 uses
  %exitcond.not.i97 = icmp eq i64 %i.ey, %.pre.i93
  br i1 %exitcond.not.i97, label %_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE.exit, label %bb.e, !llvm.loop !4

_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE.exit.sink.split: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i90, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br label %_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE.exit

_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE.exit: ; preds = %scalar.ph, %bb.e, %middle.block, %_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE.exit.sink.split, %.noexc101, %.noexc89
  %i.ez = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.f unwind label %bb.l       ; 0 uses

bb.f:                                             ; preds = %_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE.exit
  %i.fa = load ptr, ptr %3, align 8, !tbaa !225   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !226
  %i.fd = ptrtoint ptr %i.fc to i64
  %i.fe = ptrtoint ptr %i.fa to i64
  %i.ff = sub i64 %i.fd, %i.fe
  call void @_ZdlPvm(ptr noundef nonnull %i.fa, i64 noundef %i.ff) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !189 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 320
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !224 ; 2 uses
  %i.fk = icmp eq i64 %i.fj, 0
  br i1 %i.fk, label %_ZNK11colvar_gridIdE8index_okERKSt6vectorIiSaIiEE.exit, label %.lr.ph.i102

.lr.ph.i102:                                      ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fh, i64 328
  %i.fm = load ptr, ptr %2, align 8, !tbaa !225
  %i.fn = load ptr, ptr %i.fl, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.j
  %i.fo = add nuw i64 %.0911.i, 1                 ; 2 uses
  %exitcond.not.i104 = icmp eq i64 %i.fo, %i.fj
  br i1 %exitcond.not.i104, label %_ZNK11colvar_gridIdE8index_okERKSt6vectorIiSaIiEE.exit, label %bb.i, !llvm.loop !5

bb.i:                                             ; preds = %bb.h, %.lr.ph.i102
  %.0911.i = phi i64 [ 0, %.lr.ph.i102 ], [ %i.fo, %bb.h ] ; 3 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %.0911.i
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !194 ; 2 uses
  %i.fr = icmp slt i32 %i.fq, 0
  br i1 %i.fr, label %.critedge.loopexit, label %bb.j

end_hunk_1
begin_hunk_2_@llvm.fmuladd.v2f64
!203 = !{!61, !61, i64 0}
!204 = !{!47, !47, i64 0}
!205 = !{!67, !66, i64 0}
!206 = !{!71, !70, i64 8}
!207 = !{!71, !70, i64 0}
!208 = !{!"p1 _ZTS15colvarbias_meta", !29, i64 0}
!209 = !{!208, !208, i64 0}
!210 = !{!84, !33, i64 320}
!211 = !{!"p1 _ZTS11colvarproxy", !29, i64 0}
!212 = !{!211, !211, i64 0}
!213 = !{!"_ZTSNSt12_Vector_baseIP6colvarSaIS1_EE12_Vector_implE", !103, i64 0}
!214 = !{!"_ZTSSt12_Vector_baseIP6colvarSaIS1_EE", !213, i64 0}
!215 = !{!"_ZTSSt6vectorIP6colvarSaIS1_EE", !214, i64 0}
!216 = !{!"p1 _ZTS11colvarvalue", !29, i64 0}
!217 = !{!"_ZTSNSt12_Vector_baseI11colvarvalueSaIS0_EE17_Vector_impl_dataE", !216, i64 0, !216, i64 8, !216, i64 16}
!218 = !{!"_ZTSNSt12_Vector_baseI11colvarvalueSaIS0_EE12_Vector_implE", !217, i64 0}
!219 = !{!"_ZTSSt12_Vector_baseI11colvarvalueSaIS0_EE", !218, i64 0}
!220 = !{!"_ZTSSt6vectorI11colvarvalueSaIS0_EE", !219, i64 0}
!221 = !{!"_ZTS10colvarbias", !35, i64 8, !35, i64 40, !35, i64 72, !23, i64 104, !33, i64 112, !35, i64 120, !215, i64 152, !220, i64 176, !220, i64 200, !220, i64 224, !40, i64 248, !46, i64 256, !46, i64 257, !61, i64 264, !46, i64 272, !54, i64 280, !148, i64 288}
!222 = !{!"llvm.loop.unroll.disable"}
!223 = !{!"_ZTS18colvar_grid_params", !33, i64 0, !148, i64 8, !148, i64 32, !220, i64 56, !220, i64 80, !45, i64 104}
!224 = !{!223, !33, i64 0}
!225 = !{!145, !144, i64 0}
!226 = !{!145, !144, i64 16}
!227 = !{!145, !144, i64 8}
!228 = !{!217, !216, i64 0}
!229 = !{!149, !40, i64 8}
!230 = !{!"llvm.loop.isvectorized", i32 1}
!231 = !{!"llvm.loop.unroll.runtime.disable"}
!232 = !{!161, !160, i64 0}
!233 = !{!84, !46, i64 152}
!234 = !{!80, !30, i64 40}
!235 = !{!80, !30, i64 32}
!236 = !{!84, !46, i64 153}
!237 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !30, i64 0, !30, i64 8, !30, i64 16}
!238 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE12_Vector_implE", !237, i64 0}
!239 = !{!"_ZTSSt12_Vector_baseIhSaIhEE", !238, i64 0}
!240 = !{!"_ZTSSt6vectorIhSaIhEE", !239, i64 0}
!241 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !160, i64 0, !160, i64 8, !160, i64 16}
!242 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !241, i64 0}
!243 = !{!"_ZTSSt12_Vector_baseImSaImEE", !242, i64 0}
!244 = !{!"_ZTSSt6vectorImSaImEE", !243, i64 0}
!245 = !{!"_ZTSSt13_Ios_Fmtflags", !22, i64 0}
!246 = !{!"_ZTSSt12_Ios_Iostate", !22, i64 0}
!247 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !29, i64 0}
!248 = !{!"_ZTSNSt8ios_base6_WordsE", !29, i64 0, !33, i64 8}
!249 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !29, i64 0}
!250 = !{!"_ZTSSt8ios_base", !33, i64 8, !33, i64 16, !245, i64 24, !246, i64 28, !246, i64 32, !247, i64 40, !248, i64 48, !22, i64 64, !23, i64 192, !249, i64 200, !79, i64 208}
!251 = !{!250, !246, i64 32}
!252 = !{!84, !46, i64 456}
!253 = !{!84, !46, i64 56}
!254 = !{!"_ZTSN15colvarbias_meta4hillE", !61, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !220, i64 32, !45, i64 56, !35, i64 80}
!255 = !{!254, !40, i64 8}
!256 = !{!254, !40, i64 24}
!257 = !{!254, !40, i64 16}
!258 = !{!149, !136, i64 0}
!259 = !{!140, !29, i64 0}
!260 = !{!140, !29, i64 16}
!261 = !{!42, !41, i64 16}
!262 = !{!137, !40, i64 16}
!263 = !{!71, !70, i64 16}
!264 = !{!84, !46, i64 137}
!265 = !{!88, !87, i64 0}
!266 = !{!"_ZTSN10colvardeps13feature_stateE", !46, i64 0, !46, i64 1, !23, i64 4, !148, i64 8}
!267 = !{!266, !46, i64 1}
!268 = !{!84, !33, i64 464}
!269 = !{!221, !46, i64 257}
!270 = !{!250, !245, i64 24}
!271 = !{!245, !245, i64 0}
!272 = !{ptr @_ZN15colvarbias_metaD0Ev, ptr @_ZN15colvarbias_metaD1Ev}
!273 = !{ptr @_ZN15colvarbias_metaD0Ev}
!274 = !{!55, !54, i64 0}
!275 = !{!84, !46, i64 156}
!276 = !{!84, !61, i64 184}
!277 = !{!54, !54, i64 0}
!278 = !{!"_ZTSSt15_Sp_counted_ptrIP18colvar_grid_scalarLN9__gnu_cxx12_Lock_policyE2EE", !191, i64 0, !54, i64 16}
!279 = !{!278, !54, i64 16}
!280 = !{!"_ZTSSt15_Sp_counted_ptrIP20colvar_grid_gradientLN9__gnu_cxx12_Lock_policyE2EE", !191, i64 0, !66, i64 16}
!281 = !{!280, !66, i64 16}
!282 = !{!84, !46, i64 155}
!283 = !{!84, !40, i64 160}
!284 = !{!84, !46, i64 157}
!285 = !{!84, !46, i64 168}
!286 = !{!"_ZTS11colvar_gridIdE", !130, i64 0, !223, i64 320, !33, i64 448, !33, i64 456, !45, i64 464, !244, i64 488, !215, i64 512, !166, i64 536, !166, i64 576, !166, i64 616, !166, i64 656, !46, i64 696, !46, i64 697}
!287 = !{!286, !33, i64 456}
!288 = !{!286, !33, i64 448}
!289 = !{!163, !160, i64 32}
!290 = !{!161, !23, i64 8}
!291 = !{!217, !216, i64 8}
!292 = !{!217, !216, i64 16}
!293 = !{!103, !102, i64 16}
!294 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!295 = !{!216, !216, i64 0}
!296 = !{!136, !136, i64 0}
!297 = !{i64 0, i64 8, !179, i64 8, i64 8, !179, i64 16, i64 8, !179}
!298 = !{i64 0, i64 8, !179, i64 8, i64 8, !179, i64 16, i64 8, !179, i64 24, i64 8, !179}
!299 = !{!51, !33, i64 16}
!300 = !{!53, !47, i64 0}
!301 = !{!250, !33, i64 16}
!302 = !{!254, !61, i64 0}
!303 = !{!250, !33, i64 8}
!304 = !{!144, !144, i64 0}
!305 = !{!29, !29, i64 0}
!306 = !{!"_ZTSN18colvarproxy_system15Boundaries_typeE", !22, i64 0}
!307 = !{!"_ZTS18colvarproxy_system", !35, i64 8, !40, i64 40, !40, i64 48, !46, i64 56, !40, i64 64, !40, i64 72, !40, i64 80, !23, i64 88, !40, i64 96, !40, i64 104, !46, i64 112, !306, i64 116, !137, i64 120, !137, i64 144, !137, i64 168, !137, i64 192, !137, i64 216, !137, i64 240}
!308 = !{!307, !40, i64 64}
!309 = !{!286, !46, i64 697}
!310 = !{!41, !41, i64 0}
!311 = !{!241, !160, i64 0}
!312 = !{!241, !160, i64 16}
!313 = !{!"p1 _ZTS17colvar_grid_count", !29, i64 0}
!314 = !{!"_ZTSSt12__shared_ptrI17colvar_grid_countLN9__gnu_cxx12_Lock_policyE2EE", !313, i64 0, !63, i64 8}
!315 = !{!314, !313, i64 0}
!316 = !{!"p1 _ZTSSt6vectorIhSaIhEE", !29, i64 0}
!317 = !{!"_ZTSN12colvarmodule13memory_streamE", !316, i64 0, !30, i64 8, !240, i64 16, !33, i64 40, !33, i64 48, !246, i64 56, !33, i64 64}
!318 = !{!317, !246, i64 56}
!319 = !{!317, !33, i64 64}
!320 = !{!246, !246, i64 0}
!321 = !{!317, !33, i64 40}
!322 = !{!221, !61, i64 264}
!323 = !{!317, !30, i64 8}
!324 = distinct !{!324, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!325 = distinct !{!325, !324, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!326 = distinct !{!326, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!327 = distinct !{!327, !326, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!328 = distinct !{!328, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!329 = distinct !{!329, !328, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!330 = distinct !{!330, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!331 = distinct !{!331, !330, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!332 = distinct !{!332, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_"}
!333 = distinct !{!333, !332, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_: argument 0"}
!334 = distinct !{!334, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!335 = distinct !{!335, !334, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!336 = distinct !{!336, !180}
!337 = distinct !{!337, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!338 = distinct !{!338, !337, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!339 = distinct !{!339, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!340 = distinct !{!340, !339, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!341 = distinct !{!341, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!342 = distinct !{!342, !341, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!343 = distinct !{!343, !180}
!344 = distinct !{!344, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!345 = distinct !{!345, !344, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!346 = distinct !{!346, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!347 = distinct !{!347, !346, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!348 = distinct !{!348, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!349 = distinct !{!349, !348, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!350 = distinct !{!350, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!351 = distinct !{!351, !350, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!352 = distinct !{!352, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!353 = distinct !{!353, !352, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!354 = distinct !{!354, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!355 = distinct !{!355, !354, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!356 = distinct !{!356, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!357 = distinct !{!357, !356, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!358 = distinct !{!358, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!359 = distinct !{!359, !358, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!360 = distinct !{!360, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!361 = distinct !{!361, !360, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!362 = distinct !{!362, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!363 = distinct !{!363, !362, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!364 = distinct !{!364, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!365 = distinct !{!365, !364, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!366 = distinct !{!366, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!367 = distinct !{!367, !366, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!368 = distinct !{!368, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!369 = distinct !{!369, !368, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!370 = distinct !{!370, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!371 = distinct !{!371, !370, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!372 = distinct !{!372, !180}
!373 = !{!325}
!374 = !{!327}
!375 = !{!329}
!376 = !{!331}
!377 = !{!333}
!378 = !{!335}
!379 = !{!338}
!380 = !{!340, !338}
!381 = !{!342}
!382 = !{!345}
!383 = !{!347}
!384 = !{!349}
!385 = !{!351}
!386 = !{!353}
!387 = !{!355, !353}
!388 = !{!357}
!389 = !{!359}
!390 = !{!361, !359}
!391 = !{!363}
!392 = !{!365}
!393 = !{!367}
!394 = !{!369}
!395 = !{!371}
!396 = distinct !{!396, !180}
!397 = distinct !{!397, !222}
!398 = distinct !{!398, i1 true, !"_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE"}
!399 = distinct !{!399, !398, !"_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE: argument 0"}
!400 = distinct !{!400, i1 true, !"_ZNK11colvar_gridIdE9new_indexEv"}
!401 = distinct !{!401, !400, !"_ZNK11colvar_gridIdE9new_indexEv: argument 0"}
!402 = distinct !{!402, !180, !230, !231}
!403 = distinct !{!403, !180, !230}
!404 = distinct !{!404, i1 true, !"_ZNK11colvar_gridIdE17get_colvars_indexEv"}
!405 = distinct !{!405, !404, !"_ZNK11colvar_gridIdE17get_colvars_indexEv: argument 0"}
!406 = distinct !{!406, i1 true, !"_ZNK11colvar_gridIdE9new_indexEv"}
!407 = distinct !{!407, !406, !"_ZNK11colvar_gridIdE9new_indexEv: argument 0"}
!408 = distinct !{!408, !222}
!409 = distinct !{!409, !180}
!410 = distinct !{!410, !180}
!411 = distinct !{!411, !180}
!412 = !{!221, !40, i64 248}
!413 = !{!399}
!414 = !{!401}
!415 = !{!401, !399}
!416 = !{!405}
!417 = !{!407}
!418 = !{!407, !405}
!419 = distinct !{!419, !180}
!420 = distinct !{!420, !180}
!421 = distinct !{!421, i1 true, !"_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE"}
!422 = distinct !{!422, !421, !"_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE: argument 0"}
!423 = distinct !{!423, i1 true, !"_ZNK11colvar_gridIdE9new_indexEv"}
!424 = distinct !{!424, !423, !"_ZNK11colvar_gridIdE9new_indexEv: argument 0"}
!425 = distinct !{!425, !180, !230, !231}
!426 = distinct !{!426, !180, !230}
!427 = distinct !{!427, i1 true, !"_ZNK11colvar_gridIdE17get_colvars_indexEv"}
!428 = distinct !{!428, !427, !"_ZNK11colvar_gridIdE17get_colvars_indexEv: argument 0"}
!429 = distinct !{!429, i1 true, !"_ZNK11colvar_gridIdE9new_indexEv"}
!430 = distinct !{!430, !429, !"_ZNK11colvar_gridIdE9new_indexEv: argument 0"}
!431 = distinct !{!431, !222}
!432 = distinct !{!432, !180}
!433 = distinct !{!433, !180}
!434 = distinct !{!434, !180}
!435 = distinct !{!435, !180}
!436 = distinct !{!436, !180}
!437 = distinct !{!437, !180}
!438 = !{!422}
!439 = !{!424}
!440 = !{!424, !422}
!441 = !{!428}
!442 = !{!430}
!443 = !{!430, !428}
!444 = distinct !{!444, i1 true, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!445 = distinct !{!445, !444, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!446 = distinct !{!446, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!447 = distinct !{!447, !446, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!448 = distinct !{!448, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_"}
!449 = distinct !{!449, !448, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_: argument 0"}
!450 = !{!445}
!451 = !{!447}
!452 = !{!447, !445}
!453 = !{!449}
!454 = distinct !{!454, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!455 = distinct !{!455, !454, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!456 = distinct !{!456, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!457 = distinct !{!457, !456, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!458 = distinct !{!458, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!459 = distinct !{!459, !458, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!460 = distinct !{!460, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!461 = distinct !{!461, !460, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!462 = distinct !{!462, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!463 = distinct !{!463, !462, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!464 = !{!"p2 _ZTSN12colvarmodule10atom_groupE", !69, i64 0}
!465 = !{!"_ZTSNSt12_Vector_baseIPN12colvarmodule10atom_groupESaIS2_EE17_Vector_impl_dataE", !464, i64 0, !464, i64 8, !464, i64 16}
!466 = !{!"_ZTSNSt12_Vector_baseIPN12colvarmodule10atom_groupESaIS2_EE12_Vector_implE", !465, i64 0}
!467 = !{!"_ZTSSt12_Vector_baseIPN12colvarmodule10atom_groupESaIS2_EE", !466, i64 0}
!468 = !{!"_ZTSSt6vectorIPN12colvarmodule10atom_groupESaIS2_EE", !467, i64 0}
!469 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !29, i64 0}
!470 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !469, i64 0, !469, i64 8, !469, i64 16}
!471 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !470, i64 0}
!472 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !471, i64 0}
!473 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !472, i64 0}
!474 = !{!"p2 _ZTSSt6vectorIiSaIiEE", !69, i64 0}
!475 = !{!"_ZTSNSt12_Vector_baseIPSt6vectorIiSaIiEESaIS3_EE17_Vector_impl_dataE", !474, i64 0, !474, i64 8, !474, i64 16}
!476 = !{!"_ZTSNSt12_Vector_baseIPSt6vectorIiSaIiEESaIS3_EE12_Vector_implE", !475, i64 0}
!477 = !{!"_ZTSSt12_Vector_baseIPSt6vectorIiSaIiEESaIS3_EE", !476, i64 0}
!478 = !{!"_ZTSSt6vectorIPS_IiSaIiEESaIS2_EE", !477, i64 0}
!479 = !{!"p1 _ZTS11colvarparse", !29, i64 0}
!480 = !{!"p1 _ZTSN12colvarmodule5usageE", !29, i64 0}
!481 = !{!"_ZTS12colvarmodule", !23, i64 0, !23, i64 4, !46, i64 8, !35, i64 16, !215, i64 48, !215, i64 72, !215, i64 96, !148, i64 120, !468, i64 144, !135, i64 168, !40, i64 192, !29, i64 200, !135, i64 208, !35, i64 232, !35, i64 264, !35, i64 296, !35, i64 328, !240, i64 360, !473, i64 384, !473, i64 408, !478, i64 432, !35, i64 456, !479, i64 488, !35, i64 496, !46, i64 528, !35, i64 536, !23, i64 568, !33, i64 576, !244, i64 584, !23, i64 608, !480, i64 616, !40, i64 624}
!482 = !{!481, !23, i64 568}
!483 = !{!455}
!484 = !{!457, !455}
!485 = !{!459}
!486 = !{!461}
!487 = !{!463}
!488 = distinct !{!488, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!489 = distinct !{!489, !488, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!490 = distinct !{!490, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!491 = distinct !{!491, !490, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!492 = distinct !{!492, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!493 = distinct !{!493, !492, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!494 = distinct !{!494, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!495 = distinct !{!495, !494, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!496 = distinct !{!496, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!497 = distinct !{!497, !496, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!498 = distinct !{!498, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!499 = distinct !{!499, !498, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!500 = distinct !{!500, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!501 = distinct !{!501, !500, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!502 = distinct !{!502, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!503 = distinct !{!503, !502, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!504 = distinct !{!504, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!505 = distinct !{!505, !504, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!506 = distinct !{!506, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!507 = distinct !{!507, !506, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!508 = distinct !{!508, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!509 = distinct !{!509, !508, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!510 = distinct !{!510, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!511 = distinct !{!511, !510, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!512 = distinct !{!512, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!513 = distinct !{!513, !512, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!514 = distinct !{!514, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!515 = distinct !{!515, !514, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!516 = distinct !{!516, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!517 = distinct !{!517, !516, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!518 = distinct !{!518, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!519 = distinct !{!519, !518, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!520 = distinct !{!520, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!521 = distinct !{!521, !520, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!522 = distinct !{!522, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!523 = distinct !{!523, !522, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!524 = distinct !{!524, !180}
!525 = distinct !{!525, !222}
!526 = distinct !{!526, !180}
!527 = !{!489}
!528 = !{!491, !489}
!529 = !{!493}
!530 = !{!495, !493}
!531 = !{!497}
!532 = !{!499}
!533 = !{!501}
!534 = !{!503, !501}
!535 = !{!505}
!536 = !{!507}
!537 = !{!509}
!538 = !{!511}
!539 = !{!513}
!540 = !{!515, !513}
!541 = !{!517}
!542 = !{!519}
!543 = !{!521}
!544 = !{!523}
!545 = distinct !{!545, i1 true, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!546 = distinct !{!546, !545, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!547 = distinct !{!547, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!548 = distinct !{!548, !547, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!549 = !{!546}
!550 = !{!548}
!551 = !{!548, !546}
!552 = !{!82, !81, i64 64}
!553 = distinct !{!553, !222}
!554 = distinct !{!554, !180}
!555 = distinct !{!555, !180}
!556 = distinct !{!556, !180}
!557 = distinct !{!557, i1 true, !"_ZmldRKN12colvarmodule7rvectorE"}
!558 = distinct !{!558, !557, !"_ZmldRKN12colvarmodule7rvectorE: argument 0"}
!559 = distinct !{!559, !180}
!560 = distinct !{!560, i1 true, !"_ZmldRKN12colvarmodule10quaternionE"}
!561 = distinct !{!561, !560, !"_ZmldRKN12colvarmodule10quaternionE: argument 0"}
!562 = distinct !{!562, !180}
!563 = distinct !{!563, i1 true, !"_ZmldRKN12colvarmodule8vector1dIdEE"}
!564 = distinct !{!564, !563, !"_ZmldRKN12colvarmodule8vector1dIdEE: argument 0"}
!565 = distinct !{!565, i1 true, !"_ZmlRKN12colvarmodule8vector1dIdEEd"}
!566 = distinct !{!566, !565, !"_ZmlRKN12colvarmodule8vector1dIdEEd: argument 0"}
!567 = distinct !{!567, !180, !230, !231}
!568 = distinct !{!568, !222}
!569 = distinct !{!569, !180, !230}
!570 = distinct !{!570, i1 false, !"LVerDomain"}
!571 = distinct !{!571, !570}
!572 = distinct !{!572, !570}
!573 = distinct !{!573, !180, !230, !231}
!574 = distinct !{!574, !222}
!575 = distinct !{!575, !180, !230}
!576 = distinct !{!576, !180}
!577 = !{!558}
!578 = !{!561}
!579 = !{!564}
!580 = !{!566}
!581 = !{!566, !564}
!582 = !{!571}
!583 = !{!572}
!584 = distinct !{!584, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!585 = distinct !{!585, !584, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!586 = distinct !{!586, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!587 = distinct !{!587, !586, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!588 = distinct !{!588, !180}
!589 = distinct !{!589, !180}
!590 = distinct !{!590, !180}
!591 = distinct !{!591, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!592 = distinct !{!592, !591, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!593 = distinct !{!593, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!594 = distinct !{!594, !593, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!595 = distinct !{!595, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!596 = distinct !{!596, !595, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!597 = distinct !{!597, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!598 = distinct !{!598, !597, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!599 = distinct !{!599, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!600 = distinct !{!600, !599, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!601 = distinct !{!601, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!602 = distinct !{!602, !601, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!603 = distinct !{!603, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!604 = distinct !{!604, !603, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!605 = distinct !{!605, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!606 = distinct !{!606, !605, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!607 = distinct !{!607, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!608 = distinct !{!608, !607, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!609 = distinct !{!609, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!610 = distinct !{!610, !609, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!611 = distinct !{!611, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!612 = distinct !{!612, !611, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!613 = distinct !{!613, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!614 = distinct !{!614, !613, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!615 = distinct !{!615, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!616 = distinct !{!616, !615, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!617 = distinct !{!617, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!618 = distinct !{!618, !617, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!619 = distinct !{!619, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!620 = distinct !{!620, !619, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!621 = distinct !{!621, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!622 = distinct !{!622, !621, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!623 = distinct !{!623, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!624 = distinct !{!624, !623, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!625 = distinct !{!625, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!626 = distinct !{!626, !625, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
end_hunk_2
