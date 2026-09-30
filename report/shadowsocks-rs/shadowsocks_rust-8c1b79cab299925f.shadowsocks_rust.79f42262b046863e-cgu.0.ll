Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/shadowsocks_rust-8c1b79cab299925f.shadowsocks_rust.79f42262b046863e-cgu.0?download=true
inline.NumInlined: 5128
inline.NumDeleted: 2462
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs2A06LPInLO3_11directories11ProjectDirsECsat9HgdBb3qc_16shadowsocks_rust:bb.a
  br i1 %i.g, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsat9HgdBb3qc_16shadowsocks_rust.exit9, label %bb.d

bb.d:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsat9HgdBb3qc_16shadowsocks_rust.exit6
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val1.i8 = load ptr, ptr %i.h, align 8, !alias.scope !2331, !nonnull !14, !noundef !14
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i8, i64 noundef %.val.i7, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !2333
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsat9HgdBb3qc_16shadowsocks_rust.exit9

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsat9HgdBb3qc_16shadowsocks_rust.exit9: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsat9HgdBb3qc_16shadowsocks_rust.exit6, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2334)
  %.val.i10 = load i64, ptr %i.i, align 8, !range !16, !alias.scope !2335, !noundef !14 ; 2 uses
  %i.j = icmp eq i64 %.val.i10, 0
  br i1 %i.j, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsat9HgdBb3qc_16shadowsocks_rust.exit12, label %bb.e

bb.e:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsat9HgdBb3qc_16shadowsocks_rust.exit9
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val1.i11 = load ptr, ptr %i.k, align 8, !alias.scope !2334, !nonnull !14, !noundef !14
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i11, i64 noundef %.val.i10, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !2336
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsat9HgdBb3qc_16shadowsocks_rust.exit12

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsat9HgdBb3qc_16shadowsocks_rust.exit12: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsat9HgdBb3qc_16shadowsocks_rust.exit9, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2337)
  %.val.i13 = load i64, ptr %i.l, align 8, !range !16, !alias.scope !2338, !noundef !14 ; 2 uses
  %i.m = icmp eq i64 %.val.i13, 0
  br i1 %i.m, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsat9HgdBb3qc_16shadowsocks_rust.exit15, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsat9HgdBb3qc_16shadowsocks_rust.exit12
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val1.i14 = load ptr, ptr %i.n, align 8, !alias.scope !2337, !nonnull !14, !noundef !14
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i14, i64 noundef %.val.i13, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !2339
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsat9HgdBb3qc_16shadowsocks_rust.exit15

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsat9HgdBb3qc_16shadowsocks_rust.exit15: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsat9HgdBb3qc_16shadowsocks_rust.exit12, %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2340)
  %.val.i16 = load i64, ptr %i.o, align 8, !range !16, !alias.scope !2341, !noundef !14 ; 2 uses
  %i.p = icmp eq i64 %.val.i16, 0
  br i1 %i.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsat9HgdBb3qc_16shadowsocks_rust.exit18, label %bb.g

bb.g:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsat9HgdBb3qc_16shadowsocks_rust.exit15
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.val1.i17 = load ptr, ptr %i.q, align 8, !alias.scope !2340, !nonnull !14, !noundef !14
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i17, i64 noundef %.val.i16, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !2342
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsat9HgdBb3qc_16shadowsocks_rust.exit18

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsat9HgdBb3qc_16shadowsocks_rust.exit18: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsat9HgdBb3qc_16shadowsocks_rust.exit15, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2343)
  %.val.i19 = load i64, ptr %i.r, align 8, !range !16, !alias.scope !2344, !noundef !14 ; 2 uses
  %i.s = icmp eq i64 %.val.i19, 0
  br i1 %i.s, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsat9HgdBb3qc_16shadowsocks_rust.exit21, label %bb.h

bb.h:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsat9HgdBb3qc_16shadowsocks_rust.exit18
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.val1.i20 = load ptr, ptr %i.t, align 8, !alias.scope !2343, !nonnull !14, !noundef !14
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i20, i64 noundef %.val.i19, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !2345
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsat9HgdBb3qc_16shadowsocks_rust.exit21

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsat9HgdBb3qc_16shadowsocks_rust.exit21: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsat9HgdBb3qc_16shadowsocks_rust.exit18, %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.val2 = load i64, ptr %i.u, align 8, !range !24, !noundef !14 ; 2 uses
  %i.v = icmp sgt i64 %.val2, 0
  br i1 %i.v, label %bb.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufEECsat9HgdBb3qc_16shadowsocks_rust.exit

