Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_parquet-d174a6a0d1de3d93.polars_parquet.b72545e931dce2ac-cgu.15?download=true
inline.NumInlined: 2995
inline.NumDeleted: 2017
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 47
loop-unroll.NumUnrolled: 74
begin_hunk_0_@_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterxENCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize10create_map0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2F_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3S_3VeclE14extend_trustedBN_E0E0EB1z_:bb.a
  %i.aa = icmp ugt i64 %i.z, -4, !dbg !19306
  br i1 %i.aa, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRxluNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize10create_map0NCINvNvBS_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB42_3VeclE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2p_.exit, label %scalar.ph, !dbg !19306

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ab = phi i64 [ %i.au, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !19301 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.av, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !19300 ; 5 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !19301
  %.val16.i = load i64, ptr %i.ac, align 8, !dbg !19302, !noalias !19284, !noundef !1324
  %i.ad = trunc i64 %.val16.i to i32, !dbg !19303
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab, !dbg !19304
  store i32 %i.ad, ptr %i.ae, align 4, !dbg !19305, !noalias !19288
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !19301
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !19301
  %.val16.i.1 = load i64, ptr %i.ag, align 8, !dbg !19302, !noalias !19284, !noundef !1324
  %i.ah = trunc i64 %.val16.i.1 to i32, !dbg !19303
  %i.ai = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab, !dbg !19304
  %i.aj = getelementptr i8, ptr %i.ai, i64 4, !dbg !19304
  store i32 %i.ah, ptr %i.aj, align 4, !dbg !19305, !noalias !19288
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !19301
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16, !dbg !19301
  %.val16.i.2 = load i64, ptr %i.al, align 8, !dbg !19302, !noalias !19284, !noundef !1324
  %i.am = trunc i64 %.val16.i.2 to i32, !dbg !19303
  %i.an = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab, !dbg !19304
  %i.ao = getelementptr i8, ptr %i.an, i64 8, !dbg !19304
  store i32 %i.am, ptr %i.ao, align 4, !dbg !19305, !noalias !19288
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !19301
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24, !dbg !19301
  %.val16.i.3 = load i64, ptr %i.aq, align 8, !dbg !19302, !noalias !19284, !noundef !1324
  %i.ar = trunc i64 %.val16.i.3 to i32, !dbg !19303
  %i.as = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab, !dbg !19304
  %i.at = getelementptr i8, ptr %i.as, i64 12, !dbg !19304
  store i32 %i.ar, ptr %i.at, align 4, !dbg !19305, !noalias !19288
  %i.au = add i64 %i.ab, 4, !dbg !19307           ; 2 uses
  %i.av = add nuw i64 %.sroa.01.0.i, 4, !dbg !19308 ; 2 uses
  %i.aw = icmp eq i64 %i.av, %i.e, !dbg !19306
  br i1 %i.aw, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRxluNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize10create_map0NCINvNvBS_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB42_3VeclE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2p_.exit, label %scalar.ph, !dbg !19306, !llvm.loop !19277

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRxluNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize10create_map0NCINvNvBS_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB42_3VeclE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2p_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.k, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.au, %scalar.ph ], !dbg !19309
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !19309, !noalias !19284
  ret void, !dbg !19310
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterxENCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize11create_list0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2G_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3T_3VeclE14extend_trustedBN_E0E0EB1z_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #12 personality ptr @rust_eh_personality !dbg !19311 !guid !19368 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !19381 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !19381
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !19381 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !19381
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !19381 ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !19382
  %i.a = icmp eq ptr %0, %1, !dbg !19383
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRxluNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize11create_list0NCINvNvBS_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB43_3VeclE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2p_.exit, label %bb.b, !dbg !19384

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !19385
  %i.c = ptrtoint ptr %0 to i64, !dbg !19385
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !19385      ; 3 uses
  %i.e = lshr i64 %i.d, 3, !dbg !19385            ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 112, !dbg !19386
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !19386

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 2, !dbg !19386 ; 2 uses
  %i.g = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f, !dbg !19386
  %i.h = lshr exact i64 %i.d, 1, !dbg !19386
  %i.i = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f, !dbg !19386
  %i.j = getelementptr i8, ptr %i.i, i64 %i.h, !dbg !19386
  %bound0 = icmp ult ptr %i.g, %1, !dbg !19386
  %bound1 = icmp ult ptr %0, %i.j, !dbg !19386
  %found.conflict = and i1 %bound0, %bound1, !dbg !19386
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph, !dbg !19387

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 2305843009213693948      ; 4 uses
  %i.k = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.l = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !19387

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !19387 ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index, !dbg !19388 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !19389
  %wide.load = load <2 x i64>, ptr %i.m, align 8, !dbg !19389, !alias.scope !19370, !noalias !19371
  %wide.load4 = load <2 x i64>, ptr %i.n, align 8, !dbg !19389, !alias.scope !19370, !noalias !19371
  %i.o = trunc <2 x i64> %wide.load to <2 x i32>, !dbg !19390
  %i.p = trunc <2 x i64> %wide.load4 to <2 x i32>, !dbg !19390
  %i.q = getelementptr [4 x i8], ptr %i.l, i64 %index, !dbg !19391 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !19392
  store <2 x i32> %i.o, ptr %i.q, align 4, !dbg !19392, !alias.scope !19373, !noalias !19374
  store <2 x i32> %i.p, ptr %i.r, align 4, !dbg !19392, !alias.scope !19373, !noalias !19374
  %index.next = add nuw i64 %index, 4, !dbg !19387 ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec, !dbg !19393
  br i1 %i.s, label %middle.block, label %vector.body, !dbg !19393, !llvm.loop !19358

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !19393
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRxluNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize11create_list0NCINvNvBS_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB43_3VeclE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2p_.exit, label %scalar.ph.preheader, !dbg !19393

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.k, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.e, 3, !dbg !19393        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !19393
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !19393

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.t = phi i64 [ %i.x, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ], !dbg !19388 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.y, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], !dbg !19387 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i.prol, !dbg !19388
  %.val16.i.prol = load i64, ptr %i.u, align 8, !dbg !19389, !noalias !19371, !noundef !1324
  %i.v = trunc i64 %.val16.i.prol to i32, !dbg !19390
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.t, !dbg !19391
  store i32 %i.v, ptr %i.w, align 4, !dbg !19392, !noalias !19375
  %i.x = add i64 %i.t, 1, !dbg !19394             ; 3 uses
  %i.y = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !19395 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !19393 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !19393
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !19393, !llvm.loop !19363

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.x, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.x, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.y, %scalar.ph.prol ]
  %i.z = sub nsw i64 %.sroa.01.0.i.ph, %i.e, !dbg !19393
  %i.aa = icmp ugt i64 %i.z, -4, !dbg !19393
  br i1 %i.aa, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRxluNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize11create_list0NCINvNvBS_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB43_3VeclE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2p_.exit, label %scalar.ph, !dbg !19393

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ab = phi i64 [ %i.au, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !19388 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.av, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !19387 ; 5 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !19388
  %.val16.i = load i64, ptr %i.ac, align 8, !dbg !19389, !noalias !19371, !noundef !1324
  %i.ad = trunc i64 %.val16.i to i32, !dbg !19390
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab, !dbg !19391
  store i32 %i.ad, ptr %i.ae, align 4, !dbg !19392, !noalias !19375
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !19388
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !19388
  %.val16.i.1 = load i64, ptr %i.ag, align 8, !dbg !19389, !noalias !19371, !noundef !1324
  %i.ah = trunc i64 %.val16.i.1 to i32, !dbg !19390
  %i.ai = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab, !dbg !19391
  %i.aj = getelementptr i8, ptr %i.ai, i64 4, !dbg !19391
  store i32 %i.ah, ptr %i.aj, align 4, !dbg !19392, !noalias !19375
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !19388
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16, !dbg !19388
  %.val16.i.2 = load i64, ptr %i.al, align 8, !dbg !19389, !noalias !19371, !noundef !1324
  %i.am = trunc i64 %.val16.i.2 to i32, !dbg !19390
  %i.an = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab, !dbg !19391
  %i.ao = getelementptr i8, ptr %i.an, i64 8, !dbg !19391
  store i32 %i.am, ptr %i.ao, align 4, !dbg !19392, !noalias !19375
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !19388
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24, !dbg !19388
  %.val16.i.3 = load i64, ptr %i.aq, align 8, !dbg !19389, !noalias !19371, !noundef !1324
  %i.ar = trunc i64 %.val16.i.3 to i32, !dbg !19390
  %i.as = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab, !dbg !19391
  %i.at = getelementptr i8, ptr %i.as, i64 12, !dbg !19391
  store i32 %i.ar, ptr %i.at, align 4, !dbg !19392, !noalias !19375
  %i.au = add i64 %i.ab, 4, !dbg !19394           ; 2 uses
  %i.av = add nuw i64 %.sroa.01.0.i, 4, !dbg !19395 ; 2 uses
  %i.aw = icmp eq i64 %i.av, %i.e, !dbg !19393
  br i1 %i.aw, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRxluNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize11create_list0NCINvNvBS_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB43_3VeclE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2p_.exit, label %scalar.ph, !dbg !19393, !llvm.loop !19364

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRxluNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize11create_list0NCINvNvBS_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB43_3VeclE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2p_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.k, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.au, %scalar.ph ], !dbg !19396
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !19396, !noalias !19371
  ret void, !dbg !19397
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterxENCNvXs0_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize6binaryNtB1x_13BinaryDecoderNtNtB1z_5utils7Decoder14extend_decoded0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3D_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4Q_3VecxE14extend_trustedBN_E0E0EB1F_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #10 personality ptr @rust_eh_personality !dbg !19398 !guid !19458 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !19479, !nonnull !1324, !noundef !1324 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !19479
  %i.c = load ptr, ptr %i.b, align 8, !dbg !19479, !nonnull !1324, !noundef !1324 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !19480
  %i.e = load ptr, ptr %i.d, align 8, !dbg !19480, !nonnull !1324, !align !1347, !noundef !1324 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !19480
  %i.g = load ptr, ptr %i.f, align 8, !dbg !19480, !nonnull !1324, !align !1347, !noundef !1324 ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !19481 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !19481
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !19481 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !19481
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !19481 ; 6 uses
  %i.h = icmp eq ptr %i.a, %i.c, !dbg !19482
  br i1 %i.h, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRxxuNCNvXs0_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize6binaryNtB2n_13BinaryDecoderNtNtB2p_5utils7Decoder14extend_decoded0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB50_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2v_.exit, label %bb.b, !dbg !19483

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %i.c to i64, !dbg !19484
  %i.j = ptrtoint ptr %i.a to i64, !dbg !19484
  %i.k = sub nuw i64 %i.i, %i.j, !dbg !19484      ; 4 uses
  %i.l = lshr i64 %i.k, 3, !dbg !19484            ; 4 uses
  %min.iters.check = icmp ult i64 %i.k, 128, !dbg !19485
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !19485

