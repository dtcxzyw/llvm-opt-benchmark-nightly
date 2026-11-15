Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontdrasil-bdef820a3e288df5.fontdrasil.bcdef5e85db49d1a-cgu.03?download=true
inline.NumInlined: 239
inline.NumDeleted: 196
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [80 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00I@\00\00\00\00\00@O@\00\00\00\00\00\C0R@\00\00\00\00\00\E0U@\00\00\00\00\00\00Y@\00\00\00\00\00 \\@\00\00\00\00\00@_@\00\00\00\00\00\C0b@\00\00\00\00\00\00i@", align 8
@1 = private unnamed_addr constant [29 x i8] c"fontdrasil/src/variations.rs\00", align 1
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\1C\00\00\00\00\00\00\00y\03\00\007\00\00\00" }>, align 8
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\1C\00\00\00\00\00\00\00|\03\00\000\00\00\00" }>, align 8
@4 = private unnamed_addr constant [22 x i8] c"fontdrasil/src/agl.rs\00", align 1
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"\15\00\00\00\00\00\00\00P\00\00\00-\00\00\00" }>, align 8
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"\15\00\00\00\00\00\00\00P\00\00\00E\00\00\00" }>, align 8
@7 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsc_NtNtCsf3Ta7LF998c_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt5Debug3fmt }>, align 8
@8 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@9 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsgdm2QMcbaeA_10fontdrasil }>, align 8
@10 = private unnamed_addr constant [13 x i8] c"ParseIntError", align 1
@11 = private unnamed_addr constant [4 x i8] c"kind", align 1

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i32 -2, 1114112) i32 @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_3ops5range5RangejENCNvNtCsgdm2QMcbaeA_10fontdrasil3agl14uni_to_unicode0ENCB1v_s_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6option6OptionzEEB2v_8try_folduNCINvNvB2v_12try_for_each4callcINtNtB16_12control_flow11ControlFlowcENcNtB4R_5Break0E0B4R_E0IB4S_B4R_EEB1z_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readnone captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  %i.d = load i64, ptr %i.b, align 8, !alias.scope !30, !noundef !4 ; 3 uses
  %i.e = load i64, ptr %i.c, align 8, !alias.scope !31, !noundef !4
  %i.f = icmp ult i64 %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvNtCsgdm2QMcbaeA_10fontdrasil3agl14uni_to_unicode0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB6_12map_try_foldmINtNtBc_6option6OptioncEuINtNtB12_12control_flow11ControlFlowIB3M_cEENCB1r_s_0NCINvXB8_INtB8_12GenericShuntIBO_BN_B4t_EIB3n_zEEB2h_8try_folduNCINvNvB2h_12try_for_each4callcB4l_NcNtB4l_5Break0E0B4l_E0E0B3L_EB1v_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = add nuw i64 %i.d, 1
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !32
  %.val.i.i.i = load ptr, ptr %0, align 8, !alias.scope !26, !noalias !27, !nonnull !4, !noundef !4 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !26, !noalias !27, !noundef !4 ; 3 uses
  %i.i = shl i64 %i.d, 2                          ; 6 uses
  %i.j = add i64 %i.i, 4                          ; 3 uses
  %i.k = or disjoint i64 %i.i, 3
  %or.cond.i.not.i.i.i.i = icmp ult i64 %i.k, %.val1.i.i.i
  br i1 %or.cond.i.not.i.i.i.i, label %bb.c, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread3.i.i.i.i, !prof !33

bb.c:                                             ; preds = %bb.b
  %i.l = icmp eq i64 %i.i, 0
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.m = icmp eq i64 %i.j, %.val1.i.i.i
  br i1 %i.m, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread.i.i.i.i, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.i
  %i.o = load i8, ptr %i.n, align 1, !alias.scope !34, !noalias !35, !noundef !4
  %i.p = icmp sgt i8 %i.o, -65
  br i1 %i.p, label %bb.d, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread3.i.i.i.i, !prof !33

_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.i.i.i.i: ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.j
  %i.r = load i8, ptr %i.q, align 1, !alias.scope !34, !noalias !35, !noundef !4
  %i.s = icmp sgt i8 %i.r, -65
  br i1 %i.s, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread.i.i.i.i, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread3.i.i.i.i, !prof !36