bb.i:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsat9HgdBb3qc_16shadowsocks_rust.exit21
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.val3 = load ptr, ptr %i.w, align 8, !nonnull !14, !noundef !14
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %.val2, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !2346
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufEECsat9HgdBb3qc_16shadowsocks_rust.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufEECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsat9HgdBb3qc_16shadowsocks_rust.exit21, %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.val = load i64, ptr %i.x, align 8, !range !24, !noundef !14 ; 2 uses
  %i.y = icmp sgt i64 %.val, 0
  br i1 %i.y, label %bb.j, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufEECsat9HgdBb3qc_16shadowsocks_rust.exit24

bb.j:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufEECsat9HgdBb3qc_16shadowsocks_rust.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.val1 = load ptr, ptr %i.z, align 8, !nonnull !14, !noundef !14
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !2347
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufEECsat9HgdBb3qc_16shadowsocks_rust.exit24

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufEECsat9HgdBb3qc_16shadowsocks_rust.exit24: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufEECsat9HgdBb3qc_16shadowsocks_rust.exit, %bb.j
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsfS4ZeCxwza6_6anyhow5ErrorECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs4_NtCsfS4ZeCxwza6_6anyhow5errorNtB7_5ErrorNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #30
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsk6HhtavqUX2_11serde_value5ValueECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !2416, !noundef !14
  switch i8 %i.a, label %bb.b [
    i8 0, label %common.ret119
    i8 1, label %common.ret119
    i8 2, label %common.ret119
    i8 3, label %common.ret119
    i8 4, label %common.ret119
    i8 5, label %common.ret119
    i8 6, label %common.ret119
    i8 7, label %common.ret119
    i8 8, label %common.ret119
    i8 9, label %common.ret119
    i8 10, label %common.ret119
    i8 11, label %common.ret119
    i8 12, label %bb.d
    i8 13, label %common.ret119
    i8 14, label %bb.f
    i8 15, label %bb.h
    i8 16, label %bb.i
    i8 17, label %_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtCsk6HhtavqUX2_11serde_value5ValueB14_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsat9HgdBb3qc_16shadowsocks_rust.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2417)
  %.val.i = load i64, ptr %i.b, align 8, !range !16, !alias.scope !2417, !noundef !14 ; 2 uses
  %i.c = icmp eq i64 %.val.i, 0
  br i1 %i.c, label %common.ret119, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.d, align 8, !alias.scope !2417, !nonnull !14, !noundef !14
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !2417
  br label %common.ret119

common.ret119:                                    ; preds = %_RINvMsj_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtCsk6HhtavqUX2_11serde_value5ValueB1S_NtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i, %._crit_edge, %bb.j, %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtCsk6HhtavqUX2_11serde_value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsat9HgdBb3qc_16shadowsocks_rust.exit, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.h, %bb.g
  ret void

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2418)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2419)
  %.val.i.i = load i64, ptr %i.e, align 8, !range !16, !alias.scope !2420, !noundef !14 ; 2 uses
  %i.f = icmp eq i64 %.val.i.i, 0
  br i1 %i.f, label %common.ret119, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load ptr, ptr %i.g, align 8, !alias.scope !2420, !nonnull !14, !noundef !14
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !2420
  br label %common.ret119

bb.f:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !2421, !align !27, !noundef !14 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %common.ret119, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsk6HhtavqUX2_11serde_value5ValueECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 dereferenceable(32) %i.i) #30, !noalias !2422, !inline_history !2358
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef 32, i64 noundef 8) #30, !noalias !2422, !inline_history !2358
  br label %common.ret119

bb.h:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2423)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !2423, !nonnull !14, !noundef !14 ; 2 uses
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsk6HhtavqUX2_11serde_value5ValueECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 dereferenceable(32) %i.l) #30, !noalias !2423, !inline_history !2361
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef 32, i64 noundef 8) #30, !noalias !2423
  br label %common.ret119

bb.i:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2424)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !2424, !nonnull !14, !noundef !14 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !2424, !noundef !14 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtCsk6HhtavqUX2_11serde_value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsat9HgdBb3qc_16shadowsocks_rust.exit, label %.lr.ph47

