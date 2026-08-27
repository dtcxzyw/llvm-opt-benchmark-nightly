Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/colvarbias_meta?download=true
inline.NumInlined: 4972
inline.NumDeleted: 904
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN15colvarbias_meta6updateEv:bb.a
  br i1 %i.bk, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bl = load ptr, ptr %0, align 8, !tbaa !10
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = tail call noundef i32 %i.bn(ptr noundef nonnull align 8 dereferenceable(896) %0)
  %i.bp = or i32 %i.bo, %i.n
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %_ZN15colvarbias_meta16update_grid_dataEv.exit
  %.1 = phi i32 [ %i.bp, %bb.e ], [ %i.n, %bb.d ], [ %i.n, %_ZN15colvarbias_meta16update_grid_dataEv.exit ]
  %i.bq = load ptr, ptr %0, align 8, !tbaa !10
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 56
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = tail call noundef i32 %i.bs(ptr noundef nonnull align 8 dereferenceable(896) %0, ptr noundef null)
  %i.bu = or i32 %i.bt, %.1
  %i.bv = load ptr, ptr %0, align 8, !tbaa !10
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
  %i.b = load i32, ptr %i.a, align 8, !tbaa !186
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZN12colvarmodule4mainEv() ; 0 uses
  %i.e = load ptr, ptr @_ZN12colvarmodule5proxyE, align 8, !tbaa !270
  %i.f = load ptr, ptr %0, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i32 %i.h(ptr noundef nonnull align 8 dereferenceable(896) %0)
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 864 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef i32 %i.n(ptr noundef nonnull align 8 dereferenceable(224) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.k)
  %i.p = or i32 %i.o, %i.i
  %i.q = load ptr, ptr %0, align 8, !tbaa !10
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
  %i.b = load i64, ptr %i.a, align 8, !tbaa !269
  ret i64 %i.b
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN15colvarbias_meta11calc_energyEPKSt6vectorI11colvarvalueSaIS1_EE(ptr noundef nonnull align 8 dereferenceable(896) %0, ptr noundef %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.13", align 8    ; 11 uses
  %3 = alloca %"class.std::vector.13", align 8    ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !264  ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !265  ; 8 uses
  %.not312 = icmp eq ptr %i.c, %i.d
  br i1 %.not312, label %._crit_edge, label %.lr.ph.preheader

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
  %.0303 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ao, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.0303
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !266  ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !10
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %i.k, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 248
  store double 0.000000e+00, ptr %i.p, align 8, !tbaa !272
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.0303
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !266  ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !10
  %i.u = getelementptr i8, ptr %i.t, i64 -24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds i8, ptr %i.s, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 248
  store double 0.000000e+00, ptr %i.x, align 8, !tbaa !272
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.0303
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !266 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !10
  %i.ac = getelementptr i8, ptr %i.ab, i64 -24
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds i8, ptr %i.aa, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 248
  store double 0.000000e+00, ptr %i.af, align 8, !tbaa !272
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.0303
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !266 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !10
  %i.ak = getelementptr i8, ptr %i.aj, i64 -24
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds i8, ptr %i.ai, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 248
  store double 0.000000e+00, ptr %i.an, align 8, !tbaa !272
  %i.ao = add nuw i64 %.0303, 4                   ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !282

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0303.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ao, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod354 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod354)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.0303.epil = phi i64 [ %i.aw, %.lr.ph.epil ], [ %.0303.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.0303.epil
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !266 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !10
  %i.as = getelementptr i8, ptr %i.ar, i64 -24
  %i.at = load i64, ptr %i.as, align 8
  %i.au = getelementptr inbounds i8, ptr %i.aq, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 248
  store double 0.000000e+00, ptr %i.av, align 8, !tbaa !272
  %i.aw = add nuw i64 %.0303.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !283

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !187, !range !184, !noundef !185
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.b, label %.critedge

bb.b:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %.not = icmp eq ptr %1, null
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !244 ; 7 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 320 ; 4 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !285)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !288)
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !291, !noalias !293 ; 4 uses
  %i.be = icmp ugt i64 %i.bd, 2305843009213693951
  br i1 %i.be, label %.noexc.i.i108.invoke, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i: ; preds = %bb.c
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE.exit.sink.split, label %_ZNK11colvar_gridIdE9new_indexEv.exit.i

_ZNK11colvar_gridIdE9new_indexEv.exit.i:          ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.bf = shl nuw nsw i64 %i.bd, 2                ; 3 uses
  %i.bg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #27
          to label %.noexc97 unwind label %bb.k   ; 6 uses

.noexc97:                                         ; preds = %_ZNK11colvar_gridIdE9new_indexEv.exit.i
  store ptr %i.bg, ptr %3, align 8, !tbaa !294, !alias.scope !293
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.bd
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !295, !alias.scope !293
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bg, i8 0, i64 %i.bf, i1 false), !tbaa !250, !noalias !293
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bf
  %.pre.i = load i64, ptr %i.bc, align 8, !tbaa !291, !noalias !285 ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !296, !alias.scope !293
  %.not.i = icmp eq i64 %.pre.i, 0
  br i1 %.not.i, label %_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc97
  %i.bl = load ptr, ptr %1, align 8, !tbaa !297, !noalias !285 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bb, i64 376
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !297, !noalias !285 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bb, i64 424
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !95, !noalias !285 ; 2 uses
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
  %i.bv = load double, ptr %i.bt, align 8, !tbaa !298, !noalias !285
  %i.bw = load double, ptr %i.bu, align 8, !tbaa !298, !noalias !285
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
  %i.ch = load double, ptr %i.cf, align 8, !tbaa !298, !noalias !285
  %i.ci = load double, ptr %i.cg, align 8, !tbaa !298, !noalias !285
  %i.cj = insertelement <2 x double> poison, double %i.ch, i64 0
  %i.ck = insertelement <2 x double> %i.cj, double %i.ci, i64 1
  %i.cl = fsub <2 x double> %i.by, %i.ck
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.cb
  %wide.load = load <2 x double>, ptr %i.cm, align 8, !tbaa !174, !noalias !285
  %i.cn = fdiv <2 x double> %i.cl, %wide.load
  %i.co = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %i.cn)
  %i.cp = fptosi <2 x double> %i.co to <2 x i32>
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %index
  store <2 x i32> %i.cp, ptr %i.cq, align 4, !tbaa !250, !noalias !285
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cr = icmp eq i64 %index.next, %n.vec
  br i1 %i.cr, label %middle.block, label %vector.body, !llvm.loop !299

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.pre.i, %n.vec
  br i1 %cmp.n, label %_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.07.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.07.i = phi i64 [ %i.dg, %scalar.ph ], [ %.07.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.cs = getelementptr inbounds nuw [168 x i8], ptr %i.bl, i64 %.07.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !298, !noalias !285
  %sext.i = shl i64 %.07.i, 32
  %i.cv = ashr exact i64 %sext.i, 32              ; 2 uses
  %i.cw = getelementptr inbounds nuw [168 x i8], ptr %i.bn, i64 %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !298, !noalias !285
  %i.cz = fsub double %i.cu, %i.cy
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.cv
  %i.db = load double, ptr %i.da, align 8, !tbaa !174, !noalias !285
  %i.dc = fdiv double %i.cz, %i.db
  %i.dd = tail call noundef double @llvm.floor.f64(double %i.dc)
  %i.de = fptosi double %i.dd to i32
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %.07.i
  store i32 %i.de, ptr %i.df, align 4, !tbaa !250, !noalias !285
  %i.dg = add nuw i64 %.07.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dg, %.pre.i
  br i1 %exitcond.not.i, label %_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE.exit, label %scalar.ph, !llvm.loop !302

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !303)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !306)
  %i.dh = load i64, ptr %i.bc, align 8, !tbaa !291, !noalias !309 ; 4 uses
  %i.di = icmp ugt i64 %i.dh, 2305843009213693951
  br i1 %i.di, label %.noexc.i.i108.invoke, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i98

