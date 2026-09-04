Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_compute-9613269d388cc6ca.polars_compute.fc5e0f69f37249e8-cgu.03?download=true
inline.NumInlined: 4552
inline.NumDeleted: 3455
loop-unroll.NumRuntimeUnrolled: 143
loop-unroll.NumUnrolled: 143
begin_hunk_0_@_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IteraENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_dE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecdE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute:bb.a
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.z, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.z, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.aa, %scalar.ph.prol ]
  %i.ab = sub i64 %.sroa.01.0.i.ph, %i.e, !dbg !18143
  %i.ac = add i64 %i.ab, %i.f, !dbg !18143
  %i.ad = icmp ugt i64 %i.ac, -4, !dbg !18143
  br i1 %i.ad, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaduNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_dE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph, !dbg !18143

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ae = phi i64 [ %i.ax, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !18138 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.ay, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !18137 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18138
  %.val16.i = load i8, ptr %i.af, align 1, !dbg !18139, !noalias !18121, !noundef !598
  %i.ag = sitofp i8 %.val16.i to double, !dbg !18140
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !18141
  store double %i.ag, ptr %i.ah, align 8, !dbg !18142, !noalias !18125
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18138
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1, !dbg !18138
  %.val16.i.1 = load i8, ptr %i.aj, align 1, !dbg !18139, !noalias !18121, !noundef !598
  %i.ak = sitofp i8 %.val16.i.1 to double, !dbg !18140
  %i.al = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !18141
  %i.am = getelementptr i8, ptr %i.al, i64 8, !dbg !18141
  store double %i.ak, ptr %i.am, align 8, !dbg !18142, !noalias !18125
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18138
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 2, !dbg !18138
  %.val16.i.2 = load i8, ptr %i.ao, align 1, !dbg !18139, !noalias !18121, !noundef !598
  %i.ap = sitofp i8 %.val16.i.2 to double, !dbg !18140
  %i.aq = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !18141
  %i.ar = getelementptr i8, ptr %i.aq, i64 16, !dbg !18141
  store double %i.ap, ptr %i.ar, align 8, !dbg !18142, !noalias !18125
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18138
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 3, !dbg !18138
  %.val16.i.3 = load i8, ptr %i.at, align 1, !dbg !18139, !noalias !18121, !noundef !598
  %i.au = sitofp i8 %.val16.i.3 to double, !dbg !18140
  %i.av = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !18141
  %i.aw = getelementptr i8, ptr %i.av, i64 24, !dbg !18141
  store double %i.au, ptr %i.aw, align 8, !dbg !18142, !noalias !18125
  %i.ax = add i64 %i.ae, 4, !dbg !18144           ; 2 uses
  %i.ay = add nuw i64 %.sroa.01.0.i, 4, !dbg !18145 ; 2 uses
  %i.az = icmp eq i64 %i.ay, %i.g, !dbg !18143
  br i1 %i.az, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaduNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_dE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph, !dbg !18143, !llvm.loop !18115

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaduNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_dE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.l, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ax, %scalar.ph ], !dbg !18146
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !18146, !noalias !18121
  ret void, !dbg !18147
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IteraENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivefE3as_fE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecfE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !18148 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !18218, !nonnull !598, !noundef !598 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18218
  %i.c = load ptr, ptr %i.b, align 8, !dbg !18218, !nonnull !598, !noundef !598 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !18219 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18219
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !18219 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !18219
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !18219 ; 8 uses
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !18220
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRafuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivefE3as_fE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.b, !dbg !18221

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !18222    ; 4 uses
  %i.f = ptrtoint ptr %i.a to i64, !dbg !18222    ; 4 uses
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !18222      ; 4 uses
  %min.iters.check = icmp ult i64 %i.g, 12, !dbg !18223
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !18223

vector.memcheck:                                  ; preds = %bb.b
  %i.h = shl i64 %.sroa.5.0.copyload, 2, !dbg !18223
  %scevgep = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.h, !dbg !18223
  %i.i = add i64 %.sroa.5.0.copyload, %i.e, !dbg !18223
  %i.j = sub i64 %i.i, %i.f, !dbg !18223
  %i.k = shl i64 %i.j, 2, !dbg !18223
  %scevgep2 = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.k, !dbg !18223
  %bound0 = icmp ult ptr %scevgep, %i.c, !dbg !18223
  %bound1 = icmp ult ptr %i.a, %scevgep2, !dbg !18223
  %found.conflict = and i1 %bound0, %bound1, !dbg !18223
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph, !dbg !18224

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.g, -8                       ; 4 uses
  %i.l = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.m = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !18224

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !18224 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %index, !dbg !18225 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4, !dbg !18226
  %wide.load = load <4 x i8>, ptr %i.n, align 1, !dbg !18226, !alias.scope !18208, !noalias !18209
  %wide.load4 = load <4 x i8>, ptr %i.o, align 1, !dbg !18226, !alias.scope !18208, !noalias !18209
  %i.p = sitofp <4 x i8> %wide.load to <4 x float>, !dbg !18227
  %i.q = sitofp <4 x i8> %wide.load4 to <4 x float>, !dbg !18227
  %i.r = getelementptr [4 x i8], ptr %i.m, i64 %index, !dbg !18228 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16, !dbg !18229
  store <4 x float> %i.p, ptr %i.r, align 4, !dbg !18229, !alias.scope !18210, !noalias !18211
  store <4 x float> %i.q, ptr %i.s, align 4, !dbg !18229, !alias.scope !18210, !noalias !18211
  %index.next = add nuw i64 %index, 8, !dbg !18224 ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec, !dbg !18230
  br i1 %i.t, label %middle.block, label %vector.body, !dbg !18230, !llvm.loop !18197

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec, !dbg !18230
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRafuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivefE3as_fE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph.preheader, !dbg !18230

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.l, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %i.u = sub i64 %i.e, %i.f, !dbg !18230
  %xtraiter = and i64 %i.u, 3, !dbg !18230        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !18230
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !18230

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.v = phi i64 [ %i.z, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ], !dbg !18225 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.aa, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], !dbg !18224 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.prol, !dbg !18225
  %.val16.i.prol = load i8, ptr %i.w, align 1, !dbg !18226, !noalias !18209, !noundef !598
  %i.x = sitofp i8 %.val16.i.prol to float, !dbg !18227
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.v, !dbg !18228
  store float %i.x, ptr %i.y, align 4, !dbg !18229, !noalias !18212
  %i.z = add i64 %i.v, 1, !dbg !18231             ; 3 uses
  %i.aa = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !18232 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !18230 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !18230
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !18230, !llvm.loop !18202

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.z, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.z, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.aa, %scalar.ph.prol ]
  %i.ab = sub i64 %.sroa.01.0.i.ph, %i.e, !dbg !18230
  %i.ac = add i64 %i.ab, %i.f, !dbg !18230
  %i.ad = icmp ugt i64 %i.ac, -4, !dbg !18230
  br i1 %i.ad, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRafuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivefE3as_fE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph, !dbg !18230

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ae = phi i64 [ %i.ax, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !18225 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.ay, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !18224 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18225
  %.val16.i = load i8, ptr %i.af, align 1, !dbg !18226, !noalias !18209, !noundef !598
  %i.ag = sitofp i8 %.val16.i to float, !dbg !18227
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !18228
  store float %i.ag, ptr %i.ah, align 4, !dbg !18229, !noalias !18212
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18225
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1, !dbg !18225
  %.val16.i.1 = load i8, ptr %i.aj, align 1, !dbg !18226, !noalias !18209, !noundef !598
  %i.ak = sitofp i8 %.val16.i.1 to float, !dbg !18227
  %i.al = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !18228
  %i.am = getelementptr i8, ptr %i.al, i64 4, !dbg !18228
  store float %i.ak, ptr %i.am, align 4, !dbg !18229, !noalias !18212
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18225
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 2, !dbg !18225
  %.val16.i.2 = load i8, ptr %i.ao, align 1, !dbg !18226, !noalias !18209, !noundef !598
  %i.ap = sitofp i8 %.val16.i.2 to float, !dbg !18227
  %i.aq = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !18228
  %i.ar = getelementptr i8, ptr %i.aq, i64 8, !dbg !18228
  store float %i.ap, ptr %i.ar, align 4, !dbg !18229, !noalias !18212
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18225
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 3, !dbg !18225
  %.val16.i.3 = load i8, ptr %i.at, align 1, !dbg !18226, !noalias !18209, !noundef !598
  %i.au = sitofp i8 %.val16.i.3 to float, !dbg !18227
  %i.av = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !18228
  %i.aw = getelementptr i8, ptr %i.av, i64 12, !dbg !18228
  store float %i.au, ptr %i.aw, align 4, !dbg !18229, !noalias !18212
  %i.ax = add i64 %i.ae, 4, !dbg !18231           ; 2 uses
  %i.ay = add nuw i64 %.sroa.01.0.i, 4, !dbg !18232 ; 2 uses
  %i.az = icmp eq i64 %i.ay, %i.g, !dbg !18230
  br i1 %i.az, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRafuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivefE3as_fE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph, !dbg !18230, !llvm.loop !18203

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRafuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivefE3as_fE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.l, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ax, %scalar.ph ], !dbg !18233
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !18233, !noalias !18209
  ret void, !dbg !18234
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IteraENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VechE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !18235 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !18294, !nonnull !598, !noundef !598 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18294
  %i.c = load ptr, ptr %i.b, align 8, !dbg !18294, !nonnull !598, !noundef !598 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !18295 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18295
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !18295 ; 8 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !18295
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !18295 ; 8 uses
  %.sroa.7.0.copyload2 = ptrtoaddr ptr %.sroa.7.0.copyload to i64, !dbg !18296
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !18296
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRahuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0NCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %iter.check, !dbg !18297

iter.check:                                       ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !18298    ; 3 uses
  %i.f = ptrtoint ptr %i.a to i64, !dbg !18298    ; 4 uses
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !18298      ; 8 uses
  %min.iters.check = icmp ult i64 %i.g, 8, !dbg !18299
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck, !dbg !18299

vector.memcheck:                                  ; preds = %iter.check
  %i.h = add i64 %.sroa.5.0.copyload, %.sroa.7.0.copyload2, !dbg !18299
  %i.i = sub i64 %i.f, %i.h, !dbg !18299
  %diff.check = icmp ugt i64 %i.i, -32, !dbg !18299
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !18300

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check3 = icmp ult i64 %i.g, 32, !dbg !18299
  br i1 %min.iters.check3, label %vec.epilog.ph, label %vector.ph, !dbg !18299

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.j = and i64 %i.g, 24
  %n.vec = and i64 %i.g, -32                      ; 5 uses
  %i.k = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.l = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !18299

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !18300 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 %index, !dbg !18301 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !18302
  %wide.load = load <16 x i8>, ptr %i.m, align 1, !dbg !18302, !noalias !18287
  %wide.load4 = load <16 x i8>, ptr %i.n, align 1, !dbg !18302, !noalias !18287
  %i.o = getelementptr i8, ptr %i.l, i64 %index, !dbg !18303 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !18304
  store <16 x i8> %wide.load, ptr %i.o, align 1, !dbg !18304, !noalias !18288
  store <16 x i8> %wide.load4, ptr %i.p, align 1, !dbg !18304, !noalias !18288
  %index.next = add nuw i64 %index, 32, !dbg !18300 ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec, !dbg !18305
  br i1 %i.q, label %middle.block, label %vector.body, !dbg !18305, !llvm.loop !18275

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec, !dbg !18305
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRahuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0NCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.iter.check, !dbg !18305

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.j, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !986

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !18300
  %n.vec5 = and i64 %i.g, -8                      ; 4 uses
  %i.r = add i64 %.sroa.5.0.copyload, %n.vec5     ; 2 uses
  %i.s = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index6 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next8, %vec.epilog.vector.body ], !dbg !18300 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 %index6, !dbg !18301
  %wide.load7 = load <8 x i8>, ptr %i.t, align 1, !dbg !18302, !noalias !18287
  %i.u = getelementptr i8, ptr %i.s, i64 %index6, !dbg !18303
  store <8 x i8> %wide.load7, ptr %i.u, align 1, !dbg !18304, !noalias !18288
  %index.next8 = add nuw i64 %index6, 8, !dbg !18300 ; 2 uses
  %i.v = icmp eq i64 %index.next8, %n.vec5, !dbg !18305
  br i1 %i.v, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !18305, !llvm.loop !18276

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n9 = icmp eq i64 %i.g, %n.vec5, !dbg !18305
  br i1 %cmp.n9, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRahuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0NCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph.preheader, !dbg !18305

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %iter.check ], [ %.sroa.5.0.copyload, %vector.memcheck ], [ %i.k, %vec.epilog.iter.check ], [ %i.r, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec5, %vec.epilog.middle.block ] ; 3 uses
  %i.w = sub i64 %i.e, %i.f, !dbg !18305
  %xtraiter = and i64 %i.w, 3, !dbg !18305        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !18305
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !18305

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %i.x = phi i64 [ %i.aa, %vec.epilog.scalar.ph.prol ], [ %.ph, %vec.epilog.scalar.ph.preheader ], !dbg !18301 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.ab, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !18300 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.prol, !dbg !18301
  %.val16.i.prol = load i8, ptr %i.y, align 1, !dbg !18302, !noalias !18287, !noundef !598
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.x, !dbg !18303
  store i8 %.val16.i.prol, ptr %i.z, align 1, !dbg !18304, !noalias !18288
  %i.aa = add i64 %i.x, 1, !dbg !18306            ; 3 uses
  %i.ab = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !18307 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !18305 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !18305
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !18305, !llvm.loop !18281

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.aa, %vec.epilog.scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.aa, %vec.epilog.scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ab, %vec.epilog.scalar.ph.prol ]
  %i.ac = sub i64 %.sroa.01.0.i.ph, %i.e, !dbg !18305
  %i.ad = add i64 %i.ac, %i.f, !dbg !18305
  %i.ae = icmp ugt i64 %i.ad, -4, !dbg !18305
  br i1 %i.ae, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRahuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0NCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph, !dbg !18305

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.af = phi i64 [ %i.au, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !18301 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.av, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !18300 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18301
  %.val16.i = load i8, ptr %i.ag, align 1, !dbg !18302, !noalias !18287, !noundef !598
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.af, !dbg !18303
  store i8 %.val16.i, ptr %i.ah, align 1, !dbg !18304, !noalias !18288
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18301
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1, !dbg !18301
  %.val16.i.1 = load i8, ptr %i.aj, align 1, !dbg !18302, !noalias !18287, !noundef !598
  %i.ak = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.af, !dbg !18303
  %i.al = getelementptr i8, ptr %i.ak, i64 1, !dbg !18303
  store i8 %.val16.i.1, ptr %i.al, align 1, !dbg !18304, !noalias !18288
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18301
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 2, !dbg !18301
  %.val16.i.2 = load i8, ptr %i.an, align 1, !dbg !18302, !noalias !18287, !noundef !598
  %i.ao = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.af, !dbg !18303
  %i.ap = getelementptr i8, ptr %i.ao, i64 2, !dbg !18303
  store i8 %.val16.i.2, ptr %i.ap, align 1, !dbg !18304, !noalias !18288
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18301
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 3, !dbg !18301
  %.val16.i.3 = load i8, ptr %i.ar, align 1, !dbg !18302, !noalias !18287, !noundef !598
  %i.as = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.af, !dbg !18303
  %i.at = getelementptr i8, ptr %i.as, i64 3, !dbg !18303
  store i8 %.val16.i.3, ptr %i.at, align 1, !dbg !18304, !noalias !18288
  %i.au = add i64 %i.af, 4, !dbg !18306           ; 2 uses
  %i.av = add nuw i64 %.sroa.01.0.i, 4, !dbg !18307 ; 2 uses
  %i.aw = icmp eq i64 %i.av, %i.g, !dbg !18305
  br i1 %i.aw, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRahuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0NCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph, !dbg !18305, !llvm.loop !18282

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRahuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0NCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.r, %vec.epilog.middle.block ], [ %i.k, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.au, %vec.epilog.scalar.ph ], !dbg !18308
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !18308, !noalias !18287
  ret void, !dbg !18309
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IteraENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivelE3as_lE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VeclE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !18310 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !18381, !nonnull !598, !noundef !598 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18381
  %i.c = load ptr, ptr %i.b, align 8, !dbg !18381, !nonnull !598, !noundef !598 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !18382 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18382
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !18382 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !18382
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !18382 ; 8 uses
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !18383
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaluNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivelE3as_lE0NCINvNvBS_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VeclE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.b, !dbg !18384

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !18385    ; 4 uses
  %i.f = ptrtoint ptr %i.a to i64, !dbg !18385    ; 4 uses
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !18385      ; 4 uses
  %min.iters.check = icmp ult i64 %i.g, 16, !dbg !18386
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !18386

vector.memcheck:                                  ; preds = %bb.b
  %i.h = shl i64 %.sroa.5.0.copyload, 2, !dbg !18386
  %scevgep = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.h, !dbg !18386
  %i.i = add i64 %.sroa.5.0.copyload, %i.e, !dbg !18386
  %i.j = sub i64 %i.i, %i.f, !dbg !18386
  %i.k = shl i64 %i.j, 2, !dbg !18386
  %scevgep2 = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.k, !dbg !18386
  %bound0 = icmp ult ptr %scevgep, %i.c, !dbg !18386
  %bound1 = icmp ult ptr %i.a, %scevgep2, !dbg !18386
  %found.conflict = and i1 %bound0, %bound1, !dbg !18386
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph, !dbg !18387

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.g, -8                       ; 4 uses
  %i.l = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.m = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !18387

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !18387 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %index, !dbg !18388 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4, !dbg !18389
  %wide.load = load <4 x i8>, ptr %i.n, align 1, !dbg !18389, !alias.scope !18370, !noalias !18371
  %wide.load4 = load <4 x i8>, ptr %i.o, align 1, !dbg !18389, !alias.scope !18370, !noalias !18371
  %i.p = sext <4 x i8> %wide.load to <4 x i32>, !dbg !18390
  %i.q = sext <4 x i8> %wide.load4 to <4 x i32>, !dbg !18390
  %i.r = getelementptr [4 x i8], ptr %i.m, i64 %index, !dbg !18391 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16, !dbg !18392
  store <4 x i32> %i.p, ptr %i.r, align 4, !dbg !18392, !alias.scope !18373, !noalias !18374
  store <4 x i32> %i.q, ptr %i.s, align 4, !dbg !18392, !alias.scope !18373, !noalias !18374
  %index.next = add nuw i64 %index, 8, !dbg !18387 ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec, !dbg !18393
  br i1 %i.t, label %middle.block, label %vector.body, !dbg !18393, !llvm.loop !18359

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec, !dbg !18393
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaluNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivelE3as_lE0NCINvNvBS_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VeclE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph.preheader, !dbg !18393

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.l, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %i.u = sub i64 %i.e, %i.f, !dbg !18393
  %xtraiter = and i64 %i.u, 3, !dbg !18393        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !18393
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !18393

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.v = phi i64 [ %i.z, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ], !dbg !18388 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.aa, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], !dbg !18387 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.prol, !dbg !18388
  %.val16.i.prol = load i8, ptr %i.w, align 1, !dbg !18389, !noalias !18371, !noundef !598
  %i.x = sext i8 %.val16.i.prol to i32, !dbg !18390
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.v, !dbg !18391
  store i32 %i.x, ptr %i.y, align 4, !dbg !18392, !noalias !18375
  %i.z = add i64 %i.v, 1, !dbg !18394             ; 3 uses
  %i.aa = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !18395 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !18393 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !18393
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !18393, !llvm.loop !18364

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.z, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.z, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.aa, %scalar.ph.prol ]
  %i.ab = sub i64 %.sroa.01.0.i.ph, %i.e, !dbg !18393
  %i.ac = add i64 %i.ab, %i.f, !dbg !18393
  %i.ad = icmp ugt i64 %i.ac, -4, !dbg !18393
  br i1 %i.ad, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaluNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivelE3as_lE0NCINvNvBS_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VeclE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph, !dbg !18393

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ae = phi i64 [ %i.ax, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !18388 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.ay, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !18387 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18388
  %.val16.i = load i8, ptr %i.af, align 1, !dbg !18389, !noalias !18371, !noundef !598
  %i.ag = sext i8 %.val16.i to i32, !dbg !18390
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !18391
  store i32 %i.ag, ptr %i.ah, align 4, !dbg !18392, !noalias !18375
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18388
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1, !dbg !18388
  %.val16.i.1 = load i8, ptr %i.aj, align 1, !dbg !18389, !noalias !18371, !noundef !598
  %i.ak = sext i8 %.val16.i.1 to i32, !dbg !18390
  %i.al = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !18391
  %i.am = getelementptr i8, ptr %i.al, i64 4, !dbg !18391
  store i32 %i.ak, ptr %i.am, align 4, !dbg !18392, !noalias !18375
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18388
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 2, !dbg !18388
  %.val16.i.2 = load i8, ptr %i.ao, align 1, !dbg !18389, !noalias !18371, !noundef !598
  %i.ap = sext i8 %.val16.i.2 to i32, !dbg !18390
  %i.aq = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !18391
  %i.ar = getelementptr i8, ptr %i.aq, i64 8, !dbg !18391
  store i32 %i.ap, ptr %i.ar, align 4, !dbg !18392, !noalias !18375
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18388
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 3, !dbg !18388
  %.val16.i.3 = load i8, ptr %i.at, align 1, !dbg !18389, !noalias !18371, !noundef !598
  %i.au = sext i8 %.val16.i.3 to i32, !dbg !18390
  %i.av = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !18391
  %i.aw = getelementptr i8, ptr %i.av, i64 12, !dbg !18391
  store i32 %i.au, ptr %i.aw, align 4, !dbg !18392, !noalias !18375
  %i.ax = add i64 %i.ae, 4, !dbg !18394           ; 2 uses
  %i.ay = add nuw i64 %.sroa.01.0.i, 4, !dbg !18395 ; 2 uses
  %i.az = icmp eq i64 %i.ay, %i.g, !dbg !18393
  br i1 %i.az, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaluNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivelE3as_lE0NCINvNvBS_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VeclE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph, !dbg !18393, !llvm.loop !18365

end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterfENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveaE3as_aE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecaE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute:bb.a
scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.u, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.u, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.v, %scalar.ph.prol ]
  %i.w = icmp eq i64 %i.h, %.neg, !dbg !20256
  br i1 %i.w, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfauNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveaE3as_aE0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecaE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph, !dbg !20256

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.x = phi i64 [ %i.ag, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !20251 ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.ah, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !20250 ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !20251
  %.val16.i = load float, ptr %i.y, align 4, !dbg !20252, !noalias !20235, !noundef !598
  %i.z = tail call noundef i8 @llvm.fptosi.sat.i8.f32(float %.val16.i), !dbg !20253
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.x, !dbg !20254
  store i8 %i.z, ptr %i.aa, align 1, !dbg !20255, !noalias !20238
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !20251
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4, !dbg !20251
  %.val16.i.1 = load float, ptr %i.ac, align 4, !dbg !20252, !noalias !20235, !noundef !598
  %i.ad = tail call noundef i8 @llvm.fptosi.sat.i8.f32(float %.val16.i.1), !dbg !20253
  %i.ae = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.x, !dbg !20254
  %i.af = getelementptr i8, ptr %i.ae, i64 1, !dbg !20254
  store i8 %i.ad, ptr %i.af, align 1, !dbg !20255, !noalias !20238
  %i.ag = add i64 %i.x, 2, !dbg !20257            ; 2 uses
  %i.ah = add nuw i64 %.sroa.01.0.i, 2, !dbg !20258 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, %i.h, !dbg !20256
  br i1 %i.ai, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfauNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveaE3as_aE0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecaE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph, !dbg !20256, !llvm.loop !20229

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfauNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveaE3as_aE0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecaE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.k, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ag, %scalar.ph ], !dbg !20259
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !20259, !noalias !20235
  ret void, !dbg !20260
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterfENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_dE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecdE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !20261 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !20332, !nonnull !598, !noundef !598 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !20332
  %i.c = load ptr, ptr %i.b, align 8, !dbg !20332, !nonnull !598, !noundef !598 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !20333 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !20333
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !20333 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !20333
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !20333 ; 8 uses
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !20334
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfduNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_dE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.b, !dbg !20335

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !20336
  %i.f = ptrtoint ptr %i.a to i64, !dbg !20336
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !20336      ; 4 uses
  %i.h = lshr i64 %i.g, 2, !dbg !20336            ; 5 uses
  %min.iters.check = icmp ult i64 %i.g, 48, !dbg !20337
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !20337