.lr.ph47:                                         ; preds = %bb.i, %.lr.ph47
  %.sroa.0.0.i.i45 = phi i64 [ %i.t, %.lr.ph47 ], [ 0, %bb.i ] ; 2 uses
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.0.0.i.i45
  %i.t = add nuw i64 %.sroa.0.0.i.i45, 1          ; 2 uses
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsk6HhtavqUX2_11serde_value5ValueECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 dereferenceable(32) %i.s) #30, !noalias !2424, !inline_history !2364
  %i.u = icmp eq i64 %i.t, %i.q
  br i1 %i.u, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtCsk6HhtavqUX2_11serde_value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsat9HgdBb3qc_16shadowsocks_rust.exit, label %.lr.ph47

_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtCsk6HhtavqUX2_11serde_value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %.lr.ph47, %bb.i
  %.val.i2 = load i64, ptr %i.m, align 8, !range !16, !alias.scope !2425, !noundef !14 ; 2 uses
  %i.v = icmp eq i64 %.val.i2, 0
  br i1 %i.v, label %common.ret119, label %bb.j

bb.j:                                             ; preds = %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtCsk6HhtavqUX2_11serde_value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsat9HgdBb3qc_16shadowsocks_rust.exit
  %i.w = shl nuw i64 %.val.i2, 5
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.o, i64 noundef %i.w, i64 noundef range(i64 1, -9223372036854775807) 8) #30
  br label %common.ret119

_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtCsk6HhtavqUX2_11serde_value5ValueB14_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2426)
  %.sroa.01.0.copyload.i = load ptr, ptr %i.x, align 8, !alias.scope !2426 ; 6 uses
  %.not.i = icmp ne ptr %.sroa.01.0.copyload.i, null ; 3 uses
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.52.0.copyload.i = load i64, ptr %.sroa.52.0..sroa_idx.i, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8 ; 5 uses
  %.sroa.17.0 = select i1 %.not.i, i64 %.sroa.4.0.copyload.i, i64 undef ; 2 uses
  %1 = icmp eq i64 %.sroa.52.0.copyload.i, 0
  %not..not.i = icmp eq ptr %.sroa.01.0.copyload.i, null
  %.not61 = select i1 %not..not.i, i1 true, i1 %1
  br i1 %.not61, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtCsk6HhtavqUX2_11serde_value5ValueB14_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsat9HgdBb3qc_16shadowsocks_rust.exit
  %i.y = ptrtoint ptr %.sroa.01.0.copyload.i to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtCsk6HhtavqUX2_11serde_value5ValueB14_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsat9HgdBb3qc_16shadowsocks_rust.exit
  br i1 %.not.i, label %bb.k, label %common.ret119

