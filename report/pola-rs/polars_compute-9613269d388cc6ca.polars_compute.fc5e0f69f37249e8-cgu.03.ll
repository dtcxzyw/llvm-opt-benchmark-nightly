Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_compute-9613269d388cc6ca.polars_compute.fc5e0f69f37249e8-cgu.03?download=true
inline.NumInlined: 4552
inline.NumDeleted: 3455
loop-unroll.NumRuntimeUnrolled: 143
loop-unroll.NumUnrolled: 143
begin_hunk_0_@_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IteraENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_dE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecdE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute:bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.n, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.az, %scalar.ph ], !dbg !18027
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !18027, !noalias !18002
  ret void, !dbg !18028
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IteraENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivefE3as_fE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecfE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !18029 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !18099, !nonnull !598, !noundef !598 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18099
  %i.c = load ptr, ptr %i.b, align 8, !dbg !18099, !nonnull !598, !noundef !598 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !18100 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18100
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !18100 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !18100
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !18100 ; 8 uses
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !18101
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRafuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivefE3as_fE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.b, !dbg !18102

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !18103    ; 4 uses
  %i.f = ptrtoint ptr %i.a to i64, !dbg !18103    ; 4 uses
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !18103      ; 4 uses
  %min.iters.check = icmp ult i64 %i.g, 12, !dbg !18104
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !18104

vector.memcheck:                                  ; preds = %bb.b
  %i.h = shl i64 %.sroa.5.0.copyload, 2, !dbg !18104
  %i.i = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.h, !dbg !18104
  %i.j = add i64 %.sroa.5.0.copyload, %i.e, !dbg !18104
  %i.k = sub i64 %i.j, %i.f, !dbg !18104
  %i.l = shl i64 %i.k, 2, !dbg !18104
  %i.m = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.l, !dbg !18104
  %bound0 = icmp ult ptr %i.i, %i.c, !dbg !18104
  %bound1 = icmp ult ptr %i.a, %i.m, !dbg !18104
  %found.conflict = and i1 %bound0, %bound1, !dbg !18104
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph, !dbg !18105

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.g, -8                       ; 4 uses
  %i.n = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.o = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !18105

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !18105 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 %index, !dbg !18106 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4, !dbg !18107
  %wide.load = load <4 x i8>, ptr %i.p, align 1, !dbg !18107, !alias.scope !18089, !noalias !18090
  %wide.load4 = load <4 x i8>, ptr %i.q, align 1, !dbg !18107, !alias.scope !18089, !noalias !18090
  %i.r = sitofp <4 x i8> %wide.load to <4 x float>, !dbg !18108
  %i.s = sitofp <4 x i8> %wide.load4 to <4 x float>, !dbg !18108
  %i.t = getelementptr [4 x i8], ptr %i.o, i64 %index, !dbg !18109 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !18110
  store <4 x float> %i.r, ptr %i.t, align 4, !dbg !18110, !alias.scope !18091, !noalias !18092
  store <4 x float> %i.s, ptr %i.u, align 4, !dbg !18110, !alias.scope !18091, !noalias !18092
  %index.next = add nuw i64 %index, 8, !dbg !18105 ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec, !dbg !18111
  br i1 %i.v, label %middle.block, label %vector.body, !dbg !18111, !llvm.loop !18078

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec, !dbg !18111
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRafuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivefE3as_fE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph.preheader, !dbg !18111

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.n, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %i.w = sub i64 %i.e, %i.f, !dbg !18111
  %xtraiter = and i64 %i.w, 3, !dbg !18111        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !18111
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !18111

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.x = phi i64 [ %i.ab, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ], !dbg !18106 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.ac, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], !dbg !18105 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.prol, !dbg !18106
  %.val16.i.prol = load i8, ptr %i.y, align 1, !dbg !18107, !noalias !18090, !noundef !598
  %i.z = sitofp i8 %.val16.i.prol to float, !dbg !18108
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.x, !dbg !18109
  store float %i.z, ptr %i.aa, align 4, !dbg !18110, !noalias !18093
  %i.ab = add i64 %i.x, 1, !dbg !18112            ; 3 uses
  %i.ac = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !18113 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !18111 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !18111
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !18111, !llvm.loop !18083

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ab, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ab, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.ac, %scalar.ph.prol ]
  %i.ad = sub i64 %.sroa.01.0.i.ph, %i.e, !dbg !18111
  %i.ae = add i64 %i.ad, %i.f, !dbg !18111
  %i.af = icmp ugt i64 %i.ae, -4, !dbg !18111
  br i1 %i.af, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRafuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivefE3as_fE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph, !dbg !18111

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ag = phi i64 [ %i.az, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !18106 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.ba, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !18105 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18106
  %.val16.i = load i8, ptr %i.ah, align 1, !dbg !18107, !noalias !18090, !noundef !598
  %i.ai = sitofp i8 %.val16.i to float, !dbg !18108
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ag, !dbg !18109
  store float %i.ai, ptr %i.aj, align 4, !dbg !18110, !noalias !18093
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18106
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1, !dbg !18106
  %.val16.i.1 = load i8, ptr %i.al, align 1, !dbg !18107, !noalias !18090, !noundef !598
  %i.am = sitofp i8 %.val16.i.1 to float, !dbg !18108
  %i.an = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ag, !dbg !18109
  %i.ao = getelementptr i8, ptr %i.an, i64 4, !dbg !18109
  store float %i.am, ptr %i.ao, align 4, !dbg !18110, !noalias !18093
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18106
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 2, !dbg !18106
  %.val16.i.2 = load i8, ptr %i.aq, align 1, !dbg !18107, !noalias !18090, !noundef !598
  %i.ar = sitofp i8 %.val16.i.2 to float, !dbg !18108
  %i.as = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ag, !dbg !18109
  %i.at = getelementptr i8, ptr %i.as, i64 8, !dbg !18109
  store float %i.ar, ptr %i.at, align 4, !dbg !18110, !noalias !18093
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18106
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 3, !dbg !18106
  %.val16.i.3 = load i8, ptr %i.av, align 1, !dbg !18107, !noalias !18090, !noundef !598
  %i.aw = sitofp i8 %.val16.i.3 to float, !dbg !18108
  %i.ax = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ag, !dbg !18109
  %i.ay = getelementptr i8, ptr %i.ax, i64 12, !dbg !18109
  store float %i.aw, ptr %i.ay, align 4, !dbg !18110, !noalias !18093
  %i.az = add i64 %i.ag, 4, !dbg !18112           ; 2 uses
  %i.ba = add nuw i64 %.sroa.01.0.i, 4, !dbg !18113 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, %i.g, !dbg !18111
  br i1 %i.bb, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRafuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivefE3as_fE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph, !dbg !18111, !llvm.loop !18084

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRafuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivefE3as_fE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.n, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.az, %scalar.ph ], !dbg !18114
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !18114, !noalias !18090
  ret void, !dbg !18115
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IteraENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VechE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !18116 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !18175, !nonnull !598, !noundef !598 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18175
  %i.c = load ptr, ptr %i.b, align 8, !dbg !18175, !nonnull !598, !noundef !598 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !18176 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18176
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !18176 ; 8 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !18176
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !18176 ; 8 uses
  %.sroa.7.0.copyload3 = ptrtoaddr ptr %.sroa.7.0.copyload to i64, !dbg !18177
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !18177
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRahuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0NCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %iter.check, !dbg !18178

iter.check:                                       ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !18179    ; 3 uses
  %i.f = ptrtoint ptr %i.a to i64, !dbg !18179    ; 4 uses
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !18179      ; 8 uses
  %min.iters.check = icmp ult i64 %i.g, 4, !dbg !18180
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck, !dbg !18180

vector.memcheck:                                  ; preds = %iter.check
  %i.h = add i64 %.sroa.5.0.copyload, %.sroa.7.0.copyload3, !dbg !18180
  %i.i = sub i64 %i.f, %i.h, !dbg !18180
  %diff.check = icmp ugt i64 %i.i, -32, !dbg !18180
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !18181

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check4 = icmp ult i64 %i.g, 32, !dbg !18180
  br i1 %min.iters.check4, label %vec.epilog.ph, label %vector.ph, !dbg !18180

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.j = and i64 %i.g, 28
  %n.vec = and i64 %i.g, -32                      ; 5 uses
  %i.k = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.l = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !18180

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !18181 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 %index, !dbg !18182 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !18183
  %wide.load = load <16 x i8>, ptr %i.m, align 1, !dbg !18183, !noalias !18168
  %wide.load5 = load <16 x i8>, ptr %i.n, align 1, !dbg !18183, !noalias !18168
  %i.o = getelementptr i8, ptr %i.l, i64 %index, !dbg !18184 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !18185
  store <16 x i8> %wide.load, ptr %i.o, align 1, !dbg !18185, !noalias !18169
  store <16 x i8> %wide.load5, ptr %i.p, align 1, !dbg !18185, !noalias !18169
  %index.next = add nuw i64 %index, 32, !dbg !18181 ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec, !dbg !18186
  br i1 %i.q, label %middle.block, label %vector.body, !dbg !18186, !llvm.loop !18156

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec, !dbg !18186
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRahuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0NCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.iter.check, !dbg !18186

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.j, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !986

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !18181
  %n.vec6 = and i64 %i.g, -4                      ; 4 uses
  %i.r = add i64 %.sroa.5.0.copyload, %n.vec6     ; 2 uses
  %i.s = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index7 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next9, %vec.epilog.vector.body ], !dbg !18181 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 %index7, !dbg !18182
  %wide.load8 = load <4 x i8>, ptr %i.t, align 1, !dbg !18183, !noalias !18168
  %i.u = getelementptr i8, ptr %i.s, i64 %index7, !dbg !18184
  store <4 x i8> %wide.load8, ptr %i.u, align 1, !dbg !18185, !noalias !18169
  %index.next9 = add nuw i64 %index7, 4, !dbg !18181 ; 2 uses
  %i.v = icmp eq i64 %index.next9, %n.vec6, !dbg !18186
  br i1 %i.v, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !18186, !llvm.loop !18157

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n10 = icmp eq i64 %i.g, %n.vec6, !dbg !18186
  br i1 %cmp.n10, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRahuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0NCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph.preheader, !dbg !18186

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %iter.check ], [ %.sroa.5.0.copyload, %vector.memcheck ], [ %i.k, %vec.epilog.iter.check ], [ %i.r, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec6, %vec.epilog.middle.block ] ; 3 uses
  %i.w = sub i64 %i.e, %i.f, !dbg !18186
  %xtraiter = and i64 %i.w, 3, !dbg !18186        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !18186
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !18186

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %i.x = phi i64 [ %i.aa, %vec.epilog.scalar.ph.prol ], [ %.ph, %vec.epilog.scalar.ph.preheader ], !dbg !18182 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.ab, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !18181 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.prol, !dbg !18182
  %.val16.i.prol = load i8, ptr %i.y, align 1, !dbg !18183, !noalias !18168, !noundef !598
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.x, !dbg !18184
  store i8 %.val16.i.prol, ptr %i.z, align 1, !dbg !18185, !noalias !18169
  %i.aa = add i64 %i.x, 1, !dbg !18187            ; 3 uses
  %i.ab = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !18188 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !18186 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !18186
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !18186, !llvm.loop !18162

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.aa, %vec.epilog.scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.aa, %vec.epilog.scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ab, %vec.epilog.scalar.ph.prol ]
  %i.ac = sub i64 %.sroa.01.0.i.ph, %i.e, !dbg !18186
  %i.ad = add i64 %i.ac, %i.f, !dbg !18186
  %i.ae = icmp ugt i64 %i.ad, -4, !dbg !18186
  br i1 %i.ae, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRahuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0NCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph, !dbg !18186

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.af = phi i64 [ %i.au, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !18182 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.av, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !18181 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18182
  %.val16.i = load i8, ptr %i.ag, align 1, !dbg !18183, !noalias !18168, !noundef !598
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.af, !dbg !18184
  store i8 %.val16.i, ptr %i.ah, align 1, !dbg !18185, !noalias !18169
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18182
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1, !dbg !18182
  %.val16.i.1 = load i8, ptr %i.aj, align 1, !dbg !18183, !noalias !18168, !noundef !598
  %i.ak = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.af, !dbg !18184
  %i.al = getelementptr i8, ptr %i.ak, i64 1, !dbg !18184
  store i8 %.val16.i.1, ptr %i.al, align 1, !dbg !18185, !noalias !18169
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18182
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 2, !dbg !18182
  %.val16.i.2 = load i8, ptr %i.an, align 1, !dbg !18183, !noalias !18168, !noundef !598
  %i.ao = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.af, !dbg !18184
  %i.ap = getelementptr i8, ptr %i.ao, i64 2, !dbg !18184
  store i8 %.val16.i.2, ptr %i.ap, align 1, !dbg !18185, !noalias !18169
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18182
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 3, !dbg !18182
  %.val16.i.3 = load i8, ptr %i.ar, align 1, !dbg !18183, !noalias !18168, !noundef !598
  %i.as = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.af, !dbg !18184
  %i.at = getelementptr i8, ptr %i.as, i64 3, !dbg !18184
  store i8 %.val16.i.3, ptr %i.at, align 1, !dbg !18185, !noalias !18169
  %i.au = add i64 %i.af, 4, !dbg !18187           ; 2 uses
  %i.av = add nuw i64 %.sroa.01.0.i, 4, !dbg !18188 ; 2 uses
  %i.aw = icmp eq i64 %i.av, %i.g, !dbg !18186
  br i1 %i.aw, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRahuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0NCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph, !dbg !18186, !llvm.loop !18163

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRahuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0NCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.r, %vec.epilog.middle.block ], [ %i.k, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.au, %vec.epilog.scalar.ph ], !dbg !18189
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !18189, !noalias !18168
  ret void, !dbg !18190
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IteraENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivelE3as_lE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VeclE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !18191 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !18262, !nonnull !598, !noundef !598 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18262
  %i.c = load ptr, ptr %i.b, align 8, !dbg !18262, !nonnull !598, !noundef !598 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !18263 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18263
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !18263 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !18263
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !18263 ; 8 uses
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !18264
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaluNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivelE3as_lE0NCINvNvBS_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VeclE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.b, !dbg !18265

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !18266    ; 4 uses
  %i.f = ptrtoint ptr %i.a to i64, !dbg !18266    ; 4 uses
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !18266      ; 4 uses
  %min.iters.check = icmp ult i64 %i.g, 16, !dbg !18267
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !18267

vector.memcheck:                                  ; preds = %bb.b
  %i.h = shl i64 %.sroa.5.0.copyload, 2, !dbg !18267
  %i.i = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.h, !dbg !18267
  %i.j = add i64 %.sroa.5.0.copyload, %i.e, !dbg !18267
  %i.k = sub i64 %i.j, %i.f, !dbg !18267
  %i.l = shl i64 %i.k, 2, !dbg !18267
  %i.m = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.l, !dbg !18267
  %bound0 = icmp ult ptr %i.i, %i.c, !dbg !18267
  %bound1 = icmp ult ptr %i.a, %i.m, !dbg !18267
  %found.conflict = and i1 %bound0, %bound1, !dbg !18267
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph, !dbg !18268

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.g, -8                       ; 4 uses
  %i.n = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.o = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !18268

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !18268 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 %index, !dbg !18269 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4, !dbg !18270
  %wide.load = load <4 x i8>, ptr %i.p, align 1, !dbg !18270, !alias.scope !18251, !noalias !18252
  %wide.load4 = load <4 x i8>, ptr %i.q, align 1, !dbg !18270, !alias.scope !18251, !noalias !18252
  %i.r = sext <4 x i8> %wide.load to <4 x i32>, !dbg !18271
  %i.s = sext <4 x i8> %wide.load4 to <4 x i32>, !dbg !18271
  %i.t = getelementptr [4 x i8], ptr %i.o, i64 %index, !dbg !18272 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !18273
  store <4 x i32> %i.r, ptr %i.t, align 4, !dbg !18273, !alias.scope !18254, !noalias !18255
  store <4 x i32> %i.s, ptr %i.u, align 4, !dbg !18273, !alias.scope !18254, !noalias !18255
  %index.next = add nuw i64 %index, 8, !dbg !18268 ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec, !dbg !18274
  br i1 %i.v, label %middle.block, label %vector.body, !dbg !18274, !llvm.loop !18240

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec, !dbg !18274
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaluNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivelE3as_lE0NCINvNvBS_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VeclE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph.preheader, !dbg !18274

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.n, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %i.w = sub i64 %i.e, %i.f, !dbg !18274
  %xtraiter = and i64 %i.w, 3, !dbg !18274        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !18274
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !18274

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.x = phi i64 [ %i.ab, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ], !dbg !18269 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.ac, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], !dbg !18268 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.prol, !dbg !18269
  %.val16.i.prol = load i8, ptr %i.y, align 1, !dbg !18270, !noalias !18252, !noundef !598
  %i.z = sext i8 %.val16.i.prol to i32, !dbg !18271
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.x, !dbg !18272
  store i32 %i.z, ptr %i.aa, align 4, !dbg !18273, !noalias !18256
  %i.ab = add i64 %i.x, 1, !dbg !18275            ; 3 uses
  %i.ac = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !18276 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !18274 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !18274
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !18274, !llvm.loop !18245

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ab, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ab, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.ac, %scalar.ph.prol ]
  %i.ad = sub i64 %.sroa.01.0.i.ph, %i.e, !dbg !18274
  %i.ae = add i64 %i.ad, %i.f, !dbg !18274
  %i.af = icmp ugt i64 %i.ae, -4, !dbg !18274
  br i1 %i.af, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaluNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivelE3as_lE0NCINvNvBS_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VeclE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph, !dbg !18274

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ag = phi i64 [ %i.az, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !18269 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.ba, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !18268 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18269
  %.val16.i = load i8, ptr %i.ah, align 1, !dbg !18270, !noalias !18252, !noundef !598
  %i.ai = sext i8 %.val16.i to i32, !dbg !18271
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ag, !dbg !18272
  store i32 %i.ai, ptr %i.aj, align 4, !dbg !18273, !noalias !18256
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18269
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1, !dbg !18269
  %.val16.i.1 = load i8, ptr %i.al, align 1, !dbg !18270, !noalias !18252, !noundef !598
  %i.am = sext i8 %.val16.i.1 to i32, !dbg !18271
  %i.an = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ag, !dbg !18272
  %i.ao = getelementptr i8, ptr %i.an, i64 4, !dbg !18272
  store i32 %i.am, ptr %i.ao, align 4, !dbg !18273, !noalias !18256
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18269
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 2, !dbg !18269
  %.val16.i.2 = load i8, ptr %i.aq, align 1, !dbg !18270, !noalias !18252, !noundef !598
  %i.ar = sext i8 %.val16.i.2 to i32, !dbg !18271
  %i.as = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ag, !dbg !18272
  %i.at = getelementptr i8, ptr %i.as, i64 8, !dbg !18272
  store i32 %i.ar, ptr %i.at, align 4, !dbg !18273, !noalias !18256
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IteraENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecnE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute:bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !18433    ; 2 uses
  %i.f = ptrtoint ptr %i.a to i64, !dbg !18433    ; 2 uses
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !18433      ; 3 uses
  %xtraiter = and i64 %i.g, 1, !dbg !18434
  %i.h = add i64 %i.e, -1, !dbg !18434
  %i.i = icmp eq i64 %i.h, %i.f, !dbg !18434
  br i1 %i.i, label %.epil.preheader, label %.new, !dbg !18434

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.g, -2, !dbg !18434
  br label %bb.c, !dbg !18434

bb.c:                                             ; preds = %bb.c, %.new
  %i.j = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.s, %bb.c ], !dbg !18435 ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.t, %bb.c ], !dbg !18436 ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18435
  %.val16.i = load i8, ptr %i.k, align 1, !dbg !18437, !noalias !18421, !noundef !598
  %i.l = sext i8 %.val16.i to i128, !dbg !18438
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.j, !dbg !18439
  store i128 %i.l, ptr %i.m, align 16, !dbg !18440, !noalias !18423
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18435
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1, !dbg !18435
  %.val16.i.1 = load i8, ptr %i.o, align 1, !dbg !18437, !noalias !18421, !noundef !598
  %i.p = sext i8 %.val16.i.1 to i128, !dbg !18438
  %i.q = getelementptr [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.j, !dbg !18439
  %i.r = getelementptr i8, ptr %i.q, i64 16, !dbg !18439
  store i128 %i.p, ptr %i.r, align 16, !dbg !18440, !noalias !18423
  %i.s = add i64 %i.j, 2, !dbg !18441             ; 3 uses
  %i.t = add nuw i64 %.sroa.01.0.i, 2, !dbg !18442 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !18443  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !18443
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRanuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecnE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, label %bb.c, !dbg !18443

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRanuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecnE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !18443
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRanuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecnE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %.epil.preheader, !dbg !18443

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRanuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecnE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.s, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRanuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecnE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.t, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRanuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecnE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.g to i1, !dbg !18443
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !18443
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.epil.init, !dbg !18435
  %.val16.i.epil = load i8, ptr %i.u, align 1, !dbg !18437, !noalias !18421, !noundef !598
  %i.v = sext i8 %.val16.i.epil to i128, !dbg !18438
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init, !dbg !18439
  store i128 %i.v, ptr %i.w, align 16, !dbg !18440, !noalias !18423
  %i.x = add i64 %.epil.init, 1, !dbg !18441
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRanuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecnE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRanuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecnE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRanuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecnE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.s, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRanuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecnE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ], [ %i.x, %.epil.preheader ], !dbg !18444
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !18444, !noalias !18421
  ret void, !dbg !18445
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IteraENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecoE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !18446 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !18508, !nonnull !598, !noundef !598 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18508
  %i.c = load ptr, ptr %i.b, align 8, !dbg !18508, !nonnull !598, !noundef !598 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !18509 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18509
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !18509 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !18509
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !18509 ; 3 uses
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !18510
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.b, !dbg !18511

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !18512    ; 2 uses
  %i.f = ptrtoint ptr %i.a to i64, !dbg !18512    ; 2 uses
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !18512      ; 3 uses
  %xtraiter = and i64 %i.g, 1, !dbg !18513
  %i.h = add i64 %i.e, -1, !dbg !18513
  %i.i = icmp eq i64 %i.h, %i.f, !dbg !18513
  br i1 %i.i, label %.epil.preheader, label %.new, !dbg !18513

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.g, -2, !dbg !18513
  br label %bb.c, !dbg !18513

bb.c:                                             ; preds = %bb.c, %.new
  %i.j = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.s, %bb.c ], !dbg !18514 ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.t, %bb.c ], !dbg !18515 ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18514
  %.val16.i = load i8, ptr %i.k, align 1, !dbg !18516, !noalias !18500, !noundef !598
  %i.l = sext i8 %.val16.i to i128, !dbg !18517
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.j, !dbg !18518
  store i128 %i.l, ptr %i.m, align 16, !dbg !18519, !noalias !18502
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18514
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1, !dbg !18514
  %.val16.i.1 = load i8, ptr %i.o, align 1, !dbg !18516, !noalias !18500, !noundef !598
  %i.p = sext i8 %.val16.i.1 to i128, !dbg !18517
  %i.q = getelementptr [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.j, !dbg !18518
  %i.r = getelementptr i8, ptr %i.q, i64 16, !dbg !18518
  store i128 %i.p, ptr %i.r, align 16, !dbg !18519, !noalias !18502
  %i.s = add i64 %i.j, 2, !dbg !18520             ; 3 uses
  %i.t = add nuw i64 %.sroa.01.0.i, 2, !dbg !18521 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !18522  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !18522
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, label %bb.c, !dbg !18522

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !18522
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %.epil.preheader, !dbg !18522

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.s, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.t, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.g to i1, !dbg !18522
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !18522
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.epil.init, !dbg !18514
  %.val16.i.epil = load i8, ptr %i.u, align 1, !dbg !18516, !noalias !18500, !noundef !598
  %i.v = sext i8 %.val16.i.epil to i128, !dbg !18517
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init, !dbg !18518
  store i128 %i.v, ptr %i.w, align 16, !dbg !18519, !noalias !18502
  %i.x = add i64 %.epil.init, 1, !dbg !18520
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.s, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ], [ %i.x, %.epil.preheader ], !dbg !18523
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !18523, !noalias !18500
  ret void, !dbg !18524
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IteraENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivesE3as_sE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecsE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !18525 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !18597, !nonnull !598, !noundef !598 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18597
  %i.c = load ptr, ptr %i.b, align 8, !dbg !18597, !nonnull !598, !noundef !598 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !18598 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18598
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !18598 ; 9 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !18598
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !18598 ; 9 uses
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !18599
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRasuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivesE3as_sE0NCINvNvBS_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecsE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %iter.check, !dbg !18600

iter.check:                                       ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !18601    ; 4 uses
  %i.f = ptrtoint ptr %i.a to i64, !dbg !18601    ; 4 uses
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !18601      ; 8 uses
  %min.iters.check = icmp ult i64 %i.g, 4, !dbg !18602
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck, !dbg !18602