vector.memcheck:                                  ; preds = %bb.b
  %i.i = shl i64 %.sroa.5.0.copyload, 3, !dbg !20337 ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.i, !dbg !20337
  %i.j = shl i64 %i.g, 1, !dbg !20337
  %i.k = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.i, !dbg !20337
  %scevgep2 = getelementptr i8, ptr %i.k, i64 %i.j, !dbg !20337
  %i.l = and i64 %i.g, -4, !dbg !20337
  %scevgep3 = getelementptr i8, ptr %i.a, i64 %i.l, !dbg !20337
  %bound0 = icmp ult ptr %scevgep, %scevgep3, !dbg !20337
  %bound1 = icmp ult ptr %i.a, %scevgep2, !dbg !20337
  %found.conflict = and i1 %bound0, %bound1, !dbg !20337
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph, !dbg !20338

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 4611686018427387900      ; 4 uses
  %i.m = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.n = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !20338

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !20338 ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index, !dbg !20339 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !20340
  %wide.load = load <2 x float>, ptr %i.o, align 4, !dbg !20340, !alias.scope !20321, !noalias !20322
  %wide.load4 = load <2 x float>, ptr %i.p, align 4, !dbg !20340, !alias.scope !20321, !noalias !20322
  %i.q = fpext <2 x float> %wide.load to <2 x double>, !dbg !20341
  %i.r = fpext <2 x float> %wide.load4 to <2 x double>, !dbg !20341
  %i.s = getelementptr [8 x i8], ptr %i.n, i64 %index, !dbg !20342 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !20343
  store <2 x double> %i.q, ptr %i.s, align 8, !dbg !20343, !alias.scope !20324, !noalias !20325
  store <2 x double> %i.r, ptr %i.t, align 8, !dbg !20343, !alias.scope !20324, !noalias !20325
  %index.next = add nuw i64 %index, 4, !dbg !20338 ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec, !dbg !20344
  br i1 %i.u, label %middle.block, label %vector.body, !dbg !20344, !llvm.loop !20310

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec, !dbg !20344
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfduNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_dE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph.preheader, !dbg !20344

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.m, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.h, 3, !dbg !20344        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !20344
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !20344

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.v = phi i64 [ %i.z, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ], !dbg !20339 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.aa, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], !dbg !20338 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i.prol, !dbg !20339
  %.val16.i.prol = load float, ptr %i.w, align 4, !dbg !20340, !noalias !20322, !noundef !598
  %i.x = fpext float %.val16.i.prol to double, !dbg !20341
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.v, !dbg !20342
  store double %i.x, ptr %i.y, align 8, !dbg !20343, !noalias !20326
  %i.z = add i64 %i.v, 1, !dbg !20345             ; 3 uses
  %i.aa = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !20346 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !20344 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !20344
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !20344, !llvm.loop !20315

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.z, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.z, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.aa, %scalar.ph.prol ]
  %i.ab = sub nsw i64 %.sroa.01.0.i.ph, %i.h, !dbg !20344
  %i.ac = icmp ugt i64 %i.ab, -4, !dbg !20344
  br i1 %i.ac, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfduNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_dE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph, !dbg !20344

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ad = phi i64 [ %i.aw, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !20339 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.ax, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !20338 ; 5 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !20339
  %.val16.i = load float, ptr %i.ae, align 4, !dbg !20340, !noalias !20322, !noundef !598
  %i.af = fpext float %.val16.i to double, !dbg !20341
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ad, !dbg !20342
  store double %i.af, ptr %i.ag, align 8, !dbg !20343, !noalias !20326
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !20339
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4, !dbg !20339
  %.val16.i.1 = load float, ptr %i.ai, align 4, !dbg !20340, !noalias !20322, !noundef !598
  %i.aj = fpext float %.val16.i.1 to double, !dbg !20341
  %i.ak = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ad, !dbg !20342
  %i.al = getelementptr i8, ptr %i.ak, i64 8, !dbg !20342
  store double %i.aj, ptr %i.al, align 8, !dbg !20343, !noalias !20326
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !20339
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !20339
  %.val16.i.2 = load float, ptr %i.an, align 4, !dbg !20340, !noalias !20322, !noundef !598
  %i.ao = fpext float %.val16.i.2 to double, !dbg !20341
  %i.ap = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ad, !dbg !20342
  %i.aq = getelementptr i8, ptr %i.ap, i64 16, !dbg !20342
  store double %i.ao, ptr %i.aq, align 8, !dbg !20343, !noalias !20326
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !20339
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 12, !dbg !20339
  %.val16.i.3 = load float, ptr %i.as, align 4, !dbg !20340, !noalias !20322, !noundef !598
  %i.at = fpext float %.val16.i.3 to double, !dbg !20341
  %i.au = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ad, !dbg !20342
  %i.av = getelementptr i8, ptr %i.au, i64 24, !dbg !20342
  store double %i.at, ptr %i.av, align 8, !dbg !20343, !noalias !20326
  %i.aw = add i64 %i.ad, 4, !dbg !20345           ; 2 uses
  %i.ax = add nuw i64 %.sroa.01.0.i, 4, !dbg !20346 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, %i.h, !dbg !20344
  br i1 %i.ay, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfduNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_dE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph, !dbg !20344, !llvm.loop !20316

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfduNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_dE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.m, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.aw, %scalar.ph ], !dbg !20347
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !20347, !noalias !20322
  ret void, !dbg !20348
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterfENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VechE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !20349 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !20418, !nonnull !598, !noundef !598 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !20418
  %i.c = load ptr, ptr %i.b, align 8, !dbg !20418, !nonnull !598, !noundef !598 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !20419 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !20419
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !20419 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !20419
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !20419 ; 6 uses
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !20420
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfhuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0NCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.b, !dbg !20421

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !20422
  %i.f = ptrtoint ptr %i.a to i64, !dbg !20422
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !20422      ; 4 uses
  %i.h = lshr i64 %i.g, 2, !dbg !20422            ; 5 uses
  %min.iters.check = icmp ult i64 %i.g, 32, !dbg !20423
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !20423

vector.memcheck:                                  ; preds = %bb.b
  %scevgep = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload, !dbg !20423
  %i.i = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload, !dbg !20423
  %scevgep2 = getelementptr i8, ptr %i.i, i64 %i.h, !dbg !20423
  %i.j = and i64 %i.g, -4, !dbg !20423
  %scevgep3 = getelementptr i8, ptr %i.a, i64 %i.j, !dbg !20423
  %bound0 = icmp ult ptr %scevgep, %scevgep3, !dbg !20423
  %bound1 = icmp ult ptr %i.a, %scevgep2, !dbg !20423
  %found.conflict = and i1 %bound0, %bound1, !dbg !20423
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph, !dbg !20424

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 4611686018427387900      ; 4 uses
  %i.k = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.l = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !20424

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !20424 ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index, !dbg !20425
  %wide.load.a = load <4 x float>, ptr %i.m, align 4, !dbg !20426, !alias.scope !20408, !noalias !20409
  %i.n = tail call <4 x i8> @llvm.fptoui.sat.v4i8.v4f32(<4 x float> %wide.load.a), !dbg !20427
  %i.o = getelementptr i8, ptr %i.l, i64 %index, !dbg !20428
  store <4 x i8> %i.n, ptr %i.o, align 1, !dbg !20429, !alias.scope !20410, !noalias !20411
  %index.next = add nuw i64 %index, 4, !dbg !20424 ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec, !dbg !20430
  br i1 %i.p, label %middle.block, label %vector.body, !dbg !20430, !llvm.loop !20398

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec, !dbg !20430
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfhuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0NCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph.preheader, !dbg !20430

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.k, %middle.block ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.sroa.01.0.i.ph, 1, !dbg !20430
  %i.q = and i64 %i.g, 4, !dbg !20430
  %lcmp.mod.not = icmp eq i64 %i.q, 0, !dbg !20430
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !20430

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i.ph, !dbg !20425
  %.val16.i.prol = load float, ptr %i.r, align 4, !dbg !20426, !noalias !20409, !noundef !598
  %i.s = tail call noundef i8 @llvm.fptoui.sat.i8.f32(float %.val16.i.prol), !dbg !20427
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %.ph, !dbg !20428
  store i8 %i.s, ptr %i.t, align 1, !dbg !20429, !noalias !20412
  %i.u = add i64 %.ph, 1, !dbg !20431             ; 2 uses
  %i.v = or disjoint i64 %.sroa.01.0.i.ph, 1, !dbg !20432
  br label %scalar.ph.prol.loopexit, !dbg !20430

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.u, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.u, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.v, %scalar.ph.prol ]
  %i.w = icmp eq i64 %i.h, %.neg, !dbg !20430
  br i1 %i.w, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfhuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0NCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph, !dbg !20430

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.x = phi i64 [ %i.ag, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !20425 ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.ah, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !20424 ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !20425
  %.val16.i = load float, ptr %i.y, align 4, !dbg !20426, !noalias !20409, !noundef !598
  %i.z = tail call noundef i8 @llvm.fptoui.sat.i8.f32(float %.val16.i), !dbg !20427
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.x, !dbg !20428
  store i8 %i.z, ptr %i.aa, align 1, !dbg !20429, !noalias !20412
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !20425
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4, !dbg !20425
  %.val16.i.1 = load float, ptr %i.ac, align 4, !dbg !20426, !noalias !20409, !noundef !598
  %i.ad = tail call noundef i8 @llvm.fptoui.sat.i8.f32(float %.val16.i.1), !dbg !20427
  %i.ae = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.x, !dbg !20428
  %i.af = getelementptr i8, ptr %i.ae, i64 1, !dbg !20428
  store i8 %i.ad, ptr %i.af, align 1, !dbg !20429, !noalias !20412
  %i.ag = add i64 %i.x, 2, !dbg !20431            ; 2 uses
  %i.ah = add nuw i64 %.sroa.01.0.i, 2, !dbg !20432 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, %i.h, !dbg !20430
  br i1 %i.ai, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfhuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0NCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph, !dbg !20430, !llvm.loop !20403

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfhuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0NCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.k, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ag, %scalar.ph ], !dbg !20433
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !20433, !noalias !20409
  ret void, !dbg !20434
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterfENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivelE3as_lE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VeclE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !20435 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !20498, !nonnull !598, !noundef !598 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !20498
  %i.c = load ptr, ptr %i.b, align 8, !dbg !20498, !nonnull !598, !noundef !598 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !20499 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !20499
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !20499 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !20499
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !20499 ; 5 uses
  %.sroa.7.0.copyload2 = ptrtoaddr ptr %.sroa.7.0.copyload to i64, !dbg !20500
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !20500
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfluNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivelE3as_lE0NCINvNvBS_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VeclE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.b, !dbg !20501

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !20502
  %i.f = ptrtoint ptr %i.a to i64, !dbg !20502    ; 2 uses
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !20502      ; 3 uses
  %i.h = lshr i64 %i.g, 2, !dbg !20502            ; 4 uses
  %min.iters.check = icmp ult i64 %i.g, 32, !dbg !20503
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !20503

vector.memcheck:                                  ; preds = %bb.b
  %i.i = shl i64 %.sroa.5.0.copyload, 2, !dbg !20503
  %i.j = add i64 %i.i, %.sroa.7.0.copyload2, !dbg !20503
  %i.k = sub i64 %i.f, %i.j, !dbg !20503
  %diff.check = icmp ugt i64 %i.k, -16, !dbg !20503
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph, !dbg !20504

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 4611686018427387900      ; 4 uses
  %i.l = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.m = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !20504

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !20504 ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index, !dbg !20505
  %wide.load = load <4 x float>, ptr %i.n, align 4, !dbg !20506, !noalias !20491
  %i.o = tail call <4 x i32> @llvm.fptosi.sat.v4i32.v4f32(<4 x float> %wide.load), !dbg !20507
  %i.p = getelementptr [4 x i8], ptr %i.m, i64 %index, !dbg !20508
  store <4 x i32> %i.o, ptr %i.p, align 4, !dbg !20509, !noalias !20492
  %index.next = add nuw i64 %index, 4, !dbg !20504 ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec, !dbg !20510
  br i1 %i.q, label %middle.block, label %vector.body, !dbg !20510, !llvm.loop !20481

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec, !dbg !20510
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfluNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivelE3as_lE0NCINvNvBS_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VeclE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph.preheader, !dbg !20510

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.l, %middle.block ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.sroa.01.0.i.ph, 1, !dbg !20510
  %i.r = and i64 %i.g, 4, !dbg !20510
  %lcmp.mod.not = icmp eq i64 %i.r, 0, !dbg !20510
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !20510

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i.ph, !dbg !20505
  %.val16.i.prol = load float, ptr %i.s, align 4, !dbg !20506, !noalias !20491, !noundef !598
  %i.t = tail call noundef i32 @llvm.fptosi.sat.i32.f32(float %.val16.i.prol), !dbg !20507
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %.ph, !dbg !20508
  store i32 %i.t, ptr %i.u, align 4, !dbg !20509, !noalias !20492
  %i.v = add i64 %.ph, 1, !dbg !20511             ; 2 uses
  %i.w = or disjoint i64 %.sroa.01.0.i.ph, 1, !dbg !20512
  br label %scalar.ph.prol.loopexit, !dbg !20510

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.v, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.v, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.w, %scalar.ph.prol ]
  %i.x = icmp eq i64 %i.h, %.neg, !dbg !20510
  br i1 %i.x, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfluNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivelE3as_lE0NCINvNvBS_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VeclE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph, !dbg !20510

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.y = phi i64 [ %i.ah, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !20505 ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.ai, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !20504 ; 3 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !20505
  %.val16.i = load float, ptr %i.z, align 4, !dbg !20506, !noalias !20491, !noundef !598
  %i.aa = tail call noundef i32 @llvm.fptosi.sat.i32.f32(float %.val16.i), !dbg !20507
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.y, !dbg !20508
  store i32 %i.aa, ptr %i.ab, align 4, !dbg !20509, !noalias !20492
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !20505
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4, !dbg !20505
  %.val16.i.1 = load float, ptr %i.ad, align 4, !dbg !20506, !noalias !20491, !noundef !598
  %i.ae = tail call noundef i32 @llvm.fptosi.sat.i32.f32(float %.val16.i.1), !dbg !20507
  %i.af = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.y, !dbg !20508
  %i.ag = getelementptr i8, ptr %i.af, i64 4, !dbg !20508
  store i32 %i.ae, ptr %i.ag, align 4, !dbg !20509, !noalias !20492
  %i.ah = add i64 %i.y, 2, !dbg !20511            ; 2 uses
  %i.ai = add nuw i64 %.sroa.01.0.i, 2, !dbg !20512 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, %i.h, !dbg !20510
  br i1 %i.aj, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfluNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivelE3as_lE0NCINvNvBS_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VeclE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph, !dbg !20510, !llvm.loop !20486

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfluNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivelE3as_lE0NCINvNvBS_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VeclE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.l, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ah, %scalar.ph ], !dbg !20513
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !20513, !noalias !20491
  ret void, !dbg !20514
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterfENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivemE3as_mE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4callmNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecmE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !20515 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !20578, !nonnull !598, !noundef !598 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !20578
  %i.c = load ptr, ptr %i.b, align 8, !dbg !20578, !nonnull !598, !noundef !598 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !20579 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !20579
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !20579 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !20579
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !20579 ; 5 uses
  %.sroa.7.0.copyload2 = ptrtoaddr ptr %.sroa.7.0.copyload to i64, !dbg !20580
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !20580
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfmuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivemE3as_mE0NCINvNvBS_8for_each4callmNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecmE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.b, !dbg !20581

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !20582
  %i.f = ptrtoint ptr %i.a to i64, !dbg !20582    ; 2 uses
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !20582      ; 3 uses
  %i.h = lshr i64 %i.g, 2, !dbg !20582            ; 4 uses
  %min.iters.check = icmp ult i64 %i.g, 32, !dbg !20583
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !20583

vector.memcheck:                                  ; preds = %bb.b
  %i.i = shl i64 %.sroa.5.0.copyload, 2, !dbg !20583
  %i.j = add i64 %i.i, %.sroa.7.0.copyload2, !dbg !20583
  %i.k = sub i64 %i.f, %i.j, !dbg !20583
  %diff.check = icmp ugt i64 %i.k, -16, !dbg !20583
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph, !dbg !20584

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 4611686018427387900      ; 4 uses
  %i.l = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.m = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !20584

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !20584 ; 3 uses
end_hunk_1
begin_hunk_2_@_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterfENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveyE3as_yE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecyE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute:bb.a
  store i64 %i.l, ptr %i.m, align 8, !dbg !21075, !noalias !21058
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !21070
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4, !dbg !21070
  %.val16.i.1 = load float, ptr %i.o, align 4, !dbg !21072, !noalias !21057, !noundef !598
  %i.p = tail call noundef i64 @llvm.fptoui.sat.i64.f32(float %.val16.i.1), !dbg !21073
  %i.q = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.j, !dbg !21074
  %i.r = getelementptr i8, ptr %i.q, i64 8, !dbg !21074
  store i64 %i.p, ptr %i.r, align 8, !dbg !21075, !noalias !21058
  %i.s = add i64 %i.j, 2, !dbg !21076             ; 3 uses
  %i.t = add nuw i64 %.sroa.01.0.i, 2, !dbg !21077 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !21078  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !21078
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfyuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveyE3as_yE0NCINvNvBS_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecyE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, label %bb.c, !dbg !21078

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfyuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveyE3as_yE0NCINvNvBS_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecyE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %i.u = and i64 %i.g, 4, !dbg !21078
  %lcmp.mod.not = icmp eq i64 %i.u, 0, !dbg !21078
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfyuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveyE3as_yE0NCINvNvBS_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecyE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %.epil.preheader, !dbg !21078

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfyuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveyE3as_yE0NCINvNvBS_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecyE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.s, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfyuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveyE3as_yE0NCINvNvBS_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecyE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.t, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfyuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveyE3as_yE0NCINvNvBS_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecyE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.h to i1, !dbg !21078
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !21078
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i.epil.init, !dbg !21070
  %.val16.i.epil = load float, ptr %i.v, align 4, !dbg !21072, !noalias !21057, !noundef !598
  %i.w = tail call noundef i64 @llvm.fptoui.sat.i64.f32(float %.val16.i.epil), !dbg !21073
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init, !dbg !21074
  store i64 %i.w, ptr %i.x, align 8, !dbg !21075, !noalias !21058
  %i.y = add i64 %.epil.init, 1, !dbg !21076
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfyuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveyE3as_yE0NCINvNvBS_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecyE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfyuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveyE3as_yE0NCINvNvBS_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecyE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfyuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveyE3as_yE0NCINvNvBS_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecyE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.s, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfyuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveyE3as_yE0NCINvNvBS_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecyE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ], [ %i.y, %.epil.preheader ], !dbg !21079
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !21079, !noalias !21057
  ret void, !dbg !21080
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveNtNtCs2mZqlW55729_12polars_utils7float164pf16E3as_B3c_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB47_8for_each4callB3c_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5n_3VecB3c_E14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !21081 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !21178, !nonnull !598, !noundef !598 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !21178
  %i.c = load ptr, ptr %i.b, align 8, !dbg !21178, !nonnull !598, !noundef !598 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !21179 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !21179
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !21179 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !21179
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !21179
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !21180
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhNtNtCs2mZqlW55729_12polars_utils7float164pf16uNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveB2d_E3as_B2d_E0NCINvNvBS_8for_each4callB2d_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5A_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2X_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.b, !dbg !21181

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !21182
  %i.f = ptrtoint ptr %i.a to i64, !dbg !21182
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !21182
  br label %bb.c, !dbg !21183

bb.c:                                             ; preds = %bb.n, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.bc, %bb.n ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.bd, %bb.n ], !dbg !21184 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !21185
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21164), !dbg !21186
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21165), !dbg !21187
  %i.i = load i8, ptr %i.h, align 1, !dbg !21188, !alias.scope !21166, !noalias !21167, !noundef !598
  %i.j = uitofp i8 %i.i to float, !dbg !21189     ; 2 uses
  %i.k = load atomic i64, ptr @_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache5CACHE monotonic, align 8, !dbg !21190, !noalias !21170 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0, !dbg !21191
  br i1 %i.l, label %.split.i.i.i.i.i.i, label %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i.i.i.i.i, !dbg !21191, !prof !670

.split.i.i.i.i.i.i:                               ; preds = %bb.c
  %i.m = invoke noundef i128 @_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache21detect_and_initialize()
          to label %.noexc.i unwind label %bb.o, !dbg !21192, !noalias !21171

.noexc.i:                                         ; preds = %.split.i.i.i.i.i.i
  %i.n = and i128 %i.m, 36028797018963968, !dbg !21193
  %.not1.i.i.i.i.i.i = icmp eq i128 %i.n, 0, !dbg !21193
  br i1 %.not1.i.i.i.i.i.i, label %bb.d, label %bb.m, !dbg !21194

_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.o = and i64 %i.k, 36028797018963968, !dbg !21195
  %.not.i.i.i.i.i.i = icmp eq i64 %i.o, 0, !dbg !21195
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.m, !dbg !21194

bb.d:                                             ; preds = %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i.i.i.i.i, %.noexc.i
  %i.p = bitcast float %i.j to i32, !dbg !21196   ; 7 uses
  %i.q = and i32 %i.p, 2139095040, !dbg !21197    ; 3 uses
  %i.r = and i32 %i.p, 8388607, !dbg !21198       ; 4 uses
  %i.s = icmp eq i32 %i.q, 2139095040, !dbg !21199
  br i1 %i.s, label %bb.e, label %bb.f, !dbg !21199

bb.e:                                             ; preds = %bb.d
  %i.t = icmp eq i32 %i.r, 0, !dbg !21200
  %..i.i.i.i.i.i.i = select i1 %i.t, i32 0, i32 512, !dbg !21201
  %i.u = lshr i32 %i.r, 13, !dbg !21202
  %i.v = or i32 %..i.i.i.i.i.i.i, %i.u, !dbg !21203
  %i.w = trunc nuw nsw i32 %i.v to i16, !dbg !21203
  %i.x = or disjoint i16 %i.w, 31744, !dbg !21203
  br label %bb.n, !dbg !21204

bb.f:                                             ; preds = %bb.d
  %i.y = lshr i32 %i.p, 23, !dbg !21205           ; 2 uses
  %i.z = icmp samesign ugt i32 %i.q, 1191182336, !dbg !21206
  br i1 %i.z, label %bb.n, label %bb.g, !dbg !21206

bb.g:                                             ; preds = %bb.f
  %i.aa = icmp samesign ult i32 %i.p, 947912704, !dbg !21207
  br i1 %i.aa, label %bb.i, label %bb.h, !dbg !21207

bb.h:                                             ; preds = %bb.g
  %i.ab = lshr exact i32 %i.q, 13, !dbg !21208
  %i.ac = add nuw nsw i32 %i.ab, 16384, !dbg !21208
  %i.ad = lshr i32 %i.r, 13, !dbg !21209
  %i.ae = and i32 %i.p, 4096, !dbg !21210
  %i.af = icmp ne i32 %i.ae, 0, !dbg !21210
  %i.ag = and i32 %i.p, 12287
  %i.ah = icmp ne i32 %i.ag, 0
  %or.cond.not.i.i.i.i.i.i.i = and i1 %i.af, %i.ah, !dbg !21211
  %i.ai = or disjoint i32 %i.ac, %i.ad, !dbg !21211
  %i.aj = trunc i32 %i.ai to i16, !dbg !21211
  %i.ak = zext i1 %or.cond.not.i.i.i.i.i.i.i to i16, !dbg !21210
  %spec.select7.i.i.i.i.i.i.i = add i16 %i.aj, %i.ak, !dbg !21210
  br label %bb.n, !dbg !21210

bb.i:                                             ; preds = %bb.g
  %i.al = icmp samesign ult i32 %i.p, 855638016, !dbg !21212
  br i1 %i.al, label %bb.n, label %bb.j, !dbg !21212

bb.j:                                             ; preds = %bb.i
  %i.am = sub nsw i32 126, %i.y, !dbg !21212
  %i.an = or disjoint i32 %i.r, 8388608, !dbg !21213 ; 3 uses
  %i.ao = lshr i32 %i.an, %i.am, !dbg !21214      ; 2 uses
  %i.ap = sub nsw i32 29, %i.y, !dbg !21215
  %i.aq = and i32 %i.ap, 31, !dbg !21216          ; 2 uses
  %i.ar = shl nuw i32 1, %i.aq, !dbg !21216
  %i.as = and i32 %i.ar, %i.an, !dbg !21217
  %i.at = icmp eq i32 %i.as, 0, !dbg !21217
  br i1 %i.at, label %bb.l, label %bb.k, !dbg !21217

bb.k:                                             ; preds = %bb.j
  %i.au = shl i32 3, %i.aq, !dbg !21218
  %i.av = add nuw i32 %i.au, 16777215, !dbg !21219
  %i.aw = and i32 %i.av, %i.an, !dbg !21220
  %i.ax = icmp ne i32 %i.aw, 0, !dbg !21220
  %i.ay = zext i1 %i.ax to i32, !dbg !21220
  %spec.select.i.i.i.i.i.i.i = add nuw nsw i32 %i.ao, %i.ay, !dbg !21220
  br label %bb.l, !dbg !21220

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.03.0.i.i.i.i.i.i.i = phi i32 [ %i.ao, %bb.j ], [ %spec.select.i.i.i.i.i.i.i, %bb.k ], !dbg !21221
  %i.az = trunc nuw i32 %.sroa.03.0.i.i.i.i.i.i.i to i16, !dbg !21222
  br label %bb.n, !dbg !21223

bb.m:                                             ; preds = %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i.i.i.i.i, %.noexc.i
  %i.ba = tail call fastcc noundef i16 @_RNvNtNtNtCshdiYQzaKNQ1_4half8binary164arch3x8619f32_to_f16_x86_f16c(float noundef %i.j), !dbg !21224
  br label %bb.n, !dbg !21224

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.i, %bb.h, %bb.f, %bb.e
  %.sroa.0.0.i.i.i.i.i.i = phi i16 [ %i.ba, %bb.m ], [ %i.x, %bb.e ], [ %spec.select7.i.i.i.i.i.i.i, %bb.h ], [ 31744, %bb.f ], [ %i.az, %bb.l ], [ 0, %bb.i ], !dbg !21225
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i, !dbg !21226
  store i16 %.sroa.0.0.i.i.i.i.i.i, ptr %i.bb, align 2, !dbg !21227, !noalias !21172
  %i.bc = add i64 %.val15.i, 1, !dbg !21228       ; 2 uses
  %i.bd = add nuw i64 %.sroa.01.0.i, 1, !dbg !21229 ; 2 uses
  %i.be = icmp eq i64 %i.bd, %i.g, !dbg !21230
  br i1 %i.be, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhNtNtCs2mZqlW55729_12polars_utils7float164pf16uNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveB2d_E3as_B2d_E0NCINvNvBS_8for_each4callB2d_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5A_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2X_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.c, !dbg !21230

bb.o:                                             ; preds = %.split.i.i.i.i.i.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !dbg !21231, !noalias !21171
  resume { ptr, i32 } %i.bf, !dbg !21232

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhNtNtCs2mZqlW55729_12polars_utils7float164pf16uNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveB2d_E3as_B2d_E0NCINvNvBS_8for_each4callB2d_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5A_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2X_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.n, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.bc, %bb.n ], !dbg !21233
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !21233, !noalias !21171
  ret void, !dbg !21234
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveaE3as_aE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecaE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !21235 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !21294, !nonnull !598, !noundef !598 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !21294
  %i.c = load ptr, ptr %i.b, align 8, !dbg !21294, !nonnull !598, !noundef !598 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !21295 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !21295
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !21295 ; 8 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !21295
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !21295 ; 8 uses
  %.sroa.7.0.copyload2 = ptrtoaddr ptr %.sroa.7.0.copyload to i64, !dbg !21296
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !21296
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhauNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveaE3as_aE0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecaE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %iter.check, !dbg !21297

iter.check:                                       ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !21298    ; 3 uses
  %i.f = ptrtoint ptr %i.a to i64, !dbg !21298    ; 4 uses
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !21298      ; 8 uses
  %min.iters.check = icmp ult i64 %i.g, 8, !dbg !21299
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck, !dbg !21299

