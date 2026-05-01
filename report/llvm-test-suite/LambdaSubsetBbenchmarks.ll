inline.NumInlined: 73
inline.NumDeleted: 39
begin_hunk_0_@_ZL19BM_MULADDSUB_LAMBDARN9benchmark5StateE:_ZN9benchmark5State13StateIteratorC2EPS0_.exit
_ZN9benchmark5State13StateIteratorC2EPS0_.exit:
  %i.a = tail call noundef nonnull align 8 dereferenceable(1616) ptr @_Z11getLoopDatav() ; 5 uses
  tail call void @_Z8loopInitj(i32 noundef 10)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %1 = load ptr, ptr %i.b, align 8, !tbaa !8      ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %2 = load ptr, ptr %i.c, align 8, !tbaa !8      ; 7 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.d = load ptr, ptr %3, align 8, !tbaa !8      ; 7 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.e = load ptr, ptr %4, align 8, !tbaa !8      ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8    ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.i = load i32, ptr %i.h, align 4, !tbaa !11
  %.not = icmp ne i32 %i.i, 0
end_hunk_0
begin_hunk_1_@_ZL19BM_MULADDSUB_LAMBDARN9benchmark5StateE:_ZN9benchmark5State13StateIteratorC2EPS0_.exit
.lr.ph.us.preheader:                              ; preds = %.lr.ph41
  %wide.trip.count = and i64 %i.n, 2147483647     ; 4 uses
  %i.q = shl nuw nsw i64 %wide.trip.count, 3      ; 5 uses
  %scevgep = getelementptr i8, ptr %1, i64 %i.q   ; 4 uses
  %scevgep47 = getelementptr i8, ptr %2, i64 %i.q ; 4 uses
  %scevgep48 = getelementptr i8, ptr %i.d, i64 %i.q ; 4 uses
  %scevgep49 = getelementptr i8, ptr %i.e, i64 %i.q ; 3 uses
  %scevgep50 = getelementptr i8, ptr %i.g, i64 %i.q ; 3 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 2
  %bound0 = icmp ult ptr %1, %scevgep47
  %bound1 = icmp ult ptr %2, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound051 = icmp ult ptr %1, %scevgep48
  %bound152 = icmp ult ptr %i.d, %scevgep
  %found.conflict53 = and i1 %bound051, %bound152
  %conflict.rdx = or i1 %found.conflict, %found.conflict53
  %bound054 = icmp ult ptr %1, %scevgep49
  %bound155 = icmp ult ptr %i.e, %scevgep
  %found.conflict56 = and i1 %bound054, %bound155
  %conflict.rdx57 = or i1 %conflict.rdx, %found.conflict56
  %bound058 = icmp ult ptr %1, %scevgep50
  %bound159 = icmp ult ptr %i.g, %scevgep
  %found.conflict60 = and i1 %bound058, %bound159
  %conflict.rdx61 = or i1 %conflict.rdx57, %found.conflict60
  %bound062 = icmp ult ptr %2, %scevgep48
  %bound163 = icmp ult ptr %i.d, %scevgep47
  %found.conflict64 = and i1 %bound062, %bound163
  %conflict.rdx65 = or i1 %conflict.rdx61, %found.conflict64
  %bound066 = icmp ult ptr %2, %scevgep49
  %bound167 = icmp ult ptr %i.e, %scevgep47
  %found.conflict68 = and i1 %bound066, %bound167
  %conflict.rdx69 = or i1 %conflict.rdx65, %found.conflict68
  %bound070 = icmp ult ptr %2, %scevgep50
  %bound171 = icmp ult ptr %i.g, %scevgep47
  %found.conflict72 = and i1 %bound070, %bound171
  %conflict.rdx73 = or i1 %conflict.rdx69, %found.conflict72
  %bound074 = icmp ult ptr %i.d, %scevgep49
  %bound175 = icmp ult ptr %i.e, %scevgep48
  %found.conflict76 = and i1 %bound074, %bound175
  %conflict.rdx77 = or i1 %conflict.rdx73, %found.conflict76
  %bound078 = icmp ult ptr %i.d, %scevgep50
  %bound179 = icmp ult ptr %i.g, %scevgep48
  %found.conflict80 = and i1 %bound078, %bound179
  %conflict.rdx81 = or i1 %conflict.rdx77, %found.conflict80
  %n.vec = and i64 %i.n, 2147483646               ; 3 uses
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %"._Z6forallIZL19BM_MULADDSUB_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.us"
  %.sroa.016.040.us = phi i64 [ %i.ao, %"._Z6forallIZL19BM_MULADDSUB_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.us" ], [ %i.k, %.lr.ph.us.preheader ]
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx81
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.us ] ; 6 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.r, align 8, !tbaa !40, !alias.scope !48 ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index ; 2 uses
  %wide.load82 = load <2 x double>, ptr %i.s, align 8, !tbaa !40, !alias.scope !51 ; 2 uses
  %i.t = fmul <2 x double> %wide.load, %wide.load82
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index
  store <2 x double> %i.t, ptr %i.u, align 8, !tbaa !40, !alias.scope !53, !noalias !55
  %i.v = fadd <2 x double> %wide.load, %wide.load82
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index
  store <2 x double> %i.v, ptr %i.w, align 8, !tbaa !40, !alias.scope !58, !noalias !59
  %wide.load85 = load <2 x double>, ptr %i.r, align 8, !tbaa !40, !alias.scope !48
  %wide.load86 = load <2 x double>, ptr %i.s, align 8, !tbaa !40, !alias.scope !51
end_hunk_1
begin_hunk_2_@_ZL19BM_MULADDSUB_LAMBDARN9benchmark5StateE:_ZN9benchmark5State13StateIteratorC2EPS0_.exit

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 6 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv ; 3 uses
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !40
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv ; 3 uses
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !40
  %i.ae = fmul double %i.ab, %i.ad
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  store double %i.ae, ptr %i.af, align 8, !tbaa !40
  %i.ag = load double, ptr %i.aa, align 8, !tbaa !40
  %i.ah = load double, ptr %i.ac, align 8, !tbaa !40
  %i.ai = fadd double %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  store double %i.ai, ptr %i.aj, align 8, !tbaa !40
  %i.ak = load double, ptr %i.aa, align 8, !tbaa !40
  %i.al = load double, ptr %i.ac, align 8, !tbaa !40
end_hunk_2