.noexc.i.i108.invoke:                             ; preds = %bb.d, %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.101) #26
          to label %.noexc.i.i108.cont unwind label %bb.k

.noexc.i.i108.cont:                               ; preds = %.noexc.i.i108.invoke
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i98: ; preds = %bb.d
  %.not.i.i.i.i.i.i99 = icmp eq i64 %i.dh, 0
  br i1 %.not.i.i.i.i.i.i99, label %_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE.exit.sink.split, label %_ZNK11colvar_gridIdE9new_indexEv.exit.i100

_ZNK11colvar_gridIdE9new_indexEv.exit.i100:       ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i98
  %i.dj = shl nuw nsw i64 %i.dh, 2                ; 3 uses
  %i.dk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dj) #27
          to label %.noexc110 unwind label %bb.k  ; 5 uses

.noexc110:                                        ; preds = %_ZNK11colvar_gridIdE9new_indexEv.exit.i100
  store ptr %i.dk, ptr %3, align 8, !tbaa !294, !alias.scope !309
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.dh
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.dl, ptr %i.dm, align 8, !tbaa !295, !alias.scope !309
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.dk, i8 0, i64 %i.dj, i1 false), !tbaa !250, !noalias !309
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dj
  %.pre.i101 = load i64, ptr %i.bc, align 8, !tbaa !291, !noalias !303 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !296, !alias.scope !309
  %.not.i102 = icmp eq i64 %.pre.i101, 0
  br i1 %.not.i102, label %_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE.exit, label %.lr.ph.i103

.lr.ph.i103:                                      ; preds = %.noexc110
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bb, i64 536
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !310, !noalias !303
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bb, i64 512
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !100, !noalias !303
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bb, i64 376
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !297, !noalias !303
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bb, i64 424
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !95, !noalias !303
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i103
  %.07.i104 = phi i64 [ 0, %.lr.ph.i103 ], [ %i.ew, %bb.e ] ; 5 uses
  %i.dx = trunc i64 %.07.i104 to i32
  %sext.i105 = shl i64 %.07.i104, 32
  %i.dy = ashr exact i64 %sext.i105, 32           ; 4 uses
  %i.dz = sdiv i32 %i.dx, 64
  %.sext.i.i = sext i32 %i.dz to i64
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.dq, i64 %.sext.i.i
  %i.eb = and i64 %i.dy, -9223372036854775745
  %i.ec = icmp ugt i64 %i.eb, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i.i = select i1 %i.ec, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ea, i64 %storemerge.idx.i.i.i.i.i.i.i
  %i.ed = and i64 %.07.i104, 63
  %i.ee = shl nuw i64 1, %i.ed
  %i.ef = load i64, ptr %storemerge.i.i.i.i.i.i.i, align 8, !tbaa !16, !noalias !303
  %i.eg = and i64 %i.ee, %i.ef
  %.not.i.i = icmp eq i64 %i.eg, 0
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.dy
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !101, !noalias !303
  %i.ej = select i1 %.not.i.i, i64 680, i64 512
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ej
  %i.el = load double, ptr %i.ek, align 8, !tbaa !298, !noalias !303
  %i.em = getelementptr inbounds nuw [168 x i8], ptr %i.du, i64 %i.dy
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = load double, ptr %i.en, align 8, !tbaa !298, !noalias !303
  %i.ep = fsub double %i.el, %i.eo
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.dy
  %i.er = load double, ptr %i.eq, align 8, !tbaa !174, !noalias !303
  %i.es = fdiv double %i.ep, %i.er
  %i.et = tail call noundef double @llvm.floor.f64(double %i.es)
  %i.eu = fptosi double %i.et to i32
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %.07.i104
  store i32 %i.eu, ptr %i.ev, align 4, !tbaa !250, !noalias !303
  %i.ew = add nuw i64 %.07.i104, 1                ; 2 uses
  %exitcond.not.i106 = icmp eq i64 %i.ew, %.pre.i101
  br i1 %exitcond.not.i106, label %_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE.exit, label %bb.e, !llvm.loop !311

_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE.exit.sink.split: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i98, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br label %_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE.exit

_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE.exit: ; preds = %scalar.ph, %bb.e, %middle.block, %_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE.exit.sink.split, %.noexc110, %.noexc97
  %i.ex = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.f unwind label %bb.l       ; 0 uses

bb.f:                                             ; preds = %_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE.exit
  %i.ey = load ptr, ptr %3, align 8, !tbaa !294   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ey, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ez = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !295
  %i.fb = ptrtoint ptr %i.fa to i64
  %i.fc = ptrtoint ptr %i.ey to i64
  %i.fd = sub i64 %i.fb, %i.fc
  call void @_ZdlPvm(ptr noundef nonnull %i.ey, i64 noundef %i.fd) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !244 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 320
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !291 ; 2 uses
  %i.fi = icmp eq i64 %i.fh, 0
  br i1 %i.fi, label %_ZNK11colvar_gridIdE8index_okERKSt6vectorIiSaIiEE.exit, label %.lr.ph.i111

.lr.ph.i111:                                      ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 328
  %i.fk = load ptr, ptr %2, align 8, !tbaa !294
  %i.fl = load ptr, ptr %i.fj, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.j
  %i.fm = add nuw i64 %.0911.i, 1                 ; 2 uses
  %exitcond.not.i113 = icmp eq i64 %i.fm, %i.fh
  br i1 %exitcond.not.i113, label %_ZNK11colvar_gridIdE8index_okERKSt6vectorIiSaIiEE.exit, label %bb.i, !llvm.loop !312

bb.i:                                             ; preds = %bb.h, %.lr.ph.i111
  %.0911.i = phi i64 [ 0, %.lr.ph.i111 ], [ %i.fm, %bb.h ] ; 3 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %.0911.i
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !250 ; 2 uses
  %i.fp = icmp slt i32 %i.fo, 0
  br i1 %i.fp, label %.critedge.loopexit, label %bb.j

end_hunk_0
begin_hunk_1_@_ZN15colvarbias_meta11calc_energyEPKSt6vectorI11colvarvalueSaIS1_EE:bb.a
  br label %bb.t

.loopexit298:                                     ; preds = %bb.q
  %i.jr = icmp eq ptr %i.jk, %i.jl
  br i1 %i.jr, label %._crit_edge311, label %.lr.ph310.preheader

.lr.ph310.preheader:                              ; preds = %.loopexit297, %.loopexit298
  %.ph = phi ptr [ %i.jl, %.loopexit298 ], [ %i.ft, %.loopexit297 ]
  br label %.lr.ph310

.lr.ph310:                                        ; preds = %.lr.ph310.preheader, %bb.r
  %i.js = phi ptr [ %i.kg, %bb.r ], [ %.ph, %.lr.ph310.preheader ]
  %.3308 = phi i64 [ %i.ke, %bb.r ], [ 0, %.lr.ph310.preheader ] ; 2 uses
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %.3308
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !266 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 88
  %.sroa.01.0.copyload = load ptr, ptr %i.jv, align 8, !tbaa !262
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ju, i64 64
  %i.jx = load ptr, ptr %0, align 8, !tbaa !10    ; 2 uses
  %i.jy = getelementptr i8, ptr %i.jx, i64 -24
  %i.jz = load i64, ptr %i.jy, align 8
  %i.ka = getelementptr inbounds i8, ptr %0, i64 %i.jz
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 248
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jx, i64 144
  %i.kd = load ptr, ptr %i.kc, align 8
  invoke void %i.kd(ptr noundef nonnull align 8 dereferenceable(896) %0, ptr %.sroa.01.0.copyload, ptr nonnull %i.jw, ptr noundef nonnull align 8 dereferenceable(8) %i.kb, ptr noundef %1)
          to label %bb.r unwind label %.loopexit

