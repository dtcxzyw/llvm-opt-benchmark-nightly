inline.NumInlined: 73
inline.NumDeleted: 39
begin_hunk_0_@_ZL19BM_MULADDSUB_LAMBDARN9benchmark5StateE:_ZN9benchmark5State13StateIteratorC2EPS0_.exit
_ZN9benchmark5State13StateIteratorC2EPS0_.exit:
  %i.a = tail call noundef nonnull align 8 dereferenceable(1616) ptr @_Z11getLoopDatav() ; 5 uses
  tail call void @_Z8loopInitj(i32 noundef 10)
  %1 = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %2 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %3 = load <4 x ptr>, ptr %1, align 8, !tbaa !8  ; 3 uses
  %4 = load ptr, ptr %i.c, align 8, !tbaa !8      ; 3 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !8      ; 4 uses
  %5 = load ptr, ptr %i.b, align 8, !tbaa !8      ; 3 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !8      ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8    ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.i = load i32, ptr %i.h, align 4, !tbaa !11
  %.not = icmp ne i32 %i.i, 0
end_hunk_0
begin_hunk_1_@_ZL19BM_MULADDSUB_LAMBDARN9benchmark5StateE:_ZN9benchmark5State13StateIteratorC2EPS0_.exit
.lr.ph.us.preheader:                              ; preds = %.lr.ph41
  %wide.trip.count = and i64 %i.n, 2147483647     ; 4 uses
  %i.q = shl nuw nsw i64 %wide.trip.count, 3      ; 5 uses
  %scevgep = getelementptr i8, ptr %i.e, i64 %i.q ; 3 uses
  %scevgep47 = getelementptr i8, ptr %5, i64 %i.q ; 2 uses
  %scevgep48 = getelementptr i8, ptr %i.d, i64 %i.q ; 3 uses
  %scevgep49 = getelementptr i8, ptr %4, i64 %i.q ; 2 uses
  %scevgep50 = getelementptr i8, ptr %i.g, i64 %i.q ; 2 uses
  %6 = shufflevector <4 x ptr> %3, <4 x ptr> poison, <8 x i32> <i32 poison, i32 poison, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 3>
  %7 = insertelement <8 x ptr> %6, ptr %i.g, i64 3
  %8 = insertelement <8 x ptr> poison, ptr %scevgep47, i64 0
  %9 = insertelement <8 x ptr> %8, ptr %scevgep, i64 1
  %10 = insertelement <8 x ptr> %9, ptr %scevgep49, i64 2
  %11 = insertelement <8 x ptr> %10, ptr %scevgep48, i64 7
  %12 = shufflevector <8 x ptr> %11, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 1, i32 0, i32 2, i32 0, i32 7>
  %13 = insertelement <8 x ptr> poison, ptr %scevgep, i64 0
  %14 = insertelement <8 x ptr> %13, ptr %scevgep48, i64 1
  %15 = insertelement <8 x ptr> %14, ptr %scevgep, i64 2
  %16 = insertelement <8 x ptr> %15, ptr %scevgep50, i64 3
  %17 = insertelement <8 x ptr> %16, ptr %scevgep47, i64 5
  %18 = insertelement <8 x ptr> %17, ptr %scevgep49, i64 7
  %19 = shufflevector <8 x ptr> %18, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 1, i32 5, i32 3, i32 7>
  %20 = shufflevector <4 x ptr> %3, <4 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %bound167 = icmp samesign ult i64 %wide.trip.count, 2
  %21 = shufflevector <8 x ptr> %20, <8 x ptr> %7, <8 x i32> <i32 0, i32 2, i32 10, i32 11, i32 2, i32 1, i32 11, i32 15>
  %22 = icmp ult <8 x ptr> %21, %12
  %23 = shufflevector <4 x ptr> %3, <4 x ptr> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 1, i32 3, i32 1, i32 2>
  %24 = icmp ult <8 x ptr> %23, %19
  %25 = and <8 x i1> %24, %22
  %bound074 = icmp ult ptr %i.d, %scevgep50
  %bound175 = icmp ult ptr %i.g, %scevgep48
  %found.conflict76 = and i1 %bound074, %bound175
  %26 = bitcast <8 x i1> %25 to i8
  %27 = icmp ne i8 %26, 0
  %conflict.rdx81 = or i1 %27, %found.conflict76
  %n.vec = and i64 %i.n, 2147483646               ; 3 uses
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %"._Z6forallIZL19BM_MULADDSUB_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.us"
  %.sroa.016.040.us = phi i64 [ %i.ao, %"._Z6forallIZL19BM_MULADDSUB_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.us" ], [ %i.k, %.lr.ph.us.preheader ]
  %brmerge = select i1 %bound167, i1 true, i1 %conflict.rdx81
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.us ] ; 6 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.r, align 8, !tbaa !40, !alias.scope !48 ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index ; 2 uses
  %wide.load82 = load <2 x double>, ptr %i.s, align 8, !tbaa !40, !alias.scope !51 ; 2 uses
  %i.t = fmul <2 x double> %wide.load, %wide.load82
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index
  store <2 x double> %i.t, ptr %i.u, align 8, !tbaa !40, !alias.scope !53, !noalias !55
  %i.v = fadd <2 x double> %wide.load, %wide.load82
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index
  store <2 x double> %i.v, ptr %i.w, align 8, !tbaa !40, !alias.scope !58, !noalias !59
  %wide.load85 = load <2 x double>, ptr %i.r, align 8, !tbaa !40, !alias.scope !48
  %wide.load86 = load <2 x double>, ptr %i.s, align 8, !tbaa !40, !alias.scope !51
end_hunk_1
begin_hunk_2_@_ZL19BM_MULADDSUB_LAMBDARN9benchmark5StateE:_ZN9benchmark5State13StateIteratorC2EPS0_.exit

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 6 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv ; 3 uses
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !40
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv ; 3 uses
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !40
  %i.ae = fmul double %i.ab, %i.ad
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  store double %i.ae, ptr %i.af, align 8, !tbaa !40
  %i.ag = load double, ptr %i.aa, align 8, !tbaa !40
  %i.ah = load double, ptr %i.ac, align 8, !tbaa !40
  %i.ai = fadd double %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv
  store double %i.ai, ptr %i.aj, align 8, !tbaa !40
  %i.ak = load double, ptr %i.aa, align 8, !tbaa !40
  %i.al = load double, ptr %i.ac, align 8, !tbaa !40
end_hunk_2
