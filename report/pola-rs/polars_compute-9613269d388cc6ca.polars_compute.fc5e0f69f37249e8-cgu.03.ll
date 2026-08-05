inline.NumInlined: 4552
inline.NumDeleted: 3455
loop-unroll.NumRuntimeUnrolled: 143
loop-unroll.NumUnrolled: 143
begin_hunk_0_@_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvNtCslFlrwjHoTci_14polars_compute32trim_lists_to_normalized_offsets37trim_lists_to_normalized_offsets_listlE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3f_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4s_3VeclE14extend_trustedBN_E0E0EB1w_:bb.a
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !21916 ; 2 uses
  %i.p = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !21916

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !21916 ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index, !dbg !21932 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !21935
  %wide.load = load <4 x i32>, ptr %i.q, align 4, !dbg !21935, !alias.scope !21936, !noalias !21938
  %wide.load8 = load <4 x i32>, ptr %i.r, align 4, !dbg !21935, !alias.scope !21936, !noalias !21938
  %i.s = sub <4 x i32> %wide.load, %broadcast.splat, !dbg !21939
  %i.t = sub <4 x i32> %wide.load8, %broadcast.splat, !dbg !21939
  %i.u = getelementptr [4 x i8], ptr %i.p, i64 %index, !dbg !21943 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !21950
  store <4 x i32> %i.s, ptr %i.u, align 4, !dbg !21950, !alias.scope !21953, !noalias !21955
  store <4 x i32> %i.t, ptr %i.v, align 4, !dbg !21950, !alias.scope !21953, !noalias !21955
  %index.next = add nuw i64 %index, 8, !dbg !21916 ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec, !dbg !21960
  br i1 %i.w, label %middle.block, label %vector.body, !dbg !21960, !llvm.loop !21961

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec, !dbg !21960
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRlluNCINvNtCslFlrwjHoTci_14polars_compute32trim_lists_to_normalized_offsets37trim_lists_to_normalized_offsets_listlE0NCINvNvBS_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4C_3VeclE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2m_.exit, label %scalar.ph.preheader, !dbg !21960

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.n, %middle.block ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.sroa.01.0.i.ph, 1, !dbg !21960
  %i.x = and i64 %i.i, 4, !dbg !21960
  %lcmp.mod.not = icmp eq i64 %i.x, 0, !dbg !21960
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !21960

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i.ph, !dbg !21932
  %.val16.i.prol = load i32, ptr %i.y, align 4, !dbg !21935, !noalias !21938, !noundef !12
  %i.z = load i32, ptr %i.e, align 4, !dbg !21917, !noalias !21927, !noundef !12
  %i.aa = sub i32 %.val16.i.prol, %i.z, !dbg !21939
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %.ph, !dbg !21943
  store i32 %i.aa, ptr %i.ab, align 4, !dbg !21950, !noalias !21962
  %i.ac = add i64 %.ph, 1, !dbg !21963            ; 2 uses
  %i.ad = or disjoint i64 %.sroa.01.0.i.ph, 1, !dbg !21966
  br label %scalar.ph.prol.loopexit, !dbg !21960

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ac, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ac, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.ad, %scalar.ph.prol ]
  %i.ae = icmp eq i64 %i.j, %.neg, !dbg !21960
  br i1 %i.ae, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRlluNCINvNtCslFlrwjHoTci_14polars_compute32trim_lists_to_normalized_offsets37trim_lists_to_normalized_offsets_listlE0NCINvNvBS_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4C_3VeclE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2m_.exit, label %scalar.ph, !dbg !21960

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.af = phi i64 [ %i.aq, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !21932 ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.ar, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !21916 ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !21932
  %.val16.i = load i32, ptr %i.ag, align 4, !dbg !21935, !noalias !21938, !noundef !12
  %i.ah = load i32, ptr %i.e, align 4, !dbg !21917, !noalias !21927, !noundef !12
  %i.ai = sub i32 %.val16.i, %i.ah, !dbg !21939
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.af, !dbg !21943
  store i32 %i.ai, ptr %i.aj, align 4, !dbg !21950, !noalias !21962
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !21932
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4, !dbg !21932
  %.val16.i.1 = load i32, ptr %i.al, align 4, !dbg !21935, !noalias !21938, !noundef !12
  %i.am = load i32, ptr %i.e, align 4, !dbg !21917, !noalias !21927, !noundef !12
  %i.an = sub i32 %.val16.i.1, %i.am, !dbg !21939
  %i.ao = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.af, !dbg !21943
  %i.ap = getelementptr i8, ptr %i.ao, i64 4, !dbg !21943
  store i32 %i.an, ptr %i.ap, align 4, !dbg !21950, !noalias !21962
  %i.aq = add i64 %i.af, 2, !dbg !21963           ; 2 uses
  %i.ar = add nuw i64 %.sroa.01.0.i, 2, !dbg !21966 ; 2 uses
  %i.as = icmp eq i64 %i.ar, %i.j, !dbg !21960
  br i1 %i.as, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRlluNCINvNtCslFlrwjHoTci_14polars_compute32trim_lists_to_normalized_offsets37trim_lists_to_normalized_offsets_listlE0NCINvNvBS_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4C_3VeclE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2m_.exit, label %scalar.ph, !dbg !21960, !llvm.loop !21969

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRlluNCINvNtCslFlrwjHoTci_14polars_compute32trim_lists_to_normalized_offsets37trim_lists_to_normalized_offsets_listlE0NCINvNvBS_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4C_3VeclE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2m_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.n, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.aq, %scalar.ph ], !dbg !21970
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !21970, !noalias !21938
  ret void, !dbg !21979
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarylNCNvNtNtCslFlrwjHoTci_14polars_compute4cast12primitive_to16date32_to_date640xE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3D_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4Q_3VecxE14extend_trustedBN_E0E0EB2t_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !21980 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !21981, !nonnull !12, !noundef !12 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !21981
  %i.c = load ptr, ptr %i.b, align 8, !dbg !21981, !nonnull !12, !noundef !12 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !21982 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !21982
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !21982 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !21982
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !21982 ; 5 uses
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !21985
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRlxuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarylNCNvNtNtCslFlrwjHoTci_14polars_compute4cast12primitive_to16date32_to_date640xE0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB50_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB3j_.exit, label %bb.b, !dbg !21992

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !21993
  %i.f = ptrtoint ptr %i.a to i64, !dbg !21993
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !21993      ; 2 uses
  %i.h = lshr exact i64 %i.g, 2, !dbg !21993      ; 2 uses
  %xtraiter = and i64 %i.h, 3, !dbg !22005        ; 3 uses
  %i.i = icmp ult i64 %i.g, 16, !dbg !22005
  br i1 %i.i, label %.epil.preheader, label %.new, !dbg !22005

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.h, 4611686018427387900, !dbg !22005
  br label %bb.c, !dbg !22005