bb.r:                                             ; preds = %.lr.ph310
  %i.ke = add nuw i64 %.3308, 1                   ; 2 uses
  %i.kf = load ptr, ptr %i.b, align 8, !tbaa !264
  %i.kg = load ptr, ptr %i.a, align 8, !tbaa !265 ; 2 uses
  %i.kh = ptrtoint ptr %i.kf to i64
  %i.ki = ptrtoint ptr %i.kg to i64
  %i.kj = sub i64 %i.kh, %i.ki
  %i.kk = ashr exact i64 %i.kj, 3
  %i.kl = icmp ult i64 %i.ke, %i.kk
  br i1 %i.kl, label %.lr.ph310, label %._crit_edge311, !llvm.loop !317

._crit_edge311:                                   ; preds = %bb.r, %.critedge, %_ZNK11colvar_gridIdE8index_okERKSt6vectorIiSaIiEE.exit, %.loopexit298
  %i.km = load ptr, ptr %2, align 8, !tbaa !294   ; 3 uses
  %.not.i.i.i292 = icmp eq ptr %i.km, null
  br i1 %.not.i.i.i292, label %_ZNSt6vectorIiSaIiEED2Ev.exit293, label %bb.s

bb.s:                                             ; preds = %._crit_edge311
  %i.kn = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !295
  %i.kp = ptrtoint ptr %i.ko to i64
  %i.kq = ptrtoint ptr %i.km to i64
  %i.kr = sub i64 %i.kp, %i.kq
  call void @_ZdlPvm(ptr noundef nonnull %i.km, i64 noundef %i.kr) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit293

_ZNSt6vectorIiSaIiEED2Ev.exit293:                 ; preds = %._crit_edge311, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret i32 0

bb.t:                                             ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt6vectorIiSaIiEED2Ev.exit115
  %.pn84.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit115 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ks = load ptr, ptr %2, align 8, !tbaa !294   ; 3 uses
  %.not.i.i.i294 = icmp eq ptr %i.ks, null
  br i1 %.not.i.i.i294, label %_ZNSt6vectorIiSaIiEED2Ev.exit295, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.kt = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !295
  %i.kv = ptrtoint ptr %i.ku to i64
  %i.kw = ptrtoint ptr %i.ks to i64
  %i.kx = sub i64 %i.kv, %i.kw
  call void @_ZdlPvm(ptr noundef nonnull %i.ks, i64 noundef %i.kx) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit295

_ZNSt6vectorIiSaIiEED2Ev.exit295:                 ; preds = %bb.t, %bb.u
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
  store i64 0, ptr %i.a, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !264  ; 4 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !265  ; 2 uses
  %.not238 = icmp eq ptr %i.d, %i.e
  br i1 %.not238, label %._crit_edge224, label %.preheader219.preheader

.preheader219.preheader:                          ; preds = %bb.a
  %.pre = load ptr, ptr %0, align 8, !tbaa !10
  br label %.preheader219

.preheader219:                                    ; preds = %.preheader219.preheader, %._crit_edge
  %i.f = phi ptr [ %i.an, %._crit_edge ], [ %i.e, %.preheader219.preheader ]
  %i.g = phi ptr [ %i.ao, %._crit_edge ], [ %i.d, %.preheader219.preheader ]
  %i.h = phi ptr [ %i.ap, %._crit_edge ], [ %.pre, %.preheader219.preheader ] ; 2 uses
  %.0223 = phi i64 [ %i.aq, %._crit_edge ], [ 0, %.preheader219.preheader ] ; 2 uses
  store i64 0, ptr %i.a, align 8, !tbaa !16
  %i.i = getelementptr i8, ptr %i.h, i64 -24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds i8, ptr %0, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 152
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 160
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !97
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !100
  %.not239 = icmp eq ptr %i.n, %i.o
  br i1 %.not239, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader219, %.lr.ph
  %storemerge80222 = phi i64 [ %i.z, %.lr.ph ], [ 0, %.preheader219 ] ; 2 uses
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !265
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.0223
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !266  ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !10
  %i.t = getelementptr i8, ptr %i.s, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %i.r, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 200
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !297
  %i.y = getelementptr inbounds nuw [168 x i8], ptr %i.x, i64 %storemerge80222
  tail call void @_ZN11colvarvalue5resetEv(ptr noundef nonnull align 8 dereferenceable(168) %i.y)
  %i.z = add nuw i64 %storemerge80222, 1          ; 3 uses
  store i64 %i.z, ptr %i.a, align 8, !tbaa !16
  %i.aa = load ptr, ptr %0, align 8, !tbaa !10    ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds i8, ptr %0, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 152
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 160
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !97
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !100
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 3
  %i.am = icmp ult i64 %i.z, %i.al
  br i1 %i.am, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !318

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre248 = load ptr, ptr %i.c, align 8, !tbaa !264
  %.pre249 = load ptr, ptr %i.b, align 8, !tbaa !265
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader219
  %i.an = phi ptr [ %.pre249, %._crit_edge.loopexit ], [ %i.f, %.preheader219 ] ; 3 uses
  %i.ao = phi ptr [ %.pre248, %._crit_edge.loopexit ], [ %i.g, %.preheader219 ] ; 3 uses
  %i.ap = phi ptr [ %i.aa, %._crit_edge.loopexit ], [ %i.h, %.preheader219 ]
  %i.aq = add nuw i64 %.0223, 1                   ; 2 uses
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = ptrtoint ptr %i.an to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = ashr exact i64 %i.at, 3
  %i.av = icmp ult i64 %i.aq, %i.au
  br i1 %i.av, label %.preheader219, label %._crit_edge224, !llvm.loop !319

._crit_edge224:                                   ; preds = %._crit_edge, %bb.a
  %i.aw = phi ptr [ %i.d, %bb.a ], [ %i.an, %._crit_edge ]
  %i.ax = phi ptr [ %i.d, %bb.a ], [ %i.ao, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !187, !range !184, !noundef !185
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.b, label %.critedge

bb.b:                                             ; preds = %._crit_edge224
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %.not = icmp eq ptr %1, null
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !244 ; 7 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 320 ; 4 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !320)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !323)
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !291, !noalias !326 ; 4 uses
  %i.bf = icmp ugt i64 %i.be, 2305843009213693951
  br i1 %i.bf, label %.noexc.i.i100.invoke, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i: ; preds = %bb.c
  %.not.i.i.i.i.i.i = icmp eq i64 %i.be, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE.exit.sink.split, label %_ZNK11colvar_gridIdE9new_indexEv.exit.i

_ZNK11colvar_gridIdE9new_indexEv.exit.i:          ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.bg = shl nuw nsw i64 %i.be, 2                ; 3 uses
  %i.bh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #27
          to label %.noexc89 unwind label %bb.k   ; 6 uses