vector.memcheck:                                  ; preds = %bb.b
  %i.m = shl i64 %.sroa.5.0.copyload, 3, !dbg !19485 ; 2 uses
  %2 = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.m, !dbg !19485 ; 3 uses
  %i.n = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.m, !dbg !19485
  %i.o = getelementptr i8, ptr %i.n, i64 %i.k, !dbg !19485 ; 3 uses
  %i.p = getelementptr i8, ptr %i.e, i64 8, !dbg !19485
  %3 = getelementptr i8, ptr %i.g, i64 8, !dbg !19485
  %bound0.a = icmp ult ptr %2, %i.c, !dbg !19485
  %bound1 = icmp ult ptr %i.a, %i.o, !dbg !19485
  %found.conflict = and i1 %bound0.a, %bound1, !dbg !19485
  %bound013 = icmp ult ptr %2, %i.p, !dbg !19485
  %bound114 = icmp ult ptr %i.e, %i.o, !dbg !19485
  %found.conflict15 = and i1 %bound013, %bound114, !dbg !19485
  %conflict.rdx = or i1 %found.conflict, %found.conflict15, !dbg !19485
  %bound016 = icmp ult ptr %2, %3, !dbg !19485
  %bound117 = icmp ult ptr %i.g, %i.o, !dbg !19485
  %found.conflict18 = and i1 %bound016, %bound117, !dbg !19485
  %conflict.rdx19 = or i1 %conflict.rdx, %found.conflict18, !dbg !19485
  br i1 %conflict.rdx19, label %scalar.ph.preheader, label %vector.ph, !dbg !19486

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.l, 2305843009213693948      ; 4 uses
  %i.q = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.r = load i64, ptr %i.e, align 8, !dbg !19487, !alias.scope !19460, !noalias !19461
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.r, i64 0, !dbg !19488
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !19488 ; 2 uses
  %i.s = load i64, ptr %i.g, align 8, !dbg !19488, !alias.scope !19465, !noalias !19461
  %broadcast.splatinsert21 = insertelement <2 x i64> poison, i64 %i.s, i64 0, !dbg !19486
  %broadcast.splat22 = shufflevector <2 x i64> %broadcast.splatinsert21, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !19486 ; 2 uses
  %invariant.op = sub <2 x i64> %broadcast.splat, %broadcast.splat22, !dbg !19486
  %invariant.op25 = sub <2 x i64> %broadcast.splat, %broadcast.splat22, !dbg !19486
  %i.t = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !19486

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !19486 ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index, !dbg !19489 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !19490
  %wide.load = load <2 x i64>, ptr %i.u, align 8, !dbg !19490, !alias.scope !19466, !noalias !19467
  %wide.load20 = load <2 x i64>, ptr %i.v, align 8, !dbg !19490, !alias.scope !19466, !noalias !19467
  %.reass = add <2 x i64> %wide.load, %invariant.op
  %.reass26 = add <2 x i64> %wide.load20, %invariant.op25
  %i.w = getelementptr [8 x i8], ptr %i.t, i64 %index, !dbg !19491 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !19492
  store <2 x i64> %.reass, ptr %i.w, align 8, !dbg !19492, !alias.scope !19468, !noalias !19469
  store <2 x i64> %.reass26, ptr %i.x, align 8, !dbg !19492, !alias.scope !19468, !noalias !19469
  %index.next = add nuw i64 %index, 4, !dbg !19486 ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec, !dbg !19493
  br i1 %i.y, label %middle.block, label %vector.body, !dbg !19493, !llvm.loop !19445

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec, !dbg !19493
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRxxuNCNvXs0_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize6binaryNtB2n_13BinaryDecoderNtNtB2p_5utils7Decoder14extend_decoded0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB50_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2v_.exit, label %scalar.ph.preheader, !dbg !19493

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.q, %middle.block ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.sroa.01.0.i.ph, 1, !dbg !19493
  %i.z = and i64 %i.k, 8, !dbg !19493
  %lcmp.mod.not = icmp eq i64 %i.z, 0, !dbg !19493
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !19493

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i.ph, !dbg !19489
  %.val16.i.prol = load i64, ptr %i.aa, align 8, !dbg !19490, !noalias !19467, !noundef !1324
  %i.ab = load i64, ptr %i.e, align 8, !dbg !19487, !noalias !19461, !noundef !1324
  %i.ac = add i64 %i.ab, %.val16.i.prol, !dbg !19494
  %i.ad = load i64, ptr %i.g, align 8, !dbg !19488, !noalias !19461, !noundef !1324
  %i.ae = sub i64 %i.ac, %i.ad, !dbg !19495
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %.ph, !dbg !19491
  store i64 %i.ae, ptr %i.af, align 8, !dbg !19492, !noalias !19473
  %i.ag = add i64 %.ph, 1, !dbg !19496            ; 2 uses
  %i.ah = or disjoint i64 %.sroa.01.0.i.ph, 1, !dbg !19497
  br label %scalar.ph.prol.loopexit, !dbg !19493

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ag, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ag, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.ah, %scalar.ph.prol ]
  %i.ai = icmp eq i64 %i.l, %.neg, !dbg !19493
  br i1 %i.ai, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRxxuNCNvXs0_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize6binaryNtB2n_13BinaryDecoderNtNtB2p_5utils7Decoder14extend_decoded0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB50_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2v_.exit, label %scalar.ph, !dbg !19493

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.aj = phi i64 [ %i.ay, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !19489 ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.az, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !19486 ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !19489
  %.val16.i = load i64, ptr %i.ak, align 8, !dbg !19490, !noalias !19467, !noundef !1324
  %i.al = load i64, ptr %i.e, align 8, !dbg !19487, !noalias !19461, !noundef !1324
  %i.am = add i64 %i.al, %.val16.i, !dbg !19494
  %i.an = load i64, ptr %i.g, align 8, !dbg !19488, !noalias !19461, !noundef !1324
  %i.ao = sub i64 %i.am, %i.an, !dbg !19495
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.aj, !dbg !19491
  store i64 %i.ao, ptr %i.ap, align 8, !dbg !19492, !noalias !19473
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !19489
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8, !dbg !19489
  %.val16.i.1 = load i64, ptr %i.ar, align 8, !dbg !19490, !noalias !19467, !noundef !1324
  %i.as = load i64, ptr %i.e, align 8, !dbg !19487, !noalias !19461, !noundef !1324
  %i.at = add i64 %i.as, %.val16.i.1, !dbg !19494
  %i.au = load i64, ptr %i.g, align 8, !dbg !19488, !noalias !19461, !noundef !1324
  %i.av = sub i64 %i.at, %i.au, !dbg !19495
  %i.aw = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.aj, !dbg !19491
  %i.ax = getelementptr i8, ptr %i.aw, i64 8, !dbg !19491
  store i64 %i.av, ptr %i.ax, align 8, !dbg !19492, !noalias !19473
  %i.ay = add i64 %i.aj, 2, !dbg !19496           ; 2 uses
  %i.az = add nuw i64 %.sroa.01.0.i, 2, !dbg !19497 ; 2 uses
  %i.ba = icmp eq i64 %i.az, %i.l, !dbg !19493
  br i1 %i.ba, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRxxuNCNvXs0_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize6binaryNtB2n_13BinaryDecoderNtNtB2p_5utils7Decoder14extend_decoded0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB50_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2v_.exit, label %scalar.ph, !dbg !19493, !llvm.loop !19454

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRxxuNCNvXs0_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize6binaryNtB2n_13BinaryDecoderNtNtB2p_5utils7Decoder14extend_decoded0NCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB50_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2v_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.q, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ay, %scalar.ph ], !dbg !19498
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !19498, !noalias !19467
  ret void, !dbg !19499
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IteryENCINvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write10dictionary45min_max_integer_encode_as_dictionary_optionalNtNtNtBc_3num5error15TryFromIntErroryEs_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3T_8for_each4callmNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB56_3VecmE14extend_trustedBN_E0E0EB1A_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !19500 !guid !19601 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !19624, !nonnull !1324, !noundef !1324 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !19624
  %i.c = load ptr, ptr %i.b, align 8, !dbg !19624, !nonnull !1324, !noundef !1324 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !19625
  %.sroa.01.0.copyload = load ptr, ptr %i.d, align 8, !dbg !19625 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !19625
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !19625 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !19626 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !19626
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !19626 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !19626
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !19626
  %i.e = icmp eq ptr %i.a, %i.c, !dbg !19627
  br i1 %i.e, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRymuNCINvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write10dictionary45min_max_integer_encode_as_dictionary_optionalNtNtNtBb_3num5error15TryFromIntErroryEs_0NCINvNvBS_8for_each4callmNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5g_3VecmE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2q_.exit, label %bb.b, !dbg !19628

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !19625
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !19625 ; 2 uses
  %i.f = ptrtoint ptr %i.c to i64, !dbg !19629
  %i.g = ptrtoint ptr %i.a to i64, !dbg !19629
  %i.h = sub nuw i64 %i.f, %i.g, !dbg !19629
  %i.i = lshr exact i64 %i.h, 3, !dbg !19629
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.copyload), "nonnull"(ptr %.sroa.4.0.copyload) ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 16
  br label %bb.c, !dbg !19630

