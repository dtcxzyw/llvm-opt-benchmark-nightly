inline.NumInlined: 69
inline.NumDeleted: 35
begin_hunk_0_@_ZL16BM_MULADDSUB_RAWRN9benchmark5StateE:_ZN9benchmark5State13StateIteratorC2EPS0_.exit
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
begin_hunk_1_@_ZL16BM_MULADDSUB_RAWRN9benchmark5StateE:_ZN9benchmark5State13StateIteratorC2EPS0_.exit

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.p = shl i64 %i.n, 3                          ; 5 uses
  %scevgep = getelementptr i8, ptr %1, i64 %i.p   ; 4 uses
  %scevgep48 = getelementptr i8, ptr %2, i64 %i.p ; 4 uses
  %scevgep49 = getelementptr i8, ptr %i.d, i64 %i.p ; 4 uses
  %scevgep50 = getelementptr i8, ptr %i.e, i64 %i.p ; 3 uses
  %scevgep51 = getelementptr i8, ptr %i.g, i64 %i.p ; 3 uses
  %min.iters.check = icmp eq i64 %i.n, 1
  %bound0 = icmp ult ptr %1, %scevgep48
  %bound1 = icmp ult ptr %2, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound052 = icmp ult ptr %1, %scevgep49
  %bound153 = icmp ult ptr %i.d, %scevgep
  %found.conflict54 = and i1 %bound052, %bound153
  %conflict.rdx = or i1 %found.conflict, %found.conflict54
  %bound055 = icmp ult ptr %1, %scevgep50
  %bound156 = icmp ult ptr %i.e, %scevgep
  %found.conflict57 = and i1 %bound055, %bound156
  %conflict.rdx58 = or i1 %conflict.rdx, %found.conflict57
  %bound059 = icmp ult ptr %1, %scevgep51
  %bound160 = icmp ult ptr %i.g, %scevgep
  %found.conflict61 = and i1 %bound059, %bound160
  %conflict.rdx62 = or i1 %conflict.rdx58, %found.conflict61
  %bound063 = icmp ult ptr %2, %scevgep49
  %bound164 = icmp ult ptr %i.d, %scevgep48
  %found.conflict65 = and i1 %bound063, %bound164
  %conflict.rdx66 = or i1 %conflict.rdx62, %found.conflict65
  %bound067 = icmp ult ptr %2, %scevgep50
  %bound168 = icmp ult ptr %i.e, %scevgep48
  %found.conflict69 = and i1 %bound067, %bound168
  %conflict.rdx70 = or i1 %conflict.rdx66, %found.conflict69
  %bound071 = icmp ult ptr %2, %scevgep51
  %bound172 = icmp ult ptr %i.g, %scevgep48
  %found.conflict73 = and i1 %bound071, %bound172
  %conflict.rdx74 = or i1 %conflict.rdx70, %found.conflict73
  %bound075 = icmp ult ptr %i.d, %scevgep50
  %bound176 = icmp ult ptr %i.e, %scevgep49
  %found.conflict77 = and i1 %bound075, %bound176
  %conflict.rdx78 = or i1 %conflict.rdx74, %found.conflict77
  %bound079 = icmp ult ptr %i.d, %scevgep51
  %bound180 = icmp ult ptr %i.g, %scevgep49
  %found.conflict81 = and i1 %bound079, %bound180
  %conflict.rdx82 = or i1 %conflict.rdx78, %found.conflict81
  %n.vec = and i64 %i.n, 9223372036854775806      ; 3 uses
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br label %.preheader.us
end_hunk_1
begin_hunk_2_@_ZL16BM_MULADDSUB_RAWRN9benchmark5StateE:_ZN9benchmark5State13StateIteratorC2EPS0_.exit

vector.body:                                      ; preds = %.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us ] ; 6 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.q, align 8, !tbaa !40, !alias.scope !48 ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index ; 2 uses
  %wide.load83 = load <2 x double>, ptr %i.r, align 8, !tbaa !40, !alias.scope !51 ; 2 uses
  %i.s = fmul <2 x double> %wide.load, %wide.load83
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index
  store <2 x double> %i.s, ptr %i.t, align 8, !tbaa !40, !alias.scope !53, !noalias !55
  %i.u = fadd <2 x double> %wide.load, %wide.load83
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index
  store <2 x double> %i.u, ptr %i.v, align 8, !tbaa !40, !alias.scope !58, !noalias !59
  %wide.load86 = load <2 x double>, ptr %i.q, align 8, !tbaa !40, !alias.scope !48
  %wide.load87 = load <2 x double>, ptr %i.r, align 8, !tbaa !40, !alias.scope !51
end_hunk_2
begin_hunk_3_@_ZL16BM_MULADDSUB_RAWRN9benchmark5StateE:_ZN9benchmark5State13StateIteratorC2EPS0_.exit

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 6 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv ; 3 uses
  %i.aa = load double, ptr %i.z, align 8, !tbaa !40
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv ; 3 uses
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !40
  %i.ad = fmul double %i.aa, %i.ac
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  store double %i.ad, ptr %i.ae, align 8, !tbaa !40
  %i.af = load double, ptr %i.z, align 8, !tbaa !40
  %i.ag = load double, ptr %i.ab, align 8, !tbaa !40
  %i.ah = fadd double %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  store double %i.ah, ptr %i.ai, align 8, !tbaa !40
  %i.aj = load double, ptr %i.z, align 8, !tbaa !40
  %i.ak = load double, ptr %i.ab, align 8, !tbaa !40
end_hunk_3