.noexc89:                                         ; preds = %_ZNK11colvar_gridIdE9new_indexEv.exit.i
  store ptr %i.bh, ptr %3, align 8, !tbaa !294, !alias.scope !326
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.be
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !295, !alias.scope !326
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bh, i8 0, i64 %i.bg, i1 false), !tbaa !250, !noalias !326
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bg
  %.pre.i = load i64, ptr %i.bd, align 8, !tbaa !291, !noalias !320 ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !296, !alias.scope !326
  %.not.i = icmp eq i64 %.pre.i, 0
  br i1 %.not.i, label %_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc89
  %i.bm = load ptr, ptr %1, align 8, !tbaa !297, !noalias !320 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bc, i64 376
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !297, !noalias !320 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bc, i64 424
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !95, !noalias !320 ; 2 uses
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
  %i.bw = load double, ptr %i.bu, align 8, !tbaa !298, !noalias !320
  %i.bx = load double, ptr %i.bv, align 8, !tbaa !298, !noalias !320
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
  %i.ci = load double, ptr %i.cg, align 8, !tbaa !298, !noalias !320
  %i.cj = load double, ptr %i.ch, align 8, !tbaa !298, !noalias !320
  %i.ck = insertelement <2 x double> poison, double %i.ci, i64 0
  %i.cl = insertelement <2 x double> %i.ck, double %i.cj, i64 1
  %i.cm = fsub <2 x double> %i.bz, %i.cl
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.cc
  %wide.load = load <2 x double>, ptr %i.cn, align 8, !tbaa !174, !noalias !320
  %i.co = fdiv <2 x double> %i.cm, %wide.load
  %i.cp = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %i.co)
  %i.cq = fptosi <2 x double> %i.cp to <2 x i32>
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %index
  store <2 x i32> %i.cq, ptr %i.cr, align 4, !tbaa !250, !noalias !320
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cs = icmp eq i64 %index.next, %n.vec
  br i1 %i.cs, label %middle.block, label %vector.body, !llvm.loop !327

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.pre.i, %n.vec
  br i1 %cmp.n, label %_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.07.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.07.i = phi i64 [ %i.dh, %scalar.ph ], [ %.07.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ct = getelementptr inbounds nuw [168 x i8], ptr %i.bm, i64 %.07.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !298, !noalias !320
  %sext.i = shl i64 %.07.i, 32
  %i.cw = ashr exact i64 %sext.i, 32              ; 2 uses
  %i.cx = getelementptr inbounds nuw [168 x i8], ptr %i.bo, i64 %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !298, !noalias !320
  %i.da = fsub double %i.cv, %i.cz
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.cw
  %i.dc = load double, ptr %i.db, align 8, !tbaa !174, !noalias !320
  %i.dd = fdiv double %i.da, %i.dc
  %i.de = tail call noundef double @llvm.floor.f64(double %i.dd)
  %i.df = fptosi double %i.de to i32
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %.07.i
  store i32 %i.df, ptr %i.dg, align 4, !tbaa !250, !noalias !320
  %i.dh = add nuw i64 %.07.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dh, %.pre.i
  br i1 %exitcond.not.i, label %_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE.exit, label %scalar.ph, !llvm.loop !328

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !329)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !332)
  %i.di = load i64, ptr %i.bd, align 8, !tbaa !291, !noalias !335 ; 4 uses
  %i.dj = icmp ugt i64 %i.di, 2305843009213693951
  br i1 %i.dj, label %.noexc.i.i100.invoke, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i90

.noexc.i.i100.invoke:                             ; preds = %bb.d, %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.101) #26
          to label %.noexc.i.i100.cont unwind label %bb.k

.noexc.i.i100.cont:                               ; preds = %.noexc.i.i100.invoke
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i90: ; preds = %bb.d
  %.not.i.i.i.i.i.i91 = icmp eq i64 %i.di, 0
  br i1 %.not.i.i.i.i.i.i91, label %_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE.exit.sink.split, label %_ZNK11colvar_gridIdE9new_indexEv.exit.i92

_ZNK11colvar_gridIdE9new_indexEv.exit.i92:        ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i90
  %i.dk = shl nuw nsw i64 %i.di, 2                ; 3 uses
  %i.dl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dk) #27
          to label %.noexc102 unwind label %bb.k  ; 5 uses

.noexc102:                                        ; preds = %_ZNK11colvar_gridIdE9new_indexEv.exit.i92
  store ptr %i.dl, ptr %3, align 8, !tbaa !294, !alias.scope !335
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.di
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.dm, ptr %i.dn, align 8, !tbaa !295, !alias.scope !335
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.dl, i8 0, i64 %i.dk, i1 false), !tbaa !250, !noalias !335
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dk
  %.pre.i93 = load i64, ptr %i.bd, align 8, !tbaa !291, !noalias !329 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.do, ptr %i.dp, align 8, !tbaa !296, !alias.scope !335
  %.not.i94 = icmp eq i64 %.pre.i93, 0
  br i1 %.not.i94, label %_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE.exit, label %.lr.ph.i95

.lr.ph.i95:                                       ; preds = %.noexc102
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bc, i64 536
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !310, !noalias !329
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bc, i64 512
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !100, !noalias !329
  %i.du = getelementptr inbounds nuw i8, ptr %i.bc, i64 376
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !297, !noalias !329
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bc, i64 424
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !95, !noalias !329
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i95
  %.07.i96 = phi i64 [ 0, %.lr.ph.i95 ], [ %i.ex, %bb.e ] ; 5 uses
  %i.dy = trunc i64 %.07.i96 to i32
  %sext.i97 = shl i64 %.07.i96, 32
  %i.dz = ashr exact i64 %sext.i97, 32            ; 4 uses
  %i.ea = sdiv i32 %i.dy, 64
  %.sext.i.i = sext i32 %i.ea to i64
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.dr, i64 %.sext.i.i
  %i.ec = and i64 %i.dz, -9223372036854775745
  %i.ed = icmp ugt i64 %i.ec, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i.i = select i1 %i.ed, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.eb, i64 %storemerge.idx.i.i.i.i.i.i.i
  %i.ee = and i64 %.07.i96, 63
  %i.ef = shl nuw i64 1, %i.ee
  %i.eg = load i64, ptr %storemerge.i.i.i.i.i.i.i, align 8, !tbaa !16, !noalias !329
  %i.eh = and i64 %i.ef, %i.eg
  %.not.i.i = icmp eq i64 %i.eh, 0
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.dz
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !101, !noalias !329
  %i.ek = select i1 %.not.i.i, i64 680, i64 512
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.ek
  %i.em = load double, ptr %i.el, align 8, !tbaa !298, !noalias !329
  %i.en = getelementptr inbounds nuw [168 x i8], ptr %i.dv, i64 %i.dz
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !298, !noalias !329
  %i.eq = fsub double %i.em, %i.ep
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.dz
  %i.es = load double, ptr %i.er, align 8, !tbaa !174, !noalias !329
  %i.et = fdiv double %i.eq, %i.es
  %i.eu = tail call noundef double @llvm.floor.f64(double %i.et)
  %i.ev = fptosi double %i.eu to i32
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %.07.i96
  store i32 %i.ev, ptr %i.ew, align 4, !tbaa !250, !noalias !329
  %i.ex = add nuw i64 %.07.i96, 1                 ; 2 uses
  %exitcond.not.i98 = icmp eq i64 %i.ex, %.pre.i93
  br i1 %exitcond.not.i98, label %_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE.exit, label %bb.e, !llvm.loop !311

_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE.exit.sink.split: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i90, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br label %_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE.exit

_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE.exit: ; preds = %scalar.ph, %bb.e, %middle.block, %_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE.exit.sink.split, %.noexc102, %.noexc89
  %i.ey = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.f unwind label %bb.l       ; 0 uses

