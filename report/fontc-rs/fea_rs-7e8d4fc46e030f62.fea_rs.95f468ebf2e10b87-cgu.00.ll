Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fea_rs-7e8d4fc46e030f62.fea_rs.95f468ebf2e10b87-cgu.00?download=true
inline.NumInlined: 3755
inline.NumDeleted: 2219
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenE14extend_trustedINtNtB6_5drain5DrainBG_EEBK_:bb.a
  %i.t = phi i64 [ %i.x, %bb.f ], [ %i.m, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenE7reserveBI_.exit ] ; 3 uses
  %i.u = phi ptr [ %i.v, %bb.f ], [ %i.q, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenE7reserveBI_.exit ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !154)
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 3 uses
  %.sroa.5.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 28
  %.sroa.5.0.copyload7.i.i = load i16, ptr %.sroa.5.0..sroa_idx6.i.i, align 4, !noalias !155 ; 2 uses
  %.not.i.i = icmp eq i16 %.sroa.5.0.copyload7.i.i, -2
  br i1 %.not.i.i, label %_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec5drain5DrainNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvNvB1z_8for_each4callBK_NCINvMsk_B8_INtB8_3VecBK_E14extend_trustedB3_E0E0EBO_.exit.loopexit.i, label %bb.f

bb.f:                                             ; preds = %_RNvXs3_NtNtCsgCecv3eZDcN_5alloc3vec5drainINtB5_5DrainNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextBT_.exit.i.i
  %.sroa.7.0..sroa_idx8.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 30
  %.sroa.7.0.copyload9.i.i = load i16, ptr %.sroa.7.0..sroa_idx8.i.i, align 2, !noalias !155
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.t ; 3 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.w, ptr noundef nonnull align 8 dereferenceable(28) %i.u, i64 28, i1 false), !noalias !156
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 28
  store i16 %.sroa.5.0.copyload7.i.i, ptr %.sroa.413.0..sroa_idx.i.i, align 4, !noalias !157
  %.sroa.514.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 30
  store i16 %.sroa.7.0.copyload9.i.i, ptr %.sroa.514.0..sroa_idx.i.i, align 2, !noalias !157
  %i.x = add i64 %i.t, 1                          ; 2 uses
  %i.y = icmp eq ptr %i.v, %i.r
  br i1 %i.y, label %_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec5drain5DrainNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvNvB1z_8for_each4callBK_NCINvMsk_B8_INtB8_3VecBK_E14extend_trustedB3_E0E0EBO_.exit.loopexit.i, label %_RNvXs3_NtNtCsgCecv3eZDcN_5alloc3vec5drainINtB5_5DrainNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextBT_.exit.i.i

_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec5drain5DrainNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvNvB1z_8for_each4callBK_NCINvMsk_B8_INtB8_3VecBK_E14extend_trustedB3_E0E0EBO_.exit.loopexit.i: ; preds = %bb.f, %_RNvXs3_NtNtCsgCecv3eZDcN_5alloc3vec5drainINtB5_5DrainNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextBT_.exit.i.i
  %.val5.i.ph.i = phi i64 [ %i.t, %_RNvXs3_NtNtCsgCecv3eZDcN_5alloc3vec5drainINtB5_5DrainNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextBT_.exit.i.i ], [ %i.x, %bb.f ]
  store ptr %i.v, ptr %i.a, align 8, !alias.scope !158
  br label %_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec5drain5DrainNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvNvB1z_8for_each4callBK_NCINvMsk_B8_INtB8_3VecBK_E14extend_trustedB3_E0E0EBO_.exit.i

_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec5drain5DrainNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvNvB1z_8for_each4callBK_NCINvMsk_B8_INtB8_3VecBK_E14extend_trustedB3_E0E0EBO_.exit.i: ; preds = %_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec5drain5DrainNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvNvB1z_8for_each4callBK_NCINvMsk_B8_INtB8_3VecBK_E14extend_trustedB3_E0E0EBO_.exit.loopexit.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenE7reserveBI_.exit
  %.val5.i.i = phi i64 [ %i.m, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenE7reserveBI_.exit ], [ %.val5.i.ph.i, %_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec5drain5DrainNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvNvB1z_8for_each4callBK_NCINvMsk_B8_INtB8_3VecBK_E14extend_trustedB3_E0E0EBO_.exit.loopexit.i ]
  store i64 %.val5.i.i, ptr %i.h, align 8, !noalias !156
  call void @_RNvXs5_NtNtCsgCecv3eZDcN_5alloc3vec5drainINtB5_5DrainNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.g:                                             ; preds = %bb.e
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec5drain5DrainNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenEEB1m_.exit: ; preds = %bb.h
  resume { ptr, i32 } %lpad.thr_comm

bb.h:                                             ; preds = %bb.d, %bb.e, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtCsgCecv3eZDcN_5alloc3vec5drainINtB5_5DrainNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec5drain5DrainNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenEEB1m_.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdE16extend_desugaredINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtB1Y_6option8IntoIterRBw_EINtNtB1U_6copied6CopiedINtNtNtB1Y_5slice4iter4IterBG_EENCNvMs0_NtBK_8featuresNtB4g_13ActiveFeature10set_system0EEBM_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.5 = alloca i64, align 8                  ; 4 uses
  %.sroa.7 = alloca i64, align 8                  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.phi.trans.insert72.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.phi.trans.insert75.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.phi.trans.insert77.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdE7reserveBK_.exit, %bb.a
  %.pre.i.i = load ptr, ptr %i.c, align 8, !alias.scope !190
  %i.i = icmp eq ptr %.pre.i.i, null
  br i1 %i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = call { i64, i64 } @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEENtNtNtB8_6traits8iterator8Iterator4nextB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c) ; 2 uses
  %i.k = extractvalue { i64, i64 } %i.j, 0
  %.not3.i.i.peel.i = icmp eq i64 %i.k, -1
  br i1 %.not3.i.i.peel.i, label %bb.d, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterB20_EENCNvMs0_NtB24_8featuresNtB3S_13ActiveFeature10set_system0ENtNtNtB9_6traits8iterator8Iterator4nextB26_.exit

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.c, align 8, !alias.scope !190
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.l = load i64, ptr %1, align 8, !range !14, !alias.scope !191, !noundef !8
  %i.m = trunc nuw i64 %i.l to i1
  br i1 %i.m, label %bb.f, label %.loopexit.i

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %i.d, align 8, !alias.scope !192, !align !15, !noundef !8 ; 2 uses
  store ptr null, ptr %i.d, align 8, !alias.scope !192
  %.not.i.i.i.peel.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.peel.i, label %.loopexit.i, label %.peel.next.i

.peel.next.i:                                     ; preds = %bb.f, %bb.h
  %.sink7.i = phi ptr [ %i.u, %bb.h ], [ %i.n, %bb.f ] ; 2 uses
  %i.o = getelementptr i8, ptr %.sink7.i, i64 8
  %.val.i.i.i.peel.i = load ptr, ptr %i.o, align 8, !noalias !8, !nonnull !8, !noundef !8 ; 2 uses
  %i.p = getelementptr i8, ptr %.sink7.i, i64 16
  %.val3.i.i.i.peel.i = load i64, ptr %i.p, align 8, !noalias !8, !noundef !8
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i.peel.i, i64 %.val3.i.i.i.peel.i
  store ptr %.val.i.i.i.peel.i, ptr %i.c, align 8, !alias.scope !193
  store ptr %i.q, ptr %i.e, align 8, !alias.scope !193
  %i.r = call { i64, i64 } @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEENtNtNtB8_6traits8iterator8Iterator4nextB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c) ; 2 uses
  %i.s = extractvalue { i64, i64 } %i.r, 0
  %.not3.i.i.i = icmp eq i64 %i.s, -1
  br i1 %.not3.i.i.i, label %bb.g, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterB20_EENCNvMs0_NtB24_8featuresNtB3S_13ActiveFeature10set_system0ENtNtNtB9_6traits8iterator8Iterator4nextB26_.exit

bb.g:                                             ; preds = %.peel.next.i
  store ptr null, ptr %i.c, align 8, !alias.scope !190
  %.pre.i = load i64, ptr %1, align 8, !range !14, !alias.scope !194
  %i.t = trunc nuw i64 %.pre.i to i1
  br i1 %i.t, label %bb.h, label %.loopexit.i

bb.h:                                             ; preds = %bb.g
  %i.u = load ptr, ptr %i.d, align 8, !alias.scope !195, !align !15, !noundef !8 ; 2 uses
  store ptr null, ptr %i.d, align 8, !alias.scope !195
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %.loopexit.i, label %.peel.next.i, !llvm.loop !175

.loopexit.i:                                      ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %i.v = load ptr, ptr %i.f, align 8, !alias.scope !196, !noundef !8
  %.not.i7.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i7.i.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB1Y_.exit11.i.i, label %bb.i

bb.i:                                             ; preds = %.loopexit.i
  %i.w = call { i64, i64 } @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEENtNtNtB8_6traits8iterator8Iterator4nextB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f) ; 2 uses
  %i.x = extractvalue { i64, i64 } %i.w, 0        ; 2 uses
  %i.y = extractvalue { i64, i64 } %i.w, 1        ; 2 uses
  %.not3.i8.i.i = icmp eq i64 %i.x, -1
  br i1 %.not3.i8.i.i, label %bb.j, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB1Y_.exit11.i.i

bb.j:                                             ; preds = %bb.i
  store ptr null, ptr %i.f, align 8, !alias.scope !196
  br label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB1Y_.exit11.i.i

_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB1Y_.exit11.i.i: ; preds = %bb.j, %bb.i, %.loopexit.i
  %.sroa.3.0.i9.i.i = phi i64 [ undef, %.loopexit.i ], [ %i.y, %bb.j ], [ %i.y, %bb.i ]
  %.sroa.0.0.i10.i.i = phi i64 [ -1, %.loopexit.i ], [ -1, %bb.j ], [ %i.x, %bb.i ]
  %i.z = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i10.i.i, 0
  %i.aa = insertvalue { i64, i64 } %i.z, i64 %.sroa.3.0.i9.i.i, 1
  br label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterB20_EENCNvMs0_NtB24_8featuresNtB3S_13ActiveFeature10set_system0ENtNtNtB9_6traits8iterator8Iterator4nextB26_.exit

_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterB20_EENCNvMs0_NtB24_8featuresNtB3S_13ActiveFeature10set_system0ENtNtNtB9_6traits8iterator8Iterator4nextB26_.exit: ; preds = %.peel.next.i, %bb.c, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB1Y_.exit11.i.i
  %.merged.i.i = phi { i64, i64 } [ %i.aa, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB1Y_.exit11.i.i ], [ %i.j, %bb.c ], [ %i.r, %.peel.next.i ] ; 2 uses
  %i.ab = extractvalue { i64, i64 } %.merged.i.i, 0 ; 2 uses
  %i.ac = extractvalue { i64, i64 } %.merged.i.i, 1
  %.not = icmp eq i64 %i.ab, -1
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterB20_EENCNvMs0_NtB24_8featuresNtB3S_13ActiveFeature10set_system0ENtNtNtB9_6traits8iterator8Iterator4nextB26_.exit
  %i.ad = load i64, ptr %i.g, align 8, !noundef !8 ; 4 uses
  %i.ae = icmp ult i64 %i.ad, 576460752303423488
  call void @llvm.assume(i1 %i.ae)
  %i.af = load i64, ptr %0, align 8, !range !13, !noundef !8
  %i.ag = icmp eq i64 %i.ad, %i.af
  br i1 %i.ag, label %bb.m, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdE7reserveBK_.exit