_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread3.i.i.i.i: ; preds = %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.i.i.i.i, %bb.e, %bb.b
  tail call void @_RNvNtCsf3Ta7LF998c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i, i64 noundef %.val1.i.i.i, i64 noundef %i.i, i64 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #15, !noalias !35
  unreachable

_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread.i.i.i.i: ; preds = %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.i.i.i.i, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.i ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !37, !noalias !35, !noundef !4
  %cond.i.i.i.i.i = icmp eq i8 %i.u, 43           ; 2 uses
  %.sroa.15.0.i.i.i.i.i = select i1 %cond.i.i.i.i.i, i64 3, i64 4
  %.sroa.0.0.idx.i.i.i.i.i = zext i1 %cond.i.i.i.i.i to i64
  %.sroa.0.0.i5.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.0.0.idx.i.i.i.i.i
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread.i.i.i.i
  %.sroa.0.258.i.i.i.i.i = phi ptr [ %.sroa.0.0.i5.i.i.i.i, %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread.i.i.i.i ], [ %5, %bb.g ] ; 2 uses
  %.sroa.15.257.i.i.i.i.i = phi i64 [ %.sroa.15.0.i.i.i.i.i, %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread.i.i.i.i ], [ %4, %bb.g ]
  %.sroa.045.256.i.i.i.i.i = phi i32 [ 0, %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread.i.i.i.i ], [ %6, %bb.g ] ; 2 uses
  %i.v = load i8, ptr %.sroa.0.258.i.i.i.i.i, align 1, !alias.scope !37, !noalias !35, !noundef !4 ; 2 uses
  %i.w = zext i8 %i.v to i32                      ; 2 uses
  %i.x = icmp ugt i8 %i.v, 57
  %i.y = add nsw i32 %i.w, -65
  %i.z = and i32 %i.y, -33
  %i.aa = add nuw nsw i32 %i.z, 10
  %i.ab = add nsw i32 %i.w, -48
  %.sroa.02.0.i.i.i.i.i.i.a = select i1 %i.x, i32 %i.aa, i32 %i.ab ; 2 uses
  %i.ac = icmp ult i32 %.sroa.02.0.i.i.i.i.i.i.a, 16
  br i1 %i.ac, label %bb.g, label %_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit.thread.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %3 = shl i32 %.sroa.045.256.i.i.i.i.i, 4
  %4 = add nsw i64 %.sroa.15.257.i.i.i.i.i, -1    ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %.sroa.0.258.i.i.i.i.i, i64 1
  %6 = or disjoint i32 %.sroa.02.0.i.i.i.i.i.i.a, %3 ; 4 uses
  %.not.i.i.i.i.i = icmp eq i64 %4, 0
  br i1 %.not.i.i.i.i.i, label %_RNCNvNtCsgdm2QMcbaeA_10fontdrasil3agl14uni_to_unicode0B5_.exit.i.i.i, label %bb.f

_RNvMsB_NtCsf3Ta7LF998c_4core3numm27from_ascii_bytes_radix_impl.exit.thread.i.i.i.i: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !35
  store i8 1, ptr %i.a, align 1, !noalias !35
  call void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #15, !noalias !35
  unreachable

_RNCNvNtCsgdm2QMcbaeA_10fontdrasil3agl14uni_to_unicode0B5_.exit.i.i.i: ; preds = %bb.g
  %i.ad = and i32 %.sroa.045.256.i.i.i.i.i, 268435328
  %spec.select.i.i.i.i.i.i = icmp eq i32 %i.ad, 3456
  %i.ae = xor i32 %6, 55296
  %i.af = add i32 %i.ae, -1114112
  %i.ag = icmp ult i32 %i.af, -1112064
  %i.ah = or i1 %spec.select.i.i.i.i.i.i, %i.ag
  %7 = icmp eq i32 %6, -1
  %8 = select i1 %i.ah, i1 true, i1 %7
  br i1 %8, label %bb.h, label %_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvNtCsgdm2QMcbaeA_10fontdrasil3agl14uni_to_unicode0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB6_12map_try_foldmINtNtBc_6option6OptioncEuINtNtB12_12control_flow11ControlFlowIB3M_cEENCB1r_s_0NCINvXB8_INtB8_12GenericShuntIBO_BN_B4t_EIB3n_zEEB2h_8try_folduNCINvNvB2h_12try_for_each4callcB4l_NcNtB4l_5Break0E0B4l_E0E0B3L_EB1v_.exit