vector.memcheck:                                  ; preds = %iter.check
  %i.h = shl i64 %.sroa.5.0.copyload, 1, !dbg !18602
  %i.i = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.h, !dbg !18602
  %i.j = add i64 %.sroa.5.0.copyload, %i.e, !dbg !18602
  %i.k = sub i64 %i.j, %i.f, !dbg !18602
  %i.l = shl i64 %i.k, 1, !dbg !18602
  %i.m = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.l, !dbg !18602
  %bound0 = icmp ult ptr %i.i, %i.c, !dbg !18602
  %bound1 = icmp ult ptr %i.a, %i.m, !dbg !18602
  %found.conflict = and i1 %bound0, %bound1, !dbg !18602
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !18603

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check4 = icmp ult i64 %i.g, 16, !dbg !18602
  br i1 %min.iters.check4, label %vec.epilog.ph, label %vector.ph, !dbg !18602

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.n = and i64 %i.g, 12
  %n.vec = and i64 %i.g, -16                      ; 5 uses
  %i.o = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.p = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !18602

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !18603 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 %index, !dbg !18604 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !18605
  %wide.load = load <8 x i8>, ptr %i.q, align 1, !dbg !18605, !alias.scope !18586, !noalias !18587
  %wide.load5 = load <8 x i8>, ptr %i.r, align 1, !dbg !18605, !alias.scope !18586, !noalias !18587
  %i.s = sext <8 x i8> %wide.load to <8 x i16>, !dbg !18606
  %i.t = sext <8 x i8> %wide.load5 to <8 x i16>, !dbg !18606
  %i.u = getelementptr [2 x i8], ptr %i.p, i64 %index, !dbg !18607 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !18608
  store <8 x i16> %i.s, ptr %i.u, align 2, !dbg !18608, !alias.scope !18589, !noalias !18590
  store <8 x i16> %i.t, ptr %i.v, align 2, !dbg !18608, !alias.scope !18589, !noalias !18590
  %index.next = add nuw i64 %index, 16, !dbg !18603 ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec, !dbg !18609
  br i1 %i.w, label %middle.block, label %vector.body, !dbg !18609, !llvm.loop !18574

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec, !dbg !18609
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRasuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivesE3as_sE0NCINvNvBS_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecsE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.iter.check, !dbg !18609

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.n, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !987

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !18603
  %n.vec6 = and i64 %i.g, -4                      ; 4 uses
  %i.x = add i64 %.sroa.5.0.copyload, %n.vec6     ; 2 uses
  %i.y = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index7 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next9, %vec.epilog.vector.body ], !dbg !18603 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 %index7, !dbg !18604
  %wide.load8 = load <4 x i8>, ptr %i.z, align 1, !dbg !18605, !alias.scope !18586, !noalias !18587
  %i.aa = sext <4 x i8> %wide.load8 to <4 x i16>, !dbg !18606
  %i.ab = getelementptr [2 x i8], ptr %i.y, i64 %index7, !dbg !18607
  store <4 x i16> %i.aa, ptr %i.ab, align 2, !dbg !18608, !alias.scope !18589, !noalias !18590
  %index.next9 = add nuw i64 %index7, 4, !dbg !18603 ; 2 uses
  %i.ac = icmp eq i64 %index.next9, %n.vec6, !dbg !18609
  br i1 %i.ac, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !18609, !llvm.loop !18575

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n10 = icmp eq i64 %i.g, %n.vec6, !dbg !18609
  br i1 %cmp.n10, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRasuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivesE3as_sE0NCINvNvBS_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecsE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph.preheader, !dbg !18609

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %iter.check ], [ %.sroa.5.0.copyload, %vector.memcheck ], [ %i.o, %vec.epilog.iter.check ], [ %i.x, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec6, %vec.epilog.middle.block ] ; 3 uses
  %i.ad = sub i64 %i.e, %i.f, !dbg !18609
  %xtraiter = and i64 %i.ad, 3, !dbg !18609       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !18609
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !18609

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %i.ae = phi i64 [ %i.ai, %vec.epilog.scalar.ph.prol ], [ %.ph, %vec.epilog.scalar.ph.preheader ], !dbg !18604 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.aj, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !18603 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.prol, !dbg !18604
  %.val16.i.prol = load i8, ptr %i.af, align 1, !dbg !18605, !noalias !18587, !noundef !598
  %i.ag = sext i8 %.val16.i.prol to i16, !dbg !18606
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !18607
  store i16 %i.ag, ptr %i.ah, align 2, !dbg !18608, !noalias !18591
  %i.ai = add i64 %i.ae, 1, !dbg !18610           ; 3 uses
  %i.aj = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !18611 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !18609 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !18609
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !18609, !llvm.loop !18580

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.ai, %vec.epilog.scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ai, %vec.epilog.scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.aj, %vec.epilog.scalar.ph.prol ]
  %i.ak = sub i64 %.sroa.01.0.i.ph, %i.e, !dbg !18609
  %i.al = add i64 %i.ak, %i.f, !dbg !18609
  %i.am = icmp ugt i64 %i.al, -4, !dbg !18609
  br i1 %i.am, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRasuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivesE3as_sE0NCINvNvBS_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecsE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph, !dbg !18609

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.an = phi i64 [ %i.bg, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !18604 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.bh, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !18603 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18604
  %.val16.i = load i8, ptr %i.ao, align 1, !dbg !18605, !noalias !18587, !noundef !598
  %i.ap = sext i8 %.val16.i to i16, !dbg !18606
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.an, !dbg !18607
  store i16 %i.ap, ptr %i.aq, align 2, !dbg !18608, !noalias !18591
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18604
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1, !dbg !18604
  %.val16.i.1 = load i8, ptr %i.as, align 1, !dbg !18605, !noalias !18587, !noundef !598
  %i.at = sext i8 %.val16.i.1 to i16, !dbg !18606
  %i.au = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.an, !dbg !18607
  %i.av = getelementptr i8, ptr %i.au, i64 2, !dbg !18607
  store i16 %i.at, ptr %i.av, align 2, !dbg !18608, !noalias !18591
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18604
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 2, !dbg !18604
  %.val16.i.2 = load i8, ptr %i.ax, align 1, !dbg !18605, !noalias !18587, !noundef !598
  %i.ay = sext i8 %.val16.i.2 to i16, !dbg !18606
  %i.az = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.an, !dbg !18607
  %i.ba = getelementptr i8, ptr %i.az, i64 4, !dbg !18607
  store i16 %i.ay, ptr %i.ba, align 2, !dbg !18608, !noalias !18591
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18604
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 3, !dbg !18604
  %.val16.i.3 = load i8, ptr %i.bc, align 1, !dbg !18605, !noalias !18587, !noundef !598
  %i.bd = sext i8 %.val16.i.3 to i16, !dbg !18606
  %i.be = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.an, !dbg !18607
  %i.bf = getelementptr i8, ptr %i.be, i64 6, !dbg !18607
  store i16 %i.bd, ptr %i.bf, align 2, !dbg !18608, !noalias !18591
  %i.bg = add i64 %i.an, 4, !dbg !18610           ; 2 uses
  %i.bh = add nuw i64 %.sroa.01.0.i, 4, !dbg !18611 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, %i.g, !dbg !18609
  br i1 %i.bi, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRasuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivesE3as_sE0NCINvNvBS_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecsE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph, !dbg !18609, !llvm.loop !18581

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRasuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivesE3as_sE0NCINvNvBS_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecsE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.x, %vec.epilog.middle.block ], [ %i.o, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.bg, %vec.epilog.scalar.ph ], !dbg !18612
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !18612, !noalias !18587
  ret void, !dbg !18613
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IteraENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivetE3as_tE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VectE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !18614 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !18686, !nonnull !598, !noundef !598 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18686
  %i.c = load ptr, ptr %i.b, align 8, !dbg !18686, !nonnull !598, !noundef !598 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !18687 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18687
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !18687 ; 9 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !18687
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !18687 ; 9 uses
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !18688
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRatuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivetE3as_tE0NCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VectE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %iter.check, !dbg !18689

iter.check:                                       ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !18690    ; 4 uses
  %i.f = ptrtoint ptr %i.a to i64, !dbg !18690    ; 4 uses
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !18690      ; 8 uses
  %min.iters.check = icmp ult i64 %i.g, 4, !dbg !18691
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck, !dbg !18691

vector.memcheck:                                  ; preds = %iter.check
  %i.h = shl i64 %.sroa.5.0.copyload, 1, !dbg !18691
  %i.i = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.h, !dbg !18691
  %i.j = add i64 %.sroa.5.0.copyload, %i.e, !dbg !18691
  %i.k = sub i64 %i.j, %i.f, !dbg !18691
  %i.l = shl i64 %i.k, 1, !dbg !18691
  %i.m = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.l, !dbg !18691
  %bound0 = icmp ult ptr %i.i, %i.c, !dbg !18691
  %bound1 = icmp ult ptr %i.a, %i.m, !dbg !18691
  %found.conflict = and i1 %bound0, %bound1, !dbg !18691
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !18692

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check4 = icmp ult i64 %i.g, 16, !dbg !18691
  br i1 %min.iters.check4, label %vec.epilog.ph, label %vector.ph, !dbg !18691

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.n = and i64 %i.g, 12
  %n.vec = and i64 %i.g, -16                      ; 5 uses
  %i.o = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.p = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !18691

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !18692 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 %index, !dbg !18693 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !18694
  %wide.load = load <8 x i8>, ptr %i.q, align 1, !dbg !18694, !alias.scope !18675, !noalias !18676
  %wide.load5 = load <8 x i8>, ptr %i.r, align 1, !dbg !18694, !alias.scope !18675, !noalias !18676
  %i.s = sext <8 x i8> %wide.load to <8 x i16>, !dbg !18695
  %i.t = sext <8 x i8> %wide.load5 to <8 x i16>, !dbg !18695
  %i.u = getelementptr [2 x i8], ptr %i.p, i64 %index, !dbg !18696 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !18697
  store <8 x i16> %i.s, ptr %i.u, align 2, !dbg !18697, !alias.scope !18678, !noalias !18679
  store <8 x i16> %i.t, ptr %i.v, align 2, !dbg !18697, !alias.scope !18678, !noalias !18679
  %index.next = add nuw i64 %index, 16, !dbg !18692 ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec, !dbg !18698
  br i1 %i.w, label %middle.block, label %vector.body, !dbg !18698, !llvm.loop !18663

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec, !dbg !18698
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRatuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivetE3as_tE0NCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VectE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.iter.check, !dbg !18698

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.n, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !987

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !18692
  %n.vec6 = and i64 %i.g, -4                      ; 4 uses
  %i.x = add i64 %.sroa.5.0.copyload, %n.vec6     ; 2 uses
  %i.y = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index7 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next9, %vec.epilog.vector.body ], !dbg !18692 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 %index7, !dbg !18693
  %wide.load8 = load <4 x i8>, ptr %i.z, align 1, !dbg !18694, !alias.scope !18675, !noalias !18676
  %i.aa = sext <4 x i8> %wide.load8 to <4 x i16>, !dbg !18695
  %i.ab = getelementptr [2 x i8], ptr %i.y, i64 %index7, !dbg !18696
  store <4 x i16> %i.aa, ptr %i.ab, align 2, !dbg !18697, !alias.scope !18678, !noalias !18679
  %index.next9 = add nuw i64 %index7, 4, !dbg !18692 ; 2 uses
  %i.ac = icmp eq i64 %index.next9, %n.vec6, !dbg !18698
  br i1 %i.ac, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !18698, !llvm.loop !18664

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n10 = icmp eq i64 %i.g, %n.vec6, !dbg !18698
  br i1 %cmp.n10, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRatuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivetE3as_tE0NCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VectE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph.preheader, !dbg !18698

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %iter.check ], [ %.sroa.5.0.copyload, %vector.memcheck ], [ %i.o, %vec.epilog.iter.check ], [ %i.x, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec6, %vec.epilog.middle.block ] ; 3 uses
  %i.ad = sub i64 %i.e, %i.f, !dbg !18698
  %xtraiter = and i64 %i.ad, 3, !dbg !18698       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !18698
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !18698

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %i.ae = phi i64 [ %i.ai, %vec.epilog.scalar.ph.prol ], [ %.ph, %vec.epilog.scalar.ph.preheader ], !dbg !18693 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.aj, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !18692 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.prol, !dbg !18693
  %.val16.i.prol = load i8, ptr %i.af, align 1, !dbg !18694, !noalias !18676, !noundef !598
  %i.ag = sext i8 %.val16.i.prol to i16, !dbg !18695
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !18696
  store i16 %i.ag, ptr %i.ah, align 2, !dbg !18697, !noalias !18680
  %i.ai = add i64 %i.ae, 1, !dbg !18699           ; 3 uses
  %i.aj = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !18700 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !18698 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !18698
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !18698, !llvm.loop !18669

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.ai, %vec.epilog.scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ai, %vec.epilog.scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.aj, %vec.epilog.scalar.ph.prol ]
  %i.ak = sub i64 %.sroa.01.0.i.ph, %i.e, !dbg !18698
  %i.al = add i64 %i.ak, %i.f, !dbg !18698
  %i.am = icmp ugt i64 %i.al, -4, !dbg !18698
  br i1 %i.am, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRatuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivetE3as_tE0NCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VectE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph, !dbg !18698

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.an = phi i64 [ %i.bg, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !18693 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.bh, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !18692 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18693
  %.val16.i = load i8, ptr %i.ao, align 1, !dbg !18694, !noalias !18676, !noundef !598
  %i.ap = sext i8 %.val16.i to i16, !dbg !18695
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.an, !dbg !18696
  store i16 %i.ap, ptr %i.aq, align 2, !dbg !18697, !noalias !18680
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18693
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1, !dbg !18693
  %.val16.i.1 = load i8, ptr %i.as, align 1, !dbg !18694, !noalias !18676, !noundef !598
  %i.at = sext i8 %.val16.i.1 to i16, !dbg !18695
  %i.au = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.an, !dbg !18696
  %i.av = getelementptr i8, ptr %i.au, i64 2, !dbg !18696
  store i16 %i.at, ptr %i.av, align 2, !dbg !18697, !noalias !18680
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18693
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 2, !dbg !18693
  %.val16.i.2 = load i8, ptr %i.ax, align 1, !dbg !18694, !noalias !18676, !noundef !598
  %i.ay = sext i8 %.val16.i.2 to i16, !dbg !18695
  %i.az = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.an, !dbg !18696
  %i.ba = getelementptr i8, ptr %i.az, i64 4, !dbg !18696
  store i16 %i.ay, ptr %i.ba, align 2, !dbg !18697, !noalias !18680
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18693
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 3, !dbg !18693
  %.val16.i.3 = load i8, ptr %i.bc, align 1, !dbg !18694, !noalias !18676, !noundef !598
  %i.bd = sext i8 %.val16.i.3 to i16, !dbg !18695
  %i.be = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.an, !dbg !18696
  %i.bf = getelementptr i8, ptr %i.be, i64 6, !dbg !18696
  store i16 %i.bd, ptr %i.bf, align 2, !dbg !18697, !noalias !18680
  %i.bg = add i64 %i.an, 4, !dbg !18699           ; 2 uses
  %i.bh = add nuw i64 %.sroa.01.0.i, 4, !dbg !18700 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, %i.g, !dbg !18698
  br i1 %i.bi, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRatuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivetE3as_tE0NCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VectE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph, !dbg !18698, !llvm.loop !18670

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRatuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivetE3as_tE0NCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VectE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.x, %vec.epilog.middle.block ], [ %i.o, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.bg, %vec.epilog.scalar.ph ], !dbg !18701
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !18701, !noalias !18676
  ret void, !dbg !18702
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IteraENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivexE3as_xE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecxE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !18703 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !18766, !nonnull !598, !noundef !598 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18766
  %i.c = load ptr, ptr %i.b, align 8, !dbg !18766, !nonnull !598, !noundef !598 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !18767 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18767
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !18767 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !18767
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !18767 ; 5 uses
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !18768
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaxuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivexE3as_xE0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.b, !dbg !18769

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !18770    ; 2 uses
  %i.f = ptrtoint ptr %i.a to i64, !dbg !18770    ; 2 uses
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !18770      ; 2 uses
  %xtraiter = and i64 %i.g, 3, !dbg !18771        ; 3 uses
  %i.h = sub i64 %i.f, %i.e, !dbg !18771
  %i.i = icmp ugt i64 %i.h, -4, !dbg !18771
  br i1 %i.i, label %.epil.preheader, label %.new, !dbg !18771

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.g, -4, !dbg !18771
  br label %bb.c, !dbg !18771

bb.c:                                             ; preds = %bb.c, %.new
  %i.j = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.ac, %bb.c ], !dbg !18772 ; 5 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.ad, %bb.c ], !dbg !18773 ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18772
  %.val16.i = load i8, ptr %i.k, align 1, !dbg !18774, !noalias !18758, !noundef !598
  %i.l = sext i8 %.val16.i to i64, !dbg !18775
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.j, !dbg !18776
  store i64 %i.l, ptr %i.m, align 8, !dbg !18777, !noalias !18760
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18772
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1, !dbg !18772
  %.val16.i.1 = load i8, ptr %i.o, align 1, !dbg !18774, !noalias !18758, !noundef !598
  %i.p = sext i8 %.val16.i.1 to i64, !dbg !18775
  %i.q = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.j, !dbg !18776
  %i.r = getelementptr i8, ptr %i.q, i64 8, !dbg !18776
  store i64 %i.p, ptr %i.r, align 8, !dbg !18777, !noalias !18760
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18772
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 2, !dbg !18772
  %.val16.i.2 = load i8, ptr %i.t, align 1, !dbg !18774, !noalias !18758, !noundef !598
  %i.u = sext i8 %.val16.i.2 to i64, !dbg !18775
  %i.v = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.j, !dbg !18776
  %i.w = getelementptr i8, ptr %i.v, i64 16, !dbg !18776
  store i64 %i.u, ptr %i.w, align 8, !dbg !18777, !noalias !18760
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !18772
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 3, !dbg !18772
  %.val16.i.3 = load i8, ptr %i.y, align 1, !dbg !18774, !noalias !18758, !noundef !598
  %i.z = sext i8 %.val16.i.3 to i64, !dbg !18775
  %i.aa = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.j, !dbg !18776
  %i.ab = getelementptr i8, ptr %i.aa, i64 24, !dbg !18776
  store i64 %i.z, ptr %i.ab, align 8, !dbg !18777, !noalias !18760
  %i.ac = add i64 %i.j, 4, !dbg !18778            ; 3 uses
  %i.ad = add nuw i64 %.sroa.01.0.i, 4, !dbg !18779 ; 2 uses
  %niter.next.3 = add i64 %niter, 4, !dbg !18780  ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !18780
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaxuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivexE3as_xE0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, label %bb.c, !dbg !18780

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaxuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivexE3as_xE0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !18780
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaxuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivexE3as_xE0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %.epil.preheader, !dbg !18780

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaxuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivexE3as_xE0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.ac, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaxuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivexE3as_xE0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ]
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.ad, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaxuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivexE3as_xE0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0, !dbg !18780
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !18780
  br label %bb.d, !dbg !18780

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %i.ae = phi i64 [ %.epil.init, %.epil.preheader ], [ %i.ai, %bb.d ], !dbg !18772 ; 2 uses
  %.sroa.01.0.i.epil = phi i64 [ %.sroa.01.0.i.epil.init, %.epil.preheader ], [ %i.aj, %bb.d ], !dbg !18773 ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.epil, !dbg !18772
  %.val16.i.epil = load i8, ptr %i.af, align 1, !dbg !18774, !noalias !18758, !noundef !598
  %i.ag = sext i8 %.val16.i.epil to i64, !dbg !18775
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !18776
  store i64 %i.ag, ptr %i.ah, align 8, !dbg !18777, !noalias !18760
  %i.ai = add i64 %i.ae, 1, !dbg !18778           ; 2 uses
  %i.aj = add nuw i64 %.sroa.01.0.i.epil, 1, !dbg !18779
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !18780 ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !18780
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaxuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivexE3as_xE0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.d, !dbg !18780, !llvm.loop !18753

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaxuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivexE3as_xE0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaxuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivexE3as_xE0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.ac, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaxuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivexE3as_xE0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ], [ %i.ai, %bb.d ], !dbg !18781
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !18781, !noalias !18758
  ret void, !dbg !18782
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IteraENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryaNvYaINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveyE3as_yE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecyE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !18783 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !18846, !nonnull !598, !noundef !598 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18846
  %i.c = load ptr, ptr %i.b, align 8, !dbg !18846, !nonnull !598, !noundef !598 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !18847 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18847
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !18847 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !18847
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !18847 ; 5 uses
end_hunk_1
begin_hunk_2_@_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveNtNtCs2mZqlW55729_12polars_utils7float164pf16E3as_B3c_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB47_8for_each4callB3c_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5n_3VecB3c_E14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !21056
  %i.c = load ptr, ptr %i.b, align 8, !dbg !21056, !nonnull !598, !noundef !598 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !21057 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !21057
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !21057 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !21057
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !21057
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !21058
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhNtNtCs2mZqlW55729_12polars_utils7float164pf16uNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveB2d_E3as_B2d_E0NCINvNvBS_8for_each4callB2d_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5A_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2X_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.b, !dbg !21059

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !21060
  %i.f = ptrtoint ptr %i.a to i64, !dbg !21060
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !21060
  br label %bb.c, !dbg !21061

bb.c:                                             ; preds = %bb.n, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.bc, %bb.n ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.bd, %bb.n ], !dbg !21062 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !21063
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21043), !dbg !21064
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21044), !dbg !21065
  %i.i = load i8, ptr %i.h, align 1, !dbg !21066, !alias.scope !21045, !noalias !21046, !noundef !598
  %i.j = uitofp i8 %i.i to float, !dbg !21067     ; 2 uses
  %i.k = load atomic i64, ptr @_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache5CACHE monotonic, align 8, !dbg !21068, !noalias !21049 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0, !dbg !21069
  br i1 %i.l, label %.split.i.i.i.i.i.i, label %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i.i.i.i.i, !dbg !21069, !prof !670

.split.i.i.i.i.i.i:                               ; preds = %bb.c
  %i.m = invoke noundef i128 @_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache21detect_and_initialize()
          to label %.noexc.i unwind label %bb.o, !dbg !21070, !noalias !21046

.noexc.i:                                         ; preds = %.split.i.i.i.i.i.i
  %i.n = and i128 %i.m, 36028797018963968, !dbg !21071
  %.not1.i.i.i.i.i.i = icmp eq i128 %i.n, 0, !dbg !21071
  br i1 %.not1.i.i.i.i.i.i, label %bb.d, label %bb.m, !dbg !21072

_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.o = and i64 %i.k, 36028797018963968, !dbg !21073
  %.not.i.i.i.i.i.i = icmp eq i64 %i.o, 0, !dbg !21073
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.m, !dbg !21072

bb.d:                                             ; preds = %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i.i.i.i.i, %.noexc.i
  %i.p = bitcast float %i.j to i32, !dbg !21074   ; 7 uses
  %i.q = and i32 %i.p, 2139095040, !dbg !21075    ; 3 uses
  %i.r = and i32 %i.p, 8388607, !dbg !21076       ; 4 uses
  %i.s = icmp eq i32 %i.q, 2139095040, !dbg !21077
  br i1 %i.s, label %bb.e, label %bb.f, !dbg !21077

bb.e:                                             ; preds = %bb.d
  %i.t = icmp eq i32 %i.r, 0, !dbg !21078
  %..i.i.i.i.i.i.i = select i1 %i.t, i32 0, i32 512, !dbg !21079
  %i.u = lshr i32 %i.r, 13, !dbg !21080
  %i.v = or i32 %..i.i.i.i.i.i.i, %i.u, !dbg !21081
  %i.w = trunc nuw nsw i32 %i.v to i16, !dbg !21081
  %i.x = or disjoint i16 %i.w, 31744, !dbg !21081
  br label %bb.n, !dbg !21082

bb.f:                                             ; preds = %bb.d
  %i.y = lshr i32 %i.p, 23, !dbg !21083           ; 2 uses
  %i.z = icmp samesign ugt i32 %i.q, 1191182336, !dbg !21084
  br i1 %i.z, label %bb.n, label %bb.g, !dbg !21084

bb.g:                                             ; preds = %bb.f
  %i.aa = icmp samesign ult i32 %i.p, 947912704, !dbg !21085
  br i1 %i.aa, label %bb.i, label %bb.h, !dbg !21085

bb.h:                                             ; preds = %bb.g
  %i.ab = lshr exact i32 %i.q, 13, !dbg !21086
  %i.ac = add nuw nsw i32 %i.ab, 16384, !dbg !21086
  %i.ad = lshr i32 %i.r, 13, !dbg !21087
  %i.ae = and i32 %i.p, 4096, !dbg !21088
  %i.af = icmp ne i32 %i.ae, 0, !dbg !21088
  %i.ag = and i32 %i.p, 12287
  %i.ah = icmp ne i32 %i.ag, 0
  %or.cond.not.i.i.i.i.i.i.i = and i1 %i.af, %i.ah, !dbg !21089
  %i.ai = or disjoint i32 %i.ac, %i.ad, !dbg !21089
  %i.aj = trunc i32 %i.ai to i16, !dbg !21089
  %i.ak = zext i1 %or.cond.not.i.i.i.i.i.i.i to i16, !dbg !21088
  %spec.select7.i.i.i.i.i.i.i = add i16 %i.aj, %i.ak, !dbg !21088
  br label %bb.n, !dbg !21088

bb.i:                                             ; preds = %bb.g
  %i.al = icmp samesign ult i32 %i.p, 855638016, !dbg !21090
  br i1 %i.al, label %bb.n, label %bb.j, !dbg !21090

bb.j:                                             ; preds = %bb.i
  %i.am = sub nsw i32 126, %i.y, !dbg !21090
  %i.an = or disjoint i32 %i.r, 8388608, !dbg !21091 ; 3 uses
  %i.ao = lshr i32 %i.an, %i.am, !dbg !21092      ; 2 uses
  %i.ap = sub nsw i32 29, %i.y, !dbg !21093
  %i.aq = and i32 %i.ap, 31, !dbg !21094          ; 2 uses
  %i.ar = shl nuw i32 1, %i.aq, !dbg !21094
  %i.as = and i32 %i.ar, %i.an, !dbg !21095
  %i.at = icmp eq i32 %i.as, 0, !dbg !21095
  br i1 %i.at, label %bb.l, label %bb.k, !dbg !21095

bb.k:                                             ; preds = %bb.j
  %i.au = shl i32 3, %i.aq, !dbg !21096
  %i.av = add nuw i32 %i.au, 16777215, !dbg !21097
  %i.aw = and i32 %i.av, %i.an, !dbg !21098
  %i.ax = icmp ne i32 %i.aw, 0, !dbg !21098
  %i.ay = zext i1 %i.ax to i32, !dbg !21098
  %spec.select.i.i.i.i.i.i.i = add nuw nsw i32 %i.ao, %i.ay, !dbg !21098
  br label %bb.l, !dbg !21098

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.03.0.i.i.i.i.i.i.i = phi i32 [ %i.ao, %bb.j ], [ %spec.select.i.i.i.i.i.i.i, %bb.k ], !dbg !21099
  %i.az = trunc nuw i32 %.sroa.03.0.i.i.i.i.i.i.i to i16, !dbg !21100
  br label %bb.n, !dbg !21101