vector.memcheck:                                  ; preds = %iter.check
  %i.h = add i64 %.sroa.5.0.copyload, %.sroa.7.0.copyload2, !dbg !21299
  %i.i = sub i64 %i.f, %i.h, !dbg !21299
  %diff.check = icmp ugt i64 %i.i, -32, !dbg !21299
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !21300

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check3 = icmp ult i64 %i.g, 32, !dbg !21299
  br i1 %min.iters.check3, label %vec.epilog.ph, label %vector.ph, !dbg !21299

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.j = and i64 %i.g, 24
  %n.vec = and i64 %i.g, -32                      ; 5 uses
  %i.k = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.l = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !21299

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !21300 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 %index, !dbg !21301 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !21302
  %wide.load = load <16 x i8>, ptr %i.m, align 1, !dbg !21302, !noalias !21287
  %wide.load4 = load <16 x i8>, ptr %i.n, align 1, !dbg !21302, !noalias !21287
  %i.o = getelementptr i8, ptr %i.l, i64 %index, !dbg !21303 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !21304
  store <16 x i8> %wide.load, ptr %i.o, align 1, !dbg !21304, !noalias !21288
  store <16 x i8> %wide.load4, ptr %i.p, align 1, !dbg !21304, !noalias !21288
  %index.next = add nuw i64 %index, 32, !dbg !21300 ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec, !dbg !21305
  br i1 %i.q, label %middle.block, label %vector.body, !dbg !21305, !llvm.loop !21275

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec, !dbg !21305
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhauNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveaE3as_aE0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecaE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.iter.check, !dbg !21305

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.j, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !986

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !21300
  %n.vec5 = and i64 %i.g, -8                      ; 4 uses
  %i.r = add i64 %.sroa.5.0.copyload, %n.vec5     ; 2 uses
  %i.s = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index6 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next8, %vec.epilog.vector.body ], !dbg !21300 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 %index6, !dbg !21301
  %wide.load7 = load <8 x i8>, ptr %i.t, align 1, !dbg !21302, !noalias !21287
  %i.u = getelementptr i8, ptr %i.s, i64 %index6, !dbg !21303
  store <8 x i8> %wide.load7, ptr %i.u, align 1, !dbg !21304, !noalias !21288
  %index.next8 = add nuw i64 %index6, 8, !dbg !21300 ; 2 uses
  %i.v = icmp eq i64 %index.next8, %n.vec5, !dbg !21305
  br i1 %i.v, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !21305, !llvm.loop !21276

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n9 = icmp eq i64 %i.g, %n.vec5, !dbg !21305
  br i1 %cmp.n9, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhauNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveaE3as_aE0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecaE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph.preheader, !dbg !21305

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %iter.check ], [ %.sroa.5.0.copyload, %vector.memcheck ], [ %i.k, %vec.epilog.iter.check ], [ %i.r, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec5, %vec.epilog.middle.block ] ; 3 uses
  %i.w = sub i64 %i.e, %i.f, !dbg !21305
  %xtraiter = and i64 %i.w, 3, !dbg !21305        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !21305
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !21305

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %i.x = phi i64 [ %i.aa, %vec.epilog.scalar.ph.prol ], [ %.ph, %vec.epilog.scalar.ph.preheader ], !dbg !21301 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.ab, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !21300 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.prol, !dbg !21301
  %.val16.i.prol = load i8, ptr %i.y, align 1, !dbg !21302, !noalias !21287, !noundef !598
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.x, !dbg !21303
  store i8 %.val16.i.prol, ptr %i.z, align 1, !dbg !21304, !noalias !21288
  %i.aa = add i64 %i.x, 1, !dbg !21306            ; 3 uses
  %i.ab = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !21307 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !21305 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !21305
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !21305, !llvm.loop !21281

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.aa, %vec.epilog.scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.aa, %vec.epilog.scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ab, %vec.epilog.scalar.ph.prol ]
  %i.ac = sub i64 %.sroa.01.0.i.ph, %i.e, !dbg !21305
  %i.ad = add i64 %i.ac, %i.f, !dbg !21305
  %i.ae = icmp ugt i64 %i.ad, -4, !dbg !21305
  br i1 %i.ae, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhauNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveaE3as_aE0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecaE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph, !dbg !21305

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.af = phi i64 [ %i.au, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !21301 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.av, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !21300 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !21301
  %.val16.i = load i8, ptr %i.ag, align 1, !dbg !21302, !noalias !21287, !noundef !598
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.af, !dbg !21303
  store i8 %.val16.i, ptr %i.ah, align 1, !dbg !21304, !noalias !21288
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !21301
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1, !dbg !21301
  %.val16.i.1 = load i8, ptr %i.aj, align 1, !dbg !21302, !noalias !21287, !noundef !598
  %i.ak = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.af, !dbg !21303
  %i.al = getelementptr i8, ptr %i.ak, i64 1, !dbg !21303
  store i8 %.val16.i.1, ptr %i.al, align 1, !dbg !21304, !noalias !21288
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !21301
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 2, !dbg !21301
  %.val16.i.2 = load i8, ptr %i.an, align 1, !dbg !21302, !noalias !21287, !noundef !598
  %i.ao = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.af, !dbg !21303
  %i.ap = getelementptr i8, ptr %i.ao, i64 2, !dbg !21303
  store i8 %.val16.i.2, ptr %i.ap, align 1, !dbg !21304, !noalias !21288
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !21301
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 3, !dbg !21301
  %.val16.i.3 = load i8, ptr %i.ar, align 1, !dbg !21302, !noalias !21287, !noundef !598
  %i.as = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.af, !dbg !21303
  %i.at = getelementptr i8, ptr %i.as, i64 3, !dbg !21303
  store i8 %.val16.i.3, ptr %i.at, align 1, !dbg !21304, !noalias !21288
  %i.au = add i64 %i.af, 4, !dbg !21306           ; 2 uses
  %i.av = add nuw i64 %.sroa.01.0.i, 4, !dbg !21307 ; 2 uses
  %i.aw = icmp eq i64 %i.av, %i.g, !dbg !21305
  br i1 %i.aw, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhauNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveaE3as_aE0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecaE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph, !dbg !21305, !llvm.loop !21282

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhauNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveaE3as_aE0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecaE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.r, %vec.epilog.middle.block ], [ %i.k, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.au, %vec.epilog.scalar.ph ], !dbg !21308
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !21308, !noalias !21287
  ret void, !dbg !21309
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_dE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecdE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !21310 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !21381, !nonnull !598, !noundef !598 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !21381
  %i.c = load ptr, ptr %i.b, align 8, !dbg !21381, !nonnull !598, !noundef !598 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !21382 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !21382
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !21382 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !21382
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !21382 ; 8 uses
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !21383
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhduNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_dE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.b, !dbg !21384

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !21385    ; 4 uses
  %i.f = ptrtoint ptr %i.a to i64, !dbg !21385    ; 4 uses
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !21385      ; 4 uses
  %min.iters.check = icmp ult i64 %i.g, 10, !dbg !21386
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !21386

vector.memcheck:                                  ; preds = %bb.b
  %i.h = shl i64 %.sroa.5.0.copyload, 3, !dbg !21386
  %scevgep = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.h, !dbg !21386
  %i.i = add i64 %.sroa.5.0.copyload, %i.e, !dbg !21386
  %i.j = sub i64 %i.i, %i.f, !dbg !21386
  %i.k = shl i64 %i.j, 3, !dbg !21386
  %scevgep2 = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.k, !dbg !21386
  %bound0 = icmp ult ptr %scevgep, %i.c, !dbg !21386
  %bound1 = icmp ult ptr %i.a, %scevgep2, !dbg !21386
  %found.conflict = and i1 %bound0, %bound1, !dbg !21386
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph, !dbg !21387

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.g, -4                       ; 4 uses
  %i.l = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.m = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !21387

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !21387 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %index, !dbg !21388 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 2, !dbg !21389
  %wide.load = load <2 x i8>, ptr %i.n, align 1, !dbg !21389, !alias.scope !21370, !noalias !21371
  %wide.load4 = load <2 x i8>, ptr %i.o, align 1, !dbg !21389, !alias.scope !21370, !noalias !21371
  %i.p = uitofp <2 x i8> %wide.load to <2 x double>, !dbg !21390
  %i.q = uitofp <2 x i8> %wide.load4 to <2 x double>, !dbg !21390
  %i.r = getelementptr [8 x i8], ptr %i.m, i64 %index, !dbg !21391 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16, !dbg !21392
  store <2 x double> %i.p, ptr %i.r, align 8, !dbg !21392, !alias.scope !21373, !noalias !21374
  store <2 x double> %i.q, ptr %i.s, align 8, !dbg !21392, !alias.scope !21373, !noalias !21374
  %index.next = add nuw i64 %index, 4, !dbg !21387 ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec, !dbg !21393
  br i1 %i.t, label %middle.block, label %vector.body, !dbg !21393, !llvm.loop !21359

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec, !dbg !21393
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhduNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_dE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph.preheader, !dbg !21393

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.l, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %i.u = sub i64 %i.e, %i.f, !dbg !21393
  %xtraiter = and i64 %i.u, 3, !dbg !21393        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !21393
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !21393

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.v = phi i64 [ %i.z, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ], !dbg !21388 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.aa, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], !dbg !21387 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.prol, !dbg !21388
  %.val16.i.prol = load i8, ptr %i.w, align 1, !dbg !21389, !noalias !21371, !noundef !598
  %i.x = uitofp i8 %.val16.i.prol to double, !dbg !21390
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.v, !dbg !21391
  store double %i.x, ptr %i.y, align 8, !dbg !21392, !noalias !21375
  %i.z = add i64 %i.v, 1, !dbg !21394             ; 3 uses
  %i.aa = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !21395 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !21393 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !21393
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !21393, !llvm.loop !21364

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.z, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.z, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.aa, %scalar.ph.prol ]
  %i.ab = sub i64 %.sroa.01.0.i.ph, %i.e, !dbg !21393
  %i.ac = add i64 %i.ab, %i.f, !dbg !21393
  %i.ad = icmp ugt i64 %i.ac, -4, !dbg !21393
  br i1 %i.ad, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhduNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_dE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph, !dbg !21393

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ae = phi i64 [ %i.ax, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !21388 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.ay, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !21387 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !21388
  %.val16.i = load i8, ptr %i.af, align 1, !dbg !21389, !noalias !21371, !noundef !598
  %i.ag = uitofp i8 %.val16.i to double, !dbg !21390
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !21391
  store double %i.ag, ptr %i.ah, align 8, !dbg !21392, !noalias !21375
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !21388
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1, !dbg !21388
  %.val16.i.1 = load i8, ptr %i.aj, align 1, !dbg !21389, !noalias !21371, !noundef !598
  %i.ak = uitofp i8 %.val16.i.1 to double, !dbg !21390
  %i.al = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !21391
  %i.am = getelementptr i8, ptr %i.al, i64 8, !dbg !21391
  store double %i.ak, ptr %i.am, align 8, !dbg !21392, !noalias !21375
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !21388
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 2, !dbg !21388
  %.val16.i.2 = load i8, ptr %i.ao, align 1, !dbg !21389, !noalias !21371, !noundef !598
  %i.ap = uitofp i8 %.val16.i.2 to double, !dbg !21390
  %i.aq = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !21391
  %i.ar = getelementptr i8, ptr %i.aq, i64 16, !dbg !21391
  store double %i.ap, ptr %i.ar, align 8, !dbg !21392, !noalias !21375
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !21388
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 3, !dbg !21388
  %.val16.i.3 = load i8, ptr %i.at, align 1, !dbg !21389, !noalias !21371, !noundef !598
  %i.au = uitofp i8 %.val16.i.3 to double, !dbg !21390
  %i.av = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !21391
  %i.aw = getelementptr i8, ptr %i.av, i64 24, !dbg !21391
  store double %i.au, ptr %i.aw, align 8, !dbg !21392, !noalias !21375
  %i.ax = add i64 %i.ae, 4, !dbg !21394           ; 2 uses
  %i.ay = add nuw i64 %.sroa.01.0.i, 4, !dbg !21395 ; 2 uses
  %i.az = icmp eq i64 %i.ay, %i.g, !dbg !21393
  br i1 %i.az, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhduNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_dE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph, !dbg !21393, !llvm.loop !21365

end_hunk_2
begin_hunk_3_@_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4ItersENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecoE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute:bb.a
  %i.s = add i64 %i.j, 2, !dbg !28069             ; 3 uses
  %i.t = add nuw i64 %.sroa.01.0.i, 2, !dbg !28070 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !28071  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !28071
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRsouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, label %bb.c, !dbg !28071

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRsouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %i.u = and i64 %i.g, 2, !dbg !28071
  %lcmp.mod.not = icmp eq i64 %i.u, 0, !dbg !28071
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRsouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %.epil.preheader, !dbg !28071

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRsouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.s, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRsouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.t, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRsouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.h to i1, !dbg !28071
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !28071
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i.epil.init, !dbg !28063
  %.val16.i.epil = load i16, ptr %i.v, align 2, !dbg !28065, !noalias !28049, !noundef !598
  %i.w = sext i16 %.val16.i.epil to i128, !dbg !28066
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init, !dbg !28067
  store i128 %i.w, ptr %i.x, align 16, !dbg !28068, !noalias !28051
  %i.y = add i64 %.epil.init, 1, !dbg !28069
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRsouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRsouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRsouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.s, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRsouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ], [ %i.y, %.epil.preheader ], !dbg !28072
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !28072, !noalias !28049
  ret void, !dbg !28073
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4ItersENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivetE3as_tE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VectE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !28074 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !28133, !nonnull !598, !noundef !598 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !28133
  %i.c = load ptr, ptr %i.b, align 8, !dbg !28133, !nonnull !598, !noundef !598 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !28134 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !28134
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !28134 ; 8 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !28134
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !28134 ; 8 uses
  %.sroa.7.0.copyload2 = ptrtoaddr ptr %.sroa.7.0.copyload to i64, !dbg !28135
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !28135
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRstuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivetE3as_tE0NCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VectE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %iter.check, !dbg !28136

iter.check:                                       ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !28137
  %i.f = ptrtoint ptr %i.a to i64, !dbg !28137    ; 2 uses
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !28137      ; 4 uses
  %i.h = lshr i64 %i.g, 1, !dbg !28137            ; 7 uses
  %min.iters.check = icmp ult i64 %i.g, 8, !dbg !28138
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck, !dbg !28138

vector.memcheck:                                  ; preds = %iter.check
  %i.i = shl i64 %.sroa.5.0.copyload, 1, !dbg !28138
  %i.j = add i64 %i.i, %.sroa.7.0.copyload2, !dbg !28138
  %i.k = sub i64 %i.f, %i.j, !dbg !28138
  %diff.check = icmp ugt i64 %i.k, -32, !dbg !28138
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !28139

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check3 = icmp ult i64 %i.g, 32, !dbg !28138
  br i1 %min.iters.check3, label %vec.epilog.ph, label %vector.ph, !dbg !28138

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.h, 9223372036854775792      ; 5 uses
  %i.l = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.m = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !28138

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !28139 ; 3 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index, !dbg !28140 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !28141
  %wide.load = load <8 x i16>, ptr %i.n, align 2, !dbg !28141, !noalias !28126
  %wide.load4 = load <8 x i16>, ptr %i.o, align 2, !dbg !28141, !noalias !28126
  %i.p = getelementptr [2 x i8], ptr %i.m, i64 %index, !dbg !28142 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16, !dbg !28143
  store <8 x i16> %wide.load, ptr %i.p, align 2, !dbg !28143, !noalias !28127
  store <8 x i16> %wide.load4, ptr %i.q, align 2, !dbg !28143, !noalias !28127
  %index.next = add nuw i64 %index, 16, !dbg !28139 ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec, !dbg !28144
  br i1 %i.r, label %middle.block, label %vector.body, !dbg !28144, !llvm.loop !28114

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec, !dbg !28144
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRstuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivetE3as_tE0NCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VectE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.iter.check, !dbg !28144

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.s = and i64 %i.g, 24
  %min.epilog.iters.check = icmp eq i64 %i.s, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !987

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !28139
  %n.vec5 = and i64 %i.h, 9223372036854775804     ; 4 uses
  %i.t = add i64 %.sroa.5.0.copyload, %n.vec5     ; 2 uses
  %i.u = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index6 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next8, %vec.epilog.vector.body ], !dbg !28139 ; 3 uses
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index6, !dbg !28140
  %wide.load7 = load <4 x i16>, ptr %i.v, align 2, !dbg !28141, !noalias !28126
  %i.w = getelementptr [2 x i8], ptr %i.u, i64 %index6, !dbg !28142
  store <4 x i16> %wide.load7, ptr %i.w, align 2, !dbg !28143, !noalias !28127
  %index.next8 = add nuw i64 %index6, 4, !dbg !28139 ; 2 uses
  %i.x = icmp eq i64 %index.next8, %n.vec5, !dbg !28144
  br i1 %i.x, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !28144, !llvm.loop !28115

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n9 = icmp eq i64 %i.h, %n.vec5, !dbg !28144
  br i1 %cmp.n9, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRstuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivetE3as_tE0NCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VectE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph.preheader, !dbg !28144

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %iter.check ], [ %.sroa.5.0.copyload, %vector.memcheck ], [ %i.l, %vec.epilog.iter.check ], [ %i.t, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec5, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.h, 3, !dbg !28144        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !28144
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !28144

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %i.y = phi i64 [ %i.ab, %vec.epilog.scalar.ph.prol ], [ %.ph, %vec.epilog.scalar.ph.preheader ], !dbg !28140 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.ac, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !28139 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i.prol, !dbg !28140
  %.val16.i.prol = load i16, ptr %i.z, align 2, !dbg !28141, !noalias !28126, !noundef !598
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.y, !dbg !28142
  store i16 %.val16.i.prol, ptr %i.aa, align 2, !dbg !28143, !noalias !28127
  %i.ab = add i64 %i.y, 1, !dbg !28145            ; 3 uses
  %i.ac = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !28146 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !28144 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !28144
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !28144, !llvm.loop !28120

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.ab, %vec.epilog.scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ab, %vec.epilog.scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ac, %vec.epilog.scalar.ph.prol ]
  %i.ad = sub nsw i64 %.sroa.01.0.i.ph, %i.h, !dbg !28144
  %i.ae = icmp ugt i64 %i.ad, -4, !dbg !28144
  br i1 %i.ae, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRstuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivetE3as_tE0NCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VectE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph, !dbg !28144

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.af = phi i64 [ %i.au, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !28140 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.av, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !28139 ; 5 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !28140
  %.val16.i = load i16, ptr %i.ag, align 2, !dbg !28141, !noalias !28126, !noundef !598
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.af, !dbg !28142
  store i16 %.val16.i, ptr %i.ah, align 2, !dbg !28143, !noalias !28127
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !28140
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2, !dbg !28140
  %.val16.i.1 = load i16, ptr %i.aj, align 2, !dbg !28141, !noalias !28126, !noundef !598
  %i.ak = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.af, !dbg !28142
  %i.al = getelementptr i8, ptr %i.ak, i64 2, !dbg !28142
  store i16 %.val16.i.1, ptr %i.al, align 2, !dbg !28143, !noalias !28127
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !28140
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4, !dbg !28140
  %.val16.i.2 = load i16, ptr %i.an, align 2, !dbg !28141, !noalias !28126, !noundef !598
  %i.ao = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.af, !dbg !28142
  %i.ap = getelementptr i8, ptr %i.ao, i64 4, !dbg !28142
  store i16 %.val16.i.2, ptr %i.ap, align 2, !dbg !28143, !noalias !28127
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !28140
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 6, !dbg !28140
  %.val16.i.3 = load i16, ptr %i.ar, align 2, !dbg !28141, !noalias !28126, !noundef !598
  %i.as = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.af, !dbg !28142
  %i.at = getelementptr i8, ptr %i.as, i64 6, !dbg !28142
  store i16 %.val16.i.3, ptr %i.at, align 2, !dbg !28143, !noalias !28127
  %i.au = add i64 %i.af, 4, !dbg !28145           ; 2 uses
  %i.av = add nuw i64 %.sroa.01.0.i, 4, !dbg !28146 ; 2 uses
  %i.aw = icmp eq i64 %i.av, %i.h, !dbg !28144
  br i1 %i.aw, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRstuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivetE3as_tE0NCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VectE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph, !dbg !28144, !llvm.loop !28121

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRstuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivetE3as_tE0NCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VectE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.t, %vec.epilog.middle.block ], [ %i.l, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.au, %vec.epilog.scalar.ph ], !dbg !28147
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !28147, !noalias !28126
  ret void, !dbg !28148
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4ItersENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivexE3as_xE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecxE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !28149 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !28220, !nonnull !598, !noundef !598 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !28220
  %i.c = load ptr, ptr %i.b, align 8, !dbg !28220, !nonnull !598, !noundef !598 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !28221 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !28221
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !28221 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !28221
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !28221 ; 8 uses
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !28222
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRsxuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivexE3as_xE0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.b, !dbg !28223

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !28224
  %i.f = ptrtoint ptr %i.a to i64, !dbg !28224
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !28224      ; 4 uses
  %i.h = lshr i64 %i.g, 1, !dbg !28224            ; 5 uses
  %min.iters.check = icmp ult i64 %i.g, 32, !dbg !28225
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !28225

vector.memcheck:                                  ; preds = %bb.b
  %i.i = shl i64 %.sroa.5.0.copyload, 3, !dbg !28225 ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.i, !dbg !28225
  %i.j = shl i64 %i.g, 2, !dbg !28225
  %i.k = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.i, !dbg !28225
  %scevgep2 = getelementptr i8, ptr %i.k, i64 %i.j, !dbg !28225
  %i.l = and i64 %i.g, -2, !dbg !28225
  %scevgep3 = getelementptr i8, ptr %i.a, i64 %i.l, !dbg !28225
  %bound0 = icmp ult ptr %scevgep, %scevgep3, !dbg !28225
  %bound1 = icmp ult ptr %i.a, %scevgep2, !dbg !28225
  %found.conflict = and i1 %bound0, %bound1, !dbg !28225
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph, !dbg !28226

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 9223372036854775804      ; 4 uses
  %i.m = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.n = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !28226

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !28226 ; 3 uses
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index, !dbg !28227 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4, !dbg !28228
  %wide.load = load <2 x i16>, ptr %i.o, align 2, !dbg !28228, !alias.scope !28209, !noalias !28210
  %wide.load4 = load <2 x i16>, ptr %i.p, align 2, !dbg !28228, !alias.scope !28209, !noalias !28210
  %i.q = sext <2 x i16> %wide.load to <2 x i64>, !dbg !28229
  %i.r = sext <2 x i16> %wide.load4 to <2 x i64>, !dbg !28229
  %i.s = getelementptr [8 x i8], ptr %i.n, i64 %index, !dbg !28230 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !28231
  store <2 x i64> %i.q, ptr %i.s, align 8, !dbg !28231, !alias.scope !28212, !noalias !28213
  store <2 x i64> %i.r, ptr %i.t, align 8, !dbg !28231, !alias.scope !28212, !noalias !28213
  %index.next = add nuw i64 %index, 4, !dbg !28226 ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec, !dbg !28232
  br i1 %i.u, label %middle.block, label %vector.body, !dbg !28232, !llvm.loop !28198

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec, !dbg !28232
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRsxuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivexE3as_xE0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph.preheader, !dbg !28232

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.m, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.h, 3, !dbg !28232        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !28232
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !28232

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.v = phi i64 [ %i.z, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ], !dbg !28227 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.aa, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], !dbg !28226 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i.prol, !dbg !28227
  %.val16.i.prol = load i16, ptr %i.w, align 2, !dbg !28228, !noalias !28210, !noundef !598
  %i.x = sext i16 %.val16.i.prol to i64, !dbg !28229
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.v, !dbg !28230
  store i64 %i.x, ptr %i.y, align 8, !dbg !28231, !noalias !28214
  %i.z = add i64 %i.v, 1, !dbg !28233             ; 3 uses
  %i.aa = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !28234 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !28232 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !28232
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !28232, !llvm.loop !28203

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.z, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.z, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.aa, %scalar.ph.prol ]
  %i.ab = sub nsw i64 %.sroa.01.0.i.ph, %i.h, !dbg !28232
  %i.ac = icmp ugt i64 %i.ab, -4, !dbg !28232
  br i1 %i.ac, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRsxuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivexE3as_xE0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph, !dbg !28232

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ad = phi i64 [ %i.aw, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !28227 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.ax, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !28226 ; 5 uses
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !28227
  %.val16.i = load i16, ptr %i.ae, align 2, !dbg !28228, !noalias !28210, !noundef !598
  %i.af = sext i16 %.val16.i to i64, !dbg !28229
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ad, !dbg !28230
  store i64 %i.af, ptr %i.ag, align 8, !dbg !28231, !noalias !28214
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !28227
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 2, !dbg !28227
  %.val16.i.1 = load i16, ptr %i.ai, align 2, !dbg !28228, !noalias !28210, !noundef !598
  %i.aj = sext i16 %.val16.i.1 to i64, !dbg !28229
  %i.ak = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ad, !dbg !28230
  %i.al = getelementptr i8, ptr %i.ak, i64 8, !dbg !28230
  store i64 %i.aj, ptr %i.al, align 8, !dbg !28231, !noalias !28214
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !28227
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4, !dbg !28227
  %.val16.i.2 = load i16, ptr %i.an, align 2, !dbg !28228, !noalias !28210, !noundef !598
  %i.ao = sext i16 %.val16.i.2 to i64, !dbg !28229
  %i.ap = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ad, !dbg !28230
  %i.aq = getelementptr i8, ptr %i.ap, i64 16, !dbg !28230
  store i64 %i.ao, ptr %i.aq, align 8, !dbg !28231, !noalias !28214
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !28227
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 6, !dbg !28227
  %.val16.i.3 = load i16, ptr %i.as, align 2, !dbg !28228, !noalias !28210, !noundef !598
  %i.at = sext i16 %.val16.i.3 to i64, !dbg !28229
  %i.au = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ad, !dbg !28230
  %i.av = getelementptr i8, ptr %i.au, i64 24, !dbg !28230
  store i64 %i.at, ptr %i.av, align 8, !dbg !28231, !noalias !28214
  %i.aw = add i64 %i.ad, 4, !dbg !28233           ; 2 uses
  %i.ax = add nuw i64 %.sroa.01.0.i, 4, !dbg !28234 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, %i.h, !dbg !28232
  br i1 %i.ay, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRsxuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivexE3as_xE0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph, !dbg !28232, !llvm.loop !28204

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRsxuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivexE3as_xE0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.m, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.aw, %scalar.ph ], !dbg !28235
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !28235, !noalias !28210
  ret void, !dbg !28236
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4ItersENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveyE3as_yE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecyE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !28237 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !28308, !nonnull !598, !noundef !598 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !28308
  %i.c = load ptr, ptr %i.b, align 8, !dbg !28308, !nonnull !598, !noundef !598 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !28309 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !28309
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !28309 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !28309
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !28309 ; 8 uses
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !28310
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRsyuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveyE3as_yE0NCINvNvBS_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecyE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.b, !dbg !28311

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !28312
  %i.f = ptrtoint ptr %i.a to i64, !dbg !28312
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !28312      ; 4 uses
  %i.h = lshr i64 %i.g, 1, !dbg !28312            ; 5 uses
  %min.iters.check = icmp ult i64 %i.g, 32, !dbg !28313
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !28313

