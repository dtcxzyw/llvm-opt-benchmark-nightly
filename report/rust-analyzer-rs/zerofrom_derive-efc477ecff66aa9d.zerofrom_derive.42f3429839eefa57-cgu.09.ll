Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/zerofrom_derive-efc477ecff66aa9d.zerofrom_derive.42f3429839eefa57-cgu.09?download=true
inline.NumInlined: 23
inline.NumDeleted: 16
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB1F_8adapters3map12map_try_foldBX_BX_B2D_INtNtB1H_6result6ResultB2D_zENCINvNtNtB11_3gen4fold8fold_vecBX_NtNvCs5KndGQj2IFn_15zerofrom_derive16replace_lifetime15ReplaceLifetimeNvYB56_NtB4D_4Fold14fold_attributeE0NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0E0B45_EB5a_(ptr nofree align 8 captures(none) %0, ptr %1, ptr %2, ptr align 8 %3, ptr %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [272 x i8], align 8               ; 3 uses
  %i.b = alloca [256 x i8], align 8               ; 2 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr %3, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %4, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.e, align 8
  %i.h = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not9 = icmp eq ptr %i.h, %i.g
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %i.h, %.lr.ph ], [ %i.t, %bb.b ] ; 2 uses
  %.sroa.0.011 = phi ptr [ %1, %.lr.ph ], [ %i.q, %bb.b ] ; 2 uses
  %.sroa.4.010 = phi ptr [ %2, %.lr.ph ], [ %i.r, %bb.b ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.b, ptr noundef nonnull align 8 dereferenceable(256) %i.k, i64 256, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 256
  store ptr %i.l, ptr %i.f, align 8
  store ptr %.sroa.0.011, ptr %i.a, align 8
  store ptr %.sroa.4.010, ptr %i.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.j, ptr noundef nonnull align 8 dereferenceable(256) %i.b, i64 256, i1 false)
  %i.m = call { ptr, ptr } @_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeBZ_INtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1D_zENCINvNtNtB13_3gen4fold8fold_vecBZ_NtNvCs5KndGQj2IFn_15zerofrom_derive16replace_lifetime15ReplaceLifetimeNvYB3E_NtB3b_4Fold14fold_attributeE0NCINvNtB1I_16in_place_collect24write_in_place_with_dropBZ_E0E0B3I_(ptr nonnull align 8 %i.c, ptr %.sroa.0.011, ptr %.sroa.4.010, ptr nonnull align 8 %i.j) ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0
  %i.o = extractvalue { ptr, ptr } %i.m, 1
  %i.p = call { ptr, ptr } @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeEzENtNtNtB7_3ops9try_trait3Try6branchCs5KndGQj2IFn_15zerofrom_derive(ptr %i.n, ptr %i.o) ; 2 uses
  %i.q = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  %i.s = load ptr, ptr %i.e, align 8
  %i.t = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not = icmp eq ptr %i.t, %i.s
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.r, %bb.b ]
  %.sroa.0.0.lcssa = phi ptr [ %1, %bb.a ], [ %i.q, %bb.b ]
  %i.u = call { ptr, ptr } @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeEzENtNtNtB7_3ops9try_trait3Try11from_outputCs5KndGQj2IFn_15zerofrom_derive(ptr %.sroa.0.0.lcssa, ptr %.sroa.4.0.lcssa)
  ret { ptr, ptr } %i.u
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB1F_8adapters3map12map_try_foldBX_BX_B2D_INtNtB1H_6result6ResultB2D_zENCINvNtNtB11_3gen4fold8fold_vecBX_NtNvCs5KndGQj2IFn_15zerofrom_derive25replace_lifetime_and_type20ReplaceLifetimeAndTyNvYB56_NtB4D_4Fold14fold_attributeE0NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0E0B45_EB5a_(ptr nofree align 8 captures(none) %0, ptr %1, ptr %2, ptr align 8 %3, ptr %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [272 x i8], align 8               ; 3 uses
  %i.b = alloca [256 x i8], align 8               ; 2 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr %3, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %4, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.e, align 8
  %i.h = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not9 = icmp eq ptr %i.h, %i.g
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %i.h, %.lr.ph ], [ %i.t, %bb.b ] ; 2 uses
  %.sroa.0.011 = phi ptr [ %1, %.lr.ph ], [ %i.q, %bb.b ] ; 2 uses
  %.sroa.4.010 = phi ptr [ %2, %.lr.ph ], [ %i.r, %bb.b ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.b, ptr noundef nonnull align 8 dereferenceable(256) %i.k, i64 256, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 256
  store ptr %i.l, ptr %i.f, align 8
  store ptr %.sroa.0.011, ptr %i.a, align 8
  store ptr %.sroa.4.010, ptr %i.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.j, ptr noundef nonnull align 8 dereferenceable(256) %i.b, i64 256, i1 false)
  %i.m = call { ptr, ptr } @_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeBZ_INtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1D_zENCINvNtNtB13_3gen4fold8fold_vecBZ_NtNvCs5KndGQj2IFn_15zerofrom_derive25replace_lifetime_and_type20ReplaceLifetimeAndTyNvYB3E_NtB3b_4Fold14fold_attributeE0NCINvNtB1I_16in_place_collect24write_in_place_with_dropBZ_E0E0B3I_(ptr nonnull align 8 %i.c, ptr %.sroa.0.011, ptr %.sroa.4.010, ptr nonnull align 8 %i.j) ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0
  %i.o = extractvalue { ptr, ptr } %i.m, 1
  %i.p = call { ptr, ptr } @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeEzENtNtNtB7_3ops9try_trait3Try6branchCs5KndGQj2IFn_15zerofrom_derive(ptr %i.n, ptr %i.o) ; 2 uses
  %i.q = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  %i.s = load ptr, ptr %i.e, align 8
  %i.t = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not = icmp eq ptr %i.t, %i.s
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.r, %bb.b ]
  %.sroa.0.0.lcssa = phi ptr [ %1, %bb.a ], [ %i.q, %bb.b ]
  %i.u = call { ptr, ptr } @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeEzENtNtNtB7_3ops9try_trait3Try11from_outputCs5KndGQj2IFn_15zerofrom_derive(ptr %.sroa.0.0.lcssa, ptr %.sroa.4.0.lcssa)
  ret { ptr, ptr } %i.u
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsgFSQ9XOTBNe_3syn4expr3ArmENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB1z_8adapters3map12map_try_foldBX_BX_B2x_INtNtB1B_6result6ResultB2x_zENCINvNtNtB11_3gen4fold8fold_vecBX_NtNvCs5KndGQj2IFn_15zerofrom_derive16replace_lifetime15ReplaceLifetimeNvYB50_NtB4x_4Fold8fold_armE0NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0E0B3Z_EB54_(ptr nofree align 8 captures(none) %0, ptr %1, ptr %2, ptr align 8 %3, ptr %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [264 x i8], align 8               ; 3 uses
  %i.b = alloca [248 x i8], align 8               ; 2 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr %3, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %4, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.e, align 8
  %i.h = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not9 = icmp eq ptr %i.h, %i.g
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %i.h, %.lr.ph ], [ %i.t, %bb.b ] ; 2 uses
  %.sroa.0.011 = phi ptr [ %1, %.lr.ph ], [ %i.q, %bb.b ] ; 2 uses
  %.sroa.4.010 = phi ptr [ %2, %.lr.ph ], [ %i.r, %bb.b ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.b, ptr noundef nonnull align 8 dereferenceable(248) %i.k, i64 248, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 248
  store ptr %i.l, ptr %i.f, align 8
  store ptr %.sroa.0.011, ptr %i.a, align 8
  store ptr %.sroa.4.010, ptr %i.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.j, ptr noundef nonnull align 8 dereferenceable(248) %i.b, i64 248, i1 false)
  %i.m = call { ptr, ptr } @_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldNtNtCsgFSQ9XOTBNe_3syn4expr3ArmBZ_INtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1x_zENCINvNtNtB13_3gen4fold8fold_vecBZ_NtNvCs5KndGQj2IFn_15zerofrom_derive16replace_lifetime15ReplaceLifetimeNvYB3y_NtB35_4Fold8fold_armE0NCINvNtB1C_16in_place_collect24write_in_place_with_dropBZ_E0E0B3C_(ptr nonnull align 8 %i.c, ptr %.sroa.0.011, ptr %.sroa.4.010, ptr nonnull align 8 %i.j) ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0
  %i.o = extractvalue { ptr, ptr } %i.m, 1
  %i.p = call { ptr, ptr } @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropNtNtCsgFSQ9XOTBNe_3syn4expr3ArmEzENtNtNtB7_3ops9try_trait3Try6branchCs5KndGQj2IFn_15zerofrom_derive(ptr %i.n, ptr %i.o) ; 2 uses
  %i.q = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  %i.s = load ptr, ptr %i.e, align 8
  %i.t = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not = icmp eq ptr %i.t, %i.s
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.r, %bb.b ]
  %.sroa.0.0.lcssa = phi ptr [ %1, %bb.a ], [ %i.q, %bb.b ]
  %i.u = call { ptr, ptr } @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropNtNtCsgFSQ9XOTBNe_3syn4expr3ArmEzENtNtNtB7_3ops9try_trait3Try11from_outputCs5KndGQj2IFn_15zerofrom_derive(ptr %.sroa.0.0.lcssa, ptr %.sroa.4.0.lcssa)
  ret { ptr, ptr } %i.u
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsgFSQ9XOTBNe_3syn4expr3ArmENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB1z_8adapters3map12map_try_foldBX_BX_B2x_INtNtB1B_6result6ResultB2x_zENCINvNtNtB11_3gen4fold8fold_vecBX_NtNvCs5KndGQj2IFn_15zerofrom_derive25replace_lifetime_and_type20ReplaceLifetimeAndTyNvYB50_NtB4x_4Fold8fold_armE0NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0E0B3Z_EB54_(ptr nofree align 8 captures(none) %0, ptr %1, ptr %2, ptr align 8 %3, ptr %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [264 x i8], align 8               ; 3 uses
  %i.b = alloca [248 x i8], align 8               ; 2 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr %3, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %4, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.e, align 8
  %i.h = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not9 = icmp eq ptr %i.h, %i.g
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %i.h, %.lr.ph ], [ %i.t, %bb.b ] ; 2 uses
  %.sroa.0.011 = phi ptr [ %1, %.lr.ph ], [ %i.q, %bb.b ] ; 2 uses
  %.sroa.4.010 = phi ptr [ %2, %.lr.ph ], [ %i.r, %bb.b ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.b, ptr noundef nonnull align 8 dereferenceable(248) %i.k, i64 248, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 248
  store ptr %i.l, ptr %i.f, align 8
  store ptr %.sroa.0.011, ptr %i.a, align 8
  store ptr %.sroa.4.010, ptr %i.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.j, ptr noundef nonnull align 8 dereferenceable(248) %i.b, i64 248, i1 false)
  %i.m = call { ptr, ptr } @_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldNtNtCsgFSQ9XOTBNe_3syn4expr3ArmBZ_INtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1x_zENCINvNtNtB13_3gen4fold8fold_vecBZ_NtNvCs5KndGQj2IFn_15zerofrom_derive25replace_lifetime_and_type20ReplaceLifetimeAndTyNvYB3y_NtB35_4Fold8fold_armE0NCINvNtB1C_16in_place_collect24write_in_place_with_dropBZ_E0E0B3C_(ptr nonnull align 8 %i.c, ptr %.sroa.0.011, ptr %.sroa.4.010, ptr nonnull align 8 %i.j) ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0
  %i.o = extractvalue { ptr, ptr } %i.m, 1
  %i.p = call { ptr, ptr } @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropNtNtCsgFSQ9XOTBNe_3syn4expr3ArmEzENtNtNtB7_3ops9try_trait3Try6branchCs5KndGQj2IFn_15zerofrom_derive(ptr %i.n, ptr %i.o) ; 2 uses
  %i.q = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  %i.s = load ptr, ptr %i.e, align 8
  %i.t = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not = icmp eq ptr %i.t, %i.s
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.r, %bb.b ]
  %.sroa.0.0.lcssa = phi ptr [ %1, %bb.a ], [ %i.q, %bb.b ]
  %i.u = call { ptr, ptr } @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropNtNtCsgFSQ9XOTBNe_3syn4expr3ArmEzENtNtNtB7_3ops9try_trait3Try11from_outputCs5KndGQj2IFn_15zerofrom_derive(ptr %.sroa.0.0.lcssa, ptr %.sroa.4.0.lcssa)
  ret { ptr, ptr } %i.u
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsgFSQ9XOTBNe_3syn4item11ForeignItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB1I_8adapters3map12map_try_foldBX_BX_B2G_INtNtB1K_6result6ResultB2G_zENCINvNtNtB11_3gen4fold8fold_vecBX_NtNvCs5KndGQj2IFn_15zerofrom_derive16replace_lifetime15ReplaceLifetimeNvYB59_NtB4G_4Fold17fold_foreign_itemE0NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0E0B48_EB5d_(ptr nofree align 8 captures(none) %0, ptr %1, ptr %2, ptr align 8 %3, ptr %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [368 x i8], align 8               ; 3 uses
  %i.b = alloca [352 x i8], align 8               ; 2 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr %3, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %4, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.e, align 8
  %i.h = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not9 = icmp eq ptr %i.h, %i.g
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %i.h, %.lr.ph ], [ %i.t, %bb.b ] ; 2 uses
  %.sroa.0.011 = phi ptr [ %1, %.lr.ph ], [ %i.q, %bb.b ] ; 2 uses
  %.sroa.4.010 = phi ptr [ %2, %.lr.ph ], [ %i.r, %bb.b ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.b, ptr noundef nonnull align 8 dereferenceable(352) %i.k, i64 352, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 352
  store ptr %i.l, ptr %i.f, align 8
  store ptr %.sroa.0.011, ptr %i.a, align 8
  store ptr %.sroa.4.010, ptr %i.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.j, ptr noundef nonnull align 8 dereferenceable(352) %i.b, i64 352, i1 false)
  %i.m = call { ptr, ptr } @_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldNtNtCsgFSQ9XOTBNe_3syn4item11ForeignItemBZ_INtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1G_zENCINvNtNtB13_3gen4fold8fold_vecBZ_NtNvCs5KndGQj2IFn_15zerofrom_derive16replace_lifetime15ReplaceLifetimeNvYB3H_NtB3e_4Fold17fold_foreign_itemE0NCINvNtB1L_16in_place_collect24write_in_place_with_dropBZ_E0E0B3L_(ptr nonnull align 8 %i.c, ptr %.sroa.0.011, ptr %.sroa.4.010, ptr nonnull align 8 %i.j) ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0
  %i.o = extractvalue { ptr, ptr } %i.m, 1
  %i.p = call { ptr, ptr } @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropNtNtCsgFSQ9XOTBNe_3syn4item11ForeignItemEzENtNtNtB7_3ops9try_trait3Try6branchCs5KndGQj2IFn_15zerofrom_derive(ptr %i.n, ptr %i.o) ; 2 uses
  %i.q = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  %i.s = load ptr, ptr %i.e, align 8
  %i.t = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not = icmp eq ptr %i.t, %i.s
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.r, %bb.b ]
  %.sroa.0.0.lcssa = phi ptr [ %1, %bb.a ], [ %i.q, %bb.b ]
  %i.u = call { ptr, ptr } @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropNtNtCsgFSQ9XOTBNe_3syn4item11ForeignItemEzENtNtNtB7_3ops9try_trait3Try11from_outputCs5KndGQj2IFn_15zerofrom_derive(ptr %.sroa.0.0.lcssa, ptr %.sroa.4.0.lcssa)
  ret { ptr, ptr } %i.u
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsgFSQ9XOTBNe_3syn4item11ForeignItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB1I_8adapters3map12map_try_foldBX_BX_B2G_INtNtB1K_6result6ResultB2G_zENCINvNtNtB11_3gen4fold8fold_vecBX_NtNvCs5KndGQj2IFn_15zerofrom_derive25replace_lifetime_and_type20ReplaceLifetimeAndTyNvYB59_NtB4G_4Fold17fold_foreign_itemE0NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0E0B48_EB5d_(ptr nofree align 8 captures(none) %0, ptr %1, ptr %2, ptr align 8 %3, ptr %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [368 x i8], align 8               ; 3 uses
  %i.b = alloca [352 x i8], align 8               ; 2 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr %3, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %4, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.e, align 8
  %i.h = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not9 = icmp eq ptr %i.h, %i.g
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %i.h, %.lr.ph ], [ %i.t, %bb.b ] ; 2 uses
  %.sroa.0.011 = phi ptr [ %1, %.lr.ph ], [ %i.q, %bb.b ] ; 2 uses
  %.sroa.4.010 = phi ptr [ %2, %.lr.ph ], [ %i.r, %bb.b ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.b, ptr noundef nonnull align 8 dereferenceable(352) %i.k, i64 352, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 352
  store ptr %i.l, ptr %i.f, align 8
  store ptr %.sroa.0.011, ptr %i.a, align 8
  store ptr %.sroa.4.010, ptr %i.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.j, ptr noundef nonnull align 8 dereferenceable(352) %i.b, i64 352, i1 false)
  %i.m = call { ptr, ptr } @_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldNtNtCsgFSQ9XOTBNe_3syn4item11ForeignItemBZ_INtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1G_zENCINvNtNtB13_3gen4fold8fold_vecBZ_NtNvCs5KndGQj2IFn_15zerofrom_derive25replace_lifetime_and_type20ReplaceLifetimeAndTyNvYB3H_NtB3e_4Fold17fold_foreign_itemE0NCINvNtB1L_16in_place_collect24write_in_place_with_dropBZ_E0E0B3L_(ptr nonnull align 8 %i.c, ptr %.sroa.0.011, ptr %.sroa.4.010, ptr nonnull align 8 %i.j) ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0
  %i.o = extractvalue { ptr, ptr } %i.m, 1
  %i.p = call { ptr, ptr } @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropNtNtCsgFSQ9XOTBNe_3syn4item11ForeignItemEzENtNtNtB7_3ops9try_trait3Try6branchCs5KndGQj2IFn_15zerofrom_derive(ptr %i.n, ptr %i.o) ; 2 uses
  %i.q = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  %i.s = load ptr, ptr %i.e, align 8
  %i.t = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not = icmp eq ptr %i.t, %i.s
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.r, %bb.b ]
  %.sroa.0.0.lcssa = phi ptr [ %1, %bb.a ], [ %i.q, %bb.b ]
  %i.u = call { ptr, ptr } @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropNtNtCsgFSQ9XOTBNe_3syn4item11ForeignItemEzENtNtNtB7_3ops9try_trait3Try11from_outputCs5KndGQj2IFn_15zerofrom_derive(ptr %.sroa.0.0.lcssa, ptr %.sroa.4.0.lcssa)
  ret { ptr, ptr } %i.u
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsgFSQ9XOTBNe_3syn4item4ItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB1A_8adapters3map12map_try_foldBX_BX_B2y_INtNtB1C_6result6ResultB2y_zENCINvNtNtB11_3gen4fold8fold_vecBX_NtNvCs5KndGQj2IFn_15zerofrom_derive16replace_lifetime15ReplaceLifetimeNvYB51_NtB4y_4Fold9fold_itemE0NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0E0B40_EB55_(ptr nofree align 8 captures(none) %0, ptr %1, ptr %2, ptr align 8 %3, ptr %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [368 x i8], align 8               ; 3 uses
  %i.b = alloca [352 x i8], align 8               ; 2 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr %3, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %4, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.e, align 8
  %i.h = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not9 = icmp eq ptr %i.h, %i.g
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %i.h, %.lr.ph ], [ %i.t, %bb.b ] ; 2 uses
  %.sroa.0.011 = phi ptr [ %1, %.lr.ph ], [ %i.q, %bb.b ] ; 2 uses
  %.sroa.4.010 = phi ptr [ %2, %.lr.ph ], [ %i.r, %bb.b ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.b, ptr noundef nonnull align 8 dereferenceable(352) %i.k, i64 352, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 352
  store ptr %i.l, ptr %i.f, align 8
  store ptr %.sroa.0.011, ptr %i.a, align 8
  store ptr %.sroa.4.010, ptr %i.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.j, ptr noundef nonnull align 8 dereferenceable(352) %i.b, i64 352, i1 false)
  %i.m = call { ptr, ptr } @_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldNtNtCsgFSQ9XOTBNe_3syn4item4ItemBZ_INtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1y_zENCINvNtNtB13_3gen4fold8fold_vecBZ_NtNvCs5KndGQj2IFn_15zerofrom_derive16replace_lifetime15ReplaceLifetimeNvYB3z_NtB36_4Fold9fold_itemE0NCINvNtB1D_16in_place_collect24write_in_place_with_dropBZ_E0E0B3D_(ptr nonnull align 8 %i.c, ptr %.sroa.0.011, ptr %.sroa.4.010, ptr nonnull align 8 %i.j) ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0
  %i.o = extractvalue { ptr, ptr } %i.m, 1
  %i.p = call { ptr, ptr } @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropNtNtCsgFSQ9XOTBNe_3syn4item4ItemEzENtNtNtB7_3ops9try_trait3Try6branchCs5KndGQj2IFn_15zerofrom_derive(ptr %i.n, ptr %i.o) ; 2 uses
  %i.q = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  %i.s = load ptr, ptr %i.e, align 8
  %i.t = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not = icmp eq ptr %i.t, %i.s
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.r, %bb.b ]
  %.sroa.0.0.lcssa = phi ptr [ %1, %bb.a ], [ %i.q, %bb.b ]
  %i.u = call { ptr, ptr } @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropNtNtCsgFSQ9XOTBNe_3syn4item4ItemEzENtNtNtB7_3ops9try_trait3Try11from_outputCs5KndGQj2IFn_15zerofrom_derive(ptr %.sroa.0.0.lcssa, ptr %.sroa.4.0.lcssa)
  ret { ptr, ptr } %i.u
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsgFSQ9XOTBNe_3syn4item4ItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB1A_8adapters3map12map_try_foldBX_BX_B2y_INtNtB1C_6result6ResultB2y_zENCINvNtNtB11_3gen4fold8fold_vecBX_NtNvCs5KndGQj2IFn_15zerofrom_derive25replace_lifetime_and_type20ReplaceLifetimeAndTyNvYB51_NtB4y_4Fold9fold_itemE0NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0E0B40_EB55_(ptr nofree align 8 captures(none) %0, ptr %1, ptr %2, ptr align 8 %3, ptr %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [368 x i8], align 8               ; 3 uses
  %i.b = alloca [352 x i8], align 8               ; 2 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr %3, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %4, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.e, align 8
  %i.h = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not9 = icmp eq ptr %i.h, %i.g
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %i.h, %.lr.ph ], [ %i.t, %bb.b ] ; 2 uses
  %.sroa.0.011 = phi ptr [ %1, %.lr.ph ], [ %i.q, %bb.b ] ; 2 uses
  %.sroa.4.010 = phi ptr [ %2, %.lr.ph ], [ %i.r, %bb.b ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.b, ptr noundef nonnull align 8 dereferenceable(352) %i.k, i64 352, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 352
  store ptr %i.l, ptr %i.f, align 8
  store ptr %.sroa.0.011, ptr %i.a, align 8
  store ptr %.sroa.4.010, ptr %i.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.j, ptr noundef nonnull align 8 dereferenceable(352) %i.b, i64 352, i1 false)
  %i.m = call { ptr, ptr } @_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldNtNtCsgFSQ9XOTBNe_3syn4item4ItemBZ_INtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1y_zENCINvNtNtB13_3gen4fold8fold_vecBZ_NtNvCs5KndGQj2IFn_15zerofrom_derive25replace_lifetime_and_type20ReplaceLifetimeAndTyNvYB3z_NtB36_4Fold9fold_itemE0NCINvNtB1D_16in_place_collect24write_in_place_with_dropBZ_E0E0B3D_(ptr nonnull align 8 %i.c, ptr %.sroa.0.011, ptr %.sroa.4.010, ptr nonnull align 8 %i.j) ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0
  %i.o = extractvalue { ptr, ptr } %i.m, 1
  %i.p = call { ptr, ptr } @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropNtNtCsgFSQ9XOTBNe_3syn4item4ItemEzENtNtNtB7_3ops9try_trait3Try6branchCs5KndGQj2IFn_15zerofrom_derive(ptr %i.n, ptr %i.o) ; 2 uses
  %i.q = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  %i.s = load ptr, ptr %i.e, align 8
  %i.t = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not = icmp eq ptr %i.t, %i.s
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.r, %bb.b ]
  %.sroa.0.0.lcssa = phi ptr [ %1, %bb.a ], [ %i.q, %bb.b ]
  %i.u = call { ptr, ptr } @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropNtNtCsgFSQ9XOTBNe_3syn4item4ItemEzENtNtNtB7_3ops9try_trait3Try11from_outputCs5KndGQj2IFn_15zerofrom_derive(ptr %.sroa.0.0.lcssa, ptr %.sroa.4.0.lcssa)
  ret { ptr, ptr } %i.u
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsgFSQ9XOTBNe_3syn4item8ImplItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB1E_8adapters3map12map_try_foldBX_BX_B2C_INtNtB1G_6result6ResultB2C_zENCINvNtNtB11_3gen4fold8fold_vecBX_NtNvCs5KndGQj2IFn_15zerofrom_derive16replace_lifetime15ReplaceLifetimeNvYB55_NtB4C_4Fold14fold_impl_itemE0NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0E0B44_EB59_(ptr nofree align 8 captures(none) %0, ptr %1, ptr %2, ptr align 8 %3, ptr %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [608 x i8], align 8               ; 3 uses
  %i.b = alloca [592 x i8], align 8               ; 2 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr %3, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %4, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.e, align 8
  %i.h = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not9 = icmp eq ptr %i.h, %i.g
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %i.h, %.lr.ph ], [ %i.t, %bb.b ] ; 2 uses
  %.sroa.0.011 = phi ptr [ %1, %.lr.ph ], [ %i.q, %bb.b ] ; 2 uses
  %.sroa.4.010 = phi ptr [ %2, %.lr.ph ], [ %i.r, %bb.b ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(592) %i.b, ptr noundef nonnull align 8 dereferenceable(592) %i.k, i64 592, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 592
  store ptr %i.l, ptr %i.f, align 8
  store ptr %.sroa.0.011, ptr %i.a, align 8
  store ptr %.sroa.4.010, ptr %i.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(592) %i.j, ptr noundef nonnull align 8 dereferenceable(592) %i.b, i64 592, i1 false)
  %i.m = call { ptr, ptr } @_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldNtNtCsgFSQ9XOTBNe_3syn4item8ImplItemBZ_INtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1C_zENCINvNtNtB13_3gen4fold8fold_vecBZ_NtNvCs5KndGQj2IFn_15zerofrom_derive16replace_lifetime15ReplaceLifetimeNvYB3D_NtB3a_4Fold14fold_impl_itemE0NCINvNtB1H_16in_place_collect24write_in_place_with_dropBZ_E0E0B3H_(ptr nonnull align 8 %i.c, ptr %.sroa.0.011, ptr %.sroa.4.010, ptr nonnull align 8 %i.j) ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0
  %i.o = extractvalue { ptr, ptr } %i.m, 1
  %i.p = call { ptr, ptr } @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropNtNtCsgFSQ9XOTBNe_3syn4item8ImplItemEzENtNtNtB7_3ops9try_trait3Try6branchCs5KndGQj2IFn_15zerofrom_derive(ptr %i.n, ptr %i.o) ; 2 uses
  %i.q = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  %i.s = load ptr, ptr %i.e, align 8
  %i.t = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not = icmp eq ptr %i.t, %i.s
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.r, %bb.b ]
  %.sroa.0.0.lcssa = phi ptr [ %1, %bb.a ], [ %i.q, %bb.b ]
  %i.u = call { ptr, ptr } @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropNtNtCsgFSQ9XOTBNe_3syn4item8ImplItemEzENtNtNtB7_3ops9try_trait3Try11from_outputCs5KndGQj2IFn_15zerofrom_derive(ptr %.sroa.0.0.lcssa, ptr %.sroa.4.0.lcssa)
  ret { ptr, ptr } %i.u
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsgFSQ9XOTBNe_3syn4item8ImplItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB1E_8adapters3map12map_try_foldBX_BX_B2C_INtNtB1G_6result6ResultB2C_zENCINvNtNtB11_3gen4fold8fold_vecBX_NtNvCs5KndGQj2IFn_15zerofrom_derive25replace_lifetime_and_type20ReplaceLifetimeAndTyNvYB55_NtB4C_4Fold14fold_impl_itemE0NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0E0B44_EB59_(ptr nofree align 8 captures(none) %0, ptr %1, ptr %2, ptr align 8 %3, ptr %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [608 x i8], align 8               ; 3 uses
  %i.b = alloca [592 x i8], align 8               ; 2 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr %3, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %4, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.e, align 8
  %i.h = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not9 = icmp eq ptr %i.h, %i.g
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %i.h, %.lr.ph ], [ %i.t, %bb.b ] ; 2 uses
  %.sroa.0.011 = phi ptr [ %1, %.lr.ph ], [ %i.q, %bb.b ] ; 2 uses
  %.sroa.4.010 = phi ptr [ %2, %.lr.ph ], [ %i.r, %bb.b ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(592) %i.b, ptr noundef nonnull align 8 dereferenceable(592) %i.k, i64 592, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 592
  store ptr %i.l, ptr %i.f, align 8
  store ptr %.sroa.0.011, ptr %i.a, align 8
  store ptr %.sroa.4.010, ptr %i.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(592) %i.j, ptr noundef nonnull align 8 dereferenceable(592) %i.b, i64 592, i1 false)
  %i.m = call { ptr, ptr } @_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldNtNtCsgFSQ9XOTBNe_3syn4item8ImplItemBZ_INtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1C_zENCINvNtNtB13_3gen4fold8fold_vecBZ_NtNvCs5KndGQj2IFn_15zerofrom_derive25replace_lifetime_and_type20ReplaceLifetimeAndTyNvYB3D_NtB3a_4Fold14fold_impl_itemE0NCINvNtB1H_16in_place_collect24write_in_place_with_dropBZ_E0E0B3H_(ptr nonnull align 8 %i.c, ptr %.sroa.0.011, ptr %.sroa.4.010, ptr nonnull align 8 %i.j) ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0
  %i.o = extractvalue { ptr, ptr } %i.m, 1
  %i.p = call { ptr, ptr } @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropNtNtCsgFSQ9XOTBNe_3syn4item8ImplItemEzENtNtNtB7_3ops9try_trait3Try6branchCs5KndGQj2IFn_15zerofrom_derive(ptr %i.n, ptr %i.o) ; 2 uses
  %i.q = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  %i.s = load ptr, ptr %i.e, align 8
  %i.t = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not = icmp eq ptr %i.t, %i.s
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.r, %bb.b ]
  %.sroa.0.0.lcssa = phi ptr [ %1, %bb.a ], [ %i.q, %bb.b ]
  %i.u = call { ptr, ptr } @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropNtNtCsgFSQ9XOTBNe_3syn4item8ImplItemEzENtNtNtB7_3ops9try_trait3Try11from_outputCs5KndGQj2IFn_15zerofrom_derive(ptr %.sroa.0.0.lcssa, ptr %.sroa.4.0.lcssa)
  ret { ptr, ptr } %i.u
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsgFSQ9XOTBNe_3syn4item9TraitItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB1F_8adapters3map12map_try_foldBX_BX_B2D_INtNtB1H_6result6ResultB2D_zENCINvNtNtB11_3gen4fold8fold_vecBX_NtNvCs5KndGQj2IFn_15zerofrom_derive16replace_lifetime15ReplaceLifetimeNvYB56_NtB4D_4Fold15fold_trait_itemE0NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0E0B45_EB5a_(ptr nofree align 8 captures(none) %0, ptr %1, ptr %2, ptr align 8 %3, ptr %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [576 x i8], align 8               ; 3 uses
  %i.b = alloca [560 x i8], align 8               ; 2 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr %3, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %4, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.e, align 8
  %i.h = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not9 = icmp eq ptr %i.h, %i.g
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %i.h, %.lr.ph ], [ %i.t, %bb.b ] ; 2 uses
  %.sroa.0.011 = phi ptr [ %1, %.lr.ph ], [ %i.q, %bb.b ] ; 2 uses
  %.sroa.4.010 = phi ptr [ %2, %.lr.ph ], [ %i.r, %bb.b ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(560) %i.b, ptr noundef nonnull align 8 dereferenceable(560) %i.k, i64 560, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 560
  store ptr %i.l, ptr %i.f, align 8
  store ptr %.sroa.0.011, ptr %i.a, align 8
  store ptr %.sroa.4.010, ptr %i.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(560) %i.j, ptr noundef nonnull align 8 dereferenceable(560) %i.b, i64 560, i1 false)
  %i.m = call { ptr, ptr } @_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldNtNtCsgFSQ9XOTBNe_3syn4item9TraitItemBZ_INtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1D_zENCINvNtNtB13_3gen4fold8fold_vecBZ_NtNvCs5KndGQj2IFn_15zerofrom_derive16replace_lifetime15ReplaceLifetimeNvYB3E_NtB3b_4Fold15fold_trait_itemE0NCINvNtB1I_16in_place_collect24write_in_place_with_dropBZ_E0E0B3I_(ptr nonnull align 8 %i.c, ptr %.sroa.0.011, ptr %.sroa.4.010, ptr nonnull align 8 %i.j) ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0
  %i.o = extractvalue { ptr, ptr } %i.m, 1
  %i.p = call { ptr, ptr } @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropNtNtCsgFSQ9XOTBNe_3syn4item9TraitItemEzENtNtNtB7_3ops9try_trait3Try6branchCs5KndGQj2IFn_15zerofrom_derive(ptr %i.n, ptr %i.o) ; 2 uses
  %i.q = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  %i.s = load ptr, ptr %i.e, align 8
  %i.t = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not = icmp eq ptr %i.t, %i.s
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.r, %bb.b ]
  %.sroa.0.0.lcssa = phi ptr [ %1, %bb.a ], [ %i.q, %bb.b ]
  %i.u = call { ptr, ptr } @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropNtNtCsgFSQ9XOTBNe_3syn4item9TraitItemEzENtNtNtB7_3ops9try_trait3Try11from_outputCs5KndGQj2IFn_15zerofrom_derive(ptr %.sroa.0.0.lcssa, ptr %.sroa.4.0.lcssa)
  ret { ptr, ptr } %i.u
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsgFSQ9XOTBNe_3syn4item9TraitItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB1F_8adapters3map12map_try_foldBX_BX_B2D_INtNtB1H_6result6ResultB2D_zENCINvNtNtB11_3gen4fold8fold_vecBX_NtNvCs5KndGQj2IFn_15zerofrom_derive25replace_lifetime_and_type20ReplaceLifetimeAndTyNvYB56_NtB4D_4Fold15fold_trait_itemE0NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0E0B45_EB5a_(ptr nofree align 8 captures(none) %0, ptr %1, ptr %2, ptr align 8 %3, ptr %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [576 x i8], align 8               ; 3 uses
  %i.b = alloca [560 x i8], align 8               ; 2 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr %3, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %4, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.e, align 8
  %i.h = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not9 = icmp eq ptr %i.h, %i.g
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %i.h, %.lr.ph ], [ %i.t, %bb.b ] ; 2 uses
  %.sroa.0.011 = phi ptr [ %1, %.lr.ph ], [ %i.q, %bb.b ] ; 2 uses
  %.sroa.4.010 = phi ptr [ %2, %.lr.ph ], [ %i.r, %bb.b ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(560) %i.b, ptr noundef nonnull align 8 dereferenceable(560) %i.k, i64 560, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 560
  store ptr %i.l, ptr %i.f, align 8
  store ptr %.sroa.0.011, ptr %i.a, align 8
  store ptr %.sroa.4.010, ptr %i.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(560) %i.j, ptr noundef nonnull align 8 dereferenceable(560) %i.b, i64 560, i1 false)
  %i.m = call { ptr, ptr } @_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldNtNtCsgFSQ9XOTBNe_3syn4item9TraitItemBZ_INtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1D_zENCINvNtNtB13_3gen4fold8fold_vecBZ_NtNvCs5KndGQj2IFn_15zerofrom_derive25replace_lifetime_and_type20ReplaceLifetimeAndTyNvYB3E_NtB3b_4Fold15fold_trait_itemE0NCINvNtB1I_16in_place_collect24write_in_place_with_dropBZ_E0E0B3I_(ptr nonnull align 8 %i.c, ptr %.sroa.0.011, ptr %.sroa.4.010, ptr nonnull align 8 %i.j) ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0
  %i.o = extractvalue { ptr, ptr } %i.m, 1
  %i.p = call { ptr, ptr } @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropNtNtCsgFSQ9XOTBNe_3syn4item9TraitItemEzENtNtNtB7_3ops9try_trait3Try6branchCs5KndGQj2IFn_15zerofrom_derive(ptr %i.n, ptr %i.o) ; 2 uses
  %i.q = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  %i.s = load ptr, ptr %i.e, align 8
  %i.t = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not = icmp eq ptr %i.t, %i.s
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.r, %bb.b ]
  %.sroa.0.0.lcssa = phi ptr [ %1, %bb.a ], [ %i.q, %bb.b ]
  %i.u = call { ptr, ptr } @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropNtNtCsgFSQ9XOTBNe_3syn4item9TraitItemEzENtNtNtB7_3ops9try_trait3Try11from_outputCs5KndGQj2IFn_15zerofrom_derive(ptr %.sroa.0.0.lcssa, ptr %.sroa.4.0.lcssa)
  ret { ptr, ptr } %i.u
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsgFSQ9XOTBNe_3syn4stmt4StmtENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB1A_8adapters3map12map_try_foldBX_BX_B2y_INtNtB1C_6result6ResultB2y_zENCINvNtNtB11_3gen4fold8fold_vecBX_NtNvCs5KndGQj2IFn_15zerofrom_derive16replace_lifetime15ReplaceLifetimeNvYB51_NtB4y_4Fold9fold_stmtE0NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0E0B40_EB55_(ptr nofree align 8 captures(none) %0, ptr %1, ptr %2, ptr align 8 %3, ptr %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [368 x i8], align 8               ; 3 uses
  %i.b = alloca [352 x i8], align 8               ; 2 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr %3, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %4, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.e, align 8
  %i.h = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not9 = icmp eq ptr %i.h, %i.g
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %i.h, %.lr.ph ], [ %i.t, %bb.b ] ; 2 uses
  %.sroa.0.011 = phi ptr [ %1, %.lr.ph ], [ %i.q, %bb.b ] ; 2 uses
  %.sroa.4.010 = phi ptr [ %2, %.lr.ph ], [ %i.r, %bb.b ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.b, ptr noundef nonnull align 8 dereferenceable(352) %i.k, i64 352, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 352
  store ptr %i.l, ptr %i.f, align 8
  store ptr %.sroa.0.011, ptr %i.a, align 8
  store ptr %.sroa.4.010, ptr %i.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.j, ptr noundef nonnull align 8 dereferenceable(352) %i.b, i64 352, i1 false)
  %i.m = call { ptr, ptr } @_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldNtNtCsgFSQ9XOTBNe_3syn4stmt4StmtBZ_INtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1y_zENCINvNtNtB13_3gen4fold8fold_vecBZ_NtNvCs5KndGQj2IFn_15zerofrom_derive16replace_lifetime15ReplaceLifetimeNvYB3z_NtB36_4Fold9fold_stmtE0NCINvNtB1D_16in_place_collect24write_in_place_with_dropBZ_E0E0B3D_(ptr nonnull align 8 %i.c, ptr %.sroa.0.011, ptr %.sroa.4.010, ptr nonnull align 8 %i.j) ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0
  %i.o = extractvalue { ptr, ptr } %i.m, 1
  %i.p = call { ptr, ptr } @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropNtNtCsgFSQ9XOTBNe_3syn4stmt4StmtEzENtNtNtB7_3ops9try_trait3Try6branchCs5KndGQj2IFn_15zerofrom_derive(ptr %i.n, ptr %i.o) ; 2 uses
  %i.q = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  %i.s = load ptr, ptr %i.e, align 8
  %i.t = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not = icmp eq ptr %i.t, %i.s
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.r, %bb.b ]
  %.sroa.0.0.lcssa = phi ptr [ %1, %bb.a ], [ %i.q, %bb.b ]
  %i.u = call { ptr, ptr } @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropNtNtCsgFSQ9XOTBNe_3syn4stmt4StmtEzENtNtNtB7_3ops9try_trait3Try11from_outputCs5KndGQj2IFn_15zerofrom_derive(ptr %.sroa.0.0.lcssa, ptr %.sroa.4.0.lcssa)
  ret { ptr, ptr } %i.u
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsgFSQ9XOTBNe_3syn4stmt4StmtENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB1A_8adapters3map12map_try_foldBX_BX_B2y_INtNtB1C_6result6ResultB2y_zENCINvNtNtB11_3gen4fold8fold_vecBX_NtNvCs5KndGQj2IFn_15zerofrom_derive25replace_lifetime_and_type20ReplaceLifetimeAndTyNvYB51_NtB4y_4Fold9fold_stmtE0NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0E0B40_EB55_(ptr nofree align 8 captures(none) %0, ptr %1, ptr %2, ptr align 8 %3, ptr %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [368 x i8], align 8               ; 3 uses
  %i.b = alloca [352 x i8], align 8               ; 2 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr %3, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %4, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.e, align 8
  %i.h = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not9 = icmp eq ptr %i.h, %i.g
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %i.h, %.lr.ph ], [ %i.t, %bb.b ] ; 2 uses
  %.sroa.0.011 = phi ptr [ %1, %.lr.ph ], [ %i.q, %bb.b ] ; 2 uses
  %.sroa.4.010 = phi ptr [ %2, %.lr.ph ], [ %i.r, %bb.b ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.b, ptr noundef nonnull align 8 dereferenceable(352) %i.k, i64 352, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 352
  store ptr %i.l, ptr %i.f, align 8
  store ptr %.sroa.0.011, ptr %i.a, align 8
  store ptr %.sroa.4.010, ptr %i.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.j, ptr noundef nonnull align 8 dereferenceable(352) %i.b, i64 352, i1 false)
  %i.m = call { ptr, ptr } @_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldNtNtCsgFSQ9XOTBNe_3syn4stmt4StmtBZ_INtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1y_zENCINvNtNtB13_3gen4fold8fold_vecBZ_NtNvCs5KndGQj2IFn_15zerofrom_derive25replace_lifetime_and_type20ReplaceLifetimeAndTyNvYB3z_NtB36_4Fold9fold_stmtE0NCINvNtB1D_16in_place_collect24write_in_place_with_dropBZ_E0E0B3D_(ptr nonnull align 8 %i.c, ptr %.sroa.0.011, ptr %.sroa.4.010, ptr nonnull align 8 %i.j) ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0
  %i.o = extractvalue { ptr, ptr } %i.m, 1
  %i.p = call { ptr, ptr } @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropNtNtCsgFSQ9XOTBNe_3syn4stmt4StmtEzENtNtNtB7_3ops9try_trait3Try6branchCs5KndGQj2IFn_15zerofrom_derive(ptr %i.n, ptr %i.o) ; 2 uses
  %i.q = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  %i.s = load ptr, ptr %i.e, align 8
  %i.t = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not = icmp eq ptr %i.t, %i.s
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.r, %bb.b ]
  %.sroa.0.0.lcssa = phi ptr [ %1, %bb.a ], [ %i.q, %bb.b ]
  %i.u = call { ptr, ptr } @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropNtNtCsgFSQ9XOTBNe_3syn4stmt4StmtEzENtNtNtB7_3ops9try_trait3Try11from_outputCs5KndGQj2IFn_15zerofrom_derive(ptr %.sroa.0.0.lcssa, ptr %.sroa.4.0.lcssa)
  ret { ptr, ptr } %i.u
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3mapBR_NCINvNtNtBV_3gen4fold8fold_vecBR_NtNvCs5KndGQj2IFn_15zerofrom_derive16replace_lifetime15ReplaceLifetimeNvYB32_NtB2A_4Fold14fold_attributeE0EB36_(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) initializes((0, 48)) %0, ptr nofree readonly align 8 captures(none) %1, ptr %2, ptr align 8 %3) unnamed_addr #1 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %3, ptr %i.b, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3mapBR_NCINvNtNtBV_3gen4fold8fold_vecBR_NtNvCs5KndGQj2IFn_15zerofrom_derive25replace_lifetime_and_type20ReplaceLifetimeAndTyNvYB32_NtB2A_4Fold14fold_attributeE0EB36_(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) initializes((0, 48)) %0, ptr nofree readonly align 8 captures(none) %1, ptr %2, ptr align 8 %3) unnamed_addr #1 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %3, ptr %i.b, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCsgFSQ9XOTBNe_3syn4expr3ArmENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3mapBR_NCINvNtNtBV_3gen4fold8fold_vecBR_NtNvCs5KndGQj2IFn_15zerofrom_derive16replace_lifetime15ReplaceLifetimeNvYB2W_NtB2u_4Fold8fold_armE0EB30_(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) initializes((0, 48)) %0, ptr nofree readonly align 8 captures(none) %1, ptr %2, ptr align 8 %3) unnamed_addr #1 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %3, ptr %i.b, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCsgFSQ9XOTBNe_3syn4expr3ArmENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3mapBR_NCINvNtNtBV_3gen4fold8fold_vecBR_NtNvCs5KndGQj2IFn_15zerofrom_derive25replace_lifetime_and_type20ReplaceLifetimeAndTyNvYB2W_NtB2u_4Fold8fold_armE0EB30_(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) initializes((0, 48)) %0, ptr nofree readonly align 8 captures(none) %1, ptr %2, ptr align 8 %3) unnamed_addr #1 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %3, ptr %i.b, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCsgFSQ9XOTBNe_3syn4item11ForeignItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3mapBR_NCINvNtNtBV_3gen4fold8fold_vecBR_NtNvCs5KndGQj2IFn_15zerofrom_derive16replace_lifetime15ReplaceLifetimeNvYB35_NtB2D_4Fold17fold_foreign_itemE0EB39_(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) initializes((0, 48)) %0, ptr nofree readonly align 8 captures(none) %1, ptr %2, ptr align 8 %3) unnamed_addr #1 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %3, ptr %i.b, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCsgFSQ9XOTBNe_3syn4item11ForeignItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3mapBR_NCINvNtNtBV_3gen4fold8fold_vecBR_NtNvCs5KndGQj2IFn_15zerofrom_derive25replace_lifetime_and_type20ReplaceLifetimeAndTyNvYB35_NtB2D_4Fold17fold_foreign_itemE0EB39_(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) initializes((0, 48)) %0, ptr nofree readonly align 8 captures(none) %1, ptr %2, ptr align 8 %3) unnamed_addr #1 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %3, ptr %i.b, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCsgFSQ9XOTBNe_3syn4item4ItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3mapBR_NCINvNtNtBV_3gen4fold8fold_vecBR_NtNvCs5KndGQj2IFn_15zerofrom_derive16replace_lifetime15ReplaceLifetimeNvYB2X_NtB2v_4Fold9fold_itemE0EB31_(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) initializes((0, 48)) %0, ptr nofree readonly align 8 captures(none) %1, ptr %2, ptr align 8 %3) unnamed_addr #1 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %3, ptr %i.b, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCsgFSQ9XOTBNe_3syn4item4ItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3mapBR_NCINvNtNtBV_3gen4fold8fold_vecBR_NtNvCs5KndGQj2IFn_15zerofrom_derive25replace_lifetime_and_type20ReplaceLifetimeAndTyNvYB2X_NtB2v_4Fold9fold_itemE0EB31_(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) initializes((0, 48)) %0, ptr nofree readonly align 8 captures(none) %1, ptr %2, ptr align 8 %3) unnamed_addr #1 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %3, ptr %i.b, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCsgFSQ9XOTBNe_3syn4item8ImplItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3mapBR_NCINvNtNtBV_3gen4fold8fold_vecBR_NtNvCs5KndGQj2IFn_15zerofrom_derive16replace_lifetime15ReplaceLifetimeNvYB31_NtB2z_4Fold14fold_impl_itemE0EB35_(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) initializes((0, 48)) %0, ptr nofree readonly align 8 captures(none) %1, ptr %2, ptr align 8 %3) unnamed_addr #1 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %3, ptr %i.b, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCsgFSQ9XOTBNe_3syn4item8ImplItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3mapBR_NCINvNtNtBV_3gen4fold8fold_vecBR_NtNvCs5KndGQj2IFn_15zerofrom_derive25replace_lifetime_and_type20ReplaceLifetimeAndTyNvYB31_NtB2z_4Fold14fold_impl_itemE0EB35_(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) initializes((0, 48)) %0, ptr nofree readonly align 8 captures(none) %1, ptr %2, ptr align 8 %3) unnamed_addr #1 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %3, ptr %i.b, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCsgFSQ9XOTBNe_3syn4item9TraitItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3mapBR_NCINvNtNtBV_3gen4fold8fold_vecBR_NtNvCs5KndGQj2IFn_15zerofrom_derive16replace_lifetime15ReplaceLifetimeNvYB32_NtB2A_4Fold15fold_trait_itemE0EB36_(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) initializes((0, 48)) %0, ptr nofree readonly align 8 captures(none) %1, ptr %2, ptr align 8 %3) unnamed_addr #1 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %3, ptr %i.b, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCsgFSQ9XOTBNe_3syn4item9TraitItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3mapBR_NCINvNtNtBV_3gen4fold8fold_vecBR_NtNvCs5KndGQj2IFn_15zerofrom_derive25replace_lifetime_and_type20ReplaceLifetimeAndTyNvYB32_NtB2A_4Fold15fold_trait_itemE0EB36_(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) initializes((0, 48)) %0, ptr nofree readonly align 8 captures(none) %1, ptr %2, ptr align 8 %3) unnamed_addr #1 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %3, ptr %i.b, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCsgFSQ9XOTBNe_3syn4stmt4StmtENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3mapBR_NCINvNtNtBV_3gen4fold8fold_vecBR_NtNvCs5KndGQj2IFn_15zerofrom_derive16replace_lifetime15ReplaceLifetimeNvYB2X_NtB2v_4Fold9fold_stmtE0EB31_(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) initializes((0, 48)) %0, ptr nofree readonly align 8 captures(none) %1, ptr %2, ptr align 8 %3) unnamed_addr #1 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %3, ptr %i.b, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCsgFSQ9XOTBNe_3syn4stmt4StmtENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3mapBR_NCINvNtNtBV_3gen4fold8fold_vecBR_NtNvCs5KndGQj2IFn_15zerofrom_derive25replace_lifetime_and_type20ReplaceLifetimeAndTyNvYB2X_NtB2v_4Fold9fold_stmtE0EB31_(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) initializes((0, 48)) %0, ptr nofree readonly align 8 captures(none) %1, ptr %2, ptr align 8 %3) unnamed_addr #1 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %3, ptr %i.b, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeE32forget_allocation_drop_remainingCs5KndGQj2IFn_15zerofrom_derive(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = tail call { ptr, i64 } @_RNvMs0_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeE16as_raw_mut_sliceB10_(ptr align 8 %0) ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0
  %i.d = extractvalue { ptr, i64 } %i.b, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.e, align 8
  store i64 0, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.f, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeEEB1j_(ptr nonnull align 8 %i.a)
  %i.g = load ptr, ptr %0, align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.g, ptr %i.i, align 8
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeEBG_(ptr align 8 %i.c, i64 %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsgFSQ9XOTBNe_3syn4expr3ArmE32forget_allocation_drop_remainingCs5KndGQj2IFn_15zerofrom_derive(ptr nofree align 8 captures(none) initializes((0, 8), (16, 24)) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %.val1 = load ptr, ptr %i.c, align 8
  %i.d = ptrtoint ptr %.val1 to i64
  %i.e = ptrtoint ptr %.val to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 248
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.h, align 8
  store i64 0, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCsgFSQ9XOTBNe_3syn4expr3ArmEEB1j_(ptr nonnull align 8 %i.a)
  %i.j = load ptr, ptr %0, align 8                ; 2 uses
  store ptr %i.j, ptr %i.b, align 8
  store ptr %i.j, ptr %i.c, align 8
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCsgFSQ9XOTBNe_3syn4expr3ArmEBG_(ptr align 8 %.val, i64 %i.g)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsgFSQ9XOTBNe_3syn4item11ForeignItemE32forget_allocation_drop_remainingCs5KndGQj2IFn_15zerofrom_derive(ptr nofree align 8 captures(none) initializes((0, 8), (16, 24)) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %.val1 = load ptr, ptr %i.c, align 8
  %i.d = ptrtoint ptr %.val1 to i64
  %i.e = ptrtoint ptr %.val to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 352
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.h, align 8
  store i64 0, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCsgFSQ9XOTBNe_3syn4item11ForeignItemEEB1j_(ptr nonnull align 8 %i.a)
  %i.j = load ptr, ptr %0, align 8                ; 2 uses
  store ptr %i.j, ptr %i.b, align 8
  store ptr %i.j, ptr %i.c, align 8
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCsgFSQ9XOTBNe_3syn4item11ForeignItemEBG_(ptr align 8 %.val, i64 %i.g)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsgFSQ9XOTBNe_3syn4item4ItemE32forget_allocation_drop_remainingCs5KndGQj2IFn_15zerofrom_derive(ptr nofree align 8 captures(none) initializes((0, 8), (16, 24)) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %.val1 = load ptr, ptr %i.c, align 8
  %i.d = ptrtoint ptr %.val1 to i64
  %i.e = ptrtoint ptr %.val to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 352
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.h, align 8
  store i64 0, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCsgFSQ9XOTBNe_3syn4item4ItemEEB1j_(ptr nonnull align 8 %i.a)
  %i.j = load ptr, ptr %0, align 8                ; 2 uses
  store ptr %i.j, ptr %i.b, align 8
  store ptr %i.j, ptr %i.c, align 8
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCsgFSQ9XOTBNe_3syn4item4ItemEBG_(ptr align 8 %.val, i64 %i.g)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsgFSQ9XOTBNe_3syn4item8ImplItemE32forget_allocation_drop_remainingCs5KndGQj2IFn_15zerofrom_derive(ptr nofree align 8 captures(none) initializes((0, 8), (16, 24)) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %.val1 = load ptr, ptr %i.c, align 8
  %i.d = ptrtoint ptr %.val1 to i64
  %i.e = ptrtoint ptr %.val to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 592
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.h, align 8
  store i64 0, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCsgFSQ9XOTBNe_3syn4item8ImplItemEEB1j_(ptr nonnull align 8 %i.a)
  %i.j = load ptr, ptr %0, align 8                ; 2 uses
  store ptr %i.j, ptr %i.b, align 8
  store ptr %i.j, ptr %i.c, align 8
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCsgFSQ9XOTBNe_3syn4item8ImplItemEBG_(ptr align 8 %.val, i64 %i.g)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsgFSQ9XOTBNe_3syn4item9TraitItemE32forget_allocation_drop_remainingCs5KndGQj2IFn_15zerofrom_derive(ptr nofree align 8 captures(none) initializes((0, 8), (16, 24)) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %.val1 = load ptr, ptr %i.c, align 8
  %i.d = ptrtoint ptr %.val1 to i64
  %i.e = ptrtoint ptr %.val to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 560
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.h, align 8
  store i64 0, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCsgFSQ9XOTBNe_3syn4item9TraitItemEEB1j_(ptr nonnull align 8 %i.a)
  %i.j = load ptr, ptr %0, align 8                ; 2 uses
  store ptr %i.j, ptr %i.b, align 8
  store ptr %i.j, ptr %i.c, align 8
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCsgFSQ9XOTBNe_3syn4item9TraitItemEBG_(ptr align 8 %.val, i64 %i.g)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsgFSQ9XOTBNe_3syn4stmt4StmtE32forget_allocation_drop_remainingCs5KndGQj2IFn_15zerofrom_derive(ptr nofree align 8 captures(none) initializes((0, 8), (16, 24)) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %.val1 = load ptr, ptr %i.c, align 8
  %i.d = ptrtoint ptr %.val1 to i64
  %i.e = ptrtoint ptr %.val to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 352
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.h, align 8
  store i64 0, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCsgFSQ9XOTBNe_3syn4stmt4StmtEEB1j_(ptr nonnull align 8 %i.a)
  %i.j = load ptr, ptr %0, align 8                ; 2 uses
  store ptr %i.j, ptr %i.b, align 8
  store ptr %i.j, ptr %i.c, align 8
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCsgFSQ9XOTBNe_3syn4stmt4StmtEBG_(ptr align 8 %.val, i64 %i.g)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB8_8IntoIterppENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropINtB2_9DropGuardNtCs1K5DUQUZc67_11proc_macro25IdentNtNtBc_5alloc6GlobalEB12_4dropCs5KndGQj2IFn_15zerofrom_derive(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load i64, ptr %i.d, align 8
  store i64 %i.e, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.f, align 8
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtCs1K5DUQUZc67_11proc_macro25IdentEECs5KndGQj2IFn_15zerofrom_derive(ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB8_8IntoIterppENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtCsgFSQ9XOTBNe_3syn4expr3ArmNtNtBc_5alloc6GlobalEB12_4dropCs5KndGQj2IFn_15zerofrom_derive(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load i64, ptr %i.d, align 8
  store i64 %i.e, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.f, align 8
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCsgFSQ9XOTBNe_3syn4expr3ArmEEB1j_(ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB8_8IntoIterppENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtCsgFSQ9XOTBNe_3syn4item11ForeignItemNtNtBc_5alloc6GlobalEB12_4dropCs5KndGQj2IFn_15zerofrom_derive(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load i64, ptr %i.d, align 8
  store i64 %i.e, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.f, align 8
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCsgFSQ9XOTBNe_3syn4item11ForeignItemEEB1j_(ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB8_8IntoIterppENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtCsgFSQ9XOTBNe_3syn4item4ItemNtNtBc_5alloc6GlobalEB12_4dropCs5KndGQj2IFn_15zerofrom_derive(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load i64, ptr %i.d, align 8
  store i64 %i.e, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.f, align 8
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCsgFSQ9XOTBNe_3syn4item4ItemEEB1j_(ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB8_8IntoIterppENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtCsgFSQ9XOTBNe_3syn4item8ImplItemNtNtBc_5alloc6GlobalEB12_4dropCs5KndGQj2IFn_15zerofrom_derive(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load i64, ptr %i.d, align 8
  store i64 %i.e, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.f, align 8
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCsgFSQ9XOTBNe_3syn4item8ImplItemEEB1j_(ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB8_8IntoIterppENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtCsgFSQ9XOTBNe_3syn4item9TraitItemNtNtBc_5alloc6GlobalEB12_4dropCs5KndGQj2IFn_15zerofrom_derive(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load i64, ptr %i.d, align 8
  store i64 %i.e, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.f, align 8
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCsgFSQ9XOTBNe_3syn4item9TraitItemEEB1j_(ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB8_8IntoIterppENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtCsgFSQ9XOTBNe_3syn4stmt4StmtNtNtBc_5alloc6GlobalEB12_4dropCs5KndGQj2IFn_15zerofrom_derive(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load i64, ptr %i.d, align 8
  store i64 %i.e, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.f, align 8
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCsgFSQ9XOTBNe_3syn4stmt4StmtEEB1j_(ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB8_8IntoIterppENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropINtB2_9DropGuardTNtCs1K5DUQUZc67_11proc_macro25IdentNtNtCsgFSQ9XOTBNe_3syn5token5CommaENtNtBc_5alloc6GlobalEB12_4dropCs5KndGQj2IFn_15zerofrom_derive(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load i64, ptr %i.d, align 8
  store i64 %i.e, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.f, align 8
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecTNtCs1K5DUQUZc67_11proc_macro25IdentNtNtCsgFSQ9XOTBNe_3syn5token5CommaEEECs5KndGQj2IFn_15zerofrom_derive(ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs1K5DUQUZc67_11proc_macro25IdentENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs5KndGQj2IFn_15zerofrom_derive(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((16, 17)) %0, ptr nofree align 8 captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = icmp eq ptr %i.d, %i.b
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.f, ptr %i.c, align 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 -1, ptr %i.g, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterTNtCs1K5DUQUZc67_11proc_macro25IdentNtNtCsgFSQ9XOTBNe_3syn5token5CommaEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs5KndGQj2IFn_15zerofrom_derive(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((16, 17)) %0, ptr nofree align 8 captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = icmp eq ptr %i.d, %i.b
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.f, ptr %i.c, align 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 -1, ptr %i.g, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs1K5DUQUZc67_11proc_macro25IdentENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs5KndGQj2IFn_15zerofrom_derive(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.c, align 8
  %i.d = ptrtoint ptr %.val1 to i64
  %i.e = ptrtoint ptr %.val to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 24
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtCs1K5DUQUZc67_11proc_macro25IdentECs5KndGQj2IFn_15zerofrom_derive(ptr align 8 %.val, i64 %i.g)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtCs1K5DUQUZc67_11proc_macro25IdentNtNtBO_5alloc6GlobalEECs5KndGQj2IFn_15zerofrom_derive(ptr nonnull align 8 %i.a) #10
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtCs1K5DUQUZc67_11proc_macro25IdentNtNtBO_5alloc6GlobalEECs5KndGQj2IFn_15zerofrom_derive(ptr nonnull align 8 %i.a)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #11
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsgFSQ9XOTBNe_3syn4expr3ArmENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs5KndGQj2IFn_15zerofrom_derive(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.c, align 8
  %i.d = ptrtoint ptr %.val1 to i64
  %i.e = ptrtoint ptr %.val to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 248
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCsgFSQ9XOTBNe_3syn4expr3ArmEBG_(ptr align 8 %.val, i64 %i.g)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCsgFSQ9XOTBNe_3syn4expr3ArmNtNtBO_5alloc6GlobalEECs5KndGQj2IFn_15zerofrom_derive(ptr nonnull align 8 %i.a) #10
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCsgFSQ9XOTBNe_3syn4expr3ArmNtNtBO_5alloc6GlobalEECs5KndGQj2IFn_15zerofrom_derive(ptr nonnull align 8 %i.a)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #11
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsgFSQ9XOTBNe_3syn4item11ForeignItemENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs5KndGQj2IFn_15zerofrom_derive(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.c, align 8
  %i.d = ptrtoint ptr %.val1 to i64
  %i.e = ptrtoint ptr %.val to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 352
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCsgFSQ9XOTBNe_3syn4item11ForeignItemEBG_(ptr align 8 %.val, i64 %i.g)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCsgFSQ9XOTBNe_3syn4item11ForeignItemNtNtBO_5alloc6GlobalEECs5KndGQj2IFn_15zerofrom_derive(ptr nonnull align 8 %i.a) #10
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCsgFSQ9XOTBNe_3syn4item11ForeignItemNtNtBO_5alloc6GlobalEECs5KndGQj2IFn_15zerofrom_derive(ptr nonnull align 8 %i.a)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #11
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsgFSQ9XOTBNe_3syn4item4ItemENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs5KndGQj2IFn_15zerofrom_derive(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.c, align 8
  %i.d = ptrtoint ptr %.val1 to i64
  %i.e = ptrtoint ptr %.val to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 352
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCsgFSQ9XOTBNe_3syn4item4ItemEBG_(ptr align 8 %.val, i64 %i.g)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCsgFSQ9XOTBNe_3syn4item4ItemNtNtBO_5alloc6GlobalEECs5KndGQj2IFn_15zerofrom_derive(ptr nonnull align 8 %i.a) #10
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCsgFSQ9XOTBNe_3syn4item4ItemNtNtBO_5alloc6GlobalEECs5KndGQj2IFn_15zerofrom_derive(ptr nonnull align 8 %i.a)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #11
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsgFSQ9XOTBNe_3syn4item8ImplItemENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs5KndGQj2IFn_15zerofrom_derive(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.c, align 8
  %i.d = ptrtoint ptr %.val1 to i64
  %i.e = ptrtoint ptr %.val to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 592
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCsgFSQ9XOTBNe_3syn4item8ImplItemEBG_(ptr align 8 %.val, i64 %i.g)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCsgFSQ9XOTBNe_3syn4item8ImplItemNtNtBO_5alloc6GlobalEECs5KndGQj2IFn_15zerofrom_derive(ptr nonnull align 8 %i.a) #10
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCsgFSQ9XOTBNe_3syn4item8ImplItemNtNtBO_5alloc6GlobalEECs5KndGQj2IFn_15zerofrom_derive(ptr nonnull align 8 %i.a)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #11
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsgFSQ9XOTBNe_3syn4item9TraitItemENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs5KndGQj2IFn_15zerofrom_derive(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.c, align 8
  %i.d = ptrtoint ptr %.val1 to i64
  %i.e = ptrtoint ptr %.val to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 560
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCsgFSQ9XOTBNe_3syn4item9TraitItemEBG_(ptr align 8 %.val, i64 %i.g)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCsgFSQ9XOTBNe_3syn4item9TraitItemNtNtBO_5alloc6GlobalEECs5KndGQj2IFn_15zerofrom_derive(ptr nonnull align 8 %i.a) #10
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCsgFSQ9XOTBNe_3syn4item9TraitItemNtNtBO_5alloc6GlobalEECs5KndGQj2IFn_15zerofrom_derive(ptr nonnull align 8 %i.a)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #11
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsgFSQ9XOTBNe_3syn4stmt4StmtENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs5KndGQj2IFn_15zerofrom_derive(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.c, align 8
  %i.d = ptrtoint ptr %.val1 to i64
  %i.e = ptrtoint ptr %.val to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 352
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCsgFSQ9XOTBNe_3syn4stmt4StmtEBG_(ptr align 8 %.val, i64 %i.g)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCsgFSQ9XOTBNe_3syn4stmt4StmtNtNtBO_5alloc6GlobalEECs5KndGQj2IFn_15zerofrom_derive(ptr nonnull align 8 %i.a) #10
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCsgFSQ9XOTBNe_3syn4stmt4StmtNtNtBO_5alloc6GlobalEECs5KndGQj2IFn_15zerofrom_derive(ptr nonnull align 8 %i.a)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #11
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterTNtCs1K5DUQUZc67_11proc_macro25IdentNtNtCsgFSQ9XOTBNe_3syn5token5CommaEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs5KndGQj2IFn_15zerofrom_derive(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.c, align 8
  %i.d = ptrtoint ptr %.val1 to i64
  %i.e = ptrtoint ptr %.val to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 5
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSTNtCs1K5DUQUZc67_11proc_macro25IdentNtNtCsgFSQ9XOTBNe_3syn5token5CommaEECs5KndGQj2IFn_15zerofrom_derive(ptr align 8 %.val, i64 %i.g)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardTNtCs1K5DUQUZc67_11proc_macro25IdentNtNtCsgFSQ9XOTBNe_3syn5token5CommaENtNtBO_5alloc6GlobalEECs5KndGQj2IFn_15zerofrom_derive(ptr nonnull align 8 %i.a) #10
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardTNtCs1K5DUQUZc67_11proc_macro25IdentNtNtCsgFSQ9XOTBNe_3syn5token5CommaENtNtBO_5alloc6GlobalEECs5KndGQj2IFn_15zerofrom_derive(ptr nonnull align 8 %i.a)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #11
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.h
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden align 8 ptr @_RNvXsg_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeENtNtNtCshzWfHUSfYae_4core4iter8adapters10SourceIter8as_innerCs5KndGQj2IFn_15zerofrom_derive(ptr nofree readnone returned align 8 captures(ret: address, provenance) %0) unnamed_addr #3 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden align 8 ptr @_RNvXsg_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsgFSQ9XOTBNe_3syn4expr3ArmENtNtNtCshzWfHUSfYae_4core4iter8adapters10SourceIter8as_innerCs5KndGQj2IFn_15zerofrom_derive(ptr nofree readnone returned align 8 captures(ret: address, provenance) %0) unnamed_addr #3 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden align 8 ptr @_RNvXsg_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsgFSQ9XOTBNe_3syn4item11ForeignItemENtNtNtCshzWfHUSfYae_4core4iter8adapters10SourceIter8as_innerCs5KndGQj2IFn_15zerofrom_derive(ptr nofree readnone returned align 8 captures(ret: address, provenance) %0) unnamed_addr #3 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden align 8 ptr @_RNvXsg_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsgFSQ9XOTBNe_3syn4item4ItemENtNtNtCshzWfHUSfYae_4core4iter8adapters10SourceIter8as_innerCs5KndGQj2IFn_15zerofrom_derive(ptr nofree readnone returned align 8 captures(ret: address, provenance) %0) unnamed_addr #3 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden align 8 ptr @_RNvXsg_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsgFSQ9XOTBNe_3syn4item8ImplItemENtNtNtCshzWfHUSfYae_4core4iter8adapters10SourceIter8as_innerCs5KndGQj2IFn_15zerofrom_derive(ptr nofree readnone returned align 8 captures(ret: address, provenance) %0) unnamed_addr #3 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden align 8 ptr @_RNvXsg_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsgFSQ9XOTBNe_3syn4item9TraitItemENtNtNtCshzWfHUSfYae_4core4iter8adapters10SourceIter8as_innerCs5KndGQj2IFn_15zerofrom_derive(ptr nofree readnone returned align 8 captures(ret: address, provenance) %0) unnamed_addr #3 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden align 8 ptr @_RNvXsg_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsgFSQ9XOTBNe_3syn4stmt4StmtENtNtNtCshzWfHUSfYae_4core4iter8adapters10SourceIter8as_innerCs5KndGQj2IFn_15zerofrom_derive(ptr nofree readnone returned align 8 captures(ret: address, provenance) %0) unnamed_addr #3 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden align 8 ptr @_RNvXsh_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeENtNtB7_16in_place_collect13AsVecIntoIter12as_into_iterCs5KndGQj2IFn_15zerofrom_derive(ptr nofree readnone returned align 8 captures(ret: address, provenance) %0) unnamed_addr #4 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden align 8 ptr @_RNvXsh_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsgFSQ9XOTBNe_3syn4expr3ArmENtNtB7_16in_place_collect13AsVecIntoIter12as_into_iterCs5KndGQj2IFn_15zerofrom_derive(ptr nofree readnone returned align 8 captures(ret: address, provenance) %0) unnamed_addr #4 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden align 8 ptr @_RNvXsh_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsgFSQ9XOTBNe_3syn4item11ForeignItemENtNtB7_16in_place_collect13AsVecIntoIter12as_into_iterCs5KndGQj2IFn_15zerofrom_derive(ptr nofree readnone returned align 8 captures(ret: address, provenance) %0) unnamed_addr #4 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden align 8 ptr @_RNvXsh_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsgFSQ9XOTBNe_3syn4item4ItemENtNtB7_16in_place_collect13AsVecIntoIter12as_into_iterCs5KndGQj2IFn_15zerofrom_derive(ptr nofree readnone returned align 8 captures(ret: address, provenance) %0) unnamed_addr #4 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden align 8 ptr @_RNvXsh_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsgFSQ9XOTBNe_3syn4item8ImplItemENtNtB7_16in_place_collect13AsVecIntoIter12as_into_iterCs5KndGQj2IFn_15zerofrom_derive(ptr nofree readnone returned align 8 captures(ret: address, provenance) %0) unnamed_addr #4 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden align 8 ptr @_RNvXsh_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsgFSQ9XOTBNe_3syn4item9TraitItemENtNtB7_16in_place_collect13AsVecIntoIter12as_into_iterCs5KndGQj2IFn_15zerofrom_derive(ptr nofree readnone returned align 8 captures(ret: address, provenance) %0) unnamed_addr #4 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden align 8 ptr @_RNvXsh_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsgFSQ9XOTBNe_3syn4stmt4StmtENtNtB7_16in_place_collect13AsVecIntoIter12as_into_iterCs5KndGQj2IFn_15zerofrom_derive(ptr nofree readnone returned align 8 captures(ret: address, provenance) %0) unnamed_addr #4 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden range(i64 0, 768614336404564651) i64 @_RNvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs1K5DUQUZc67_11proc_macro25IdentENtNtNtNtCshzWfHUSfYae_4core4iter6traits10exact_size17ExactSizeIterator3lenCs5KndGQj2IFn_15zerofrom_derive(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 24
  %.val3 = load ptr, ptr %i.b, align 8
  %i.c = ptrtoint ptr %.val3 to i64
  %i.d = ptrtoint ptr %.val to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = udiv exact i64 %i.e, 24
  ret i64 %i.f
}

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #6

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeEzENtNtNtB7_3ops9try_trait3Try11from_outputCs5KndGQj2IFn_15zerofrom_derive(ptr, ptr) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, ptr } @_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeBZ_INtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1D_zENCINvNtNtB13_3gen4fold8fold_vecBZ_NtNvCs5KndGQj2IFn_15zerofrom_derive16replace_lifetime15ReplaceLifetimeNvYB3E_NtB3b_4Fold14fold_attributeE0NCINvNtB1I_16in_place_collect24write_in_place_with_dropBZ_E0E0B3I_(ptr align 8, ptr, ptr, ptr align 8) unnamed_addr #7

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeEzENtNtNtB7_3ops9try_trait3Try6branchCs5KndGQj2IFn_15zerofrom_derive(ptr, ptr) unnamed_addr #7

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() unnamed_addr #9

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, ptr } @_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeBZ_INtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1D_zENCINvNtNtB13_3gen4fold8fold_vecBZ_NtNvCs5KndGQj2IFn_15zerofrom_derive25replace_lifetime_and_type20ReplaceLifetimeAndTyNvYB3E_NtB3b_4Fold14fold_attributeE0NCINvNtB1I_16in_place_collect24write_in_place_with_dropBZ_E0E0B3I_(ptr align 8, ptr, ptr, ptr align 8) unnamed_addr #7

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropNtNtCsgFSQ9XOTBNe_3syn4expr3ArmEzENtNtNtB7_3ops9try_trait3Try11from_outputCs5KndGQj2IFn_15zerofrom_derive(ptr, ptr) unnamed_addr #7

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, ptr } @_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldNtNtCsgFSQ9XOTBNe_3syn4expr3ArmBZ_INtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1x_zENCINvNtNtB13_3gen4fold8fold_vecBZ_NtNvCs5KndGQj2IFn_15zerofrom_derive16replace_lifetime15ReplaceLifetimeNvYB3y_NtB35_4Fold8fold_armE0NCINvNtB1C_16in_place_collect24write_in_place_with_dropBZ_E0E0B3C_(ptr align 8, ptr, ptr, ptr align 8) unnamed_addr #7

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropNtNtCsgFSQ9XOTBNe_3syn4expr3ArmEzENtNtNtB7_3ops9try_trait3Try6branchCs5KndGQj2IFn_15zerofrom_derive(ptr, ptr) unnamed_addr #7

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, ptr } @_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldNtNtCsgFSQ9XOTBNe_3syn4expr3ArmBZ_INtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1x_zENCINvNtNtB13_3gen4fold8fold_vecBZ_NtNvCs5KndGQj2IFn_15zerofrom_derive25replace_lifetime_and_type20ReplaceLifetimeAndTyNvYB3y_NtB35_4Fold8fold_armE0NCINvNtB1C_16in_place_collect24write_in_place_with_dropBZ_E0E0B3C_(ptr align 8, ptr, ptr, ptr align 8) unnamed_addr #7

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropNtNtCsgFSQ9XOTBNe_3syn4item11ForeignItemEzENtNtNtB7_3ops9try_trait3Try11from_outputCs5KndGQj2IFn_15zerofrom_derive(ptr, ptr) unnamed_addr #7

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, ptr } @_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldNtNtCsgFSQ9XOTBNe_3syn4item11ForeignItemBZ_INtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1G_zENCINvNtNtB13_3gen4fold8fold_vecBZ_NtNvCs5KndGQj2IFn_15zerofrom_derive16replace_lifetime15ReplaceLifetimeNvYB3H_NtB3e_4Fold17fold_foreign_itemE0NCINvNtB1L_16in_place_collect24write_in_place_with_dropBZ_E0E0B3L_(ptr align 8, ptr, ptr, ptr align 8) unnamed_addr #7

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropNtNtCsgFSQ9XOTBNe_3syn4item11ForeignItemEzENtNtNtB7_3ops9try_trait3Try6branchCs5KndGQj2IFn_15zerofrom_derive(ptr, ptr) unnamed_addr #7

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, ptr } @_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldNtNtCsgFSQ9XOTBNe_3syn4item11ForeignItemBZ_INtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1G_zENCINvNtNtB13_3gen4fold8fold_vecBZ_NtNvCs5KndGQj2IFn_15zerofrom_derive25replace_lifetime_and_type20ReplaceLifetimeAndTyNvYB3H_NtB3e_4Fold17fold_foreign_itemE0NCINvNtB1L_16in_place_collect24write_in_place_with_dropBZ_E0E0B3L_(ptr align 8, ptr, ptr, ptr align 8) unnamed_addr #7

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropNtNtCsgFSQ9XOTBNe_3syn4item4ItemEzENtNtNtB7_3ops9try_trait3Try11from_outputCs5KndGQj2IFn_15zerofrom_derive(ptr, ptr) unnamed_addr #7

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, ptr } @_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldNtNtCsgFSQ9XOTBNe_3syn4item4ItemBZ_INtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1y_zENCINvNtNtB13_3gen4fold8fold_vecBZ_NtNvCs5KndGQj2IFn_15zerofrom_derive16replace_lifetime15ReplaceLifetimeNvYB3z_NtB36_4Fold9fold_itemE0NCINvNtB1D_16in_place_collect24write_in_place_with_dropBZ_E0E0B3D_(ptr align 8, ptr, ptr, ptr align 8) unnamed_addr #7

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropNtNtCsgFSQ9XOTBNe_3syn4item4ItemEzENtNtNtB7_3ops9try_trait3Try6branchCs5KndGQj2IFn_15zerofrom_derive(ptr, ptr) unnamed_addr #7

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, ptr } @_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldNtNtCsgFSQ9XOTBNe_3syn4item4ItemBZ_INtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1y_zENCINvNtNtB13_3gen4fold8fold_vecBZ_NtNvCs5KndGQj2IFn_15zerofrom_derive25replace_lifetime_and_type20ReplaceLifetimeAndTyNvYB3z_NtB36_4Fold9fold_itemE0NCINvNtB1D_16in_place_collect24write_in_place_with_dropBZ_E0E0B3D_(ptr align 8, ptr, ptr, ptr align 8) unnamed_addr #7

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropNtNtCsgFSQ9XOTBNe_3syn4item8ImplItemEzENtNtNtB7_3ops9try_trait3Try11from_outputCs5KndGQj2IFn_15zerofrom_derive(ptr, ptr) unnamed_addr #7

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, ptr } @_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldNtNtCsgFSQ9XOTBNe_3syn4item8ImplItemBZ_INtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1C_zENCINvNtNtB13_3gen4fold8fold_vecBZ_NtNvCs5KndGQj2IFn_15zerofrom_derive16replace_lifetime15ReplaceLifetimeNvYB3D_NtB3a_4Fold14fold_impl_itemE0NCINvNtB1H_16in_place_collect24write_in_place_with_dropBZ_E0E0B3H_(ptr align 8, ptr, ptr, ptr align 8) unnamed_addr #7

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropNtNtCsgFSQ9XOTBNe_3syn4item8ImplItemEzENtNtNtB7_3ops9try_trait3Try6branchCs5KndGQj2IFn_15zerofrom_derive(ptr, ptr) unnamed_addr #7

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, ptr } @_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldNtNtCsgFSQ9XOTBNe_3syn4item8ImplItemBZ_INtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1C_zENCINvNtNtB13_3gen4fold8fold_vecBZ_NtNvCs5KndGQj2IFn_15zerofrom_derive25replace_lifetime_and_type20ReplaceLifetimeAndTyNvYB3D_NtB3a_4Fold14fold_impl_itemE0NCINvNtB1H_16in_place_collect24write_in_place_with_dropBZ_E0E0B3H_(ptr align 8, ptr, ptr, ptr align 8) unnamed_addr #7

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropNtNtCsgFSQ9XOTBNe_3syn4item9TraitItemEzENtNtNtB7_3ops9try_trait3Try11from_outputCs5KndGQj2IFn_15zerofrom_derive(ptr, ptr) unnamed_addr #7

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, ptr } @_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldNtNtCsgFSQ9XOTBNe_3syn4item9TraitItemBZ_INtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1D_zENCINvNtNtB13_3gen4fold8fold_vecBZ_NtNvCs5KndGQj2IFn_15zerofrom_derive16replace_lifetime15ReplaceLifetimeNvYB3E_NtB3b_4Fold15fold_trait_itemE0NCINvNtB1I_16in_place_collect24write_in_place_with_dropBZ_E0E0B3I_(ptr align 8, ptr, ptr, ptr align 8) unnamed_addr #7

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropNtNtCsgFSQ9XOTBNe_3syn4item9TraitItemEzENtNtNtB7_3ops9try_trait3Try6branchCs5KndGQj2IFn_15zerofrom_derive(ptr, ptr) unnamed_addr #7

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, ptr } @_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldNtNtCsgFSQ9XOTBNe_3syn4item9TraitItemBZ_INtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1D_zENCINvNtNtB13_3gen4fold8fold_vecBZ_NtNvCs5KndGQj2IFn_15zerofrom_derive25replace_lifetime_and_type20ReplaceLifetimeAndTyNvYB3E_NtB3b_4Fold15fold_trait_itemE0NCINvNtB1I_16in_place_collect24write_in_place_with_dropBZ_E0E0B3I_(ptr align 8, ptr, ptr, ptr align 8) unnamed_addr #7

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropNtNtCsgFSQ9XOTBNe_3syn4stmt4StmtEzENtNtNtB7_3ops9try_trait3Try11from_outputCs5KndGQj2IFn_15zerofrom_derive(ptr, ptr) unnamed_addr #7

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, ptr } @_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldNtNtCsgFSQ9XOTBNe_3syn4stmt4StmtBZ_INtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1y_zENCINvNtNtB13_3gen4fold8fold_vecBZ_NtNvCs5KndGQj2IFn_15zerofrom_derive16replace_lifetime15ReplaceLifetimeNvYB3z_NtB36_4Fold9fold_stmtE0NCINvNtB1D_16in_place_collect24write_in_place_with_dropBZ_E0E0B3D_(ptr align 8, ptr, ptr, ptr align 8) unnamed_addr #7

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropNtNtCsgFSQ9XOTBNe_3syn4stmt4StmtEzENtNtNtB7_3ops9try_trait3Try6branchCs5KndGQj2IFn_15zerofrom_derive(ptr, ptr) unnamed_addr #7

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, ptr } @_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldNtNtCsgFSQ9XOTBNe_3syn4stmt4StmtBZ_INtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1y_zENCINvNtNtB13_3gen4fold8fold_vecBZ_NtNvCs5KndGQj2IFn_15zerofrom_derive25replace_lifetime_and_type20ReplaceLifetimeAndTyNvYB3z_NtB36_4Fold9fold_stmtE0NCINvNtB1D_16in_place_collect24write_in_place_with_dropBZ_E0E0B3D_(ptr align 8, ptr, ptr, ptr align 8) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs0_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeE16as_raw_mut_sliceB10_(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeEEB1j_(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeEBG_(ptr align 8, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCsgFSQ9XOTBNe_3syn4expr3ArmEEB1j_(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCsgFSQ9XOTBNe_3syn4expr3ArmEBG_(ptr align 8, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCsgFSQ9XOTBNe_3syn4item11ForeignItemEEB1j_(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCsgFSQ9XOTBNe_3syn4item11ForeignItemEBG_(ptr align 8, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCsgFSQ9XOTBNe_3syn4item4ItemEEB1j_(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCsgFSQ9XOTBNe_3syn4item4ItemEBG_(ptr align 8, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCsgFSQ9XOTBNe_3syn4item8ImplItemEEB1j_(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCsgFSQ9XOTBNe_3syn4item8ImplItemEBG_(ptr align 8, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCsgFSQ9XOTBNe_3syn4item9TraitItemEEB1j_(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCsgFSQ9XOTBNe_3syn4item9TraitItemEBG_(ptr align 8, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCsgFSQ9XOTBNe_3syn4stmt4StmtEEB1j_(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCsgFSQ9XOTBNe_3syn4stmt4StmtEBG_(ptr align 8, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtCs1K5DUQUZc67_11proc_macro25IdentEECs5KndGQj2IFn_15zerofrom_derive(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecTNtCs1K5DUQUZc67_11proc_macro25IdentNtNtCsgFSQ9XOTBNe_3syn5token5CommaEEECs5KndGQj2IFn_15zerofrom_derive(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtCs1K5DUQUZc67_11proc_macro25IdentECs5KndGQj2IFn_15zerofrom_derive(ptr align 8, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtCs1K5DUQUZc67_11proc_macro25IdentNtNtBO_5alloc6GlobalEECs5KndGQj2IFn_15zerofrom_derive(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCsgFSQ9XOTBNe_3syn4expr3ArmNtNtBO_5alloc6GlobalEECs5KndGQj2IFn_15zerofrom_derive(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCsgFSQ9XOTBNe_3syn4item11ForeignItemNtNtBO_5alloc6GlobalEECs5KndGQj2IFn_15zerofrom_derive(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCsgFSQ9XOTBNe_3syn4item4ItemNtNtBO_5alloc6GlobalEECs5KndGQj2IFn_15zerofrom_derive(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCsgFSQ9XOTBNe_3syn4item8ImplItemNtNtBO_5alloc6GlobalEECs5KndGQj2IFn_15zerofrom_derive(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCsgFSQ9XOTBNe_3syn4item9TraitItemNtNtBO_5alloc6GlobalEECs5KndGQj2IFn_15zerofrom_derive(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCsgFSQ9XOTBNe_3syn4stmt4StmtNtNtBO_5alloc6GlobalEECs5KndGQj2IFn_15zerofrom_derive(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSTNtCs1K5DUQUZc67_11proc_macro25IdentNtNtCsgFSQ9XOTBNe_3syn5token5CommaEECs5KndGQj2IFn_15zerofrom_derive(ptr align 8, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardTNtCs1K5DUQUZc67_11proc_macro25IdentNtNtCsgFSQ9XOTBNe_3syn5token5CommaENtNtBO_5alloc6GlobalEECs5KndGQj2IFn_15zerofrom_derive(ptr align 8) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #8

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold }
attributes #11 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.99.0-nightly (73dc9167f 2026-08-01)"}
end_hunk_0