bb.m:                                             ; preds = %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i.i.i.i.i, %.noexc.i
  %i.ba = tail call fastcc noundef i16 @_RNvNtNtNtCshdiYQzaKNQ1_4half8binary164arch3x8619f32_to_f16_x86_f16c(float noundef %i.j), !dbg !21102
  br label %bb.n, !dbg !21102

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.i, %bb.h, %bb.f, %bb.e
  %.sroa.0.0.i.i.i.i.i.i = phi i16 [ %i.ba, %bb.m ], [ %i.x, %bb.e ], [ %spec.select7.i.i.i.i.i.i.i, %bb.h ], [ 31744, %bb.f ], [ %i.az, %bb.l ], [ 0, %bb.i ], !dbg !21103
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i, !dbg !21104
  store i16 %.sroa.0.0.i.i.i.i.i.i, ptr %i.bb, align 2, !dbg !21105, !noalias !21050
  %i.bc = add i64 %.val15.i, 1, !dbg !21106       ; 2 uses
  %i.bd = add nuw i64 %.sroa.01.0.i, 1, !dbg !21107 ; 2 uses
  %i.be = icmp eq i64 %i.bd, %i.g, !dbg !21108
  br i1 %i.be, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhNtNtCs2mZqlW55729_12polars_utils7float164pf16uNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveB2d_E3as_B2d_E0NCINvNvBS_8for_each4callB2d_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5A_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2X_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.c, !dbg !21108

bb.o:                                             ; preds = %.split.i.i.i.i.i.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !dbg !21109, !noalias !21046
  resume { ptr, i32 } %i.bf, !dbg !21110

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhNtNtCs2mZqlW55729_12polars_utils7float164pf16uNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveB2d_E3as_B2d_E0NCINvNvBS_8for_each4callB2d_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5A_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2X_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.n, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.bc, %bb.n ], !dbg !21111
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !21111, !noalias !21046
  ret void, !dbg !21112
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveaE3as_aE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecaE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !21113 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !21172, !nonnull !598, !noundef !598 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !21172
  %i.c = load ptr, ptr %i.b, align 8, !dbg !21172, !nonnull !598, !noundef !598 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !21173 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !21173
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !21173 ; 8 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !21173
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !21173 ; 8 uses
  %.sroa.7.0.copyload3 = ptrtoaddr ptr %.sroa.7.0.copyload to i64, !dbg !21174
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !21174
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhauNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveaE3as_aE0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecaE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %iter.check, !dbg !21175

iter.check:                                       ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !21176    ; 3 uses
  %i.f = ptrtoint ptr %i.a to i64, !dbg !21176    ; 4 uses
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !21176      ; 8 uses
  %min.iters.check = icmp ult i64 %i.g, 4, !dbg !21177
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck, !dbg !21177

vector.memcheck:                                  ; preds = %iter.check
  %i.h = add i64 %.sroa.5.0.copyload, %.sroa.7.0.copyload3, !dbg !21177
  %i.i = sub i64 %i.f, %i.h, !dbg !21177
  %diff.check = icmp ugt i64 %i.i, -32, !dbg !21177
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !21178

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check4 = icmp ult i64 %i.g, 32, !dbg !21177
  br i1 %min.iters.check4, label %vec.epilog.ph, label %vector.ph, !dbg !21177

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.j = and i64 %i.g, 28
  %n.vec = and i64 %i.g, -32                      ; 5 uses
  %i.k = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.l = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !21177

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !21178 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 %index, !dbg !21179 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !21180
  %wide.load = load <16 x i8>, ptr %i.m, align 1, !dbg !21180, !noalias !21165
  %wide.load5 = load <16 x i8>, ptr %i.n, align 1, !dbg !21180, !noalias !21165
  %i.o = getelementptr i8, ptr %i.l, i64 %index, !dbg !21181 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !21182
  store <16 x i8> %wide.load, ptr %i.o, align 1, !dbg !21182, !noalias !21166
  store <16 x i8> %wide.load5, ptr %i.p, align 1, !dbg !21182, !noalias !21166
  %index.next = add nuw i64 %index, 32, !dbg !21178 ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec, !dbg !21183
  br i1 %i.q, label %middle.block, label %vector.body, !dbg !21183, !llvm.loop !21153

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec, !dbg !21183
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhauNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveaE3as_aE0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecaE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.iter.check, !dbg !21183

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.j, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !986

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !21178
  %n.vec6 = and i64 %i.g, -4                      ; 4 uses
  %i.r = add i64 %.sroa.5.0.copyload, %n.vec6     ; 2 uses
  %i.s = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index7 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next9, %vec.epilog.vector.body ], !dbg !21178 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 %index7, !dbg !21179
  %wide.load8 = load <4 x i8>, ptr %i.t, align 1, !dbg !21180, !noalias !21165
  %i.u = getelementptr i8, ptr %i.s, i64 %index7, !dbg !21181
  store <4 x i8> %wide.load8, ptr %i.u, align 1, !dbg !21182, !noalias !21166
  %index.next9 = add nuw i64 %index7, 4, !dbg !21178 ; 2 uses
  %i.v = icmp eq i64 %index.next9, %n.vec6, !dbg !21183
  br i1 %i.v, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !21183, !llvm.loop !21154

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n10 = icmp eq i64 %i.g, %n.vec6, !dbg !21183
  br i1 %cmp.n10, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhauNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveaE3as_aE0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecaE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph.preheader, !dbg !21183

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %iter.check ], [ %.sroa.5.0.copyload, %vector.memcheck ], [ %i.k, %vec.epilog.iter.check ], [ %i.r, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec6, %vec.epilog.middle.block ] ; 3 uses
  %i.w = sub i64 %i.e, %i.f, !dbg !21183
  %xtraiter = and i64 %i.w, 3, !dbg !21183        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !21183
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !21183

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %i.x = phi i64 [ %i.aa, %vec.epilog.scalar.ph.prol ], [ %.ph, %vec.epilog.scalar.ph.preheader ], !dbg !21179 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.ab, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !21178 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.prol, !dbg !21179
  %.val16.i.prol = load i8, ptr %i.y, align 1, !dbg !21180, !noalias !21165, !noundef !598
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.x, !dbg !21181
  store i8 %.val16.i.prol, ptr %i.z, align 1, !dbg !21182, !noalias !21166
  %i.aa = add i64 %i.x, 1, !dbg !21184            ; 3 uses
  %i.ab = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !21185 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !21183 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !21183
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !21183, !llvm.loop !21159

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.aa, %vec.epilog.scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.aa, %vec.epilog.scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ab, %vec.epilog.scalar.ph.prol ]
  %i.ac = sub i64 %.sroa.01.0.i.ph, %i.e, !dbg !21183
  %i.ad = add i64 %i.ac, %i.f, !dbg !21183
  %i.ae = icmp ugt i64 %i.ad, -4, !dbg !21183
  br i1 %i.ae, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhauNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveaE3as_aE0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecaE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph, !dbg !21183

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.af = phi i64 [ %i.au, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !21179 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.av, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !21178 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !21179
  %.val16.i = load i8, ptr %i.ag, align 1, !dbg !21180, !noalias !21165, !noundef !598
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.af, !dbg !21181
  store i8 %.val16.i, ptr %i.ah, align 1, !dbg !21182, !noalias !21166
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !21179
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1, !dbg !21179
  %.val16.i.1 = load i8, ptr %i.aj, align 1, !dbg !21180, !noalias !21165, !noundef !598
  %i.ak = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.af, !dbg !21181
  %i.al = getelementptr i8, ptr %i.ak, i64 1, !dbg !21181
  store i8 %.val16.i.1, ptr %i.al, align 1, !dbg !21182, !noalias !21166
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !21179
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 2, !dbg !21179
  %.val16.i.2 = load i8, ptr %i.an, align 1, !dbg !21180, !noalias !21165, !noundef !598
  %i.ao = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.af, !dbg !21181
  %i.ap = getelementptr i8, ptr %i.ao, i64 2, !dbg !21181
  store i8 %.val16.i.2, ptr %i.ap, align 1, !dbg !21182, !noalias !21166
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !21179
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 3, !dbg !21179
  %.val16.i.3 = load i8, ptr %i.ar, align 1, !dbg !21180, !noalias !21165, !noundef !598
  %i.as = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.af, !dbg !21181
  %i.at = getelementptr i8, ptr %i.as, i64 3, !dbg !21181
  store i8 %.val16.i.3, ptr %i.at, align 1, !dbg !21182, !noalias !21166
  %i.au = add i64 %i.af, 4, !dbg !21184           ; 2 uses
  %i.av = add nuw i64 %.sroa.01.0.i, 4, !dbg !21185 ; 2 uses
  %i.aw = icmp eq i64 %i.av, %i.g, !dbg !21183
  br i1 %i.aw, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhauNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveaE3as_aE0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecaE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph, !dbg !21183, !llvm.loop !21160

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhauNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveaE3as_aE0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecaE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.r, %vec.epilog.middle.block ], [ %i.k, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.au, %vec.epilog.scalar.ph ], !dbg !21186
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !21186, !noalias !21165
  ret void, !dbg !21187
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_dE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecdE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !21188 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !21259, !nonnull !598, !noundef !598 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !21259
  %i.c = load ptr, ptr %i.b, align 8, !dbg !21259, !nonnull !598, !noundef !598 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !21260 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !21260
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !21260 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !21260
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !21260 ; 8 uses
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !21261
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhduNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_dE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.b, !dbg !21262

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !21263    ; 4 uses
  %i.f = ptrtoint ptr %i.a to i64, !dbg !21263    ; 4 uses
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !21263      ; 4 uses
  %min.iters.check = icmp ult i64 %i.g, 10, !dbg !21264
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !21264

vector.memcheck:                                  ; preds = %bb.b
  %i.h = shl i64 %.sroa.5.0.copyload, 3, !dbg !21264
  %i.i = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.h, !dbg !21264
  %i.j = add i64 %.sroa.5.0.copyload, %i.e, !dbg !21264
  %i.k = sub i64 %i.j, %i.f, !dbg !21264
  %i.l = shl i64 %i.k, 3, !dbg !21264
  %i.m = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.l, !dbg !21264
  %bound0 = icmp ult ptr %i.i, %i.c, !dbg !21264
  %bound1 = icmp ult ptr %i.a, %i.m, !dbg !21264
  %found.conflict = and i1 %bound0, %bound1, !dbg !21264
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph, !dbg !21265

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.g, -4                       ; 4 uses
  %i.n = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.o = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !21265

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !21265 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 %index, !dbg !21266 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 2, !dbg !21267
  %wide.load = load <2 x i8>, ptr %i.p, align 1, !dbg !21267, !alias.scope !21248, !noalias !21249
  %wide.load4 = load <2 x i8>, ptr %i.q, align 1, !dbg !21267, !alias.scope !21248, !noalias !21249
  %i.r = uitofp <2 x i8> %wide.load to <2 x double>, !dbg !21268
  %i.s = uitofp <2 x i8> %wide.load4 to <2 x double>, !dbg !21268
  %i.t = getelementptr [8 x i8], ptr %i.o, i64 %index, !dbg !21269 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !21270
  store <2 x double> %i.r, ptr %i.t, align 8, !dbg !21270, !alias.scope !21251, !noalias !21252
  store <2 x double> %i.s, ptr %i.u, align 8, !dbg !21270, !alias.scope !21251, !noalias !21252
  %index.next = add nuw i64 %index, 4, !dbg !21265 ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec, !dbg !21271
  br i1 %i.v, label %middle.block, label %vector.body, !dbg !21271, !llvm.loop !21237

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec, !dbg !21271
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhduNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_dE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph.preheader, !dbg !21271

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.n, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %i.w = sub i64 %i.e, %i.f, !dbg !21271
  %xtraiter = and i64 %i.w, 3, !dbg !21271        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !21271
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !21271

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.x = phi i64 [ %i.ab, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ], !dbg !21266 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.ac, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], !dbg !21265 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.prol, !dbg !21266
  %.val16.i.prol = load i8, ptr %i.y, align 1, !dbg !21267, !noalias !21249, !noundef !598
  %i.z = uitofp i8 %.val16.i.prol to double, !dbg !21268
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.x, !dbg !21269
  store double %i.z, ptr %i.aa, align 8, !dbg !21270, !noalias !21253
  %i.ab = add i64 %i.x, 1, !dbg !21272            ; 3 uses
  %i.ac = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !21273 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !21271 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !21271
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !21271, !llvm.loop !21242

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ab, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ab, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.ac, %scalar.ph.prol ]
  %i.ad = sub i64 %.sroa.01.0.i.ph, %i.e, !dbg !21271
  %i.ae = add i64 %i.ad, %i.f, !dbg !21271
  %i.af = icmp ugt i64 %i.ae, -4, !dbg !21271
  br i1 %i.af, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhduNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_dE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph, !dbg !21271

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ag = phi i64 [ %i.az, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !21266 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.ba, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !21265 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !21266
  %.val16.i = load i8, ptr %i.ah, align 1, !dbg !21267, !noalias !21249, !noundef !598
  %i.ai = uitofp i8 %.val16.i to double, !dbg !21268
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ag, !dbg !21269
  store double %i.ai, ptr %i.aj, align 8, !dbg !21270, !noalias !21253
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !21266
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1, !dbg !21266
  %.val16.i.1 = load i8, ptr %i.al, align 1, !dbg !21267, !noalias !21249, !noundef !598
  %i.am = uitofp i8 %.val16.i.1 to double, !dbg !21268
  %i.an = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ag, !dbg !21269
  %i.ao = getelementptr i8, ptr %i.an, i64 8, !dbg !21269
  store double %i.am, ptr %i.ao, align 8, !dbg !21270, !noalias !21253
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !21266
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 2, !dbg !21266
  %.val16.i.2 = load i8, ptr %i.aq, align 1, !dbg !21267, !noalias !21249, !noundef !598
  %i.ar = uitofp i8 %.val16.i.2 to double, !dbg !21268
  %i.as = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ag, !dbg !21269
  %i.at = getelementptr i8, ptr %i.as, i64 16, !dbg !21269
  store double %i.ar, ptr %i.at, align 8, !dbg !21270, !noalias !21253
end_hunk_2
begin_hunk_3_@_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecnE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute:bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !21605    ; 2 uses
  %i.f = ptrtoint ptr %i.a to i64, !dbg !21605    ; 2 uses
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !21605      ; 3 uses
  %xtraiter = and i64 %i.g, 1, !dbg !21606
  %i.h = add i64 %i.e, -1, !dbg !21606
  %i.i = icmp eq i64 %i.h, %i.f, !dbg !21606
  br i1 %i.i, label %.epil.preheader, label %.new, !dbg !21606

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.g, -2, !dbg !21606
  br label %bb.c, !dbg !21606

bb.c:                                             ; preds = %bb.c, %.new
  %i.j = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.s, %bb.c ], !dbg !21607 ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.t, %bb.c ], !dbg !21608 ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !21607
  %.val16.i = load i8, ptr %i.k, align 1, !dbg !21609, !noalias !21593, !noundef !598
  %i.l = zext i8 %.val16.i to i128, !dbg !21610
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.j, !dbg !21611
  store i128 %i.l, ptr %i.m, align 16, !dbg !21612, !noalias !21595
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !21607
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1, !dbg !21607
  %.val16.i.1 = load i8, ptr %i.o, align 1, !dbg !21609, !noalias !21593, !noundef !598
  %i.p = zext i8 %.val16.i.1 to i128, !dbg !21610
  %i.q = getelementptr [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.j, !dbg !21611
  %i.r = getelementptr i8, ptr %i.q, i64 16, !dbg !21611
  store i128 %i.p, ptr %i.r, align 16, !dbg !21612, !noalias !21595
  %i.s = add i64 %i.j, 2, !dbg !21613             ; 3 uses
  %i.t = add nuw i64 %.sroa.01.0.i, 2, !dbg !21614 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !21615  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !21615
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhnuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecnE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, label %bb.c, !dbg !21615

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhnuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecnE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !21615
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhnuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecnE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %.epil.preheader, !dbg !21615

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhnuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecnE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.s, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhnuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecnE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.t, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhnuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecnE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.g to i1, !dbg !21615
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !21615
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.epil.init, !dbg !21607
  %.val16.i.epil = load i8, ptr %i.u, align 1, !dbg !21609, !noalias !21593, !noundef !598
  %i.v = zext i8 %.val16.i.epil to i128, !dbg !21610
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init, !dbg !21611
  store i128 %i.v, ptr %i.w, align 16, !dbg !21612, !noalias !21595
  %i.x = add i64 %.epil.init, 1, !dbg !21613
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhnuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecnE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhnuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecnE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhnuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecnE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.s, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhnuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecnE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ], [ %i.x, %.epil.preheader ], !dbg !21616
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !21616, !noalias !21593
  ret void, !dbg !21617
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecoE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !21618 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !21680, !nonnull !598, !noundef !598 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !21680
  %i.c = load ptr, ptr %i.b, align 8, !dbg !21680, !nonnull !598, !noundef !598 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !21681 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !21681
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !21681 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !21681
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !21681 ; 3 uses
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !21682
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.b, !dbg !21683

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !21684    ; 2 uses
  %i.f = ptrtoint ptr %i.a to i64, !dbg !21684    ; 2 uses
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !21684      ; 3 uses
  %xtraiter = and i64 %i.g, 1, !dbg !21685
  %i.h = add i64 %i.e, -1, !dbg !21685
  %i.i = icmp eq i64 %i.h, %i.f, !dbg !21685
  br i1 %i.i, label %.epil.preheader, label %.new, !dbg !21685

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.g, -2, !dbg !21685
  br label %bb.c, !dbg !21685

bb.c:                                             ; preds = %bb.c, %.new
  %i.j = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.s, %bb.c ], !dbg !21686 ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.t, %bb.c ], !dbg !21687 ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !21686
  %.val16.i = load i8, ptr %i.k, align 1, !dbg !21688, !noalias !21672, !noundef !598
  %i.l = zext i8 %.val16.i to i128, !dbg !21689
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.j, !dbg !21690
  store i128 %i.l, ptr %i.m, align 16, !dbg !21691, !noalias !21674
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !21686
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1, !dbg !21686
  %.val16.i.1 = load i8, ptr %i.o, align 1, !dbg !21688, !noalias !21672, !noundef !598
  %i.p = zext i8 %.val16.i.1 to i128, !dbg !21689
  %i.q = getelementptr [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.j, !dbg !21690
  %i.r = getelementptr i8, ptr %i.q, i64 16, !dbg !21690
  store i128 %i.p, ptr %i.r, align 16, !dbg !21691, !noalias !21674
  %i.s = add i64 %i.j, 2, !dbg !21692             ; 3 uses
  %i.t = add nuw i64 %.sroa.01.0.i, 2, !dbg !21693 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !21694  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !21694
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, label %bb.c, !dbg !21694

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !21694
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %.epil.preheader, !dbg !21694

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.s, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.t, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.g to i1, !dbg !21694
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !21694
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.epil.init, !dbg !21686
  %.val16.i.epil = load i8, ptr %i.u, align 1, !dbg !21688, !noalias !21672, !noundef !598
  %i.v = zext i8 %.val16.i.epil to i128, !dbg !21689
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init, !dbg !21690
  store i128 %i.v, ptr %i.w, align 16, !dbg !21691, !noalias !21674
  %i.x = add i64 %.epil.init, 1, !dbg !21692
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.s, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ], [ %i.x, %.epil.preheader ], !dbg !21695
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !21695, !noalias !21672
  ret void, !dbg !21696
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivesE3as_sE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecsE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !21697 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !21769, !nonnull !598, !noundef !598 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !21769
  %i.c = load ptr, ptr %i.b, align 8, !dbg !21769, !nonnull !598, !noundef !598 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !21770 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !21770
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !21770 ; 9 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !21770
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !21770 ; 9 uses
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !21771
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhsuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivesE3as_sE0NCINvNvBS_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecsE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %iter.check, !dbg !21772

iter.check:                                       ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !21773    ; 4 uses
  %i.f = ptrtoint ptr %i.a to i64, !dbg !21773    ; 4 uses
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !21773      ; 8 uses
  %min.iters.check = icmp ult i64 %i.g, 4, !dbg !21774
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck, !dbg !21774

vector.memcheck:                                  ; preds = %iter.check
  %i.h = shl i64 %.sroa.5.0.copyload, 1, !dbg !21774
  %i.i = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.h, !dbg !21774
  %i.j = add i64 %.sroa.5.0.copyload, %i.e, !dbg !21774
  %i.k = sub i64 %i.j, %i.f, !dbg !21774
  %i.l = shl i64 %i.k, 1, !dbg !21774
  %i.m = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.l, !dbg !21774
  %bound0 = icmp ult ptr %i.i, %i.c, !dbg !21774
  %bound1 = icmp ult ptr %i.a, %i.m, !dbg !21774
  %found.conflict = and i1 %bound0, %bound1, !dbg !21774
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !21775

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check4 = icmp ult i64 %i.g, 16, !dbg !21774
  br i1 %min.iters.check4, label %vec.epilog.ph, label %vector.ph, !dbg !21774

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.n = and i64 %i.g, 12
  %n.vec = and i64 %i.g, -16                      ; 5 uses
  %i.o = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.p = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !21774

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !21775 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 %index, !dbg !21776 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !21777
  %wide.load = load <8 x i8>, ptr %i.q, align 1, !dbg !21777, !alias.scope !21758, !noalias !21759
  %wide.load5 = load <8 x i8>, ptr %i.r, align 1, !dbg !21777, !alias.scope !21758, !noalias !21759
  %i.s = zext <8 x i8> %wide.load to <8 x i16>, !dbg !21778
  %i.t = zext <8 x i8> %wide.load5 to <8 x i16>, !dbg !21778
  %i.u = getelementptr [2 x i8], ptr %i.p, i64 %index, !dbg !21779 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !21780
  store <8 x i16> %i.s, ptr %i.u, align 2, !dbg !21780, !alias.scope !21761, !noalias !21762
  store <8 x i16> %i.t, ptr %i.v, align 2, !dbg !21780, !alias.scope !21761, !noalias !21762
  %index.next = add nuw i64 %index, 16, !dbg !21775 ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec, !dbg !21781
  br i1 %i.w, label %middle.block, label %vector.body, !dbg !21781, !llvm.loop !21746

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec, !dbg !21781
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhsuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivesE3as_sE0NCINvNvBS_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecsE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.iter.check, !dbg !21781

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.n, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !987

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !21775
  %n.vec6 = and i64 %i.g, -4                      ; 4 uses
  %i.x = add i64 %.sroa.5.0.copyload, %n.vec6     ; 2 uses
  %i.y = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index7 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next9, %vec.epilog.vector.body ], !dbg !21775 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 %index7, !dbg !21776
  %wide.load8 = load <4 x i8>, ptr %i.z, align 1, !dbg !21777, !alias.scope !21758, !noalias !21759
  %i.aa = zext <4 x i8> %wide.load8 to <4 x i16>, !dbg !21778
  %i.ab = getelementptr [2 x i8], ptr %i.y, i64 %index7, !dbg !21779
  store <4 x i16> %i.aa, ptr %i.ab, align 2, !dbg !21780, !alias.scope !21761, !noalias !21762
  %index.next9 = add nuw i64 %index7, 4, !dbg !21775 ; 2 uses
  %i.ac = icmp eq i64 %index.next9, %n.vec6, !dbg !21781
  br i1 %i.ac, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !21781, !llvm.loop !21747

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n10 = icmp eq i64 %i.g, %n.vec6, !dbg !21781
  br i1 %cmp.n10, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhsuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivesE3as_sE0NCINvNvBS_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecsE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph.preheader, !dbg !21781

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %iter.check ], [ %.sroa.5.0.copyload, %vector.memcheck ], [ %i.o, %vec.epilog.iter.check ], [ %i.x, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec6, %vec.epilog.middle.block ] ; 3 uses
  %i.ad = sub i64 %i.e, %i.f, !dbg !21781
  %xtraiter = and i64 %i.ad, 3, !dbg !21781       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !21781
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !21781

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %i.ae = phi i64 [ %i.ai, %vec.epilog.scalar.ph.prol ], [ %.ph, %vec.epilog.scalar.ph.preheader ], !dbg !21776 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.aj, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !21775 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.prol, !dbg !21776
  %.val16.i.prol = load i8, ptr %i.af, align 1, !dbg !21777, !noalias !21759, !noundef !598
  %i.ag = zext i8 %.val16.i.prol to i16, !dbg !21778
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !21779
  store i16 %i.ag, ptr %i.ah, align 2, !dbg !21780, !noalias !21763
  %i.ai = add i64 %i.ae, 1, !dbg !21782           ; 3 uses
  %i.aj = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !21783 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !21781 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !21781
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !21781, !llvm.loop !21752

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.ai, %vec.epilog.scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ai, %vec.epilog.scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.aj, %vec.epilog.scalar.ph.prol ]
  %i.ak = sub i64 %.sroa.01.0.i.ph, %i.e, !dbg !21781
  %i.al = add i64 %i.ak, %i.f, !dbg !21781
  %i.am = icmp ugt i64 %i.al, -4, !dbg !21781
  br i1 %i.am, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhsuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivesE3as_sE0NCINvNvBS_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecsE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph, !dbg !21781

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.an = phi i64 [ %i.bg, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !21776 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.bh, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !21775 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !21776
  %.val16.i = load i8, ptr %i.ao, align 1, !dbg !21777, !noalias !21759, !noundef !598
  %i.ap = zext i8 %.val16.i to i16, !dbg !21778
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.an, !dbg !21779
  store i16 %i.ap, ptr %i.aq, align 2, !dbg !21780, !noalias !21763
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !21776
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1, !dbg !21776
  %.val16.i.1 = load i8, ptr %i.as, align 1, !dbg !21777, !noalias !21759, !noundef !598
  %i.at = zext i8 %.val16.i.1 to i16, !dbg !21778
  %i.au = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.an, !dbg !21779
  %i.av = getelementptr i8, ptr %i.au, i64 2, !dbg !21779
  store i16 %i.at, ptr %i.av, align 2, !dbg !21780, !noalias !21763
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !21776
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 2, !dbg !21776
  %.val16.i.2 = load i8, ptr %i.ax, align 1, !dbg !21777, !noalias !21759, !noundef !598
  %i.ay = zext i8 %.val16.i.2 to i16, !dbg !21778
  %i.az = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.an, !dbg !21779
  %i.ba = getelementptr i8, ptr %i.az, i64 4, !dbg !21779
  store i16 %i.ay, ptr %i.ba, align 2, !dbg !21780, !noalias !21763
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !21776
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 3, !dbg !21776
  %.val16.i.3 = load i8, ptr %i.bc, align 1, !dbg !21777, !noalias !21759, !noundef !598
  %i.bd = zext i8 %.val16.i.3 to i16, !dbg !21778
  %i.be = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.an, !dbg !21779
  %i.bf = getelementptr i8, ptr %i.be, i64 6, !dbg !21779
  store i16 %i.bd, ptr %i.bf, align 2, !dbg !21780, !noalias !21763
  %i.bg = add i64 %i.an, 4, !dbg !21782           ; 2 uses
  %i.bh = add nuw i64 %.sroa.01.0.i, 4, !dbg !21783 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, %i.g, !dbg !21781
  br i1 %i.bi, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhsuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivesE3as_sE0NCINvNvBS_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecsE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph, !dbg !21781, !llvm.loop !21753

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhsuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivesE3as_sE0NCINvNvBS_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecsE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.x, %vec.epilog.middle.block ], [ %i.o, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.bg, %vec.epilog.scalar.ph ], !dbg !21784
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !21784, !noalias !21759
  ret void, !dbg !21785
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivetE3as_tE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VectE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !21786 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !21858, !nonnull !598, !noundef !598 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !21858
  %i.c = load ptr, ptr %i.b, align 8, !dbg !21858, !nonnull !598, !noundef !598 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !21859 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !21859
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !21859 ; 9 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !21859
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !21859 ; 9 uses
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !21860
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhtuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivetE3as_tE0NCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VectE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %iter.check, !dbg !21861