bb.h:                                             ; preds = %_RNCNvNtCsgdm2QMcbaeA_10fontdrasil3agl14uni_to_unicode0B5_.exit.i.i.i
  store i8 1, ptr %2, align 1, !noalias !35
  br label %_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvNtCsgdm2QMcbaeA_10fontdrasil3agl14uni_to_unicode0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB6_12map_try_foldmINtNtBc_6option6OptioncEuINtNtB12_12control_flow11ControlFlowIB3M_cEENCB1r_s_0NCINvXB8_INtB8_12GenericShuntIBO_BN_B4t_EIB3n_zEEB2h_8try_folduNCINvNvB2h_12try_for_each4callcB4l_NcNtB4l_5Break0E0B4l_E0E0B3L_EB1v_.exit

_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvNtCsgdm2QMcbaeA_10fontdrasil3agl14uni_to_unicode0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB6_12map_try_foldmINtNtBc_6option6OptioncEuINtNtB12_12control_flow11ControlFlowIB3M_cEENCB1r_s_0NCINvXB8_INtB8_12GenericShuntIBO_BN_B4t_EIB3n_zEEB2h_8try_folduNCINvNvB2h_12try_for_each4callcB4l_NcNtB4l_5Break0E0B4l_E0E0B3L_EB1v_.exit: ; preds = %bb.a, %_RNCNvNtCsgdm2QMcbaeA_10fontdrasil3agl14uni_to_unicode0B5_.exit.i.i.i, %bb.h
  %.sroa.0.0.i.i = phi i32 [ -1, %bb.h ], [ %6, %_RNCNvNtCsgdm2QMcbaeA_10fontdrasil3agl14uni_to_unicode0B5_.exit.i.i.i ], [ -2, %bb.a ]
  ret i32 %.sroa.0.0.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterReEENvMs9_NtCsgdm2QMcbaeA_10fontdrasil5typesNtB1T_4Axis8for_testENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2M_8for_each4callB2r_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB42_3VecB2r_E14extend_trustedBN_E0E0EB1V_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterReEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1s_NtNtCsgdm2QMcbaeA_10fontdrasil5types4AxisuNvMs9_B2D_B2B_8for_testNCINvNvB1w_8for_each4callB2B_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4g_3VecB2B_E14extend_trustedINtB2f_3MapBP_B3h_EE0E0E0EB2F_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateIBO_INtNtNtBc_5slice4iter4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1W_15NormalizedSpaceEENCNvMs1_NtB1Y_10variationsNtB3b_14VariationModel8new_impls0_0EENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1T_18sort_by_cached_keyNtB3b_15LocationSortKeyB33_Es_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5x_8for_each4callTB51_jENCINvMsk_NtB4c_3vecINtB6Q_3VecB6A_E14extend_trustedBN_E0E0EB1Y_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !59, !noundef !4
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !alias.scope !60 ; 4 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !60 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !60
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  %i.d = load ptr, ptr %0, align 8, !alias.scope !62, !nonnull !4, !noundef !4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !62, !nonnull !4, !noundef !4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !62, !nonnull !4, !align !5, !noundef !4
  %i.i = icmp eq ptr %i.d, %i.f
  br i1 %i.i, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1R_15NormalizedSpaceEENCNvMs1_NtB1T_10variationsNtB36_14VariationModel8new_impls0_0EENtNtNtB9_6traits8iterator8Iterator4folduNCINvB1b_8map_foldTjNtB36_15LocationSortKeyETB4X_jEuNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1O_18sort_by_cached_keyB4X_B2Y_Es_0NCINvNvB3Z_8for_each4callB5l_NCINvMsk_NtB5B_3vecINtB7e_3VecB5l_E14extend_trustedIB19_BS_B5t_EE0E0E0EB1T_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = udiv exact i64 %i.l, 24
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val10.i.i.i = phi i64 [ %.sroa.4.0.copyload.i, %bb.b ], [ %i.q, %bb.d ] ; 3 uses
  %i.n = phi i64 [ %i.c, %bb.b ], [ %i.r, %bb.d ] ; 2 uses
  %.sroa.01.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.s, %bb.d ] ; 2 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.sroa.01.0.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !63
  invoke void @_RNvMs2_NtCsgdm2QMcbaeA_10fontdrasil10variationsNtB5_18LocationSortingHat7key_for(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o)
          to label %bb.d unwind label %bb.e, !noalias !64

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw [120 x i8], ptr %.sroa.5.0.copyload.i, i64 %.val10.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.p, ptr noundef nonnull readonly align 8 dereferenceable(112) %i.a, i64 112, i1 false), !noalias !65
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 112
  store i64 %i.n, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !66
  %i.q = add i64 %.val10.i.i.i, 1                 ; 2 uses
  %i.r = add i64 %i.n, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !63
  %i.s = add nuw i64 %.sroa.01.0.i.i.i, 1         ; 2 uses
  %i.t = icmp eq i64 %i.s, %i.m
  br i1 %i.t, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1R_15NormalizedSpaceEENCNvMs1_NtB1T_10variationsNtB36_14VariationModel8new_impls0_0EENtNtNtB9_6traits8iterator8Iterator4folduNCINvB1b_8map_foldTjNtB36_15LocationSortKeyETB4X_jEuNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1O_18sort_by_cached_keyB4X_B2Y_Es_0NCINvNvB3Z_8for_each4callB5l_NCINvMsk_NtB5B_3vecINtB7e_3VecB5l_E14extend_trustedIB19_BS_B5t_EE0E0E0EB1T_.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  store i64 %.val10.i.i.i, ptr %.sroa.0.0.copyload.i, align 8, !noalias !64
  resume { ptr, i32 } %i.u