bb.f:                                             ; preds = %_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE.exit
  %i.ez = load ptr, ptr %3, align 8, !tbaa !294   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ez, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !295
  %i.fc = ptrtoint ptr %i.fb to i64
  %i.fd = ptrtoint ptr %i.ez to i64
  %i.fe = sub i64 %i.fc, %i.fd
  call void @_ZdlPvm(ptr noundef nonnull %i.ez, i64 noundef %i.fe) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !244 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 320
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !291 ; 2 uses
  %i.fj = icmp eq i64 %i.fi, 0
  br i1 %i.fj, label %_ZNK11colvar_gridIdE8index_okERKSt6vectorIiSaIiEE.exit, label %.lr.ph.i103

.lr.ph.i103:                                      ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 328
  %i.fl = load ptr, ptr %2, align 8, !tbaa !294
  %i.fm = load ptr, ptr %i.fk, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.j
  %i.fn = add nuw i64 %.0911.i, 1                 ; 2 uses
  %exitcond.not.i105 = icmp eq i64 %i.fn, %i.fi
  br i1 %exitcond.not.i105, label %_ZNK11colvar_gridIdE8index_okERKSt6vectorIiSaIiEE.exit, label %bb.i, !llvm.loop !312

bb.i:                                             ; preds = %bb.h, %.lr.ph.i103
  %.0911.i = phi i64 [ 0, %.lr.ph.i103 ], [ %i.fn, %bb.h ] ; 3 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %.0911.i
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !250 ; 2 uses
  %i.fq = icmp slt i32 %i.fp, 0
  br i1 %i.fq, label %.critedge.loopexit, label %bb.j

