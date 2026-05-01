inline.NumInlined: 69
inline.NumDeleted: 35
begin_hunk_0_@_ZL16BM_MULADDSUB_RAWRN9benchmark5StateE:_ZN9benchmark5State13StateIteratorC2EPS0_.exit
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
begin_hunk_1_@_ZL16BM_MULADDSUB_RAWRN9benchmark5StateE:_ZN9benchmark5State13StateIteratorC2EPS0_.exit

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.p = shl i64 %i.n, 3                          ; 5 uses
  %scevgep = getelementptr i8, ptr %i.e, i64 %i.p ; 3 uses
  %scevgep48 = getelementptr i8, ptr %5, i64 %i.p ; 2 uses
  %scevgep49 = getelementptr i8, ptr %i.d, i64 %i.p ; 3 uses
  %scevgep50 = getelementptr i8, ptr %4, i64 %i.p ; 2 uses
  %scevgep51 = getelementptr i8, ptr %i.g, i64 %i.p ; 2 uses
  %6 = shufflevector <4 x ptr> %3, <4 x ptr> poison, <8 x i32> <i32 poison, i32 poison, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 3>
  %7 = insertelement <8 x ptr> %6, ptr %i.g, i64 3
  %8 = insertelement <8 x ptr> poison, ptr %scevgep48, i64 0
  %9 = insertelement <8 x ptr> %8, ptr %scevgep, i64 1
  %10 = insertelement <8 x ptr> %9, ptr %scevgep50, i64 2
  %11 = insertelement <8 x ptr> %10, ptr %scevgep49, i64 7
  %12 = shufflevector <8 x ptr> %11, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 1, i32 0, i32 2, i32 0, i32 7>
  %13 = insertelement <8 x ptr> poison, ptr %scevgep, i64 0
  %14 = insertelement <8 x ptr> %13, ptr %scevgep49, i64 1
  %15 = insertelement <8 x ptr> %14, ptr %scevgep, i64 2
  %16 = insertelement <8 x ptr> %15, ptr %scevgep51, i64 3
  %17 = insertelement <8 x ptr> %16, ptr %scevgep48, i64 5
  %18 = insertelement <8 x ptr> %17, ptr %scevgep50, i64 7
  %19 = shufflevector <8 x ptr> %18, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 1, i32 5, i32 3, i32 7>
  %20 = shufflevector <4 x ptr> %3, <4 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %min.iters.check = icmp eq i64 %i.n, 1
  %21 = shufflevector <8 x ptr> %20, <8 x ptr> %7, <8 x i32> <i32 0, i32 2, i32 10, i32 11, i32 2, i32 1, i32 11, i32 15>
  %22 = icmp ult <8 x ptr> %21, %12
  %23 = shufflevector <4 x ptr> %3, <4 x ptr> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 1, i32 3, i32 1, i32 2>
  %24 = icmp ult <8 x ptr> %23, %19
  %25 = and <8 x i1> %24, %22
  %bound075 = icmp ult ptr %i.d, %scevgep51
  %bound176 = icmp ult ptr %i.g, %scevgep49
  %found.conflict77 = and i1 %bound075, %bound176
  %26 = bitcast <8 x i1> %25 to i8
  %27 = icmp ne i8 %26, 0
  %conflict.rdx82 = or i1 %27, %found.conflict77
  %n.vec = and i64 %i.n, 9223372036854775806      ; 3 uses
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br label %.preheader.us
end_hunk_1
begin_hunk_2_@_ZL16BM_MULADDSUB_RAWRN9benchmark5StateE:_ZN9benchmark5State13StateIteratorC2EPS0_.exit

vector.body:                                      ; preds = %.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us ] ; 6 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.q, align 8, !tbaa !40, !alias.scope !48 ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index ; 2 uses
  %wide.load83 = load <2 x double>, ptr %i.r, align 8, !tbaa !40, !alias.scope !51 ; 2 uses
  %i.s = fmul <2 x double> %wide.load, %wide.load83
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index
  store <2 x double> %i.s, ptr %i.t, align 8, !tbaa !40, !alias.scope !53, !noalias !55
  %i.u = fadd <2 x double> %wide.load, %wide.load83
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index
  store <2 x double> %i.u, ptr %i.v, align 8, !tbaa !40, !alias.scope !58, !noalias !59
  %wide.load86 = load <2 x double>, ptr %i.q, align 8, !tbaa !40, !alias.scope !48
  %wide.load87 = load <2 x double>, ptr %i.r, align 8, !tbaa !40, !alias.scope !51
end_hunk_2
begin_hunk_3_@_ZL16BM_MULADDSUB_RAWRN9benchmark5StateE:_ZN9benchmark5State13StateIteratorC2EPS0_.exit

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 6 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv ; 3 uses
  %i.aa = load double, ptr %i.z, align 8, !tbaa !40
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv ; 3 uses
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !40
  %i.ad = fmul double %i.aa, %i.ac
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  store double %i.ad, ptr %i.ae, align 8, !tbaa !40
  %i.af = load double, ptr %i.z, align 8, !tbaa !40
  %i.ag = load double, ptr %i.ab, align 8, !tbaa !40
  %i.ah = fadd double %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv
  store double %i.ah, ptr %i.ai, align 8, !tbaa !40
  %i.aj = load double, ptr %i.z, align 8, !tbaa !40
  %i.ak = load double, ptr %i.ab, align 8, !tbaa !40
end_hunk_3