bb.c:                                             ; preds = %bb.e, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.aa, %bb.e ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.ab, %bb.e ], !dbg !19631 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19603), !dbg !19632
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19604), !dbg !19633
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19605), !dbg !19634
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19606), !dbg !19634
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19607), !dbg !19634
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19608), !dbg !19635
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19609), !dbg !19635
  %i.l = load i64, ptr %.sroa.01.0.copyload, align 8, !dbg !19636, !alias.scope !19610, !noalias !19611, !noundef !1324 ; 3 uses
  %i.m = load i64, ptr %.sroa.4.0.copyload, align 8, !dbg !19637, !alias.scope !19613, !noalias !19611, !noundef !1324 ; 2 uses
  %.not.i.i.i.i = icmp ugt i64 %i.l, %i.m, !dbg !19636
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.e, !dbg !19638, !prof !1348

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @253, i64 noundef 28, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @255) #44
          to label %.noexc.i unwind label %bb.f, !dbg !19639, !noalias !19614

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !19640 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !dbg !19641, !alias.scope !19615, !noalias !19614, !noundef !1324 ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.l, !dbg !19641
  %i.q = icmp ugt i64 %i.o, %i.m, !dbg !19642
  %spec.select.i.i.i.i = select i1 %i.q, ptr %.sroa.4.0.copyload, ptr %i.n, !dbg !19642
  %.sroa.0.0.i.i.i.i = select i1 %i.p, ptr %.sroa.01.0.copyload, ptr %spec.select.i.i.i.i, !dbg !19642
  %i.r = load i64, ptr %.sroa.0.0.i.i.i.i, align 8, !dbg !19643, !noalias !19616, !noundef !1324
  %i.s = sub i64 %i.r, %i.l, !dbg !19644          ; 2 uses
  %i.t = load ptr, ptr %i.j, align 8, !dbg !19645, !noalias !19611, !nonnull !1324, !noundef !1324
  %i.u = load i64, ptr %i.k, align 8, !dbg !19646, !noalias !19611, !noundef !1324
  %i.v = icmp ult i64 %i.s, %i.u, !dbg !19647
  tail call void @llvm.assume(i1 %i.v), !dbg !19648
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.s, !dbg !19649
  %i.x = load i16, ptr %i.w, align 2, !dbg !19650, !noalias !19611, !noundef !1324
  %i.y = zext i16 %i.x to i32, !dbg !19651
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i, !dbg !19652
  store i32 %i.y, ptr %i.z, align 4, !dbg !19653, !noalias !19618
  %i.aa = add i64 %.val15.i, 1, !dbg !19654       ; 2 uses
  %i.ab = add nuw i64 %.sroa.01.0.i, 1, !dbg !19655 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, %i.i, !dbg !19656
  br i1 %i.ac, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRymuNCINvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write10dictionary45min_max_integer_encode_as_dictionary_optionalNtNtNtBb_3num5error15TryFromIntErroryEs_0NCINvNvBS_8for_each4callmNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5g_3VecmE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2q_.exit, label %bb.c, !dbg !19656