end_hunk_1
begin_hunk_2_@llvm.fmuladd.v2f64
!102 = !{!"p1 _ZTS6colvar", !15, i64 0}
!103 = !{!104, !25, i64 472}
!104 = !{!"_ZTS6colvar", !105, i64 0, !71, i64 320, !19, i64 440, !25, i64 472, !128, i64 480, !133, i64 504, !133, i64 672, !133, i64 840, !133, i64 1008, !133, i64 1176, !133, i64 1344, !133, i64 1512, !133, i64 1680, !25, i64 1848, !25, i64 1856, !25, i64 1864, !25, i64 1872, !133, i64 1880, !133, i64 2048, !133, i64 2216, !133, i64 2384, !133, i64 2552, !133, i64 2720, !133, i64 2888, !133, i64 3056, !25, i64 3224, !25, i64 3232, !31, i64 3240, !133, i64 3248, !133, i64 3416, !17, i64 3584, !25, i64 3592, !46, i64 3600, !31, i64 3608, !133, i64 3616, !133, i64 3784, !31, i64 3952, !147, i64 3960, !147, i64 3984, !150, i64 4008, !150, i64 4016, !147, i64 4024, !150, i64 4048, !19, i64 4056, !17, i64 4088, !17, i64 4096, !17, i64 4104, !17, i64 4112, !31, i64 4120, !26, i64 4128, !19, i64 4152, !151, i64 4184, !17, i64 4192, !17, i64 4200, !19, i64 4208, !133, i64 4240, !25, i64 4408, !25, i64 4416, !25, i64 4424, !152, i64 4432, !157, i64 4456, !19, i64 4496, !164, i64 4528, !142, i64 4552, !142, i64 4576, !169, i64 4600}
!105 = !{!"_ZTS11colvarparse", !106, i64 0, !19, i64 104, !19, i64 136, !119, i64 168, !122, i64 192, !125, i64 240, !125, i64 264, !19, i64 288}
!106 = !{!"_ZTS12colvarparams", !107, i64 8, !116, i64 56}
!107 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKvSt4lessIS5_ESaISt4pairIKS5_S7_EEE", !108, i64 0}
!108 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKvESt10_Select1stISA_ESt4lessIS5_ESaISA_EE", !109, i64 0}
!109 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKvESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEE", !110, i64 0, !112, i64 8}
!110 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !111, i64 0}
!111 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!112 = !{!"_ZTSSt15_Rb_tree_header", !113, i64 0, !17, i64 32}
!113 = !{!"_ZTSSt18_Rb_tree_node_base", !114, i64 0, !115, i64 8, !115, i64 16, !115, i64 24}
!114 = !{!"_ZTSSt14_Rb_tree_color", !7, i64 0}
!115 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !15, i64 0}
!116 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPK11colvarvalueSt4lessIS5_ESaISt4pairIKS5_S8_EEE", !117, i64 0}
!117 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PK11colvarvalueESt10_Select1stISB_ESt4lessIS5_ESaISB_EE", !118, i64 0}
!118 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PK11colvarvalueESt10_Select1stISB_ESt4lessIS5_ESaISB_EE13_Rb_tree_implISF_Lb1EEE", !110, i64 0, !112, i64 8}
!119 = !{!"_ZTSNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEE", !120, i64 0}
!120 = !{!"_ZTSNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEE", !121, i64 0}
!121 = !{!"_ZTSNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10_List_implE", !35, i64 0}
!122 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN11colvarparse12key_set_modeESt4lessIS5_ESaISt4pairIKS5_S7_EEE", !123, i64 0}
!123 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N11colvarparse12key_set_modeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE", !124, i64 0}
!124 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N11colvarparse12key_set_modeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEE", !110, i64 0, !112, i64 8}
!125 = !{!"_ZTSNSt7__cxx114listImSaImEEE", !126, i64 0}
!126 = !{!"_ZTSNSt7__cxx1110_List_baseImSaImEEE", !127, i64 0}
!127 = !{!"_ZTSNSt7__cxx1110_List_baseImSaImEE10_List_implE", !35, i64 0}
!128 = !{!"_ZTSSt6vectorIP10colvarbiasSaIS1_EE", !129, i64 0}
!129 = !{!"_ZTSSt12_Vector_baseIP10colvarbiasSaIS1_EE", !130, i64 0}
!130 = !{!"_ZTSNSt12_Vector_baseIP10colvarbiasSaIS1_EE12_Vector_implE", !131, i64 0}
!131 = !{!"_ZTSNSt12_Vector_baseIP10colvarbiasSaIS1_EE17_Vector_impl_dataE", !132, i64 0, !132, i64 8, !132, i64 16}
!132 = !{!"p2 _ZTS10colvarbias", !59, i64 0}
!133 = !{!"_ZTS11colvarvalue", !134, i64 0, !25, i64 8, !135, i64 16, !136, i64 40, !137, i64 72, !138, i64 96, !142, i64 120, !142, i64 144}
!134 = !{!"_ZTSN11colvarvalue4TypeE", !7, i64 0}
!135 = !{!"_ZTSN12colvarmodule7rvectorE", !25, i64 0, !25, i64 8, !25, i64 16}
!136 = !{!"_ZTSN12colvarmodule10quaternionE", !25, i64 0, !25, i64 8, !25, i64 16, !25, i64 24}
!137 = !{!"_ZTSN12colvarmodule8vector1dIdEE", !26, i64 0}
!138 = !{!"_ZTSSt6vectorIN11colvarvalue4TypeESaIS1_EE", !139, i64 0}
!139 = !{!"_ZTSSt12_Vector_baseIN11colvarvalue4TypeESaIS1_EE", !140, i64 0}
!140 = !{!"_ZTSNSt12_Vector_baseIN11colvarvalue4TypeESaIS1_EE12_Vector_implE", !141, i64 0}
!141 = !{!"_ZTSNSt12_Vector_baseIN11colvarvalue4TypeESaIS1_EE17_Vector_impl_dataE", !15, i64 0, !15, i64 8, !15, i64 16}
!142 = !{!"_ZTSSt6vectorIiSaIiEE", !143, i64 0}
!143 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !144, i64 0}
!144 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !145, i64 0}
!145 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !146, i64 0, !146, i64 8, !146, i64 16}
!146 = !{!"p1 int", !15, i64 0}
!147 = !{!"_ZTSNSt7__cxx114listINS0_I11colvarvalueSaIS1_EEESaIS3_EEE", !148, i64 0}
!148 = !{!"_ZTSNSt7__cxx1110_List_baseINS_4listI11colvarvalueSaIS2_EEESaIS4_EEE", !149, i64 0}
!149 = !{!"_ZTSNSt7__cxx1110_List_baseINS_4listI11colvarvalueSaIS2_EEESaIS4_EE10_List_implE", !35, i64 0}
!150 = !{!"_ZTSSt14_List_iteratorINSt7__cxx114listI11colvarvalueSaIS2_EEEE", !37, i64 0}
!151 = !{!"_ZTSN6colvar10acf_type_eE", !7, i64 0}
!152 = !{!"_ZTSSt6vectorISt10shared_ptrIN6colvar3cvcEESaIS3_EE", !153, i64 0}
!153 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIN6colvar3cvcEESaIS3_EE", !154, i64 0}
!154 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN6colvar3cvcEESaIS3_EE12_Vector_implE", !155, i64 0}
!155 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN6colvar3cvcEESaIS3_EE17_Vector_impl_dataE", !156, i64 0, !156, i64 8, !156, i64 16}
!156 = !{!"p1 _ZTSSt10shared_ptrIN6colvar3cvcEE", !15, i64 0}
!157 = !{!"_ZTSSt6vectorIbSaIbEE", !158, i64 0}
!158 = !{!"_ZTSSt13_Bvector_baseISaIbEE", !159, i64 0}
!159 = !{!"_ZTSNSt13_Bvector_baseISaIbEE13_Bvector_implE", !160, i64 0}
!160 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !161, i64 0, !161, i64 16, !163, i64 32}
!161 = !{!"_ZTSSt13_Bit_iterator", !162, i64 0}
!162 = !{!"_ZTSSt18_Bit_iterator_base", !163, i64 0, !6, i64 8}
!163 = !{!"p1 long", !15, i64 0}
!164 = !{!"_ZTSSt6vectorIPK11colvarvalueSaIS2_EE", !165, i64 0}
!165 = !{!"_ZTSSt12_Vector_baseIPK11colvarvalueSaIS2_EE", !166, i64 0}
!166 = !{!"_ZTSNSt12_Vector_baseIPK11colvarvalueSaIS2_EE12_Vector_implE", !167, i64 0}
!167 = !{!"_ZTSNSt12_Vector_baseIPK11colvarvalueSaIS2_EE17_Vector_impl_dataE", !168, i64 0, !168, i64 8, !168, i64 16}
!168 = !{!"p2 _ZTS11colvarvalue", !59, i64 0}
!169 = !{!"_ZTSSt6vectorIN12colvarmodule7rvectorESaIS1_EE", !170, i64 0}
!170 = !{!"_ZTSSt12_Vector_baseIN12colvarmodule7rvectorESaIS1_EE", !171, i64 0}
!171 = !{!"_ZTSNSt12_Vector_baseIN12colvarmodule7rvectorESaIS1_EE12_Vector_implE", !172, i64 0}
!172 = !{!"_ZTSNSt12_Vector_baseIN12colvarmodule7rvectorESaIS1_EE17_Vector_impl_dataE", !173, i64 0, !173, i64 8, !173, i64 16}
!173 = !{!"p1 _ZTSN12colvarmodule7rvectorE", !15, i64 0}
!174 = !{!25, !25, i64 0}
!175 = !{!176}
!176 = distinct !{!176, !177, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_: argument 0"}
!177 = distinct !{!177, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_"}
!178 = !{!179}
!179 = distinct !{!179, !180, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!180 = distinct !{!180, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!181 = distinct !{!181, !182}
!182 = !{!"llvm.loop.mustprogress"}
!183 = !{!31, !31, i64 0}
!184 = !{i8 0, i8 2}
!185 = !{}
!186 = !{!23, !24, i64 8}
!187 = !{!23, !31, i64 136}
!188 = !{!23, !17, i64 144}
!189 = !{!190}
!190 = distinct !{!190, !191, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!191 = distinct !{!191, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!192 = !{!193, !190}
!193 = distinct !{!193, !194, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!194 = distinct !{!194, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!195 = !{!196}
!196 = distinct !{!196, !197, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!197 = distinct !{!197, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!198 = distinct !{!198, !182}
!199 = !{!200}
!200 = distinct !{!200, !201, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!201 = distinct !{!201, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!202 = !{!203}
!203 = distinct !{!203, !204, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!204 = distinct !{!204, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!205 = !{!206}
!206 = distinct !{!206, !207, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!207 = distinct !{!207, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!208 = !{!209}
!209 = distinct !{!209, !210, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!210 = distinct !{!210, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!211 = !{!23, !31, i64 138}
!212 = !{!104, !31, i64 3240}
!213 = !{!214}
!214 = distinct !{!214, !215, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!215 = distinct !{!215, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!216 = !{!217, !214}
!217 = distinct !{!217, !218, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!218 = distinct !{!218, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!219 = !{!220}
!220 = distinct !{!220, !221, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!221 = distinct !{!221, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!222 = !{!223}
!223 = distinct !{!223, !224, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!224 = distinct !{!224, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!225 = !{!226, !223}
!226 = distinct !{!226, !227, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!227 = distinct !{!227, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!228 = !{!229}
!229 = distinct !{!229, !230, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!230 = distinct !{!230, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!231 = !{!232}
!232 = distinct !{!232, !233, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!233 = distinct !{!233, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!234 = !{!235}
!235 = distinct !{!235, !236, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!236 = distinct !{!236, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!237 = !{!238}
!238 = distinct !{!238, !239, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!239 = distinct !{!239, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!240 = !{!241}
!241 = distinct !{!241, !242, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!242 = distinct !{!242, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!243 = distinct !{!243, !182}
!244 = !{!48, !45, i64 0}
!245 = !{!49, !50, i64 0}
!246 = !{!247, !6, i64 8}
!247 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !6, i64 8, !6, i64 12}
!248 = !{!247, !6, i64 12}
!249 = distinct !{ptr @_ZNSt12__shared_ptrIK18colvar_grid_paramsLN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!250 = !{!6, !6, i64 0}
!251 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!252 = !{!253, !254, i64 0}
!253 = !{!"_ZTSSt12__shared_ptrIK18colvar_grid_paramsLN9__gnu_cxx12_Lock_policyE2EE", !254, i64 0, !49, i64 8}
!254 = !{!"p1 _ZTS18colvar_grid_params", !15, i64 0}
!255 = distinct !{ptr @_ZNSt12__shared_ptrI17colvar_grid_countLN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!256 = !{!23, !31, i64 154}
!257 = !{!36, !37, i64 0}
!258 = distinct !{!258, !182}
!259 = !{!36, !37, i64 8}
!260 = !{!35, !17, i64 16}
!261 = !{!46, !46, i64 0}
!262 = !{!37, !37, i64 0}
!263 = !{!52, !53, i64 0}
!264 = !{!57, !58, i64 8}
!265 = !{!57, !58, i64 0}
!266 = !{!267, !267, i64 0}
!267 = !{!"p1 _ZTS15colvarbias_meta", !15, i64 0}
!268 = distinct !{!268, !182}
!269 = !{!23, !17, i64 320}
!270 = !{!271, !271, i64 0}
!271 = !{!"p1 _ZTS11colvarproxy", !15, i64 0}
!272 = !{!273, !25, i64 248}
!273 = !{!"_ZTS10colvarbias", !19, i64 8, !19, i64 40, !19, i64 72, !6, i64 104, !17, i64 112, !19, i64 120, !274, i64 152, !277, i64 176, !277, i64 200, !277, i64 224, !25, i64 248, !31, i64 256, !31, i64 257, !46, i64 264, !31, i64 272, !45, i64 280, !142, i64 288}
!274 = !{!"_ZTSSt6vectorIP6colvarSaIS1_EE", !275, i64 0}
!275 = !{!"_ZTSSt12_Vector_baseIP6colvarSaIS1_EE", !276, i64 0}
!276 = !{!"_ZTSNSt12_Vector_baseIP6colvarSaIS1_EE12_Vector_implE", !98, i64 0}
!277 = !{!"_ZTSSt6vectorI11colvarvalueSaIS0_EE", !278, i64 0}
!278 = !{!"_ZTSSt12_Vector_baseI11colvarvalueSaIS0_EE", !279, i64 0}
!279 = !{!"_ZTSNSt12_Vector_baseI11colvarvalueSaIS0_EE12_Vector_implE", !280, i64 0}
!280 = !{!"_ZTSNSt12_Vector_baseI11colvarvalueSaIS0_EE17_Vector_impl_dataE", !281, i64 0, !281, i64 8, !281, i64 16}
!281 = !{!"p1 _ZTS11colvarvalue", !15, i64 0}
!282 = distinct !{!282, !182}
!283 = distinct !{!283, !284}
!284 = !{!"llvm.loop.unroll.disable"}
!285 = !{!286}
!286 = distinct !{!286, !287, !"_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE: argument 0"}
!287 = distinct !{!287, !"_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE"}
!288 = !{!289}
!289 = distinct !{!289, !290, !"_ZNK11colvar_gridIdE9new_indexEv: argument 0"}
!290 = distinct !{!290, !"_ZNK11colvar_gridIdE9new_indexEv"}
!291 = !{!292, !17, i64 0}
!292 = !{!"_ZTS18colvar_grid_params", !17, i64 0, !142, i64 8, !142, i64 32, !277, i64 56, !277, i64 80, !26, i64 104}
!293 = !{!289, !286}
!294 = !{!145, !146, i64 0}
!295 = !{!145, !146, i64 16}
!296 = !{!145, !146, i64 8}
!297 = !{!280, !281, i64 0}
!298 = !{!133, !25, i64 8}
!299 = distinct !{!299, !182, !300, !301}
!300 = !{!"llvm.loop.isvectorized", i32 1}
!301 = !{!"llvm.loop.unroll.runtime.disable"}
!302 = distinct !{!302, !182, !300}
!303 = !{!304}
!304 = distinct !{!304, !305, !"_ZNK11colvar_gridIdE17get_colvars_indexEv: argument 0"}
!305 = distinct !{!305, !"_ZNK11colvar_gridIdE17get_colvars_indexEv"}
!306 = !{!307}
!307 = distinct !{!307, !308, !"_ZNK11colvar_gridIdE9new_indexEv: argument 0"}
!308 = distinct !{!308, !"_ZNK11colvar_gridIdE9new_indexEv"}
!309 = !{!307, !304}
!310 = !{!162, !163, i64 0}
!311 = distinct !{!311, !182}
!312 = distinct !{!312, !182}
!313 = distinct !{!313, !182}
!314 = distinct !{!314, !284}
!315 = distinct !{!315, !182}
!316 = distinct !{!316, !182}
!317 = distinct !{!317, !182}
!318 = distinct !{!318, !182}
!319 = distinct !{!319, !182}
!320 = !{!321}
!321 = distinct !{!321, !322, !"_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE: argument 0"}
!322 = distinct !{!322, !"_ZNK11colvar_gridIdE17get_colvars_indexERKSt6vectorI11colvarvalueSaIS2_EE"}
!323 = !{!324}
!324 = distinct !{!324, !325, !"_ZNK11colvar_gridIdE9new_indexEv: argument 0"}
!325 = distinct !{!325, !"_ZNK11colvar_gridIdE9new_indexEv"}
!326 = !{!324, !321}
!327 = distinct !{!327, !182, !300, !301}
!328 = distinct !{!328, !182, !300}
!329 = !{!330}
!330 = distinct !{!330, !331, !"_ZNK11colvar_gridIdE17get_colvars_indexEv: argument 0"}
!331 = distinct !{!331, !"_ZNK11colvar_gridIdE17get_colvars_indexEv"}
!332 = !{!333}
!333 = distinct !{!333, !334, !"_ZNK11colvar_gridIdE9new_indexEv: argument 0"}
!334 = distinct !{!334, !"_ZNK11colvar_gridIdE9new_indexEv"}
!335 = !{!333, !330}
!336 = distinct !{!336, !284}
!337 = distinct !{!337, !182}
!338 = distinct !{!338, !182}
!339 = distinct !{!339, !182}
!340 = distinct !{!340, !182}
!341 = distinct !{!341, !182}
!342 = distinct !{!342, !182}
!343 = !{!23, !31, i64 152}
!344 = !{!345}
!345 = distinct !{!345, !346, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!346 = distinct !{!346, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!347 = !{!348}
!348 = distinct !{!348, !349, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!349 = distinct !{!349, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!350 = !{!348, !345}
!351 = !{!65, !14, i64 40}
!352 = !{!65, !14, i64 32}
!353 = !{!354}
!354 = distinct !{!354, !355, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_: argument 0"}
!355 = distinct !{!355, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_"}
!356 = !{!23, !31, i64 153}
!357 = !{!358, !6, i64 568}
!358 = !{!"_ZTS12colvarmodule", !6, i64 0, !6, i64 4, !31, i64 8, !19, i64 16, !274, i64 48, !274, i64 72, !274, i64 96, !142, i64 120, !359, i64 144, !128, i64 168, !25, i64 192, !15, i64 200, !128, i64 208, !19, i64 232, !19, i64 264, !19, i64 296, !19, i64 328, !364, i64 360, !368, i64 384, !368, i64 408, !373, i64 432, !19, i64 456, !378, i64 488, !19, i64 496, !31, i64 528, !19, i64 536, !6, i64 568, !17, i64 576, !379, i64 584, !6, i64 608, !383, i64 616, !25, i64 624}
!359 = !{!"_ZTSSt6vectorIPN12colvarmodule10atom_groupESaIS2_EE", !360, i64 0}
!360 = !{!"_ZTSSt12_Vector_baseIPN12colvarmodule10atom_groupESaIS2_EE", !361, i64 0}
!361 = !{!"_ZTSNSt12_Vector_baseIPN12colvarmodule10atom_groupESaIS2_EE12_Vector_implE", !362, i64 0}
!362 = !{!"_ZTSNSt12_Vector_baseIPN12colvarmodule10atom_groupESaIS2_EE17_Vector_impl_dataE", !363, i64 0, !363, i64 8, !363, i64 16}
!363 = !{!"p2 _ZTSN12colvarmodule10atom_groupE", !59, i64 0}
!364 = !{!"_ZTSSt6vectorIhSaIhEE", !365, i64 0}
!365 = !{!"_ZTSSt12_Vector_baseIhSaIhEE", !366, i64 0}
!366 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE12_Vector_implE", !367, i64 0}
!367 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!368 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !369, i64 0}
!369 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !370, i64 0}
!370 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !371, i64 0}
!371 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !372, i64 0, !372, i64 8, !372, i64 16}
!372 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0}
!373 = !{!"_ZTSSt6vectorIPS_IiSaIiEESaIS2_EE", !374, i64 0}
!374 = !{!"_ZTSSt12_Vector_baseIPSt6vectorIiSaIiEESaIS3_EE", !375, i64 0}
!375 = !{!"_ZTSNSt12_Vector_baseIPSt6vectorIiSaIiEESaIS3_EE12_Vector_implE", !376, i64 0}
!376 = !{!"_ZTSNSt12_Vector_baseIPSt6vectorIiSaIiEESaIS3_EE17_Vector_impl_dataE", !377, i64 0, !377, i64 8, !377, i64 16}
!377 = !{!"p2 _ZTSSt6vectorIiSaIiEE", !59, i64 0}
!378 = !{!"p1 _ZTS11colvarparse", !15, i64 0}
!379 = !{!"_ZTSSt6vectorImSaImEE", !380, i64 0}
!380 = !{!"_ZTSSt12_Vector_baseImSaImEE", !381, i64 0}
!381 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !382, i64 0}
!382 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !163, i64 0, !163, i64 8, !163, i64 16}
!383 = !{!"p1 _ZTSN12colvarmodule5usageE", !15, i64 0}
!384 = !{!385}
!385 = distinct !{!385, !386, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!386 = distinct !{!386, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!387 = !{!388, !385}
!388 = distinct !{!388, !389, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!389 = distinct !{!389, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!390 = !{!391}
!391 = distinct !{!391, !392, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!392 = distinct !{!392, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!393 = !{!394}
!394 = distinct !{!394, !395, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!395 = distinct !{!395, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!396 = !{!397}
!397 = distinct !{!397, !398, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!398 = distinct !{!398, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!399 = !{!400}
!400 = distinct !{!400, !401, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!401 = distinct !{!401, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!402 = !{!403, !400}
!403 = distinct !{!403, !404, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!404 = distinct !{!404, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!405 = !{!406}
!406 = distinct !{!406, !407, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!407 = distinct !{!407, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!408 = !{!409, !406}
!409 = distinct !{!409, !410, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!410 = distinct !{!410, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!411 = !{!412}
!412 = distinct !{!412, !413, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!413 = distinct !{!413, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!414 = !{!415}
!415 = distinct !{!415, !416, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!416 = distinct !{!416, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!417 = !{!418}
!418 = distinct !{!418, !419, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!419 = distinct !{!419, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!420 = !{!421, !418}
!421 = distinct !{!421, !422, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!422 = distinct !{!422, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!423 = !{!424}
!424 = distinct !{!424, !425, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!425 = distinct !{!425, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!426 = !{!427}
!427 = distinct !{!427, !428, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!428 = distinct !{!428, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!429 = !{!430}
!430 = distinct !{!430, !431, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!431 = distinct !{!431, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!432 = !{!433}
!433 = distinct !{!433, !434, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!434 = distinct !{!434, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!435 = !{!436}
!436 = distinct !{!436, !437, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!437 = distinct !{!437, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!438 = !{!439, !436}
!439 = distinct !{!439, !440, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!440 = distinct !{!440, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!441 = !{!442}
!442 = distinct !{!442, !443, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!443 = distinct !{!443, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!444 = !{!445}
!445 = distinct !{!445, !446, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!446 = distinct !{!446, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!447 = !{!448}
!448 = distinct !{!448, !449, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!449 = distinct !{!449, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!450 = !{!451}
!451 = distinct !{!451, !452, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!452 = distinct !{!452, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!453 = !{!454, !456, i64 32}
!454 = !{!"_ZTSSt8ios_base", !17, i64 8, !17, i64 16, !455, i64 24, !456, i64 28, !456, i64 32, !457, i64 40, !458, i64 48, !7, i64 64, !6, i64 192, !459, i64 200, !66, i64 208}
!455 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!456 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!457 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !15, i64 0}
!458 = !{!"_ZTSNSt8ios_base6_WordsE", !15, i64 0, !17, i64 8}
!459 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !15, i64 0}
!460 = distinct !{!460, !182}
!461 = !{!23, !31, i64 456}
!462 = distinct !{!462, !284}
!463 = distinct !{!463, !182}
!464 = !{!23, !31, i64 56}
!465 = !{!466}
!466 = distinct !{!466, !467, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!467 = distinct !{!467, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!468 = !{!469}
!469 = distinct !{!469, !470, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!470 = distinct !{!470, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!471 = !{!469, !466}
!472 = !{!64, !68, i64 64}
!473 = distinct !{!473, !182}
!474 = distinct !{!474, !284}
!475 = !{!476, !25, i64 8}
!476 = !{!"_ZTSN15colvarbias_meta4hillE", !46, i64 0, !25, i64 8, !25, i64 16, !25, i64 24, !277, i64 32, !26, i64 56, !19, i64 80}
!477 = !{!476, !25, i64 24}
!478 = !{!476, !25, i64 16}
!479 = distinct !{!479, !182}
!480 = distinct !{!480, !182}
!481 = !{!133, !134, i64 0}
!482 = !{!141, !15, i64 0}
!483 = !{!141, !15, i64 16}
!484 = !{!29, !30, i64 16}
!485 = distinct !{!485, !182}
!486 = !{!135, !25, i64 16}
!487 = !{!488}
!488 = distinct !{!488, !489, !"_ZmldRKN12colvarmodule7rvectorE: argument 0"}
!489 = distinct !{!489, !"_ZmldRKN12colvarmodule7rvectorE"}
!490 = distinct !{!490, !182}
!491 = !{!492}
!492 = distinct !{!492, !493, !"_ZmldRKN12colvarmodule10quaternionE: argument 0"}
!493 = distinct !{!493, !"_ZmldRKN12colvarmodule10quaternionE"}
!494 = distinct !{!494, !182}
!495 = !{!496}
!496 = distinct !{!496, !497, !"_ZmldRKN12colvarmodule8vector1dIdEE: argument 0"}
!497 = distinct !{!497, !"_ZmldRKN12colvarmodule8vector1dIdEE"}
!498 = !{!499}
!499 = distinct !{!499, !500, !"_ZmlRKN12colvarmodule8vector1dIdEEd: argument 0"}
!500 = distinct !{!500, !"_ZmlRKN12colvarmodule8vector1dIdEEd"}
!501 = !{!499, !496}
!502 = distinct !{!502, !182, !300, !301}
!503 = distinct !{!503, !284}
!504 = distinct !{!504, !182, !300}
!505 = !{!506}
!506 = distinct !{!506, !507}
!507 = distinct !{!507, !"LVerDomain"}
!508 = !{!509}
!509 = distinct !{!509, !507}
!510 = distinct !{!510, !182, !300, !301}
!511 = distinct !{!511, !284}
!512 = distinct !{!512, !182, !300}
!513 = distinct !{!513, !182}
!514 = !{!515}
!515 = distinct !{!515, !516, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!516 = distinct !{!516, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!517 = !{!518, !515}
!518 = distinct !{!518, !519, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!519 = distinct !{!519, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!520 = distinct !{!520, !182}
!521 = distinct !{!521, !182}
!522 = distinct !{!522, !182}
!523 = !{!524}
!524 = distinct !{!524, !525, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!525 = distinct !{!525, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!526 = !{!527, !524}
!527 = distinct !{!527, !528, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!528 = distinct !{!528, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
end_hunk_2