iter.check:                                       ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !21862    ; 4 uses
  %i.f = ptrtoint ptr %i.a to i64, !dbg !21862    ; 4 uses
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !21862      ; 8 uses
  %min.iters.check = icmp ult i64 %i.g, 4, !dbg !21863
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck, !dbg !21863

vector.memcheck:                                  ; preds = %iter.check
  %i.h = shl i64 %.sroa.5.0.copyload, 1, !dbg !21863
  %i.i = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.h, !dbg !21863
  %i.j = add i64 %.sroa.5.0.copyload, %i.e, !dbg !21863
  %i.k = sub i64 %i.j, %i.f, !dbg !21863
  %i.l = shl i64 %i.k, 1, !dbg !21863
  %i.m = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.l, !dbg !21863
  %bound0 = icmp ult ptr %i.i, %i.c, !dbg !21863
  %bound1 = icmp ult ptr %i.a, %i.m, !dbg !21863
  %found.conflict = and i1 %bound0, %bound1, !dbg !21863
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !21864

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check4 = icmp ult i64 %i.g, 16, !dbg !21863
  br i1 %min.iters.check4, label %vec.epilog.ph, label %vector.ph, !dbg !21863

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.n = and i64 %i.g, 12
  %n.vec = and i64 %i.g, -16                      ; 5 uses
  %i.o = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.p = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !21863

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !21864 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 %index, !dbg !21865 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !21866
  %wide.load = load <8 x i8>, ptr %i.q, align 1, !dbg !21866, !alias.scope !21847, !noalias !21848
  %wide.load5 = load <8 x i8>, ptr %i.r, align 1, !dbg !21866, !alias.scope !21847, !noalias !21848
  %i.s = zext <8 x i8> %wide.load to <8 x i16>, !dbg !21867
  %i.t = zext <8 x i8> %wide.load5 to <8 x i16>, !dbg !21867
  %i.u = getelementptr [2 x i8], ptr %i.p, i64 %index, !dbg !21868 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !21869
  store <8 x i16> %i.s, ptr %i.u, align 2, !dbg !21869, !alias.scope !21850, !noalias !21851
  store <8 x i16> %i.t, ptr %i.v, align 2, !dbg !21869, !alias.scope !21850, !noalias !21851
  %index.next = add nuw i64 %index, 16, !dbg !21864 ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec, !dbg !21870
  br i1 %i.w, label %middle.block, label %vector.body, !dbg !21870, !llvm.loop !21835

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec, !dbg !21870
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhtuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivetE3as_tE0NCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VectE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.iter.check, !dbg !21870

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.n, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !987

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !21864
  %n.vec6 = and i64 %i.g, -4                      ; 4 uses
  %i.x = add i64 %.sroa.5.0.copyload, %n.vec6     ; 2 uses
  %i.y = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index7 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next9, %vec.epilog.vector.body ], !dbg !21864 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 %index7, !dbg !21865
  %wide.load8 = load <4 x i8>, ptr %i.z, align 1, !dbg !21866, !alias.scope !21847, !noalias !21848
  %i.aa = zext <4 x i8> %wide.load8 to <4 x i16>, !dbg !21867
  %i.ab = getelementptr [2 x i8], ptr %i.y, i64 %index7, !dbg !21868
  store <4 x i16> %i.aa, ptr %i.ab, align 2, !dbg !21869, !alias.scope !21850, !noalias !21851
  %index.next9 = add nuw i64 %index7, 4, !dbg !21864 ; 2 uses
  %i.ac = icmp eq i64 %index.next9, %n.vec6, !dbg !21870
  br i1 %i.ac, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !21870, !llvm.loop !21836

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n10 = icmp eq i64 %i.g, %n.vec6, !dbg !21870
  br i1 %cmp.n10, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhtuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivetE3as_tE0NCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VectE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph.preheader, !dbg !21870

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %iter.check ], [ %.sroa.5.0.copyload, %vector.memcheck ], [ %i.o, %vec.epilog.iter.check ], [ %i.x, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec6, %vec.epilog.middle.block ] ; 3 uses
  %i.ad = sub i64 %i.e, %i.f, !dbg !21870
  %xtraiter = and i64 %i.ad, 3, !dbg !21870       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !21870
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !21870

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %i.ae = phi i64 [ %i.ai, %vec.epilog.scalar.ph.prol ], [ %.ph, %vec.epilog.scalar.ph.preheader ], !dbg !21865 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.aj, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !21864 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.prol, !dbg !21865
  %.val16.i.prol = load i8, ptr %i.af, align 1, !dbg !21866, !noalias !21848, !noundef !598
  %i.ag = zext i8 %.val16.i.prol to i16, !dbg !21867
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !21868
  store i16 %i.ag, ptr %i.ah, align 2, !dbg !21869, !noalias !21852
  %i.ai = add i64 %i.ae, 1, !dbg !21871           ; 3 uses
  %i.aj = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !21872 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !21870 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !21870
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !21870, !llvm.loop !21841

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.ai, %vec.epilog.scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ai, %vec.epilog.scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.aj, %vec.epilog.scalar.ph.prol ]
  %i.ak = sub i64 %.sroa.01.0.i.ph, %i.e, !dbg !21870
  %i.al = add i64 %i.ak, %i.f, !dbg !21870
  %i.am = icmp ugt i64 %i.al, -4, !dbg !21870
  br i1 %i.am, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhtuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivetE3as_tE0NCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VectE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph, !dbg !21870

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.an = phi i64 [ %i.bg, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !21865 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.bh, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !21864 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !21865
  %.val16.i = load i8, ptr %i.ao, align 1, !dbg !21866, !noalias !21848, !noundef !598
  %i.ap = zext i8 %.val16.i to i16, !dbg !21867
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.an, !dbg !21868
  store i16 %i.ap, ptr %i.aq, align 2, !dbg !21869, !noalias !21852
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !21865
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1, !dbg !21865
  %.val16.i.1 = load i8, ptr %i.as, align 1, !dbg !21866, !noalias !21848, !noundef !598
  %i.at = zext i8 %.val16.i.1 to i16, !dbg !21867
  %i.au = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.an, !dbg !21868
  %i.av = getelementptr i8, ptr %i.au, i64 2, !dbg !21868
  store i16 %i.at, ptr %i.av, align 2, !dbg !21869, !noalias !21852
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !21865
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 2, !dbg !21865
  %.val16.i.2 = load i8, ptr %i.ax, align 1, !dbg !21866, !noalias !21848, !noundef !598
  %i.ay = zext i8 %.val16.i.2 to i16, !dbg !21867
  %i.az = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.an, !dbg !21868
  %i.ba = getelementptr i8, ptr %i.az, i64 4, !dbg !21868
  store i16 %i.ay, ptr %i.ba, align 2, !dbg !21869, !noalias !21852
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !21865
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 3, !dbg !21865
  %.val16.i.3 = load i8, ptr %i.bc, align 1, !dbg !21866, !noalias !21848, !noundef !598
  %i.bd = zext i8 %.val16.i.3 to i16, !dbg !21867
  %i.be = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.an, !dbg !21868
  %i.bf = getelementptr i8, ptr %i.be, i64 6, !dbg !21868
  store i16 %i.bd, ptr %i.bf, align 2, !dbg !21869, !noalias !21852
  %i.bg = add i64 %i.an, 4, !dbg !21871           ; 2 uses
  %i.bh = add nuw i64 %.sroa.01.0.i, 4, !dbg !21872 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, %i.g, !dbg !21870
  br i1 %i.bi, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhtuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivetE3as_tE0NCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VectE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph, !dbg !21870, !llvm.loop !21842

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhtuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivetE3as_tE0NCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VectE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.x, %vec.epilog.middle.block ], [ %i.o, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.bg, %vec.epilog.scalar.ph ], !dbg !21873
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !21873, !noalias !21848
  ret void, !dbg !21874
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivexE3as_xE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecxE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !21875 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !21938, !nonnull !598, !noundef !598 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !21938
  %i.c = load ptr, ptr %i.b, align 8, !dbg !21938, !nonnull !598, !noundef !598 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !21939 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !21939
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !21939 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !21939
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !21939 ; 5 uses
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !21940
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhxuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivexE3as_xE0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.b, !dbg !21941

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !21942    ; 2 uses
  %i.f = ptrtoint ptr %i.a to i64, !dbg !21942    ; 2 uses
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !21942      ; 2 uses
  %xtraiter = and i64 %i.g, 3, !dbg !21943        ; 3 uses
  %i.h = sub i64 %i.f, %i.e, !dbg !21943
  %i.i = icmp ugt i64 %i.h, -4, !dbg !21943
  br i1 %i.i, label %.epil.preheader, label %.new, !dbg !21943

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.g, -4, !dbg !21943
  br label %bb.c, !dbg !21943

bb.c:                                             ; preds = %bb.c, %.new
  %i.j = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.ac, %bb.c ], !dbg !21944 ; 5 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.ad, %bb.c ], !dbg !21945 ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !21944
  %.val16.i = load i8, ptr %i.k, align 1, !dbg !21946, !noalias !21930, !noundef !598
  %i.l = zext i8 %.val16.i to i64, !dbg !21947
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.j, !dbg !21948
  store i64 %i.l, ptr %i.m, align 8, !dbg !21949, !noalias !21932
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !21944
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1, !dbg !21944
  %.val16.i.1 = load i8, ptr %i.o, align 1, !dbg !21946, !noalias !21930, !noundef !598
  %i.p = zext i8 %.val16.i.1 to i64, !dbg !21947
  %i.q = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.j, !dbg !21948
  %i.r = getelementptr i8, ptr %i.q, i64 8, !dbg !21948
  store i64 %i.p, ptr %i.r, align 8, !dbg !21949, !noalias !21932
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !21944
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 2, !dbg !21944
  %.val16.i.2 = load i8, ptr %i.t, align 1, !dbg !21946, !noalias !21930, !noundef !598
  %i.u = zext i8 %.val16.i.2 to i64, !dbg !21947
  %i.v = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.j, !dbg !21948
  %i.w = getelementptr i8, ptr %i.v, i64 16, !dbg !21948
  store i64 %i.u, ptr %i.w, align 8, !dbg !21949, !noalias !21932
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !21944
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 3, !dbg !21944
  %.val16.i.3 = load i8, ptr %i.y, align 1, !dbg !21946, !noalias !21930, !noundef !598
  %i.z = zext i8 %.val16.i.3 to i64, !dbg !21947
  %i.aa = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.j, !dbg !21948
  %i.ab = getelementptr i8, ptr %i.aa, i64 24, !dbg !21948
  store i64 %i.z, ptr %i.ab, align 8, !dbg !21949, !noalias !21932
  %i.ac = add i64 %i.j, 4, !dbg !21950            ; 3 uses
  %i.ad = add nuw i64 %.sroa.01.0.i, 4, !dbg !21951 ; 2 uses
  %niter.next.3 = add i64 %niter, 4, !dbg !21952  ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !21952
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhxuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivexE3as_xE0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, label %bb.c, !dbg !21952

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhxuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivexE3as_xE0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !21952
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhxuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivexE3as_xE0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %.epil.preheader, !dbg !21952

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhxuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivexE3as_xE0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.ac, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhxuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivexE3as_xE0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ]
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.ad, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhxuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivexE3as_xE0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0, !dbg !21952
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !21952
  br label %bb.d, !dbg !21952

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %i.ae = phi i64 [ %.epil.init, %.epil.preheader ], [ %i.ai, %bb.d ], !dbg !21944 ; 2 uses
  %.sroa.01.0.i.epil = phi i64 [ %.sroa.01.0.i.epil.init, %.epil.preheader ], [ %i.aj, %bb.d ], !dbg !21945 ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.epil, !dbg !21944
  %.val16.i.epil = load i8, ptr %i.af, align 1, !dbg !21946, !noalias !21930, !noundef !598
  %i.ag = zext i8 %.val16.i.epil to i64, !dbg !21947
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !21948
  store i64 %i.ag, ptr %i.ah, align 8, !dbg !21949, !noalias !21932
  %i.ai = add i64 %i.ae, 1, !dbg !21950           ; 2 uses
  %i.aj = add nuw i64 %.sroa.01.0.i.epil, 1, !dbg !21951
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !21952 ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !21952
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhxuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivexE3as_xE0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.d, !dbg !21952, !llvm.loop !21925

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhxuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivexE3as_xE0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhxuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivexE3as_xE0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.ac, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhxuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivexE3as_xE0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ], [ %i.ai, %bb.d ], !dbg !21953
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !21953, !noalias !21930
  ret void, !dbg !21954
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unaryhNvYhINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveyE3as_yE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecyE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !21955 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !22018, !nonnull !598, !noundef !598 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22018
  %i.c = load ptr, ptr %i.b, align 8, !dbg !22018, !nonnull !598, !noundef !598 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !22019 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22019
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !22019 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !22019
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !22019 ; 5 uses
end_hunk_3
begin_hunk_4_@_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4ItersENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveNtNtCs2mZqlW55729_12polars_utils7float164pf16E3as_B3c_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB47_8for_each4callB3c_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5n_3VecB3c_E14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27187), !dbg !27208
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27188), !dbg !27209
  %i.j = load i16, ptr %i.i, align 2, !dbg !27210, !alias.scope !27189, !noalias !27190, !noundef !598
  %i.k = sitofp i16 %i.j to float, !dbg !27211    ; 2 uses
  %i.l = load atomic i64, ptr @_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache5CACHE monotonic, align 8, !dbg !27212, !noalias !27193 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0, !dbg !27213
  br i1 %i.m, label %.split.i.i.i.i.i.i, label %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i.i.i.i.i, !dbg !27213, !prof !670

.split.i.i.i.i.i.i:                               ; preds = %bb.c
  %i.n = invoke noundef i128 @_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache21detect_and_initialize()
          to label %.noexc.i unwind label %bb.q, !dbg !27214, !noalias !27190

.noexc.i:                                         ; preds = %.split.i.i.i.i.i.i
  %i.o = and i128 %i.n, 36028797018963968, !dbg !27215
  %.not1.i.i.i.i.i.i = icmp eq i128 %i.o, 0, !dbg !27215
  br i1 %.not1.i.i.i.i.i.i, label %bb.d, label %bb.o, !dbg !27216

_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.p = and i64 %i.l, 36028797018963968, !dbg !27217
  %.not.i.i.i.i.i.i = icmp eq i64 %i.p, 0, !dbg !27217
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.o, !dbg !27216

bb.d:                                             ; preds = %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i.i.i.i.i, %.noexc.i
  %i.q = bitcast float %i.k to i32, !dbg !27218   ; 5 uses
  %i.r = and i32 %i.q, -2147483648, !dbg !27219   ; 2 uses
  %i.s = and i32 %i.q, 2139095040, !dbg !27220    ; 6 uses
  %i.t = and i32 %i.q, 8388607, !dbg !27221       ; 4 uses
  %i.u = icmp eq i32 %i.s, 2139095040, !dbg !27222
  br i1 %i.u, label %bb.e, label %bb.f, !dbg !27222

bb.e:                                             ; preds = %bb.d
  %i.v = icmp eq i32 %i.t, 0, !dbg !27223
  %..i.i.i.i.i.i.i = select i1 %i.v, i32 0, i32 512, !dbg !27224
  %i.w = lshr exact i32 %i.r, 16, !dbg !27225
  %i.x = lshr i32 %i.t, 13, !dbg !27226
  %i.y = or disjoint i32 %i.x, %i.w, !dbg !27225
  %i.z = or i32 %i.y, %..i.i.i.i.i.i.i, !dbg !27227
  %i.aa = trunc nuw i32 %i.z to i16, !dbg !27227
  %i.ab = or disjoint i16 %i.aa, 31744, !dbg !27227
  br label %bb.p, !dbg !27228

bb.f:                                             ; preds = %bb.d
  %i.ac = lshr exact i32 %i.r, 16, !dbg !27229    ; 4 uses
  %i.ad = lshr exact i32 %i.s, 23, !dbg !27230    ; 2 uses
  %i.ae = icmp samesign ugt i32 %i.s, 1191182336, !dbg !27231
  br i1 %i.ae, label %bb.h, label %bb.g, !dbg !27231

bb.g:                                             ; preds = %bb.f
  %i.af = icmp samesign ult i32 %i.s, 947912704, !dbg !27232
  br i1 %i.af, label %bb.j, label %bb.i, !dbg !27232

bb.h:                                             ; preds = %bb.f
  %i.ag = trunc nuw i32 %i.ac to i16, !dbg !27233
  %i.ah = or disjoint i16 %i.ag, 31744, !dbg !27233
  br label %bb.p, !dbg !27234

bb.i:                                             ; preds = %bb.g
  %i.ai = lshr exact i32 %i.s, 13, !dbg !27235
  %i.aj = add nuw nsw i32 %i.ai, 16384, !dbg !27235
  %i.ak = lshr i32 %i.t, 13, !dbg !27236
  %i.al = and i32 %i.q, 4096, !dbg !27237
  %i.am = icmp ne i32 %i.al, 0, !dbg !27237
  %i.an = and i32 %i.q, 12287
  %i.ao = icmp ne i32 %i.an, 0
  %or.cond.not.i.i.i.i.i.i.i = and i1 %i.am, %i.ao, !dbg !27238
  %i.ap = or disjoint i32 %i.aj, %i.ak, !dbg !27238
  %i.aq = or i32 %i.ap, %i.ac, !dbg !27238
  %i.ar = trunc i32 %i.aq to i16, !dbg !27238
  %i.as = zext i1 %or.cond.not.i.i.i.i.i.i.i to i16, !dbg !27237
  %spec.select7.i.i.i.i.i.i.i = add i16 %i.ar, %i.as, !dbg !27237
  br label %bb.p, !dbg !27237

bb.j:                                             ; preds = %bb.g
  %i.at = icmp samesign ult i32 %i.s, 855638016, !dbg !27239
  br i1 %i.at, label %bb.l, label %bb.k, !dbg !27239

bb.k:                                             ; preds = %bb.j
  %i.au = sub nsw i32 126, %i.ad, !dbg !27239
  %i.av = or disjoint i32 %i.t, 8388608, !dbg !27240 ; 3 uses
  %i.aw = lshr i32 %i.av, %i.au, !dbg !27241      ; 2 uses
  %i.ax = sub nsw i32 29, %i.ad, !dbg !27242
  %i.ay = and i32 %i.ax, 31, !dbg !27243          ; 2 uses
  %i.az = shl nuw i32 1, %i.ay, !dbg !27243
  %i.ba = and i32 %i.az, %i.av, !dbg !27244
  %i.bb = icmp eq i32 %i.ba, 0, !dbg !27244
  br i1 %i.bb, label %bb.n, label %bb.m, !dbg !27244

bb.l:                                             ; preds = %bb.j
  %i.bc = trunc nuw i32 %i.ac to i16, !dbg !27245
  br label %bb.p, !dbg !27234

bb.m:                                             ; preds = %bb.k
  %i.bd = shl i32 3, %i.ay, !dbg !27246
  %i.be = add nuw i32 %i.bd, 16777215, !dbg !27247
  %i.bf = and i32 %i.be, %i.av, !dbg !27248
  %i.bg = icmp ne i32 %i.bf, 0, !dbg !27248
  %i.bh = zext i1 %i.bg to i32, !dbg !27248
  %spec.select.i.i.i.i.i.i.i = add nuw nsw i32 %i.aw, %i.bh, !dbg !27248
  br label %bb.n, !dbg !27248

bb.n:                                             ; preds = %bb.m, %bb.k
  %.sroa.03.0.i.i.i.i.i.i.i = phi i32 [ %i.aw, %bb.k ], [ %spec.select.i.i.i.i.i.i.i, %bb.m ], !dbg !27249
  %i.bi = or i32 %.sroa.03.0.i.i.i.i.i.i.i, %i.ac, !dbg !27250
  %i.bj = trunc nuw i32 %i.bi to i16, !dbg !27250
  br label %bb.p, !dbg !27234

bb.o:                                             ; preds = %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i.i.i.i.i, %.noexc.i
  %i.bk = tail call fastcc noundef i16 @_RNvNtNtNtCshdiYQzaKNQ1_4half8binary164arch3x8619f32_to_f16_x86_f16c(float noundef %i.k), !dbg !27251
  br label %bb.p, !dbg !27251

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.l, %bb.i, %bb.h, %bb.e
  %.sroa.0.0.i.i.i.i.i.i = phi i16 [ %i.bk, %bb.o ], [ %i.ab, %bb.e ], [ %i.ah, %bb.h ], [ %i.bc, %bb.l ], [ %i.bj, %bb.n ], [ %spec.select7.i.i.i.i.i.i.i, %bb.i ], !dbg !27252
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i, !dbg !27253
  store i16 %.sroa.0.0.i.i.i.i.i.i, ptr %i.bl, align 2, !dbg !27254, !noalias !27194
  %i.bm = add i64 %.val15.i, 1, !dbg !27255       ; 2 uses
  %i.bn = add nuw i64 %.sroa.01.0.i, 1, !dbg !27256 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, %i.h, !dbg !27257
  br i1 %i.bo, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRsNtNtCs2mZqlW55729_12polars_utils7float164pf16uNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveB2d_E3as_B2d_E0NCINvNvBS_8for_each4callB2d_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5A_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2X_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.c, !dbg !27257

bb.q:                                             ; preds = %.split.i.i.i.i.i.i
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !dbg !27258, !noalias !27190
  resume { ptr, i32 } %i.bp, !dbg !27259

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRsNtNtCs2mZqlW55729_12polars_utils7float164pf16uNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveB2d_E3as_B2d_E0NCINvNvBS_8for_each4callB2d_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5A_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2X_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.p, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.bm, %bb.p ], !dbg !27260
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !27260, !noalias !27190
  ret void, !dbg !27261
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4ItersENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveaE3as_aE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecaE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !27262 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !27334, !nonnull !598, !noundef !598 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !27334
  %i.c = load ptr, ptr %i.b, align 8, !dbg !27334, !nonnull !598, !noundef !598 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !27335 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !27335
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !27335 ; 9 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !27335
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !27335 ; 9 uses
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !27336
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRsauNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveaE3as_aE0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecaE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %iter.check, !dbg !27337

iter.check:                                       ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !27338
  %i.f = ptrtoint ptr %i.a to i64, !dbg !27338
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !27338      ; 4 uses
  %i.h = lshr i64 %i.g, 1, !dbg !27338            ; 8 uses
  %min.iters.check = icmp ult i64 %i.g, 8, !dbg !27339
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck, !dbg !27339