vector.memcheck:                                  ; preds = %bb.b
  %i.i = shl i64 %.sroa.5.0.copyload, 3, !dbg !28313 ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.i, !dbg !28313
  %i.j = shl i64 %i.g, 2, !dbg !28313
  %i.k = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.i, !dbg !28313
  %scevgep2 = getelementptr i8, ptr %i.k, i64 %i.j, !dbg !28313
  %i.l = and i64 %i.g, -2, !dbg !28313
  %scevgep3 = getelementptr i8, ptr %i.a, i64 %i.l, !dbg !28313
  %bound0 = icmp ult ptr %scevgep, %scevgep3, !dbg !28313
  %bound1 = icmp ult ptr %i.a, %scevgep2, !dbg !28313
  %found.conflict = and i1 %bound0, %bound1, !dbg !28313
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph, !dbg !28314

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 9223372036854775804      ; 4 uses
  %i.m = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.n = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !28314

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !28314 ; 3 uses
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index, !dbg !28315 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4, !dbg !28316
  %wide.load = load <2 x i16>, ptr %i.o, align 2, !dbg !28316, !alias.scope !28297, !noalias !28298
  %wide.load4 = load <2 x i16>, ptr %i.p, align 2, !dbg !28316, !alias.scope !28297, !noalias !28298
  %i.q = sext <2 x i16> %wide.load to <2 x i64>, !dbg !28317
  %i.r = sext <2 x i16> %wide.load4 to <2 x i64>, !dbg !28317
  %i.s = getelementptr [8 x i8], ptr %i.n, i64 %index, !dbg !28318 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !28319
  store <2 x i64> %i.q, ptr %i.s, align 8, !dbg !28319, !alias.scope !28300, !noalias !28301
  store <2 x i64> %i.r, ptr %i.t, align 8, !dbg !28319, !alias.scope !28300, !noalias !28301
  %index.next = add nuw i64 %index, 4, !dbg !28314 ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec, !dbg !28320
  br i1 %i.u, label %middle.block, label %vector.body, !dbg !28320, !llvm.loop !28286

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec, !dbg !28320
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRsyuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveyE3as_yE0NCINvNvBS_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecyE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph.preheader, !dbg !28320

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.m, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.h, 3, !dbg !28320        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !28320
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !28320

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.v = phi i64 [ %i.z, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ], !dbg !28315 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.aa, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], !dbg !28314 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i.prol, !dbg !28315
  %.val16.i.prol = load i16, ptr %i.w, align 2, !dbg !28316, !noalias !28298, !noundef !598
  %i.x = sext i16 %.val16.i.prol to i64, !dbg !28317
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.v, !dbg !28318
  store i64 %i.x, ptr %i.y, align 8, !dbg !28319, !noalias !28302
  %i.z = add i64 %i.v, 1, !dbg !28321             ; 3 uses
  %i.aa = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !28322 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !28320 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !28320
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !28320, !llvm.loop !28291

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.z, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.z, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.aa, %scalar.ph.prol ]
  %i.ab = sub nsw i64 %.sroa.01.0.i.ph, %i.h, !dbg !28320
  %i.ac = icmp ugt i64 %i.ab, -4, !dbg !28320
  br i1 %i.ac, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRsyuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveyE3as_yE0NCINvNvBS_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecyE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph, !dbg !28320

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ad = phi i64 [ %i.aw, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !28315 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.ax, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !28314 ; 5 uses
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !28315
  %.val16.i = load i16, ptr %i.ae, align 2, !dbg !28316, !noalias !28298, !noundef !598
  %i.af = sext i16 %.val16.i to i64, !dbg !28317
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ad, !dbg !28318
  store i64 %i.af, ptr %i.ag, align 8, !dbg !28319, !noalias !28302
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !28315
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 2, !dbg !28315
  %.val16.i.1 = load i16, ptr %i.ai, align 2, !dbg !28316, !noalias !28298, !noundef !598
  %i.aj = sext i16 %.val16.i.1 to i64, !dbg !28317
  %i.ak = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ad, !dbg !28318
  %i.al = getelementptr i8, ptr %i.ak, i64 8, !dbg !28318
  store i64 %i.aj, ptr %i.al, align 8, !dbg !28319, !noalias !28302
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !28315
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4, !dbg !28315
  %.val16.i.2 = load i16, ptr %i.an, align 2, !dbg !28316, !noalias !28298, !noundef !598
  %i.ao = sext i16 %.val16.i.2 to i64, !dbg !28317
  %i.ap = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ad, !dbg !28318
  %i.aq = getelementptr i8, ptr %i.ap, i64 16, !dbg !28318
  store i64 %i.ao, ptr %i.aq, align 8, !dbg !28319, !noalias !28302
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !28315
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 6, !dbg !28315
  %.val16.i.3 = load i16, ptr %i.as, align 2, !dbg !28316, !noalias !28298, !noundef !598
  %i.at = sext i16 %.val16.i.3 to i64, !dbg !28317
  %i.au = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ad, !dbg !28318
  %i.av = getelementptr i8, ptr %i.au, i64 24, !dbg !28318
  store i64 %i.at, ptr %i.av, align 8, !dbg !28319, !noalias !28302
  %i.aw = add i64 %i.ad, 4, !dbg !28321           ; 2 uses
  %i.ax = add nuw i64 %.sroa.01.0.i, 4, !dbg !28322 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, %i.h, !dbg !28320
  br i1 %i.ay, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRsyuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveyE3as_yE0NCINvNvBS_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecyE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph, !dbg !28320, !llvm.loop !28292

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRsyuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveyE3as_yE0NCINvNvBS_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecyE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.m, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.aw, %scalar.ph ], !dbg !28323
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !28323, !noalias !28298
  ret void, !dbg !28324
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4ItertENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveNtNtCs2mZqlW55729_12polars_utils7float164pf16E3as_B3c_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB47_8for_each4callB3c_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5n_3VecB3c_E14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !28325 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !28422, !nonnull !598, !noundef !598 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !28422
  %i.c = load ptr, ptr %i.b, align 8, !dbg !28422, !nonnull !598, !noundef !598 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !28423 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !28423
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !28423 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !28423
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !28423
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !28424
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRtNtNtCs2mZqlW55729_12polars_utils7float164pf16uNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveB2d_E3as_B2d_E0NCINvNvBS_8for_each4callB2d_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5A_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2X_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.b, !dbg !28425

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !28426
  %i.f = ptrtoint ptr %i.a to i64, !dbg !28426
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !28426
  %i.h = lshr exact i64 %i.g, 1, !dbg !28426
  br label %bb.c, !dbg !28427

bb.c:                                             ; preds = %bb.n, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.bd, %bb.n ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.be, %bb.n ], !dbg !28428 ; 2 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !28429
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28408), !dbg !28430
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28409), !dbg !28431
  %i.j = load i16, ptr %i.i, align 2, !dbg !28432, !alias.scope !28410, !noalias !28411, !noundef !598
  %i.k = uitofp i16 %i.j to float, !dbg !28433    ; 2 uses
  %i.l = load atomic i64, ptr @_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache5CACHE monotonic, align 8, !dbg !28434, !noalias !28414 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0, !dbg !28435
  br i1 %i.m, label %.split.i.i.i.i.i.i, label %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i.i.i.i.i, !dbg !28435, !prof !670

.split.i.i.i.i.i.i:                               ; preds = %bb.c
  %i.n = invoke noundef i128 @_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache21detect_and_initialize()
          to label %.noexc.i unwind label %bb.o, !dbg !28436, !noalias !28415

.noexc.i:                                         ; preds = %.split.i.i.i.i.i.i
  %i.o = and i128 %i.n, 36028797018963968, !dbg !28437
  %.not1.i.i.i.i.i.i = icmp eq i128 %i.o, 0, !dbg !28437
  br i1 %.not1.i.i.i.i.i.i, label %bb.d, label %bb.m, !dbg !28438

_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.p = and i64 %i.l, 36028797018963968, !dbg !28439
  %.not.i.i.i.i.i.i = icmp eq i64 %i.p, 0, !dbg !28439
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.m, !dbg !28438

bb.d:                                             ; preds = %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i.i.i.i.i, %.noexc.i
  %i.q = bitcast float %i.k to i32, !dbg !28440   ; 7 uses
  %i.r = and i32 %i.q, 2139095040, !dbg !28441    ; 3 uses
  %i.s = and i32 %i.q, 8388607, !dbg !28442       ; 4 uses
  %i.t = icmp eq i32 %i.r, 2139095040, !dbg !28443
  br i1 %i.t, label %bb.e, label %bb.f, !dbg !28443

bb.e:                                             ; preds = %bb.d
  %i.u = icmp eq i32 %i.s, 0, !dbg !28444
  %..i.i.i.i.i.i.i = select i1 %i.u, i32 0, i32 512, !dbg !28445
  %i.v = lshr i32 %i.s, 13, !dbg !28446
  %i.w = or i32 %..i.i.i.i.i.i.i, %i.v, !dbg !28447
  %i.x = trunc nuw nsw i32 %i.w to i16, !dbg !28447
  %i.y = or disjoint i16 %i.x, 31744, !dbg !28447
  br label %bb.n, !dbg !28448

bb.f:                                             ; preds = %bb.d
  %i.z = lshr i32 %i.q, 23, !dbg !28449           ; 2 uses
  %i.aa = icmp samesign ugt i32 %i.r, 1191182336, !dbg !28450
  br i1 %i.aa, label %bb.n, label %bb.g, !dbg !28450

bb.g:                                             ; preds = %bb.f
  %i.ab = icmp samesign ult i32 %i.q, 947912704, !dbg !28451
  br i1 %i.ab, label %bb.i, label %bb.h, !dbg !28451

bb.h:                                             ; preds = %bb.g
  %i.ac = lshr exact i32 %i.r, 13, !dbg !28452
  %i.ad = add nuw nsw i32 %i.ac, 16384, !dbg !28452
  %i.ae = lshr i32 %i.s, 13, !dbg !28453
  %i.af = and i32 %i.q, 4096, !dbg !28454
  %i.ag = icmp ne i32 %i.af, 0, !dbg !28454
  %i.ah = and i32 %i.q, 12287
  %i.ai = icmp ne i32 %i.ah, 0
  %or.cond.not.i.i.i.i.i.i.i = and i1 %i.ag, %i.ai, !dbg !28455
  %i.aj = or disjoint i32 %i.ad, %i.ae, !dbg !28455
  %i.ak = trunc i32 %i.aj to i16, !dbg !28455
  %i.al = zext i1 %or.cond.not.i.i.i.i.i.i.i to i16, !dbg !28454
  %spec.select7.i.i.i.i.i.i.i = add i16 %i.ak, %i.al, !dbg !28454
  br label %bb.n, !dbg !28454

bb.i:                                             ; preds = %bb.g
end_hunk_3
begin_hunk_4_@_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IteryENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryyNvYyINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveaE3as_aE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecaE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute:bb.a
  %.val16.i.1 = load i64, ptr %i.o, align 8, !dbg !31314, !noalias !31298, !noundef !598
  %i.p = trunc i64 %.val16.i.1 to i8, !dbg !31315
  %i.q = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.j, !dbg !31316
  %i.r = getelementptr i8, ptr %i.q, i64 1, !dbg !31316
  store i8 %i.p, ptr %i.r, align 1, !dbg !31317, !noalias !31300
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !31312
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !31312
  %.val16.i.2 = load i64, ptr %i.t, align 8, !dbg !31314, !noalias !31298, !noundef !598
  %i.u = trunc i64 %.val16.i.2 to i8, !dbg !31315
  %i.v = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.j, !dbg !31316
  %i.w = getelementptr i8, ptr %i.v, i64 2, !dbg !31316
  store i8 %i.u, ptr %i.w, align 1, !dbg !31317, !noalias !31300
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !31312
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24, !dbg !31312
  %.val16.i.3 = load i64, ptr %i.y, align 8, !dbg !31314, !noalias !31298, !noundef !598
  %i.z = trunc i64 %.val16.i.3 to i8, !dbg !31315
  %i.aa = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.j, !dbg !31316
  %i.ab = getelementptr i8, ptr %i.aa, i64 3, !dbg !31316
  store i8 %i.z, ptr %i.ab, align 1, !dbg !31317, !noalias !31300
  %i.ac = add i64 %i.j, 4, !dbg !31318            ; 3 uses
  %i.ad = add nuw i64 %.sroa.01.0.i, 4, !dbg !31319 ; 2 uses
  %niter.next.3 = add i64 %niter, 4, !dbg !31320  ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !31320
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRyauNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryyNvYyINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveaE3as_aE0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecaE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, label %bb.c, !dbg !31320

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRyauNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryyNvYyINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveaE3as_aE0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecaE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !31320
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRyauNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryyNvYyINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveaE3as_aE0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecaE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %.epil.preheader, !dbg !31320

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRyauNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryyNvYyINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveaE3as_aE0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecaE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.ac, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRyauNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryyNvYyINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveaE3as_aE0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecaE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ]
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.ad, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRyauNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryyNvYyINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveaE3as_aE0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecaE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0, !dbg !31320
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !31320
  br label %bb.d, !dbg !31320

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %i.ae = phi i64 [ %.epil.init, %.epil.preheader ], [ %i.ai, %bb.d ], !dbg !31312 ; 2 uses
  %.sroa.01.0.i.epil = phi i64 [ %.sroa.01.0.i.epil.init, %.epil.preheader ], [ %i.aj, %bb.d ], !dbg !31313 ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i.epil, !dbg !31312
  %.val16.i.epil = load i64, ptr %i.af, align 8, !dbg !31314, !noalias !31298, !noundef !598
  %i.ag = trunc i64 %.val16.i.epil to i8, !dbg !31315
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !31316
  store i8 %i.ag, ptr %i.ah, align 1, !dbg !31317, !noalias !31300
  %i.ai = add i64 %i.ae, 1, !dbg !31318           ; 2 uses
  %i.aj = add nuw i64 %.sroa.01.0.i.epil, 1, !dbg !31319
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !31320 ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !31320
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRyauNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryyNvYyINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveaE3as_aE0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecaE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.d, !dbg !31320, !llvm.loop !31293

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRyauNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryyNvYyINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveaE3as_aE0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecaE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRyauNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryyNvYyINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveaE3as_aE0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecaE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.ac, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRyauNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryyNvYyINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveaE3as_aE0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecaE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ], [ %i.ai, %bb.d ], !dbg !31321
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !31321, !noalias !31298
  ret void, !dbg !31322
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IteryENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryyNvYyINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_dE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecdE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !31323 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !31388, !nonnull !598, !noundef !598 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !31388
  %i.c = load ptr, ptr %i.b, align 8, !dbg !31388, !nonnull !598, !noundef !598 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !31389 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !31389
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !31389 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !31389
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !31389 ; 7 uses
  %.sroa.7.0.copyload2 = ptrtoaddr ptr %.sroa.7.0.copyload to i64, !dbg !31390
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !31390
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRyduNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryyNvYyINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_dE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.b, !dbg !31391

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !31392
  %i.f = ptrtoint ptr %i.a to i64, !dbg !31392    ; 2 uses
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !31392      ; 2 uses
  %i.h = lshr i64 %i.g, 3, !dbg !31392            ; 5 uses
  %min.iters.check = icmp ult i64 %i.g, 32, !dbg !31393
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !31393

vector.memcheck:                                  ; preds = %bb.b
  %i.i = shl i64 %.sroa.5.0.copyload, 3, !dbg !31393
  %i.j = add i64 %i.i, %.sroa.7.0.copyload2, !dbg !31393
  %i.k = sub i64 %i.f, %i.j, !dbg !31393
  %diff.check = icmp ugt i64 %i.k, -16, !dbg !31393
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph, !dbg !31394

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 2305843009213693950      ; 4 uses
  %i.l = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.m = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !31394

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !31394 ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index, !dbg !31395
  %wide.load = load <2 x i64>, ptr %i.n, align 8, !dbg !31396, !noalias !31380
  %i.o = uitofp <2 x i64> %wide.load to <2 x double>, !dbg !31397
  %i.p = getelementptr [8 x i8], ptr %i.m, i64 %index, !dbg !31398
  store <2 x double> %i.o, ptr %i.p, align 8, !dbg !31399, !noalias !31382
  %index.next = add nuw i64 %index, 2, !dbg !31394 ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec, !dbg !31400
  br i1 %i.q, label %middle.block, label %vector.body, !dbg !31400, !llvm.loop !31369

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec, !dbg !31400
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRyduNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryyNvYyINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_dE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph.preheader, !dbg !31400

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.l, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 4 uses
  %i.r = sub nsw i64 %i.h, %.sroa.01.0.i.ph, !dbg !31400
  %xtraiter = and i64 %i.r, 3, !dbg !31400        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !31400
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !31400

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.s = phi i64 [ %i.w, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ], !dbg !31395 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.x, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], !dbg !31394 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i.prol, !dbg !31395
  %.val16.i.prol = load i64, ptr %i.t, align 8, !dbg !31396, !noalias !31380, !noundef !598
  %i.u = uitofp i64 %.val16.i.prol to double, !dbg !31397
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.s, !dbg !31398
  store double %i.u, ptr %i.v, align 8, !dbg !31399, !noalias !31382
  %i.w = add i64 %i.s, 1, !dbg !31401             ; 3 uses
  %i.x = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !31402 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !31400 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !31400
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !31400, !llvm.loop !31374

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.w, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.w, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.x, %scalar.ph.prol ]
  %i.y = sub nsw i64 %.sroa.01.0.i.ph, %i.h, !dbg !31400
  %i.z = icmp ugt i64 %i.y, -4, !dbg !31400
  br i1 %i.z, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRyduNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryyNvYyINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_dE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph, !dbg !31400

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.aa = phi i64 [ %i.at, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !31395 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.au, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !31394 ; 5 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !31395
  %.val16.i = load i64, ptr %i.ab, align 8, !dbg !31396, !noalias !31380, !noundef !598
  %i.ac = uitofp i64 %.val16.i to double, !dbg !31397
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.aa, !dbg !31398
  store double %i.ac, ptr %i.ad, align 8, !dbg !31399, !noalias !31382
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !31395
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8, !dbg !31395
  %.val16.i.1 = load i64, ptr %i.af, align 8, !dbg !31396, !noalias !31380, !noundef !598
  %i.ag = uitofp i64 %.val16.i.1 to double, !dbg !31397
  %i.ah = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.aa, !dbg !31398
  %i.ai = getelementptr i8, ptr %i.ah, i64 8, !dbg !31398
  store double %i.ag, ptr %i.ai, align 8, !dbg !31399, !noalias !31382
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !31395
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !31395
  %.val16.i.2 = load i64, ptr %i.ak, align 8, !dbg !31396, !noalias !31380, !noundef !598
  %i.al = uitofp i64 %.val16.i.2 to double, !dbg !31397
  %i.am = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.aa, !dbg !31398
  %i.an = getelementptr i8, ptr %i.am, i64 16, !dbg !31398
  store double %i.al, ptr %i.an, align 8, !dbg !31399, !noalias !31382
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !31395
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24, !dbg !31395
  %.val16.i.3 = load i64, ptr %i.ap, align 8, !dbg !31396, !noalias !31380, !noundef !598
  %i.aq = uitofp i64 %.val16.i.3 to double, !dbg !31397
  %i.ar = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.aa, !dbg !31398
  %i.as = getelementptr i8, ptr %i.ar, i64 24, !dbg !31398
  store double %i.aq, ptr %i.as, align 8, !dbg !31399, !noalias !31382
  %i.at = add i64 %i.aa, 4, !dbg !31401           ; 2 uses
  %i.au = add nuw i64 %.sroa.01.0.i, 4, !dbg !31402 ; 2 uses
  %i.av = icmp eq i64 %i.au, %i.h, !dbg !31400
  br i1 %i.av, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRyduNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryyNvYyINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_dE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph, !dbg !31400, !llvm.loop !31375

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRyduNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryyNvYyINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_dE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.l, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.at, %scalar.ph ], !dbg !31403
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !31403, !noalias !31380
  ret void, !dbg !31404
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IteryENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryyNvYyINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivefE3as_fE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecfE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !31405 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !31475, !nonnull !598, !noundef !598 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !31475
  %i.c = load ptr, ptr %i.b, align 8, !dbg !31475, !nonnull !598, !noundef !598 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !31476 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !31476
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !31476 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !31476
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !31476 ; 8 uses
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !31477
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRyfuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryyNvYyINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivefE3as_fE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.b, !dbg !31478

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !31479
  %i.f = ptrtoint ptr %i.a to i64, !dbg !31479
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !31479      ; 4 uses
  %i.h = lshr i64 %i.g, 3, !dbg !31479            ; 5 uses
  %min.iters.check = icmp ult i64 %i.g, 64, !dbg !31480
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !31480

vector.memcheck:                                  ; preds = %bb.b
  %i.i = shl i64 %.sroa.5.0.copyload, 2, !dbg !31480 ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.i, !dbg !31480
  %i.j = lshr exact i64 %i.g, 1, !dbg !31480
  %i.k = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.i, !dbg !31480
  %scevgep2 = getelementptr i8, ptr %i.k, i64 %i.j, !dbg !31480
  %i.l = and i64 %i.g, -8, !dbg !31480
  %scevgep3 = getelementptr i8, ptr %i.a, i64 %i.l, !dbg !31480
  %bound0 = icmp ult ptr %scevgep, %scevgep3, !dbg !31480
  %bound1 = icmp ult ptr %i.a, %scevgep2, !dbg !31480
  %found.conflict = and i1 %bound0, %bound1, !dbg !31480
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph, !dbg !31481

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 2305843009213693950      ; 4 uses
  %i.m = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.n = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !31481

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !31481 ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index, !dbg !31482
  %wide.load = load <2 x i64>, ptr %i.o, align 8, !dbg !31483, !alias.scope !31465, !noalias !31466
  %i.p = uitofp <2 x i64> %wide.load to <2 x float>, !dbg !31484
  %i.q = getelementptr [4 x i8], ptr %i.n, i64 %index, !dbg !31485
  store <2 x float> %i.p, ptr %i.q, align 4, !dbg !31486, !alias.scope !31467, !noalias !31468
  %index.next = add nuw i64 %index, 2, !dbg !31481 ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec, !dbg !31487
  br i1 %i.r, label %middle.block, label %vector.body, !dbg !31487, !llvm.loop !31454

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec, !dbg !31487
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRyfuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryyNvYyINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivefE3as_fE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph.preheader, !dbg !31487

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.m, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 4 uses
  %i.s = sub nsw i64 %i.h, %.sroa.01.0.i.ph, !dbg !31487
  %xtraiter = and i64 %i.s, 3, !dbg !31487        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !31487
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !31487

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.t = phi i64 [ %i.x, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ], !dbg !31482 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.y, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], !dbg !31481 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i.prol, !dbg !31482
  %.val16.i.prol = load i64, ptr %i.u, align 8, !dbg !31483, !noalias !31466, !noundef !598
  %i.v = uitofp i64 %.val16.i.prol to float, !dbg !31484
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.t, !dbg !31485
  store float %i.v, ptr %i.w, align 4, !dbg !31486, !noalias !31469
  %i.x = add i64 %i.t, 1, !dbg !31488             ; 3 uses
  %i.y = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !31489 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !31487 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !31487
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !31487, !llvm.loop !31459

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.x, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.x, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.y, %scalar.ph.prol ]
  %i.z = sub nsw i64 %.sroa.01.0.i.ph, %i.h, !dbg !31487
  %i.aa = icmp ugt i64 %i.z, -4, !dbg !31487
  br i1 %i.aa, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRyfuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryyNvYyINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivefE3as_fE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph, !dbg !31487

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ab = phi i64 [ %i.au, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !31482 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.av, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !31481 ; 5 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !31482
  %.val16.i = load i64, ptr %i.ac, align 8, !dbg !31483, !noalias !31466, !noundef !598
  %i.ad = uitofp i64 %.val16.i to float, !dbg !31484
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab, !dbg !31485
  store float %i.ad, ptr %i.ae, align 4, !dbg !31486, !noalias !31469
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !31482
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !31482
  %.val16.i.1 = load i64, ptr %i.ag, align 8, !dbg !31483, !noalias !31466, !noundef !598
  %i.ah = uitofp i64 %.val16.i.1 to float, !dbg !31484
  %i.ai = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab, !dbg !31485
  %i.aj = getelementptr i8, ptr %i.ai, i64 4, !dbg !31485
  store float %i.ah, ptr %i.aj, align 4, !dbg !31486, !noalias !31469
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !31482
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16, !dbg !31482
  %.val16.i.2 = load i64, ptr %i.al, align 8, !dbg !31483, !noalias !31466, !noundef !598
  %i.am = uitofp i64 %.val16.i.2 to float, !dbg !31484
  %i.an = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab, !dbg !31485
  %i.ao = getelementptr i8, ptr %i.an, i64 8, !dbg !31485
  store float %i.am, ptr %i.ao, align 4, !dbg !31486, !noalias !31469
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !31482
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24, !dbg !31482
  %.val16.i.3 = load i64, ptr %i.aq, align 8, !dbg !31483, !noalias !31466, !noundef !598
  %i.ar = uitofp i64 %.val16.i.3 to float, !dbg !31484
  %i.as = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab, !dbg !31485
  %i.at = getelementptr i8, ptr %i.as, i64 12, !dbg !31485
  store float %i.ar, ptr %i.at, align 4, !dbg !31486, !noalias !31469
  %i.au = add i64 %i.ab, 4, !dbg !31488           ; 2 uses
  %i.av = add nuw i64 %.sroa.01.0.i, 4, !dbg !31489 ; 2 uses
  %i.aw = icmp eq i64 %i.av, %i.h, !dbg !31487
  br i1 %i.aw, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRyfuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryyNvYyINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivefE3as_fE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph, !dbg !31487, !llvm.loop !31460

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRyfuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryyNvYyINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivefE3as_fE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.m, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.au, %scalar.ph ], !dbg !31490
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !31490, !noalias !31466
  ret void, !dbg !31491
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IteryENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryyNvYyINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VechE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !31492 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !31555, !nonnull !598, !noundef !598 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !31555
  %i.c = load ptr, ptr %i.b, align 8, !dbg !31555, !nonnull !598, !noundef !598 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !31556 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !31556
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !31556 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !31556
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !31556 ; 5 uses
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !31557
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRyhuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryyNvYyINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0NCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.b, !dbg !31558

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !31559
  %i.f = ptrtoint ptr %i.a to i64, !dbg !31559
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !31559      ; 2 uses
  %i.h = lshr exact i64 %i.g, 3, !dbg !31559      ; 2 uses
  %xtraiter = and i64 %i.h, 3, !dbg !31560        ; 3 uses
  %i.i = icmp ult i64 %i.g, 32, !dbg !31560
  br i1 %i.i, label %.epil.preheader, label %.new, !dbg !31560

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.h, 2305843009213693948, !dbg !31560
  br label %bb.c, !dbg !31560