bb.f:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !dbg !19657, !noalias !19614
  resume { ptr, i32 } %i.ad, !dbg !19658

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRymuNCINvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write10dictionary45min_max_integer_encode_as_dictionary_optionalNtNtNtBb_3num5error15TryFromIntErroryEs_0NCINvNvBS_8for_each4callmNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5g_3VecmE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2q_.exit: ; preds = %bb.e, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.aa, %bb.e ], !dbg !19659
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !19659, !noalias !19614
  ret void, !dbg !19660
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IteryENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_plainyxE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvMsg_NtB8_7flattenINtB3G_13FlattenCompatppE9iter_fold7flattenAhj8_uNCINvNvXsi_B3G_B3T_B2R_4fold7flattenINtNtNtBc_5array4iter8IntoIterhKB4C_EuNCINvNvB2R_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6r_3VechE14extend_trustedINtB3G_7FlatMapBX_B4A_B1p_EE0E0E0E0EB1C_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !19661 !guid !19745 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 12 uses
  %i.b = alloca [24 x i8], align 8                ; 12 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !19774
  %i.c = icmp eq ptr %0, %1, !dbg !19775
  br i1 %i.c, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRyAhj8_uNCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write9primitive5basic12encode_plainyxE0NCINvNvMsg_NtB1K_7flattenINtB3V_13FlattenCompatppE9iter_fold7flattenB2d_uNCINvNvXsi_B3V_B49_BS_4fold7flattenINtNtNtBb_5array4iter8IntoIterhKB2f_EuNCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6E_3VechE14extend_trustedINtB3V_7FlatMapBF_B2d_B2j_EE0E0E0E0E0EB2w_.exit, label %bb.b, !dbg !19776

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %1 to i64, !dbg !19777
  %i.e = ptrtoint ptr %0 to i64, !dbg !19777
end_hunk_0