vector.memcheck:                                  ; preds = %iter.check
  %i.i = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload, !dbg !27339
  %i.j = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload, !dbg !27339
  %i.k = getelementptr i8, ptr %i.j, i64 %i.h, !dbg !27339
  %bound0 = icmp ult ptr %i.i, %i.c, !dbg !27339
  %bound1 = icmp ult ptr %i.a, %i.k, !dbg !27339
  %found.conflict = and i1 %bound0, %bound1, !dbg !27339
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !27340

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check4 = icmp ult i64 %i.g, 32, !dbg !27339
  br i1 %min.iters.check4, label %vec.epilog.ph, label %vector.ph, !dbg !27339

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.h, 9223372036854775792      ; 5 uses
  %i.l = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.m = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !27339

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !27340 ; 3 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index, !dbg !27341 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !27342
  %wide.load = load <8 x i16>, ptr %i.n, align 2, !dbg !27342, !alias.scope !27323, !noalias !27324
  %wide.load5 = load <8 x i16>, ptr %i.o, align 2, !dbg !27342, !alias.scope !27323, !noalias !27324
  %i.p = trunc <8 x i16> %wide.load to <8 x i8>, !dbg !27343
  %i.q = trunc <8 x i16> %wide.load5 to <8 x i8>, !dbg !27343
  %i.r = getelementptr i8, ptr %i.m, i64 %index, !dbg !27344 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !27345
  store <8 x i8> %i.p, ptr %i.r, align 1, !dbg !27345, !alias.scope !27326, !noalias !27327
  store <8 x i8> %i.q, ptr %i.s, align 1, !dbg !27345, !alias.scope !27326, !noalias !27327
  %index.next = add nuw i64 %index, 16, !dbg !27340 ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec, !dbg !27346
  br i1 %i.t, label %middle.block, label %vector.body, !dbg !27346, !llvm.loop !27311

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec, !dbg !27346
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRsauNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveaE3as_aE0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecaE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.iter.check, !dbg !27346

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.u = and i64 %i.g, 24
  %min.epilog.iters.check = icmp eq i64 %i.u, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !987

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !27340
  %n.vec6 = and i64 %i.h, 9223372036854775804     ; 4 uses
  %i.v = add i64 %.sroa.5.0.copyload, %n.vec6     ; 2 uses
  %i.w = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index7 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next9, %vec.epilog.vector.body ], !dbg !27340 ; 3 uses
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index7, !dbg !27341
  %wide.load8 = load <4 x i16>, ptr %i.x, align 2, !dbg !27342, !alias.scope !27323, !noalias !27324
  %i.y = trunc <4 x i16> %wide.load8 to <4 x i8>, !dbg !27343
  %i.z = getelementptr i8, ptr %i.w, i64 %index7, !dbg !27344
  store <4 x i8> %i.y, ptr %i.z, align 1, !dbg !27345, !alias.scope !27326, !noalias !27327
  %index.next9 = add nuw i64 %index7, 4, !dbg !27340 ; 2 uses
  %i.aa = icmp eq i64 %index.next9, %n.vec6, !dbg !27346
  br i1 %i.aa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !27346, !llvm.loop !27312

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n10 = icmp eq i64 %i.h, %n.vec6, !dbg !27346
  br i1 %cmp.n10, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRsauNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveaE3as_aE0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecaE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph.preheader, !dbg !27346

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %iter.check ], [ %.sroa.5.0.copyload, %vector.memcheck ], [ %i.l, %vec.epilog.iter.check ], [ %i.v, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec6, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.h, 3, !dbg !27346        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !27346
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !27346

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %i.ab = phi i64 [ %i.af, %vec.epilog.scalar.ph.prol ], [ %.ph, %vec.epilog.scalar.ph.preheader ], !dbg !27341 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.ag, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !27340 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i.prol, !dbg !27341
  %.val16.i.prol = load i16, ptr %i.ac, align 2, !dbg !27342, !noalias !27324, !noundef !598
  %i.ad = trunc i16 %.val16.i.prol to i8, !dbg !27343
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.ab, !dbg !27344
  store i8 %i.ad, ptr %i.ae, align 1, !dbg !27345, !noalias !27328
  %i.af = add i64 %i.ab, 1, !dbg !27347           ; 3 uses
  %i.ag = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !27348 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !27346 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !27346
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !27346, !llvm.loop !27317

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.af, %vec.epilog.scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.af, %vec.epilog.scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ag, %vec.epilog.scalar.ph.prol ]
  %i.ah = sub nsw i64 %.sroa.01.0.i.ph, %i.h, !dbg !27346
  %i.ai = icmp ugt i64 %i.ah, -4, !dbg !27346
  br i1 %i.ai, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRsauNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveaE3as_aE0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecaE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph, !dbg !27346

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.aj = phi i64 [ %i.bc, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !27341 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.bd, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !27340 ; 5 uses
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !27341
  %.val16.i = load i16, ptr %i.ak, align 2, !dbg !27342, !noalias !27324, !noundef !598
  %i.al = trunc i16 %.val16.i to i8, !dbg !27343
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.aj, !dbg !27344
  store i8 %i.al, ptr %i.am, align 1, !dbg !27345, !noalias !27328
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !27341
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 2, !dbg !27341
  %.val16.i.1 = load i16, ptr %i.ao, align 2, !dbg !27342, !noalias !27324, !noundef !598
  %i.ap = trunc i16 %.val16.i.1 to i8, !dbg !27343
  %i.aq = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.aj, !dbg !27344
  %i.ar = getelementptr i8, ptr %i.aq, i64 1, !dbg !27344
  store i8 %i.ap, ptr %i.ar, align 1, !dbg !27345, !noalias !27328
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !27341
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4, !dbg !27341
  %.val16.i.2 = load i16, ptr %i.at, align 2, !dbg !27342, !noalias !27324, !noundef !598
  %i.au = trunc i16 %.val16.i.2 to i8, !dbg !27343
  %i.av = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.aj, !dbg !27344
  %i.aw = getelementptr i8, ptr %i.av, i64 2, !dbg !27344
  store i8 %i.au, ptr %i.aw, align 1, !dbg !27345, !noalias !27328
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !27341
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 6, !dbg !27341
  %.val16.i.3 = load i16, ptr %i.ay, align 2, !dbg !27342, !noalias !27324, !noundef !598
  %i.az = trunc i16 %.val16.i.3 to i8, !dbg !27343
  %i.ba = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.aj, !dbg !27344
  %i.bb = getelementptr i8, ptr %i.ba, i64 3, !dbg !27344
  store i8 %i.az, ptr %i.bb, align 1, !dbg !27345, !noalias !27328
  %i.bc = add i64 %i.aj, 4, !dbg !27347           ; 2 uses
  %i.bd = add nuw i64 %.sroa.01.0.i, 4, !dbg !27348 ; 2 uses
  %i.be = icmp eq i64 %i.bd, %i.h, !dbg !27346
  br i1 %i.be, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRsauNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveaE3as_aE0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecaE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph, !dbg !27346, !llvm.loop !27318

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRsauNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveaE3as_aE0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecaE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.v, %vec.epilog.middle.block ], [ %i.l, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.bc, %vec.epilog.scalar.ph ], !dbg !27349
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !27349, !noalias !27324
  ret void, !dbg !27350
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4ItersENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_dE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecdE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !27351 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !27422, !nonnull !598, !noundef !598 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !27422
  %i.c = load ptr, ptr %i.b, align 8, !dbg !27422, !nonnull !598, !noundef !598 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !27423 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !27423
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !27423 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !27423
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !27423 ; 8 uses
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !27424
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRsduNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_dE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.b, !dbg !27425

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !27426
  %i.f = ptrtoint ptr %i.a to i64, !dbg !27426
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !27426      ; 3 uses
  %i.h = lshr i64 %i.g, 1, !dbg !27426            ; 5 uses
  %min.iters.check = icmp ult i64 %i.g, 20, !dbg !27427
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !27427

vector.memcheck:                                  ; preds = %bb.b
  %i.i = shl i64 %.sroa.5.0.copyload, 3, !dbg !27427 ; 2 uses
  %i.j = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.i, !dbg !27427
  %i.k = shl i64 %i.g, 2, !dbg !27427
  %i.l = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.i, !dbg !27427
  %i.m = getelementptr i8, ptr %i.l, i64 %i.k, !dbg !27427
  %bound0 = icmp ult ptr %i.j, %i.c, !dbg !27427
  %bound1 = icmp ult ptr %i.a, %i.m, !dbg !27427
  %found.conflict = and i1 %bound0, %bound1, !dbg !27427
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph, !dbg !27428

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 9223372036854775804      ; 4 uses
  %i.n = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.o = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !27428

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !27428 ; 3 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index, !dbg !27429 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4, !dbg !27430
  %wide.load = load <2 x i16>, ptr %i.p, align 2, !dbg !27430, !alias.scope !27411, !noalias !27412
  %wide.load4 = load <2 x i16>, ptr %i.q, align 2, !dbg !27430, !alias.scope !27411, !noalias !27412
  %i.r = sitofp <2 x i16> %wide.load to <2 x double>, !dbg !27431
  %i.s = sitofp <2 x i16> %wide.load4 to <2 x double>, !dbg !27431
  %i.t = getelementptr [8 x i8], ptr %i.o, i64 %index, !dbg !27432 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !27433
  store <2 x double> %i.r, ptr %i.t, align 8, !dbg !27433, !alias.scope !27414, !noalias !27415
  store <2 x double> %i.s, ptr %i.u, align 8, !dbg !27433, !alias.scope !27414, !noalias !27415
  %index.next = add nuw i64 %index, 4, !dbg !27428 ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec, !dbg !27434
  br i1 %i.v, label %middle.block, label %vector.body, !dbg !27434, !llvm.loop !27400

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec, !dbg !27434
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRsduNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_dE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph.preheader, !dbg !27434

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.n, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.h, 3, !dbg !27434        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !27434
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !27434

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.w = phi i64 [ %i.aa, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ], !dbg !27429 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.ab, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], !dbg !27428 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i.prol, !dbg !27429
  %.val16.i.prol = load i16, ptr %i.x, align 2, !dbg !27430, !noalias !27412, !noundef !598
  %i.y = sitofp i16 %.val16.i.prol to double, !dbg !27431
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.w, !dbg !27432
  store double %i.y, ptr %i.z, align 8, !dbg !27433, !noalias !27416
  %i.aa = add i64 %i.w, 1, !dbg !27435            ; 3 uses
  %i.ab = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !27436 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !27434 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !27434
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !27434, !llvm.loop !27405

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.aa, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.aa, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.ab, %scalar.ph.prol ]
  %i.ac = sub nsw i64 %.sroa.01.0.i.ph, %i.h, !dbg !27434
  %i.ad = icmp ugt i64 %i.ac, -4, !dbg !27434
  br i1 %i.ad, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRsduNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_dE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph, !dbg !27434

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ae = phi i64 [ %i.ax, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !27429 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.ay, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !27428 ; 5 uses
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !27429
  %.val16.i = load i16, ptr %i.af, align 2, !dbg !27430, !noalias !27412, !noundef !598
  %i.ag = sitofp i16 %.val16.i to double, !dbg !27431
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !27432
  store double %i.ag, ptr %i.ah, align 8, !dbg !27433, !noalias !27416
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !27429
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2, !dbg !27429
  %.val16.i.1 = load i16, ptr %i.aj, align 2, !dbg !27430, !noalias !27412, !noundef !598
  %i.ak = sitofp i16 %.val16.i.1 to double, !dbg !27431
  %i.al = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !27432
  %i.am = getelementptr i8, ptr %i.al, i64 8, !dbg !27432
  store double %i.ak, ptr %i.am, align 8, !dbg !27433, !noalias !27416
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !27429
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4, !dbg !27429
  %.val16.i.2 = load i16, ptr %i.ao, align 2, !dbg !27430, !noalias !27412, !noundef !598
  %i.ap = sitofp i16 %.val16.i.2 to double, !dbg !27431
  %i.aq = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !27432
end_hunk_4
begin_hunk_5_@_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4ItersENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_dE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecdE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute:bb.a
  ret void, !dbg !27438
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4ItersENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivefE3as_fE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecfE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !27439 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !27509, !nonnull !598, !noundef !598 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !27509
  %i.c = load ptr, ptr %i.b, align 8, !dbg !27509, !nonnull !598, !noundef !598 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !27510 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !27510
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !27510 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !27510
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !27510 ; 8 uses
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !27511
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRsfuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivefE3as_fE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.b, !dbg !27512

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !27513
  %i.f = ptrtoint ptr %i.a to i64, !dbg !27513
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !27513      ; 3 uses
  %i.h = lshr i64 %i.g, 1, !dbg !27513            ; 5 uses
  %min.iters.check = icmp ult i64 %i.g, 24, !dbg !27514
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !27514

vector.memcheck:                                  ; preds = %bb.b
  %i.i = shl i64 %.sroa.5.0.copyload, 2, !dbg !27514 ; 2 uses
  %i.j = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.i, !dbg !27514
  %i.k = shl i64 %i.g, 1, !dbg !27514
  %i.l = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.i, !dbg !27514
  %i.m = getelementptr i8, ptr %i.l, i64 %i.k, !dbg !27514
  %bound0 = icmp ult ptr %i.j, %i.c, !dbg !27514
  %bound1 = icmp ult ptr %i.a, %i.m, !dbg !27514
  %found.conflict = and i1 %bound0, %bound1, !dbg !27514
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph, !dbg !27515

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 9223372036854775800      ; 4 uses
  %i.n = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.o = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !27515

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !27515 ; 3 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index, !dbg !27516 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !27517
  %wide.load = load <4 x i16>, ptr %i.p, align 2, !dbg !27517, !alias.scope !27499, !noalias !27500
  %wide.load4 = load <4 x i16>, ptr %i.q, align 2, !dbg !27517, !alias.scope !27499, !noalias !27500
  %i.r = sitofp <4 x i16> %wide.load to <4 x float>, !dbg !27518
  %i.s = sitofp <4 x i16> %wide.load4 to <4 x float>, !dbg !27518
  %i.t = getelementptr [4 x i8], ptr %i.o, i64 %index, !dbg !27519 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !27520
  store <4 x float> %i.r, ptr %i.t, align 4, !dbg !27520, !alias.scope !27501, !noalias !27502
  store <4 x float> %i.s, ptr %i.u, align 4, !dbg !27520, !alias.scope !27501, !noalias !27502
  %index.next = add nuw i64 %index, 8, !dbg !27515 ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec, !dbg !27521
  br i1 %i.v, label %middle.block, label %vector.body, !dbg !27521, !llvm.loop !27488

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec, !dbg !27521
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRsfuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivefE3as_fE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph.preheader, !dbg !27521

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.n, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.h, 3, !dbg !27521        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !27521
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !27521

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.w = phi i64 [ %i.aa, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ], !dbg !27516 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.ab, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], !dbg !27515 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i.prol, !dbg !27516
  %.val16.i.prol = load i16, ptr %i.x, align 2, !dbg !27517, !noalias !27500, !noundef !598
  %i.y = sitofp i16 %.val16.i.prol to float, !dbg !27518
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.w, !dbg !27519
  store float %i.y, ptr %i.z, align 4, !dbg !27520, !noalias !27503
  %i.aa = add i64 %i.w, 1, !dbg !27522            ; 3 uses
  %i.ab = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !27523 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !27521 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !27521
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !27521, !llvm.loop !27493

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.aa, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.aa, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.ab, %scalar.ph.prol ]
  %i.ac = sub nsw i64 %.sroa.01.0.i.ph, %i.h, !dbg !27521
  %i.ad = icmp ugt i64 %i.ac, -4, !dbg !27521
  br i1 %i.ad, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRsfuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivefE3as_fE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph, !dbg !27521

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ae = phi i64 [ %i.ax, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !27516 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.ay, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !27515 ; 5 uses
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !27516
  %.val16.i = load i16, ptr %i.af, align 2, !dbg !27517, !noalias !27500, !noundef !598
  %i.ag = sitofp i16 %.val16.i to float, !dbg !27518
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !27519
  store float %i.ag, ptr %i.ah, align 4, !dbg !27520, !noalias !27503
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !27516
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2, !dbg !27516
  %.val16.i.1 = load i16, ptr %i.aj, align 2, !dbg !27517, !noalias !27500, !noundef !598
  %i.ak = sitofp i16 %.val16.i.1 to float, !dbg !27518
  %i.al = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !27519
  %i.am = getelementptr i8, ptr %i.al, i64 4, !dbg !27519
  store float %i.ak, ptr %i.am, align 4, !dbg !27520, !noalias !27503
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !27516
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4, !dbg !27516
  %.val16.i.2 = load i16, ptr %i.ao, align 2, !dbg !27517, !noalias !27500, !noundef !598
  %i.ap = sitofp i16 %.val16.i.2 to float, !dbg !27518
  %i.aq = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !27519
  %i.ar = getelementptr i8, ptr %i.aq, i64 8, !dbg !27519
  store float %i.ap, ptr %i.ar, align 4, !dbg !27520, !noalias !27503
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !27516
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 6, !dbg !27516
  %.val16.i.3 = load i16, ptr %i.at, align 2, !dbg !27517, !noalias !27500, !noundef !598
  %i.au = sitofp i16 %.val16.i.3 to float, !dbg !27518
  %i.av = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !27519
  %i.aw = getelementptr i8, ptr %i.av, i64 12, !dbg !27519
  store float %i.au, ptr %i.aw, align 4, !dbg !27520, !noalias !27503
  %i.ax = add i64 %i.ae, 4, !dbg !27522           ; 2 uses
  %i.ay = add nuw i64 %.sroa.01.0.i, 4, !dbg !27523 ; 2 uses
  %i.az = icmp eq i64 %i.ay, %i.h, !dbg !27521
  br i1 %i.az, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRsfuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivefE3as_fE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph, !dbg !27521, !llvm.loop !27494

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRsfuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivefE3as_fE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.n, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ax, %scalar.ph ], !dbg !27524
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !27524, !noalias !27500
  ret void, !dbg !27525
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4ItersENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VechE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !27526 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !27598, !nonnull !598, !noundef !598 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !27598
  %i.c = load ptr, ptr %i.b, align 8, !dbg !27598, !nonnull !598, !noundef !598 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !27599 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !27599
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !27599 ; 9 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !27599
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !27599 ; 9 uses
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !27600
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRshuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0NCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %iter.check, !dbg !27601

iter.check:                                       ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !27602
  %i.f = ptrtoint ptr %i.a to i64, !dbg !27602
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !27602      ; 4 uses
  %i.h = lshr i64 %i.g, 1, !dbg !27602            ; 8 uses
  %min.iters.check = icmp ult i64 %i.g, 8, !dbg !27603
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck, !dbg !27603

vector.memcheck:                                  ; preds = %iter.check
  %i.i = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload, !dbg !27603
  %i.j = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload, !dbg !27603
  %i.k = getelementptr i8, ptr %i.j, i64 %i.h, !dbg !27603
  %bound0 = icmp ult ptr %i.i, %i.c, !dbg !27603
  %bound1 = icmp ult ptr %i.a, %i.k, !dbg !27603
  %found.conflict = and i1 %bound0, %bound1, !dbg !27603
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !27604

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check4 = icmp ult i64 %i.g, 32, !dbg !27603
  br i1 %min.iters.check4, label %vec.epilog.ph, label %vector.ph, !dbg !27603

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.h, 9223372036854775792      ; 5 uses
  %i.l = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.m = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !27603

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !27604 ; 3 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index, !dbg !27605 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !27606
  %wide.load = load <8 x i16>, ptr %i.n, align 2, !dbg !27606, !alias.scope !27587, !noalias !27588
  %wide.load5 = load <8 x i16>, ptr %i.o, align 2, !dbg !27606, !alias.scope !27587, !noalias !27588
  %i.p = trunc <8 x i16> %wide.load to <8 x i8>, !dbg !27607
  %i.q = trunc <8 x i16> %wide.load5 to <8 x i8>, !dbg !27607
  %i.r = getelementptr i8, ptr %i.m, i64 %index, !dbg !27608 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !27609
  store <8 x i8> %i.p, ptr %i.r, align 1, !dbg !27609, !alias.scope !27590, !noalias !27591
  store <8 x i8> %i.q, ptr %i.s, align 1, !dbg !27609, !alias.scope !27590, !noalias !27591
  %index.next = add nuw i64 %index, 16, !dbg !27604 ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec, !dbg !27610
  br i1 %i.t, label %middle.block, label %vector.body, !dbg !27610, !llvm.loop !27575

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec, !dbg !27610
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRshuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0NCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.iter.check, !dbg !27610

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.u = and i64 %i.g, 24
  %min.epilog.iters.check = icmp eq i64 %i.u, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !987

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !27604
  %n.vec6 = and i64 %i.h, 9223372036854775804     ; 4 uses
  %i.v = add i64 %.sroa.5.0.copyload, %n.vec6     ; 2 uses
  %i.w = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index7 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next9, %vec.epilog.vector.body ], !dbg !27604 ; 3 uses
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index7, !dbg !27605
  %wide.load8 = load <4 x i16>, ptr %i.x, align 2, !dbg !27606, !alias.scope !27587, !noalias !27588
  %i.y = trunc <4 x i16> %wide.load8 to <4 x i8>, !dbg !27607
  %i.z = getelementptr i8, ptr %i.w, i64 %index7, !dbg !27608
  store <4 x i8> %i.y, ptr %i.z, align 1, !dbg !27609, !alias.scope !27590, !noalias !27591
  %index.next9 = add nuw i64 %index7, 4, !dbg !27604 ; 2 uses
  %i.aa = icmp eq i64 %index.next9, %n.vec6, !dbg !27610
  br i1 %i.aa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !27610, !llvm.loop !27576

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n10 = icmp eq i64 %i.h, %n.vec6, !dbg !27610
  br i1 %cmp.n10, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRshuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0NCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph.preheader, !dbg !27610

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %iter.check ], [ %.sroa.5.0.copyload, %vector.memcheck ], [ %i.l, %vec.epilog.iter.check ], [ %i.v, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec6, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.h, 3, !dbg !27610        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !27610
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !27610

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %i.ab = phi i64 [ %i.af, %vec.epilog.scalar.ph.prol ], [ %.ph, %vec.epilog.scalar.ph.preheader ], !dbg !27605 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.ag, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !27604 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i.prol, !dbg !27605
  %.val16.i.prol = load i16, ptr %i.ac, align 2, !dbg !27606, !noalias !27588, !noundef !598
  %i.ad = trunc i16 %.val16.i.prol to i8, !dbg !27607
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.ab, !dbg !27608
  store i8 %i.ad, ptr %i.ae, align 1, !dbg !27609, !noalias !27592
  %i.af = add i64 %i.ab, 1, !dbg !27611           ; 3 uses
  %i.ag = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !27612 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !27610 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !27610
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !27610, !llvm.loop !27581

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.af, %vec.epilog.scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.af, %vec.epilog.scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ag, %vec.epilog.scalar.ph.prol ]
  %i.ah = sub nsw i64 %.sroa.01.0.i.ph, %i.h, !dbg !27610
  %i.ai = icmp ugt i64 %i.ah, -4, !dbg !27610
  br i1 %i.ai, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRshuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0NCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph, !dbg !27610

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.aj = phi i64 [ %i.bc, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !27605 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.bd, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !27604 ; 5 uses
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !27605
  %.val16.i = load i16, ptr %i.ak, align 2, !dbg !27606, !noalias !27588, !noundef !598
  %i.al = trunc i16 %.val16.i to i8, !dbg !27607
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.aj, !dbg !27608
  store i8 %i.al, ptr %i.am, align 1, !dbg !27609, !noalias !27592
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !27605
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 2, !dbg !27605
  %.val16.i.1 = load i16, ptr %i.ao, align 2, !dbg !27606, !noalias !27588, !noundef !598
  %i.ap = trunc i16 %.val16.i.1 to i8, !dbg !27607
  %i.aq = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.aj, !dbg !27608
  %i.ar = getelementptr i8, ptr %i.aq, i64 1, !dbg !27608
  store i8 %i.ap, ptr %i.ar, align 1, !dbg !27609, !noalias !27592
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !27605
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4, !dbg !27605
  %.val16.i.2 = load i16, ptr %i.at, align 2, !dbg !27606, !noalias !27588, !noundef !598
  %i.au = trunc i16 %.val16.i.2 to i8, !dbg !27607
  %i.av = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.aj, !dbg !27608
  %i.aw = getelementptr i8, ptr %i.av, i64 2, !dbg !27608
  store i8 %i.au, ptr %i.aw, align 1, !dbg !27609, !noalias !27592
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !27605
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 6, !dbg !27605
  %.val16.i.3 = load i16, ptr %i.ay, align 2, !dbg !27606, !noalias !27588, !noundef !598
  %i.az = trunc i16 %.val16.i.3 to i8, !dbg !27607
  %i.ba = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.aj, !dbg !27608
  %i.bb = getelementptr i8, ptr %i.ba, i64 3, !dbg !27608
  store i8 %i.az, ptr %i.bb, align 1, !dbg !27609, !noalias !27592
  %i.bc = add i64 %i.aj, 4, !dbg !27611           ; 2 uses
  %i.bd = add nuw i64 %.sroa.01.0.i, 4, !dbg !27612 ; 2 uses
  %i.be = icmp eq i64 %i.bd, %i.h, !dbg !27610
  br i1 %i.be, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRshuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0NCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph, !dbg !27610, !llvm.loop !27582

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRshuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0NCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.v, %vec.epilog.middle.block ], [ %i.l, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.bc, %vec.epilog.scalar.ph ], !dbg !27613
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !27613, !noalias !27588
  ret void, !dbg !27614
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4ItersENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivelE3as_lE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VeclE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !27615 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !27686, !nonnull !598, !noundef !598 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !27686
  %i.c = load ptr, ptr %i.b, align 8, !dbg !27686, !nonnull !598, !noundef !598 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !27687 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !27687
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !27687 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !27687
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !27687 ; 8 uses
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !27688
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRsluNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivelE3as_lE0NCINvNvBS_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VeclE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.b, !dbg !27689

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !27690
  %i.f = ptrtoint ptr %i.a to i64, !dbg !27690
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !27690      ; 3 uses
  %i.h = lshr i64 %i.g, 1, !dbg !27690            ; 5 uses
  %min.iters.check = icmp ult i64 %i.g, 32, !dbg !27691
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !27691