bb.c:                                             ; preds = %bb.c, %.new
  %i.j = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.ag, %bb.c ], !dbg !22006 ; 5 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.ah, %bb.c ], !dbg !22010 ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.c ]
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !22006
  %.val16.i = load i32, ptr %i.k, align 4, !dbg !22011, !noalias !22012, !noundef !12
  %i.l = sext i32 %.val16.i to i64, !dbg !22015
  %i.m = mul nsw i64 %i.l, 86400000, !dbg !22015
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.j, !dbg !22025
  store i64 %i.m, ptr %i.n, align 8, !dbg !22032, !noalias !22035
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !22006
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4, !dbg !22006
  %.val16.i.1 = load i32, ptr %i.p, align 4, !dbg !22011, !noalias !22012, !noundef !12
  %i.q = sext i32 %.val16.i.1 to i64, !dbg !22015
  %i.r = mul nsw i64 %i.q, 86400000, !dbg !22015
  %i.s = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.j, !dbg !22025
  %i.t = getelementptr i8, ptr %i.s, i64 8, !dbg !22025
  store i64 %i.r, ptr %i.t, align 8, !dbg !22032, !noalias !22035
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !22006
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !22006
  %.val16.i.2 = load i32, ptr %i.v, align 4, !dbg !22011, !noalias !22012, !noundef !12
  %i.w = sext i32 %.val16.i.2 to i64, !dbg !22015
  %i.x = mul nsw i64 %i.w, 86400000, !dbg !22015
  %i.y = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.j, !dbg !22025
  %i.z = getelementptr i8, ptr %i.y, i64 16, !dbg !22025
  store i64 %i.x, ptr %i.z, align 8, !dbg !22032, !noalias !22035
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !22006
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 12, !dbg !22006
  %.val16.i.3 = load i32, ptr %i.ab, align 4, !dbg !22011, !noalias !22012, !noundef !12
  %i.ac = sext i32 %.val16.i.3 to i64, !dbg !22015
  %i.ad = mul nsw i64 %i.ac, 86400000, !dbg !22015
  %i.ae = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.j, !dbg !22025
  %i.af = getelementptr i8, ptr %i.ae, i64 24, !dbg !22025
  store i64 %i.ad, ptr %i.af, align 8, !dbg !22032, !noalias !22035
  %i.ag = add i64 %i.j, 4, !dbg !22042            ; 3 uses
  %i.ah = add nuw i64 %.sroa.01.0.i, 4, !dbg !22045 ; 2 uses
  %niter.next.3 = add i64 %niter, 4, !dbg !22048  ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !22048
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRlxuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarylNCNvNtNtCslFlrwjHoTci_14polars_compute4cast12primitive_to16date32_to_date640xE0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB50_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB3j_.exit.loopexit.unr-lcssa, label %bb.c, !dbg !22048

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRlxuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarylNCNvNtNtCslFlrwjHoTci_14polars_compute4cast12primitive_to16date32_to_date640xE0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB50_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB3j_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !22048
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRlxuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarylNCNvNtNtCslFlrwjHoTci_14polars_compute4cast12primitive_to16date32_to_date640xE0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB50_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB3j_.exit, label %.epil.preheader, !dbg !22048

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRlxuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarylNCNvNtNtCslFlrwjHoTci_14polars_compute4cast12primitive_to16date32_to_date640xE0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB50_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB3j_.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.ag, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRlxuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarylNCNvNtNtCslFlrwjHoTci_14polars_compute4cast12primitive_to16date32_to_date640xE0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB50_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB3j_.exit.loopexit.unr-lcssa ]
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.ah, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRlxuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarylNCNvNtNtCslFlrwjHoTci_14polars_compute4cast12primitive_to16date32_to_date640xE0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB50_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB3j_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0, !dbg !22048
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !22048
  br label %bb.d, !dbg !22048

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %i.ai = phi i64 [ %.epil.init, %.epil.preheader ], [ %i.an, %bb.d ], !dbg !22006 ; 2 uses
  %.sroa.01.0.i.epil = phi i64 [ %.sroa.01.0.i.epil.init, %.epil.preheader ], [ %i.ao, %bb.d ], !dbg !22010 ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i.epil, !dbg !22006
  %.val16.i.epil = load i32, ptr %i.aj, align 4, !dbg !22011, !noalias !22012, !noundef !12
  %i.ak = sext i32 %.val16.i.epil to i64, !dbg !22015
  %i.al = mul nsw i64 %i.ak, 86400000, !dbg !22015
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ai, !dbg !22025
  store i64 %i.al, ptr %i.am, align 8, !dbg !22032, !noalias !22035
  %i.an = add i64 %i.ai, 1, !dbg !22042           ; 2 uses
  %i.ao = add nuw i64 %.sroa.01.0.i.epil, 1, !dbg !22045
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !22048 ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !22048
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRlxuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarylNCNvNtNtCslFlrwjHoTci_14polars_compute4cast12primitive_to16date32_to_date640xE0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB50_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB3j_.exit, label %bb.d, !dbg !22048, !llvm.loop !22049

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRlxuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarylNCNvNtNtCslFlrwjHoTci_14polars_compute4cast12primitive_to16date32_to_date640xE0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB50_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB3j_.exit: ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRlxuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarylNCNvNtNtCslFlrwjHoTci_14polars_compute4cast12primitive_to16date32_to_date640xE0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB50_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB3j_.exit.loopexit.unr-lcssa, %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.ag, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRlxuNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarylNCNvNtNtCslFlrwjHoTci_14polars_compute4cast12primitive_to16date32_to_date640xE0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB50_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB3j_.exit.loopexit.unr-lcssa ], [ %i.an, %bb.d ], !dbg !22050
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !22050, !noalias !22012
  ret void, !dbg !22059
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarylNCNvNtNtCslFlrwjHoTci_14polars_compute4cast12primitive_to19time32ms_to_time32s0lE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3G_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4T_3VeclE14extend_trustedBN_E0E0EB2t_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !22060 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !22061, !nonnull !12, !noundef !12 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22061
  %i.c = load ptr, ptr %i.b, align 8, !dbg !22061, !nonnull !12, !noundef !12 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !22062 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22062
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !22062 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !22062
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !22062 ; 5 uses
  %.sroa.7.0.copyload2 = ptrtoaddr ptr %.sroa.7.0.copyload to i64, !dbg !22065
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !22065
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRlluNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarylNCNvNtNtCslFlrwjHoTci_14polars_compute4cast12primitive_to19time32ms_to_time32s0lE0NCINvNvBS_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB53_3VeclE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB3j_.exit, label %bb.b, !dbg !22072

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !22073
  %i.f = ptrtoint ptr %i.a to i64, !dbg !22073    ; 2 uses
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !22073      ; 3 uses
  %i.h = lshr i64 %i.g, 2, !dbg !22073            ; 4 uses
  %min.iters.check = icmp ult i64 %i.g, 48, !dbg !22085
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !22085