bb.l:                                             ; preds = %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterB20_EENCNvMs0_NtB24_8featuresNtB3S_13ActiveFeature10set_system0ENtNtNtB9_6traits8iterator8Iterator4nextB26_.exit
  ret void

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.experimental.noalias.scope.decl(metadata !197)
  call void @llvm.experimental.noalias.scope.decl(metadata !198)
  call void @llvm.experimental.noalias.scope.decl(metadata !199)
  call void @llvm.experimental.noalias.scope.decl(metadata !200)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !201
  %i.ah = load ptr, ptr %i.c, align 8, !alias.scope !202, !noundef !8
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1T_.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEENtNtNtB8_6traits8iterator8Iterator9size_hintB1x_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) dereferenceable_or_null(16) %i.c), !noalias !203
  %.pre.i.i4 = load i64, ptr %i.b, align 8, !noalias !201
  %.pre71.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !range !14, !noalias !201
  %.pre73.i.i = load i64, ptr %.phi.trans.insert72.i.i, align 8, !noalias !201
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1T_.exit.i.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1T_.exit.i.i: ; preds = %bb.n, %bb.m
  %i.ai = phi i64 [ %.pre73.i.i, %bb.n ], [ 0, %bb.m ]
  %i.aj = phi i64 [ %.pre71.i.i, %bb.n ], [ 1, %bb.m ] ; 2 uses
  %i.ak = phi i64 [ %.pre.i.i4, %bb.n ], [ 0, %bb.m ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !201
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !201
  %i.al = load ptr, ptr %i.f, align 8, !alias.scope !202, !noundef !8
  %.not53.i.i = icmp eq ptr %i.al, null
  br i1 %.not53.i.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1T_.exit60.i.i, label %bb.o

bb.o:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1T_.exit.i.i
  call void @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEENtNtNtB8_6traits8iterator8Iterator9size_hintB1x_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) dereferenceable_or_null(16) %i.f), !noalias !204
  %.pre74.i.i = load i64, ptr %i.a, align 8, !noalias !201
  %.pre76.i.i = load i64, ptr %.phi.trans.insert75.i.i, align 8, !range !14, !noalias !201
  %.pre78.i.i = load i64, ptr %.phi.trans.insert77.i.i, align 8, !noalias !201
  %i.am = call i64 @llvm.uadd.sat.i64(i64 %i.ak, i64 %.pre74.i.i)
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1T_.exit60.i.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1T_.exit60.i.i: ; preds = %bb.o, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1T_.exit.i.i
  %i.an = phi i64 [ %.pre78.i.i, %bb.o ], [ 0, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1T_.exit.i.i ]
  %.fr15 = phi i64 [ %.pre76.i.i, %bb.o ], [ 1, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1T_.exit.i.i ] ; 2 uses
  %i.ao = phi i64 [ %i.am, %bb.o ], [ %i.ak, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1T_.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !201
  %i.ap = load i64, ptr %1, align 8, !range !14, !alias.scope !202, !noundef !8
  %i.aq = trunc nuw i64 %i.ap to i1
  br i1 %i.aq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1T_.exit60.i.i
  %.val.i.i = load ptr, ptr %i.d, align 8, !alias.scope !202, !align !15, !noundef !8
  %.not70.i.i = icmp eq ptr %.val.i.i, null
  %i.ar = trunc nuw i64 %i.aj to i1
  %i.as = trunc nuw i64 %.fr15 to i1
  %op.rdx = select i1 %.not70.i.i, i1 %i.ar, i1 false
  %op.rdx14 = select i1 %op.rdx, i1 %i.as, i1 false
  br i1 %op.rdx14, label %bb.r, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterB20_EENCNvMs0_NtB24_8featuresNtB3S_13ActiveFeature10set_system0ENtNtNtB9_6traits8iterator8Iterator9size_hintB26_.exit

bb.q:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1T_.exit60.i.i
  %i.at = and i64 %.fr15, %i.aj
  %or.cond54.not.i.i = icmp eq i64 %i.at, 0
  br i1 %or.cond54.not.i.i, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterB20_EENCNvMs0_NtB24_8featuresNtB3S_13ActiveFeature10set_system0ENtNtNtB9_6traits8iterator8Iterator9size_hintB26_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.au = add i64 %i.an, %i.ai
  br label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterB20_EENCNvMs0_NtB24_8featuresNtB3S_13ActiveFeature10set_system0ENtNtNtB9_6traits8iterator8Iterator9size_hintB26_.exit

_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterB20_EENCNvMs0_NtB24_8featuresNtB3S_13ActiveFeature10set_system0ENtNtNtB9_6traits8iterator8Iterator9size_hintB26_.exit: ; preds = %bb.p, %bb.q, %bb.r
  %.sink80.i.i.sroa.phi = phi ptr [ %.sroa.7, %bb.r ], [ %.sroa.5, %bb.q ], [ %.sroa.5, %bb.p ]
  %.sink.i.i = phi i64 [ %i.au, %bb.r ], [ 0, %bb.q ], [ 0, %bb.p ]
  store i64 %.sink.i.i, ptr %.sink80.i.i.sroa.phi, align 8, !alias.scope !205
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %i.av = call i64 @llvm.uadd.sat.i64(i64 %i.ao, i64 1) ; 2 uses
  %i.aw = load i64, ptr %i.g, align 8, !alias.scope !206, !noundef !8 ; 2 uses
  %i.ax = load i64, ptr %0, align 8, !range !13, !alias.scope !206, !noundef !8
  %i.ay = sub i64 %i.ax, %i.aw
  %i.az = icmp ugt i64 %i.av, %i.ay
  br i1 %i.az, label %bb.s, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdE7reserveBK_.exit, !prof !11

bb.s:                                             ; preds = %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterB20_EENCNvMs0_NtB24_8featuresNtB3S_13ActiveFeature10set_system0ENtNtNtB9_6traits8iterator8Iterator9size_hintB26_.exit
  call void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.aw, i64 noundef %i.av, i64 noundef 8, i64 noundef 16)
  br label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdE7reserveBK_.exit

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdE7reserveBK_.exit: ; preds = %bb.s, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterB20_EENCNvMs0_NtB24_8featuresNtB3S_13ActiveFeature10set_system0ENtNtNtB9_6traits8iterator8Iterator9size_hintB26_.exit, %bb.k
  %i.ba = load ptr, ptr %i.h, align 8, !nonnull !8, !noundef !8
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %i.ad ; 2 uses
  store i64 %i.ab, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i64 %i.ac, ptr %i.bc, align 8
  %i.bd = add nuw nsw i64 %i.ad, 1
  store i64 %i.bd, ptr %i.g, align 8
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdE16extend_desugaredINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtB1Y_6option8IntoIterRBw_EINtNtB1U_6copied6CopiedINtNtNtB1Y_5slice4iter4IterBG_EENCNvMs0_NtBK_8featuresNtB4g_13ActiveFeature10set_systems_0EEBM_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.5 = alloca i64, align 8                  ; 4 uses
  %.sroa.7 = alloca i64, align 8                  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.phi.trans.insert72.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.phi.trans.insert75.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.phi.trans.insert77.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdE7reserveBK_.exit, %bb.a
  %.pre.i.i = load ptr, ptr %i.c, align 8, !alias.scope !238
  %i.i = icmp eq ptr %.pre.i.i, null
  br i1 %i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = call { i64, i64 } @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEENtNtNtB8_6traits8iterator8Iterator4nextB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c) ; 2 uses
  %i.k = extractvalue { i64, i64 } %i.j, 0
  %.not3.i.i.peel.i = icmp eq i64 %i.k, -1
  br i1 %.not3.i.i.peel.i, label %bb.d, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterB20_EENCNvMs0_NtB24_8featuresNtB3S_13ActiveFeature10set_systems_0ENtNtNtB9_6traits8iterator8Iterator4nextB26_.exit

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.c, align 8, !alias.scope !238
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.l = load i64, ptr %1, align 8, !range !14, !alias.scope !239, !noundef !8
  %i.m = trunc nuw i64 %i.l to i1
  br i1 %i.m, label %bb.f, label %.loopexit.i

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %i.d, align 8, !alias.scope !240, !align !15, !noundef !8 ; 2 uses
  store ptr null, ptr %i.d, align 8, !alias.scope !240
  %.not.i.i.i.peel.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.peel.i, label %.loopexit.i, label %.peel.next.i

.peel.next.i:                                     ; preds = %bb.f, %bb.h
  %.sink7.i = phi ptr [ %i.u, %bb.h ], [ %i.n, %bb.f ] ; 2 uses
  %i.o = getelementptr i8, ptr %.sink7.i, i64 8
  %.val.i.i.i.peel.i = load ptr, ptr %i.o, align 8, !noalias !8, !nonnull !8, !noundef !8 ; 2 uses
  %i.p = getelementptr i8, ptr %.sink7.i, i64 16
  %.val3.i.i.i.peel.i = load i64, ptr %i.p, align 8, !noalias !8, !noundef !8
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i.peel.i, i64 %.val3.i.i.i.peel.i
  store ptr %.val.i.i.i.peel.i, ptr %i.c, align 8, !alias.scope !241
  store ptr %i.q, ptr %i.e, align 8, !alias.scope !241
  %i.r = call { i64, i64 } @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEENtNtNtB8_6traits8iterator8Iterator4nextB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c) ; 2 uses
  %i.s = extractvalue { i64, i64 } %i.r, 0
  %.not3.i.i.i = icmp eq i64 %i.s, -1
  br i1 %.not3.i.i.i, label %bb.g, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterB20_EENCNvMs0_NtB24_8featuresNtB3S_13ActiveFeature10set_systems_0ENtNtNtB9_6traits8iterator8Iterator4nextB26_.exit

bb.g:                                             ; preds = %.peel.next.i
  store ptr null, ptr %i.c, align 8, !alias.scope !238
  %.pre.i = load i64, ptr %1, align 8, !range !14, !alias.scope !242
  %i.t = trunc nuw i64 %.pre.i to i1
  br i1 %i.t, label %bb.h, label %.loopexit.i

bb.h:                                             ; preds = %bb.g
  %i.u = load ptr, ptr %i.d, align 8, !alias.scope !243, !align !15, !noundef !8 ; 2 uses
  store ptr null, ptr %i.d, align 8, !alias.scope !243
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %.loopexit.i, label %.peel.next.i, !llvm.loop !223

.loopexit.i:                                      ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %i.v = load ptr, ptr %i.f, align 8, !alias.scope !244, !noundef !8
  %.not.i7.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i7.i.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB1Y_.exit11.i.i, label %bb.i

bb.i:                                             ; preds = %.loopexit.i
  %i.w = call { i64, i64 } @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEENtNtNtB8_6traits8iterator8Iterator4nextB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f) ; 2 uses
  %i.x = extractvalue { i64, i64 } %i.w, 0        ; 2 uses
  %i.y = extractvalue { i64, i64 } %i.w, 1        ; 2 uses
  %.not3.i8.i.i = icmp eq i64 %i.x, -1
  br i1 %.not3.i8.i.i, label %bb.j, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB1Y_.exit11.i.i

bb.j:                                             ; preds = %bb.i
  store ptr null, ptr %i.f, align 8, !alias.scope !244
  br label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB1Y_.exit11.i.i

_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB1Y_.exit11.i.i: ; preds = %bb.j, %bb.i, %.loopexit.i
  %.sroa.3.0.i9.i.i = phi i64 [ undef, %.loopexit.i ], [ %i.y, %bb.j ], [ %i.y, %bb.i ]
  %.sroa.0.0.i10.i.i = phi i64 [ -1, %.loopexit.i ], [ -1, %bb.j ], [ %i.x, %bb.i ]
  %i.z = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i10.i.i, 0
  %i.aa = insertvalue { i64, i64 } %i.z, i64 %.sroa.3.0.i9.i.i, 1
  br label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterB20_EENCNvMs0_NtB24_8featuresNtB3S_13ActiveFeature10set_systems_0ENtNtNtB9_6traits8iterator8Iterator4nextB26_.exit

_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterB20_EENCNvMs0_NtB24_8featuresNtB3S_13ActiveFeature10set_systems_0ENtNtNtB9_6traits8iterator8Iterator4nextB26_.exit: ; preds = %.peel.next.i, %bb.c, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB1Y_.exit11.i.i
  %.merged.i.i = phi { i64, i64 } [ %i.aa, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEB1S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB1Y_.exit11.i.i ], [ %i.j, %bb.c ], [ %i.r, %.peel.next.i ] ; 2 uses
  %i.ab = extractvalue { i64, i64 } %.merged.i.i, 0 ; 2 uses
  %i.ac = extractvalue { i64, i64 } %.merged.i.i, 1
  %.not = icmp eq i64 %i.ab, -1
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterB20_EENCNvMs0_NtB24_8featuresNtB3S_13ActiveFeature10set_systems_0ENtNtNtB9_6traits8iterator8Iterator4nextB26_.exit
  %i.ad = load i64, ptr %i.g, align 8, !noundef !8 ; 4 uses
  %i.ae = icmp ult i64 %i.ad, 576460752303423488
  call void @llvm.assume(i1 %i.ae)
  %i.af = load i64, ptr %0, align 8, !range !13, !noundef !8
  %i.ag = icmp eq i64 %i.ad, %i.af
  br i1 %i.ag, label %bb.m, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdE7reserveBK_.exit