vector.memcheck:                                  ; preds = %bb.b
  %i.i = shl i64 %.sroa.5.0.copyload, 2, !dbg !27691 ; 2 uses
  %i.j = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.i, !dbg !27691
  %i.k = shl i64 %i.g, 1, !dbg !27691
  %i.l = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.i, !dbg !27691
  %i.m = getelementptr i8, ptr %i.l, i64 %i.k, !dbg !27691
  %bound0 = icmp ult ptr %i.j, %i.c, !dbg !27691
  %bound1 = icmp ult ptr %i.a, %i.m, !dbg !27691
  %found.conflict = and i1 %bound0, %bound1, !dbg !27691
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph, !dbg !27692

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 9223372036854775800      ; 4 uses
  %i.n = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.o = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !27692

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !27692 ; 3 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index, !dbg !27693 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !27694
  %wide.load = load <4 x i16>, ptr %i.p, align 2, !dbg !27694, !alias.scope !27675, !noalias !27676
  %wide.load4 = load <4 x i16>, ptr %i.q, align 2, !dbg !27694, !alias.scope !27675, !noalias !27676
  %i.r = sext <4 x i16> %wide.load to <4 x i32>, !dbg !27695
  %i.s = sext <4 x i16> %wide.load4 to <4 x i32>, !dbg !27695
  %i.t = getelementptr [4 x i8], ptr %i.o, i64 %index, !dbg !27696 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !27697
  store <4 x i32> %i.r, ptr %i.t, align 4, !dbg !27697, !alias.scope !27678, !noalias !27679
  store <4 x i32> %i.s, ptr %i.u, align 4, !dbg !27697, !alias.scope !27678, !noalias !27679
  %index.next = add nuw i64 %index, 8, !dbg !27692 ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec, !dbg !27698
  br i1 %i.v, label %middle.block, label %vector.body, !dbg !27698, !llvm.loop !27664

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec, !dbg !27698
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRsluNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivelE3as_lE0NCINvNvBS_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VeclE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph.preheader, !dbg !27698

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.n, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.h, 3, !dbg !27698        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !27698
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !27698

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.w = phi i64 [ %i.aa, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ], !dbg !27693 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.ab, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], !dbg !27692 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i.prol, !dbg !27693
  %.val16.i.prol = load i16, ptr %i.x, align 2, !dbg !27694, !noalias !27676, !noundef !598
  %i.y = sext i16 %.val16.i.prol to i32, !dbg !27695
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.w, !dbg !27696
  store i32 %i.y, ptr %i.z, align 4, !dbg !27697, !noalias !27680
  %i.aa = add i64 %i.w, 1, !dbg !27699            ; 3 uses
  %i.ab = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !27700 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !27698 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !27698
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !27698, !llvm.loop !27669

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.aa, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.aa, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.ab, %scalar.ph.prol ]
  %i.ac = sub nsw i64 %.sroa.01.0.i.ph, %i.h, !dbg !27698
  %i.ad = icmp ugt i64 %i.ac, -4, !dbg !27698
  br i1 %i.ad, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRsluNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivelE3as_lE0NCINvNvBS_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VeclE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph, !dbg !27698

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ae = phi i64 [ %i.ax, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !27693 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.ay, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !27692 ; 5 uses
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !27693
  %.val16.i = load i16, ptr %i.af, align 2, !dbg !27694, !noalias !27676, !noundef !598
  %i.ag = sext i16 %.val16.i to i32, !dbg !27695
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !27696
  store i32 %i.ag, ptr %i.ah, align 4, !dbg !27697, !noalias !27680
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !27693
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2, !dbg !27693
  %.val16.i.1 = load i16, ptr %i.aj, align 2, !dbg !27694, !noalias !27676, !noundef !598
  %i.ak = sext i16 %.val16.i.1 to i32, !dbg !27695
  %i.al = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !27696
  %i.am = getelementptr i8, ptr %i.al, i64 4, !dbg !27696
  store i32 %i.ak, ptr %i.am, align 4, !dbg !27697, !noalias !27680
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !27693
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4, !dbg !27693
  %.val16.i.2 = load i16, ptr %i.ao, align 2, !dbg !27694, !noalias !27676, !noundef !598
  %i.ap = sext i16 %.val16.i.2 to i32, !dbg !27695
  %i.aq = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !27696
end_hunk_5
begin_hunk_6_@_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4ItersENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecnE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute:bb.a
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !27854 ; 3 uses
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !27855
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRsnuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecnE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.b, !dbg !27856

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !27857
  %i.f = ptrtoint ptr %i.a to i64, !dbg !27857
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !27857      ; 3 uses
  %i.h = lshr exact i64 %i.g, 1, !dbg !27857      ; 2 uses
  %i.i = icmp eq i64 %i.g, 2, !dbg !27858
  br i1 %i.i, label %.epil.preheader, label %.new, !dbg !27858

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.h, 9223372036854775806, !dbg !27858
  br label %bb.c, !dbg !27858

bb.c:                                             ; preds = %bb.c, %.new
  %i.j = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.s, %bb.c ], !dbg !27859 ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.t, %bb.c ], !dbg !27860 ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !27859
  %.val16.i = load i16, ptr %i.k, align 2, !dbg !27861, !noalias !27845, !noundef !598
  %i.l = sext i16 %.val16.i to i128, !dbg !27862
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.j, !dbg !27863
  store i128 %i.l, ptr %i.m, align 16, !dbg !27864, !noalias !27847
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !27859
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 2, !dbg !27859
  %.val16.i.1 = load i16, ptr %i.o, align 2, !dbg !27861, !noalias !27845, !noundef !598
  %i.p = sext i16 %.val16.i.1 to i128, !dbg !27862
  %i.q = getelementptr [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.j, !dbg !27863
  %i.r = getelementptr i8, ptr %i.q, i64 16, !dbg !27863
  store i128 %i.p, ptr %i.r, align 16, !dbg !27864, !noalias !27847
  %i.s = add i64 %i.j, 2, !dbg !27865             ; 3 uses
  %i.t = add nuw i64 %.sroa.01.0.i, 2, !dbg !27866 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !27867  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !27867
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRsnuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecnE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, label %bb.c, !dbg !27867

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRsnuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecnE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %i.u = and i64 %i.g, 2, !dbg !27867
  %lcmp.mod.not = icmp eq i64 %i.u, 0, !dbg !27867
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRsnuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecnE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %.epil.preheader, !dbg !27867

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRsnuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecnE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.s, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRsnuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecnE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.t, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRsnuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecnE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.h to i1, !dbg !27867
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !27867
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i.epil.init, !dbg !27859
  %.val16.i.epil = load i16, ptr %i.v, align 2, !dbg !27861, !noalias !27845, !noundef !598
  %i.w = sext i16 %.val16.i.epil to i128, !dbg !27862
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init, !dbg !27863
  store i128 %i.w, ptr %i.x, align 16, !dbg !27864, !noalias !27847
  %i.y = add i64 %.epil.init, 1, !dbg !27865
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRsnuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecnE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRsnuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecnE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRsnuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecnE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.s, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRsnuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecnE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ], [ %i.y, %.epil.preheader ], !dbg !27868
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !27868, !noalias !27845
  ret void, !dbg !27869
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4ItersENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecoE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !27870 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !27932, !nonnull !598, !noundef !598 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !27932
  %i.c = load ptr, ptr %i.b, align 8, !dbg !27932, !nonnull !598, !noundef !598 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !27933 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !27933
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !27933 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !27933
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !27933 ; 3 uses
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !27934
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRsouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.b, !dbg !27935

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !27936
  %i.f = ptrtoint ptr %i.a to i64, !dbg !27936
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !27936      ; 3 uses
  %i.h = lshr exact i64 %i.g, 1, !dbg !27936      ; 2 uses
  %i.i = icmp eq i64 %i.g, 2, !dbg !27937
  br i1 %i.i, label %.epil.preheader, label %.new, !dbg !27937

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.h, 9223372036854775806, !dbg !27937
  br label %bb.c, !dbg !27937

bb.c:                                             ; preds = %bb.c, %.new
  %i.j = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.s, %bb.c ], !dbg !27938 ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.t, %bb.c ], !dbg !27939 ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !27938
  %.val16.i = load i16, ptr %i.k, align 2, !dbg !27940, !noalias !27924, !noundef !598
  %i.l = sext i16 %.val16.i to i128, !dbg !27941
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.j, !dbg !27942
  store i128 %i.l, ptr %i.m, align 16, !dbg !27943, !noalias !27926
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !27938
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 2, !dbg !27938
  %.val16.i.1 = load i16, ptr %i.o, align 2, !dbg !27940, !noalias !27924, !noundef !598
  %i.p = sext i16 %.val16.i.1 to i128, !dbg !27941
  %i.q = getelementptr [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.j, !dbg !27942
  %i.r = getelementptr i8, ptr %i.q, i64 16, !dbg !27942
  store i128 %i.p, ptr %i.r, align 16, !dbg !27943, !noalias !27926
  %i.s = add i64 %i.j, 2, !dbg !27944             ; 3 uses
  %i.t = add nuw i64 %.sroa.01.0.i, 2, !dbg !27945 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !27946  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !27946
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRsouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, label %bb.c, !dbg !27946

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRsouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %i.u = and i64 %i.g, 2, !dbg !27946
  %lcmp.mod.not = icmp eq i64 %i.u, 0, !dbg !27946
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRsouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %.epil.preheader, !dbg !27946

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRsouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.s, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRsouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.t, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRsouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.h to i1, !dbg !27946
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !27946
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i.epil.init, !dbg !27938
  %.val16.i.epil = load i16, ptr %i.v, align 2, !dbg !27940, !noalias !27924, !noundef !598
  %i.w = sext i16 %.val16.i.epil to i128, !dbg !27941
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init, !dbg !27942
  store i128 %i.w, ptr %i.x, align 16, !dbg !27943, !noalias !27926
  %i.y = add i64 %.epil.init, 1, !dbg !27944
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRsouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRsouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRsouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.s, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRsouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ], [ %i.y, %.epil.preheader ], !dbg !27947
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !27947, !noalias !27924
  ret void, !dbg !27948
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4ItersENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivetE3as_tE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VectE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !27949 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !28008, !nonnull !598, !noundef !598 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !28008
  %i.c = load ptr, ptr %i.b, align 8, !dbg !28008, !nonnull !598, !noundef !598 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !28009 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !28009
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !28009 ; 8 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !28009
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !28009 ; 8 uses
  %.sroa.7.0.copyload3 = ptrtoaddr ptr %.sroa.7.0.copyload to i64, !dbg !28010
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !28010
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRstuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivetE3as_tE0NCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VectE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %iter.check, !dbg !28011

iter.check:                                       ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !28012
  %i.f = ptrtoint ptr %i.a to i64, !dbg !28012    ; 2 uses
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !28012      ; 4 uses
  %i.h = lshr i64 %i.g, 1, !dbg !28012            ; 7 uses
  %min.iters.check = icmp ult i64 %i.g, 8, !dbg !28013
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck, !dbg !28013

vector.memcheck:                                  ; preds = %iter.check
  %i.i = shl i64 %.sroa.5.0.copyload, 1, !dbg !28013
  %i.j = add i64 %i.i, %.sroa.7.0.copyload3, !dbg !28013
  %i.k = sub i64 %i.f, %i.j, !dbg !28013
  %diff.check = icmp ugt i64 %i.k, -32, !dbg !28013
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !28014

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check4 = icmp ult i64 %i.g, 32, !dbg !28013
  br i1 %min.iters.check4, label %vec.epilog.ph, label %vector.ph, !dbg !28013

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.h, 9223372036854775792      ; 5 uses
  %i.l = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.m = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !28013

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !28014 ; 3 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index, !dbg !28015 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !28016
  %wide.load = load <8 x i16>, ptr %i.n, align 2, !dbg !28016, !noalias !28001
  %wide.load5 = load <8 x i16>, ptr %i.o, align 2, !dbg !28016, !noalias !28001
  %i.p = getelementptr [2 x i8], ptr %i.m, i64 %index, !dbg !28017 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16, !dbg !28018
  store <8 x i16> %wide.load, ptr %i.p, align 2, !dbg !28018, !noalias !28002
  store <8 x i16> %wide.load5, ptr %i.q, align 2, !dbg !28018, !noalias !28002
  %index.next = add nuw i64 %index, 16, !dbg !28014 ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec, !dbg !28019
  br i1 %i.r, label %middle.block, label %vector.body, !dbg !28019, !llvm.loop !27989

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec, !dbg !28019
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRstuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivetE3as_tE0NCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VectE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.iter.check, !dbg !28019

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.s = and i64 %i.g, 24
  %min.epilog.iters.check = icmp eq i64 %i.s, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !987

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !28014
  %n.vec6 = and i64 %i.h, 9223372036854775804     ; 4 uses
  %i.t = add i64 %.sroa.5.0.copyload, %n.vec6     ; 2 uses
  %i.u = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index7 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next9, %vec.epilog.vector.body ], !dbg !28014 ; 3 uses
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index7, !dbg !28015
  %wide.load8 = load <4 x i16>, ptr %i.v, align 2, !dbg !28016, !noalias !28001
  %i.w = getelementptr [2 x i8], ptr %i.u, i64 %index7, !dbg !28017
  store <4 x i16> %wide.load8, ptr %i.w, align 2, !dbg !28018, !noalias !28002
  %index.next9 = add nuw i64 %index7, 4, !dbg !28014 ; 2 uses
  %i.x = icmp eq i64 %index.next9, %n.vec6, !dbg !28019
  br i1 %i.x, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !28019, !llvm.loop !27990

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n10 = icmp eq i64 %i.h, %n.vec6, !dbg !28019
  br i1 %cmp.n10, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRstuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivetE3as_tE0NCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VectE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph.preheader, !dbg !28019

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %iter.check ], [ %.sroa.5.0.copyload, %vector.memcheck ], [ %i.l, %vec.epilog.iter.check ], [ %i.t, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec6, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.h, 3, !dbg !28019        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !28019
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !28019

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %i.y = phi i64 [ %i.ab, %vec.epilog.scalar.ph.prol ], [ %.ph, %vec.epilog.scalar.ph.preheader ], !dbg !28015 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.ac, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !28014 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i.prol, !dbg !28015
  %.val16.i.prol = load i16, ptr %i.z, align 2, !dbg !28016, !noalias !28001, !noundef !598
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.y, !dbg !28017
  store i16 %.val16.i.prol, ptr %i.aa, align 2, !dbg !28018, !noalias !28002
  %i.ab = add i64 %i.y, 1, !dbg !28020            ; 3 uses
  %i.ac = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !28021 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !28019 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !28019
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !28019, !llvm.loop !27995

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.ab, %vec.epilog.scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ab, %vec.epilog.scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ac, %vec.epilog.scalar.ph.prol ]
  %i.ad = sub nsw i64 %.sroa.01.0.i.ph, %i.h, !dbg !28019
  %i.ae = icmp ugt i64 %i.ad, -4, !dbg !28019
  br i1 %i.ae, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRstuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivetE3as_tE0NCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VectE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph, !dbg !28019

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.af = phi i64 [ %i.au, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !28015 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.av, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !28014 ; 5 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !28015
  %.val16.i = load i16, ptr %i.ag, align 2, !dbg !28016, !noalias !28001, !noundef !598
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.af, !dbg !28017
  store i16 %.val16.i, ptr %i.ah, align 2, !dbg !28018, !noalias !28002
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !28015
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2, !dbg !28015
  %.val16.i.1 = load i16, ptr %i.aj, align 2, !dbg !28016, !noalias !28001, !noundef !598
  %i.ak = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.af, !dbg !28017
  %i.al = getelementptr i8, ptr %i.ak, i64 2, !dbg !28017
  store i16 %.val16.i.1, ptr %i.al, align 2, !dbg !28018, !noalias !28002
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !28015
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4, !dbg !28015
  %.val16.i.2 = load i16, ptr %i.an, align 2, !dbg !28016, !noalias !28001, !noundef !598
  %i.ao = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.af, !dbg !28017
  %i.ap = getelementptr i8, ptr %i.ao, i64 4, !dbg !28017
  store i16 %.val16.i.2, ptr %i.ap, align 2, !dbg !28018, !noalias !28002
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !28015
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 6, !dbg !28015
  %.val16.i.3 = load i16, ptr %i.ar, align 2, !dbg !28016, !noalias !28001, !noundef !598
  %i.as = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.af, !dbg !28017
  %i.at = getelementptr i8, ptr %i.as, i64 6, !dbg !28017
  store i16 %.val16.i.3, ptr %i.at, align 2, !dbg !28018, !noalias !28002
  %i.au = add i64 %i.af, 4, !dbg !28020           ; 2 uses
  %i.av = add nuw i64 %.sroa.01.0.i, 4, !dbg !28021 ; 2 uses
  %i.aw = icmp eq i64 %i.av, %i.h, !dbg !28019
  br i1 %i.aw, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRstuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivetE3as_tE0NCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VectE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph, !dbg !28019, !llvm.loop !27996

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRstuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivetE3as_tE0NCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VectE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.t, %vec.epilog.middle.block ], [ %i.l, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.au, %vec.epilog.scalar.ph ], !dbg !28022
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !28022, !noalias !28001
  ret void, !dbg !28023
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4ItersENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivexE3as_xE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecxE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !28024 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !28095, !nonnull !598, !noundef !598 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !28095
  %i.c = load ptr, ptr %i.b, align 8, !dbg !28095, !nonnull !598, !noundef !598 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !28096 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !28096
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !28096 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !28096
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !28096 ; 8 uses
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !28097
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRsxuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivexE3as_xE0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.b, !dbg !28098

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !28099
  %i.f = ptrtoint ptr %i.a to i64, !dbg !28099
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !28099      ; 3 uses
  %i.h = lshr i64 %i.g, 1, !dbg !28099            ; 5 uses
  %min.iters.check = icmp ult i64 %i.g, 28, !dbg !28100
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !28100

vector.memcheck:                                  ; preds = %bb.b
  %i.i = shl i64 %.sroa.5.0.copyload, 3, !dbg !28100 ; 2 uses
  %i.j = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.i, !dbg !28100
  %i.k = shl i64 %i.g, 2, !dbg !28100
  %i.l = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.i, !dbg !28100
  %i.m = getelementptr i8, ptr %i.l, i64 %i.k, !dbg !28100
  %bound0 = icmp ult ptr %i.j, %i.c, !dbg !28100
  %bound1 = icmp ult ptr %i.a, %i.m, !dbg !28100
  %found.conflict = and i1 %bound0, %bound1, !dbg !28100
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph, !dbg !28101

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 9223372036854775804      ; 4 uses
  %i.n = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.o = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !28101

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !28101 ; 3 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index, !dbg !28102 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4, !dbg !28103
  %wide.load = load <2 x i16>, ptr %i.p, align 2, !dbg !28103, !alias.scope !28084, !noalias !28085
  %wide.load4 = load <2 x i16>, ptr %i.q, align 2, !dbg !28103, !alias.scope !28084, !noalias !28085
  %i.r = sext <2 x i16> %wide.load to <2 x i64>, !dbg !28104
  %i.s = sext <2 x i16> %wide.load4 to <2 x i64>, !dbg !28104
  %i.t = getelementptr [8 x i8], ptr %i.o, i64 %index, !dbg !28105 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !28106
  store <2 x i64> %i.r, ptr %i.t, align 8, !dbg !28106, !alias.scope !28087, !noalias !28088
  store <2 x i64> %i.s, ptr %i.u, align 8, !dbg !28106, !alias.scope !28087, !noalias !28088
  %index.next = add nuw i64 %index, 4, !dbg !28101 ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec, !dbg !28107
  br i1 %i.v, label %middle.block, label %vector.body, !dbg !28107, !llvm.loop !28073

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec, !dbg !28107
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRsxuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivexE3as_xE0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph.preheader, !dbg !28107

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.n, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.h, 3, !dbg !28107        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !28107
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !28107

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.w = phi i64 [ %i.aa, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ], !dbg !28102 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.ab, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], !dbg !28101 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i.prol, !dbg !28102
  %.val16.i.prol = load i16, ptr %i.x, align 2, !dbg !28103, !noalias !28085, !noundef !598
  %i.y = sext i16 %.val16.i.prol to i64, !dbg !28104
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.w, !dbg !28105
  store i64 %i.y, ptr %i.z, align 8, !dbg !28106, !noalias !28089
  %i.aa = add i64 %i.w, 1, !dbg !28108            ; 3 uses
  %i.ab = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !28109 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !28107 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !28107
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !28107, !llvm.loop !28078

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.aa, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.aa, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.ab, %scalar.ph.prol ]
  %i.ac = sub nsw i64 %.sroa.01.0.i.ph, %i.h, !dbg !28107
  %i.ad = icmp ugt i64 %i.ac, -4, !dbg !28107
  br i1 %i.ad, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRsxuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarysNvYsINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivexE3as_xE0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph, !dbg !28107

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ae = phi i64 [ %i.ax, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !28102 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.ay, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !28101 ; 5 uses
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !28102
  %.val16.i = load i16, ptr %i.af, align 2, !dbg !28103, !noalias !28085, !noundef !598
  %i.ag = sext i16 %.val16.i to i64, !dbg !28104
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !28105
  store i64 %i.ag, ptr %i.ah, align 8, !dbg !28106, !noalias !28089
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !28102
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2, !dbg !28102
  %.val16.i.1 = load i16, ptr %i.aj, align 2, !dbg !28103, !noalias !28085, !noundef !598
  %i.ak = sext i16 %.val16.i.1 to i64, !dbg !28104
  %i.al = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !28105
  %i.am = getelementptr i8, ptr %i.al, i64 8, !dbg !28105
  store i64 %i.ak, ptr %i.am, align 8, !dbg !28106, !noalias !28089
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !28102
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4, !dbg !28102
  %.val16.i.2 = load i16, ptr %i.ao, align 2, !dbg !28103, !noalias !28085, !noundef !598
  %i.ap = sext i16 %.val16.i.2 to i64, !dbg !28104
  %i.aq = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !28105
  %i.ar = getelementptr i8, ptr %i.aq, i64 16, !dbg !28105
  store i64 %i.ap, ptr %i.ar, align 8, !dbg !28106, !noalias !28089
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !28102
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 6, !dbg !28102
  %.val16.i.3 = load i16, ptr %i.at, align 2, !dbg !28103, !noalias !28085, !noundef !598
  %i.au = sext i16 %.val16.i.3 to i64, !dbg !28104
end_hunk_6
begin_hunk_7_@_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4ItertENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveNtNtCs2mZqlW55729_12polars_utils7float164pf16E3as_B3c_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB47_8for_each4callB3c_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5n_3VecB3c_E14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute:bb.a
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !28297
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !28298
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRtNtNtCs2mZqlW55729_12polars_utils7float164pf16uNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveB2d_E3as_B2d_E0NCINvNvBS_8for_each4callB2d_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5A_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2X_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.b, !dbg !28299

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !28300
  %i.f = ptrtoint ptr %i.a to i64, !dbg !28300
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !28300
  %i.h = lshr exact i64 %i.g, 1, !dbg !28300
  br label %bb.c, !dbg !28301

bb.c:                                             ; preds = %bb.n, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.bd, %bb.n ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.be, %bb.n ], !dbg !28302 ; 2 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !28303
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28283), !dbg !28304
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28284), !dbg !28305
  %i.j = load i16, ptr %i.i, align 2, !dbg !28306, !alias.scope !28285, !noalias !28286, !noundef !598
  %i.k = uitofp i16 %i.j to float, !dbg !28307    ; 2 uses
  %i.l = load atomic i64, ptr @_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache5CACHE monotonic, align 8, !dbg !28308, !noalias !28289 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0, !dbg !28309
  br i1 %i.m, label %.split.i.i.i.i.i.i, label %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i.i.i.i.i, !dbg !28309, !prof !670

.split.i.i.i.i.i.i:                               ; preds = %bb.c
  %i.n = invoke noundef i128 @_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache21detect_and_initialize()
          to label %.noexc.i unwind label %bb.o, !dbg !28310, !noalias !28286

.noexc.i:                                         ; preds = %.split.i.i.i.i.i.i
  %i.o = and i128 %i.n, 36028797018963968, !dbg !28311
  %.not1.i.i.i.i.i.i = icmp eq i128 %i.o, 0, !dbg !28311
  br i1 %.not1.i.i.i.i.i.i, label %bb.d, label %bb.m, !dbg !28312

_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.p = and i64 %i.l, 36028797018963968, !dbg !28313
  %.not.i.i.i.i.i.i = icmp eq i64 %i.p, 0, !dbg !28313
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.m, !dbg !28312

bb.d:                                             ; preds = %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i.i.i.i.i, %.noexc.i
  %i.q = bitcast float %i.k to i32, !dbg !28314   ; 7 uses
  %i.r = and i32 %i.q, 2139095040, !dbg !28315    ; 3 uses
  %i.s = and i32 %i.q, 8388607, !dbg !28316       ; 4 uses
  %i.t = icmp eq i32 %i.r, 2139095040, !dbg !28317
  br i1 %i.t, label %bb.e, label %bb.f, !dbg !28317

bb.e:                                             ; preds = %bb.d
  %i.u = icmp eq i32 %i.s, 0, !dbg !28318
  %..i.i.i.i.i.i.i = select i1 %i.u, i32 0, i32 512, !dbg !28319
  %i.v = lshr i32 %i.s, 13, !dbg !28320
  %i.w = or i32 %..i.i.i.i.i.i.i, %i.v, !dbg !28321
  %i.x = trunc nuw nsw i32 %i.w to i16, !dbg !28321
  %i.y = or disjoint i16 %i.x, 31744, !dbg !28321
  br label %bb.n, !dbg !28322

bb.f:                                             ; preds = %bb.d
  %i.z = lshr i32 %i.q, 23, !dbg !28323           ; 2 uses
  %i.aa = icmp samesign ugt i32 %i.r, 1191182336, !dbg !28324
  br i1 %i.aa, label %bb.n, label %bb.g, !dbg !28324

bb.g:                                             ; preds = %bb.f
  %i.ab = icmp samesign ult i32 %i.q, 947912704, !dbg !28325
  br i1 %i.ab, label %bb.i, label %bb.h, !dbg !28325

bb.h:                                             ; preds = %bb.g
  %i.ac = lshr exact i32 %i.r, 13, !dbg !28326
  %i.ad = add nuw nsw i32 %i.ac, 16384, !dbg !28326
  %i.ae = lshr i32 %i.s, 13, !dbg !28327
  %i.af = and i32 %i.q, 4096, !dbg !28328
  %i.ag = icmp ne i32 %i.af, 0, !dbg !28328
  %i.ah = and i32 %i.q, 12287
  %i.ai = icmp ne i32 %i.ah, 0
  %or.cond.not.i.i.i.i.i.i.i = and i1 %i.ag, %i.ai, !dbg !28329
  %i.aj = or disjoint i32 %i.ad, %i.ae, !dbg !28329
  %i.ak = trunc i32 %i.aj to i16, !dbg !28329
  %i.al = zext i1 %or.cond.not.i.i.i.i.i.i.i to i16, !dbg !28328
  %spec.select7.i.i.i.i.i.i.i = add i16 %i.ak, %i.al, !dbg !28328
  br label %bb.n, !dbg !28328

bb.i:                                             ; preds = %bb.g
  %i.am = icmp samesign ult i32 %i.q, 855638016, !dbg !28330
  br i1 %i.am, label %bb.n, label %bb.j, !dbg !28330

bb.j:                                             ; preds = %bb.i
  %i.an = sub nsw i32 126, %i.z, !dbg !28330
  %i.ao = or disjoint i32 %i.s, 8388608, !dbg !28331 ; 3 uses
  %i.ap = lshr i32 %i.ao, %i.an, !dbg !28332      ; 2 uses
  %i.aq = sub nsw i32 29, %i.z, !dbg !28333
  %i.ar = and i32 %i.aq, 31, !dbg !28334          ; 2 uses
  %i.as = shl nuw i32 1, %i.ar, !dbg !28334
  %i.at = and i32 %i.as, %i.ao, !dbg !28335
  %i.au = icmp eq i32 %i.at, 0, !dbg !28335
  br i1 %i.au, label %bb.l, label %bb.k, !dbg !28335