vector.memcheck:                                  ; preds = %bb.b
  %i.i = shl i64 %.sroa.5.0.copyload, 2, !dbg !22085
  %i.j = add i64 %i.i, %.sroa.7.0.copyload2, !dbg !22085
  %i.k = sub i64 %i.f, %i.j, !dbg !22085
  %diff.check = icmp ugt i64 %i.k, -32, !dbg !22085
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph, !dbg !22086

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 4611686018427387896      ; 4 uses
  %i.l = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.m = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !22086

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !22086 ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index, !dbg !22087 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !22091
  %wide.load = load <4 x i32>, ptr %i.n, align 4, !dbg !22091, !noalias !22092
  %wide.load3 = load <4 x i32>, ptr %i.o, align 4, !dbg !22091, !noalias !22092
  %i.p = sdiv <4 x i32> %wide.load, splat (i32 1000), !dbg !22095
  %i.q = sdiv <4 x i32> %wide.load3, splat (i32 1000), !dbg !22095
  %i.r = getelementptr [4 x i8], ptr %i.m, i64 %index, !dbg !22103 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16, !dbg !22110
  store <4 x i32> %i.p, ptr %i.r, align 4, !dbg !22110, !noalias !22113
  store <4 x i32> %i.q, ptr %i.s, align 4, !dbg !22110, !noalias !22113
  %index.next = add nuw i64 %index, 8, !dbg !22086 ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec, !dbg !22120
  br i1 %i.t, label %middle.block, label %vector.body, !dbg !22120, !llvm.loop !22121

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec, !dbg !22120
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRlluNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarylNCNvNtNtCslFlrwjHoTci_14polars_compute4cast12primitive_to19time32ms_to_time32s0lE0NCINvNvBS_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB53_3VeclE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB3j_.exit, label %scalar.ph.preheader, !dbg !22120

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.l, %middle.block ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.sroa.01.0.i.ph, 1, !dbg !22120
  %i.u = and i64 %i.g, 4, !dbg !22120
  %lcmp.mod.not = icmp eq i64 %i.u, 0, !dbg !22120
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !22120

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i.ph, !dbg !22087
  %.val16.i.prol = load i32, ptr %i.v, align 4, !dbg !22091, !noalias !22092, !noundef !12
  %i.w = sdiv i32 %.val16.i.prol, 1000, !dbg !22095
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %.ph, !dbg !22103
  store i32 %i.w, ptr %i.x, align 4, !dbg !22110, !noalias !22113
  %i.y = add i64 %.ph, 1, !dbg !22122             ; 2 uses
  %i.z = or disjoint i64 %.sroa.01.0.i.ph, 1, !dbg !22125
  br label %scalar.ph.prol.loopexit, !dbg !22120

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.y, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.y, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.z, %scalar.ph.prol ]
  %i.aa = icmp eq i64 %i.h, %.neg, !dbg !22120
  br i1 %i.aa, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRlluNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarylNCNvNtNtCslFlrwjHoTci_14polars_compute4cast12primitive_to19time32ms_to_time32s0lE0NCINvNvBS_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB53_3VeclE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB3j_.exit, label %scalar.ph, !dbg !22120

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ab = phi i64 [ %i.ak, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !22087 ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.al, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !22086 ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !22087
  %.val16.i = load i32, ptr %i.ac, align 4, !dbg !22091, !noalias !22092, !noundef !12
  %i.ad = sdiv i32 %.val16.i, 1000, !dbg !22095
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab, !dbg !22103
  store i32 %i.ad, ptr %i.ae, align 4, !dbg !22110, !noalias !22113
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !22087
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4, !dbg !22087
  %.val16.i.1 = load i32, ptr %i.ag, align 4, !dbg !22091, !noalias !22092, !noundef !12
  %i.ah = sdiv i32 %.val16.i.1, 1000, !dbg !22095
  %i.ai = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab, !dbg !22103
  %i.aj = getelementptr i8, ptr %i.ai, i64 4, !dbg !22103
  store i32 %i.ah, ptr %i.aj, align 4, !dbg !22110, !noalias !22113
  %i.ak = add i64 %i.ab, 2, !dbg !22122           ; 2 uses
  %i.al = add nuw i64 %.sroa.01.0.i, 2, !dbg !22125 ; 2 uses
  %i.am = icmp eq i64 %i.al, %i.h, !dbg !22120
  br i1 %i.am, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRlluNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarylNCNvNtNtCslFlrwjHoTci_14polars_compute4cast12primitive_to19time32ms_to_time32s0lE0NCINvNvBS_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB53_3VeclE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB3j_.exit, label %scalar.ph, !dbg !22120, !llvm.loop !22128

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRlluNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarylNCNvNtNtCslFlrwjHoTci_14polars_compute4cast12primitive_to19time32ms_to_time32s0lE0NCINvNvBS_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB53_3VeclE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB3j_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.l, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ak, %scalar.ph ], !dbg !22129
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !22129, !noalias !22092
  ret void, !dbg !22138
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarylNvYlINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveNtNtCs2mZqlW55729_12polars_utils7float164pf16E3as_B3c_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB47_8for_each4callB3c_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5n_3VecB3c_E14extend_trustedBN_E0E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !22139 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !22140, !nonnull !12, !noundef !12 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22140
  %i.c = load ptr, ptr %i.b, align 8, !dbg !22140, !nonnull !12, !noundef !12 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !22141 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22141
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !22141 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !22141
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !22141
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !22144
  br i1 %i.d, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRlNtNtCs2mZqlW55729_12polars_utils7float164pf16uNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute5arity5unarylNvYlINtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitiveB2d_E3as_B2d_E0NCINvNvBS_8for_each4callB2d_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5A_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2X_EE0E0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.b, !dbg !22151

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64, !dbg !22152
  %i.f = ptrtoint ptr %i.a to i64, !dbg !22152
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !22152
  %i.h = lshr exact i64 %i.g, 2, !dbg !22152
  br label %bb.c, !dbg !22164