bb.l:                                             ; preds = %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterB20_EENCNvMs0_NtB24_8featuresNtB3S_13ActiveFeature10set_systems_0ENtNtNtB9_6traits8iterator8Iterator4nextB26_.exit
  ret void

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.experimental.noalias.scope.decl(metadata !245)
  call void @llvm.experimental.noalias.scope.decl(metadata !246)
  call void @llvm.experimental.noalias.scope.decl(metadata !247)
  call void @llvm.experimental.noalias.scope.decl(metadata !248)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !249
  %i.ah = load ptr, ptr %i.c, align 8, !alias.scope !250, !noundef !8
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1T_.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEENtNtNtB8_6traits8iterator8Iterator9size_hintB1x_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) dereferenceable_or_null(16) %i.c), !noalias !251
  %.pre.i.i4 = load i64, ptr %i.b, align 8, !noalias !249
  %.pre71.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !range !14, !noalias !249
  %.pre73.i.i = load i64, ptr %.phi.trans.insert72.i.i, align 8, !noalias !249
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1T_.exit.i.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1T_.exit.i.i: ; preds = %bb.n, %bb.m
  %i.ai = phi i64 [ %.pre73.i.i, %bb.n ], [ 0, %bb.m ]
  %i.aj = phi i64 [ %.pre71.i.i, %bb.n ], [ 1, %bb.m ] ; 2 uses
  %i.ak = phi i64 [ %.pre.i.i4, %bb.n ], [ 0, %bb.m ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !249
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !249
  %i.al = load ptr, ptr %i.f, align 8, !alias.scope !250, !noundef !8
  %.not53.i.i = icmp eq ptr %i.al, null
  br i1 %.not53.i.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1T_.exit60.i.i, label %bb.o

bb.o:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1T_.exit.i.i
  call void @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEENtNtNtB8_6traits8iterator8Iterator9size_hintB1x_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) dereferenceable_or_null(16) %i.f), !noalias !252
  %.pre74.i.i = load i64, ptr %i.a, align 8, !noalias !249
  %.pre76.i.i = load i64, ptr %.phi.trans.insert75.i.i, align 8, !range !14, !noalias !249
  %.pre78.i.i = load i64, ptr %.phi.trans.insert77.i.i, align 8, !noalias !249
  %i.am = call i64 @llvm.uadd.sat.i64(i64 %i.ak, i64 %.pre74.i.i)
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1T_.exit60.i.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1T_.exit60.i.i: ; preds = %bb.o, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1T_.exit.i.i
  %i.an = phi i64 [ %.pre78.i.i, %bb.o ], [ 0, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1T_.exit.i.i ]
  %.fr15 = phi i64 [ %.pre76.i.i, %bb.o ], [ 1, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1T_.exit.i.i ] ; 2 uses
  %i.ao = phi i64 [ %i.am, %bb.o ], [ %i.ak, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1T_.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !249
  %i.ap = load i64, ptr %1, align 8, !range !14, !alias.scope !250, !noundef !8
  %i.aq = trunc nuw i64 %i.ap to i1
  br i1 %i.aq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1T_.exit60.i.i
  %.val.i.i = load ptr, ptr %i.d, align 8, !alias.scope !250, !align !15, !noundef !8
  %.not70.i.i = icmp eq ptr %.val.i.i, null
  %i.ar = trunc nuw i64 %i.aj to i1
  %i.as = trunc nuw i64 %.fr15 to i1
  %op.rdx = select i1 %.not70.i.i, i1 %i.ar, i1 false
  %op.rdx14 = select i1 %op.rdx, i1 %i.as, i1 false
  br i1 %op.rdx14, label %bb.r, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterB20_EENCNvMs0_NtB24_8featuresNtB3S_13ActiveFeature10set_systems_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB26_.exit

bb.q:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1T_.exit60.i.i
  %i.at = and i64 %.fr15, %i.aj
  %or.cond54.not.i.i = icmp eq i64 %i.at, 0
  br i1 %or.cond54.not.i.i, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterB20_EENCNvMs0_NtB24_8featuresNtB3S_13ActiveFeature10set_systems_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB26_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.au = add i64 %i.an, %i.ai
  br label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterB20_EENCNvMs0_NtB24_8featuresNtB3S_13ActiveFeature10set_systems_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB26_.exit

_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterB20_EENCNvMs0_NtB24_8featuresNtB3S_13ActiveFeature10set_systems_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB26_.exit: ; preds = %bb.p, %bb.q, %bb.r
  %.sink80.i.i.sroa.phi = phi ptr [ %.sroa.7, %bb.r ], [ %.sroa.5, %bb.q ], [ %.sroa.5, %bb.p ]
  %.sink.i.i = phi i64 [ %i.au, %bb.r ], [ 0, %bb.q ], [ 0, %bb.p ]
  store i64 %.sink.i.i, ptr %.sink80.i.i.sroa.phi, align 8, !alias.scope !253
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %i.av = call i64 @llvm.uadd.sat.i64(i64 %i.ao, i64 1) ; 2 uses
  %i.aw = load i64, ptr %i.g, align 8, !alias.scope !254, !noundef !8 ; 2 uses
  %i.ax = load i64, ptr %0, align 8, !range !13, !alias.scope !254, !noundef !8
  %i.ay = sub i64 %i.ax, %i.aw
  %i.az = icmp ugt i64 %i.av, %i.ay
  br i1 %i.az, label %bb.s, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdE7reserveBK_.exit, !prof !11

bb.s:                                             ; preds = %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterB20_EENCNvMs0_NtB24_8featuresNtB3S_13ActiveFeature10set_systems_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB26_.exit
  call void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.aw, i64 noundef %i.av, i64 noundef 8, i64 noundef 16)
  br label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdE7reserveBK_.exit

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdE7reserveBK_.exit: ; preds = %bb.s, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterB20_EENCNvMs0_NtB24_8featuresNtB3S_13ActiveFeature10set_systems_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB26_.exit, %bb.k
  %i.ba = load ptr, ptr %i.h, align 8, !nonnull !8, !noundef !8
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %i.ad ; 2 uses
  store i64 %i.ab, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i64 %i.ac, ptr %i.bc, align 8
  %i.bd = add nuw nsw i64 %i.ad, 1
  store i64 %i.bd, ptr %i.g, align 8
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdRNtBJ_18SubstitutionLookupEE16extend_desugaredINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtB2m_6copied6CopiedINtNtNtB2q_5slice4iter4IterBH_EEINtNtB2m_3map3MapINtNtB6_9into_iter8IntoIterB1x_ENCNCNvMNtBL_8featuresNtB50_11AllFeatures13finalize_aalts_00ENCB4X_s_0EEBN_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(120) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.510 = alloca i64, align 8                ; 3 uses
  %.sroa.7 = alloca i64, align 8                  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.528.0..sroa_idx29.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.sroa.837.0..sroa_idx38.i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdRNtBH_18SubstitutionLookupEE7reserveBL_.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !307)
  call void @llvm.experimental.noalias.scope.decl(metadata !308)
  %.pre.i.i = load i64, ptr %1, align 8, !range !17, !alias.scope !309
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterRNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups18SubstitutionLookupENCNCNvMNtB2o_8featuresNtB3t_11AllFeatures13finalize_aalts_00EEEB2q_.exit.i.i, %bb.b
  %i.r = phi i64 [ %i.z, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterRNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups18SubstitutionLookupENCNCNvMNtB2o_8featuresNtB3t_11AllFeatures13finalize_aalts_00EEEB2q_.exit.i.i ], [ %.pre.i.i, %bb.b ] ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.r, -1
  br i1 %.not.i.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.c, align 8, !alias.scope !310, !nonnull !8, !noundef !8
  %i.t = load ptr, ptr %i.d, align 8, !alias.scope !310, !nonnull !8, !noundef !8 ; 3 uses
  %i.u = icmp eq ptr %i.t, %i.s
  br i1 %i.u, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterRNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups18SubstitutionLookupENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB13_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterRNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups18SubstitutionLookupENCNCNvMNtB2o_8featuresNtB3t_11AllFeatures13finalize_aalts_00EEEB2q_.exit.i.i.i unwind label %bb.f, !noalias !311

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  store i64 -1, ptr %1, align 8, !alias.scope !309
  br label %.body

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterRNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups18SubstitutionLookupENCNCNvMNtB2o_8featuresNtB3t_11AllFeatures13finalize_aalts_00EEEB2q_.exit.i.i.i: ; preds = %bb.e
  store i64 -1, ptr %1, align 8, !alias.scope !309
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.w, ptr %i.d, align 8, !alias.scope !310
  br label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEINtNtB7_3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterRNtB1S_18SubstitutionLookupENCNCNvMNtB1U_8featuresNtB4l_11AllFeatures13finalize_aalts_00ENCB4i_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB1W_.exit

bb.h:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterRNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups18SubstitutionLookupENCNCNvMNtB2o_8featuresNtB3t_11AllFeatures13finalize_aalts_00EEEB2q_.exit.i.i.i, %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !312)
  %i.x = load ptr, ptr %i.f, align 8, !alias.scope !313, !noundef !8
  %.not.i2.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i2.i.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !314)
  %i.y = invoke { i64, i64 } @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEENtNtNtB8_6traits8iterator8Iterator4nextB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %bb.i
  %i.z = extractvalue { i64, i64 } %i.y, 0        ; 5 uses
  %.not.i.i.i.i = icmp eq i64 %i.z, -1
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %.noexc
  %i.aa = extractvalue { i64, i64 } %i.y, 1       ; 3 uses
  %.val.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !315, !nonnull !8, !align !15, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !316
  invoke void @_RNvMs7_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_10AllLookups12aalt_lookups(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(320) %.val.i.i.i.i, i64 noundef range(i64 0, 6) %i.z, i64 %i.aa)
          to label %.noexc3 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc3:                                          ; preds = %bb.j
  %i.ab = load ptr, ptr %i.h, align 8, !noalias !316, !nonnull !8, !noundef !8 ; 5 uses
  %i.ac = load i64, ptr %i.i, align 8, !noalias !316, !noundef !8 ; 2 uses
  %i.ad = icmp ult i64 %i.ac, 1152921504606846976
  call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ac ; 2 uses
  %i.af = load i64, ptr %i.b, align 8, !range !13, !noalias !316, !noundef !8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !316
  %i.ag = load i64, ptr %1, align 8, !range !17, !alias.scope !317, !noundef !8
  %i.ah = icmp eq i64 %i.ag, -1
  br i1 %i.ah, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterRNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups18SubstitutionLookupENCNCNvMNtB2o_8featuresNtB3t_11AllFeatures13finalize_aalts_00EEEB2q_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %.noexc3
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterRNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups18SubstitutionLookupENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB13_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterRNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups18SubstitutionLookupENCNCNvMNtB2o_8featuresNtB3t_11AllFeatures13finalize_aalts_00EEEB2q_.exit.i.i unwind label %bb.p, !noalias !318

bb.l:                                             ; preds = %.noexc, %bb.h
  %i.ai = load i64, ptr %i.j, align 8, !range !17, !alias.scope !319, !noundef !8 ; 2 uses
  %.not.i3.i.i = icmp eq i64 %i.ai, -1
  br i1 %.not.i3.i.i, label %.loopexit18, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = load ptr, ptr %i.k, align 8, !alias.scope !320, !nonnull !8, !noundef !8
  %i.ak = load ptr, ptr %i.l, align 8, !alias.scope !320, !nonnull !8, !noundef !8 ; 3 uses
  %i.al = icmp eq ptr %i.ak, %i.aj
  br i1 %i.al, label %bb.n, label %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterRNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups18SubstitutionLookupENCNCNvMNtB1M_8featuresNtB2R_11AllFeatures13finalize_aalts_00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB1O_.exit.i4.i.i

_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterRNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups18SubstitutionLookupENCNCNvMNtB1M_8featuresNtB2R_11AllFeatures13finalize_aalts_00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB1O_.exit.i4.i.i: ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.am, ptr %i.l, align 8, !alias.scope !320
  br label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEINtNtB7_3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterRNtB1S_18SubstitutionLookupENCNCNvMNtB1U_8featuresNtB4l_11AllFeatures13finalize_aalts_00ENCB4i_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB1W_.exit

bb.n:                                             ; preds = %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 64
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterRNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups18SubstitutionLookupENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB13_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.an)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterRNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups18SubstitutionLookupENCNCNvMNtB2o_8featuresNtB3t_11AllFeatures13finalize_aalts_00EEEB2q_.exit.i11.i.i unwind label %bb.o, !noalias !321

bb.o:                                             ; preds = %bb.n
  %i.ao = landingpad { ptr, i32 }
          cleanup
  store i64 -1, ptr %i.j, align 8, !alias.scope !319
  br label %.body

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterRNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups18SubstitutionLookupENCNCNvMNtB2o_8featuresNtB3t_11AllFeatures13finalize_aalts_00EEEB2q_.exit.i11.i.i: ; preds = %bb.n
  store i64 -1, ptr %i.j, align 8, !alias.scope !319
  br label %.loopexit18