bb.k:                                             ; preds = %bb.j
  %i.av = shl i32 3, %i.ar, !dbg !28336
  %i.aw = add nuw i32 %i.av, 16777215, !dbg !28337
  %i.ax = and i32 %i.aw, %i.ao, !dbg !28338
  %i.ay = icmp ne i32 %i.ax, 0, !dbg !28338
  %i.az = zext i1 %i.ay to i32, !dbg !28338
  %spec.select.i.i.i.i.i.i.i = add nuw nsw i32 %i.ap, %i.az, !dbg !28338
  br label %bb.l, !dbg !28338

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.03.0.i.i.i.i.i.i.i = phi i32 [ %i.ap, %bb.j ], [ %spec.select.i.i.i.i.i.i.i, %bb.k ], !dbg !28339
  %i.ba = trunc nuw i32 %.sroa.03.0.i.i.i.i.i.i.i to i16, !dbg !28340
  br label %bb.n, !dbg !28341

bb.m:                                             ; preds = %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i.i.i.i.i, %.noexc.i
  %i.bb = tail call fastcc noundef i16 @_RNvNtNtNtCshdiYQzaKNQ1_4half8binary164arch3x8619f32_to_f16_x86_f16c(float noundef %i.k), !dbg !28342
  br label %bb.n, !dbg !28342

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.i, %bb.h, %bb.f, %bb.e
  %.sroa.0.0.i.i.i.i.i.i = phi i16 [ %i.bb, %bb.m ], [ %i.y, %bb.e ], [ %spec.select7.i.i.i.i.i.i.i, %bb.h ], [ 31744, %bb.f ], [ %i.ba, %bb.l ], [ 0, %bb.i ], !dbg !28343
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i, !dbg !28344
  store i16 %.sroa.0.0.i.i.i.i.i.i, ptr %i.bc, align 2, !dbg !28345, !noalias !28290
  %i.bd = add i64 %.val15.i, 1, !dbg !28346       ; 2 uses
  %i.be = add nuw i64 %.sroa.01.0.i, 1, !dbg !28347 ; 2 uses
  %i.bf = icmp eq i64 %i.be, %i.h, !dbg !28348
  br i1 %i.bf, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRtNtNtCs2mZqlW55729_12polars_utils7float164pf16uNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveB2d_E3as_B2d_E0NCINvNvBS_8for_each4callB2d_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5A_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2X_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.c, !dbg !28348

bb.o:                                             ; preds = %.split.i.i.i.i.i.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !dbg !28349, !noalias !28286
  resume { ptr, i32 } %i.bg, !dbg !28350

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRtNtNtCs2mZqlW55729_12polars_utils7float164pf16uNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveB2d_E3as_B2d_E0NCINvNvBS_8for_each4callB2d_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5A_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2X_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.n, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.bd, %bb.n ], !dbg !28351
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !28351, !noalias !28286
  ret void, !dbg !28352
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4ItertENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveaE3as_aE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecaE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !28353 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !28425, !nonnull !598, !noundef !598 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !28425
  %i.c = load ptr, ptr %i.b, align 8, !dbg !28425, !nonnull !598, !noundef !598 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !28426 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !28426
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !28426 ; 9 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !28426
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !28426 ; 9 uses
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !28427
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRtauNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveaE3as_aE0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecaE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %iter.check, !dbg !28428

iter.check:                                       ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !28429
  %i.f = ptrtoint ptr %i.a to i64, !dbg !28429
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !28429      ; 4 uses
  %i.h = lshr i64 %i.g, 1, !dbg !28429            ; 8 uses
  %min.iters.check = icmp ult i64 %i.g, 8, !dbg !28430
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck, !dbg !28430

vector.memcheck:                                  ; preds = %iter.check
  %i.i = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload, !dbg !28430
  %i.j = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload, !dbg !28430
  %i.k = getelementptr i8, ptr %i.j, i64 %i.h, !dbg !28430
  %bound0 = icmp ult ptr %i.i, %i.c, !dbg !28430
  %bound1 = icmp ult ptr %i.a, %i.k, !dbg !28430
  %found.conflict = and i1 %bound0, %bound1, !dbg !28430
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !28431

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check4 = icmp ult i64 %i.g, 32, !dbg !28430
  br i1 %min.iters.check4, label %vec.epilog.ph, label %vector.ph, !dbg !28430

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.h, 9223372036854775792      ; 5 uses
  %i.l = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.m = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !28430

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !28431 ; 3 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index, !dbg !28432 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !28433
  %wide.load = load <8 x i16>, ptr %i.n, align 2, !dbg !28433, !alias.scope !28414, !noalias !28415
  %wide.load5 = load <8 x i16>, ptr %i.o, align 2, !dbg !28433, !alias.scope !28414, !noalias !28415
  %i.p = trunc <8 x i16> %wide.load to <8 x i8>, !dbg !28434
  %i.q = trunc <8 x i16> %wide.load5 to <8 x i8>, !dbg !28434
  %i.r = getelementptr i8, ptr %i.m, i64 %index, !dbg !28435 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !28436
  store <8 x i8> %i.p, ptr %i.r, align 1, !dbg !28436, !alias.scope !28417, !noalias !28418
  store <8 x i8> %i.q, ptr %i.s, align 1, !dbg !28436, !alias.scope !28417, !noalias !28418
  %index.next = add nuw i64 %index, 16, !dbg !28431 ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec, !dbg !28437
  br i1 %i.t, label %middle.block, label %vector.body, !dbg !28437, !llvm.loop !28402

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec, !dbg !28437
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRtauNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveaE3as_aE0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecaE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.iter.check, !dbg !28437

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.u = and i64 %i.g, 24
  %min.epilog.iters.check = icmp eq i64 %i.u, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !987

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !28431
  %n.vec6 = and i64 %i.h, 9223372036854775804     ; 4 uses
  %i.v = add i64 %.sroa.5.0.copyload, %n.vec6     ; 2 uses
  %i.w = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index7 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next9, %vec.epilog.vector.body ], !dbg !28431 ; 3 uses
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index7, !dbg !28432
  %wide.load8 = load <4 x i16>, ptr %i.x, align 2, !dbg !28433, !alias.scope !28414, !noalias !28415
  %i.y = trunc <4 x i16> %wide.load8 to <4 x i8>, !dbg !28434
  %i.z = getelementptr i8, ptr %i.w, i64 %index7, !dbg !28435
  store <4 x i8> %i.y, ptr %i.z, align 1, !dbg !28436, !alias.scope !28417, !noalias !28418
  %index.next9 = add nuw i64 %index7, 4, !dbg !28431 ; 2 uses
  %i.aa = icmp eq i64 %index.next9, %n.vec6, !dbg !28437
  br i1 %i.aa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !28437, !llvm.loop !28403

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n10 = icmp eq i64 %i.h, %n.vec6, !dbg !28437
  br i1 %cmp.n10, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRtauNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveaE3as_aE0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecaE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph.preheader, !dbg !28437

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %iter.check ], [ %.sroa.5.0.copyload, %vector.memcheck ], [ %i.l, %vec.epilog.iter.check ], [ %i.v, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec6, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.h, 3, !dbg !28437        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !28437
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !28437

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %i.ab = phi i64 [ %i.af, %vec.epilog.scalar.ph.prol ], [ %.ph, %vec.epilog.scalar.ph.preheader ], !dbg !28432 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.ag, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !28431 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i.prol, !dbg !28432
  %.val16.i.prol = load i16, ptr %i.ac, align 2, !dbg !28433, !noalias !28415, !noundef !598
  %i.ad = trunc i16 %.val16.i.prol to i8, !dbg !28434
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.ab, !dbg !28435
  store i8 %i.ad, ptr %i.ae, align 1, !dbg !28436, !noalias !28419
  %i.af = add i64 %i.ab, 1, !dbg !28438           ; 3 uses
  %i.ag = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !28439 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !28437 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !28437
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !28437, !llvm.loop !28408

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.af, %vec.epilog.scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.af, %vec.epilog.scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ag, %vec.epilog.scalar.ph.prol ]
  %i.ah = sub nsw i64 %.sroa.01.0.i.ph, %i.h, !dbg !28437
  %i.ai = icmp ugt i64 %i.ah, -4, !dbg !28437
  br i1 %i.ai, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRtauNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveaE3as_aE0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecaE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph, !dbg !28437

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.aj = phi i64 [ %i.bc, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !28432 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.bd, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !28431 ; 5 uses
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !28432
  %.val16.i = load i16, ptr %i.ak, align 2, !dbg !28433, !noalias !28415, !noundef !598
  %i.al = trunc i16 %.val16.i to i8, !dbg !28434
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.aj, !dbg !28435
  store i8 %i.al, ptr %i.am, align 1, !dbg !28436, !noalias !28419
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !28432
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 2, !dbg !28432
  %.val16.i.1 = load i16, ptr %i.ao, align 2, !dbg !28433, !noalias !28415, !noundef !598
  %i.ap = trunc i16 %.val16.i.1 to i8, !dbg !28434
  %i.aq = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.aj, !dbg !28435
  %i.ar = getelementptr i8, ptr %i.aq, i64 1, !dbg !28435
  store i8 %i.ap, ptr %i.ar, align 1, !dbg !28436, !noalias !28419
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !28432
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4, !dbg !28432
  %.val16.i.2 = load i16, ptr %i.at, align 2, !dbg !28433, !noalias !28415, !noundef !598
  %i.au = trunc i16 %.val16.i.2 to i8, !dbg !28434
  %i.av = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.aj, !dbg !28435
  %i.aw = getelementptr i8, ptr %i.av, i64 2, !dbg !28435
  store i8 %i.au, ptr %i.aw, align 1, !dbg !28436, !noalias !28419
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !28432
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 6, !dbg !28432
  %.val16.i.3 = load i16, ptr %i.ay, align 2, !dbg !28433, !noalias !28415, !noundef !598
  %i.az = trunc i16 %.val16.i.3 to i8, !dbg !28434
  %i.ba = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.aj, !dbg !28435
  %i.bb = getelementptr i8, ptr %i.ba, i64 3, !dbg !28435
  store i8 %i.az, ptr %i.bb, align 1, !dbg !28436, !noalias !28419
  %i.bc = add i64 %i.aj, 4, !dbg !28438           ; 2 uses
  %i.bd = add nuw i64 %.sroa.01.0.i, 4, !dbg !28439 ; 2 uses
  %i.be = icmp eq i64 %i.bd, %i.h, !dbg !28437
  br i1 %i.be, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRtauNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveaE3as_aE0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecaE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph, !dbg !28437, !llvm.loop !28409

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRtauNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveaE3as_aE0NCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecaE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.v, %vec.epilog.middle.block ], [ %i.l, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.bc, %vec.epilog.scalar.ph ], !dbg !28440
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !28440, !noalias !28415
  ret void, !dbg !28441
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4ItertENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_dE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecdE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !28442 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !28513, !nonnull !598, !noundef !598 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !28513
  %i.c = load ptr, ptr %i.b, align 8, !dbg !28513, !nonnull !598, !noundef !598 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !28514 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !28514
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !28514 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !28514
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !28514 ; 8 uses
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !28515
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRtduNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_dE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.b, !dbg !28516

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !28517
  %i.f = ptrtoint ptr %i.a to i64, !dbg !28517
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !28517      ; 3 uses
  %i.h = lshr i64 %i.g, 1, !dbg !28517            ; 5 uses
  %min.iters.check = icmp ult i64 %i.g, 20, !dbg !28518
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !28518

vector.memcheck:                                  ; preds = %bb.b
  %i.i = shl i64 %.sroa.5.0.copyload, 3, !dbg !28518 ; 2 uses
  %i.j = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.i, !dbg !28518
  %i.k = shl i64 %i.g, 2, !dbg !28518
  %i.l = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.i, !dbg !28518
  %i.m = getelementptr i8, ptr %i.l, i64 %i.k, !dbg !28518
  %bound0 = icmp ult ptr %i.j, %i.c, !dbg !28518
  %bound1 = icmp ult ptr %i.a, %i.m, !dbg !28518
  %found.conflict = and i1 %bound0, %bound1, !dbg !28518
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph, !dbg !28519

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 9223372036854775804      ; 4 uses
  %i.n = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.o = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !28519

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !28519 ; 3 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index, !dbg !28520 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4, !dbg !28521
  %wide.load = load <2 x i16>, ptr %i.p, align 2, !dbg !28521, !alias.scope !28502, !noalias !28503
  %wide.load4 = load <2 x i16>, ptr %i.q, align 2, !dbg !28521, !alias.scope !28502, !noalias !28503
  %i.r = uitofp <2 x i16> %wide.load to <2 x double>, !dbg !28522
  %i.s = uitofp <2 x i16> %wide.load4 to <2 x double>, !dbg !28522
  %i.t = getelementptr [8 x i8], ptr %i.o, i64 %index, !dbg !28523 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !28524
  store <2 x double> %i.r, ptr %i.t, align 8, !dbg !28524, !alias.scope !28505, !noalias !28506
  store <2 x double> %i.s, ptr %i.u, align 8, !dbg !28524, !alias.scope !28505, !noalias !28506
  %index.next = add nuw i64 %index, 4, !dbg !28519 ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec, !dbg !28525
  br i1 %i.v, label %middle.block, label %vector.body, !dbg !28525, !llvm.loop !28491

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec, !dbg !28525
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRtduNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_dE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph.preheader, !dbg !28525

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.n, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.h, 3, !dbg !28525        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !28525
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !28525

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.w = phi i64 [ %i.aa, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ], !dbg !28520 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.ab, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], !dbg !28519 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i.prol, !dbg !28520
  %.val16.i.prol = load i16, ptr %i.x, align 2, !dbg !28521, !noalias !28503, !noundef !598
  %i.y = uitofp i16 %.val16.i.prol to double, !dbg !28522
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.w, !dbg !28523
  store double %i.y, ptr %i.z, align 8, !dbg !28524, !noalias !28507
  %i.aa = add i64 %i.w, 1, !dbg !28526            ; 3 uses
  %i.ab = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !28527 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !28525 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !28525
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !28525, !llvm.loop !28496

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.aa, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.aa, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.ab, %scalar.ph.prol ]
  %i.ac = sub nsw i64 %.sroa.01.0.i.ph, %i.h, !dbg !28525
  %i.ad = icmp ugt i64 %i.ac, -4, !dbg !28525
  br i1 %i.ad, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRtduNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_dE0NCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph, !dbg !28525

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ae = phi i64 [ %i.ax, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !28520 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.ay, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !28519 ; 5 uses
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !28520
  %.val16.i = load i16, ptr %i.af, align 2, !dbg !28521, !noalias !28503, !noundef !598
  %i.ag = uitofp i16 %.val16.i to double, !dbg !28522
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !28523
  store double %i.ag, ptr %i.ah, align 8, !dbg !28524, !noalias !28507
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !28520
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2, !dbg !28520
  %.val16.i.1 = load i16, ptr %i.aj, align 2, !dbg !28521, !noalias !28503, !noundef !598
  %i.ak = uitofp i16 %.val16.i.1 to double, !dbg !28522
  %i.al = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !28523
  %i.am = getelementptr i8, ptr %i.al, i64 8, !dbg !28523
  store double %i.ak, ptr %i.am, align 8, !dbg !28524, !noalias !28507
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !28520
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4, !dbg !28520
  %.val16.i.2 = load i16, ptr %i.ao, align 2, !dbg !28521, !noalias !28503, !noundef !598
  %i.ap = uitofp i16 %.val16.i.2 to double, !dbg !28522
  %i.aq = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !28523
end_hunk_7
begin_hunk_8_@_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4ItertENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_dE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecdE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute:bb.a
  ret void, !dbg !28529
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4ItertENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivefE3as_fE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecfE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !28530 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !28600, !nonnull !598, !noundef !598 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !28600
  %i.c = load ptr, ptr %i.b, align 8, !dbg !28600, !nonnull !598, !noundef !598 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !28601 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !28601
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !28601 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !28601
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !28601 ; 8 uses
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !28602
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRtfuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivefE3as_fE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.b, !dbg !28603

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !28604
  %i.f = ptrtoint ptr %i.a to i64, !dbg !28604
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !28604      ; 3 uses
  %i.h = lshr i64 %i.g, 1, !dbg !28604            ; 5 uses
  %min.iters.check = icmp ult i64 %i.g, 24, !dbg !28605
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !28605

vector.memcheck:                                  ; preds = %bb.b
  %i.i = shl i64 %.sroa.5.0.copyload, 2, !dbg !28605 ; 2 uses
  %i.j = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.i, !dbg !28605
  %i.k = shl i64 %i.g, 1, !dbg !28605
  %i.l = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.i, !dbg !28605
  %i.m = getelementptr i8, ptr %i.l, i64 %i.k, !dbg !28605
  %bound0 = icmp ult ptr %i.j, %i.c, !dbg !28605
  %bound1 = icmp ult ptr %i.a, %i.m, !dbg !28605
  %found.conflict = and i1 %bound0, %bound1, !dbg !28605
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph, !dbg !28606

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 9223372036854775800      ; 4 uses
  %i.n = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.o = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !28606

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !28606 ; 3 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index, !dbg !28607 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !28608
  %wide.load = load <4 x i16>, ptr %i.p, align 2, !dbg !28608, !alias.scope !28590, !noalias !28591
  %wide.load4 = load <4 x i16>, ptr %i.q, align 2, !dbg !28608, !alias.scope !28590, !noalias !28591
  %i.r = uitofp <4 x i16> %wide.load to <4 x float>, !dbg !28609
  %i.s = uitofp <4 x i16> %wide.load4 to <4 x float>, !dbg !28609
  %i.t = getelementptr [4 x i8], ptr %i.o, i64 %index, !dbg !28610 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !28611
  store <4 x float> %i.r, ptr %i.t, align 4, !dbg !28611, !alias.scope !28592, !noalias !28593
  store <4 x float> %i.s, ptr %i.u, align 4, !dbg !28611, !alias.scope !28592, !noalias !28593
  %index.next = add nuw i64 %index, 8, !dbg !28606 ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec, !dbg !28612
  br i1 %i.v, label %middle.block, label %vector.body, !dbg !28612, !llvm.loop !28579

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec, !dbg !28612
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRtfuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivefE3as_fE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph.preheader, !dbg !28612

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.n, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.h, 3, !dbg !28612        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !28612
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !28612

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.w = phi i64 [ %i.aa, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ], !dbg !28607 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.ab, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], !dbg !28606 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i.prol, !dbg !28607
  %.val16.i.prol = load i16, ptr %i.x, align 2, !dbg !28608, !noalias !28591, !noundef !598
  %i.y = uitofp i16 %.val16.i.prol to float, !dbg !28609
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.w, !dbg !28610
  store float %i.y, ptr %i.z, align 4, !dbg !28611, !noalias !28594
  %i.aa = add i64 %i.w, 1, !dbg !28613            ; 3 uses
  %i.ab = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !28614 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !28612 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !28612
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !28612, !llvm.loop !28584

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.aa, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.aa, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.ab, %scalar.ph.prol ]
  %i.ac = sub nsw i64 %.sroa.01.0.i.ph, %i.h, !dbg !28612
  %i.ad = icmp ugt i64 %i.ac, -4, !dbg !28612
  br i1 %i.ad, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRtfuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivefE3as_fE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph, !dbg !28612

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ae = phi i64 [ %i.ax, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !28607 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.ay, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !28606 ; 5 uses
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !28607
  %.val16.i = load i16, ptr %i.af, align 2, !dbg !28608, !noalias !28591, !noundef !598
  %i.ag = uitofp i16 %.val16.i to float, !dbg !28609
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !28610
  store float %i.ag, ptr %i.ah, align 4, !dbg !28611, !noalias !28594
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !28607
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2, !dbg !28607
  %.val16.i.1 = load i16, ptr %i.aj, align 2, !dbg !28608, !noalias !28591, !noundef !598
  %i.ak = uitofp i16 %.val16.i.1 to float, !dbg !28609
  %i.al = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !28610
  %i.am = getelementptr i8, ptr %i.al, i64 4, !dbg !28610
  store float %i.ak, ptr %i.am, align 4, !dbg !28611, !noalias !28594
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !28607
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4, !dbg !28607
  %.val16.i.2 = load i16, ptr %i.ao, align 2, !dbg !28608, !noalias !28591, !noundef !598
  %i.ap = uitofp i16 %.val16.i.2 to float, !dbg !28609
  %i.aq = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !28610
  %i.ar = getelementptr i8, ptr %i.aq, i64 8, !dbg !28610
  store float %i.ap, ptr %i.ar, align 4, !dbg !28611, !noalias !28594
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !28607
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 6, !dbg !28607
  %.val16.i.3 = load i16, ptr %i.at, align 2, !dbg !28608, !noalias !28591, !noundef !598
  %i.au = uitofp i16 %.val16.i.3 to float, !dbg !28609
  %i.av = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !28610
  %i.aw = getelementptr i8, ptr %i.av, i64 12, !dbg !28610
  store float %i.au, ptr %i.aw, align 4, !dbg !28611, !noalias !28594
  %i.ax = add i64 %i.ae, 4, !dbg !28613           ; 2 uses
  %i.ay = add nuw i64 %.sroa.01.0.i, 4, !dbg !28614 ; 2 uses
  %i.az = icmp eq i64 %i.ay, %i.h, !dbg !28612
  br i1 %i.az, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRtfuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivefE3as_fE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph, !dbg !28612, !llvm.loop !28585

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRtfuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivefE3as_fE0NCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.n, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ax, %scalar.ph ], !dbg !28615
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !28615, !noalias !28591
  ret void, !dbg !28616
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4ItertENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VechE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !28617 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !28689, !nonnull !598, !noundef !598 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !28689
  %i.c = load ptr, ptr %i.b, align 8, !dbg !28689, !nonnull !598, !noundef !598 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !28690 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !28690
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !28690 ; 9 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !28690
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !28690 ; 9 uses
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !28691
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRthuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0NCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %iter.check, !dbg !28692

iter.check:                                       ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !28693
  %i.f = ptrtoint ptr %i.a to i64, !dbg !28693
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !28693      ; 4 uses
  %i.h = lshr i64 %i.g, 1, !dbg !28693            ; 8 uses
  %min.iters.check = icmp ult i64 %i.g, 8, !dbg !28694
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck, !dbg !28694

vector.memcheck:                                  ; preds = %iter.check
  %i.i = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload, !dbg !28694
  %i.j = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload, !dbg !28694
  %i.k = getelementptr i8, ptr %i.j, i64 %i.h, !dbg !28694
  %bound0 = icmp ult ptr %i.i, %i.c, !dbg !28694
  %bound1 = icmp ult ptr %i.a, %i.k, !dbg !28694
  %found.conflict = and i1 %bound0, %bound1, !dbg !28694
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !28695

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check4 = icmp ult i64 %i.g, 32, !dbg !28694
  br i1 %min.iters.check4, label %vec.epilog.ph, label %vector.ph, !dbg !28694

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.h, 9223372036854775792      ; 5 uses
  %i.l = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.m = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !28694

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !28695 ; 3 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index, !dbg !28696 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !28697
  %wide.load = load <8 x i16>, ptr %i.n, align 2, !dbg !28697, !alias.scope !28678, !noalias !28679
  %wide.load5 = load <8 x i16>, ptr %i.o, align 2, !dbg !28697, !alias.scope !28678, !noalias !28679
  %i.p = trunc <8 x i16> %wide.load to <8 x i8>, !dbg !28698
  %i.q = trunc <8 x i16> %wide.load5 to <8 x i8>, !dbg !28698
  %i.r = getelementptr i8, ptr %i.m, i64 %index, !dbg !28699 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !28700
  store <8 x i8> %i.p, ptr %i.r, align 1, !dbg !28700, !alias.scope !28681, !noalias !28682
  store <8 x i8> %i.q, ptr %i.s, align 1, !dbg !28700, !alias.scope !28681, !noalias !28682
  %index.next = add nuw i64 %index, 16, !dbg !28695 ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec, !dbg !28701
  br i1 %i.t, label %middle.block, label %vector.body, !dbg !28701, !llvm.loop !28666

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec, !dbg !28701
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRthuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0NCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.iter.check, !dbg !28701

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.u = and i64 %i.g, 24
  %min.epilog.iters.check = icmp eq i64 %i.u, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !987

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !28695
  %n.vec6 = and i64 %i.h, 9223372036854775804     ; 4 uses
  %i.v = add i64 %.sroa.5.0.copyload, %n.vec6     ; 2 uses
  %i.w = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index7 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next9, %vec.epilog.vector.body ], !dbg !28695 ; 3 uses
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index7, !dbg !28696
  %wide.load8 = load <4 x i16>, ptr %i.x, align 2, !dbg !28697, !alias.scope !28678, !noalias !28679
  %i.y = trunc <4 x i16> %wide.load8 to <4 x i8>, !dbg !28698
  %i.z = getelementptr i8, ptr %i.w, i64 %index7, !dbg !28699
  store <4 x i8> %i.y, ptr %i.z, align 1, !dbg !28700, !alias.scope !28681, !noalias !28682
  %index.next9 = add nuw i64 %index7, 4, !dbg !28695 ; 2 uses
  %i.aa = icmp eq i64 %index.next9, %n.vec6, !dbg !28701
  br i1 %i.aa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !28701, !llvm.loop !28667

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n10 = icmp eq i64 %i.h, %n.vec6, !dbg !28701
  br i1 %cmp.n10, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRthuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0NCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph.preheader, !dbg !28701

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %iter.check ], [ %.sroa.5.0.copyload, %vector.memcheck ], [ %i.l, %vec.epilog.iter.check ], [ %i.v, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec6, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.h, 3, !dbg !28701        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !28701
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !28701

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %i.ab = phi i64 [ %i.af, %vec.epilog.scalar.ph.prol ], [ %.ph, %vec.epilog.scalar.ph.preheader ], !dbg !28696 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.ag, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !28695 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i.prol, !dbg !28696
  %.val16.i.prol = load i16, ptr %i.ac, align 2, !dbg !28697, !noalias !28679, !noundef !598
  %i.ad = trunc i16 %.val16.i.prol to i8, !dbg !28698
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.ab, !dbg !28699
  store i8 %i.ad, ptr %i.ae, align 1, !dbg !28700, !noalias !28683
  %i.af = add i64 %i.ab, 1, !dbg !28702           ; 3 uses
  %i.ag = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !28703 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !28701 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !28701
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !28701, !llvm.loop !28672

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.af, %vec.epilog.scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.af, %vec.epilog.scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ag, %vec.epilog.scalar.ph.prol ]
  %i.ah = sub nsw i64 %.sroa.01.0.i.ph, %i.h, !dbg !28701
  %i.ai = icmp ugt i64 %i.ah, -4, !dbg !28701
  br i1 %i.ai, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRthuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0NCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph, !dbg !28701

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.aj = phi i64 [ %i.bc, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !28696 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.bd, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !28695 ; 5 uses
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !28696
  %.val16.i = load i16, ptr %i.ak, align 2, !dbg !28697, !noalias !28679, !noundef !598
  %i.al = trunc i16 %.val16.i to i8, !dbg !28698
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.aj, !dbg !28699
  store i8 %i.al, ptr %i.am, align 1, !dbg !28700, !noalias !28683
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !28696
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 2, !dbg !28696
  %.val16.i.1 = load i16, ptr %i.ao, align 2, !dbg !28697, !noalias !28679, !noundef !598
  %i.ap = trunc i16 %.val16.i.1 to i8, !dbg !28698
  %i.aq = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.aj, !dbg !28699
  %i.ar = getelementptr i8, ptr %i.aq, i64 1, !dbg !28699
  store i8 %i.ap, ptr %i.ar, align 1, !dbg !28700, !noalias !28683
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !28696
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4, !dbg !28696
  %.val16.i.2 = load i16, ptr %i.at, align 2, !dbg !28697, !noalias !28679, !noundef !598
  %i.au = trunc i16 %.val16.i.2 to i8, !dbg !28698
  %i.av = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.aj, !dbg !28699
  %i.aw = getelementptr i8, ptr %i.av, i64 2, !dbg !28699
  store i8 %i.au, ptr %i.aw, align 1, !dbg !28700, !noalias !28683
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !28696
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 6, !dbg !28696
  %.val16.i.3 = load i16, ptr %i.ay, align 2, !dbg !28697, !noalias !28679, !noundef !598
  %i.az = trunc i16 %.val16.i.3 to i8, !dbg !28698
  %i.ba = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.aj, !dbg !28699
  %i.bb = getelementptr i8, ptr %i.ba, i64 3, !dbg !28699
  store i8 %i.az, ptr %i.bb, align 1, !dbg !28700, !noalias !28683
  %i.bc = add i64 %i.aj, 4, !dbg !28702           ; 2 uses
  %i.bd = add nuw i64 %.sroa.01.0.i, 4, !dbg !28703 ; 2 uses
  %i.be = icmp eq i64 %i.bd, %i.h, !dbg !28701
  br i1 %i.be, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRthuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0NCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph, !dbg !28701, !llvm.loop !28673

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRthuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivehE3as_hE0NCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.v, %vec.epilog.middle.block ], [ %i.l, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.bc, %vec.epilog.scalar.ph ], !dbg !28704
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !28704, !noalias !28679
  ret void, !dbg !28705
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4ItertENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivelE3as_lE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VeclE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !28706 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !28777, !nonnull !598, !noundef !598 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !28777
  %i.c = load ptr, ptr %i.b, align 8, !dbg !28777, !nonnull !598, !noundef !598 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !28778 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !28778
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !28778 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !28778
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !28778 ; 8 uses
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !28779
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRtluNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivelE3as_lE0NCINvNvBS_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VeclE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.b, !dbg !28780

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !28781
  %i.f = ptrtoint ptr %i.a to i64, !dbg !28781
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !28781      ; 3 uses
  %i.h = lshr i64 %i.g, 1, !dbg !28781            ; 5 uses
  %min.iters.check = icmp ult i64 %i.g, 32, !dbg !28782
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !28782