bb.c:                                             ; preds = %bb.p, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.bm, %bb.p ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.bn, %bb.p ], !dbg !22165 ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !22166
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22170), !dbg !22173
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22174), !dbg !22177
  %i.j = load i32, ptr %i.i, align 4, !dbg !22180, !alias.scope !22183, !noalias !22184, !noundef !12
  %i.k = sitofp i32 %i.j to float, !dbg !22188    ; 2 uses
  %i.l = load atomic i64, ptr @_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache5CACHE monotonic, align 8, !dbg !22200, !noalias !22213 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0, !dbg !22214
  br i1 %i.m, label %.split.i.i.i.i.i.i, label %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i.i.i.i.i, !dbg !22214, !prof !903

.split.i.i.i.i.i.i:                               ; preds = %bb.c
  %i.n = invoke noundef i128 @_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache21detect_and_initialize()
          to label %.noexc.i unwind label %bb.q, !dbg !22215, !noalias !22218

.noexc.i:                                         ; preds = %.split.i.i.i.i.i.i
  %i.o = and i128 %i.n, 36028797018963968, !dbg !22219
  %.not1.i.i.i.i.i.i = icmp eq i128 %i.o, 0, !dbg !22219
  br i1 %.not1.i.i.i.i.i.i, label %bb.d, label %bb.o, !dbg !22222