bb.p:                                             ; preds = %bb.k
  %i.ap = landingpad { ptr, i32 }
          cleanup
  store i64 %i.z, ptr %1, align 8, !alias.scope !322
  store i64 %i.aa, ptr %.sroa.528.0..sroa_idx29.i.i, align 8, !alias.scope !322
  store ptr %i.ab, ptr %i.e, align 8, !alias.scope !322
  store ptr %i.ab, ptr %i.d, align 8, !alias.scope !322
  store i64 %i.af, ptr %.sroa.837.0..sroa_idx38.i.i, align 8, !alias.scope !322
  store ptr %i.ae, ptr %i.c, align 8, !alias.scope !322
  br label %.body

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterRNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups18SubstitutionLookupENCNCNvMNtB2o_8featuresNtB3t_11AllFeatures13finalize_aalts_00EEEB2q_.exit.i.i: ; preds = %bb.k, %.noexc3
  store i64 %i.z, ptr %1, align 8, !alias.scope !322
  store i64 %i.aa, ptr %.sroa.528.0..sroa_idx29.i.i, align 8, !alias.scope !322
  store ptr %i.ab, ptr %i.e, align 8, !alias.scope !322
  store ptr %i.ab, ptr %i.d, align 8, !alias.scope !322
  store i64 %i.af, ptr %.sroa.837.0..sroa_idx38.i.i, align 8, !alias.scope !322
  store ptr %i.ae, ptr %i.c, align 8, !alias.scope !322
  br label %bb.c

_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdEEINtNtB7_3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterRNtB1S_18SubstitutionLookupENCNCNvMNtB1U_8featuresNtB4l_11AllFeatures13finalize_aalts_00ENCB4i_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB1W_.exit: ; preds = %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterRNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups18SubstitutionLookupENCNCNvMNtB1M_8featuresNtB2R_11AllFeatures13finalize_aalts_00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB1O_.exit.i4.i.i, %bb.g
  %.sroa.10.0.in = phi ptr [ %i.t, %bb.g ], [ %i.ak, %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterRNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups18SubstitutionLookupENCNCNvMNtB1M_8featuresNtB2R_11AllFeatures13finalize_aalts_00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB1O_.exit.i4.i.i ]
  %.sroa.8.0.in = phi ptr [ %.sroa.528.0..sroa_idx29.i.i, %bb.g ], [ %i.m, %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterRNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups18SubstitutionLookupENCNCNvMNtB1M_8featuresNtB2R_11AllFeatures13finalize_aalts_00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB1O_.exit.i4.i.i ]
  %.sroa.0.0 = phi i64 [ %i.r, %bb.g ], [ %i.ai, %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterRNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups18SubstitutionLookupENCNCNvMNtB1M_8featuresNtB2R_11AllFeatures13finalize_aalts_00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB1O_.exit.i4.i.i ]
  %.sroa.8.0 = load i64, ptr %.sroa.8.0.in, align 8, !alias.scope !322
  %.sroa.10.0 = load ptr, ptr %.sroa.10.0.in, align 8, !noalias !318, !nonnull !8, !align !15, !noundef !8
  %i.aq = load i64, ptr %i.n, align 8, !noundef !8 ; 4 uses
  %i.ar = icmp ult i64 %i.aq, 384307168202282326
  call void @llvm.assume(i1 %i.ar)
end_hunk_0
begin_hunk_1_@_RNvXs8_NtCsgCecv3eZDcN_5alloc5sliceINtNtB7_3vec3VecTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBQ_18SubstitutionLookupEEINtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable8BufGuardBN_E13with_capacityBU_:bb.a
_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscScJTt9VrQp_6fea_rs.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !8, !noundef !8
  %i.i = icmp ule i64 %1, %i.e
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.e, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.k, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNvXs8_NtCsgCecv3eZDcN_5alloc5sliceINtNtB7_3vec3VecTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBQ_18SubstitutionLookupEEINtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable8BufGuardBN_E19as_uninit_slice_mutBU_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %i.e = getelementptr inbounds nuw [56 x i8], ptr %i.b, i64 %i.d
  %i.f = load i64, ptr %0, align 8, !range !13, !noundef !8
  %i.g = sub i64 %i.f, %i.d
  %i.h = insertvalue { ptr, i64 } poison, ptr %i.e, 0
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %i.g, 1
  ret { ptr, i64 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs8_NtCsgCecv3eZDcN_5alloc5sliceINtNtB7_3vec3VecTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdRNtBQ_18SubstitutionLookupEEINtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable8BufGuardBN_E13with_capacityBU_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %1, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
  %i.b = load i64, ptr %i.a, align 8, !range !14, !noundef !8
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !32, !noundef !8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscScJTt9VrQp_6fea_rs.exit, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #23
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscScJTt9VrQp_6fea_rs.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !8, !noundef !8
  %i.i = icmp ule i64 %1, %i.e
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.e, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.k, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNvXs8_NtCsgCecv3eZDcN_5alloc5sliceINtNtB7_3vec3VecTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdRNtBQ_18SubstitutionLookupEEINtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable8BufGuardBN_E19as_uninit_slice_mutBU_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 2 uses
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.d
  %i.f = load i64, ptr %0, align 8, !range !13, !noundef !8
  %i.g = sub i64 %i.f, %i.d
  %i.h = insertvalue { ptr, i64 } poison, ptr %i.e, 0
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %i.g, 1
  ret { ptr, i64 } %i.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout11RangeRecordEINtNtB7_3map3MapINtNtNtBb_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB40_9GlyphId163newENCNvMsd_B28_NtB28_15CoverageFormat24iter0EEENtNtNtB9_6traits8iterator8Iterator9size_hintCscScJTt9VrQp_6fea_rs(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5992)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5993)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.b = load i8, ptr %i.a, align 2, !range !5994, !alias.scope !5993, !noundef !8 ; 2 uses
  %.not.i = icmp eq i8 %i.b, -1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  br i1 %.not.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout11RangeRecordEINtNtBO_3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB3J_9GlyphId163newENCNvMsd_B1R_NtB1R_15CoverageFormat24iter0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.e = load i8, ptr %i.d, align 4, !range !9, !alias.scope !5995, !noundef !8
  %or.cond.not.i.i.i.i.i = icmp eq i8 %i.e, 0
  br i1 %or.cond.not.i.i.i.i.i, label %bb.c, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 50
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5996)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5997)
  %i.h = load i16, ptr %i.f, align 8, !alias.scope !5998, !noundef !8 ; 2 uses
  %i.i = load i16, ptr %i.g, align 2, !alias.scope !5999, !noundef !8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp ugt i16 %i.h, %i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = sub nuw i16 %i.i, %i.h
  %i.k = zext i16 %i.j to i64
  %i.l = add nuw nsw i64 %i.k, 1
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit.i.i.i.i.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit.i.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.7.0.i.i.i.i.i = phi i64 [ 0, %bb.c ], [ %i.l, %bb.d ], [ 0, %bb.b ]
  %or.cond82.not.i.i.i.i.i = icmp eq i8 %i.b, 0
  br i1 %or.cond82.not.i.i.i.i.i, label %bb.e, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit64.i.i.i.i.i

bb.e:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 54
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6000)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6001)
  %i.o = load i16, ptr %i.m, align 2, !alias.scope !6002, !noundef !8 ; 2 uses
  %i.p = load i16, ptr %i.n, align 8, !alias.scope !6003, !noundef !8 ; 2 uses
  %.not.i.i.i.i61.i.i.i.i.i = icmp ugt i16 %i.o, %i.p
  br i1 %.not.i.i.i.i61.i.i.i.i.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit64.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = sub nuw i16 %i.p, %i.o
  %i.r = zext i16 %i.q to i64
  %i.s = add nuw nsw i64 %i.r, 1
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit64.i.i.i.i.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit64.i.i.i.i.i: ; preds = %bb.f, %bb.e, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit.i.i.i.i.i
  %.sroa.8.0.i.i.i.i.i = phi i64 [ 0, %bb.e ], [ %i.s, %bb.f ], [ 0, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit.i.i.i.i.i ]
  %i.t = add nuw nsw i64 %.sroa.8.0.i.i.i.i.i, %.sroa.7.0.i.i.i.i.i ; 2 uses
  %i.u = load ptr, ptr %i.c, align 8, !alias.scope !5995, !noundef !8 ; 2 uses
  %.not54.i.i.i.i.i = icmp eq ptr %i.u, null
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val60.i.i.i.i.i = load ptr, ptr %i.v, align 8, !alias.scope !5995, !nonnull !8
  %i.w = icmp eq ptr %.val60.i.i.i.i.i, %i.u
  %or.cond84.i.i.i.i.i = select i1 %.not54.i.i.i.i.i, i1 true, i1 %i.w ; 2 uses
  %spec.select.i = select i1 %or.cond84.i.i.i.i.i, i64 %i.t, i64 undef
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout11RangeRecordEINtNtBO_3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB3J_9GlyphId163newENCNvMsd_B1R_NtB1R_15CoverageFormat24iter0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout11RangeRecordEINtNtBO_3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB3J_9GlyphId163newENCNvMsd_B1R_NtB1R_15CoverageFormat24iter0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit.i: ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit64.i.i.i.i.i, %bb.a
  %.sroa.7.1.i = phi i64 [ %spec.select.i, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit64.i.i.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.5.0.i = phi i1 [ %or.cond84.i.i.i.i.i, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit64.i.i.i.i.i ], [ true, %bb.a ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ %i.t, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit64.i.i.i.i.i ], [ 0, %bb.a ]
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 90
  %i.y = load i8, ptr %i.x, align 2, !range !5994, !alias.scope !5993, !noundef !8 ; 2 uses
  %.not53.i = icmp eq i8 %i.y, -1
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 64
  br i1 %.not53.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout11RangeRecordEINtNtBO_3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB3J_9GlyphId163newENCNvMsd_B1R_NtB1R_15CoverageFormat24iter0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit73.i, label %bb.g

bb.g:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout11RangeRecordEINtNtBO_3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB3J_9GlyphId163newENCNvMsd_B1R_NtB1R_15CoverageFormat24iter0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.ab = load i8, ptr %i.aa, align 4, !range !9, !alias.scope !6004, !noundef !8
  %or.cond.not.i.i.i.i60.i = icmp eq i8 %i.ab, 0
  br i1 %or.cond.not.i.i.i.i60.i, label %bb.h, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit.i.i.i.i61.i

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 82
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6005)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6006)
  %i.ae = load i16, ptr %i.ac, align 8, !alias.scope !6007, !noundef !8 ; 2 uses
  %i.af = load i16, ptr %i.ad, align 2, !alias.scope !6008, !noundef !8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i72.i = icmp ugt i16 %i.ae, %i.af
  br i1 %.not.i.i.i.i.i.i.i.i72.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit.i.i.i.i61.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = sub nuw i16 %i.af, %i.ae
  %i.ah = zext i16 %i.ag to i64
  %i.ai = add nuw nsw i64 %i.ah, 1
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit.i.i.i.i61.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit.i.i.i.i61.i: ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.7.0.i.i.i.i62.i = phi i64 [ 0, %bb.h ], [ %i.ai, %bb.i ], [ 0, %bb.g ]
  %or.cond82.not.i.i.i.i63.i = icmp eq i8 %i.y, 0
  br i1 %or.cond82.not.i.i.i.i63.i, label %bb.j, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit64.i.i.i.i64.i