_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1R_15NormalizedSpaceEENCNvMs1_NtB1T_10variationsNtB36_14VariationModel8new_impls0_0EENtNtNtB9_6traits8iterator8Iterator4folduNCINvB1b_8map_foldTjNtB36_15LocationSortKeyETB4X_jEuNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1O_18sort_by_cached_keyB4X_B2Y_Es_0NCINvNvB3Z_8for_each4callB5l_NCINvMsk_NtB5B_3vecINtB7e_3VecB5l_E14extend_trustedIB19_BS_B5t_EE0E0E0EB1T_.exit: ; preds = %bb.d, %bb.a
  %storemerge.i.i = phi i64 [ %.sroa.4.0.copyload.i, %bb.a ], [ %i.q, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  store i64 %storemerge.i.i, ptr %.sroa.0.0.copyload.i, align 8, !noalias !64
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types4AxisEENCNvMsa_B1R_NtB1R_4Axes3new0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2Z_8for_each4callTNtNtCsbZq13ASDQ8l_10font_types3tag3TagjENCINvXs1i_NtCsbDKHzkXHCUM_9hashbrown3mapINtB4R_7HashMapB43_jNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtB33_7collect6ExtendB42_E6extendBN_E0E0EB1T_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !73, !nonnull !4, !noundef !4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !73, !nonnull !4, !noundef !4 ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types4AxisEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTjRB1y_ETNtNtCsbZq13ASDQ8l_10font_types3tag3TagjEuNCNvMsa_B1A_NtB1A_4Axes3new0NCINvNvB2f_8for_each4callB3o_NCINvXs1i_NtCsbDKHzkXHCUM_9hashbrown3mapINtB59_7HashMapB3p_jNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtB2j_7collect6ExtendB3o_E6extendINtB2Y_3MapBS_B44_EE0E0E0EB1C_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !73, !noundef !4
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = udiv exact i64 %i.i, 296
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.2.0.i.i = phi i64 [ %i.f, %bb.b ], [ %i.n, %bb.c ] ; 2 uses
  %.sroa.01.0.i.i = phi i64 [ 0, %bb.b ], [ %i.o, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw [296 x i8], ptr %i.a, i64 %.sroa.01.0.i.i
  %i.l = getelementptr i8, ptr %i.k, i64 288
  %.val.i.i = load i32, ptr %i.l, align 8, !noalias !73
  %i.m = tail call { i64, i64 } @_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtCsbZq13ASDQ8l_10font_types3tag3TagjNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6insertCsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %.val.i.i, i64 noundef %.sroa.2.0.i.i), !noalias !74 ; 0 uses
  %i.n = add i64 %.sroa.2.0.i.i, 1
  %i.o = add nuw i64 %.sroa.01.0.i.i, 1           ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.j
  br i1 %i.p, label %_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types4AxisEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTjRB1y_ETNtNtCsbZq13ASDQ8l_10font_types3tag3TagjEuNCNvMsa_B1A_NtB1A_4Axes3new0NCINvNvB2f_8for_each4callB3o_NCINvXs1i_NtCsbDKHzkXHCUM_9hashbrown3mapINtB59_7HashMapB3p_jNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtB2j_7collect6ExtendB3o_E6extendINtB2Y_3MapBS_B44_EE0E0E0EB1C_.exit, label %bb.c

_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types4AxisEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTjRB1y_ETNtNtCsbZq13ASDQ8l_10font_types3tag3TagjEuNCNvMsa_B1A_NtB1A_4Axes3new0NCINvNvB2f_8for_each4callB3o_NCINvXs1i_NtCsbDKHzkXHCUM_9hashbrown3mapINtB59_7HashMapB3p_jNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtB2j_7collect6ExtendB3o_E6extendINtB2Y_3MapBS_B44_EE0E0E0EB1C_.exit: ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3str4iter5SplitcENvNtCsgdm2QMcbaeA_10fontdrasil3agl26glyph_component_to_unicodeENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvMsg_NtB8_7flattenINtB3e_13FlattenCompatppE9iter_fold7flattenINtNtCsgCecv3eZDcN_5alloc3vec3VeccEuNCINvNvXsi_B3e_B3r_B2p_4fold7flattenINtNtB4b_9into_iter8IntoItercEuNCINvNvB2p_8for_each4callcNCINvXsd_NtB4d_6stringNtB6m_6StringINtNtB2t_7collect6ExtendcE6extendINtB3e_7FlatMapBX_B48_B1o_EE0E0E0E0EB1s_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 11 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [72 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %0, i64 72, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 65 ; 2 uses
  %.promoted.i = load i8, ptr %i.d, align 1, !alias.scope !93
  %.promoted11.i = load i64, ptr %i.c, align 8, !alias.scope !92 ; 4 uses
  %i.e = trunc nuw i8 %.promoted.i to i1
  br i1 %i.e, label %_RINvYINtNtNtCsf3Ta7LF998c_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBQ_8adapters3map8map_foldReINtNtCsgCecv3eZDcN_5alloc3vec3VeccEuNvNtCsgdm2QMcbaeA_10fontdrasil3agl26glyph_component_to_unicodeNCINvNvMsg_NtB1C_7flattenINtB3Q_13FlattenCompatppE9iter_fold7flattenB25_uNCINvNvXsi_B3Q_B44_BK_4fold7flattenINtNtB28_9into_iter8IntoItercEuNCINvNvBK_8for_each4callcNCINvXsd_NtB2a_6stringNtB6s_6StringINtNtBO_7collect6ExtendcE6extendINtB3Q_7FlatMapB3_B25_B2F_EE0E0E0E0E0EB2J_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.val.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !93, !nonnull !4, !noundef !4 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.val1.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !93, !noundef !4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !94, !noundef !4 ; 8 uses
  %.not.i.i.i.i = icmp ugt i64 %i.i, %.val1.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.l = load i8, ptr %i.k, align 8, !alias.scope !92 ; 2 uses
  %i.m = zext nneg i8 %i.l to i64                 ; 4 uses
  %i.n = icmp ult i8 %i.l, 5
  %i.o = getelementptr i8, ptr %i.j, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 -1
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.r = load i8, ptr %i.q, align 8, !range !6, !alias.scope !92
  %i.s = trunc nuw i8 %i.r to i1                  ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre2.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !92 ; 4 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  br i1 %.not.i.i.i.i, label %.lr.ph.split.us.i, label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.promoted15.i = load i64, ptr %i.t, align 8, !alias.scope !94
  br label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %.not.i3.i.i.us.i = icmp ne i64 %.pre2.i.i.i.i, %.promoted11.i
  %or.cond.not.i.i.i.us.i = select i1 %i.s, i1 true, i1 %.not.i3.i.i.us.i
  br i1 %or.cond.not.i.i.i.us.i, label %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsgdm2QMcbaeA_10fontdrasil.exit.i.i.us.i, label %_RINvYINtNtNtCsf3Ta7LF998c_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBQ_8adapters3map8map_foldReINtNtCsgCecv3eZDcN_5alloc3vec3VeccEuNvNtCsgdm2QMcbaeA_10fontdrasil3agl26glyph_component_to_unicodeNCINvNvMsg_NtB1C_7flattenINtB3Q_13FlattenCompatppE9iter_fold7flattenB25_uNCINvNvXsi_B3Q_B44_BK_4fold7flattenINtNtB28_9into_iter8IntoItercEuNCINvNvBK_8for_each4callcNCINvXsd_NtB2a_6stringNtB6s_6StringINtNtBO_7collect6ExtendcE6extendINtB3Q_7FlatMapB3_B25_B2F_EE0E0E0E0E0EB2J_.exit

_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsgdm2QMcbaeA_10fontdrasil.exit.i.i.us.i: ; preds = %.lr.ph.split.us.i
  %.sroa.0.1.i.i.us.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.promoted11.i
  %i.u = sub nuw i64 %.pre2.i.i.i.i, %.promoted11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !98
  call void @_RNvNtCsgdm2QMcbaeA_10fontdrasil3agl26glyph_component_to_unicode(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.us.i, i64 noundef %i.u), !noalias !92
  %.sroa.0.0.copyload.i.us.i = load i64, ptr %i.b, align 8, !noalias !98
  %.sroa.4.0.copyload.i.us.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !98, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.5.0.copyload.i.us.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !98 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !99
  %i.v = icmp ult i64 %.sroa.5.0.copyload.i.us.i, 2305843009213693952
  tail call void @llvm.assume(i1 %i.v)
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4.0.copyload.i.us.i, i64 %.sroa.5.0.copyload.i.us.i
  store ptr %.sroa.4.0.copyload.i.us.i, ptr %i.a, align 8, !noalias !99
  store ptr %.sroa.4.0.copyload.i.us.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !99
  store i64 %.sroa.0.0.copyload.i.us.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !99
  store ptr %i.w, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !99
  call void @_RINvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB6_8IntoItercENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduQNCINvNvBZ_8for_each4callcNCINvXsd_NtBa_6stringNtB2z_6StringINtNtB13_7collect6ExtendcE6extendINtNtNtB15_8adapters7flatten7FlatMapINtNtNtB17_3str4iter5SplitcEINtB8_3VeccENvNtCsgdm2QMcbaeA_10fontdrasil3agl26glyph_component_to_unicodeEE0E0EB4N_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1), !noalias !100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !99
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !98
  br label %_RINvYINtNtNtCsf3Ta7LF998c_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBQ_8adapters3map8map_foldReINtNtCsgCecv3eZDcN_5alloc3vec3VeccEuNvNtCsgdm2QMcbaeA_10fontdrasil3agl26glyph_component_to_unicodeNCINvNvMsg_NtB1C_7flattenINtB3Q_13FlattenCompatppE9iter_fold7flattenB25_uNCINvNvXsi_B3Q_B44_BK_4fold7flattenINtNtB28_9into_iter8IntoItercEuNCINvNvBK_8for_each4callcNCINvXsd_NtB2a_6stringNtB6s_6StringINtNtBO_7collect6ExtendcE6extendINtB3Q_7FlatMapB3_B25_B2F_EE0E0E0E0E0EB2J_.exit

.lr.ph.split.i:                                   ; preds = %select.unfold.i, %.lr.ph.split.preheader.i
  %i.x = phi i64 [ %i.at, %select.unfold.i ], [ %.promoted15.i, %.lr.ph.split.preheader.i ] ; 3 uses
  %.lcssa91314.i = phi i64 [ %.lcssa912.i, %select.unfold.i ], [ %.promoted11.i, %.lr.ph.split.preheader.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !95)
  call void @llvm.experimental.noalias.scope.decl(metadata !96)
  call void @llvm.experimental.noalias.scope.decl(metadata !97)
  %i.y = icmp ult i64 %i.i, %i.x
  br i1 %i.y, label %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsgdm2QMcbaeA_10fontdrasil.exit.i.i.i, label %.lr.ph.split.preheader.i.i.i.i

.lr.ph.split.preheader.i.i.i.i:                   ; preds = %.lr.ph.split.i
  call void @llvm.assume(i1 %i.n)
  %.pre.i.i.i.i = load i8, ptr %i.p, align 1, !alias.scope !94 ; 2 uses
  br label %.lr.ph.split.i.i.i.i

.lr.ph.split.i.i.i.i:                             ; preds = %bb.d, %.lr.ph.split.preheader.i.i.i.i
end_hunk_0