_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.p = and i64 %i.l, 36028797018963968, !dbg !22223
  %.not.i.i.i.i.i.i = icmp eq i64 %i.p, 0, !dbg !22223
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.o, !dbg !22222

bb.d:                                             ; preds = %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i.i.i.i.i, %.noexc.i
  %i.q = bitcast float %i.k to i32, !dbg !22224   ; 5 uses
  %i.r = and i32 %i.q, -2147483648, !dbg !22226   ; 2 uses
  %i.s = and i32 %i.q, 2139095040, !dbg !22227    ; 6 uses
  %i.t = and i32 %i.q, 8388607, !dbg !22228       ; 4 uses
  %i.u = icmp eq i32 %i.s, 2139095040, !dbg !22229
  br i1 %i.u, label %bb.e, label %bb.f, !dbg !22229

bb.e:                                             ; preds = %bb.d
  %i.v = icmp eq i32 %i.t, 0, !dbg !22230
  %..i.i.i.i.i.i.i = select i1 %i.v, i32 0, i32 512, !dbg !22231
  %i.w = lshr exact i32 %i.r, 16, !dbg !22232
  %i.x = lshr i32 %i.t, 13, !dbg !22233
  %i.y = or disjoint i32 %i.x, %i.w, !dbg !22232
  %i.z = or i32 %i.y, %..i.i.i.i.i.i.i, !dbg !22234
  %i.aa = trunc nuw i32 %i.z to i16, !dbg !22234
  %i.ab = or disjoint i16 %i.aa, 31744, !dbg !22234
  br label %bb.p, !dbg !22235