bb.k:                                             ; preds = %._crit_edge
  %i.z = icmp eq i64 %.sroa.17.0, 0
  br i1 %i.z, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.k
  %i.aa = add i64 %.sroa.4.0.copyload.i, -1
  %xtraiter.a = and i64 %.sroa.4.0.copyload.i, 7  ; 2 uses
  %lcmp.mod.not.a = icmp eq i64 %xtraiter.a, 0
  br i1 %lcmp.mod.not.a, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.sroa.022.025.i.i.i.i.prol = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.prol ], [ %.sroa.01.0.copyload.i, %.lr.ph.i.i.i.i.preheader ]
  %.sroa.020.024.i.i.i.i.prol = phi i64 [ %i.ad, %.lr.ph.i.i.i.i.prol ], [ %.sroa.4.0.copyload.i, %.lr.ph.i.i.i.i.preheader ]
  %prol.iter.a = phi i64 [ %prol.iter.next.a, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.022.025.i.i.i.i.prol, i64 720
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !2427, !nonnull !14, !noundef !14 ; 3 uses
  %i.ad = add i64 %.sroa.020.024.i.i.i.i.prol, -1 ; 2 uses
  %prol.iter.next.a = add i64 %prol.iter.a, 1     ; 2 uses
  %prol.iter.cmp.not.a = icmp eq i64 %prol.iter.next.a, %xtraiter.a
  br i1 %prol.iter.cmp.not.a, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !2379

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.lcssa100.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.preheader ], [ %i.ac, %.lr.ph.i.i.i.i.prol ]
  %.sroa.022.025.i.i.i.i.unr = phi ptr [ %.sroa.01.0.copyload.i, %.lr.ph.i.i.i.i.preheader ], [ %i.ac, %.lr.ph.i.i.i.i.prol ]
  %.sroa.020.024.i.i.i.i.unr = phi i64 [ %.sroa.4.0.copyload.i, %.lr.ph.i.i.i.i.preheader ], [ %i.ad, %.lr.ph.i.i.i.i.prol ]
  %i.ae = icmp ult i64 %i.aa, 7
  br i1 %i.ae, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.sroa.022.025.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i ], [ %.sroa.022.025.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.sroa.020.024.i.i.i.i = phi i64 [ %i.av, %.lr.ph.i.i.i.i ], [ %.sroa.020.024.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.022.025.i.i.i.i, i64 720
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !2427, !nonnull !14, !noundef !14
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 720
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !2427, !nonnull !14, !noundef !14
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 720
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !2427, !nonnull !14, !noundef !14
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 720
  %i.am = load ptr, ptr %i.al, align 8, !noalias !2427, !nonnull !14, !noundef !14
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 720
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !2427, !nonnull !14, !noundef !14
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 720
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !2427, !nonnull !14, !noundef !14
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 720
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !2427, !nonnull !14, !noundef !14
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 720
  %i.au = load ptr, ptr %i.at, align 8, !noalias !2427, !nonnull !14, !noundef !14 ; 2 uses
  %i.av = add i64 %.sroa.020.024.i.i.i.i, -8      ; 2 uses
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i

.loopexit.i.i.i:                                  ; preds = %_RNvMsz_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8IntoIterNtCsk6HhtavqUX2_11serde_value5ValueB17_E10dying_nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i, %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.k
  %.sroa.0.0.ph.i.i.i = phi ptr [ %.sroa.01.0.copyload.i, %bb.k ], [ %i.au, %.lr.ph.i.i.i.i ], [ %.lcssa100.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %.sroa.8.2, %_RNvMsz_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8IntoIterNtCsk6HhtavqUX2_11serde_value5ValueB17_E10dying_nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i, i64 704
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !2428, !noundef !14 ; 2 uses
  %.not.i.i4.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i4.i.i.i.i, label %_RINvMsj_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtCsk6HhtavqUX2_11serde_value5ValueB1S_NtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i, label %.lr.ph.i2.i.i.i

.lr.ph.i2.i.i.i:                                  ; preds = %.loopexit.i.i.i, %.lr.ph.i2.i.i.i
  %i.az = phi ptr [ %i.bc, %.lr.ph.i2.i.i.i ], [ %i.ay, %.loopexit.i.i.i ] ; 3 uses
  %.sroa.0.06.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i2.i.i.i ], [ %.sroa.0.0.ph.i.i.i, %.loopexit.i.i.i ]
  %.sroa.3.05.i.i.i.i = phi i64 [ %i.ba, %.lr.ph.i2.i.i.i ], [ 0, %.loopexit.i.i.i ] ; 2 uses
  %i.ba = add i64 %.sroa.3.05.i.i.i.i, 1          ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.3.05.i.i.i.i, 0
  %..i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 720, i64 816
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.06.i.i.i.i, i64 noundef %..i.i.i.i.i, i64 noundef 8) #30, !noalias !2429, !inline_history !2384
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 704
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !2428, !noundef !14 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i.i.i, label %_RINvMsj_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtCsk6HhtavqUX2_11serde_value5ValueB1S_NtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.loopexit, label %.lr.ph.i2.i.i.i

_RINvMsj_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtCsk6HhtavqUX2_11serde_value5ValueB1S_NtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.loopexit: ; preds = %.lr.ph.i2.i.i.i
  %i.bd = icmp eq i64 %i.ba, 0
  %i.be = select i1 %i.bd, i64 720, i64 816
  br label %_RINvMsj_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtCsk6HhtavqUX2_11serde_value5ValueB1S_NtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i

_RINvMsj_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtCsk6HhtavqUX2_11serde_value5ValueB1S_NtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i: ; preds = %_RINvMsj_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtCsk6HhtavqUX2_11serde_value5ValueB1S_NtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.loopexit, %.loopexit.i.i.i
  %.sroa.3.0.lcssa.i.i.i.i = phi i64 [ 720, %.loopexit.i.i.i ], [ %i.be, %_RINvMsj_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtCsk6HhtavqUX2_11serde_value5ValueB1S_NtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.loopexit ]
  %.sroa.0.0.lcssa.i.i.i.i = phi ptr [ %.sroa.0.0.ph.i.i.i, %.loopexit.i.i.i ], [ %i.az, %_RINvMsj_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtCsk6HhtavqUX2_11serde_value5ValueB1S_NtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.loopexit ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.lcssa.i.i.i.i, i64 noundef %.sroa.3.0.lcssa.i.i.i.i, i64 noundef 8) #30, !noalias !2429, !inline_history !2384
  br label %common.ret119

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RNvMsz_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8IntoIterNtCsk6HhtavqUX2_11serde_value5ValueB17_E10dying_nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i
  %.sroa.0.141 = phi i1 [ true, %_RNvMsz_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8IntoIterNtCsk6HhtavqUX2_11serde_value5ValueB17_E10dying_nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i ], [ %.not.i, %.lr.ph.preheader ]
  %.sroa.8.140 = phi ptr [ %.sroa.8.2, %_RNvMsz_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8IntoIterNtCsk6HhtavqUX2_11serde_value5ValueB17_E10dying_nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i ], [ null, %.lr.ph.preheader ] ; 2 uses
  %.sroa.12.139 = phi i64 [ 0, %_RNvMsz_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8IntoIterNtCsk6HhtavqUX2_11serde_value5ValueB17_E10dying_nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i ], [ %i.y, %.lr.ph.preheader ] ; 2 uses
  %.sroa.17.138 = phi i64 [ %.sroa.17.2, %_RNvMsz_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8IntoIterNtCsk6HhtavqUX2_11serde_value5ValueB17_E10dying_nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i ], [ %.sroa.17.0, %.lr.ph.preheader ] ; 6 uses
  %.sroa.27.137 = phi i64 [ %i.bf, %_RNvMsz_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8IntoIterNtCsk6HhtavqUX2_11serde_value5ValueB17_E10dying_nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i ], [ %.sroa.52.0.copyload.i, %.lr.ph.preheader ]
  %i.bf = add i64 %.sroa.27.137, -1               ; 2 uses
  br i1 %.sroa.0.141, label %bb.l, label %.critedge.i.i.i

bb.l:                                             ; preds = %.lr.ph
  %.not.i.i1.i.i = icmp eq ptr %.sroa.8.140, null
  br i1 %.not.i.i1.i.i, label %bb.m, label %_RNvMsc_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtCsk6HhtavqUX2_11serde_value5ValueB1J_E10init_frontCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.bg = inttoptr i64 %.sroa.12.139 to ptr       ; 3 uses
  %i.bh = icmp eq i64 %.sroa.17.138, 0
  br i1 %i.bh, label %_RNvMsc_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtCsk6HhtavqUX2_11serde_value5ValueB1J_E10init_frontCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i, label %.lr.ph.i.i2.i.i.preheader

.lr.ph.i.i2.i.i.preheader:                        ; preds = %bb.m
  %xtraiter101 = and i64 %.sroa.17.138, 7         ; 2 uses
  %lcmp.mod102.not = icmp eq i64 %xtraiter101, 0
  br i1 %lcmp.mod102.not, label %.lr.ph.i.i2.i.i.prol.loopexit, label %.lr.ph.i.i2.i.i.prol

.lr.ph.i.i2.i.i.prol:                             ; preds = %.lr.ph.i.i2.i.i.preheader, %.lr.ph.i.i2.i.i.prol
  %.sroa.013.017.i.i.i.i.prol = phi ptr [ %.sroa.013.0.i.i.i.i.prol, %.lr.ph.i.i2.i.i.prol ], [ %i.bg, %.lr.ph.i.i2.i.i.preheader ]
  %.sroa.011.016.i.i.i.i.prol = phi i64 [ %i.bj, %.lr.ph.i.i2.i.i.prol ], [ %.sroa.17.138, %.lr.ph.i.i2.i.i.preheader ]
  %prol.iter103 = phi i64 [ %prol.iter103.next, %.lr.ph.i.i2.i.i.prol ], [ 0, %.lr.ph.i.i2.i.i.preheader ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.i.i.prol, i64 720
  %i.bj = add i64 %.sroa.011.016.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.013.0.i.i.i.i.prol = load ptr, ptr %i.bi, align 8, !noalias !2430, !nonnull !14, !noundef !14 ; 3 uses
  %prol.iter103.next = add i64 %prol.iter103, 1   ; 2 uses
  %prol.iter103.cmp.not = icmp eq i64 %prol.iter103.next, %xtraiter101
  br i1 %prol.iter103.cmp.not, label %.lr.ph.i.i2.i.i.prol.loopexit, label %.lr.ph.i.i2.i.i.prol, !llvm.loop !2390

.lr.ph.i.i2.i.i.prol.loopexit:                    ; preds = %.lr.ph.i.i2.i.i.prol, %.lr.ph.i.i2.i.i.preheader
  %.sroa.013.0.i.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i2.i.i.preheader ], [ %.sroa.013.0.i.i.i.i.prol, %.lr.ph.i.i2.i.i.prol ]
  %.sroa.013.017.i.i.i.i.unr = phi ptr [ %i.bg, %.lr.ph.i.i2.i.i.preheader ], [ %.sroa.013.0.i.i.i.i.prol, %.lr.ph.i.i2.i.i.prol ]
  %.sroa.011.016.i.i.i.i.unr = phi i64 [ %.sroa.17.138, %.lr.ph.i.i2.i.i.preheader ], [ %i.bj, %.lr.ph.i.i2.i.i.prol ]
  %i.bk = icmp ult i64 %.sroa.17.138, 8
  br i1 %i.bk, label %_RNvMsc_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtCsk6HhtavqUX2_11serde_value5ValueB1J_E10init_frontCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i, label %.lr.ph.i.i2.i.i

.lr.ph.i.i2.i.i:                                  ; preds = %.lr.ph.i.i2.i.i.prol.loopexit, %.lr.ph.i.i2.i.i
  %.sroa.013.017.i.i.i.i = phi ptr [ %.sroa.013.0.i.i.i.i.7, %.lr.ph.i.i2.i.i ], [ %.sroa.013.017.i.i.i.i.unr, %.lr.ph.i.i2.i.i.prol.loopexit ]
  %.sroa.011.016.i.i.i.i = phi i64 [ %i.bt, %.lr.ph.i.i2.i.i ], [ %.sroa.011.016.i.i.i.i.unr, %.lr.ph.i.i2.i.i.prol.loopexit ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.i.i, i64 720
  %.sroa.013.0.i.i.i.i = load ptr, ptr %i.bl, align 8, !noalias !2430, !nonnull !14, !noundef !14
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i, i64 720
  %.sroa.013.0.i.i.i.i.1 = load ptr, ptr %i.bm, align 8, !noalias !2430, !nonnull !14, !noundef !14
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.1, i64 720
  %.sroa.013.0.i.i.i.i.2 = load ptr, ptr %i.bn, align 8, !noalias !2430, !nonnull !14, !noundef !14
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.2, i64 720
  %.sroa.013.0.i.i.i.i.3 = load ptr, ptr %i.bo, align 8, !noalias !2430, !nonnull !14, !noundef !14
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.3, i64 720
  %.sroa.013.0.i.i.i.i.4 = load ptr, ptr %i.bp, align 8, !noalias !2430, !nonnull !14, !noundef !14
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.4, i64 720
  %.sroa.013.0.i.i.i.i.5 = load ptr, ptr %i.bq, align 8, !noalias !2430, !nonnull !14, !noundef !14
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.5, i64 720
  %.sroa.013.0.i.i.i.i.6 = load ptr, ptr %i.br, align 8, !noalias !2430, !nonnull !14, !noundef !14
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.6, i64 720
  %i.bt = add i64 %.sroa.011.016.i.i.i.i, -8      ; 2 uses
  %.sroa.013.0.i.i.i.i.7 = load ptr, ptr %i.bs, align 8, !noalias !2430, !nonnull !14, !noundef !14 ; 2 uses
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %_RNvMsc_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtCsk6HhtavqUX2_11serde_value5ValueB1J_E10init_frontCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i, label %.lr.ph.i.i2.i.i

_RNvMsc_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtCsk6HhtavqUX2_11serde_value5ValueB1J_E10init_frontCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i: ; preds = %.lr.ph.i.i2.i.i.prol.loopexit, %.lr.ph.i.i2.i.i, %bb.m, %bb.l
  %.sroa.59.0.copyload.i.i.i.i = phi i64 [ %.sroa.17.138, %bb.l ], [ 0, %bb.m ], [ 0, %.lr.ph.i.i2.i.i ], [ 0, %.lr.ph.i.i2.i.i.prol.loopexit ] ; 2 uses
  %.sroa.48.0.copyload.i.i.i.i = phi i64 [ %.sroa.12.139, %bb.l ], [ 0, %bb.m ], [ 0, %.lr.ph.i.i2.i.i ], [ 0, %.lr.ph.i.i2.i.i.prol.loopexit ] ; 2 uses
  %.sroa.07.0.copyload.i.i.i.i = phi ptr [ %.sroa.8.140, %bb.l ], [ %i.bg, %bb.m ], [ %.sroa.013.0.i.i.i.i.lcssa.unr, %.lr.ph.i.i2.i.i.prol.loopexit ], [ %.sroa.013.0.i.i.i.i.7, %.lr.ph.i.i2.i.i ] ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i.i.i.i, i64 714
  %i.bw = load i16, ptr %i.bv, align 2, !noalias !2431, !noundef !14
  %i.bx = zext i16 %i.bw to i64
  %i.by = icmp ult i64 %.sroa.59.0.copyload.i.i.i.i, %i.bx
  br i1 %i.by, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_RNvMsc_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtCsk6HhtavqUX2_11serde_value5ValueB1J_E10init_frontCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i, %bb.p
  %.sroa.0.039.i.i.i.i.i.i = phi ptr [ %i.ca, %bb.p ], [ %.sroa.07.0.copyload.i.i.i.i, %_RNvMsc_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtCsk6HhtavqUX2_11serde_value5ValueB1J_E10init_frontCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i ] ; 4 uses
  %.sroa.5.038.i.i.i.i.i.i = phi i64 [ %i.cs, %bb.p ], [ %.sroa.48.0.copyload.i.i.i.i, %_RNvMsc_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtCsk6HhtavqUX2_11serde_value5ValueB1J_E10init_frontCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.039.i.i.i.i.i.i, i64 704
  %i.ca = load ptr, ptr %i.bz, align 8, !noalias !2432, !noundef !14 ; 4 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.q, label %bb.p

._crit_edge.loopexit.i.i.i.i.i.i:                 ; preds = %bb.p
  %i.cb = zext i16 %i.cu to i64
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %._crit_edge.loopexit.i.i.i.i.i.i, %_RNvMsc_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtCsk6HhtavqUX2_11serde_value5ValueB1J_E10init_frontCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i
  %.sroa.8.0.lcssa.i.i.i.i.i.i = phi i64 [ %.sroa.59.0.copyload.i.i.i.i, %_RNvMsc_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtCsk6HhtavqUX2_11serde_value5ValueB1J_E10init_frontCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i ], [ %i.cb, %._crit_edge.loopexit.i.i.i.i.i.i ] ; 5 uses
  %.sroa.5.0.lcssa.i.i.i.i.i.i = phi i64 [ %.sroa.48.0.copyload.i.i.i.i, %_RNvMsc_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtCsk6HhtavqUX2_11serde_value5ValueB1J_E10init_frontCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i ], [ %i.cs, %._crit_edge.loopexit.i.i.i.i.i.i ] ; 5 uses
  %.sroa.0.0.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.07.0.copyload.i.i.i.i, %_RNvMsc_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtCsk6HhtavqUX2_11serde_value5ValueB1J_E10init_frontCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i ], [ %i.ca, %._crit_edge.loopexit.i.i.i.i.i.i ] ; 4 uses
  %i.cc = icmp eq i64 %.sroa.5.0.lcssa.i.i.i.i.i.i, 0
  br i1 %i.cc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.cd = add nuw nsw i64 %.sroa.8.0.lcssa.i.i.i.i.i.i, 1
  br label %_RNvMsz_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8IntoIterNtCsk6HhtavqUX2_11serde_value5ValueB17_E10dying_nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i

bb.o:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.ce = icmp samesign ult i64 %.sroa.8.0.lcssa.i.i.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.ce), !noalias !2426
  %i.cf = getelementptr i8, ptr %.sroa.0.0.lcssa.i.i.i.i.i.i, i64 728
  %i.cg = getelementptr [8 x i8], ptr %i.cf, i64 %.sroa.8.0.lcssa.i.i.i.i.i.i ; 2 uses
  %xtraiter104 = and i64 %.sroa.5.0.lcssa.i.i.i.i.i.i, 7 ; 2 uses
  %lcmp.mod105.not = icmp eq i64 %xtraiter104, 0
  br i1 %lcmp.mod105.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.o, %.prol.preheader
  %.sroa.017.0.in.i.i.i.i.i.i.i.prol = phi ptr [ %i.ch, %.prol.preheader ], [ %i.cg, %bb.o ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.5.0.lcssa.i.i.i.i.i.i, %bb.o ]
  %prol.iter106 = phi i64 [ %prol.iter106.next, %.prol.preheader ], [ 0, %bb.o ]
  %.sroa.019.0.i.i.i.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.i.i.prol, align 8, !noalias !2433, !nonnull !14, !noundef !14 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.prol, i64 720 ; 2 uses
  %prol.iter106.next = add i64 %prol.iter106, 1   ; 2 uses
  %prol.iter106.cmp.not = icmp eq i64 %prol.iter106.next, %xtraiter104
  br i1 %prol.iter106.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !2407

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.o
  %.sroa.017.0.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.o ], [ %.sroa.017.0.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.i.i.i.i.i.i.unr = phi ptr [ %i.cg, %bb.o ], [ %i.ch, %.prol.preheader ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.unr = phi i64 [ %.sroa.5.0.lcssa.i.i.i.i.i.i, %bb.o ], [ %.sroa.019.0.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %i.ci = icmp ult i64 %.sroa.5.0.lcssa.i.i.i.i.i.i, 8
  br i1 %i.ci, label %_RNvMsz_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8IntoIterNtCsk6HhtavqUX2_11serde_value5ValueB17_E10dying_nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i.i.i.i.i.i.i = phi ptr [ %i.cr, %.new ], [ %.sroa.017.0.in.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i.i.i.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.i.i.i.7, %.new ], [ %.sroa.019.0.in.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.017.0.i.i.i.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.i.i, align 8, !noalias !2433, !nonnull !14, !noundef !14
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i, i64 720
  %.sroa.017.0.i.i.i.i.i.i.i.1 = load ptr, ptr %i.cj, align 8, !noalias !2433, !nonnull !14, !noundef !14
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.1, i64 720
  %.sroa.017.0.i.i.i.i.i.i.i.2 = load ptr, ptr %i.ck, align 8, !noalias !2433, !nonnull !14, !noundef !14
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.2, i64 720
  %.sroa.017.0.i.i.i.i.i.i.i.3 = load ptr, ptr %i.cl, align 8, !noalias !2433, !nonnull !14, !noundef !14
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.3, i64 720
  %.sroa.017.0.i.i.i.i.i.i.i.4 = load ptr, ptr %i.cm, align 8, !noalias !2433, !nonnull !14, !noundef !14
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.4, i64 720
  %.sroa.017.0.i.i.i.i.i.i.i.5 = load ptr, ptr %i.cn, align 8, !noalias !2433, !nonnull !14, !noundef !14
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.5, i64 720
  %.sroa.017.0.i.i.i.i.i.i.i.6 = load ptr, ptr %i.co, align 8, !noalias !2433, !nonnull !14, !noundef !14
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.6, i64 720
  %.sroa.019.0.i.i.i.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.i.i.7 = load ptr, ptr %i.cp, align 8, !noalias !2433, !nonnull !14, !noundef !14 ; 2 uses
  %i.cq = icmp eq i64 %.sroa.019.0.i.i.i.i.i.i.i.7, 0
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.7, i64 720
  br i1 %i.cq, label %_RNvMsz_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8IntoIterNtCsk6HhtavqUX2_11serde_value5ValueB17_E10dying_nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i, label %.new

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.cs = add i64 %.sroa.5.038.i.i.i.i.i.i, 1     ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.039.i.i.i.i.i.i, i64 712
  %i.cu = load i16, ptr %i.ct, align 8, !noalias !2432 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.5.038.i.i.i.i.i.i, 0
  %..i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i64 720, i64 816
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.039.i.i.i.i.i.i, i64 noundef %..i.i.i.i.i.i.i, i64 noundef 8) #30, !noalias !2434, !inline_history !2384
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ca, i64 714
  %i.cw = load i16, ptr %i.cv, align 2, !noalias !2431, !noundef !14
  %i.cx = icmp ult i16 %i.cu, %i.cw
  br i1 %i.cx, label %._crit_edge.loopexit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %.not.i33.i.i.i.i.i.i = icmp eq i64 %.sroa.5.038.i.i.i.i.i.i, 0
  %..i34.i.i.i.i.i.i = select i1 %.not.i33.i.i.i.i.i.i, i64 720, i64 816
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.039.i.i.i.i.i.i, i64 noundef %..i34.i.i.i.i.i.i, i64 noundef 8) #30, !noalias !2434, !inline_history !2384
  tail call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @215) #37, !noalias !2435, !inline_history !2384
  unreachable

.critedge.i.i.i:                                  ; preds = %.lr.ph
  tail call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #37, !noalias !2436, !inline_history !2384
  unreachable

_RNvMsz_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8IntoIterNtCsk6HhtavqUX2_11serde_value5ValueB17_E10dying_nextCsat9HgdBb3qc_16shadowsocks_rust.exit.i: ; preds = %.prol.loopexit, %.new, %bb.n
end_hunk_0