vector.memcheck:                                  ; preds = %bb.b
  %i.i = shl i64 %.sroa.5.0.copyload, 2, !dbg !28782 ; 2 uses
  %i.j = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.i, !dbg !28782
  %i.k = shl i64 %i.g, 1, !dbg !28782
  %i.l = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.i, !dbg !28782
  %i.m = getelementptr i8, ptr %i.l, i64 %i.k, !dbg !28782
  %bound0 = icmp ult ptr %i.j, %i.c, !dbg !28782
  %bound1 = icmp ult ptr %i.a, %i.m, !dbg !28782
  %found.conflict = and i1 %bound0, %bound1, !dbg !28782
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph, !dbg !28783

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 9223372036854775800      ; 4 uses
  %i.n = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.o = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !28783

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !28783 ; 3 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index, !dbg !28784 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !28785
  %wide.load = load <4 x i16>, ptr %i.p, align 2, !dbg !28785, !alias.scope !28766, !noalias !28767
  %wide.load4 = load <4 x i16>, ptr %i.q, align 2, !dbg !28785, !alias.scope !28766, !noalias !28767
  %i.r = zext <4 x i16> %wide.load to <4 x i32>, !dbg !28786
  %i.s = zext <4 x i16> %wide.load4 to <4 x i32>, !dbg !28786
  %i.t = getelementptr [4 x i8], ptr %i.o, i64 %index, !dbg !28787 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !28788
  store <4 x i32> %i.r, ptr %i.t, align 4, !dbg !28788, !alias.scope !28769, !noalias !28770
  store <4 x i32> %i.s, ptr %i.u, align 4, !dbg !28788, !alias.scope !28769, !noalias !28770
  %index.next = add nuw i64 %index, 8, !dbg !28783 ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec, !dbg !28789
  br i1 %i.v, label %middle.block, label %vector.body, !dbg !28789, !llvm.loop !28755

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec, !dbg !28789
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRtluNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivelE3as_lE0NCINvNvBS_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VeclE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph.preheader, !dbg !28789

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.n, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.h, 3, !dbg !28789        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !28789
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !28789

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.w = phi i64 [ %i.aa, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ], !dbg !28784 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.ab, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], !dbg !28783 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i.prol, !dbg !28784
  %.val16.i.prol = load i16, ptr %i.x, align 2, !dbg !28785, !noalias !28767, !noundef !598
  %i.y = zext i16 %.val16.i.prol to i32, !dbg !28786
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.w, !dbg !28787
  store i32 %i.y, ptr %i.z, align 4, !dbg !28788, !noalias !28771
  %i.aa = add i64 %i.w, 1, !dbg !28790            ; 3 uses
  %i.ab = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !28791 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !28789 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !28789
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !28789, !llvm.loop !28760

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.aa, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.aa, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.ab, %scalar.ph.prol ]
  %i.ac = sub nsw i64 %.sroa.01.0.i.ph, %i.h, !dbg !28789
  %i.ad = icmp ugt i64 %i.ac, -4, !dbg !28789
  br i1 %i.ad, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRtluNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivelE3as_lE0NCINvNvBS_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VeclE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph, !dbg !28789

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ae = phi i64 [ %i.ax, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !28784 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.ay, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !28783 ; 5 uses
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !28784
  %.val16.i = load i16, ptr %i.af, align 2, !dbg !28785, !noalias !28767, !noundef !598
  %i.ag = zext i16 %.val16.i to i32, !dbg !28786
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !28787
  store i32 %i.ag, ptr %i.ah, align 4, !dbg !28788, !noalias !28771
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !28784
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2, !dbg !28784
  %.val16.i.1 = load i16, ptr %i.aj, align 2, !dbg !28785, !noalias !28767, !noundef !598
  %i.ak = zext i16 %.val16.i.1 to i32, !dbg !28786
  %i.al = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !28787
  %i.am = getelementptr i8, ptr %i.al, i64 4, !dbg !28787
  store i32 %i.ak, ptr %i.am, align 4, !dbg !28788, !noalias !28771
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !28784
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4, !dbg !28784
  %.val16.i.2 = load i16, ptr %i.ao, align 2, !dbg !28785, !noalias !28767, !noundef !598
  %i.ap = zext i16 %.val16.i.2 to i32, !dbg !28786
  %i.aq = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !28787
end_hunk_8
begin_hunk_9_@_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4ItertENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecnE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute:bb.a
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !28945 ; 3 uses
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !28946
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRtnuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecnE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.b, !dbg !28947

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !28948
  %i.f = ptrtoint ptr %i.a to i64, !dbg !28948
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !28948      ; 3 uses
  %i.h = lshr exact i64 %i.g, 1, !dbg !28948      ; 2 uses
  %i.i = icmp eq i64 %i.g, 2, !dbg !28949
  br i1 %i.i, label %.epil.preheader, label %.new, !dbg !28949

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.h, 9223372036854775806, !dbg !28949
  br label %bb.c, !dbg !28949

bb.c:                                             ; preds = %bb.c, %.new
  %i.j = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.s, %bb.c ], !dbg !28950 ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.t, %bb.c ], !dbg !28951 ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !28950
  %.val16.i = load i16, ptr %i.k, align 2, !dbg !28952, !noalias !28936, !noundef !598
  %i.l = zext i16 %.val16.i to i128, !dbg !28953
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.j, !dbg !28954
  store i128 %i.l, ptr %i.m, align 16, !dbg !28955, !noalias !28938
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !28950
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 2, !dbg !28950
  %.val16.i.1 = load i16, ptr %i.o, align 2, !dbg !28952, !noalias !28936, !noundef !598
  %i.p = zext i16 %.val16.i.1 to i128, !dbg !28953
  %i.q = getelementptr [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.j, !dbg !28954
  %i.r = getelementptr i8, ptr %i.q, i64 16, !dbg !28954
  store i128 %i.p, ptr %i.r, align 16, !dbg !28955, !noalias !28938
  %i.s = add i64 %i.j, 2, !dbg !28956             ; 3 uses
  %i.t = add nuw i64 %.sroa.01.0.i, 2, !dbg !28957 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !28958  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !28958
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRtnuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecnE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, label %bb.c, !dbg !28958

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRtnuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecnE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %i.u = and i64 %i.g, 2, !dbg !28958
  %lcmp.mod.not = icmp eq i64 %i.u, 0, !dbg !28958
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRtnuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecnE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %.epil.preheader, !dbg !28958

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRtnuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecnE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.s, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRtnuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecnE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.t, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRtnuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecnE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.h to i1, !dbg !28958
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !28958
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i.epil.init, !dbg !28950
  %.val16.i.epil = load i16, ptr %i.v, align 2, !dbg !28952, !noalias !28936, !noundef !598
  %i.w = zext i16 %.val16.i.epil to i128, !dbg !28953
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init, !dbg !28954
  store i128 %i.w, ptr %i.x, align 16, !dbg !28955, !noalias !28938
  %i.y = add i64 %.epil.init, 1, !dbg !28956
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRtnuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecnE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRtnuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecnE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRtnuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecnE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.s, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRtnuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivenE3as_nE0NCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecnE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ], [ %i.y, %.epil.preheader ], !dbg !28959
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !28959, !noalias !28936
  ret void, !dbg !28960
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4ItertENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecoE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !28961 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !29023, !nonnull !598, !noundef !598 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !29023
  %i.c = load ptr, ptr %i.b, align 8, !dbg !29023, !nonnull !598, !noundef !598 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !29024 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !29024
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !29024 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !29024
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !29024 ; 3 uses
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !29025
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRtouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.b, !dbg !29026

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !29027
  %i.f = ptrtoint ptr %i.a to i64, !dbg !29027
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !29027      ; 3 uses
  %i.h = lshr exact i64 %i.g, 1, !dbg !29027      ; 2 uses
  %i.i = icmp eq i64 %i.g, 2, !dbg !29028
  br i1 %i.i, label %.epil.preheader, label %.new, !dbg !29028

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.h, 9223372036854775806, !dbg !29028
  br label %bb.c, !dbg !29028

bb.c:                                             ; preds = %bb.c, %.new
  %i.j = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.s, %bb.c ], !dbg !29029 ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.t, %bb.c ], !dbg !29030 ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !29029
  %.val16.i = load i16, ptr %i.k, align 2, !dbg !29031, !noalias !29015, !noundef !598
  %i.l = zext i16 %.val16.i to i128, !dbg !29032
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.j, !dbg !29033
  store i128 %i.l, ptr %i.m, align 16, !dbg !29034, !noalias !29017
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !29029
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 2, !dbg !29029
  %.val16.i.1 = load i16, ptr %i.o, align 2, !dbg !29031, !noalias !29015, !noundef !598
  %i.p = zext i16 %.val16.i.1 to i128, !dbg !29032
  %i.q = getelementptr [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.j, !dbg !29033
  %i.r = getelementptr i8, ptr %i.q, i64 16, !dbg !29033
  store i128 %i.p, ptr %i.r, align 16, !dbg !29034, !noalias !29017
  %i.s = add i64 %i.j, 2, !dbg !29035             ; 3 uses
  %i.t = add nuw i64 %.sroa.01.0.i, 2, !dbg !29036 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !29037  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !29037
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRtouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, label %bb.c, !dbg !29037

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRtouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %i.u = and i64 %i.g, 2, !dbg !29037
  %lcmp.mod.not = icmp eq i64 %i.u, 0, !dbg !29037
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRtouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %.epil.preheader, !dbg !29037

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRtouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.s, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRtouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.t, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRtouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.h to i1, !dbg !29037
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !29037
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i.epil.init, !dbg !29029
  %.val16.i.epil = load i16, ptr %i.v, align 2, !dbg !29031, !noalias !29015, !noundef !598
  %i.w = zext i16 %.val16.i.epil to i128, !dbg !29032
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init, !dbg !29033
  store i128 %i.w, ptr %i.x, align 16, !dbg !29034, !noalias !29017
  %i.y = add i64 %.epil.init, 1, !dbg !29035
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRtouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRtouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRtouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.s, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRtouNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveoE3as_oE0NCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecoE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ], [ %i.y, %.epil.preheader ], !dbg !29038
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !29038, !noalias !29015
  ret void, !dbg !29039
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4ItertENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivesE3as_sE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecsE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !29040 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !29099, !nonnull !598, !noundef !598 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !29099
  %i.c = load ptr, ptr %i.b, align 8, !dbg !29099, !nonnull !598, !noundef !598 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !29100 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !29100
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !29100 ; 8 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !29100
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !29100 ; 8 uses
  %.sroa.7.0.copyload3 = ptrtoaddr ptr %.sroa.7.0.copyload to i64, !dbg !29101
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !29101
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRtsuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivesE3as_sE0NCINvNvBS_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecsE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %iter.check, !dbg !29102

iter.check:                                       ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !29103
  %i.f = ptrtoint ptr %i.a to i64, !dbg !29103    ; 2 uses
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !29103      ; 4 uses
  %i.h = lshr i64 %i.g, 1, !dbg !29103            ; 7 uses
  %min.iters.check = icmp ult i64 %i.g, 8, !dbg !29104
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck, !dbg !29104

vector.memcheck:                                  ; preds = %iter.check
  %i.i = shl i64 %.sroa.5.0.copyload, 1, !dbg !29104
  %i.j = add i64 %i.i, %.sroa.7.0.copyload3, !dbg !29104
  %i.k = sub i64 %i.f, %i.j, !dbg !29104
  %diff.check = icmp ugt i64 %i.k, -32, !dbg !29104
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !29105

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check4 = icmp ult i64 %i.g, 32, !dbg !29104
  br i1 %min.iters.check4, label %vec.epilog.ph, label %vector.ph, !dbg !29104

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.h, 9223372036854775792      ; 5 uses
  %i.l = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.m = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !29104

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !29105 ; 3 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index, !dbg !29106 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !29107
  %wide.load = load <8 x i16>, ptr %i.n, align 2, !dbg !29107, !noalias !29092
  %wide.load5 = load <8 x i16>, ptr %i.o, align 2, !dbg !29107, !noalias !29092
  %i.p = getelementptr [2 x i8], ptr %i.m, i64 %index, !dbg !29108 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16, !dbg !29109
  store <8 x i16> %wide.load, ptr %i.p, align 2, !dbg !29109, !noalias !29093
  store <8 x i16> %wide.load5, ptr %i.q, align 2, !dbg !29109, !noalias !29093
  %index.next = add nuw i64 %index, 16, !dbg !29105 ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec, !dbg !29110
  br i1 %i.r, label %middle.block, label %vector.body, !dbg !29110, !llvm.loop !29080

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec, !dbg !29110
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRtsuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivesE3as_sE0NCINvNvBS_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecsE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.iter.check, !dbg !29110

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.s = and i64 %i.g, 24
  %min.epilog.iters.check = icmp eq i64 %i.s, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !987

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !29105
  %n.vec6 = and i64 %i.h, 9223372036854775804     ; 4 uses
  %i.t = add i64 %.sroa.5.0.copyload, %n.vec6     ; 2 uses
  %i.u = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index7 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next9, %vec.epilog.vector.body ], !dbg !29105 ; 3 uses
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index7, !dbg !29106
  %wide.load8 = load <4 x i16>, ptr %i.v, align 2, !dbg !29107, !noalias !29092
  %i.w = getelementptr [2 x i8], ptr %i.u, i64 %index7, !dbg !29108
  store <4 x i16> %wide.load8, ptr %i.w, align 2, !dbg !29109, !noalias !29093
  %index.next9 = add nuw i64 %index7, 4, !dbg !29105 ; 2 uses
  %i.x = icmp eq i64 %index.next9, %n.vec6, !dbg !29110
  br i1 %i.x, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !29110, !llvm.loop !29081

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n10 = icmp eq i64 %i.h, %n.vec6, !dbg !29110
  br i1 %cmp.n10, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRtsuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivesE3as_sE0NCINvNvBS_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecsE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph.preheader, !dbg !29110

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %iter.check ], [ %.sroa.5.0.copyload, %vector.memcheck ], [ %i.l, %vec.epilog.iter.check ], [ %i.t, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec6, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.h, 3, !dbg !29110        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !29110
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !29110

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %i.y = phi i64 [ %i.ab, %vec.epilog.scalar.ph.prol ], [ %.ph, %vec.epilog.scalar.ph.preheader ], !dbg !29106 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.ac, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !29105 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i.prol, !dbg !29106
  %.val16.i.prol = load i16, ptr %i.z, align 2, !dbg !29107, !noalias !29092, !noundef !598
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.y, !dbg !29108
  store i16 %.val16.i.prol, ptr %i.aa, align 2, !dbg !29109, !noalias !29093
  %i.ab = add i64 %i.y, 1, !dbg !29111            ; 3 uses
  %i.ac = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !29112 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !29110 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !29110
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !29110, !llvm.loop !29086

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.ab, %vec.epilog.scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ab, %vec.epilog.scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ac, %vec.epilog.scalar.ph.prol ]
  %i.ad = sub nsw i64 %.sroa.01.0.i.ph, %i.h, !dbg !29110
  %i.ae = icmp ugt i64 %i.ad, -4, !dbg !29110
  br i1 %i.ae, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRtsuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivesE3as_sE0NCINvNvBS_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecsE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph, !dbg !29110

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.af = phi i64 [ %i.au, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !29106 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.av, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !29105 ; 5 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !29106
  %.val16.i = load i16, ptr %i.ag, align 2, !dbg !29107, !noalias !29092, !noundef !598
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.af, !dbg !29108
  store i16 %.val16.i, ptr %i.ah, align 2, !dbg !29109, !noalias !29093
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !29106
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2, !dbg !29106
  %.val16.i.1 = load i16, ptr %i.aj, align 2, !dbg !29107, !noalias !29092, !noundef !598
  %i.ak = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.af, !dbg !29108
  %i.al = getelementptr i8, ptr %i.ak, i64 2, !dbg !29108
  store i16 %.val16.i.1, ptr %i.al, align 2, !dbg !29109, !noalias !29093
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !29106
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4, !dbg !29106
  %.val16.i.2 = load i16, ptr %i.an, align 2, !dbg !29107, !noalias !29092, !noundef !598
  %i.ao = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.af, !dbg !29108
  %i.ap = getelementptr i8, ptr %i.ao, i64 4, !dbg !29108
  store i16 %.val16.i.2, ptr %i.ap, align 2, !dbg !29109, !noalias !29093
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !29106
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 6, !dbg !29106
  %.val16.i.3 = load i16, ptr %i.ar, align 2, !dbg !29107, !noalias !29092, !noundef !598
  %i.as = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.af, !dbg !29108
  %i.at = getelementptr i8, ptr %i.as, i64 6, !dbg !29108
  store i16 %.val16.i.3, ptr %i.at, align 2, !dbg !29109, !noalias !29093
  %i.au = add i64 %i.af, 4, !dbg !29111           ; 2 uses
  %i.av = add nuw i64 %.sroa.01.0.i, 4, !dbg !29112 ; 2 uses
  %i.aw = icmp eq i64 %i.av, %i.h, !dbg !29110
  br i1 %i.aw, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRtsuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivesE3as_sE0NCINvNvBS_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecsE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph, !dbg !29110, !llvm.loop !29087

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRtsuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivesE3as_sE0NCINvNvBS_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecsE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.t, %vec.epilog.middle.block ], [ %i.l, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.au, %vec.epilog.scalar.ph ], !dbg !29113
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !29113, !noalias !29092
  ret void, !dbg !29114
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4ItertENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivexE3as_xE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4z_3VecxE14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !29115 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !29186, !nonnull !598, !noundef !598 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !29186
  %i.c = load ptr, ptr %i.b, align 8, !dbg !29186, !nonnull !598, !noundef !598 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !29187 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !29187
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !29187 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !29187
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !29187 ; 8 uses
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !29188
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRtxuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivexE3as_xE0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.b, !dbg !29189

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !29190
  %i.f = ptrtoint ptr %i.a to i64, !dbg !29190
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !29190      ; 3 uses
  %i.h = lshr i64 %i.g, 1, !dbg !29190            ; 5 uses
  %min.iters.check = icmp ult i64 %i.g, 28, !dbg !29191
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !29191

vector.memcheck:                                  ; preds = %bb.b
  %i.i = shl i64 %.sroa.5.0.copyload, 3, !dbg !29191 ; 2 uses
  %i.j = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.i, !dbg !29191
  %i.k = shl i64 %i.g, 2, !dbg !29191
  %i.l = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.i, !dbg !29191
  %i.m = getelementptr i8, ptr %i.l, i64 %i.k, !dbg !29191
  %bound0 = icmp ult ptr %i.j, %i.c, !dbg !29191
  %bound1 = icmp ult ptr %i.a, %i.m, !dbg !29191
  %found.conflict = and i1 %bound0, %bound1, !dbg !29191
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph, !dbg !29192

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 9223372036854775804      ; 4 uses
  %i.n = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.o = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !29192

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !29192 ; 3 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index, !dbg !29193 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4, !dbg !29194
  %wide.load = load <2 x i16>, ptr %i.p, align 2, !dbg !29194, !alias.scope !29175, !noalias !29176
  %wide.load4 = load <2 x i16>, ptr %i.q, align 2, !dbg !29194, !alias.scope !29175, !noalias !29176
  %i.r = zext <2 x i16> %wide.load to <2 x i64>, !dbg !29195
  %i.s = zext <2 x i16> %wide.load4 to <2 x i64>, !dbg !29195
  %i.t = getelementptr [8 x i8], ptr %i.o, i64 %index, !dbg !29196 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !29197
  store <2 x i64> %i.r, ptr %i.t, align 8, !dbg !29197, !alias.scope !29178, !noalias !29179
  store <2 x i64> %i.s, ptr %i.u, align 8, !dbg !29197, !alias.scope !29178, !noalias !29179
  %index.next = add nuw i64 %index, 4, !dbg !29192 ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec, !dbg !29198
  br i1 %i.v, label %middle.block, label %vector.body, !dbg !29198, !llvm.loop !29164

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec, !dbg !29198
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRtxuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivexE3as_xE0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph.preheader, !dbg !29198

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.n, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.h, 3, !dbg !29198        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !29198
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !29198

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.w = phi i64 [ %i.aa, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ], !dbg !29193 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.ab, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], !dbg !29192 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i.prol, !dbg !29193
  %.val16.i.prol = load i16, ptr %i.x, align 2, !dbg !29194, !noalias !29176, !noundef !598
  %i.y = zext i16 %.val16.i.prol to i64, !dbg !29195
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.w, !dbg !29196
  store i64 %i.y, ptr %i.z, align 8, !dbg !29197, !noalias !29180
  %i.aa = add i64 %i.w, 1, !dbg !29199            ; 3 uses
  %i.ab = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !29200 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !29198 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !29198
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !29198, !llvm.loop !29169

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.aa, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.aa, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.ab, %scalar.ph.prol ]
  %i.ac = sub nsw i64 %.sroa.01.0.i.ph, %i.h, !dbg !29198
  %i.ad = icmp ugt i64 %i.ac, -4, !dbg !29198
  br i1 %i.ad, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRtxuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarytNvYtINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivexE3as_xE0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4J_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph, !dbg !29198

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ae = phi i64 [ %i.ax, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !29193 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.ay, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !29192 ; 5 uses
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !29193
  %.val16.i = load i16, ptr %i.af, align 2, !dbg !29194, !noalias !29176, !noundef !598
  %i.ag = zext i16 %.val16.i to i64, !dbg !29195
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !29196
  store i64 %i.ag, ptr %i.ah, align 8, !dbg !29197, !noalias !29180
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !29193
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2, !dbg !29193
  %.val16.i.1 = load i16, ptr %i.aj, align 2, !dbg !29194, !noalias !29176, !noundef !598
  %i.ak = zext i16 %.val16.i.1 to i64, !dbg !29195
  %i.al = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !29196
  %i.am = getelementptr i8, ptr %i.al, i64 8, !dbg !29196
  store i64 %i.ak, ptr %i.am, align 8, !dbg !29197, !noalias !29180
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !29193
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4, !dbg !29193
  %.val16.i.2 = load i16, ptr %i.ao, align 2, !dbg !29194, !noalias !29176, !noundef !598
  %i.ap = zext i16 %.val16.i.2 to i64, !dbg !29195
  %i.aq = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !29196
  %i.ar = getelementptr i8, ptr %i.aq, i64 16, !dbg !29196
  store i64 %i.ap, ptr %i.ar, align 8, !dbg !29197, !noalias !29180
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !29193
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 6, !dbg !29193
  %.val16.i.3 = load i16, ptr %i.at, align 2, !dbg !29194, !noalias !29176, !noundef !598
  %i.au = zext i16 %.val16.i.3 to i64, !dbg !29195
end_hunk_9