bb.f:                                             ; preds = %bb.d
  %i.ac = lshr exact i32 %i.r, 16, !dbg !22236    ; 4 uses
  %i.ad = lshr exact i32 %i.s, 23, !dbg !22237    ; 2 uses
  %i.ae = icmp samesign ugt i32 %i.s, 1191182336, !dbg !22238
  br i1 %i.ae, label %bb.h, label %bb.g, !dbg !22238

bb.g:                                             ; preds = %bb.f
  %i.af = icmp samesign ult i32 %i.s, 947912704, !dbg !22239
  br i1 %i.af, label %bb.j, label %bb.i, !dbg !22239

bb.h:                                             ; preds = %bb.f
  %i.ag = trunc nuw i32 %i.ac to i16, !dbg !22240
  %i.ah = or disjoint i16 %i.ag, 31744, !dbg !22240
  br label %bb.p, !dbg !22241

bb.i:                                             ; preds = %bb.g
  %i.ai = lshr exact i32 %i.s, 13, !dbg !22242
  %i.aj = add nuw nsw i32 %i.ai, 16384, !dbg !22242
  %i.ak = lshr i32 %i.t, 13, !dbg !22243
  %i.al = and i32 %i.q, 4096, !dbg !22244
  %i.am = icmp ne i32 %i.al, 0, !dbg !22244
  %i.an = and i32 %i.q, 12287
  %i.ao = icmp ne i32 %i.an, 0
  %or.cond.not.i.i.i.i.i.i.i = and i1 %i.am, %i.ao, !dbg !22245
  %i.ap = or disjoint i32 %i.aj, %i.ak, !dbg !22245
  %i.aq = or i32 %i.ap, %i.ac, !dbg !22245
  %i.ar = trunc i32 %i.aq to i16, !dbg !22245
  %i.as = zext i1 %or.cond.not.i.i.i.i.i.i.i to i16, !dbg !22244
  %spec.select7.i.i.i.i.i.i.i = add i16 %i.ar, %i.as, !dbg !22244
  br label %bb.p, !dbg !22244

bb.j:                                             ; preds = %bb.g
  %i.at = icmp samesign ult i32 %i.s, 855638016, !dbg !22246
  br i1 %i.at, label %bb.l, label %bb.k, !dbg !22246

bb.k:                                             ; preds = %bb.j
  %i.au = sub nsw i32 126, %i.ad, !dbg !22246
  %i.av = or disjoint i32 %i.t, 8388608, !dbg !22247 ; 3 uses
  %i.aw = lshr i32 %i.av, %i.au, !dbg !22248      ; 2 uses
  %i.ax = sub nsw i32 29, %i.ad, !dbg !22249
  %i.ay = and i32 %i.ax, 31, !dbg !22250          ; 2 uses
  %i.az = shl nuw i32 1, %i.ay, !dbg !22250
  %i.ba = and i32 %i.az, %i.av, !dbg !22251
  %i.bb = icmp eq i32 %i.ba, 0, !dbg !22251
  br i1 %i.bb, label %bb.n, label %bb.m, !dbg !22251

bb.l:                                             ; preds = %bb.j
end_hunk_0