bb.c:                                             ; preds = %bb.c, %.new
  %i.j = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.ac, %bb.c ], !dbg !31561 ; 5 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.ad, %bb.c ], !dbg !31562 ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.c ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !31561
  %.val16.i = load i64, ptr %i.k, align 8, !dbg !31563, !noalias !31547, !noundef !598
  %i.l = trunc i64 %.val16.i to i8, !dbg !31564
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.j, !dbg !31565
  store i8 %i.l, ptr %i.m, align 1, !dbg !31566, !noalias !31549
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !31561
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !31561
  %.val16.i.1 = load i64, ptr %i.o, align 8, !dbg !31563, !noalias !31547, !noundef !598
  %i.p = trunc i64 %.val16.i.1 to i8, !dbg !31564
  %i.q = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.j, !dbg !31565
  %i.r = getelementptr i8, ptr %i.q, i64 1, !dbg !31565
  store i8 %i.p, ptr %i.r, align 1, !dbg !31566, !noalias !31549
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !31561
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !31561
  %.val16.i.2 = load i64, ptr %i.t, align 8, !dbg !31563, !noalias !31547, !noundef !598
  %i.u = trunc i64 %.val16.i.2 to i8, !dbg !31564
  %i.v = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.j, !dbg !31565
  %i.w = getelementptr i8, ptr %i.v, i64 2, !dbg !31565
  store i8 %i.u, ptr %i.w, align 1, !dbg !31566, !noalias !31549
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !31561
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24, !dbg !31561
  %.val16.i.3 = load i64, ptr %i.y, align 8, !dbg !31563, !noalias !31547, !noundef !598
  %i.z = trunc i64 %.val16.i.3 to i8, !dbg !31564
  %i.aa = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.j, !dbg !31565
  %i.ab = getelementptr i8, ptr %i.aa, i64 3, !dbg !31565
  store i8 %i.z, ptr %i.ab, align 1, !dbg !31566, !noalias !31549
  %i.ac = add i64 %i.j, 4, !dbg !31567            ; 3 uses
  %i.ad = add nuw i64 %.sroa.01.0.i, 4, !dbg !31568 ; 2 uses
  %niter.next.3 = add i64 %niter, 4, !dbg !31569  ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !31569
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRyhuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryyNvYyINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0NCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, label %bb.c, !dbg !31569

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRyhuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryyNvYyINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0NCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !31569
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRyhuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryyNvYyINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0NCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %.epil.preheader, !dbg !31569

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRyhuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryyNvYyINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0NCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.ac, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRyhuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryyNvYyINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0NCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ]
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.ad, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRyhuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryyNvYyINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0NCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0, !dbg !31569
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !31569
  br label %bb.d, !dbg !31569

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %i.ae = phi i64 [ %.epil.init, %.epil.preheader ], [ %i.ai, %bb.d ], !dbg !31561 ; 2 uses
  %.sroa.01.0.i.epil = phi i64 [ %.sroa.01.0.i.epil.init, %.epil.preheader ], [ %i.aj, %bb.d ], !dbg !31562 ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i.epil, !dbg !31561
  %.val16.i.epil = load i64, ptr %i.af, align 8, !dbg !31563, !noalias !31547, !noundef !598
  %i.ag = trunc i64 %.val16.i.epil to i8, !dbg !31564
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !31565
  store i8 %i.ag, ptr %i.ah, align 1, !dbg !31566, !noalias !31549
  %i.ai = add i64 %i.ae, 1, !dbg !31567           ; 2 uses
  %i.aj = add nuw i64 %.sroa.01.0.i.epil, 1, !dbg !31568
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !31569 ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !31569
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRyhuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryyNvYyINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0NCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.d, !dbg !31569, !llvm.loop !31542

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRyhuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryyNvYyINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0NCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRyhuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryyNvYyINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0NCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.ac, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRyhuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryyNvYyINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0NCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ], [ %i.ai, %bb.d ], !dbg !31570
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
end_hunk_4
begin_hunk_5_@llvm.fptoui.sat.v4i16.v4f32
!786 = !DINamespace(name: "{impl#0}", scope: !785)
!787 = !DIFile(filename: "crates/polars-compute/src/gather/sublist/list.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "4a5eef2df9ec3d210f060376e2ece649")
!788 = !DINamespace(name: "gather", scope: !693)
!789 = !DINamespace(name: "sublist", scope: !788)
!790 = !DINamespace(name: "list", scope: !789)
!791 = !DINamespace(name: "sublist_get_indexes", scope: !790)
!792 = !DIFile(filename: "crates/polars-compute/src/lib.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "478675a73c08a880034e3baf916a76f3")
!793 = !DINamespace(name: "SharedStorage", scope: !730)
!794 = !DINamespace(name: "{impl#78}", scope: !678)
!795 = !DIFile(filename: "crates/polars-arrow/src/legacy/index.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "fb348b0c8bdb5de7105e5377e7abc063")
!796 = !DINamespace(name: "legacy", scope: !719)
!797 = !DINamespace(name: "index", scope: !796)
!798 = !DINamespace(name: "{impl#0}", scope: !797)
!799 = !DIFile(filename: "src/sign.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/num-traits-0.2.19", checksumkind: CSK_MD5, checksum: "7c7c72541a00f0dd98ff37cc9ff28de0")
!800 = !DINamespace(name: "num_traits", scope: null)
!801 = !DINamespace(name: "sign", scope: !800)
!802 = !DINamespace(name: "{impl#6}", scope: !801)
!803 = !DIFile(filename: "src/cast.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/num-traits-0.2.19", checksumkind: CSK_MD5, checksum: "f1413f80ce59fae1ad21a217017e52b2")
!804 = !DINamespace(name: "cast", scope: !800)
!805 = !DINamespace(name: "{impl#7}", scope: !804)
!806 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!807 = !DIFile(filename: "crates/polars-arrow/src/array/primitive/mutable.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "85778bf90dd7398b6e1f005fbe81f145")
!808 = !DINamespace(name: "primitive", scope: !720)
!809 = !DINamespace(name: "mutable", scope: !808)
!810 = !DINamespace(name: "extend_trusted_len_unzip", scope: !809)
!811 = !DINamespace(name: "{impl#64}", scope: !678)
!812 = !DINamespace(name: "{impl#8}", scope: !689)
!813 = !DINamespace(name: "{impl#39}", scope: !681)
!814 = !DIFile(filename: "crates/polars-arrow/src/array/primitive/mod.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "36f5cd76f39657bd168e4e3bfc9cdad9")
!815 = !DINamespace(name: "{impl#1}", scope: !808)
!816 = !DIFile(filename: "crates/polars-compute/src/unique/distinct.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "643c6e43674ad2ae738c2be7116ec155")
!817 = !DINamespace(name: "unique", scope: !693)
!818 = !DINamespace(name: "distinct", scope: !817)
!819 = !DINamespace(name: "{impl#2}", scope: !818)
!820 = !DINamespace(name: "n_unique_slice", scope: !819)
!821 = !DINamespace(name: "PrimitiveArray", scope: !808)
!822 = !DINamespace(name: "{impl#0}", scope: !726)
!823 = !DIFile(filename: "src/map.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/hashbrown-0.17.1", checksumkind: CSK_MD5, checksum: "5f064d32fe496a8ef319526599241068")
!824 = !DINamespace(name: "hashbrown", scope: null)
!825 = !DINamespace(name: "map", scope: !824)
!826 = !DINamespace(name: "{impl#85}", scope: !825)
!827 = !DINamespace(name: "extend", scope: !826)
!828 = !DIFile(filename: "crates/polars-arrow/src/array/binview/mod.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "d9f320e3bbe005c9a0c8b306ca5bfda9")
!829 = !DINamespace(name: "binview", scope: !720)
!830 = !DINamespace(name: "BinaryViewArrayGeneric", scope: !829)
!831 = !DINamespace(name: "{impl#3}", scope: !818)
!832 = !DINamespace(name: "n_unique_slice", scope: !831)
!833 = !DINamespace(name: "{impl#6}", scope: !829)
!834 = !DINamespace(name: "get_unchecked", scope: !833)
!835 = !DILexicalBlockFile(scope: !333, file: !701, discriminator: 2)
!836 = !DILexicalBlockFile(scope: !335, file: !739, discriminator: 2)
!837 = !DIFile(filename: "crates/polars-arrow/src/array/binview/view.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "7eba05bbfa5f39982609718ecb998696")
!838 = !DINamespace(name: "view", scope: !829)
!839 = !DINamespace(name: "View", scope: !838)
!840 = !DINamespace(name: "{impl#14}", scope: !740)
!841 = !DILexicalBlockFile(scope: !349, file: !701, discriminator: 2)
!842 = !DINamespace(name: "{impl#4}", scope: !818)
!843 = !DINamespace(name: "n_unique_slice", scope: !842)
!844 = !DIFile(filename: "crates/polars-arrow/src/array/struct_/mod.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "ac8dc24f03ef2f812988129bd7ec7f56")
!845 = !DINamespace(name: "struct_", scope: !720)
!846 = !DIFile(filename: "crates/polars-compute/src/horizontal_flatten/struct_.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "f3820e515643c2b6961f218228be5844")
!847 = !DINamespace(name: "struct_", scope: !694)
!848 = !DINamespace(name: "horizontal_flatten_unchecked", scope: !847)
!849 = !{i64 0, i64 4}
!850 = !DILexicalBlockFile(scope: !355, file: !728, discriminator: 0)
!851 = !DIFile(filename: "library/core/src/macros/mod.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "05d0820999e50315dc32c83aa7c28669")
!852 = !DINamespace(name: "{impl#15}", scope: !730)
!853 = !DINamespace(name: "{impl#10}", scope: !734)
!854 = !DIFile(filename: "library/core/src/cell.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "3b26dc07b7a3365bdb6c33c2b1762988")
!855 = !DINamespace(name: "cell", scope: !596)
!856 = !DINamespace(name: "UnsafeCell", scope: !855)
!857 = !DILexicalBlockFile(scope: !358, file: !658, discriminator: 2)
!858 = !DIFile(filename: "crates/polars-utils/src/relaxed_cell.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "afc89ba5581dcec04ada8ac579dc6dbd")
!859 = !DINamespace(name: "relaxed_cell", scope: !762)
!860 = !DINamespace(name: "{impl#12}", scope: !859)
!861 = !DINamespace(name: "RelaxedCell", scope: !859)
!862 = !DINamespace(name: "{impl#2}", scope: !859)
!863 = !DINamespace(name: "{impl#6}", scope: !716)
!864 = !DINamespace(name: "Ord", scope: !677)
!865 = !DINamespace(name: "n_unique_idx", scope: !819)
!866 = !DINamespace(name: "n_unique_idx", scope: !831)
!867 = !{i64 4}
!868 = !DINamespace(name: "n_unique_idx", scope: !842)
!869 = !DIFile(filename: "library/core/src/slice/iter.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "f33ab2e22fe09095bf73c41c52bd166c")
!870 = !DINamespace(name: "{impl#62}", scope: !782)
!871 = !DINamespace(name: "{impl#7}", scope: !699)
!872 = !DINamespace(name: "{impl#0}", scope: !699)
!873 = !DINamespace(name: "{impl#74}", scope: !767)
!874 = !DIFile(filename: "library/core/src/iter/adapters/zip.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "3b799775cfe5a249b4485e2512707a77")
!875 = !DINamespace(name: "zip", scope: !673)
!876 = !{i8 0, i8 2}
!877 = !DIFile(filename: "crates/polars-compute/src/cast/mod.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "abbbd873be98c15979780916e3db1a1c")
!878 = !DINamespace(name: "cast", scope: !693)
!879 = !DIFile(filename: "library/core/src/ops/control_flow.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "c18dd312dbf3030aa6bcafa45bc21974")
!880 = !DINamespace(name: "control_flow", scope: !629)
!881 = !DINamespace(name: "ControlFlow", scope: !880)
!882 = !DIFile(filename: "library/core/src/iter/adapters/step_by.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "39c98ea49234a887c2fcfc6cf80c4cda")
!883 = !DINamespace(name: "step_by", scope: !673)
!884 = !DINamespace(name: "StepBy", scope: !883)
!885 = !DINamespace(name: "{impl#20}", scope: !883)
!886 = !DINamespace(name: "{impl#1}", scope: !883)
!887 = !DIFile(filename: "library/core/src/num/nonzero.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "1b8c5dd2f9544b66a3e551fa25869496")
!888 = !DINamespace(name: "nonzero", scope: !689)
!889 = !DINamespace(name: "NonZero", scope: !888)
!890 = !DIFile(filename: "crates/polars-arrow/src/types/index.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "aaebbbb4c0795830a24647f3a00bf66b")
!891 = !DINamespace(name: "types", scope: !719)
!892 = !DINamespace(name: "index", scope: !891)
!893 = !DINamespace(name: "{impl#5}", scope: !892)
!894 = !{!"llvm.loop.isvectorized", i32 1}
!895 = !{!"llvm.loop.unroll.runtime.disable"}
!896 = !DIFile(filename: "library/core/src/ops/range.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "aa9e58e587ecf6fc84aabc8815f8ac79")
!897 = !DINamespace(name: "range", scope: !629)
!898 = !DINamespace(name: "RangeInclusive", scope: !897)
!899 = !DINamespace(name: "{impl#14}", scope: !681)
!900 = !DINamespace(name: "{impl#15}", scope: !681)
!901 = !DIFile(filename: "library/core/src/iter/mod.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "20d83cc3e02b8a8debc301b85898f940")
!902 = !DIFile(filename: "crates/polars-arrow/src/array/fixed_size_list/mod.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "f21b2f15004ff024337c79be44a95eea")
!903 = !DINamespace(name: "fixed_size_list", scope: !720)
!904 = !DINamespace(name: "FixedSizeListArray", scope: !903)
!905 = !DINamespace(name: "cast_fixed_size_list_to_list", scope: !878)
!906 = !DIFile(filename: "library/core/src/ops/try_trait.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "335edf7dc4f730de066f28da87d0a7cf")
!907 = !DINamespace(name: "try_trait", scope: !629)
!908 = !DINamespace(name: "{impl#2}", scope: !907)
!909 = !DINamespace(name: "wrap_mut_2", scope: !908)
!910 = !{!"llvm.loop.unroll.disable"}
!911 = !DIFile(filename: "crates/polars-arrow/src/array/list/mod.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "38988cecef4bddf7ec28de0dd102f092")
!912 = !DINamespace(name: "list", scope: !720)
!913 = !DINamespace(name: "{impl#4}", scope: !912)
!914 = !DINamespace(name: "ListArray", scope: !912)
!915 = !DINamespace(name: "{impl#12}", scope: !726)
!916 = !DILexicalBlockFile(scope: !374, file: !701, discriminator: 2)
!917 = !DINamespace(name: "{impl#13}", scope: !726)
!918 = !DIFile(filename: "crates/polars-compute/src/propagate_dictionary.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "0166e0c56de6c6fc467981396ada526a")
!919 = !DINamespace(name: "propagate_dictionary", scope: !693)
!920 = !DINamespace(name: "propagate_dictionary_value_nulls", scope: !919)
!921 = !DIFile(filename: "library/core/src/convert/num.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "30106f13a83326e9aeb1563ee1913ab6")
!922 = !DINamespace(name: "convert", scope: !596)
!923 = !DINamespace(name: "num", scope: !922)
!924 = !DINamespace(name: "{impl#57}", scope: !923)
!925 = !DIFile(filename: "crates/polars-compute/src/propagate_nulls.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "31a60cdc4d0dcc51af02597c57171feb")
!926 = !DINamespace(name: "propagate_nulls", scope: !693)
!927 = !DINamespace(name: "propagate_nulls_struct", scope: !926)
!928 = !DINamespace(name: "horizontal_flatten_unchecked", scope: !694)
!929 = !DIFile(filename: "library/core/src/any.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "73b13243d5164b44bcce9674128a37e1")
!930 = !DINamespace(name: "any", scope: !596)
!931 = !DINamespace(name: "{impl#4}", scope: !930)
!932 = !DIFile(filename: "library/core/src/intrinsics/mod.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "c63bdff6283ee446a2fd675d4e76397e")
!933 = !DINamespace(name: "{impl#9}", scope: !930)
!934 = !DINamespace(name: "eq", scope: !933)
!935 = !DINamespace(name: "{impl#0}", scope: !740)
!936 = !DINamespace(name: "{impl#20}", scope: !744)
!937 = !DINamespace(name: "{impl#8}", scope: !808)
!938 = !DIFile(filename: "crates/polars-compute/src/trim_lists_to_normalized_offsets.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "4f10ca87f7a24b45032153091998160f")
!939 = !DINamespace(name: "trim_lists_to_normalized_offsets", scope: !693)
!940 = !DINamespace(name: "StrengthReducedUsize", scope: !712)
!941 = !DIFile(filename: "crates/polars-arrow/src/compute/arity.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "b2d8800fcd7eba21a53f0ad2d1b5d08b")
!942 = !DINamespace(name: "compute", scope: !719)
!943 = !DINamespace(name: "arity", scope: !942)
!944 = !DINamespace(name: "unary", scope: !943)
!945 = !DIFile(filename: "library/std_detect/src/detect/cache.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "c622e53654066d071c495e8ec2d53c97")
!946 = !DINamespace(name: "std_detect", scope: null)
!947 = !DINamespace(name: "detect", scope: !946)
!948 = !DINamespace(name: "cache", scope: !947)
!949 = !DINamespace(name: "Cache", scope: !948)
!950 = !DIFile(filename: "library/std_detect/src/detect/mod.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "34c8da5926f70099f1605578715f7d38")
!951 = !DIFile(filename: "library/std_detect/src/detect/macros.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "743c7f9d4eb3dbc2a7f1c707a5efa23d")
!952 = !DINamespace(name: "arch", scope: !947)
!953 = !DINamespace(name: "x86", scope: !952)
!954 = !DINamespace(name: "__is_feature_detected", scope: !953)
!955 = !DIFile(filename: "src/binary16/arch.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/half-2.7.1", checksumkind: CSK_MD5, checksum: "da1b9b8fdb6ffb0934104c47ea4cd684")
!956 = !DINamespace(name: "half", scope: null)
!957 = !DINamespace(name: "binary16", scope: !956)
!958 = !DINamespace(name: "arch", scope: !957)
!959 = !DIFile(filename: "src/binary16.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/half-2.7.1", checksumkind: CSK_MD5, checksum: "122c3e55a387a377a2e429ada7765637")
!960 = !DINamespace(name: "f16", scope: !957)
!961 = !DIFile(filename: "src/num_traits.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/half-2.7.1", checksumkind: CSK_MD5, checksum: "bd81e845e91cf476123ae34a567a5c63")
!962 = !DINamespace(name: "num_traits", scope: !956)
!963 = !DIFile(filename: "crates/polars-utils/src/float16.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "815266ed465883b89870184b986e2396")
!964 = !DINamespace(name: "float16", scope: !762)
!965 = !DINamespace(name: "Fn", scope: !630)
!966 = !DINamespace(name: "test", scope: !948)
!967 = !DINamespace(name: "Initializer", scope: !948)
!968 = !DILexicalBlockFile(scope: !391, file: !792, discriminator: 0)
!969 = !DINamespace(name: "{impl#7}", scope: !689)
!970 = !DIFile(filename: "src/leading_zeros.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/half-2.7.1", checksumkind: CSK_MD5, checksum: "7ceb7250b6e1f6d1ccf9321ae72c92e9")
!971 = !DINamespace(name: "leading_zeros", scope: !956)
!972 = !DILexicalBlockFile(scope: !394, file: !792, discriminator: 0)
!973 = !DINamespace(name: "{impl#222}", scope: !804)
!974 = !DILexicalBlockFile(scope: !404, file: !792, discriminator: 0)
!975 = !DILexicalBlockFile(scope: !407, file: !792, discriminator: 0)
!976 = !DINamespace(name: "{impl#216}", scope: !804)
!977 = !DINamespace(name: "{impl#224}", scope: !804)
!978 = !DINamespace(name: "{impl#218}", scope: !804)
!979 = !DINamespace(name: "{impl#223}", scope: !804)
!980 = !DINamespace(name: "{impl#217}", scope: !804)
!981 = !DINamespace(name: "{impl#225}", scope: !804)
!982 = !DINamespace(name: "{impl#219}", scope: !804)
!983 = !DINamespace(name: "{impl#60}", scope: !804)
!984 = !DILexicalBlockFile(scope: !424, file: !792, discriminator: 0)
!985 = !DILexicalBlockFile(scope: !428, file: !792, discriminator: 0)
!986 = !{!"branch_weights", i32 8, i32 24}
!987 = !{!"branch_weights", i32 4, i32 12}
!988 = !DILexicalBlockFile(scope: !440, file: !792, discriminator: 0)
!989 = !DILexicalBlockFile(scope: !444, file: !792, discriminator: 0)
!990 = !DINamespace(name: "{impl#46}", scope: !804)
!991 = !DINamespace(name: "trim_lists_to_normalized_offsets_list", scope: !939)
!992 = !DIFile(filename: "crates/polars-compute/src/cast/primitive_to.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "38183982f1c6425eb8a08b3b689a2dfd")
!993 = !DINamespace(name: "primitive_to", scope: !878)
!994 = !DINamespace(name: "{impl#116}", scope: !804)
!995 = !DIFile(filename: "crates/polars-compute/src/gather/mod.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "a32587714b3064887e7bfd82c1dfcc94")
!996 = !DINamespace(name: "take_unchecked_impl_generic", scope: !788)
!997 = !DIFile(filename: "library/core/src/convert/mod.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "895b07ad419949eb0829369911de237b")
!998 = !DINamespace(name: "{impl#6}", scope: !922)
!999 = !DINamespace(name: "{impl#102}", scope: !804)
!1000 = !DINamespace(name: "{impl#88}", scope: !804)
!1001 = !DINamespace(name: "{impl#74}", scope: !804)
!1002 = !DINamespace(name: "{impl#144}", scope: !804)
!1003 = !DINamespace(name: "{impl#130}", scope: !804)
!1004 = !DIFile(filename: "crates/polars-arrow/src/array/iterator.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "4bae8c05504b8621d169cd4f455dee73")
!1005 = !DINamespace(name: "iterator", scope: !720)
!1006 = !DINamespace(name: "{impl#7}", scope: !1005)
!1007 = !{i64 2}
!1008 = !DIFile(filename: "crates/polars-arrow/src/array/primitive/iterator.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "248372d7c4c01dcd7d7a0779eed599d4")
!1009 = !DINamespace(name: "iterator", scope: !808)
!1010 = !DINamespace(name: "{impl#0}", scope: !1009)
!1011 = !DINamespace(name: "FnMut", scope: !630)
!1012 = !DIFile(filename: "crates/polars-compute/src/bitwise.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "83d1eed0f46aa35e6a6bb558f551b948")
!1013 = !DINamespace(name: "bitwise", scope: !693)
!1014 = !DINamespace(name: "{impl#9}", scope: !1013)
!1015 = !DINamespace(name: "{impl#1}", scope: !1013)
!1016 = !DINamespace(name: "{impl#11}", scope: !1013)
!1017 = !DINamespace(name: "{impl#10}", scope: !1013)
!1018 = !DINamespace(name: "{impl#5}", scope: !1013)
!1019 = !DINamespace(name: "{impl#3}", scope: !1013)
!1020 = !DINamespace(name: "{impl#7}", scope: !1013)
!1021 = !{i64 16}
!1022 = !DINamespace(name: "{impl#13}", scope: !1013)
!1023 = !DINamespace(name: "{impl#12}", scope: !1013)
!1024 = !DINamespace(name: "{impl#2}", scope: !1013)
!1025 = !DINamespace(name: "{impl#6}", scope: !1013)
!1026 = !DINamespace(name: "{impl#4}", scope: !1013)
!1027 = !DINamespace(name: "{impl#8}", scope: !1013)
!1028 = !DINamespace(name: "HashMap", scope: !825)
!1029 = !DIFile(filename: "src/raw.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/hashbrown-0.17.1", checksumkind: CSK_MD5, checksum: "da1352104b4938bc7289a2cad1b5e1e6")
!1030 = !DINamespace(name: "raw", scope: !824)
!1031 = !DINamespace(name: "RawTable", scope: !1030)
!1032 = !DIFile(filename: "src/util.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/hashbrown-0.17.1", checksumkind: CSK_MD5, checksum: "c7345391ba65a4df5923232364a73a1d")
!1033 = !DINamespace(name: "util", scope: !824)
!1034 = !DIFile(filename: "src/control/tag.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/hashbrown-0.17.1", checksumkind: CSK_MD5, checksum: "29b020448e8b8abbc21013f051b65e9a")
!1035 = !DINamespace(name: "control", scope: !824)
!1036 = !DINamespace(name: "tag", scope: !1035)
!1037 = !DINamespace(name: "Tag", scope: !1036)
!1038 = !DINamespace(name: "RawTableInner", scope: !1030)
!1039 = !DIFile(filename: "library/core/src/../../stdarch/crates/core_arch/src/x86/sse2.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "6b1864d45cac802b34c17e3c3e5be790")
!1040 = !DINamespace(name: "core_arch", scope: !596)
!1041 = !DINamespace(name: "x86", scope: !1040)
!1042 = !DINamespace(name: "sse2", scope: !1041)
!1043 = !DIFile(filename: "src/control/group/sse2.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/hashbrown-0.17.1", checksumkind: CSK_MD5, checksum: "2929934c6ce36f6fa8d33fef84d89a6d")
!1044 = !DINamespace(name: "group", scope: !1035)
!1045 = !DINamespace(name: "sse2", scope: !1044)
!1046 = !DINamespace(name: "Group", scope: !1045)
!1047 = !DIFile(filename: "src/control/bitmask.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/hashbrown-0.17.1", checksumkind: CSK_MD5, checksum: "4bfe2da8b901544625d31611905e7d64")
!1048 = !DINamespace(name: "bitmask", scope: !1035)
!1049 = !DINamespace(name: "BitMask", scope: !1048)
!1050 = !DINamespace(name: "{impl#2}", scope: !1048)
!1051 = !DILexicalBlockFile(scope: !539, file: !1029, discriminator: 2)
!1052 = !DINamespace(name: "ProbeSeq", scope: !1030)
!1053 = !DINamespace(name: "Bucket", scope: !1030)
!1054 = !DINamespace(name: "{impl#8}", scope: !1030)
!1055 = !DINamespace(name: "find_or_find_insert_index", scope: !1054)
!1056 = !DIFile(filename: "crates/polars-utils/src/total_ord.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "f218cd3b44a2b7a0f0477b36aa31c558")
!1057 = !DINamespace(name: "total_ord", scope: !762)
!1058 = !DINamespace(name: "{impl#84}", scope: !1057)
!1059 = !DINamespace(name: "{impl#4}", scope: !1057)
!1060 = !DIFile(filename: "src/lib.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/equivalent-1.0.2", checksumkind: CSK_MD5, checksum: "73cf2b5eaf12d74653f8cf3e0e7e8e19")
!1061 = !DINamespace(name: "equivalent", scope: null)
!1062 = !DINamespace(name: "{impl#0}", scope: !1061)
!1063 = !DINamespace(name: "equivalent_key", scope: !825)
!1064 = !DINamespace(name: "{impl#5}", scope: !957)
!1065 = !DINamespace(name: "{impl#34}", scope: !964)
!1066 = !DINamespace(name: "{impl#9}", scope: !678)
!1067 = !DINamespace(name: "{impl#88}", scope: !1057)
!1068 = !DINamespace(name: "{impl#86}", scope: !1057)
!1069 = !DINamespace(name: "{impl#17}", scope: !716)
!1070 = !{!"branch_weights", i32 2146410443, i32 1073205}
!1071 = !{!"branch_weights", !"expected", i32 2146946911, i32 536737}
!1072 = !{!"branch_weights", !"expected", i32 536737, i32 2146946911}
!1073 = !DIFile(filename: "library/core/src/slice/cmp.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "84ef1ad06348bcbccb4880198773df8b")
!1074 = !DINamespace(name: "cmp", scope: !698)
!1075 = !DINamespace(name: "{impl#5}", scope: !1074)
!1076 = !DINamespace(name: "{impl#0}", scope: !1074)
!1077 = !DIFile(filename: "src/binary16/arch/x86.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/half-2.7.1", checksumkind: CSK_MD5, checksum: "b7a599c89b21985f04f91391f5549d22")
!1078 = !DINamespace(name: "x86", scope: !958)
!1079 = !DIFile(filename: "src/util/macro_util.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/zerocopy-0.8.50", checksumkind: CSK_MD5, checksum: "f4672faedf081e5d86aa7b41cb99de26")
!1080 = !DINamespace(name: "zerocopy", scope: null)
!1081 = !DINamespace(name: "util", scope: !1080)
!1082 = !DINamespace(name: "macro_util", scope: !1081)
!1083 = !DIFile(filename: "src/macros.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/zerocopy-0.8.50", checksumkind: CSK_MD5, checksum: "fdd1762f0472e07f95756545589c3080")
!1084 = !DINamespace(name: "TrustedRandomAccessNoCoerce", scope: !875)
!1085 = distinct !DILocation(line: 810, column: 1, scope: !1)
!1086 = distinct !DILocation(line: 810, column: 1, scope: !2, inlinedAt: !1085)
!1087 = distinct !DILocation(line: 810, column: 1, scope: !2, inlinedAt: !1085)
!1088 = !DILocation(line: 810, column: 1, scope: !1)
!1089 = !DILocation(line: 810, column: 1, scope: !2, inlinedAt: !1085)
!1090 = !DILocation(line: 810, column: 1, scope: !3, inlinedAt: !1086)
!1091 = !DILocation(line: 810, column: 1, scope: !3, inlinedAt: !1087)
!1092 = distinct !DILocation(line: 810, column: 1, scope: !4)
!1093 = distinct !DILocation(line: 810, column: 1, scope: !5, inlinedAt: !1092)
!1094 = distinct !DILocation(line: 1919, column: 26, scope: !9, inlinedAt: !1093)
!1095 = distinct !DILocation(line: 255, column: 43, scope: !7, inlinedAt: !1094)
!1096 = distinct !DILocation(line: 255, column: 68, scope: !7, inlinedAt: !1094)
!1097 = distinct !DILocation(line: 125, column: 30, scope: !12, inlinedAt: !1096)
!1098 = distinct !DILocation(line: 1921, column: 24, scope: !10, inlinedAt: !1093)
!1099 = distinct !DILocation(line: 462, column: 23, scope: !16, inlinedAt: !1098)
!1100 = distinct !DILocation(line: 344, column: 9, scope: !15, inlinedAt: !1099)
!1101 = distinct !DILocation(line: 229, column: 22, scope: !14, inlinedAt: !1100)
!1102 = distinct !DILocation(line: 810, column: 1, scope: !5, inlinedAt: !1092)
!1103 = distinct !DILocation(line: 1919, column: 26, scope: !9, inlinedAt: !1102)
!1104 = distinct !DILocation(line: 255, column: 43, scope: !7, inlinedAt: !1103)
!1105 = distinct !DILocation(line: 255, column: 68, scope: !7, inlinedAt: !1103)
!1106 = distinct !DILocation(line: 125, column: 30, scope: !12, inlinedAt: !1105)
!1107 = distinct !DILocation(line: 1921, column: 24, scope: !10, inlinedAt: !1102)
!1108 = distinct !DILocation(line: 462, column: 23, scope: !16, inlinedAt: !1107)
!1109 = distinct !DILocation(line: 344, column: 9, scope: !15, inlinedAt: !1108)
!1110 = distinct !DILocation(line: 229, column: 22, scope: !14, inlinedAt: !1109)
!1111 = !DILocation(line: 810, column: 1, scope: !4)
!1112 = !DILocation(line: 810, column: 1, scope: !5, inlinedAt: !1092)
!1113 = !DILocation(line: 457, column: 14, scope: !6, inlinedAt: !1095)
!1114 = !DILocation(line: 1920, column: 16, scope: !10, inlinedAt: !1093)
!1115 = !DILocation(line: 596, column: 14, scope: !11, inlinedAt: !1097)
!1116 = !DILocation(line: 128, column: 14, scope: !13, inlinedAt: !1101)
!1117 = !DILocation(line: 1920, column: 13, scope: !10, inlinedAt: !1093)
!1118 = !DILocation(line: 457, column: 14, scope: !6, inlinedAt: !1104)
!1119 = !DILocation(line: 1920, column: 16, scope: !10, inlinedAt: !1102)
!1120 = !DILocation(line: 596, column: 14, scope: !11, inlinedAt: !1106)
!1121 = !DILocation(line: 128, column: 14, scope: !13, inlinedAt: !1110)
!1122 = !DILocation(line: 1920, column: 13, scope: !10, inlinedAt: !1102)
!1123 = distinct !DILocation(line: 810, column: 1, scope: !17)
!1124 = distinct !DILocation(line: 810, column: 1, scope: !21, inlinedAt: !1123)
!1125 = distinct !DILocation(line: 810, column: 1, scope: !20, inlinedAt: !1124)
!1126 = distinct !DILocation(line: 810, column: 1, scope: !19, inlinedAt: !1125)
!1127 = distinct !DILocation(line: 810, column: 1, scope: !18, inlinedAt: !1126)
!1128 = distinct !DILocation(line: 810, column: 1, scope: !18, inlinedAt: !1126)
!1129 = !DILocation(line: 810, column: 1, scope: !17)
!1130 = !DILocation(line: 810, column: 1, scope: !18, inlinedAt: !1126)
!1131 = !DILocation(line: 810, column: 1, scope: !22, inlinedAt: !1127)
!1132 = !DILocation(line: 810, column: 1, scope: !22, inlinedAt: !1128)
!1133 = !DILocation(line: 810, column: 1, scope: !20, inlinedAt: !1124)
!1134 = distinct !DILocation(line: 810, column: 1, scope: !23)
!1135 = distinct !DILocation(line: 2306, column: 9, scope: !29, inlinedAt: !1134)
!1136 = distinct !DILocation(line: 2290, column: 16, scope: !28, inlinedAt: !1135)
!1137 = distinct !DILocation(line: 39, column: 18, scope: !27, inlinedAt: !1136)
!1138 = distinct !DILocation(line: 461, column: 37, scope: !26, inlinedAt: !1137)
!1139 = distinct !DILocation(line: 250, column: 5, scope: !25, inlinedAt: !1138)
!1140 = distinct !DILocation(line: 462, column: 12, scope: !30, inlinedAt: !1137)
!1141 = distinct !DILocation(line: 39, column: 44, scope: !27, inlinedAt: !1136)
!1142 = distinct !DILocation(line: 2292, column: 26, scope: !28, inlinedAt: !1135)
!1143 = !DILocation(line: 75, column: 26, scope: !24, inlinedAt: !1139)
!1144 = !DILocation(line: 462, column: 12, scope: !30, inlinedAt: !1137)
!1145 = !DILocation(line: 39, column: 31, scope: !31, inlinedAt: !1140)
!1146 = !DILocation(line: 1595, column: 9, scope: !32, inlinedAt: !1141)
!1147 = !DILocation(line: 2294, column: 17, scope: !28, inlinedAt: !1135)
!1148 = !DILocation(line: 269, column: 13, scope: !33, inlinedAt: !1142)
!1149 = !DILocation(line: 2290, column: 13, scope: !28, inlinedAt: !1135)
!1150 = !DILocation(line: 810, column: 1, scope: !23)
!1151 = distinct !DILocation(line: 810, column: 1, scope: !34)
!1152 = distinct !DILocation(line: 810, column: 1, scope: !34)
!1153 = !DILocation(line: 810, column: 1, scope: !34)
!1154 = !DILocation(line: 810, column: 1, scope: !35, inlinedAt: !1151)
!1155 = !DILocation(line: 810, column: 1, scope: !35, inlinedAt: !1152)
!1156 = distinct !DILocation(line: 810, column: 1, scope: !5)
!1157 = distinct !DILocation(line: 1919, column: 26, scope: !9, inlinedAt: !1156)
!1158 = distinct !DILocation(line: 255, column: 43, scope: !7, inlinedAt: !1157)
!1159 = distinct !DILocation(line: 255, column: 68, scope: !7, inlinedAt: !1157)
!1160 = distinct !DILocation(line: 125, column: 30, scope: !12, inlinedAt: !1159)
!1161 = distinct !DILocation(line: 1921, column: 24, scope: !10, inlinedAt: !1156)
!1162 = distinct !DILocation(line: 462, column: 23, scope: !16, inlinedAt: !1161)
!1163 = distinct !DILocation(line: 344, column: 9, scope: !15, inlinedAt: !1162)
!1164 = distinct !DILocation(line: 229, column: 22, scope: !14, inlinedAt: !1163)
!1165 = distinct !DILocation(line: 810, column: 1, scope: !5)
!1166 = distinct !DILocation(line: 1919, column: 26, scope: !9, inlinedAt: !1165)
!1167 = distinct !DILocation(line: 255, column: 43, scope: !7, inlinedAt: !1166)
!1168 = distinct !DILocation(line: 255, column: 68, scope: !7, inlinedAt: !1166)
!1169 = distinct !DILocation(line: 125, column: 30, scope: !12, inlinedAt: !1168)
!1170 = distinct !DILocation(line: 1921, column: 24, scope: !10, inlinedAt: !1165)
!1171 = distinct !DILocation(line: 462, column: 23, scope: !16, inlinedAt: !1170)
!1172 = distinct !DILocation(line: 344, column: 9, scope: !15, inlinedAt: !1171)
!1173 = distinct !DILocation(line: 229, column: 22, scope: !14, inlinedAt: !1172)
!1174 = !DILocation(line: 810, column: 1, scope: !5)
!1175 = !DILocation(line: 457, column: 14, scope: !6, inlinedAt: !1158)
!1176 = !DILocation(line: 1920, column: 16, scope: !10, inlinedAt: !1156)
!1177 = !DILocation(line: 596, column: 14, scope: !11, inlinedAt: !1160)
!1178 = !DILocation(line: 128, column: 14, scope: !13, inlinedAt: !1164)
!1179 = !DILocation(line: 1920, column: 13, scope: !10, inlinedAt: !1156)
!1180 = !DILocation(line: 457, column: 14, scope: !6, inlinedAt: !1167)
!1181 = !DILocation(line: 1920, column: 16, scope: !10, inlinedAt: !1165)
!1182 = !DILocation(line: 596, column: 14, scope: !11, inlinedAt: !1169)
!1183 = !DILocation(line: 128, column: 14, scope: !13, inlinedAt: !1173)
!1184 = !DILocation(line: 1920, column: 13, scope: !10, inlinedAt: !1165)
!1185 = distinct !DILocation(line: 810, column: 1, scope: !36)
!1186 = distinct !DILocation(line: 810, column: 1, scope: !38, inlinedAt: !1185)
end_hunk_5
begin_hunk_6_@llvm.fptoui.sat.v4i16.v4f32
!20189 = distinct !DILexicalBlock(scope: !20188, file: !781, line: 25, column: 86)
!20190 = distinct !DILexicalBlock(scope: !20189, file: !781, line: 33, column: 13)
!20191 = distinct !DILocation(line: 57, column: 30, scope: !20190, inlinedAt: !20181)
!20192 = distinct !DILocation(line: 953, column: 32, scope: !20186, inlinedAt: !20191)
!20193 = distinct !DILocation(line: 887, column: 37, scope: !20185, inlinedAt: !20192)
!20194 = distinct !DISubprogram(name: "add<f32>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullfE3addCslFlrwjHoTci_14polars_compute", scope: !654, file: !652, line: 651, type: !599, scopeLine: 651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20195 = distinct !DILexicalBlock(scope: !20188, file: !781, line: 275, column: 17)
!20196 = distinct !DILocation(line: 279, column: 67, scope: !20195, inlinedAt: !20181)
!20197 = distinct !{!20197, !"LVerDomain"}
!20198 = distinct !{!20198, !20197}
!20199 = distinct !{!20199, !"_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfauNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveaE3as_aE0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecaE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute"}
!20200 = distinct !{!20200, !20199, !"_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfauNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveaE3as_aE0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecaE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute: argument 0"}
!20201 = distinct !DISubprogram(name: "as_", linkageName: "_RNvXs3y_NtCslmKYcnV0hjo_10num_traits4castfINtB6_11AsPrimitiveaE3as_", scope: !973, file: !803, line: 742, type: !599, scopeLine: 742, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20202 = distinct !DISubprogram(name: "call<fn(f32) -> i8, (f32)>", linkageName: "_RNvYNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveaE3as_INtNtNtCscgRAwXFJnXP_4core3ops8function2FnTfEE4callCslFlrwjHoTci_14polars_compute", scope: !965, file: !628, line: 79, type: !601, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20203 = distinct !DISubprogram(name: "{closure#0}<f32, fn(f32) -> i8, i8>", linkageName: "_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveaE3as_aE0CslFlrwjHoTci_14polars_compute", scope: !944, file: !941, line: 24, type: !601, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20204 = distinct !DISubprogram(name: "{closure#0}<&f32, i8, (), polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> i8, i8>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<i8, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<i8, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<f32>, polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> i8, i8>>>>>", linkageName: "_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRfauNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveaE3as_aE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3X_3VecaE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterfEBY_EE0E0E0CslFlrwjHoTci_14polars_compute", scope: !696, file: !671, line: 88, type: !601, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20205 = distinct !DILocation(line: 279, column: 27, scope: !20195, inlinedAt: !20181)
!20206 = distinct !DILocation(line: 88, column: 28, scope: !20204, inlinedAt: !20205)
!20207 = distinct !DILocation(line: 24, column: 48, scope: !20203, inlinedAt: !20206)
!20208 = distinct !DILocation(line: 79, column: 5, scope: !20202, inlinedAt: !20207)
!20209 = distinct !DISubprogram(name: "add<i8>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOa3addCslFlrwjHoTci_14polars_compute", scope: !756, file: !754, line: 927, type: !599, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20210 = distinct !DISubprogram(name: "{closure#0}<i8, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<f32>, polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> i8, i8>>>", linkageName: "_RNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB8_3VecaE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB19_5slice4iter4IterfENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveaE3as_aE0EE0CslFlrwjHoTci_14polars_compute", scope: !770, file: !707, line: 4028, type: !599, scopeLine: 4028, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20211 = distinct !DISubprogram(name: "{closure#0}<i8, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<i8, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<f32>, polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> i8, i8>>>>", linkageName: "_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB1p_3VecaE14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterfENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveaE3as_aE0EE0E0CslFlrwjHoTci_14polars_compute", scope: !772, file: !684, line: 884, type: !599, scopeLine: 884, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20212 = distinct !DILocation(line: 88, column: 21, scope: !20204, inlinedAt: !20205)
!20213 = distinct !DILocation(line: 884, column: 29, scope: !20211, inlinedAt: !20212)
!20214 = distinct !DILocation(line: 4029, column: 36, scope: !20210, inlinedAt: !20213)
!20215 = distinct !{!20215, !20197}
!20216 = distinct !{!20216, !"_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRfauNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveaE3as_aE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3X_3VecaE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterfEBY_EE0E0E0CslFlrwjHoTci_14polars_compute"}
!20217 = distinct !{!20217, !20216, !"_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRfauNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveaE3as_aE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3X_3VecaE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterfEBY_EE0E0E0CslFlrwjHoTci_14polars_compute: argument 0"}
!20218 = distinct !{!20218, !"_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB1p_3VecaE14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterfENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveaE3as_aE0EE0E0CslFlrwjHoTci_14polars_compute"}
!20219 = distinct !{!20219, !20218, !"_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB1p_3VecaE14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterfENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveaE3as_aE0EE0E0CslFlrwjHoTci_14polars_compute: argument 0"}
!20220 = distinct !{!20220, !"_RNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB8_3VecaE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB19_5slice4iter4IterfENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveaE3as_aE0EE0CslFlrwjHoTci_14polars_compute"}
!20221 = distinct !{!20221, !20220, !"_RNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB8_3VecaE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB19_5slice4iter4IterfENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveaE3as_aE0EE0CslFlrwjHoTci_14polars_compute: argument 0"}
!20222 = distinct !DISubprogram(name: "write<i8>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr5writeaECslFlrwjHoTci_14polars_compute", scope: !597, file: !595, line: 1898, type: !599, scopeLine: 1898, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20223 = distinct !DILocation(line: 4029, column: 21, scope: !20210, inlinedAt: !20213)
!20224 = distinct !{!20224, !894, !895}
!20225 = distinct !DISubprogram(name: "increment_len", linkageName: "_RNvMNtNtCsgZ49sUHp3tW_5alloc3vec15set_len_on_dropNtB2_12SetLenOnDrop13increment_len", scope: !775, file: !773, line: 18, type: !599, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20226 = distinct !DILocation(line: 4033, column: 31, scope: !20210, inlinedAt: !20213)
!20227 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj13unchecked_add", scope: !690, file: !688, line: 886, type: !599, scopeLine: 886, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20228 = distinct !DILocation(line: 283, column: 36, scope: !20195, inlinedAt: !20181)
!20229 = distinct !{!20229, !894}
!20230 = distinct !DISubprogram(name: "drop_in_place<core::iter::adapters::map::map_fold::{closure_env#0}<&f32, i8, (), polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> i8, i8>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<i8, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<i8, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<f32>, polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> i8, i8>>>>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCINvNtNtNtB4_4iter8adapters3map8map_foldRfauNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveaE3as_aE0NCINvNvNtNtNtBP_6traits8iterator8Iterator8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4o_3VecaE14extend_trustedINtBL_3MapINtNtNtB4_5slice4iter4IterfEB1p_EE0E0E0ECslFlrwjHoTci_14polars_compute", scope: !597, file: !595, line: 810, type: !601, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20231 = distinct !DISubprogram(name: "drop_in_place<core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<i8, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<i8, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<f32>, polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> i8, i8>>>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCINvNvNtNtNtNtB4_4iter6traits8iterator8Iterator8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB1Q_3VecaE14extend_trustedINtNtNtBT_8adapters3map3MapINtNtNtB4_5slice4iter4IterfENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveaE3as_aE0EE0E0ECslFlrwjHoTci_14polars_compute", scope: !597, file: !595, line: 810, type: !601, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20232 = distinct !DISubprogram(name: "drop_in_place<alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<i8, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<f32>, polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> i8, i8>>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtBP_3VecaE14extend_trustedINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB4_5slice4iter4IterfENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveaE3as_aE0EE0ECslFlrwjHoTci_14polars_compute", scope: !597, file: !595, line: 810, type: !601, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20233 = !DILocation(line: 128, column: 30, scope: !20175)
!20234 = !{!20198}
!20235 = !{!20200}
!20236 = !{!20215}
!20237 = !{!20221, !20219, !20217, !20200, !20198}
!20238 = !{!20221, !20219, !20217, !20200}
!20239 = !DILocation(line: 289, column: 13, scope: !20178, inlinedAt: !20181)
!20240 = !DILocation(line: 810, column: 1, scope: !20230, inlinedAt: !20239)
!20241 = !DILocation(line: 810, column: 1, scope: !20231, inlinedAt: !20240)
!20242 = !DILocation(line: 810, column: 1, scope: !20232, inlinedAt: !20241)
!20243 = !DILocation(line: 810, column: 1, scope: !107, inlinedAt: !20242)
!20244 = !DILocation(line: 128, column: 9, scope: !20175)
!20245 = !DILocation(line: 88, column: 5, scope: !20176, inlinedAt: !20233)
!20246 = !DILocation(line: 1717, column: 9, scope: !20177, inlinedAt: !20182)
!20247 = !DILocation(line: 25, column: 86, scope: !20179, inlinedAt: !20181)
!20248 = !DILocation(line: 729, column: 18, scope: !20184, inlinedAt: !20193)
!20249 = !DILocation(line: 28, column: 9, scope: !20189, inlinedAt: !20181)
!20250 = !DILocation(line: 0, scope: !20187, inlinedAt: !20181)
!20251 = !DILocation(line: 659, column: 28, scope: !20194, inlinedAt: !20196)
!20252 = !DILocation(line: 279, column: 27, scope: !20195, inlinedAt: !20181)
!20253 = !DILocation(line: 742, column: 44, scope: !20201, inlinedAt: !20208)
!20254 = !DILocation(line: 961, column: 18, scope: !20209, inlinedAt: !20214)
!20255 = !DILocation(line: 1921, column: 41, scope: !20222, inlinedAt: !20223)
!20256 = !DILocation(line: 284, column: 24, scope: !20195, inlinedAt: !20181)
!20257 = !DILocation(line: 19, column: 9, scope: !20225, inlinedAt: !20226)
!20258 = !DILocation(line: 898, column: 17, scope: !20227, inlinedAt: !20228)
!20259 = !DILocation(line: 31, column: 9, scope: !106, inlinedAt: !20243)
!20260 = !DILocation(line: 129, column: 6, scope: !20175)
!20261 = distinct !DISubprogram(name: "fold<f64, core::slice::iter::Iter<f32>, polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> f64, f64>, (), core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<f64, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<f64, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<f32>, polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> f64, f64>>>>>", linkageName: "_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterfENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_dE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecdE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute", scope: !675, file: !671, line: 124, type: !599, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20262 = distinct !DISubprogram(name: "map_fold<&f32, f64, (), polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> f64, f64>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<f64, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<f64, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<f32>, polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> f64, f64>>>>>", linkageName: "_RINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRfduNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_dE0NCINvNvNtNtNtB6_6traits8iterator8Iterator8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3V_3VecdE14extend_trustedINtB2_3MapINtNtNtB8_5slice4iter4IterfEBW_EE0E0ECslFlrwjHoTci_14polars_compute", scope: !674, file: !671, line: 84, type: !599, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20263 = distinct !DISubprogram(name: "eq<f32>", linkageName: "_RNvXsd_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullfENtNtB9_3cmp9PartialEq2eqCslFlrwjHoTci_14polars_compute", scope: !780, file: !652, line: 1716, type: !599, scopeLine: 1716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20264 = distinct !DISubprogram(name: "fold<f32, (), core::iter::adapters::map::map_fold::{closure_env#0}<&f32, f64, (), polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> f64, f64>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<f64, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<f64, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<f32>, polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> f64, f64>>>>>>", linkageName: "_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfduNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_dE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute", scope: !783, file: !781, line: 259, type: !599, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20265 = distinct !DILexicalBlock(scope: !20264, file: !781, line: 25, column: 86)
!20266 = distinct !DILexicalBlock(scope: !20265, file: !781, line: 33, column: 13)
!20267 = distinct !DILocation(line: 128, column: 19, scope: !20261)
!20268 = distinct !DILocation(line: 44, column: 20, scope: !20266, inlinedAt: !20267)
!20269 = distinct !DISubprogram(name: "offset_from_unsigned<f32>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPf20offset_from_unsignedCslFlrwjHoTci_14polars_compute", scope: !786, file: !784, line: 701, type: !599, scopeLine: 701, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20270 = distinct !DILexicalBlock(scope: !20269, file: !784, line: 726, column: 9)
!20271 = distinct !DISubprogram(name: "offset_from_unsigned<f32>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOf20offset_from_unsignedCslFlrwjHoTci_14polars_compute", scope: !756, file: !754, line: 882, type: !599, scopeLine: 882, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20272 = distinct !DISubprogram(name: "offset_from_unsigned<f32>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullfE20offset_from_unsignedCslFlrwjHoTci_14polars_compute", scope: !654, file: !652, line: 948, type: !599, scopeLine: 948, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20273 = distinct !DILexicalBlock(scope: !20264, file: !781, line: 273, column: 17)
!20274 = distinct !DILexicalBlock(scope: !20273, file: !781, line: 274, column: 17)
!20275 = distinct !DILexicalBlock(scope: !20274, file: !781, line: 25, column: 86)
!20276 = distinct !DILexicalBlock(scope: !20275, file: !781, line: 33, column: 13)
!20277 = distinct !DILocation(line: 57, column: 30, scope: !20276, inlinedAt: !20267)
!20278 = distinct !DILocation(line: 953, column: 32, scope: !20272, inlinedAt: !20277)
!20279 = distinct !DILocation(line: 887, column: 37, scope: !20271, inlinedAt: !20278)
!20280 = distinct !DISubprogram(name: "add<f32>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullfE3addCslFlrwjHoTci_14polars_compute", scope: !654, file: !652, line: 651, type: !599, scopeLine: 651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20281 = distinct !DILexicalBlock(scope: !20274, file: !781, line: 275, column: 17)
!20282 = distinct !DILocation(line: 279, column: 67, scope: !20281, inlinedAt: !20267)
!20283 = distinct !{!20283, !"LVerDomain"}
!20284 = distinct !{!20284, !20283}
!20285 = distinct !{!20285, !"_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfduNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_dE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute"}
!20286 = distinct !{!20286, !20285, !"_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfduNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_dE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute: argument 0"}
!20287 = distinct !DISubprogram(name: "as_", linkageName: "_RNvXs3r_NtCslmKYcnV0hjo_10num_traits4castfINtB6_11AsPrimitivedE3as_", scope: !20323, file: !803, line: 742, type: !599, scopeLine: 742, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20288 = distinct !DISubprogram(name: "call<fn(f32) -> f64, (f32)>", linkageName: "_RNvYNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_INtNtNtCscgRAwXFJnXP_4core3ops8function2FnTfEE4callCslFlrwjHoTci_14polars_compute", scope: !965, file: !628, line: 79, type: !601, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20289 = distinct !DISubprogram(name: "{closure#0}<f32, fn(f32) -> f64, f64>", linkageName: "_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_dE0CslFlrwjHoTci_14polars_compute", scope: !944, file: !941, line: 24, type: !601, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20290 = distinct !DISubprogram(name: "{closure#0}<&f32, f64, (), polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> f64, f64>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<f64, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<f64, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<f32>, polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> f64, f64>>>>>", linkageName: "_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRfduNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_dE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3X_3VecdE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterfEBY_EE0E0E0CslFlrwjHoTci_14polars_compute", scope: !696, file: !671, line: 88, type: !601, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20291 = distinct !DILocation(line: 279, column: 27, scope: !20281, inlinedAt: !20267)
!20292 = distinct !DILocation(line: 88, column: 28, scope: !20290, inlinedAt: !20291)
!20293 = distinct !DILocation(line: 24, column: 48, scope: !20289, inlinedAt: !20292)
!20294 = distinct !DILocation(line: 79, column: 5, scope: !20288, inlinedAt: !20293)
!20295 = distinct !DISubprogram(name: "add<f64>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOd3addCslFlrwjHoTci_14polars_compute", scope: !756, file: !754, line: 927, type: !599, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20296 = distinct !DISubprogram(name: "{closure#0}<f64, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<f32>, polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> f64, f64>>>", linkageName: "_RNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB8_3VecdE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB19_5slice4iter4IterfENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_dE0EE0CslFlrwjHoTci_14polars_compute", scope: !770, file: !707, line: 4028, type: !599, scopeLine: 4028, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20297 = distinct !DISubprogram(name: "{closure#0}<f64, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<f64, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<f32>, polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> f64, f64>>>>", linkageName: "_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB1p_3VecdE14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterfENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_dE0EE0E0CslFlrwjHoTci_14polars_compute", scope: !772, file: !684, line: 884, type: !599, scopeLine: 884, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20298 = distinct !DILocation(line: 88, column: 21, scope: !20290, inlinedAt: !20291)
!20299 = distinct !DILocation(line: 884, column: 29, scope: !20297, inlinedAt: !20298)
!20300 = distinct !DILocation(line: 4029, column: 36, scope: !20296, inlinedAt: !20299)
!20301 = distinct !DISubprogram(name: "write<f64>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr5writedECslFlrwjHoTci_14polars_compute", scope: !597, file: !595, line: 1898, type: !599, scopeLine: 1898, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20302 = distinct !DILocation(line: 4029, column: 21, scope: !20296, inlinedAt: !20299)
!20303 = distinct !{!20303, !20283}
!20304 = distinct !{!20304, !"_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRfduNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_dE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3X_3VecdE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterfEBY_EE0E0E0CslFlrwjHoTci_14polars_compute"}
!20305 = distinct !{!20305, !20304, !"_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRfduNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_dE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3X_3VecdE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterfEBY_EE0E0E0CslFlrwjHoTci_14polars_compute: argument 0"}
!20306 = distinct !{!20306, !"_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB1p_3VecdE14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterfENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_dE0EE0E0CslFlrwjHoTci_14polars_compute"}
!20307 = distinct !{!20307, !20306, !"_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB1p_3VecdE14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterfENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_dE0EE0E0CslFlrwjHoTci_14polars_compute: argument 0"}
!20308 = distinct !{!20308, !"_RNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB8_3VecdE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB19_5slice4iter4IterfENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_dE0EE0CslFlrwjHoTci_14polars_compute"}
!20309 = distinct !{!20309, !20308, !"_RNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB8_3VecdE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB19_5slice4iter4IterfENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_dE0EE0CslFlrwjHoTci_14polars_compute: argument 0"}
!20310 = distinct !{!20310, !894, !895}
!20311 = distinct !DISubprogram(name: "increment_len", linkageName: "_RNvMNtNtCsgZ49sUHp3tW_5alloc3vec15set_len_on_dropNtB2_12SetLenOnDrop13increment_len", scope: !775, file: !773, line: 18, type: !599, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20312 = distinct !DILocation(line: 4033, column: 31, scope: !20296, inlinedAt: !20299)
!20313 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj13unchecked_add", scope: !690, file: !688, line: 886, type: !599, scopeLine: 886, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20314 = distinct !DILocation(line: 283, column: 36, scope: !20281, inlinedAt: !20267)
!20315 = distinct !{!20315, !910}
!20316 = distinct !{!20316, !894}
!20317 = distinct !DISubprogram(name: "drop_in_place<core::iter::adapters::map::map_fold::{closure_env#0}<&f32, f64, (), polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> f64, f64>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<f64, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<f64, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<f32>, polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> f64, f64>>>>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCINvNtNtNtB4_4iter8adapters3map8map_foldRfduNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_dE0NCINvNvNtNtNtBP_6traits8iterator8Iterator8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4o_3VecdE14extend_trustedINtBL_3MapINtNtNtB4_5slice4iter4IterfEB1p_EE0E0E0ECslFlrwjHoTci_14polars_compute", scope: !597, file: !595, line: 810, type: !601, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20318 = distinct !DISubprogram(name: "drop_in_place<core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<f64, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<f64, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<f32>, polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> f64, f64>>>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCINvNvNtNtNtNtB4_4iter6traits8iterator8Iterator8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB1Q_3VecdE14extend_trustedINtNtNtBT_8adapters3map3MapINtNtNtB4_5slice4iter4IterfENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_dE0EE0E0ECslFlrwjHoTci_14polars_compute", scope: !597, file: !595, line: 810, type: !601, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20319 = distinct !DISubprogram(name: "drop_in_place<alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<f64, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<f32>, polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> f64, f64>>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtBP_3VecdE14extend_trustedINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB4_5slice4iter4IterfENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_dE0EE0ECslFlrwjHoTci_14polars_compute", scope: !597, file: !595, line: 810, type: !601, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20320 = !DILocation(line: 128, column: 30, scope: !20261)
!20321 = !{!20284}
!20322 = !{!20286}
!20323 = !DINamespace(name: "{impl#215}", scope: !804)
!20324 = !{!20303}
!20325 = !{!20309, !20307, !20305, !20286, !20284}
!20326 = !{!20309, !20307, !20305, !20286}
!20327 = !DILocation(line: 289, column: 13, scope: !20264, inlinedAt: !20267)
!20328 = !DILocation(line: 810, column: 1, scope: !20317, inlinedAt: !20327)
!20329 = !DILocation(line: 810, column: 1, scope: !20318, inlinedAt: !20328)
!20330 = !DILocation(line: 810, column: 1, scope: !20319, inlinedAt: !20329)
!20331 = !DILocation(line: 810, column: 1, scope: !107, inlinedAt: !20330)
!20332 = !DILocation(line: 128, column: 9, scope: !20261)
!20333 = !DILocation(line: 88, column: 5, scope: !20262, inlinedAt: !20320)
!20334 = !DILocation(line: 1717, column: 9, scope: !20263, inlinedAt: !20268)
!20335 = !DILocation(line: 25, column: 86, scope: !20265, inlinedAt: !20267)
!20336 = !DILocation(line: 729, column: 18, scope: !20270, inlinedAt: !20279)
!20337 = !DILocation(line: 28, column: 9, scope: !20275, inlinedAt: !20267)
!20338 = !DILocation(line: 0, scope: !20273, inlinedAt: !20267)
!20339 = !DILocation(line: 659, column: 28, scope: !20280, inlinedAt: !20282)
!20340 = !DILocation(line: 279, column: 27, scope: !20281, inlinedAt: !20267)
!20341 = !DILocation(line: 742, column: 44, scope: !20287, inlinedAt: !20294)
!20342 = !DILocation(line: 961, column: 18, scope: !20295, inlinedAt: !20300)
!20343 = !DILocation(line: 1921, column: 41, scope: !20301, inlinedAt: !20302)
!20344 = !DILocation(line: 284, column: 24, scope: !20281, inlinedAt: !20267)
!20345 = !DILocation(line: 19, column: 9, scope: !20311, inlinedAt: !20312)
!20346 = !DILocation(line: 898, column: 17, scope: !20313, inlinedAt: !20314)
!20347 = !DILocation(line: 31, column: 9, scope: !106, inlinedAt: !20331)
!20348 = !DILocation(line: 129, column: 6, scope: !20261)
!20349 = distinct !DISubprogram(name: "fold<u8, core::slice::iter::Iter<f32>, polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> u8, u8>, (), core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<u8, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<u8, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<f32>, polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> u8, u8>>>>>", linkageName: "_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterfENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VechE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute", scope: !675, file: !671, line: 124, type: !599, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20350 = distinct !DISubprogram(name: "map_fold<&f32, u8, (), polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> u8, u8>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<u8, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<u8, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<f32>, polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> u8, u8>>>>>", linkageName: "_RINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRfhuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0NCINvNvNtNtNtB6_6traits8iterator8Iterator8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3V_3VechE14extend_trustedINtB2_3MapINtNtNtB8_5slice4iter4IterfEBW_EE0E0ECslFlrwjHoTci_14polars_compute", scope: !674, file: !671, line: 84, type: !599, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20351 = distinct !DISubprogram(name: "eq<f32>", linkageName: "_RNvXsd_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullfENtNtB9_3cmp9PartialEq2eqCslFlrwjHoTci_14polars_compute", scope: !780, file: !652, line: 1716, type: !599, scopeLine: 1716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20352 = distinct !DISubprogram(name: "fold<f32, (), core::iter::adapters::map::map_fold::{closure_env#0}<&f32, u8, (), polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> u8, u8>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<u8, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<u8, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<f32>, polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> u8, u8>>>>>>", linkageName: "_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfhuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0NCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute", scope: !783, file: !781, line: 259, type: !599, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20353 = distinct !DILexicalBlock(scope: !20352, file: !781, line: 25, column: 86)
!20354 = distinct !DILexicalBlock(scope: !20353, file: !781, line: 33, column: 13)
!20355 = distinct !DILocation(line: 128, column: 19, scope: !20349)
!20356 = distinct !DILocation(line: 44, column: 20, scope: !20354, inlinedAt: !20355)
!20357 = distinct !DISubprogram(name: "offset_from_unsigned<f32>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPf20offset_from_unsignedCslFlrwjHoTci_14polars_compute", scope: !786, file: !784, line: 701, type: !599, scopeLine: 701, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20358 = distinct !DILexicalBlock(scope: !20357, file: !784, line: 726, column: 9)
!20359 = distinct !DISubprogram(name: "offset_from_unsigned<f32>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOf20offset_from_unsignedCslFlrwjHoTci_14polars_compute", scope: !756, file: !754, line: 882, type: !599, scopeLine: 882, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20360 = distinct !DISubprogram(name: "offset_from_unsigned<f32>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullfE20offset_from_unsignedCslFlrwjHoTci_14polars_compute", scope: !654, file: !652, line: 948, type: !599, scopeLine: 948, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20361 = distinct !DILexicalBlock(scope: !20352, file: !781, line: 273, column: 17)
!20362 = distinct !DILexicalBlock(scope: !20361, file: !781, line: 274, column: 17)
!20363 = distinct !DILexicalBlock(scope: !20362, file: !781, line: 25, column: 86)
!20364 = distinct !DILexicalBlock(scope: !20363, file: !781, line: 33, column: 13)
!20365 = distinct !DILocation(line: 57, column: 30, scope: !20364, inlinedAt: !20355)
!20366 = distinct !DILocation(line: 953, column: 32, scope: !20360, inlinedAt: !20365)
!20367 = distinct !DILocation(line: 887, column: 37, scope: !20359, inlinedAt: !20366)
!20368 = distinct !DISubprogram(name: "add<f32>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullfE3addCslFlrwjHoTci_14polars_compute", scope: !654, file: !652, line: 651, type: !599, scopeLine: 651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20369 = distinct !DILexicalBlock(scope: !20362, file: !781, line: 275, column: 17)
!20370 = distinct !DILocation(line: 279, column: 67, scope: !20369, inlinedAt: !20355)
!20371 = distinct !{!20371, !"LVerDomain"}
!20372 = distinct !{!20372, !20371}
!20373 = distinct !{!20373, !"_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfhuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0NCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute"}
!20374 = distinct !{!20374, !20373, !"_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfhuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0NCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute: argument 0"}
!20375 = distinct !DISubprogram(name: "as_", linkageName: "_RNvXs3s_NtCslmKYcnV0hjo_10num_traits4castfINtB6_11AsPrimitivehE3as_", scope: !976, file: !803, line: 742, type: !599, scopeLine: 742, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20376 = distinct !DISubprogram(name: "call<fn(f32) -> u8, (f32)>", linkageName: "_RNvYNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_INtNtNtCscgRAwXFJnXP_4core3ops8function2FnTfEE4callCslFlrwjHoTci_14polars_compute", scope: !965, file: !628, line: 79, type: !601, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20377 = distinct !DISubprogram(name: "{closure#0}<f32, fn(f32) -> u8, u8>", linkageName: "_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0CslFlrwjHoTci_14polars_compute", scope: !944, file: !941, line: 24, type: !601, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20378 = distinct !DISubprogram(name: "{closure#0}<&f32, u8, (), polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> u8, u8>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<u8, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<u8, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<f32>, polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> u8, u8>>>>>", linkageName: "_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRfhuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3X_3VechE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterfEBY_EE0E0E0CslFlrwjHoTci_14polars_compute", scope: !696, file: !671, line: 88, type: !601, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20379 = distinct !DILocation(line: 279, column: 27, scope: !20369, inlinedAt: !20355)
!20380 = distinct !DILocation(line: 88, column: 28, scope: !20378, inlinedAt: !20379)
!20381 = distinct !DILocation(line: 24, column: 48, scope: !20377, inlinedAt: !20380)
!20382 = distinct !DILocation(line: 79, column: 5, scope: !20376, inlinedAt: !20381)
!20383 = distinct !DISubprogram(name: "add<u8>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOh3addCslFlrwjHoTci_14polars_compute", scope: !756, file: !754, line: 927, type: !599, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20384 = distinct !DISubprogram(name: "{closure#0}<u8, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<f32>, polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> u8, u8>>>", linkageName: "_RNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB8_3VechE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB19_5slice4iter4IterfENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0EE0CslFlrwjHoTci_14polars_compute", scope: !770, file: !707, line: 4028, type: !599, scopeLine: 4028, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20385 = distinct !DISubprogram(name: "{closure#0}<u8, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<u8, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<f32>, polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> u8, u8>>>>", linkageName: "_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB1p_3VechE14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterfENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0EE0E0CslFlrwjHoTci_14polars_compute", scope: !772, file: !684, line: 884, type: !599, scopeLine: 884, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20386 = distinct !DILocation(line: 88, column: 21, scope: !20378, inlinedAt: !20379)
!20387 = distinct !DILocation(line: 884, column: 29, scope: !20385, inlinedAt: !20386)
!20388 = distinct !DILocation(line: 4029, column: 36, scope: !20384, inlinedAt: !20387)
!20389 = distinct !{!20389, !20371}
!20390 = distinct !{!20390, !"_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRfhuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3X_3VechE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterfEBY_EE0E0E0CslFlrwjHoTci_14polars_compute"}
!20391 = distinct !{!20391, !20390, !"_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRfhuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3X_3VechE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterfEBY_EE0E0E0CslFlrwjHoTci_14polars_compute: argument 0"}
!20392 = distinct !{!20392, !"_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB1p_3VechE14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterfENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0EE0E0CslFlrwjHoTci_14polars_compute"}
!20393 = distinct !{!20393, !20392, !"_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB1p_3VechE14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterfENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0EE0E0CslFlrwjHoTci_14polars_compute: argument 0"}
!20394 = distinct !{!20394, !"_RNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB8_3VechE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB19_5slice4iter4IterfENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0EE0CslFlrwjHoTci_14polars_compute"}
!20395 = distinct !{!20395, !20394, !"_RNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB8_3VechE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB19_5slice4iter4IterfENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0EE0CslFlrwjHoTci_14polars_compute: argument 0"}
!20396 = distinct !DISubprogram(name: "write<u8>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr5writehECslFlrwjHoTci_14polars_compute", scope: !597, file: !595, line: 1898, type: !599, scopeLine: 1898, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20397 = distinct !DILocation(line: 4029, column: 21, scope: !20384, inlinedAt: !20387)
!20398 = distinct !{!20398, !894, !895}
!20399 = distinct !DISubprogram(name: "increment_len", linkageName: "_RNvMNtNtCsgZ49sUHp3tW_5alloc3vec15set_len_on_dropNtB2_12SetLenOnDrop13increment_len", scope: !775, file: !773, line: 18, type: !599, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20400 = distinct !DILocation(line: 4033, column: 31, scope: !20384, inlinedAt: !20387)
!20401 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj13unchecked_add", scope: !690, file: !688, line: 886, type: !599, scopeLine: 886, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20402 = distinct !DILocation(line: 283, column: 36, scope: !20369, inlinedAt: !20355)
!20403 = distinct !{!20403, !894}
!20404 = distinct !DISubprogram(name: "drop_in_place<core::iter::adapters::map::map_fold::{closure_env#0}<&f32, u8, (), polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> u8, u8>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<u8, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<u8, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<f32>, polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> u8, u8>>>>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCINvNtNtNtB4_4iter8adapters3map8map_foldRfhuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0NCINvNvNtNtNtBP_6traits8iterator8Iterator8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4o_3VechE14extend_trustedINtBL_3MapINtNtNtB4_5slice4iter4IterfEB1p_EE0E0E0ECslFlrwjHoTci_14polars_compute", scope: !597, file: !595, line: 810, type: !601, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20405 = distinct !DISubprogram(name: "drop_in_place<core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<u8, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<u8, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<f32>, polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> u8, u8>>>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCINvNvNtNtNtNtB4_4iter6traits8iterator8Iterator8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB1Q_3VechE14extend_trustedINtNtNtBT_8adapters3map3MapINtNtNtB4_5slice4iter4IterfENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0EE0E0ECslFlrwjHoTci_14polars_compute", scope: !597, file: !595, line: 810, type: !601, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20406 = distinct !DISubprogram(name: "drop_in_place<alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<u8, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<f32>, polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> u8, u8>>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtBP_3VechE14extend_trustedINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB4_5slice4iter4IterfENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0EE0ECslFlrwjHoTci_14polars_compute", scope: !597, file: !595, line: 810, type: !601, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20407 = !DILocation(line: 128, column: 30, scope: !20349)
!20408 = !{!20372}
!20409 = !{!20374}
!20410 = !{!20389}
!20411 = !{!20395, !20393, !20391, !20374, !20372}
!20412 = !{!20395, !20393, !20391, !20374}
!20413 = !DILocation(line: 289, column: 13, scope: !20352, inlinedAt: !20355)
!20414 = !DILocation(line: 810, column: 1, scope: !20404, inlinedAt: !20413)
!20415 = !DILocation(line: 810, column: 1, scope: !20405, inlinedAt: !20414)
!20416 = !DILocation(line: 810, column: 1, scope: !20406, inlinedAt: !20415)
!20417 = !DILocation(line: 810, column: 1, scope: !107, inlinedAt: !20416)
!20418 = !DILocation(line: 128, column: 9, scope: !20349)
!20419 = !DILocation(line: 88, column: 5, scope: !20350, inlinedAt: !20407)
!20420 = !DILocation(line: 1717, column: 9, scope: !20351, inlinedAt: !20356)
!20421 = !DILocation(line: 25, column: 86, scope: !20353, inlinedAt: !20355)
!20422 = !DILocation(line: 729, column: 18, scope: !20358, inlinedAt: !20367)
!20423 = !DILocation(line: 28, column: 9, scope: !20363, inlinedAt: !20355)
!20424 = !DILocation(line: 0, scope: !20361, inlinedAt: !20355)
!20425 = !DILocation(line: 659, column: 28, scope: !20368, inlinedAt: !20370)
!20426 = !DILocation(line: 279, column: 27, scope: !20369, inlinedAt: !20355)
!20427 = !DILocation(line: 742, column: 44, scope: !20375, inlinedAt: !20382)
!20428 = !DILocation(line: 961, column: 18, scope: !20383, inlinedAt: !20388)
!20429 = !DILocation(line: 1921, column: 41, scope: !20396, inlinedAt: !20397)
!20430 = !DILocation(line: 284, column: 24, scope: !20369, inlinedAt: !20355)
!20431 = !DILocation(line: 19, column: 9, scope: !20399, inlinedAt: !20400)
!20432 = !DILocation(line: 898, column: 17, scope: !20401, inlinedAt: !20402)
!20433 = !DILocation(line: 31, column: 9, scope: !106, inlinedAt: !20417)
!20434 = !DILocation(line: 129, column: 6, scope: !20349)
!20435 = distinct !DISubprogram(name: "fold<i32, core::slice::iter::Iter<f32>, polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> i32, i32>, (), core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<i32, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<i32, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<f32>, polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> i32, i32>>>>>", linkageName: "_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterfENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivelE3as_lE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VeclE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute", scope: !675, file: !671, line: 124, type: !599, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20436 = distinct !DISubprogram(name: "map_fold<&f32, i32, (), polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> i32, i32>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<i32, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<i32, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<f32>, polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> i32, i32>>>>>", linkageName: "_RINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRfluNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivelE3as_lE0NCINvNvNtNtNtB6_6traits8iterator8Iterator8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3V_3VeclE14extend_trustedINtB2_3MapINtNtNtB8_5slice4iter4IterfEBW_EE0E0ECslFlrwjHoTci_14polars_compute", scope: !674, file: !671, line: 84, type: !599, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20437 = distinct !DISubprogram(name: "eq<f32>", linkageName: "_RNvXsd_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullfENtNtB9_3cmp9PartialEq2eqCslFlrwjHoTci_14polars_compute", scope: !780, file: !652, line: 1716, type: !599, scopeLine: 1716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20438 = distinct !DISubprogram(name: "fold<f32, (), core::iter::adapters::map::map_fold::{closure_env#0}<&f32, i32, (), polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> i32, i32>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<i32, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<i32, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<f32>, polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> i32, i32>>>>>>", linkageName: "_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfluNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivelE3as_lE0NCINvNvBS_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VeclE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute", scope: !783, file: !781, line: 259, type: !599, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20439 = distinct !DILexicalBlock(scope: !20438, file: !781, line: 25, column: 86)
!20440 = distinct !DILexicalBlock(scope: !20439, file: !781, line: 33, column: 13)
!20441 = distinct !DILocation(line: 128, column: 19, scope: !20435)
!20442 = distinct !DILocation(line: 44, column: 20, scope: !20440, inlinedAt: !20441)
!20443 = distinct !DISubprogram(name: "offset_from_unsigned<f32>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPf20offset_from_unsignedCslFlrwjHoTci_14polars_compute", scope: !786, file: !784, line: 701, type: !599, scopeLine: 701, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20444 = distinct !DILexicalBlock(scope: !20443, file: !784, line: 726, column: 9)
!20445 = distinct !DISubprogram(name: "offset_from_unsigned<f32>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOf20offset_from_unsignedCslFlrwjHoTci_14polars_compute", scope: !756, file: !754, line: 882, type: !599, scopeLine: 882, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20446 = distinct !DISubprogram(name: "offset_from_unsigned<f32>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullfE20offset_from_unsignedCslFlrwjHoTci_14polars_compute", scope: !654, file: !652, line: 948, type: !599, scopeLine: 948, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20447 = distinct !DILexicalBlock(scope: !20438, file: !781, line: 273, column: 17)
!20448 = distinct !DILexicalBlock(scope: !20447, file: !781, line: 274, column: 17)
!20449 = distinct !DILexicalBlock(scope: !20448, file: !781, line: 25, column: 86)
!20450 = distinct !DILexicalBlock(scope: !20449, file: !781, line: 33, column: 13)
!20451 = distinct !DILocation(line: 57, column: 30, scope: !20450, inlinedAt: !20441)
!20452 = distinct !DILocation(line: 953, column: 32, scope: !20446, inlinedAt: !20451)
!20453 = distinct !DILocation(line: 887, column: 37, scope: !20445, inlinedAt: !20452)
!20454 = distinct !DISubprogram(name: "add<f32>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullfE3addCslFlrwjHoTci_14polars_compute", scope: !654, file: !652, line: 651, type: !599, scopeLine: 651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20455 = distinct !DILexicalBlock(scope: !20448, file: !781, line: 275, column: 17)
!20456 = distinct !DILocation(line: 279, column: 67, scope: !20455, inlinedAt: !20441)
!20457 = distinct !{!20457, !"_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfluNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivelE3as_lE0NCINvNvBS_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VeclE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute"}
!20458 = distinct !{!20458, !20457, !"_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfluNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivelE3as_lE0NCINvNvBS_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VeclE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute: argument 0"}
!20459 = distinct !DISubprogram(name: "as_", linkageName: "_RNvXs3A_NtCslmKYcnV0hjo_10num_traits4castfINtB6_11AsPrimitivelE3as_", scope: !977, file: !803, line: 742, type: !599, scopeLine: 742, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20460 = distinct !DISubprogram(name: "call<fn(f32) -> i32, (f32)>", linkageName: "_RNvYNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivelE3as_INtNtNtCscgRAwXFJnXP_4core3ops8function2FnTfEE4callCslFlrwjHoTci_14polars_compute", scope: !965, file: !628, line: 79, type: !601, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20461 = distinct !DISubprogram(name: "{closure#0}<f32, fn(f32) -> i32, i32>", linkageName: "_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivelE3as_lE0CslFlrwjHoTci_14polars_compute", scope: !944, file: !941, line: 24, type: !601, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20462 = distinct !DISubprogram(name: "{closure#0}<&f32, i32, (), polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> i32, i32>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<i32, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<i32, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<f32>, polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> i32, i32>>>>>", linkageName: "_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRfluNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivelE3as_lE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3X_3VeclE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterfEBY_EE0E0E0CslFlrwjHoTci_14polars_compute", scope: !696, file: !671, line: 88, type: !601, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20463 = distinct !DILocation(line: 279, column: 27, scope: !20455, inlinedAt: !20441)
!20464 = distinct !DILocation(line: 88, column: 28, scope: !20462, inlinedAt: !20463)
!20465 = distinct !DILocation(line: 24, column: 48, scope: !20461, inlinedAt: !20464)
!20466 = distinct !DILocation(line: 79, column: 5, scope: !20460, inlinedAt: !20465)
!20467 = distinct !DISubprogram(name: "add<i32>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOl3addCslFlrwjHoTci_14polars_compute", scope: !756, file: !754, line: 927, type: !599, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20468 = distinct !DISubprogram(name: "{closure#0}<i32, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<f32>, polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> i32, i32>>>", linkageName: "_RNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB8_3VeclE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB19_5slice4iter4IterfENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivelE3as_lE0EE0CslFlrwjHoTci_14polars_compute", scope: !770, file: !707, line: 4028, type: !599, scopeLine: 4028, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20469 = distinct !DISubprogram(name: "{closure#0}<i32, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<i32, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<f32>, polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> i32, i32>>>>", linkageName: "_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB1p_3VeclE14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterfENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivelE3as_lE0EE0E0CslFlrwjHoTci_14polars_compute", scope: !772, file: !684, line: 884, type: !599, scopeLine: 884, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20470 = distinct !DILocation(line: 88, column: 21, scope: !20462, inlinedAt: !20463)
!20471 = distinct !DILocation(line: 884, column: 29, scope: !20469, inlinedAt: !20470)
!20472 = distinct !DILocation(line: 4029, column: 36, scope: !20468, inlinedAt: !20471)
!20473 = distinct !{!20473, !"_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRfluNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivelE3as_lE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3X_3VeclE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterfEBY_EE0E0E0CslFlrwjHoTci_14polars_compute"}
!20474 = distinct !{!20474, !20473, !"_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRfluNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivelE3as_lE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3X_3VeclE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterfEBY_EE0E0E0CslFlrwjHoTci_14polars_compute: argument 0"}
!20475 = distinct !{!20475, !"_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB1p_3VeclE14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterfENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivelE3as_lE0EE0E0CslFlrwjHoTci_14polars_compute"}
!20476 = distinct !{!20476, !20475, !"_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB1p_3VeclE14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterfENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivelE3as_lE0EE0E0CslFlrwjHoTci_14polars_compute: argument 0"}
!20477 = distinct !{!20477, !"_RNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB8_3VeclE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB19_5slice4iter4IterfENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivelE3as_lE0EE0CslFlrwjHoTci_14polars_compute"}
!20478 = distinct !{!20478, !20477, !"_RNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB8_3VeclE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB19_5slice4iter4IterfENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivelE3as_lE0EE0CslFlrwjHoTci_14polars_compute: argument 0"}
!20479 = distinct !DISubprogram(name: "write<i32>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr5writelECslFlrwjHoTci_14polars_compute", scope: !597, file: !595, line: 1898, type: !599, scopeLine: 1898, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20480 = distinct !DILocation(line: 4029, column: 21, scope: !20468, inlinedAt: !20471)
!20481 = distinct !{!20481, !894, !895}
!20482 = distinct !DISubprogram(name: "increment_len", linkageName: "_RNvMNtNtCsgZ49sUHp3tW_5alloc3vec15set_len_on_dropNtB2_12SetLenOnDrop13increment_len", scope: !775, file: !773, line: 18, type: !599, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20483 = distinct !DILocation(line: 4033, column: 31, scope: !20468, inlinedAt: !20471)
!20484 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj13unchecked_add", scope: !690, file: !688, line: 886, type: !599, scopeLine: 886, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20485 = distinct !DILocation(line: 283, column: 36, scope: !20455, inlinedAt: !20441)
!20486 = distinct !{!20486, !894}
!20487 = distinct !DISubprogram(name: "drop_in_place<core::iter::adapters::map::map_fold::{closure_env#0}<&f32, i32, (), polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> i32, i32>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<i32, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<i32, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<f32>, polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> i32, i32>>>>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCINvNtNtNtB4_4iter8adapters3map8map_foldRfluNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivelE3as_lE0NCINvNvNtNtNtBP_6traits8iterator8Iterator8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4o_3VeclE14extend_trustedINtBL_3MapINtNtNtB4_5slice4iter4IterfEB1p_EE0E0E0ECslFlrwjHoTci_14polars_compute", scope: !597, file: !595, line: 810, type: !601, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20488 = distinct !DISubprogram(name: "drop_in_place<core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<i32, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<i32, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<f32>, polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> i32, i32>>>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCINvNvNtNtNtNtB4_4iter6traits8iterator8Iterator8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB1Q_3VeclE14extend_trustedINtNtNtBT_8adapters3map3MapINtNtNtB4_5slice4iter4IterfENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivelE3as_lE0EE0E0ECslFlrwjHoTci_14polars_compute", scope: !597, file: !595, line: 810, type: !601, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20489 = distinct !DISubprogram(name: "drop_in_place<alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<i32, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<f32>, polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> i32, i32>>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtBP_3VeclE14extend_trustedINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB4_5slice4iter4IterfENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivelE3as_lE0EE0ECslFlrwjHoTci_14polars_compute", scope: !597, file: !595, line: 810, type: !601, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20490 = !DILocation(line: 128, column: 30, scope: !20435)
!20491 = !{!20458}
!20492 = !{!20478, !20476, !20474, !20458}
!20493 = !DILocation(line: 289, column: 13, scope: !20438, inlinedAt: !20441)
!20494 = !DILocation(line: 810, column: 1, scope: !20487, inlinedAt: !20493)
!20495 = !DILocation(line: 810, column: 1, scope: !20488, inlinedAt: !20494)
!20496 = !DILocation(line: 810, column: 1, scope: !20489, inlinedAt: !20495)
!20497 = !DILocation(line: 810, column: 1, scope: !107, inlinedAt: !20496)
!20498 = !DILocation(line: 128, column: 9, scope: !20435)
!20499 = !DILocation(line: 88, column: 5, scope: !20436, inlinedAt: !20490)
!20500 = !DILocation(line: 1717, column: 9, scope: !20437, inlinedAt: !20442)
!20501 = !DILocation(line: 25, column: 86, scope: !20439, inlinedAt: !20441)
!20502 = !DILocation(line: 729, column: 18, scope: !20444, inlinedAt: !20453)
!20503 = !DILocation(line: 28, column: 9, scope: !20449, inlinedAt: !20441)
!20504 = !DILocation(line: 0, scope: !20447, inlinedAt: !20441)
!20505 = !DILocation(line: 659, column: 28, scope: !20454, inlinedAt: !20456)
!20506 = !DILocation(line: 279, column: 27, scope: !20455, inlinedAt: !20441)
!20507 = !DILocation(line: 742, column: 44, scope: !20459, inlinedAt: !20466)
!20508 = !DILocation(line: 961, column: 18, scope: !20467, inlinedAt: !20472)
!20509 = !DILocation(line: 1921, column: 41, scope: !20479, inlinedAt: !20480)
!20510 = !DILocation(line: 284, column: 24, scope: !20455, inlinedAt: !20441)
!20511 = !DILocation(line: 19, column: 9, scope: !20482, inlinedAt: !20483)
!20512 = !DILocation(line: 898, column: 17, scope: !20484, inlinedAt: !20485)
!20513 = !DILocation(line: 31, column: 9, scope: !106, inlinedAt: !20497)
!20514 = !DILocation(line: 129, column: 6, scope: !20435)
!20515 = distinct !DISubprogram(name: "fold<u32, core::slice::iter::Iter<f32>, polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> u32, u32>, (), core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<u32, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<u32, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<f32>, polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> u32, u32>>>>>", linkageName: "_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterfENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivemE3as_mE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4callmNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecmE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute", scope: !675, file: !671, line: 124, type: !599, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20516 = distinct !DISubprogram(name: "map_fold<&f32, u32, (), polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> u32, u32>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<u32, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<u32, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<f32>, polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> u32, u32>>>>>", linkageName: "_RINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRfmuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivemE3as_mE0NCINvNvNtNtNtB6_6traits8iterator8Iterator8for_each4callmNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3V_3VecmE14extend_trustedINtB2_3MapINtNtNtB8_5slice4iter4IterfEBW_EE0E0ECslFlrwjHoTci_14polars_compute", scope: !674, file: !671, line: 84, type: !599, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20517 = distinct !DISubprogram(name: "eq<f32>", linkageName: "_RNvXsd_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullfENtNtB9_3cmp9PartialEq2eqCslFlrwjHoTci_14polars_compute", scope: !780, file: !652, line: 1716, type: !599, scopeLine: 1716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20518 = distinct !DISubprogram(name: "fold<f32, (), core::iter::adapters::map::map_fold::{closure_env#0}<&f32, u32, (), polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> u32, u32>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<u32, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<u32, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<f32>, polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> u32, u32>>>>>>", linkageName: "_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfmuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivemE3as_mE0NCINvNvBS_8for_each4callmNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecmE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute", scope: !783, file: !781, line: 259, type: !599, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20519 = distinct !DILexicalBlock(scope: !20518, file: !781, line: 25, column: 86)
!20520 = distinct !DILexicalBlock(scope: !20519, file: !781, line: 33, column: 13)
!20521 = distinct !DILocation(line: 128, column: 19, scope: !20515)
!20522 = distinct !DILocation(line: 44, column: 20, scope: !20520, inlinedAt: !20521)
!20523 = distinct !DISubprogram(name: "offset_from_unsigned<f32>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPf20offset_from_unsignedCslFlrwjHoTci_14polars_compute", scope: !786, file: !784, line: 701, type: !599, scopeLine: 701, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20524 = distinct !DILexicalBlock(scope: !20523, file: !784, line: 726, column: 9)
!20525 = distinct !DISubprogram(name: "offset_from_unsigned<f32>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOf20offset_from_unsignedCslFlrwjHoTci_14polars_compute", scope: !756, file: !754, line: 882, type: !599, scopeLine: 882, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20526 = distinct !DISubprogram(name: "offset_from_unsigned<f32>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullfE20offset_from_unsignedCslFlrwjHoTci_14polars_compute", scope: !654, file: !652, line: 948, type: !599, scopeLine: 948, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20527 = distinct !DILexicalBlock(scope: !20518, file: !781, line: 273, column: 17)
!20528 = distinct !DILexicalBlock(scope: !20527, file: !781, line: 274, column: 17)
!20529 = distinct !DILexicalBlock(scope: !20528, file: !781, line: 25, column: 86)
!20530 = distinct !DILexicalBlock(scope: !20529, file: !781, line: 33, column: 13)
!20531 = distinct !DILocation(line: 57, column: 30, scope: !20530, inlinedAt: !20521)
!20532 = distinct !DILocation(line: 953, column: 32, scope: !20526, inlinedAt: !20531)
!20533 = distinct !DILocation(line: 887, column: 37, scope: !20525, inlinedAt: !20532)
!20534 = distinct !DISubprogram(name: "add<f32>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullfE3addCslFlrwjHoTci_14polars_compute", scope: !654, file: !652, line: 651, type: !599, scopeLine: 651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20535 = distinct !DILexicalBlock(scope: !20528, file: !781, line: 275, column: 17)
!20536 = distinct !DILocation(line: 279, column: 67, scope: !20535, inlinedAt: !20521)
!20537 = distinct !{!20537, !"_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfmuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivemE3as_mE0NCINvNvBS_8for_each4callmNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecmE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute"}
!20538 = distinct !{!20538, !20537, !"_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfmuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivemE3as_mE0NCINvNvBS_8for_each4callmNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecmE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute: argument 0"}
!20539 = distinct !DISubprogram(name: "as_", linkageName: "_RNvXs3u_NtCslmKYcnV0hjo_10num_traits4castfINtB6_11AsPrimitivemE3as_", scope: !978, file: !803, line: 742, type: !599, scopeLine: 742, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20540 = distinct !DISubprogram(name: "call<fn(f32) -> u32, (f32)>", linkageName: "_RNvYNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivemE3as_INtNtNtCscgRAwXFJnXP_4core3ops8function2FnTfEE4callCslFlrwjHoTci_14polars_compute", scope: !965, file: !628, line: 79, type: !601, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20541 = distinct !DISubprogram(name: "{closure#0}<f32, fn(f32) -> u32, u32>", linkageName: "_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivemE3as_mE0CslFlrwjHoTci_14polars_compute", scope: !944, file: !941, line: 24, type: !601, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20542 = distinct !DISubprogram(name: "{closure#0}<&f32, u32, (), polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> u32, u32>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<u32, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<u32, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<f32>, polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> u32, u32>>>>>", linkageName: "_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRfmuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivemE3as_mE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callmNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3X_3VecmE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterfEBY_EE0E0E0CslFlrwjHoTci_14polars_compute", scope: !696, file: !671, line: 88, type: !601, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20543 = distinct !DILocation(line: 279, column: 27, scope: !20535, inlinedAt: !20521)
!20544 = distinct !DILocation(line: 88, column: 28, scope: !20542, inlinedAt: !20543)
!20545 = distinct !DILocation(line: 24, column: 48, scope: !20541, inlinedAt: !20544)
!20546 = distinct !DILocation(line: 79, column: 5, scope: !20540, inlinedAt: !20545)
!20547 = distinct !DISubprogram(name: "add<u32>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOm3addCslFlrwjHoTci_14polars_compute", scope: !756, file: !754, line: 927, type: !599, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20548 = distinct !DISubprogram(name: "{closure#0}<u32, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<f32>, polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> u32, u32>>>", linkageName: "_RNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB8_3VecmE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB19_5slice4iter4IterfENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivemE3as_mE0EE0CslFlrwjHoTci_14polars_compute", scope: !770, file: !707, line: 4028, type: !599, scopeLine: 4028, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20549 = distinct !DISubprogram(name: "{closure#0}<u32, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<u32, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<f32>, polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> u32, u32>>>>", linkageName: "_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callmNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB1p_3VecmE14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterfENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivemE3as_mE0EE0E0CslFlrwjHoTci_14polars_compute", scope: !772, file: !684, line: 884, type: !599, scopeLine: 884, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20550 = distinct !DILocation(line: 88, column: 21, scope: !20542, inlinedAt: !20543)
!20551 = distinct !DILocation(line: 884, column: 29, scope: !20549, inlinedAt: !20550)
!20552 = distinct !DILocation(line: 4029, column: 36, scope: !20548, inlinedAt: !20551)
!20553 = distinct !{!20553, !"_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRfmuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivemE3as_mE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callmNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3X_3VecmE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterfEBY_EE0E0E0CslFlrwjHoTci_14polars_compute"}
!20554 = distinct !{!20554, !20553, !"_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRfmuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivemE3as_mE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callmNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3X_3VecmE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterfEBY_EE0E0E0CslFlrwjHoTci_14polars_compute: argument 0"}
!20555 = distinct !{!20555, !"_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callmNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB1p_3VecmE14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterfENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivemE3as_mE0EE0E0CslFlrwjHoTci_14polars_compute"}
!20556 = distinct !{!20556, !20555, !"_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callmNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB1p_3VecmE14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterfENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivemE3as_mE0EE0E0CslFlrwjHoTci_14polars_compute: argument 0"}
!20557 = distinct !{!20557, !"_RNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB8_3VecmE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB19_5slice4iter4IterfENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivemE3as_mE0EE0CslFlrwjHoTci_14polars_compute"}
!20558 = distinct !{!20558, !20557, !"_RNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB8_3VecmE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB19_5slice4iter4IterfENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivemE3as_mE0EE0CslFlrwjHoTci_14polars_compute: argument 0"}
!20559 = distinct !DISubprogram(name: "write<u32>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr5writemECslFlrwjHoTci_14polars_compute", scope: !597, file: !595, line: 1898, type: !599, scopeLine: 1898, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20560 = distinct !DILocation(line: 4029, column: 21, scope: !20548, inlinedAt: !20551)
!20561 = distinct !{!20561, !894, !895}
!20562 = distinct !DISubprogram(name: "increment_len", linkageName: "_RNvMNtNtCsgZ49sUHp3tW_5alloc3vec15set_len_on_dropNtB2_12SetLenOnDrop13increment_len", scope: !775, file: !773, line: 18, type: !599, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20563 = distinct !DILocation(line: 4033, column: 31, scope: !20548, inlinedAt: !20551)
!20564 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj13unchecked_add", scope: !690, file: !688, line: 886, type: !599, scopeLine: 886, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20565 = distinct !DILocation(line: 283, column: 36, scope: !20535, inlinedAt: !20521)
!20566 = distinct !{!20566, !894}
!20567 = distinct !DISubprogram(name: "drop_in_place<core::iter::adapters::map::map_fold::{closure_env#0}<&f32, u32, (), polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> u32, u32>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<u32, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<u32, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<f32>, polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> u32, u32>>>>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCINvNtNtNtB4_4iter8adapters3map8map_foldRfmuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivemE3as_mE0NCINvNvNtNtNtBP_6traits8iterator8Iterator8for_each4callmNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4o_3VecmE14extend_trustedINtBL_3MapINtNtNtB4_5slice4iter4IterfEB1p_EE0E0E0ECslFlrwjHoTci_14polars_compute", scope: !597, file: !595, line: 810, type: !601, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20568 = distinct !DISubprogram(name: "drop_in_place<core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<u32, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<u32, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<f32>, polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> u32, u32>>>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCINvNvNtNtNtNtB4_4iter6traits8iterator8Iterator8for_each4callmNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB1Q_3VecmE14extend_trustedINtNtNtBT_8adapters3map3MapINtNtNtB4_5slice4iter4IterfENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivemE3as_mE0EE0E0ECslFlrwjHoTci_14polars_compute", scope: !597, file: !595, line: 810, type: !601, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20569 = distinct !DISubprogram(name: "drop_in_place<alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<u32, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<f32>, polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> u32, u32>>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtBP_3VecmE14extend_trustedINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB4_5slice4iter4IterfENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivemE3as_mE0EE0ECslFlrwjHoTci_14polars_compute", scope: !597, file: !595, line: 810, type: !601, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20570 = !DILocation(line: 128, column: 30, scope: !20515)
!20571 = !{!20538}
!20572 = !{!20558, !20556, !20554, !20538}
!20573 = !DILocation(line: 289, column: 13, scope: !20518, inlinedAt: !20521)
!20574 = !DILocation(line: 810, column: 1, scope: !20567, inlinedAt: !20573)
!20575 = !DILocation(line: 810, column: 1, scope: !20568, inlinedAt: !20574)
!20576 = !DILocation(line: 810, column: 1, scope: !20569, inlinedAt: !20575)
!20577 = !DILocation(line: 810, column: 1, scope: !107, inlinedAt: !20576)
!20578 = !DILocation(line: 128, column: 9, scope: !20515)
!20579 = !DILocation(line: 88, column: 5, scope: !20516, inlinedAt: !20570)
!20580 = !DILocation(line: 1717, column: 9, scope: !20517, inlinedAt: !20522)
!20581 = !DILocation(line: 25, column: 86, scope: !20519, inlinedAt: !20521)
!20582 = !DILocation(line: 729, column: 18, scope: !20524, inlinedAt: !20533)
!20583 = !DILocation(line: 28, column: 9, scope: !20529, inlinedAt: !20521)
!20584 = !DILocation(line: 0, scope: !20527, inlinedAt: !20521)
!20585 = !DILocation(line: 659, column: 28, scope: !20534, inlinedAt: !20536)
!20586 = !DILocation(line: 279, column: 27, scope: !20535, inlinedAt: !20521)
!20587 = !DILocation(line: 742, column: 44, scope: !20539, inlinedAt: !20546)
!20588 = !DILocation(line: 961, column: 18, scope: !20547, inlinedAt: !20552)
!20589 = !DILocation(line: 1921, column: 41, scope: !20559, inlinedAt: !20560)
!20590 = !DILocation(line: 284, column: 24, scope: !20535, inlinedAt: !20521)
!20591 = !DILocation(line: 19, column: 9, scope: !20562, inlinedAt: !20563)
!20592 = !DILocation(line: 898, column: 17, scope: !20564, inlinedAt: !20565)
!20593 = !DILocation(line: 31, column: 9, scope: !106, inlinedAt: !20577)
!20594 = !DILocation(line: 129, column: 6, scope: !20515)
!20595 = distinct !DISubprogram(name: "fold<i128, core::slice::iter::Iter<f32>, polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> i128, i128>, (), core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<i128, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<i128, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<f32>, polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> i128, i128>>>>>", linkageName: "_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterfENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecnE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute", scope: !675, file: !671, line: 124, type: !599, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20596 = distinct !DISubprogram(name: "map_fold<&f32, i128, (), polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> i128, i128>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<i128, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<i128, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<f32>, polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> i128, i128>>>>>", linkageName: "_RINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRfnuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvNtNtNtB6_6traits8iterator8Iterator8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3V_3VecnE14extend_trustedINtB2_3MapINtNtNtB8_5slice4iter4IterfEBW_EE0E0ECslFlrwjHoTci_14polars_compute", scope: !674, file: !671, line: 84, type: !599, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20597 = distinct !DISubprogram(name: "eq<f32>", linkageName: "_RNvXsd_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullfENtNtB9_3cmp9PartialEq2eqCslFlrwjHoTci_14polars_compute", scope: !780, file: !652, line: 1716, type: !599, scopeLine: 1716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20598 = distinct !DISubprogram(name: "fold<f32, (), core::iter::adapters::map::map_fold::{closure_env#0}<&f32, i128, (), polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> i128, i128>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<i128, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<i128, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<f32>, polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> i128, i128>>>>>>", linkageName: "_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfnuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecnE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute", scope: !783, file: !781, line: 259, type: !599, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20599 = distinct !DILexicalBlock(scope: !20598, file: !781, line: 25, column: 86)
!20600 = distinct !DILexicalBlock(scope: !20599, file: !781, line: 33, column: 13)
!20601 = distinct !DILocation(line: 128, column: 19, scope: !20595)
!20602 = distinct !DILocation(line: 44, column: 20, scope: !20600, inlinedAt: !20601)
!20603 = distinct !DISubprogram(name: "offset_from_unsigned<f32>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPf20offset_from_unsignedCslFlrwjHoTci_14polars_compute", scope: !786, file: !784, line: 701, type: !599, scopeLine: 701, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20604 = distinct !DILexicalBlock(scope: !20603, file: !784, line: 726, column: 9)
!20605 = distinct !DISubprogram(name: "offset_from_unsigned<f32>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOf20offset_from_unsignedCslFlrwjHoTci_14polars_compute", scope: !756, file: !754, line: 882, type: !599, scopeLine: 882, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20606 = distinct !DISubprogram(name: "offset_from_unsigned<f32>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullfE20offset_from_unsignedCslFlrwjHoTci_14polars_compute", scope: !654, file: !652, line: 948, type: !599, scopeLine: 948, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20607 = distinct !DILexicalBlock(scope: !20598, file: !781, line: 273, column: 17)
!20608 = distinct !DILexicalBlock(scope: !20607, file: !781, line: 274, column: 17)
!20609 = distinct !DILexicalBlock(scope: !20608, file: !781, line: 25, column: 86)
!20610 = distinct !DILexicalBlock(scope: !20609, file: !781, line: 33, column: 13)
!20611 = distinct !DILocation(line: 57, column: 30, scope: !20610, inlinedAt: !20601)
!20612 = distinct !DILocation(line: 953, column: 32, scope: !20606, inlinedAt: !20611)
!20613 = distinct !DILocation(line: 887, column: 37, scope: !20605, inlinedAt: !20612)
!20614 = distinct !DISubprogram(name: "add<f32>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullfE3addCslFlrwjHoTci_14polars_compute", scope: !654, file: !652, line: 651, type: !599, scopeLine: 651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20615 = distinct !DILexicalBlock(scope: !20608, file: !781, line: 275, column: 17)
!20616 = distinct !DILocation(line: 279, column: 67, scope: !20615, inlinedAt: !20601)
!20617 = distinct !{!20617, !"_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfnuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecnE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute"}
!20618 = distinct !{!20618, !20617, !"_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfnuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecnE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute: argument 0"}
!20619 = distinct !DISubprogram(name: "as_", linkageName: "_RNvXs3C_NtCslmKYcnV0hjo_10num_traits4castfINtB6_11AsPrimitivenE3as_", scope: !20650, file: !803, line: 742, type: !599, scopeLine: 742, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20620 = distinct !DISubprogram(name: "call<fn(f32) -> i128, (f32)>", linkageName: "_RNvYNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_INtNtNtCscgRAwXFJnXP_4core3ops8function2FnTfEE4callCslFlrwjHoTci_14polars_compute", scope: !965, file: !628, line: 79, type: !601, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20621 = distinct !DISubprogram(name: "{closure#0}<f32, fn(f32) -> i128, i128>", linkageName: "_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0CslFlrwjHoTci_14polars_compute", scope: !944, file: !941, line: 24, type: !601, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20622 = distinct !DISubprogram(name: "{closure#0}<&f32, i128, (), polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> i128, i128>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<i128, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<i128, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<f32>, polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> i128, i128>>>>>", linkageName: "_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRfnuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3X_3VecnE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterfEBY_EE0E0E0CslFlrwjHoTci_14polars_compute", scope: !696, file: !671, line: 88, type: !601, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20623 = distinct !DILocation(line: 279, column: 27, scope: !20615, inlinedAt: !20601)
!20624 = distinct !DILocation(line: 88, column: 28, scope: !20622, inlinedAt: !20623)
!20625 = distinct !DILocation(line: 24, column: 48, scope: !20621, inlinedAt: !20624)
!20626 = distinct !DILocation(line: 79, column: 5, scope: !20620, inlinedAt: !20625)
!20627 = distinct !DISubprogram(name: "add<i128>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOn3addCslFlrwjHoTci_14polars_compute", scope: !756, file: !754, line: 927, type: !599, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20628 = distinct !DISubprogram(name: "{closure#0}<i128, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<f32>, polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> i128, i128>>>", linkageName: "_RNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB8_3VecnE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB19_5slice4iter4IterfENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0EE0CslFlrwjHoTci_14polars_compute", scope: !770, file: !707, line: 4028, type: !599, scopeLine: 4028, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
!20629 = distinct !DISubprogram(name: "{closure#0}<i128, alloc::vec::{impl#21}::extend_trusted::{closure_env#0}<i128, alloc::alloc::Global, core::iter::adapters::map::Map<core::slice::iter::Iter<f32>, polars_arrow::compute::arity::unary::{closure_env#0}<f32, fn(f32) -> i128, i128>>>>", linkageName: "_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB1p_3VecnE14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterfENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryfNvYfINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0EE0E0CslFlrwjHoTci_14polars_compute", scope: !772, file: !684, line: 884, type: !599, scopeLine: 884, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !598)
end_hunk_6