bb.j:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit.i.i.i.i61.i
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 86
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 88
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6009)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6010)
  %i.al = load i16, ptr %i.aj, align 2, !alias.scope !6011, !noundef !8 ; 2 uses
  %i.am = load i16, ptr %i.ak, align 8, !alias.scope !6012, !noundef !8 ; 2 uses
  %.not.i.i.i.i61.i.i.i.i71.i = icmp ugt i16 %i.al, %i.am
  br i1 %.not.i.i.i.i61.i.i.i.i71.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit64.i.i.i.i64.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = sub nuw i16 %i.am, %i.al
  %i.ao = zext i16 %i.an to i64
  %i.ap = add nuw nsw i64 %i.ao, 1
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit64.i.i.i.i64.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit64.i.i.i.i64.i: ; preds = %bb.k, %bb.j, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit.i.i.i.i61.i
  %.sroa.8.0.i.i.i.i65.i = phi i64 [ 0, %bb.j ], [ %i.ap, %bb.k ], [ 0, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit.i.i.i.i61.i ]
  %i.aq = add nuw nsw i64 %.sroa.8.0.i.i.i.i65.i, %.sroa.7.0.i.i.i.i62.i ; 2 uses
  %i.ar = load ptr, ptr %i.z, align 8, !alias.scope !6004, !noundef !8 ; 2 uses
  %.not54.i.i.i.i66.i = icmp eq ptr %i.ar, null
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val60.i.i.i.i67.i = load ptr, ptr %i.as, align 8, !alias.scope !6004, !nonnull !8
  %i.at = icmp eq ptr %.val60.i.i.i.i67.i, %i.ar
  %or.cond84.i.i.i.i68.i = select i1 %.not54.i.i.i.i66.i, i1 true, i1 %i.at ; 2 uses
  %spec.select88.i = select i1 %or.cond84.i.i.i.i68.i, i64 %i.aq, i64 undef
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout11RangeRecordEINtNtBO_3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB3J_9GlyphId163newENCNvMsd_B1R_NtB1R_15CoverageFormat24iter0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit73.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout11RangeRecordEINtNtBO_3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB3J_9GlyphId163newENCNvMsd_B1R_NtB1R_15CoverageFormat24iter0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit73.i: ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit64.i.i.i.i64.i, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout11RangeRecordEINtNtBO_3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB3J_9GlyphId163newENCNvMsd_B1R_NtB1R_15CoverageFormat24iter0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit.i
  %.sroa.8.1.i = phi i64 [ %spec.select88.i, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit64.i.i.i.i64.i ], [ 0, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout11RangeRecordEINtNtBO_3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB3J_9GlyphId163newENCNvMsd_B1R_NtB1R_15CoverageFormat24iter0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit.i ]
  %.sroa.581.0.i = phi i1 [ %or.cond84.i.i.i.i68.i, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit64.i.i.i.i64.i ], [ true, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout11RangeRecordEINtNtBO_3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB3J_9GlyphId163newENCNvMsd_B1R_NtB1R_15CoverageFormat24iter0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit.i ] ; 2 uses
  %.sroa.080.0.i = phi i64 [ %i.aq, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1W_9GlyphId163newEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit64.i.i.i.i64.i ], [ 0, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout11RangeRecordEINtNtBO_3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB3J_9GlyphId163newENCNvMsd_B1R_NtB1R_15CoverageFormat24iter0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit.i ]
  %i.au = add nuw nsw i64 %.sroa.080.0.i, %.sroa.0.0.i ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.aw = load i8, ptr %i.av, align 2, !range !41, !alias.scope !5993, !noundef !8 ; 2 uses
  %.not54.i = icmp eq i8 %i.aw, -2
  br i1 %.not54.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout11RangeRecordEINtNtBO_3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB3J_9GlyphId163newENCNvMsd_B1R_NtB1R_15CoverageFormat24iter0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit73.i
  %.not90.i = icmp eq i8 %i.aw, -1
  %op.rdx = select i1 %.not90.i, i1 %.sroa.5.0.i, i1 false
  %op.rdx11 = select i1 %op.rdx, i1 %.sroa.581.0.i, i1 false
  br i1 %op.rdx11, label %bb.o, label %bb.n

bb.m:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout11RangeRecordEINtNtBO_3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB3J_9GlyphId163newENCNvMsd_B1R_NtB1R_15CoverageFormat24iter0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit73.i
  %or.cond55.i = select i1 %.sroa.5.0.i, i1 %.sroa.581.0.i, i1 false
  br i1 %or.cond55.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  store i64 %i.au, ptr %0, align 8, !alias.scope !5992
  br label %_RNvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtBb_6option8IntoIterINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout11RangeRecordEINtNtB7_3map3MapINtNtNtBb_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB47_9GlyphId163newENCNvMsd_B2f_NtB2f_15CoverageFormat24iter0EEB1z_ENtNtNtB9_6traits8iterator8Iterator9size_hintCscScJTt9VrQp_6fea_rs.exit

bb.o:                                             ; preds = %bb.m, %bb.l
  %i.ax = add i64 %.sroa.8.1.i, %.sroa.7.1.i      ; 2 uses
  %i.ay = icmp uge i64 %i.ax, %.sroa.7.1.i
  %..i = zext i1 %i.ay to i64
  store i64 %i.au, ptr %0, align 8, !alias.scope !5992
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %..i, ptr %i.az, align 8, !alias.scope !5992
  br label %_RNvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtBb_6option8IntoIterINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout11RangeRecordEINtNtB7_3map3MapINtNtNtBb_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB47_9GlyphId163newENCNvMsd_B2f_NtB2f_15CoverageFormat24iter0EEB1z_ENtNtNtB9_6traits8iterator8Iterator9size_hintCscScJTt9VrQp_6fea_rs.exit

_RNvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtBb_6option8IntoIterINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout11RangeRecordEINtNtB7_3map3MapINtNtNtBb_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB47_9GlyphId163newENCNvMsd_B2f_NtB2f_15CoverageFormat24iter0EEB1z_ENtNtNtB9_6traits8iterator8Iterator9size_hintCscScJTt9VrQp_6fea_rs.exit: ; preds = %bb.n, %bb.o
  %.sink102.i = phi i64 [ 16, %bb.o ], [ 8, %bb.n ]
  %.sink.i = phi i64 [ %i.ax, %bb.o ], [ 0, %bb.n ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 %.sink102.i
  store i64 %.sink.i, ptr %i.ba, align 8, !alias.scope !5992
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB6_3VecINtNtCsf3Ta7LF998c_4core6option6OptionNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4debg15LookupDebugInfoEEINtB4_10SpecExtendBT_QINtNtNtNtBY_4iter7sources8repeat_n7RepeatNBT_EE11spec_extendB1D_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6021)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %1, ptr %i.c, align 8, !noalias !6022
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6022
  call void @_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter6traits8iteratorQINtNtNtB9_7sources8repeat_n7RepeatNINtNtBb_6option6OptionNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4debg15LookupDebugInfoEENtB5_8Iterator9size_hintB1T_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c), !noalias !6021
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !14, !noalias !6022, !noundef !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noalias !6022 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6022
  %i.h = trunc nuw i64 %i.e to i1
  br i1 %i.h, label %bb.b, label %bb.d, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !6023, !noundef !8 ; 3 uses
  %i.k = load i64, ptr %0, align 8, !range !13, !alias.scope !6023, !noundef !8
  %i.l = sub i64 %i.k, %i.j
  %i.m = icmp ugt i64 %i.g, %i.l
  br i1 %i.m, label %bb.c, label %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecINtNtCsf3Ta7LF998c_4core6option6OptionNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4debg15LookupDebugInfoEE14extend_trustedQINtNtNtNtBL_4iter7sources8repeat_n7RepeatNBG_EEB1q_.exit, !prof !11

bb.c:                                             ; preds = %bb.b
  call void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.j, i64 noundef %i.g, i64 noundef 8, i64 noundef 40)
  %.pre.i = load i64, ptr %i.i, align 8, !alias.scope !6021
  br label %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecINtNtCsf3Ta7LF998c_4core6option6OptionNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4debg15LookupDebugInfoEE14extend_trustedQINtNtNtNtBL_4iter7sources8repeat_n7RepeatNBG_EEB1q_.exit

bb.d:                                             ; preds = %bb.a
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !6021
  unreachable

_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecINtNtCsf3Ta7LF998c_4core6option6OptionNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4debg15LookupDebugInfoEE14extend_trustedQINtNtNtNtBL_4iter7sources8repeat_n7RepeatNBG_EEB1q_.exit: ; preds = %bb.b, %bb.c
  %i.n = phi i64 [ %i.j, %bb.b ], [ %.pre.i, %bb.c ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !6021, !nonnull !8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6024
  store ptr %i.i, ptr %i.a, align 8, !noalias !6025
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.n, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !6025
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.p, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !6025
  call void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter6traits8iteratorQINtNtNtBa_7sources8repeat_n7RepeatNINtNtBc_6option6OptionNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4debg15LookupDebugInfoEENtB6_8Iterator4folduNCINvNvB2S_8for_each4callB1q_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3O_3VecB1q_E14extend_trustedBQ_E0E0EB1U_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !6026
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6024
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB6_3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups14PositionLookupEINtB4_10SpecExtendBT_QINtNtB6_9into_iter8IntoIterBT_EE11spec_extendBZ_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6035)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %1, ptr %i.c, align 8, !noalias !6036
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6036
  call void @_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter6traits8iteratorQINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups14PositionLookupENtB5_8Iterator9size_hintB1K_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c), !noalias !6035
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !14, !noalias !6036, !noundef !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noalias !6036 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6036
  %i.h = trunc nuw i64 %i.e to i1
  br i1 %i.h, label %bb.b, label %bb.d, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !6037, !noundef !8 ; 3 uses
  %i.k = load i64, ptr %0, align 8, !range !13, !alias.scope !6037, !noundef !8
  %i.l = sub i64 %i.k, %i.j
  %i.m = icmp ugt i64 %i.g, %i.l
  br i1 %i.m, label %bb.c, label %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups14PositionLookupE14extend_trustedQINtNtB6_9into_iter8IntoIterBG_EEBM_.exit, !prof !11

bb.c:                                             ; preds = %bb.b
  call void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.j, i64 noundef %i.g, i64 noundef 8, i64 noundef 40)
  %.pre.i = load i64, ptr %i.i, align 8, !alias.scope !6035
  br label %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups14PositionLookupE14extend_trustedQINtNtB6_9into_iter8IntoIterBG_EEBM_.exit

bb.d:                                             ; preds = %bb.a
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !6035
  unreachable

_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups14PositionLookupE14extend_trustedQINtNtB6_9into_iter8IntoIterBG_EEBM_.exit: ; preds = %bb.b, %bb.c
  %i.n = phi i64 [ %i.j, %bb.b ], [ %.pre.i, %bb.c ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !6035, !nonnull !8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6038
  store ptr %i.i, ptr %i.a, align 8, !noalias !6039
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.n, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !6039
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.p, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !6039
  call void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter6traits8iteratorQINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups14PositionLookupENtB6_8Iterator4folduNCINvNvB2D_8for_each4callB1F_NCINvMsk_BW_INtBW_3VecB1F_E14extend_trustedBQ_E0E0EB1L_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !6040
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6038
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB6_3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups18SubstitutionLookupEINtB4_10SpecExtendBT_QINtNtB6_9into_iter8IntoIterBT_EE11spec_extendBZ_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6049)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %1, ptr %i.c, align 8, !noalias !6050
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6050
  call void @_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter6traits8iteratorQINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups18SubstitutionLookupENtB5_8Iterator9size_hintB1K_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c), !noalias !6049
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !14, !noalias !6050, !noundef !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noalias !6050 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6050
  %i.h = trunc nuw i64 %i.e to i1
  br i1 %i.h, label %bb.b, label %bb.d, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !6051, !noundef !8 ; 3 uses
  %i.k = load i64, ptr %0, align 8, !range !13, !alias.scope !6051, !noundef !8
  %i.l = sub i64 %i.k, %i.j
  %i.m = icmp ugt i64 %i.g, %i.l
  br i1 %i.m, label %bb.c, label %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups18SubstitutionLookupE14extend_trustedQINtNtB6_9into_iter8IntoIterBG_EEBM_.exit, !prof !11

bb.c:                                             ; preds = %bb.b
  call void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.j, i64 noundef %i.g, i64 noundef 8, i64 noundef 40)
  %.pre.i = load i64, ptr %i.i, align 8, !alias.scope !6049
  br label %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups18SubstitutionLookupE14extend_trustedQINtNtB6_9into_iter8IntoIterBG_EEBM_.exit

bb.d:                                             ; preds = %bb.a
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !6049
  unreachable

_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups18SubstitutionLookupE14extend_trustedQINtNtB6_9into_iter8IntoIterBG_EEBM_.exit: ; preds = %bb.b, %bb.c
  %i.n = phi i64 [ %i.j, %bb.b ], [ %.pre.i, %bb.c ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !6049, !nonnull !8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6052
  store ptr %i.i, ptr %i.a, align 8, !noalias !6053
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.n, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !6053
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.p, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !6053
  call void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter6traits8iteratorQINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups18SubstitutionLookupENtB6_8Iterator4folduNCINvNvB2H_8for_each4callB1F_NCINvMsk_BW_INtBW_3VecB1F_E14extend_trustedBQ_E0E0EB1L_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !6054
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6052
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec16in_place_collectINtB6_3VecINtNtCs6WnK4nVnpEz_11write_fonts7offsets12OffsetMarkerNtNtNtB13_6tables4gpos14PositionLookupKj2_EEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterB1Q_ENvYB1Q_INtNtB3m_7convert4IntoBY_E4intoEE9from_iterCscScJTt9VrQp_6fea_rs(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvNtNtCsgCecv3eZDcN_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos14PositionLookupENvYB2l_INtNtB1f_7convert4IntoINtNtB2r_7offsets12OffsetMarkerB2l_Kj2_EE4intoEB3O_ECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec16in_place_collectINtB6_3VecINtNtCs6WnK4nVnpEz_11write_fonts7offsets12OffsetMarkerNtNtNtB13_6tables4gpos17CursivePosFormat1Kj2_EEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterB1Q_ENvYB1Q_INtNtB3p_7convert4IntoBY_E4intoEE9from_iterCscScJTt9VrQp_6fea_rs(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvNtNtCsgCecv3eZDcN_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos17CursivePosFormat1ENvYB2l_INtNtB1f_7convert4IntoINtNtB2r_7offsets12OffsetMarkerB2l_Kj2_EE4intoEB3R_ECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec16in_place_collectINtB6_3VecINtNtCs6WnK4nVnpEz_11write_fonts7offsets12OffsetMarkerNtNtNtB13_6tables4gpos17ExtensionSubtableKj2_EEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterB1Q_ENvYB1Q_INtNtB3p_7convert4IntoBY_E4intoEE9from_iterCscScJTt9VrQp_6fea_rs(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvNtNtCsgCecv3eZDcN_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos17ExtensionSubtableENvYB2l_INtNtB1f_7convert4IntoINtNtB2r_7offsets12OffsetMarkerB2l_Kj2_EE4intoEB3R_ECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %1)
  ret void
}

end_hunk_1
begin_hunk_2_@_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEEEIB10_IB1o_INtB12_7FlatMapIB28_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout11RangeRecordEINtNtB6_3map3MapINtNtNtBa_3ops5range14RangeInclusivetENvMB2z_B2x_3newENCNvMsd_B3U_NtB3U_15CoverageFormat24iter0EEEENtNtNtB8_6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs:bb.a
  %i.br = zext i1 %i.bp to i8
  store i8 %i.br, ptr %i.aj, align 4, !alias.scope !6842
  store i16 %i.bq, ptr %i.ai, align 8, !alias.scope !6842
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1L_5ChainINtNtB1N_7flatten7FlattenINtB3_8IntoIterINtNtB1N_6copied6CopiedINtNtNtB5_5slice4iter4IterBI_EEEEIB2s_IB2R_INtB2u_7FlatMapIB3t_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout11RangeRecordEINtNtB1N_3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMBK_BI_3newENCNvMsd_B4v_NtB4v_15CoverageFormat24iter0EEEENtNtNtB1P_6traits8iterator8Iterator4next0ECscScJTt9VrQp_6fea_rs.exit

_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtBe_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1y_9GlyphId163newENtNtNtBc_6traits8iterator8Iterator4nextINtNtBY_8function6FnOnceTQB5_EE9call_onceCscScJTt9VrQp_6fea_rs.exit.i19.i.i.i.i.i.i.i.i: ; preds = %bb.x, %bb.n
  %.lcssa45.i.i.i.i = phi i16 [ %i.bn, %bb.x ], [ %i.ba, %bb.n ] ; 3 uses
  %i.bs = icmp eq i16 %.lcssa45.i.i.i.i, -1
  %i.bt = add i16 %.lcssa45.i.i.i.i, 1
  %i.bu = zext i1 %i.bs to i8
  store i8 %i.bu, ptr %i.ah, align 2, !alias.scope !6843
  store i16 %i.bt, ptr %i.am, align 2, !alias.scope !6843
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1L_5ChainINtNtB1N_7flatten7FlattenINtB3_8IntoIterINtNtB1N_6copied6CopiedINtNtNtB5_5slice4iter4IterBI_EEEEIB2s_IB2R_INtB2u_7FlatMapIB3t_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout11RangeRecordEINtNtB1N_3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMBK_BI_3newENCNvMsd_B4v_NtB4v_15CoverageFormat24iter0EEEENtNtNtB1P_6traits8iterator8Iterator4next0ECscScJTt9VrQp_6fea_rs.exit

_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout11RangeRecordEINtNtB7_3map3MapINtNtNtBb_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB44_9GlyphId163newENCNvMsd_B2c_NtB2c_15CoverageFormat24iter0EEEINtB5_8FuseImplBY_E4nextCscScJTt9VrQp_6fea_rs.exit.thread.i.i.i.i: ; preds = %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout11RangeRecordEINtNtB7_3map3MapINtNtNtBb_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB44_9GlyphId163newENCNvMsd_B2c_NtB2c_15CoverageFormat24iter0EEEINtB5_8FuseImplBY_E4nextCscScJTt9VrQp_6fea_rs.exit.peel60.i.i.i.i, %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout11RangeRecordEINtNtB7_3map3MapINtNtNtBb_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB44_9GlyphId163newENCNvMsd_B2c_NtB2c_15CoverageFormat24iter0EEEINtB5_8FuseImplBY_E4nextCscScJTt9VrQp_6fea_rs.exit.peel.i.i.i.i, %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6844)
  %.not.i2.i.i.i.i = icmp eq i8 %i.af, -1
  br i1 %.not.i2.i.i.i.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1L_5ChainINtNtB1N_7flatten7FlattenINtB3_8IntoIterINtNtB1N_6copied6CopiedINtNtNtB5_5slice4iter4IterBI_EEEEIB2s_IB2R_INtB2u_7FlatMapIB3t_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout11RangeRecordEINtNtB1N_3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMBK_BI_3newENCNvMsd_B4v_NtB4v_15CoverageFormat24iter0EEEENtNtNtB1P_6traits8iterator8Iterator4next0ECscScJTt9VrQp_6fea_rs.exit, label %bb.y

bb.y:                                             ; preds = %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout11RangeRecordEINtNtB7_3map3MapINtNtNtBb_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB44_9GlyphId163newENCNvMsd_B2c_NtB2c_15CoverageFormat24iter0EEEINtB5_8FuseImplBY_E4nextCscScJTt9VrQp_6fea_rs.exit.thread.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6845)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6846)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6847)
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 3 uses
  %.promoted.i.i.i.i3.i.i.i.i = load ptr, ptr %i.bv, align 8, !alias.scope !6848 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bz = load ptr, ptr %i.by, align 8, !alias.scope !6848, !nonnull !8
  %.pre.i.i.i.i4.i.i.i.i = load i8, ptr %i.bx, align 4, !range !9, !alias.scope !6849
  switch i8 %.pre.i.i.i.i4.i.i.i.i, label %bb.ab [
    i8 2, label %bb.ac
    i8 0, label %._crit_edge.i.i.i5.i.i.i.i
  ]

._crit_edge.i.i.i5.i.i.i.i:                       ; preds = %bb.y
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 138
  %.pre.i.i.i6.i.i.i.i = load i16, ptr %i.bw, align 8, !alias.scope !6850
  %.pre1.i.i.i7.i.i.i.i = load i16, ptr %i.ca, align 2, !alias.scope !6851
  br label %bb.aa

bb.z:                                             ; preds = %bb.ad
  %i.cb = getelementptr inbounds nuw i8, ptr %i.cm, i64 6 ; 2 uses
  store ptr %i.cb, ptr %i.bv, align 8, !alias.scope !6852
  %.val.i.i.i.i.i.i13.i.i.i.i = load i32, ptr %i.cm, align 2, !noalias !6853 ; 3 uses
  %.sroa.0.0.insert.ext.i.i.i.i.i14.i.i.i.i = zext i32 %.val.i.i.i.i.i.i13.i.i.i.i to i48
  store i48 %.sroa.0.0.insert.ext.i.i.i.i.i14.i.i.i.i, ptr %i.bw, align 8, !alias.scope !6848
  %i.cc = trunc i32 %.val.i.i.i.i.i.i13.i.i.i.i to i16
  %i.cd = lshr i32 %.val.i.i.i.i.i.i13.i.i.i.i, 16
  %i.ce = trunc nuw i32 %i.cd to i16
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge.i.i.i5.i.i.i.i
  %i.cf = phi i16 [ %i.ce, %bb.z ], [ %.pre1.i.i.i7.i.i.i.i, %._crit_edge.i.i.i5.i.i.i.i ]
  %i.cg = phi i16 [ %i.cc, %bb.z ], [ %.pre.i.i.i6.i.i.i.i, %._crit_edge.i.i.i5.i.i.i.i ] ; 4 uses
  %i.ch = phi ptr [ %i.cb, %bb.z ], [ %.promoted.i.i.i.i3.i.i.i.i, %._crit_edge.i.i.i5.i.i.i.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6854)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6855)
  %.not.i.i.i.i.i.i.i.i8.i.i.i.i = icmp ugt i16 %i.cg, %i.cf
  br i1 %.not.i.i.i.i.i.i.i.i8.i.i.i.i, label %bb.ab, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB21_9GlyphId163newEB2C_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECscScJTt9VrQp_6fea_rs.exit.i.i.i.i9.i.i.i.i

bb.ab:                                            ; preds = %bb.aa, %bb.y
  %i.ci = phi ptr [ %i.ch, %bb.aa ], [ %.promoted.i.i.i.i3.i.i.i.i, %bb.y ]
  store i8 2, ptr %i.bx, align 4, !alias.scope !6849
  br label %bb.ac

_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB21_9GlyphId163newEB2C_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECscScJTt9VrQp_6fea_rs.exit.i.i.i.i9.i.i.i.i: ; preds = %bb.aa
  %i.cj = icmp eq i16 %i.cg, -1
  %i.ck = add i16 %i.cg, 1
  %i.cl = zext i1 %i.cj to i8
  store i8 %i.cl, ptr %i.bx, align 4, !alias.scope !6856
  store i16 %i.ck, ptr %i.bw, align 8, !alias.scope !6856
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1L_5ChainINtNtB1N_7flatten7FlattenINtB3_8IntoIterINtNtB1N_6copied6CopiedINtNtNtB5_5slice4iter4IterBI_EEEEIB2s_IB2R_INtB2u_7FlatMapIB3t_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout11RangeRecordEINtNtB1N_3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMBK_BI_3newENCNvMsd_B4v_NtB4v_15CoverageFormat24iter0EEEENtNtNtB1P_6traits8iterator8Iterator4next0ECscScJTt9VrQp_6fea_rs.exit

bb.ac:                                            ; preds = %bb.ab, %bb.y
  %i.cm = phi ptr [ %.promoted.i.i.i.i3.i.i.i.i, %bb.y ], [ %i.ci, %bb.ab ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6857)
  %.not.i.i.i.i.i12.i.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i.i.i12.i.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6858)
  %i.cn = icmp eq ptr %i.cm, %i.bz
  br i1 %i.cn, label %bb.ae, label %bb.z

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 142 ; 2 uses
  %cond.i15.i.i.i.i = icmp eq i8 %i.af, 0
  br i1 %cond.i15.i.i.i.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6859)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6860)
  %i.cq = load i16, ptr %i.co, align 2, !alias.scope !6861, !noundef !8 ; 4 uses
  %i.cr = load i16, ptr %i.cp, align 8, !alias.scope !6862, !noundef !8
  %.not.i.i.i.i18.i.i.i.i16.i.i.i.i = icmp ugt i16 %i.cq, %i.cr
  br i1 %.not.i.i.i.i18.i.i.i.i16.i.i.i.i, label %bb.ag, label %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtBe_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1y_9GlyphId163newENtNtNtBc_6traits8iterator8Iterator4nextINtNtBY_8function6FnOnceTQB5_EE9call_onceCscScJTt9VrQp_6fea_rs.exit.i19.i.i.i.i17.i.i.i.i

_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtBe_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1y_9GlyphId163newENtNtNtBc_6traits8iterator8Iterator4nextINtNtBY_8function6FnOnceTQB5_EE9call_onceCscScJTt9VrQp_6fea_rs.exit.i19.i.i.i.i17.i.i.i.i: ; preds = %bb.af
  %i.cs = icmp eq i16 %i.cq, -1
  %i.ct = add i16 %i.cq, 1
  %i.cu = zext i1 %i.cs to i8
  store i8 %i.cu, ptr %i.ae, align 2, !alias.scope !6863
  store i16 %i.ct, ptr %i.co, align 2, !alias.scope !6863
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1L_5ChainINtNtB1N_7flatten7FlattenINtB3_8IntoIterINtNtB1N_6copied6CopiedINtNtNtB5_5slice4iter4IterBI_EEEEIB2s_IB2R_INtB2u_7FlatMapIB3t_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout11RangeRecordEINtNtB1N_3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMBK_BI_3newENCNvMsd_B4v_NtB4v_15CoverageFormat24iter0EEEENtNtNtB1P_6traits8iterator8Iterator4next0ECscScJTt9VrQp_6fea_rs.exit

bb.ag:                                            ; preds = %bb.af, %bb.ae
  store i8 -1, ptr %i.ae, align 2, !alias.scope !6864
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1L_5ChainINtNtB1N_7flatten7FlattenINtB3_8IntoIterINtNtB1N_6copied6CopiedINtNtNtB5_5slice4iter4IterBI_EEEEIB2s_IB2R_INtB2u_7FlatMapIB3t_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout11RangeRecordEINtNtB1N_3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMBK_BI_3newENCNvMsd_B4v_NtB4v_15CoverageFormat24iter0EEEENtNtNtB1P_6traits8iterator8Iterator4next0ECscScJTt9VrQp_6fea_rs.exit

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1L_5ChainINtNtB1N_7flatten7FlattenINtB3_8IntoIterINtNtB1N_6copied6CopiedINtNtNtB5_5slice4iter4IterBI_EEEEIB2s_IB2R_INtB2u_7FlatMapIB3t_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout11RangeRecordEINtNtB1N_3map3MapINtNtNtB5_3ops5range14RangeInclusivetENvMBK_BI_3newENCNvMsd_B4v_NtB4v_15CoverageFormat24iter0EEEENtNtNtB1P_6traits8iterator8Iterator4next0ECscScJTt9VrQp_6fea_rs.exit: ; preds = %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterINtNtBa_6copied6CopiedINtNtNtBe_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCscScJTt9VrQp_6fea_rs.exit.i, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain17and_then_or_clearINtNtB4_7flatten7FlattenINtNtB8_6option8IntoIterINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEEEB2C_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECscScJTt9VrQp_6fea_rs.exit.thread3, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB21_9GlyphId163newEB2C_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECscScJTt9VrQp_6fea_rs.exit.i.i.i.i.i.i.i.i, %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtBe_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1y_9GlyphId163newENtNtNtBc_6traits8iterator8Iterator4nextINtNtBY_8function6FnOnceTQB5_EE9call_onceCscScJTt9VrQp_6fea_rs.exit.i19.i.i.i.i.i.i.i.i, %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout11RangeRecordEINtNtB7_3map3MapINtNtNtBb_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB44_9GlyphId163newENCNvMsd_B2c_NtB2c_15CoverageFormat24iter0EEEINtB5_8FuseImplBY_E4nextCscScJTt9VrQp_6fea_rs.exit.thread.i.i.i.i, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB21_9GlyphId163newEB2C_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECscScJTt9VrQp_6fea_rs.exit.i.i.i.i9.i.i.i.i, %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtBe_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1y_9GlyphId163newENtNtNtBc_6traits8iterator8Iterator4nextINtNtBY_8function6FnOnceTQB5_EE9call_onceCscScJTt9VrQp_6fea_rs.exit.i19.i.i.i.i17.i.i.i.i, %bb.ag
  %.pn4.i = phi i16 [ 1, %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterINtNtBa_6copied6CopiedINtNtNtBe_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCscScJTt9VrQp_6fea_rs.exit.i ], [ 0, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain17and_then_or_clearINtNtB4_7flatten7FlattenINtNtB8_6option8IntoIterINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEEEB2C_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECscScJTt9VrQp_6fea_rs.exit.thread3 ], [ 1, %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtBe_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1y_9GlyphId163newENtNtNtBc_6traits8iterator8Iterator4nextINtNtBY_8function6FnOnceTQB5_EE9call_onceCscScJTt9VrQp_6fea_rs.exit.i19.i.i.i.i.i.i.i.i ], [ 1, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB21_9GlyphId163newEB2C_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECscScJTt9VrQp_6fea_rs.exit.i.i.i.i.i.i.i.i ], [ 0, %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout11RangeRecordEINtNtB7_3map3MapINtNtNtBb_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB44_9GlyphId163newENCNvMsd_B2c_NtB2c_15CoverageFormat24iter0EEEINtB5_8FuseImplBY_E4nextCscScJTt9VrQp_6fea_rs.exit.thread.i.i.i.i ], [ 0, %bb.ag ], [ 1, %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtBe_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1y_9GlyphId163newENtNtNtBc_6traits8iterator8Iterator4nextINtNtBY_8function6FnOnceTQB5_EE9call_onceCscScJTt9VrQp_6fea_rs.exit.i19.i.i.i.i17.i.i.i.i ], [ 1, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB21_9GlyphId163newEB2C_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECscScJTt9VrQp_6fea_rs.exit.i.i.i.i9.i.i.i.i ]
  %.pn2.i = phi i16 [ %i.ac, %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterINtNtBa_6copied6CopiedINtNtNtBe_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCscScJTt9VrQp_6fea_rs.exit.i ], [ undef, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain17and_then_or_clearINtNtB4_7flatten7FlattenINtNtB8_6option8IntoIterINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEEEB2C_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECscScJTt9VrQp_6fea_rs.exit.thread3 ], [ %.lcssa45.i.i.i.i, %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtBe_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1y_9GlyphId163newENtNtNtBc_6traits8iterator8Iterator4nextINtNtBY_8function6FnOnceTQB5_EE9call_onceCscScJTt9VrQp_6fea_rs.exit.i19.i.i.i.i.i.i.i.i ], [ %.lcssa.i.i.i.i, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB21_9GlyphId163newEB2C_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECscScJTt9VrQp_6fea_rs.exit.i.i.i.i.i.i.i.i ], [ undef, %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout11RangeRecordEINtNtB7_3map3MapINtNtNtBb_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB44_9GlyphId163newENCNvMsd_B2c_NtB2c_15CoverageFormat24iter0EEEINtB5_8FuseImplBY_E4nextCscScJTt9VrQp_6fea_rs.exit.thread.i.i.i.i ], [ undef, %bb.ag ], [ %i.cq, %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtBe_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB1y_9GlyphId163newENtNtNtBc_6traits8iterator8Iterator4nextINtNtBY_8function6FnOnceTQB5_EE9call_onceCscScJTt9VrQp_6fea_rs.exit.i19.i.i.i.i17.i.i.i.i ], [ %i.cg, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB21_9GlyphId163newEB2C_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECscScJTt9VrQp_6fea_rs.exit.i.i.i.i9.i.i.i.i ]
  %.pn.i = insertvalue { i16, i16 } poison, i16 %.pn4.i, 0
  %.merged.i = insertvalue { i16, i16 } %.pn.i, i16 %.pn2.i, 1
  ret { i16, i16 } %.merged.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEEEIB10_IB1o_INtB12_7FlatMapIB28_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout11RangeRecordEINtNtB6_3map3MapINtNtNtBa_3ops5range14RangeInclusivetENvMB2z_B2x_3newENCNvMsd_B3U_NtB3U_15CoverageFormat24iter0EEEENtNtNtB8_6traits8iterator8Iterator9size_hintCscScJTt9VrQp_6fea_rs(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.5 = alloca i64, align 8                  ; 6 uses
  %.sroa.8 = alloca i64, align 8                  ; 4 uses
  %i.f = load i64, ptr %1, align 8, !range !38, !noundef !8 ; 3 uses
  %.not = icmp eq i64 %i.f, 2
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 146
  %i.h = load i8, ptr %i.g, align 2, !range !41, !noundef !8
  %.not7 = icmp eq i8 %i.h, -2                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not7, label %bb.m, label %bb.g

bb.c:                                             ; preds = %bb.a
  br i1 %.not7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call fastcc void @_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout11RangeRecordEINtNtB7_3map3MapINtNtNtBb_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB40_9GlyphId163newENCNvMsd_B28_NtB28_15CoverageFormat24iter0EEENtNtNtB9_6traits8iterator8Iterator9size_hintCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.i) #26
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.k, align 8
  br label %bb.f

bb.f:                                             ; preds = %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEEENtNtNtB9_6traits8iterator8Iterator9size_hintCscScJTt9VrQp_6fea_rs.exit, %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEEENtNtNtB9_6traits8iterator8Iterator9size_hintCscScJTt9VrQp_6fea_rs.exit33, %bb.e, %bb.d
  ret void

bb.g:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6885)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6886)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6887)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6888)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6889
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !6890, !noundef !8
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENtNtNtB8_6traits8iterator8Iterator9size_hintCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) dereferenceable_or_null(16) %i.m), !noalias !6891
  %.pre.i.i = load i64, ptr %i.d, align 8, !noalias !6889
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre71.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !range !14, !noalias !6889
  %.phi.trans.insert72.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.pre73.i.i = load i64, ptr %.phi.trans.insert72.i.i, align 8, !noalias !6889
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit.i.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit.i.i: ; preds = %bb.h, %bb.g
  %i.o = phi i64 [ %.pre73.i.i, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %i.p = phi i64 [ %.pre71.i.i, %bb.h ], [ 1, %bb.g ] ; 2 uses
  %i.q = phi i64 [ %.pre.i.i, %bb.h ], [ 0, %bb.g ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6889
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6889
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !6890, !noundef !8
  %.not53.i.i = icmp eq ptr %i.s, null
  br i1 %.not53.i.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit60.i.i, label %bb.i

bb.i:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit.i.i
  call void @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENtNtNtB8_6traits8iterator8Iterator9size_hintCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) dereferenceable_or_null(16) %i.r), !noalias !6892
  %.pre74.i.i = load i64, ptr %i.c, align 8, !noalias !6889
  %.phi.trans.insert75.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre76.i.i = load i64, ptr %.phi.trans.insert75.i.i, align 8, !range !14, !noalias !6889
  %.phi.trans.insert77.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.pre78.i.i = load i64, ptr %.phi.trans.insert77.i.i, align 8, !noalias !6889
  %i.t = call i64 @llvm.uadd.sat.i64(i64 %i.q, i64 %.pre74.i.i)
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit60.i.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit60.i.i: ; preds = %bb.i, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit.i.i
  %i.u = phi i64 [ %.pre78.i.i, %bb.i ], [ 0, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit.i.i ]
  %.fr38 = phi i64 [ %.pre76.i.i, %bb.i ], [ 1, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit.i.i ] ; 2 uses
  %i.v = phi i64 [ %i.t, %bb.i ], [ %i.q, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6889
  %i.w = trunc nuw i64 %i.f to i1
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit60.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i = load ptr, ptr %i.x, align 8, !alias.scope !6890, !noundef !8
  %.not70.i.i = icmp eq ptr %.val.i.i, null
  %i.y = trunc nuw i64 %i.p to i1
  %i.z = trunc nuw i64 %.fr38 to i1
  %op.rdx36 = select i1 %.not70.i.i, i1 %i.y, i1 false
  %op.rdx37 = select i1 %op.rdx36, i1 %i.z, i1 false
  br i1 %op.rdx37, label %bb.l, label %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEEENtNtNtB9_6traits8iterator8Iterator9size_hintCscScJTt9VrQp_6fea_rs.exit

bb.k:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit60.i.i
  %i.aa = and i64 %.fr38, %i.p
  %or.cond54.not.i.i = icmp eq i64 %i.aa, 0
  br i1 %or.cond54.not.i.i, label %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEEENtNtNtB9_6traits8iterator8Iterator9size_hintCscScJTt9VrQp_6fea_rs.exit, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ab = add i64 %i.u, %i.o                      ; 2 uses
  %i.ac = icmp uge i64 %i.ab, %i.o
  %.55.i.i = zext i1 %i.ac to i64
  store i64 %.55.i.i, ptr %.sroa.5, align 8, !alias.scope !6893
  br label %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEEENtNtNtB9_6traits8iterator8Iterator9size_hintCscScJTt9VrQp_6fea_rs.exit

_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEEENtNtNtB9_6traits8iterator8Iterator9size_hintCscScJTt9VrQp_6fea_rs.exit: ; preds = %bb.j, %bb.k, %bb.l
  %.sink80.i.i.sroa.phi = phi ptr [ %.sroa.8, %bb.l ], [ %.sroa.5, %bb.k ], [ %.sroa.5, %bb.j ]
  %.sink.i.i = phi i64 [ %i.ab, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ]
  store i64 %.sink.i.i, ptr %.sink80.i.i.sroa.phi, align 8, !alias.scope !6893
  %.sroa.5.0..sroa.5.0..sroa.5.0..sroa.5.8. = load i64, ptr %.sroa.5, align 8, !range !14, !noundef !8
  %.sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.16. = load i64, ptr %.sroa.8, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call fastcc void @_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout11RangeRecordEINtNtB7_3map3MapINtNtNtBb_3ops5range14RangeInclusivetENvMNtCsbZq13ASDQ8l_10font_types8glyph_idNtB40_9GlyphId163newENCNvMsd_B28_NtB28_15CoverageFormat24iter0EEENtNtNtB9_6traits8iterator8Iterator9size_hintCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.l) #26
  %i.ad = load i64, ptr %i.e, align 8, !noundef !8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !range !14, !noundef !8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ah = load i64, ptr %i.ag, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ai = call i64 @llvm.uadd.sat.i64(i64 %i.v, i64 %i.ad)
  %i.aj = and i64 %i.af, %.sroa.5.0..sroa.5.0..sroa.5.0..sroa.5.8.
  %or.cond.not = icmp ne i64 %i.aj, 0             ; 2 uses
  %i.ak = add i64 %i.ah, %.sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.16. ; 2 uses
  %i.al = icmp uge i64 %i.ak, %.sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.16.
  %.sroa.46.0 = select i1 %or.cond.not, i64 %i.ak, i64 undef
  %narrow = select i1 %or.cond.not, i1 %i.al, i1 false
  %.sroa.05.0 = zext i1 %narrow to i64
  store i64 %i.ai, ptr %0, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.05.0, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.46.0, ptr %i.an, align 8
  br label %bb.f

bb.m:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6894)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6895)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6896)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6897)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6898
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !6899, !noundef !8
  %.not.i.i10 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i10, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit.i.i16, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENtNtNtB8_6traits8iterator8Iterator9size_hintCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) dereferenceable_or_null(16) %i.ao), !noalias !6900
  %.pre.i.i11 = load i64, ptr %i.b, align 8, !noalias !6898
  %.phi.trans.insert.i.i12 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre71.i.i13 = load i64, ptr %.phi.trans.insert.i.i12, align 8, !range !14, !noalias !6898
  %.phi.trans.insert72.i.i14 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.pre73.i.i15 = load i64, ptr %.phi.trans.insert72.i.i14, align 8, !noalias !6898
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit.i.i16

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit.i.i16: ; preds = %bb.n, %bb.m
  %i.aq = phi i64 [ %.pre73.i.i15, %bb.n ], [ 0, %bb.m ] ; 2 uses
  %i.ar = phi i64 [ %.pre71.i.i13, %bb.n ], [ 1, %bb.m ] ; 2 uses
  %i.as = phi i64 [ %.pre.i.i11, %bb.n ], [ 0, %bb.m ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6898
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6898
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !6899, !noundef !8
  %.not53.i.i17 = icmp eq ptr %i.au, null
  br i1 %.not53.i.i17, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit60.i.i23, label %bb.o

bb.o:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit.i.i16
  call void @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENtNtNtB8_6traits8iterator8Iterator9size_hintCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) dereferenceable_or_null(16) %i.at), !noalias !6901
  %.pre74.i.i18 = load i64, ptr %i.a, align 8, !noalias !6898
  %.phi.trans.insert75.i.i19 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre76.i.i20 = load i64, ptr %.phi.trans.insert75.i.i19, align 8, !range !14, !noalias !6898
  %.phi.trans.insert77.i.i21 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.pre78.i.i22 = load i64, ptr %.phi.trans.insert77.i.i21, align 8, !noalias !6898
  %i.av = call i64 @llvm.uadd.sat.i64(i64 %i.as, i64 %.pre74.i.i18)
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit60.i.i23

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit60.i.i23: ; preds = %bb.o, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit.i.i16
  %i.aw = phi i64 [ %.pre78.i.i22, %bb.o ], [ 0, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit.i.i16 ]
  %.fr39 = phi i64 [ %.pre76.i.i20, %bb.o ], [ 1, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit.i.i16 ] ; 2 uses
  %i.ax = phi i64 [ %i.av, %bb.o ], [ %i.as, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit.i.i16 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6898
  %i.ay = trunc nuw i64 %i.f to i1
  br i1 %i.ay, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit60.i.i23
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i28 = load ptr, ptr %i.az, align 8, !alias.scope !6899, !noundef !8
  %.not70.i.i29 = icmp eq ptr %.val.i.i28, null
  %i.ba = trunc nuw i64 %i.ar to i1
  %i.bb = trunc nuw i64 %.fr39 to i1
  %op.rdx = select i1 %.not70.i.i29, i1 %i.ba, i1 false
  %op.rdx35 = select i1 %op.rdx, i1 %i.bb, i1 false
  br i1 %op.rdx35, label %bb.s, label %bb.r

bb.q:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECscScJTt9VrQp_6fea_rs.exit60.i.i23
  %i.bc = and i64 %.fr39, %i.ar
  %or.cond54.not.i.i24 = icmp eq i64 %i.bc, 0
  br i1 %or.cond54.not.i.i24, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  store i64 %i.ax, ptr %0, align 8, !alias.scope !6902
  br label %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEEENtNtNtB9_6traits8iterator8Iterator9size_hintCscScJTt9VrQp_6fea_rs.exit33

bb.s:                                             ; preds = %bb.q, %bb.p
  %i.bd = add i64 %i.aw, %i.aq                    ; 2 uses
  %i.be = icmp uge i64 %i.bd, %i.aq
  %.55.i.i25 = zext i1 %i.be to i64
  store i64 %i.ax, ptr %0, align 8, !alias.scope !6902
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.55.i.i25, ptr %i.bf, align 8, !alias.scope !6902
  br label %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEEENtNtNtB9_6traits8iterator8Iterator9size_hintCscScJTt9VrQp_6fea_rs.exit33

_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEEENtNtNtB9_6traits8iterator8Iterator9size_hintCscScJTt9VrQp_6fea_rs.exit33: ; preds = %bb.r, %bb.s
  %.sink80.i.i26 = phi i64 [ 16, %bb.s ], [ 8, %bb.r ]
  %.sink.i.i27 = phi i64 [ %i.bd, %bb.s ], [ 0, %bb.r ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 %.sink80.i.i26
  store i64 %.sink.i.i27, ptr %i.bg, align 8, !alias.scope !6902
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtCs6WnK4nVnpEz_11write_fonts7offsets12OffsetMarkerNtNtNtBK_6tables6layout9ConditionKj3_EENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCscScJTt9VrQp_6fea_rs(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.g = load i64, ptr %i.d, align 8, !noundef !8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6916
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6916
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 1152921504606846976) %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8), !noalias !6916
  %i.h = load i64, ptr %i.a, align 8, !range !14, !noalias !6916, !noundef !8
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !32, !noalias !6916, !noundef !8 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscScJTt9VrQp_6fea_rs.exit, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noalias !6916
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #23, !noalias !6916
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscScJTt9VrQp_6fea_rs.exit: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !6916, !nonnull !8, !noundef !8 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o), !noalias !6916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6916
  store i64 %i.k, ptr %i.c, align 8, !noalias !6916
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !6916
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.g
  %i.s = icmp eq i64 %i.k, 0
  br i1 %i.s, label %_RINvXNvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inINtNtCs6WnK4nVnpEz_11write_fonts7offsets12OffsetMarkerNtNtNtBP_6tables6layout9ConditionKj3_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECscScJTt9VrQp_6fea_rs.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscScJTt9VrQp_6fea_rs.exit, %bb.e
  %.sroa.01.015 = phi ptr [ %i.v, %bb.e ], [ %i.f, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscScJTt9VrQp_6fea_rs.exit ] ; 3 uses
  %.sroa.7.014 = phi i64 [ %i.w, %bb.e ], [ 0, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscScJTt9VrQp_6fea_rs.exit ] ; 3 uses
  %.sroa.10.013 = phi i64 [ %i.t, %bb.e ], [ %i.k, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscScJTt9VrQp_6fea_rs.exit ]
  %i.t = add i64 %.sroa.10.013, -1                ; 2 uses
  %i.u = icmp eq ptr %.sroa.01.015, %i.r
  br i1 %i.u, label %_RINvXNvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inINtNtCs6WnK4nVnpEz_11write_fonts7offsets12OffsetMarkerNtNtNtBP_6tables6layout9ConditionKj3_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECscScJTt9VrQp_6fea_rs.exit, label %bb.c

.loopexit:                                        ; preds = %bb.c
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.c:                                             ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.01.015, i64 8
  %i.w = add nuw nsw i64 %.sroa.7.014, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6917)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6918), !noalias !6919
  %i.x = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout9ConditionE13new_uninit_inCscScJTt9VrQp_6fea_rs()
          to label %.noexc unwind label %.loopexit, !inline_history !6910 ; 3 uses

.noexc:                                           ; preds = %bb.c
  %i.y = load ptr, ptr %.sroa.01.015, align 8, !alias.scope !6920, !noalias !6919, !nonnull !8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6921
  invoke fastcc void @_RNvXscb_NtNtCs6WnK4nVnpEz_11write_fonts6tables6layoutNtB6_9ConditionNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.y) #26
          to label %bb.e unwind label %bb.d, !noalias !6922, !inline_history !6913

bb.d:                                             ; preds = %.noexc
  %i.z = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.x, i64 noundef 40, i64 noundef 8) #24, !noalias !6922, !inline_history !6914
  br label %bb.g

bb.e:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.x, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false), !noalias !6921
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6921
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.7.014
  store ptr %i.x, ptr %i.aa, align 8, !noalias !6919
  %i.ab = icmp eq i64 %i.t, 0
  br i1 %i.ab, label %_RINvXNvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inINtNtCs6WnK4nVnpEz_11write_fonts7offsets12OffsetMarkerNtNtNtBP_6tables6layout9ConditionKj3_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECscScJTt9VrQp_6fea_rs.exit, label %.lr.ph

bb.f:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22, !noalias !6919, !inline_history !6915
  unreachable

bb.g:                                             ; preds = %.loopexit, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.z, %bb.d ], [ %lpad.loopexit, %.loopexit ]
  store i64 %.sroa.7.014, ptr %i.q, align 8, !noalias !6919
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtCs6WnK4nVnpEz_11write_fonts7offsets12OffsetMarkerNtNtNtB1d_6tables6layout9ConditionKj3_EEECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #21
          to label %bb.h unwind label %bb.f, !noalias !6919, !inline_history !6915

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %eh.lpad-body

_RINvXNvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inINtNtCs6WnK4nVnpEz_11write_fonts7offsets12OffsetMarkerNtNtNtBP_6tables6layout9ConditionKj3_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECscScJTt9VrQp_6fea_rs.exit: ; preds = %bb.e, %.lr.ph, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscScJTt9VrQp_6fea_rs.exit
  store i64 %i.g, ptr %i.q, align 8, !noalias !6916
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !6923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6916
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtCs6WnK4nVnpEz_11write_fonts7offsets12OffsetMarkerNtNtNtBK_6tables6layout9ConditionKj4_EENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCscScJTt9VrQp_6fea_rs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.g = load i64, ptr %i.d, align 8, !noundef !8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6931)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6932
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6932
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, 1152921504606846976) %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8), !noalias !6932
  %i.h = load i64, ptr %i.b, align 8, !range !14, !noalias !6932, !noundef !8
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !32, !noalias !6932, !noundef !8 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscScJTt9VrQp_6fea_rs.exit.i, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noalias !6932
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #23, !noalias !6932
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscScJTt9VrQp_6fea_rs.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !6932, !nonnull !8, !noundef !8 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6932
  store i64 %i.k, ptr %i.c, align 8, !noalias !6932
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !6932
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.g
  %i.s = icmp eq i64 %i.k, 0
  br i1 %i.s, label %_RINvXNvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inINtNtCs6WnK4nVnpEz_11write_fonts7offsets12OffsetMarkerNtNtNtBP_6tables6layout9ConditionKj4_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECscScJTt9VrQp_6fea_rs.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscScJTt9VrQp_6fea_rs.exit.i, %bb.e
  %.sroa.013.026.i = phi ptr [ %i.v, %bb.e ], [ %i.f, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscScJTt9VrQp_6fea_rs.exit.i ] ; 3 uses
  %.sroa.7.025.i = phi i64 [ %i.w, %bb.e ], [ 0, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscScJTt9VrQp_6fea_rs.exit.i ] ; 3 uses
  %.sroa.10.024.i = phi i64 [ %i.t, %bb.e ], [ %i.k, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCscScJTt9VrQp_6fea_rs.exit.i ]
  %i.t = add i64 %.sroa.10.024.i, -1              ; 2 uses
  %i.u = icmp eq ptr %.sroa.013.026.i, %i.r
  br i1 %i.u, label %_RINvXNvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inINtNtCs6WnK4nVnpEz_11write_fonts7offsets12OffsetMarkerNtNtNtBP_6tables6layout9ConditionKj4_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECscScJTt9VrQp_6fea_rs.exit, label %bb.c

.loopexit.i:                                      ; preds = %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.c:                                             ; preds = %.lr.ph.i
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.013.026.i, i64 8
  %i.w = add nuw nsw i64 %.sroa.7.025.i, 1
  %.val12.i = load ptr, ptr %.sroa.013.026.i, align 8, !alias.scope !6931 ; 2 uses
  %i.x = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout9ConditionE13new_uninit_inCscScJTt9VrQp_6fea_rs()
          to label %.noexc.i unwind label %.loopexit.i, !noalias !6932 ; 3 uses

.noexc.i:                                         ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val12.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6933
  invoke fastcc void @_RNvXscb_NtNtCs6WnK4nVnpEz_11write_fonts6tables6layoutNtB6_9ConditionNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.val12.i) #26
          to label %bb.e unwind label %bb.d, !noalias !6932, !inline_history !6929

bb.d:                                             ; preds = %.noexc.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.x, i64 noundef 40, i64 noundef 8) #24, !noalias !6932, !inline_history !6930
  br label %bb.g

end_hunk_2
