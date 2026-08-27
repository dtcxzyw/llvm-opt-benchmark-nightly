Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_expand-f280addaac0e5f6d.hir_expand.23a55d86e4a77d82-cgu.14?download=true
inline.NumInlined: 1049
inline.NumDeleted: 375
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt7storage10TopSubtreeECs33K2ylI4knu_10hir_expand:bb.a
  %i.ap = icmp eq i64 %i.ak, %.val1.i
  br i1 %i.ap, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i20.i, label %.lr.ph16

.lr.ph16:                                         ; preds = %bb.o, %bb.n
  %.sroa.0.1.i.i17.i15 = phi i64 [ %i.am, %bb.n ], [ %i.ak, %bb.o ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i17.i15 ; 2 uses
  %.val.i.i18.i = load i8, ptr %i.aq, align 8, !range !1110, !alias.scope !1116, !noalias !1103, !noundef !25
  %i.ar = getelementptr i8, ptr %i.aq, i64 16
  %.val7.i.i19.i = load ptr, ptr %i.ar, align 8, !alias.scope !1116, !noalias !1103
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBE_13SpanStorage64EECs33K2ylI4knu_10hir_expand(i8 %.val.i.i18.i, ptr %.val7.i.i19.i) #34
          to label %bb.n unwind label %bb.p, !noalias !1119

bb.p:                                             ; preds = %.lr.ph16
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35, !noalias !1119
  unreachable

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i20.i: ; preds = %bb.n, %bb.o
  %i.at = mul nuw nsw i64 %.val1.i, 24
  br label %common.resume.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBF_13SpanStorage64EECs33K2ylI4knu_10hir_expand.exit.i.i: ; preds = %bb.m, %bb.l
  %i.au = icmp eq i64 %.val1.i, 0
  br i1 %i.au, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt7storage14TopSubtreeReprECs33K2ylI4knu_10hir_expand.exit, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i4.i21.i

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i4.i21.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBF_13SpanStorage64EECs33K2ylI4knu_10hir_expand.exit.i.i
  %i.av = mul nuw nsw i64 %.val1.i, 24
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtB1e_13SpanStorage96EEECs33K2ylI4knu_10hir_expand.exit.sink.split.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtB1e_13SpanStorage96EEECs33K2ylI4knu_10hir_expand.exit.sink.split.i: ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i4.i21.i, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i4.i13.i, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i4.i.i
  %.sink28.i = phi i64 [ %i.av, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i4.i21.i ], [ %i.ah, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i4.i13.i ], [ %i.t, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i4.i.i ]
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %.sink28.i, i64 noundef 8) #36, !noalias !1103
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt7storage14TopSubtreeReprECs33K2ylI4knu_10hir_expand.exit

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %common.resume.i
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2 = load ptr, ptr %i.aw, align 8, !nonnull !25, !noundef !25
  %i.ax = mul nuw nsw i64 %.val3, 12
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef %i.ax, i64 noundef 4) #36
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartEECs33K2ylI4knu_10hir_expand.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt7storage14TopSubtreeReprECs33K2ylI4knu_10hir_expand.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtB1e_13SpanStorage96EEECs33K2ylI4knu_10hir_expand.exit.sink.split.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBF_13SpanStorage64EECs33K2ylI4knu_10hir_expand.exit.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBF_13SpanStorage32EECs33K2ylI4knu_10hir_expand.exit.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBF_13SpanStorage96EECs33K2ylI4knu_10hir_expand.exit.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1 = load i64, ptr %i.ay, align 8, !noundef !25 ; 2 uses
  %i.az = icmp eq i64 %.val1, 0
  br i1 %i.az, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartEECs33K2ylI4knu_10hir_expand.exit5, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i4

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i4: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt7storage14TopSubtreeReprECs33K2ylI4knu_10hir_expand.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.ba, align 8, !nonnull !25, !noundef !25
  %i.bb = mul nuw nsw i64 %.val1, 12
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.bb, i64 noundef 4) #36
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartEECs33K2ylI4knu_10hir_expand.exit5

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartEECs33K2ylI4knu_10hir_expand.exit5: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt7storage14TopSubtreeReprECs33K2ylI4knu_10hir_expand.exit, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i4
  ret void

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartEECs33K2ylI4knu_10hir_expand.exit: ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i, %common.resume.i
  resume { ptr, i32 } %common.resume.op.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsqiF3OZxLbD_3mbe8expander7BindingECs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !1120, !noundef !25 ; 3 uses
  %i.b = tail call i64 @llvm.usub.sat.i64(i64 %i.a, i64 7)
  switch i64 %i.b, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsqiF3OZxLbD_3mbe8expander8FragmentECs33K2ylI4knu_10hir_expand.exit [
    i64 0, label %bb.b
    i64 1, label %bb.d
  ]

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsqiF3OZxLbD_3mbe8expander8FragmentECs33K2ylI4knu_10hir_expand.exit: ; preds = %bb.c, %bb.b, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsqiF3OZxLbD_3mbe8expander7BindingEECs33K2ylI4knu_10hir_expand.exit, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ne i64 %i.a, 4
  tail call void @llvm.assume(i1 %i.c)
  %switch.not.i = icmp eq i64 %i.a, 7
  br i1 %switch.not.i, label %bb.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsqiF3OZxLbD_3mbe8expander8FragmentECs33K2ylI4knu_10hir_expand.exit

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt7storage10TopSubtreeECs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef readonly align 8 dereferenceable(40) %i.d)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsqiF3OZxLbD_3mbe8expander8FragmentECs33K2ylI4knu_10hir_expand.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsqiF3OZxLbD_3mbe8expander7BindingENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsqiF3OZxLbD_3mbe8expander7BindingEECs33K2ylI4knu_10hir_expand.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsqiF3OZxLbD_3mbe8expander7BindingENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCsqiF3OZxLbD_3mbe8expander7BindingEECs33K2ylI4knu_10hir_expand.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCsqiF3OZxLbD_3mbe8expander7BindingEECs33K2ylI4knu_10hir_expand.exit.i: ; preds = %bb.e
  resume { ptr, i32 } %i.f

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsqiF3OZxLbD_3mbe8expander7BindingEECs33K2ylI4knu_10hir_expand.exit: ; preds = %bb.d
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsqiF3OZxLbD_3mbe8expander7BindingENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsqiF3OZxLbD_3mbe8expander8FragmentECs33K2ylI4knu_10hir_expand.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBH_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1w_11SyntaxTokenB1R_EEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs4dcH4YgJDq_2tt4LeafEEECs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !25, !noundef !25 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val1, i64 48 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !noundef !25
  %i.d = add i32 %i.c, -1                         ; 2 uses
  store i32 %i.d, ptr %i.b, align 4
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit.sink.split.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECs33K2ylI4knu_10hir_expand.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit.sink.split.i: ; preds = %bb.a
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val1) #32
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECs33K2ylI4knu_10hir_expand.exit unwind label %bb.b

bb.b:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit.sink.split.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs4dcH4YgJDq_2tt4LeafEECs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #34
          to label %common.resume unwind label %bb.e

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECs33K2ylI4knu_10hir_expand.exit: ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit.sink.split.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCs4dcH4YgJDq_2tt4LeafENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs4dcH4YgJDq_2tt4LeafEECs33K2ylI4knu_10hir_expand.exit unwind label %bb.c

bb.c:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECs33K2ylI4knu_10hir_expand.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs4dcH4YgJDq_2tt4LeafENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.c ], [ %i.f, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs4dcH4YgJDq_2tt4LeafEECs33K2ylI4knu_10hir_expand.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECs33K2ylI4knu_10hir_expand.exit
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs4dcH4YgJDq_2tt4LeafENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
  ret void

bb.e:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort12sort4_stableNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB8_SB19_16sort_unstable_byNCNvMs0_B1b_NtB1b_17ProcMacrosBuilder6insert0E0EB1d_(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 128)) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48
  %.val16 = load ptr, ptr %i.a, align 8, !nonnull !25, !noundef !25 ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 56
  %.val17 = load i8, ptr %i.b, align 8, !range !1121, !noundef !25
  %i.c = getelementptr i8, ptr %0, i64 16
  %.val18 = load ptr, ptr %i.c, align 8, !nonnull !25, !noundef !25 ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 24
  %.val19 = load i8, ptr %i.d, align 8, !range !1121, !noundef !25
  %i.e = ptrtoint ptr %.val16 to i64
  %i.f = and i64 %i.e, 1
  %i.g = sub nsw i64 0, %i.f
  %i.h = getelementptr i8, ptr %.val16, i64 %i.g  ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !25, !noundef !25
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noundef !25 ; 2 uses
  %i.l = ptrtoint ptr %.val18 to i64
  %i.m = and i64 %i.l, 1
  %i.n = sub nsw i64 0, %i.m
  %i.o = getelementptr i8, ptr %.val18, i64 %i.n  ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !25, !noundef !25
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load i64, ptr %i.q, align 8, !noundef !25 ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.r)
  %i.s = tail call i32 @memcmp(ptr nonnull %i.i, ptr nonnull %i.p, i64 %spec.store.select.i.i) ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = icmp eq i32 %i.s, 0
  %i.v = sub i64 %i.k, %i.r
  %spec.select.i.i = select i1 %i.u, i64 %i.v, i64 %i.t ; 2 uses
  %i.w = icmp eq i64 %spec.select.i.i, 0
  %2 = icmp samesign ult i8 %.val17, %.val19
  %3 = icmp slt i64 %spec.select.i.i, 0
  %spec.select.i = select i1 %i.w, i1 %2, i1 %3   ; 2 uses
  %i.x = getelementptr i8, ptr %0, i64 112
  %.val12 = load ptr, ptr %i.x, align 8, !nonnull !25, !noundef !25 ; 2 uses
  %i.y = getelementptr i8, ptr %0, i64 120
  %.val13 = load i8, ptr %i.y, align 8, !range !1121, !noundef !25
  %i.z = getelementptr i8, ptr %0, i64 80
  %.val14 = load ptr, ptr %i.z, align 8, !nonnull !25, !noundef !25 ; 2 uses
  %i.aa = getelementptr i8, ptr %0, i64 88
  %.val15 = load i8, ptr %i.aa, align 8, !range !1121, !noundef !25
  %i.ab = ptrtoint ptr %.val12 to i64
  %i.ac = and i64 %i.ab, 1
  %i.ad = sub nsw i64 0, %i.ac
  %i.ae = getelementptr i8, ptr %.val12, i64 %i.ad ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ae) ]
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !25, !noundef !25
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !25 ; 2 uses
  %i.ai = ptrtoint ptr %.val14 to i64
  %i.aj = and i64 %i.ai, 1
  %i.ak = sub nsw i64 0, %i.aj
  %i.al = getelementptr i8, ptr %.val14, i64 %i.ak ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !25, !noundef !25
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !noundef !25 ; 2 uses
  %spec.store.select.i.i20 = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 %i.ao)
  %i.ap = tail call i32 @memcmp(ptr nonnull %i.af, ptr nonnull %i.am, i64 %spec.store.select.i.i20) ; 2 uses
  %i.aq = sext i32 %i.ap to i64
  %i.ar = icmp eq i32 %i.ap, 0
  %i.as = sub i64 %i.ah, %i.ao
  %spec.select.i.i21 = select i1 %i.ar, i64 %i.as, i64 %i.aq ; 2 uses
  %i.at = icmp eq i64 %spec.select.i.i21, 0
  %4 = icmp samesign ult i8 %.val13, %.val15
  %5 = icmp slt i64 %spec.select.i.i21, 0
  %spec.select.i22 = select i1 %i.at, i1 %4, i1 %5 ; 2 uses
  %i.au = zext i1 %spec.select.i to i64
  %i.av = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.au ; 4 uses
  %i.aw = xor i1 %spec.select.i, true
  %i.ax = zext i1 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.ax ; 5 uses
  %i.az = select i1 %spec.select.i22, i64 3, i64 2
  %i.ba = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.az ; 5 uses
  %i.bb = select i1 %spec.select.i22, i64 2, i64 3
  %i.bc = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.bb ; 4 uses
  %i.bd = getelementptr i8, ptr %i.ba, i64 16
  %.val8 = load ptr, ptr %i.bd, align 8, !nonnull !25, !noundef !25 ; 2 uses
  %i.be = getelementptr i8, ptr %i.ba, i64 24
  %.val9 = load i8, ptr %i.be, align 8, !range !1121, !noundef !25
  %i.bf = getelementptr i8, ptr %i.av, i64 16
  %.val10 = load ptr, ptr %i.bf, align 8, !nonnull !25, !noundef !25 ; 2 uses
  %i.bg = getelementptr i8, ptr %i.av, i64 24
  %.val11 = load i8, ptr %i.bg, align 8, !range !1121, !noundef !25
  %i.bh = ptrtoint ptr %.val8 to i64
  %i.bi = and i64 %i.bh, 1
  %i.bj = sub nsw i64 0, %i.bi
  %i.bk = getelementptr i8, ptr %.val8, i64 %i.bj ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bk) ]
  %i.bl = load ptr, ptr %i.bk, align 8, !nonnull !25, !noundef !25
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !25 ; 2 uses
  %i.bo = ptrtoint ptr %.val10 to i64
  %i.bp = and i64 %i.bo, 1
  %i.bq = sub nsw i64 0, %i.bp
  %i.br = getelementptr i8, ptr %.val10, i64 %i.bq ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.br) ]
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !25, !noundef !25
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !noundef !25 ; 2 uses
  %spec.store.select.i.i23 = tail call i64 @llvm.umin.i64(i64 %i.bn, i64 %i.bu)
  %i.bv = tail call i32 @memcmp(ptr nonnull %i.bl, ptr nonnull %i.bs, i64 %spec.store.select.i.i23) ; 2 uses
  %i.bw = sext i32 %i.bv to i64
  %i.bx = icmp eq i32 %i.bv, 0
  %i.by = sub i64 %i.bn, %i.bu
  %spec.select.i.i24 = select i1 %i.bx, i64 %i.by, i64 %i.bw ; 2 uses
  %i.bz = icmp eq i64 %spec.select.i.i24, 0
  %6 = icmp samesign ult i8 %.val9, %.val11
  %7 = icmp slt i64 %spec.select.i.i24, 0
  %spec.select.i25 = select i1 %i.bz, i1 %6, i1 %7 ; 3 uses
  %i.ca = getelementptr i8, ptr %i.bc, i64 16
  %.val4 = load ptr, ptr %i.ca, align 8, !nonnull !25, !noundef !25 ; 2 uses
  %i.cb = getelementptr i8, ptr %i.bc, i64 24
  %.val5 = load i8, ptr %i.cb, align 8, !range !1121, !noundef !25
  %i.cc = getelementptr i8, ptr %i.ay, i64 16
  %.val6 = load ptr, ptr %i.cc, align 8, !nonnull !25, !noundef !25 ; 2 uses
  %i.cd = getelementptr i8, ptr %i.ay, i64 24
  %.val7 = load i8, ptr %i.cd, align 8, !range !1121, !noundef !25
  %i.ce = ptrtoint ptr %.val4 to i64
  %i.cf = and i64 %i.ce, 1
  %i.cg = sub nsw i64 0, %i.cf
  %i.ch = getelementptr i8, ptr %.val4, i64 %i.cg ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ch) ]
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !25, !noundef !25
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !noundef !25 ; 2 uses
  %i.cl = ptrtoint ptr %.val6 to i64
  %i.cm = and i64 %i.cl, 1
  %i.cn = sub nsw i64 0, %i.cm
  %i.co = getelementptr i8, ptr %.val6, i64 %i.cn ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.co) ]
  %i.cp = load ptr, ptr %i.co, align 8, !nonnull !25, !noundef !25
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cr = load i64, ptr %i.cq, align 8, !noundef !25 ; 2 uses
  %spec.store.select.i.i26.a = tail call i64 @llvm.umin.i64(i64 %i.ck, i64 %i.cr)
  %i.cs = tail call i32 @memcmp(ptr nonnull %i.ci, ptr nonnull %i.cp, i64 %spec.store.select.i.i26.a) ; 2 uses
  %i.ct = sext i32 %i.cs to i64
  %i.cu = icmp eq i32 %i.cs, 0
  %i.cv = sub i64 %i.ck, %i.cr
  %spec.select.i.i27.a = select i1 %i.cu, i64 %i.cv, i64 %i.ct ; 2 uses
  %i.cw = icmp eq i64 %spec.select.i.i27.a, 0
  %8 = icmp samesign ult i8 %.val5, %.val7
  %9 = icmp slt i64 %spec.select.i.i27.a, 0
  %spec.select.i28 = select i1 %i.cw, i1 %8, i1 %9 ; 3 uses
  %i.cx = select i1 %spec.select.i25, ptr %i.ba, ptr %i.av, !unpredictable !25
  %i.cy = select i1 %spec.select.i28, ptr %i.ay, ptr %i.bc, !unpredictable !25
  %i.cz = select i1 %spec.select.i28, ptr %i.ba, ptr %i.ay, !unpredictable !25
  %i.da = select i1 %spec.select.i25, ptr %i.av, ptr %i.cz, !unpredictable !25 ; 4 uses
  %i.db = select i1 %spec.select.i25, ptr %i.ay, ptr %i.ba, !unpredictable !25
  %i.dc = select i1 %spec.select.i28, ptr %i.bc, ptr %i.db, !unpredictable !25 ; 4 uses
  %i.dd = getelementptr i8, ptr %i.dc, i64 16
  %.val = load ptr, ptr %i.dd, align 8, !nonnull !25, !noundef !25 ; 2 uses
  %i.de = getelementptr i8, ptr %i.dc, i64 24
  %.val1 = load i8, ptr %i.de, align 8, !range !1121, !noundef !25
  %i.df = getelementptr i8, ptr %i.da, i64 16
  %.val2 = load ptr, ptr %i.df, align 8, !nonnull !25, !noundef !25 ; 2 uses
  %i.dg = getelementptr i8, ptr %i.da, i64 24
  %.val3 = load i8, ptr %i.dg, align 8, !range !1121, !noundef !25
  %i.dh = ptrtoint ptr %.val to i64
  %i.di = and i64 %i.dh, 1
  %i.dj = sub nsw i64 0, %i.di
  %i.dk = getelementptr i8, ptr %.val, i64 %i.dj  ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dk) ]
  %i.dl = load ptr, ptr %i.dk, align 8, !nonnull !25, !noundef !25
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !noundef !25 ; 2 uses
  %i.do = ptrtoint ptr %.val2 to i64
  %i.dp = and i64 %i.do, 1
  %i.dq = sub nsw i64 0, %i.dp
  %i.dr = getelementptr i8, ptr %.val2, i64 %i.dq ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dr) ]
  %i.ds = load ptr, ptr %i.dr, align 8, !nonnull !25, !noundef !25
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !noundef !25 ; 2 uses
  %spec.store.select.i.i29 = tail call i64 @llvm.umin.i64(i64 %i.dn, i64 %i.du)
  %i.dv = tail call i32 @memcmp(ptr nonnull %i.dl, ptr nonnull %i.ds, i64 %spec.store.select.i.i29) ; 2 uses
  %i.dw = sext i32 %i.dv to i64
  %i.dx = icmp eq i32 %i.dv, 0
  %i.dy = sub i64 %i.dn, %i.du
  %spec.select.i.i30 = select i1 %i.dx, i64 %i.dy, i64 %i.dw ; 2 uses
  %i.dz = icmp eq i64 %spec.select.i.i30, 0
  %10 = icmp samesign ult i8 %.val1, %.val3
  %11 = icmp slt i64 %spec.select.i.i30, 0
  %spec.select.i31 = select i1 %i.dz, i1 %10, i1 %11 ; 2 uses
  %i.ea = select i1 %spec.select.i31, ptr %i.dc, ptr %i.da, !unpredictable !25
  %i.eb = select i1 %spec.select.i31, ptr %i.da, ptr %i.dc, !unpredictable !25
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.cx, i64 32, i1 false)
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ec, ptr noundef nonnull align 8 dereferenceable(32) %i.ea, i64 32, i1 false)
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ed, ptr noundef nonnull align 8 dereferenceable(32) %i.eb, i64 32, i1 false)
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ee, ptr noundef nonnull align 8 dereferenceable(32) %i.cy, i64 32, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort12sort8_stableNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB19_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef nonnull captures(address) initializes((0, 32)) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
.lr.ph.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val8.i = load i32, ptr %i.a, align 4, !noundef !25
  %.val9.i = load i32, ptr %0, align 4, !noundef !25
  %i.b = icmp ult i32 %.val8.i, %.val9.i          ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val6.i = load i32, ptr %i.c, align 4, !noundef !25
  %.val7.i = load i32, ptr %i.d, align 4, !noundef !25
  %i.e = icmp ult i32 %.val6.i, %.val7.i          ; 2 uses
  %i.f = zext i1 %i.b to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.f ; 2 uses
  %i.h = xor i1 %i.b, true
  %i.i = zext i1 %i.h to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.i ; 4 uses
  %i.k = select i1 %i.e, i64 3, i64 2
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.k ; 3 uses
  %i.m = select i1 %i.e, i64 2, i64 3
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m ; 3 uses
  %.val4.i = load i32, ptr %i.l, align 4, !noundef !25 ; 2 uses
  %.val5.i = load i32, ptr %i.g, align 4, !noundef !25 ; 2 uses
  %i.o = icmp ult i32 %.val4.i, %.val5.i          ; 2 uses
  %.val2.i = load i32, ptr %i.n, align 4, !noundef !25
  %.val3.i = load i32, ptr %i.j, align 4, !noundef !25
  %i.p = icmp ult i32 %.val2.i, %.val3.i          ; 3 uses
  %i.q = select i1 %i.p, ptr %i.l, ptr %i.j, !unpredictable !25
  %i.r = select i1 %i.o, ptr %i.g, ptr %i.q, !unpredictable !25 ; 3 uses
  %i.s = select i1 %i.o, ptr %i.j, ptr %i.l, !unpredictable !25
  %i.t = select i1 %i.p, ptr %i.n, ptr %i.s, !unpredictable !25 ; 3 uses
  %.val.i = load i32, ptr %i.t, align 4, !noundef !25
  %.val1.i = load i32, ptr %i.r, align 4, !noundef !25
  %i.u = icmp ult i32 %.val.i, %.val1.i           ; 2 uses
  %i.v = tail call i32 @llvm.umin.i32(i32 %.val4.i, i32 %.val5.i) ; 3 uses
  store i32 %i.v, ptr %2, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.val12.i = load i32, ptr %i.t, align 4
  %.val13.i = load i32, ptr %i.r, align 4
  %i.x = select i1 %i.u, i32 %.val12.i, i32 %.val13.i, !unpredictable !25
  store i32 %i.x, ptr %i.w, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val14.i = load i32, ptr %i.r, align 4
  %.val15.i = load i32, ptr %i.t, align 4
  %i.z = select i1 %i.u, i32 %.val14.i, i32 %.val15.i, !unpredictable !25
  store i32 %i.z, ptr %i.y, align 4
  %i.aa = getelementptr i8, ptr %2, i64 12        ; 2 uses
  %.val16.i = load i32, ptr %i.j, align 4
  %.val17.i = load i32, ptr %i.n, align 4
  %i.ab = select i1 %i.p, i32 %.val16.i, i32 %.val17.i, !unpredictable !25 ; 3 uses
  store i32 %i.ab, ptr %i.aa, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.ad = getelementptr i8, ptr %2, i64 16        ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.val8.i1 = load i32, ptr %i.ae, align 4, !noundef !25
  %.val9.i2 = load i32, ptr %i.ac, align 4, !noundef !25
  %i.af = icmp ult i32 %.val8.i1, %.val9.i2       ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val6.i3 = load i32, ptr %i.ag, align 4, !noundef !25
  %.val7.i4 = load i32, ptr %i.ah, align 4, !noundef !25
  %i.ai = icmp ult i32 %.val6.i3, %.val7.i4       ; 2 uses
  %i.aj = zext i1 %i.af to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.aj ; 2 uses
  %i.al = xor i1 %i.af, true
  %i.am = zext i1 %i.al to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.am ; 4 uses
  %i.ao = select i1 %i.ai, i64 3, i64 2
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ao ; 3 uses
  %i.aq = select i1 %i.ai, i64 2, i64 3
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.aq ; 3 uses
  %.val4.i5 = load i32, ptr %i.ap, align 4, !noundef !25 ; 2 uses
  %.val5.i6 = load i32, ptr %i.ak, align 4, !noundef !25 ; 2 uses
  %i.as = icmp ult i32 %.val4.i5, %.val5.i6       ; 2 uses
  %.val2.i7 = load i32, ptr %i.ar, align 4, !noundef !25
  %.val3.i8 = load i32, ptr %i.an, align 4, !noundef !25
  %i.at = icmp ult i32 %.val2.i7, %.val3.i8       ; 3 uses
  %i.au = select i1 %i.at, ptr %i.ap, ptr %i.an, !unpredictable !25
  %i.av = select i1 %i.as, ptr %i.ak, ptr %i.au, !unpredictable !25 ; 3 uses
  %i.aw = select i1 %i.as, ptr %i.an, ptr %i.ap, !unpredictable !25
  %i.ax = select i1 %i.at, ptr %i.ar, ptr %i.aw, !unpredictable !25 ; 3 uses
  %.val.i9 = load i32, ptr %i.ax, align 4, !noundef !25
  %.val1.i10 = load i32, ptr %i.av, align 4, !noundef !25
  %i.ay = icmp ult i32 %.val.i9, %.val1.i10       ; 2 uses
  %i.az = tail call i32 @llvm.umin.i32(i32 %.val4.i5, i32 %.val5.i6) ; 3 uses
  store i32 %i.az, ptr %i.ad, align 4
  %i.ba = getelementptr i8, ptr %2, i64 20
  %.val12.i11 = load i32, ptr %i.ax, align 4
  %.val13.i12 = load i32, ptr %i.av, align 4
  %i.bb = select i1 %i.ay, i32 %.val12.i11, i32 %.val13.i12, !unpredictable !25
  store i32 %i.bb, ptr %i.ba, align 4
  %i.bc = getelementptr i8, ptr %2, i64 24
  %.val14.i13 = load i32, ptr %i.av, align 4
  %.val15.i14 = load i32, ptr %i.ax, align 4
  %i.bd = select i1 %i.ay, i32 %.val14.i13, i32 %.val15.i14, !unpredictable !25
  store i32 %i.bd, ptr %i.bc, align 4
  %i.be = getelementptr i8, ptr %2, i64 28        ; 2 uses
  %.val16.i15 = load i32, ptr %i.an, align 4
  %.val17.i16 = load i32, ptr %i.ar, align 4
  %i.bf = select i1 %i.at, i32 %.val16.i15, i32 %.val17.i16, !unpredictable !25 ; 3 uses
  store i32 %i.bf, ptr %i.be, align 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1122)
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bh = icmp ult i32 %i.az, %i.v                ; 2 uses
  %i.bi = xor i1 %i.bh, true
  %i.bj = tail call i32 @llvm.umin.i32(i32 %i.az, i32 %i.v)
  store i32 %i.bj, ptr %1, align 4, !noalias !1125
  %i.bk = zext i1 %i.bh to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.bk ; 2 uses
  %i.bm = zext i1 %i.bi to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bp = icmp ult i32 %i.bf, %i.ab               ; 2 uses
  %i.bq = xor i1 %i.bp, true
  %i.br = tail call i32 @llvm.umax.i32(i32 %i.bf, i32 %i.ab)
  store i32 %i.br, ptr %i.bg, align 4, !noalias !1129
  %.neg.i.i = sext i1 %i.bq to i64
  %i.bs = getelementptr [4 x i8], ptr %i.be, i64 %.neg.i.i ; 2 uses
  %.neg13.i.i = sext i1 %i.bp to i64
  %i.bt = getelementptr [4 x i8], ptr %i.aa, i64 %.neg13.i.i ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.011.0.val.i.1 = load i32, ptr %i.bl, align 4, !alias.scope !1122, !noundef !25 ; 2 uses
  %.sroa.06.0.val.i.1 = load i32, ptr %i.bn, align 4, !alias.scope !1122, !noundef !25 ; 2 uses
  %i.bv = icmp ult i32 %.sroa.011.0.val.i.1, %.sroa.06.0.val.i.1 ; 2 uses
  %i.bw = xor i1 %i.bv, true
  %i.bx = tail call i32 @llvm.umin.i32(i32 %.sroa.011.0.val.i.1, i32 %.sroa.06.0.val.i.1)
  store i32 %i.bx, ptr %i.bo, align 4, !noalias !1125
  %i.by = zext i1 %i.bv to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.by ; 2 uses
  %i.ca = zext i1 %i.bw to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.ca ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.017.0.val.i.1 = load i32, ptr %i.bs, align 4, !alias.scope !1122, !noundef !25 ; 2 uses
  %.sroa.015.0.val.i.1 = load i32, ptr %i.bt, align 4, !alias.scope !1122, !noundef !25 ; 2 uses
  %i.cd = icmp ult i32 %.sroa.017.0.val.i.1, %.sroa.015.0.val.i.1 ; 2 uses
  %i.ce = xor i1 %i.cd, true
  %i.cf = tail call i32 @llvm.umax.i32(i32 %.sroa.017.0.val.i.1, i32 %.sroa.015.0.val.i.1)
  store i32 %i.cf, ptr %i.bu, align 4, !noalias !1129
  %.neg.i.i.1 = sext i1 %i.ce to i64
  %i.cg = getelementptr [4 x i8], ptr %i.bs, i64 %.neg.i.i.1 ; 2 uses
  %.neg13.i.i.1 = sext i1 %i.cd to i64
  %i.ch = getelementptr [4 x i8], ptr %i.bt, i64 %.neg13.i.i.1 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.011.0.val.i.2 = load i32, ptr %i.bz, align 4, !alias.scope !1122, !noundef !25 ; 2 uses
  %.sroa.06.0.val.i.2 = load i32, ptr %i.cb, align 4, !alias.scope !1122, !noundef !25 ; 2 uses
  %i.cj = icmp ult i32 %.sroa.011.0.val.i.2, %.sroa.06.0.val.i.2 ; 2 uses
  %i.ck = xor i1 %i.cj, true
  %i.cl = tail call i32 @llvm.umin.i32(i32 %.sroa.011.0.val.i.2, i32 %.sroa.06.0.val.i.2)
  store i32 %i.cl, ptr %i.cc, align 4, !noalias !1125
  %i.cm = zext i1 %i.cj to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.cm ; 2 uses
  %i.co = zext i1 %i.ck to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.co ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.017.0.val.i.2 = load i32, ptr %i.cg, align 4, !alias.scope !1122, !noundef !25 ; 2 uses
  %.sroa.015.0.val.i.2 = load i32, ptr %i.ch, align 4, !alias.scope !1122, !noundef !25 ; 2 uses
  %i.cr = icmp ult i32 %.sroa.017.0.val.i.2, %.sroa.015.0.val.i.2 ; 2 uses
  %i.cs = xor i1 %i.cr, true
  %i.ct = tail call i32 @llvm.umax.i32(i32 %.sroa.017.0.val.i.2, i32 %.sroa.015.0.val.i.2)
  store i32 %i.ct, ptr %i.ci, align 4, !noalias !1129
  %.neg.i.i.2 = sext i1 %i.cs to i64
  %i.cu = getelementptr [4 x i8], ptr %i.cg, i64 %.neg.i.i.2 ; 2 uses
  %.neg13.i.i.2 = sext i1 %i.cr to i64
  %i.cv = getelementptr [4 x i8], ptr %i.ch, i64 %.neg13.i.i.2 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.011.0.val.i.3 = load i32, ptr %i.cn, align 4, !alias.scope !1122, !noundef !25 ; 2 uses
  %.sroa.06.0.val.i.3 = load i32, ptr %i.cp, align 4, !alias.scope !1122, !noundef !25 ; 2 uses
  %i.cx = icmp ult i32 %.sroa.011.0.val.i.3, %.sroa.06.0.val.i.3 ; 2 uses
  %i.cy = xor i1 %i.cx, true
  %i.cz = tail call i32 @llvm.umin.i32(i32 %.sroa.011.0.val.i.3, i32 %.sroa.06.0.val.i.3)
  store i32 %i.cz, ptr %i.cq, align 4, !noalias !1125
  %i.da = zext i1 %i.cx to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.da
  %i.dc = zext i1 %i.cy to i64
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.dc
  %.sroa.017.0.val.i.3 = load i32, ptr %i.cu, align 4, !alias.scope !1122, !noundef !25 ; 2 uses
  %.sroa.015.0.val.i.3 = load i32, ptr %i.cv, align 4, !alias.scope !1122, !noundef !25 ; 2 uses
  %i.de = icmp ult i32 %.sroa.017.0.val.i.3, %.sroa.015.0.val.i.3 ; 2 uses
  %i.df = xor i1 %i.de, true
  %i.dg = tail call i32 @llvm.umax.i32(i32 %.sroa.017.0.val.i.3, i32 %.sroa.015.0.val.i.3)
  store i32 %i.dg, ptr %i.cw, align 4, !noalias !1129
  %.neg.i.i.3 = sext i1 %i.df to i64
  %i.dh = getelementptr [4 x i8], ptr %i.cu, i64 %.neg.i.i.3
  %.neg13.i.i.3 = sext i1 %i.de to i64
  %i.di = getelementptr [4 x i8], ptr %i.cv, i64 %.neg13.i.i.3
  %i.dj = getelementptr i8, ptr %i.di, i64 4
  %i.dk = getelementptr i8, ptr %i.dh, i64 4
  %i.dl = icmp ne ptr %i.dd, %i.dj
  %i.dm = icmp ne ptr %i.db, %i.dk
  %or.cond.i = select i1 %i.dl, i1 true, i1 %i.dm, !prof !1133
  br i1 %or.cond.i, label %bb.a, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB1g_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand.exit, !prof !1133

bb.a:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #37, !noalias !1122
  unreachable

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB1g_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand.exit: ; preds = %.lr.ph.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort18small_sort_generalNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB8_SB1f_16sort_unstable_byNCNvMs0_B1h_NtB1h_17ProcMacrosBuilder6insert0E0EB1j_(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1536 x i8], align 8              ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1134)
  %i.b = icmp samesign ult i64 %1, 2
  br i1 %i.b, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB8_SB1s_16sort_unstable_byNCNvMs0_B1u_NtB1u_17ProcMacrosBuilder6insert0E0EB1w_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ugt i64 %1, 32
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i64 %1, 1                           ; 6 uses
  %i.e = icmp samesign ugt i64 %1, 7
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.d ; 3 uses
  %i.g = getelementptr [32 x i8], ptr %i.a, i64 %i.d ; 8 uses
  br i1 %i.e, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  call fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort12sort4_stableNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB8_SB19_16sort_unstable_byNCNvMs0_B1b_NtB1b_17ProcMacrosBuilder6insert0E0EB1d_(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.a)
  call fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort12sort4_stableNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB8_SB19_16sort_unstable_byNCNvMs0_B1b_NtB1b_17ProcMacrosBuilder6insert0E0EB1d_(ptr noundef %i.f, ptr noundef %i.g)
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !alias.scope !1137
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !alias.scope !1137
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.0.i = phi i64 [ 4, %bb.e ], [ 1, %bb.f ] ; 4 uses
  %i.h = sub nsw i64 %1, %i.d                     ; 2 uses
  %i.i = icmp samesign ult i64 %.sroa.0.0.i, %i.d
  br i1 %i.i, label %.lr.ph.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB8_SB18_16sort_unstable_byNCNvMs0_B1a_NtB1a_17ProcMacrosBuilder6insert0E0EB1c_.exit.i, %bb.g
  %i.j = icmp ult i64 %.sroa.0.0.i, %i.h
  br i1 %i.j, label %.lr.ph.1.i, label %.loopexit.1.i

.lr.ph.1.i:                                       ; preds = %.loopexit.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB8_SB18_16sort_unstable_byNCNvMs0_B1a_NtB1a_17ProcMacrosBuilder6insert0E0EB1c_.exit.1.i
  %.sroa.05.08.1.i = phi i64 [ %i.ba, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB8_SB18_16sort_unstable_byNCNvMs0_B1a_NtB1a_17ProcMacrosBuilder6insert0E0EB1c_.exit.1.i ], [ %.sroa.0.0.i, %.loopexit.i ] ; 4 uses
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %.sroa.05.08.1.i ; 3 uses
  %.idx45 = shl nuw nsw i64 %.sroa.05.08.1.i, 5
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx45 ; 9 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false), !alias.scope !1137
  %i.m = getelementptr i8, ptr %i.l, i64 16
  %.val11.i.1.i = load ptr, ptr %i.m, align 8, !alias.scope !1139, !noalias !1134, !nonnull !25, !noundef !25 ; 3 uses
  %i.n = getelementptr i8, ptr %i.l, i64 24
  %.val12.i.1.i = load i8, ptr %i.n, align 8, !range !1121, !alias.scope !1139, !noalias !1134, !noundef !25 ; 3 uses
  %i.o = getelementptr i8, ptr %i.l, i64 -16
  %.val13.i.1.i = load ptr, ptr %i.o, align 8, !alias.scope !1139, !noalias !1134, !nonnull !25, !noundef !25 ; 2 uses
  %i.p = getelementptr i8, ptr %i.l, i64 -8
  %.val14.i.1.i = load i8, ptr %i.p, align 8, !range !1121, !alias.scope !1139, !noalias !1134, !noundef !25
  %i.q = ptrtoint ptr %.val11.i.1.i to i64
  %i.r = and i64 %i.q, 1
  %i.s = sub nsw i64 0, %i.r
  %i.t = getelementptr i8, ptr %.val11.i.1.i, i64 %i.s ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.t) ]
  %i.u = load ptr, ptr %i.t, align 8, !noalias !1134, !nonnull !25, !noundef !25 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.w = load i64, ptr %i.v, align 8, !noalias !1134, !noundef !25 ; 4 uses
  %i.x = ptrtoint ptr %.val13.i.1.i to i64
  %i.y = and i64 %i.x, 1
  %i.z = sub nsw i64 0, %i.y
  %i.aa = getelementptr i8, ptr %.val13.i.1.i, i64 %i.z ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aa) ]
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !1134, !nonnull !25, !noundef !25
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !1134, !noundef !25 ; 2 uses
  %spec.store.select.i.i.i30.1.i = call i64 @llvm.umin.i64(i64 %i.w, i64 %i.ad)
  %i.ae = call i32 @memcmp(ptr nonnull %i.u, ptr nonnull %i.ab, i64 %spec.store.select.i.i.i30.1.i), !noalias !1134 ; 2 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = icmp eq i32 %i.ae, 0
  %i.ah = sub i64 %i.w, %i.ad
  %spec.select.i.i.i31.1.i = select i1 %i.ag, i64 %i.ah, i64 %i.af ; 2 uses
  %i.ai = icmp eq i64 %spec.select.i.i.i31.1.i, 0
  %3 = icmp samesign ult i8 %.val12.i.1.i, %.val14.i.1.i
  %4 = icmp slt i64 %spec.select.i.i.i31.1.i, 0
  %spec.select.i.i32.1.i = select i1 %i.ai, i1 %3, i1 %4
  br i1 %spec.select.i.i32.1.i, label %bb.h, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB8_SB18_16sort_unstable_byNCNvMs0_B1a_NtB1a_17ProcMacrosBuilder6insert0E0EB1c_.exit.1.i

bb.h:                                             ; preds = %.lr.ph.1.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 25
  %.sroa.0.0.i33.1.i34 = getelementptr inbounds i8, ptr %i.l, i64 -32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i33.1.i34, i64 32, i1 false), !alias.scope !1139, !noalias !1134
  %i.ak = icmp eq i64 %.sroa.05.08.1.i, 1
  br i1 %i.ak, label %._crit_edge39, label %.lr.ph38

bb.i:                                             ; preds = %.lr.ph38
  %.sroa.0.0.i33.1.i = getelementptr inbounds i8, ptr %.sroa.0.0.i33.1.i36, i64 -32 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i33.1.i36, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i33.1.i, i64 32, i1 false), !alias.scope !1139, !noalias !1134
  %i.al = icmp eq ptr %.sroa.0.0.i33.1.i, %i.g
  br i1 %i.al, label %._crit_edge39, label %.lr.ph38

.lr.ph38:                                         ; preds = %bb.h, %bb.i
  %.sroa.0.0.i33.1.i36 = phi ptr [ %.sroa.0.0.i33.1.i, %bb.i ], [ %.sroa.0.0.i33.1.i34, %bb.h ] ; 5 uses
  %.sroa.5.0.i.1.i35 = phi ptr [ %.sroa.0.0.i33.1.i36, %bb.i ], [ %i.l, %bb.h ] ; 3 uses
  %i.am = getelementptr i8, ptr %.sroa.5.0.i.1.i35, i64 -48
  %.val9.i.1.i = load ptr, ptr %i.am, align 8, !alias.scope !1139, !noalias !1134, !nonnull !25, !noundef !25 ; 2 uses
  %i.an = getelementptr i8, ptr %.sroa.5.0.i.1.i35, i64 -40
  %.val10.i.1.i = load i8, ptr %i.an, align 8, !range !1121, !alias.scope !1139, !noalias !1134, !noundef !25
  %i.ao = ptrtoint ptr %.val9.i.1.i to i64
  %i.ap = and i64 %i.ao, 1
  %i.aq = sub nsw i64 0, %i.ap
  %i.ar = getelementptr i8, ptr %.val9.i.1.i, i64 %i.aq ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ar) ]
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !1134, !nonnull !25, !noundef !25
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.au = load i64, ptr %i.at, align 8, !noalias !1134, !noundef !25 ; 2 uses
  %spec.store.select.i.i15.i.1.i = call i64 @llvm.umin.i64(i64 %i.w, i64 %i.au)
  %i.av = call i32 @memcmp(ptr nonnull %i.u, ptr nonnull %i.as, i64 %spec.store.select.i.i15.i.1.i), !noalias !1134 ; 2 uses
  %i.aw = sext i32 %i.av to i64
  %i.ax = icmp eq i32 %i.av, 0
  %i.ay = sub i64 %i.w, %i.au
  %spec.select.i.i16.i.1.i = select i1 %i.ax, i64 %i.ay, i64 %i.aw ; 2 uses
  %i.az = icmp eq i64 %spec.select.i.i16.i.1.i, 0
  %5 = icmp samesign ult i8 %.val12.i.1.i, %.val10.i.1.i
  %6 = icmp slt i64 %spec.select.i.i16.i.1.i, 0
  %spec.select.i17.i.1.i = select i1 %i.az, i1 %5, i1 %6
  br i1 %spec.select.i17.i.1.i, label %bb.i, label %._crit_edge39

._crit_edge39:                                    ; preds = %bb.i, %.lr.ph38, %bb.h
  %.sroa.5.0.i.1.i.lcssa = phi ptr [ %i.l, %bb.h ], [ %.sroa.0.0.i33.1.i36, %bb.i ], [ %.sroa.5.0.i.1.i35, %.lr.ph38 ] ; 3 uses
  %.sroa.0.0.i33.lcssa.1.i = phi ptr [ %i.g, %bb.h ], [ %i.g, %bb.i ], [ %.sroa.0.0.i33.1.i36, %.lr.ph38 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i33.lcssa.1.i, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false), !alias.scope !1137
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.lcssa, i64 -16
  store ptr %.val11.i.1.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 8, !alias.scope !1139, !noalias !1140
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.lcssa, i64 -8
  store i8 %.val12.i.1.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 8, !alias.scope !1139, !noalias !1140
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.lcssa, i64 -7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.1.i, ptr noundef nonnull align 1 dereferenceable(7) %i.aj, i64 7, i1 false), !alias.scope !1137
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB8_SB18_16sort_unstable_byNCNvMs0_B1a_NtB1a_17ProcMacrosBuilder6insert0E0EB1c_.exit.1.i

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB8_SB18_16sort_unstable_byNCNvMs0_B1a_NtB1a_17ProcMacrosBuilder6insert0E0EB1c_.exit.1.i: ; preds = %._crit_edge39, %.lr.ph.1.i
  %i.ba = add nuw i64 %.sroa.05.08.1.i, 1         ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %i.ba, %i.h
  br i1 %exitcond.1.not.i, label %.loopexit.1.i, label %.lr.ph.1.i

.loopexit.1.i:                                    ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB8_SB18_16sort_unstable_byNCNvMs0_B1a_NtB1a_17ProcMacrosBuilder6insert0E0EB1c_.exit.1.i, %.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1145)
  %i.bb = add nsw i64 %1, -1                      ; 2 uses
  %i.bc = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.bb
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.bb
  %i.be = getelementptr i8, ptr %i.g, i64 -32
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.bf = getelementptr i8, ptr %i.dh, i64 32     ; 2 uses
  %i.bg = getelementptr i8, ptr %i.dg, i64 32
  %i.bh = and i64 %1, 1
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %bb.k, label %bb.j

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.loopexit.1.i
  %.sroa.0.010.i.i = phi ptr [ %i.ch, %.lr.ph.i.i ], [ %0, %.loopexit.1.i ] ; 2 uses
  %.sroa.04.09.i.i = phi i64 [ %i.bj, %.lr.ph.i.i ], [ 0, %.loopexit.1.i ]
  %.sroa.06.08.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i.i ], [ %i.a, %.loopexit.1.i ] ; 4 uses
  %.sroa.011.07.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i.i ], [ %i.g, %.loopexit.1.i ] ; 4 uses
  %.sroa.015.06.i.i = phi ptr [ %i.dh, %.lr.ph.i.i ], [ %i.be, %.loopexit.1.i ] ; 4 uses
  %.sroa.017.05.i.i = phi ptr [ %i.dg, %.lr.ph.i.i ], [ %i.bd, %.loopexit.1.i ] ; 4 uses
  %.sroa.019.04.i.i = phi ptr [ %i.di, %.lr.ph.i.i ], [ %i.bc, %.loopexit.1.i ] ; 2 uses
  %i.bj = add nuw nsw i64 %.sroa.04.09.i.i, 1     ; 2 uses
  %i.bk = getelementptr i8, ptr %.sroa.011.07.i.i, i64 16
  %.sroa.011.0.val.i.i = load ptr, ptr %i.bk, align 8, !alias.scope !1148, !noalias !1134, !nonnull !25, !noundef !25 ; 2 uses
  %i.bl = getelementptr i8, ptr %.sroa.011.07.i.i, i64 24
  %.sroa.011.0.val22.i.i = load i8, ptr %i.bl, align 8, !range !1121, !alias.scope !1148, !noalias !1134, !noundef !25
  %i.bm = getelementptr i8, ptr %.sroa.06.08.i.i, i64 16
  %.sroa.06.0.val.i.i = load ptr, ptr %i.bm, align 8, !alias.scope !1148, !noalias !1134, !nonnull !25, !noundef !25 ; 2 uses
  %i.bn = getelementptr i8, ptr %.sroa.06.08.i.i, i64 24
  %.sroa.06.0.val23.i.i = load i8, ptr %i.bn, align 8, !range !1121, !alias.scope !1148, !noalias !1134, !noundef !25
  %i.bo = ptrtoint ptr %.sroa.011.0.val.i.i to i64
  %i.bp = and i64 %i.bo, 1
  %i.bq = sub nsw i64 0, %i.bp
  %i.br = getelementptr i8, ptr %.sroa.011.0.val.i.i, i64 %i.bq ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.br) ]
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !1149, !nonnull !25, !noundef !25
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !noalias !1149, !noundef !25 ; 2 uses
  %i.bv = ptrtoint ptr %.sroa.06.0.val.i.i to i64
  %i.bw = and i64 %i.bv, 1
  %i.bx = sub nsw i64 0, %i.bw
  %i.by = getelementptr i8, ptr %.sroa.06.0.val.i.i, i64 %i.bx ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.by) ]
  %i.bz = load ptr, ptr %i.by, align 8, !noalias !1149, !nonnull !25, !noundef !25
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !noalias !1149, !noundef !25 ; 2 uses
  %spec.store.select.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.bu, i64 %i.cb)
  %i.cc = call i32 @memcmp(ptr nonnull %i.bs, ptr nonnull %i.bz, i64 %spec.store.select.i.i.i.i), !noalias !1149 ; 2 uses
  %i.cd = sext i32 %i.cc to i64
  %i.ce = icmp eq i32 %i.cc, 0
  %i.cf = sub i64 %i.bu, %i.cb
  %spec.select.i.i.i.i = select i1 %i.ce, i64 %i.cf, i64 %i.cd ; 2 uses
  %i.cg = icmp eq i64 %spec.select.i.i.i.i, 0
  %7 = icmp samesign ult i8 %.sroa.011.0.val22.i.i, %.sroa.06.0.val23.i.i
  %8 = icmp slt i64 %spec.select.i.i.i.i, 0
  %spec.select.i.i.i = select i1 %i.cg, i1 %7, i1 %8 ; 3 uses
  %..i21.i.i = select i1 %spec.select.i.i.i, ptr %.sroa.011.07.i.i, ptr %.sroa.06.08.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.010.i.i, ptr noundef nonnull align 8 dereferenceable(32) %..i21.i.i, i64 32, i1 false), !alias.scope !1137, !noalias !1150
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %spec.select.i.i.i, i64 32, i64 0
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.011.07.i.i, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 4 uses
  %.sroa.sel4.idx.sroa.sel.idx.sroa.sel.idx = select i1 %spec.select.i.i.i, i64 0, i64 32
  %.sroa.sel4.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i, i64 %.sroa.sel4.idx.sroa.sel.idx.sroa.sel.idx ; 5 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 32 ; 2 uses
  %i.ci = getelementptr i8, ptr %.sroa.017.05.i.i, i64 16
  %.sroa.017.0.val.i.i = load ptr, ptr %i.ci, align 8, !alias.scope !1148, !noalias !1134, !nonnull !25, !noundef !25 ; 2 uses
  %i.cj = getelementptr i8, ptr %.sroa.017.05.i.i, i64 24
  %.sroa.017.0.val24.i.i = load i8, ptr %i.cj, align 8, !range !1121, !alias.scope !1148, !noalias !1134, !noundef !25
  %i.ck = getelementptr i8, ptr %.sroa.015.06.i.i, i64 16
  %.sroa.015.0.val.i.i = load ptr, ptr %i.ck, align 8, !alias.scope !1148, !noalias !1134, !nonnull !25, !noundef !25 ; 2 uses
  %i.cl = getelementptr i8, ptr %.sroa.015.06.i.i, i64 24
  %.sroa.015.0.val25.i.i = load i8, ptr %i.cl, align 8, !range !1121, !alias.scope !1148, !noalias !1134, !noundef !25
  %i.cm = ptrtoint ptr %.sroa.017.0.val.i.i to i64
  %i.cn = and i64 %i.cm, 1
  %i.co = sub nsw i64 0, %i.cn
  %i.cp = getelementptr i8, ptr %.sroa.017.0.val.i.i, i64 %i.co ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cp) ]
  %i.cq = load ptr, ptr %i.cp, align 8, !noalias !1149, !nonnull !25, !noundef !25
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cs = load i64, ptr %i.cr, align 8, !noalias !1149, !noundef !25 ; 2 uses
  %i.ct = ptrtoint ptr %.sroa.015.0.val.i.i to i64
  %i.cu = and i64 %i.ct, 1
  %i.cv = sub nsw i64 0, %i.cu
  %i.cw = getelementptr i8, ptr %.sroa.015.0.val.i.i, i64 %i.cv ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cw) ]
  %i.cx = load ptr, ptr %i.cw, align 8, !noalias !1149, !nonnull !25, !noundef !25
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !noalias !1149, !noundef !25 ; 2 uses
  %spec.store.select.i.i26.i.i = call i64 @llvm.umin.i64(i64 %i.cs, i64 %i.cz)
  %i.da = call i32 @memcmp(ptr nonnull %i.cq, ptr nonnull %i.cx, i64 %spec.store.select.i.i26.i.i), !noalias !1149 ; 2 uses
  %i.db = sext i32 %i.da to i64
  %i.dc = icmp eq i32 %i.da, 0
  %i.dd = sub i64 %i.cs, %i.cz
  %spec.select.i.i27.i.i = select i1 %i.dc, i64 %i.dd, i64 %i.db ; 2 uses
  %i.de = icmp eq i64 %spec.select.i.i27.i.i, 0
  %9 = icmp samesign ult i8 %.sroa.017.0.val24.i.i, %.sroa.015.0.val25.i.i
  %10 = icmp slt i64 %spec.select.i.i27.i.i, 0
  %spec.select.i28.i.i = select i1 %i.de, i1 %9, i1 %10 ; 3 uses
  %..i.i.i = select i1 %spec.select.i28.i.i, ptr %.sroa.015.06.i.i, ptr %.sroa.017.05.i.i
  %i.df = xor i1 %spec.select.i28.i.i, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.019.04.i.i, ptr noundef nonnull align 8 dereferenceable(32) %..i.i.i, i64 32, i1 false), !alias.scope !1137, !noalias !1154
  %.neg.i.i.i = sext i1 %i.df to i64
  %i.dg = getelementptr [32 x i8], ptr %.sroa.017.05.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg13.i.i.i = sext i1 %spec.select.i28.i.i to i64
  %i.dh = getelementptr [32 x i8], ptr %.sroa.015.06.i.i, i64 %.neg13.i.i.i ; 2 uses
  %i.di = getelementptr inbounds i8, ptr %.sroa.019.04.i.i, i64 -32
  %exitcond.not.i.i = icmp eq i64 %i.bj, %i.d
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.j:                                             ; preds = %._crit_edge.i.i
  %.not = icmp ult ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %i.bf ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %.not, ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ch, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.06.0..sroa.011.0.i.i, i64 32, i1 false), !alias.scope !1137
  %.sroa.sel16.idx.sroa.sel.idx = select i1 %.not, i64 32, i64 0
  %.sroa.sel16.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel16.idx.sroa.sel.idx
  %.sroa.sel.idx.sroa.sel.idx = select i1 %.not, i64 0, i64 32
  %.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel.idx.sroa.sel.idx
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i ], [ %.sroa.sel.idx.sroa.sel, %bb.j ]
  %.sroa.06.1.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i ], [ %.sroa.sel16.idx.sroa.sel, %bb.j ]
  %i.dj = icmp ne ptr %.sroa.06.1.i.i, %i.bf
  %i.dk = icmp ne ptr %.sroa.011.1.i.i, %i.bg
  %or.cond.i.i = select i1 %i.dj, i1 true, i1 %i.dk, !prof !1133
  br i1 %or.cond.i.i, label %bb.l, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB8_SB1s_16sort_unstable_byNCNvMs0_B1u_NtB1u_17ProcMacrosBuilder6insert0E0EB1w_.exit, !prof !1133

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #37
          to label %.noexc.i unwind label %bb.m, !noalias !1134

.noexc.i:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.dl = landingpad { ptr, i32 }
          cleanup
  %i.dm = shl nuw nsw i64 %1, 5
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.a, i64 %i.dm, i1 false), !alias.scope !1137, !noalias !1158
  resume { ptr, i32 } %i.dl

.lr.ph.i:                                         ; preds = %bb.g, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB8_SB18_16sort_unstable_byNCNvMs0_B1a_NtB1a_17ProcMacrosBuilder6insert0E0EB1c_.exit.i
  %.sroa.05.08.i = phi i64 [ %i.fd, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB8_SB18_16sort_unstable_byNCNvMs0_B1a_NtB1a_17ProcMacrosBuilder6insert0E0EB1c_.exit.i ], [ %.sroa.0.0.i, %bb.g ] ; 4 uses
  %i.dn = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.05.08.i ; 3 uses
  %.idx = shl nuw nsw i64 %.sroa.05.08.i, 5
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx ; 9 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.do, ptr noundef nonnull align 8 dereferenceable(32) %i.dn, i64 32, i1 false), !alias.scope !1137
  %i.dp = getelementptr i8, ptr %i.do, i64 16
  %.val11.i.i = load ptr, ptr %i.dp, align 8, !alias.scope !1139, !noalias !1134, !nonnull !25, !noundef !25 ; 3 uses
  %i.dq = getelementptr i8, ptr %i.do, i64 24
  %.val12.i.i = load i8, ptr %i.dq, align 8, !range !1121, !alias.scope !1139, !noalias !1134, !noundef !25 ; 3 uses
  %i.dr = getelementptr i8, ptr %i.do, i64 -16
  %.val13.i.i = load ptr, ptr %i.dr, align 8, !alias.scope !1139, !noalias !1134, !nonnull !25, !noundef !25 ; 2 uses
  %i.ds = getelementptr i8, ptr %i.do, i64 -8
  %.val14.i.i = load i8, ptr %i.ds, align 8, !range !1121, !alias.scope !1139, !noalias !1134, !noundef !25
  %i.dt = ptrtoint ptr %.val11.i.i to i64
  %i.du = and i64 %i.dt, 1
  %i.dv = sub nsw i64 0, %i.du
  %i.dw = getelementptr i8, ptr %.val11.i.i, i64 %i.dv ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dw) ]
  %i.dx = load ptr, ptr %i.dw, align 8, !noalias !1134, !nonnull !25, !noundef !25 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dz = load i64, ptr %i.dy, align 8, !noalias !1134, !noundef !25 ; 4 uses
  %i.ea = ptrtoint ptr %.val13.i.i to i64
  %i.eb = and i64 %i.ea, 1
  %i.ec = sub nsw i64 0, %i.eb
  %i.ed = getelementptr i8, ptr %.val13.i.i, i64 %i.ec ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ed) ]
  %i.ee = load ptr, ptr %i.ed, align 8, !noalias !1134, !nonnull !25, !noundef !25
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.eg = load i64, ptr %i.ef, align 8, !noalias !1134, !noundef !25 ; 2 uses
  %spec.store.select.i.i.i30.i = call i64 @llvm.umin.i64(i64 %i.dz, i64 %i.eg)
  %i.eh = call i32 @memcmp(ptr nonnull %i.dx, ptr nonnull %i.ee, i64 %spec.store.select.i.i.i30.i), !noalias !1134 ; 2 uses
  %i.ei = sext i32 %i.eh to i64
  %i.ej = icmp eq i32 %i.eh, 0
  %i.ek = sub i64 %i.dz, %i.eg
  %spec.select.i.i.i31.i = select i1 %i.ej, i64 %i.ek, i64 %i.ei ; 2 uses
  %i.el = icmp eq i64 %spec.select.i.i.i31.i, 0
  %11 = icmp samesign ult i8 %.val12.i.i, %.val14.i.i
  %12 = icmp slt i64 %spec.select.i.i.i31.i, 0
  %spec.select.i.i32.i = select i1 %i.el, i1 %11, i1 %12
  br i1 %spec.select.i.i32.i, label %bb.n, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB8_SB18_16sort_unstable_byNCNvMs0_B1a_NtB1a_17ProcMacrosBuilder6insert0E0EB1c_.exit.i

bb.n:                                             ; preds = %.lr.ph.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.dn, i64 25
  %.sroa.0.0.i33.i27 = getelementptr inbounds i8, ptr %i.do, i64 -32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.do, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i33.i27, i64 32, i1 false), !alias.scope !1139, !noalias !1134
  %i.en = icmp eq i64 %.sroa.05.08.i, 1
  br i1 %i.en, label %._crit_edge, label %.lr.ph

bb.o:                                             ; preds = %.lr.ph
  %.sroa.0.0.i33.i = getelementptr inbounds i8, ptr %.sroa.0.0.i33.i29, i64 -32 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i33.i29, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i33.i, i64 32, i1 false), !alias.scope !1139, !noalias !1134
  %i.eo = icmp eq ptr %.sroa.0.0.i33.i, %i.a
  br i1 %i.eo, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n, %bb.o
  %.sroa.0.0.i33.i29 = phi ptr [ %.sroa.0.0.i33.i, %bb.o ], [ %.sroa.0.0.i33.i27, %bb.n ] ; 5 uses
  %.sroa.5.0.i.i28 = phi ptr [ %.sroa.0.0.i33.i29, %bb.o ], [ %i.do, %bb.n ] ; 3 uses
  %i.ep = getelementptr i8, ptr %.sroa.5.0.i.i28, i64 -48
  %.val9.i.i = load ptr, ptr %i.ep, align 8, !alias.scope !1139, !noalias !1134, !nonnull !25, !noundef !25 ; 2 uses
  %i.eq = getelementptr i8, ptr %.sroa.5.0.i.i28, i64 -40
  %.val10.i.i = load i8, ptr %i.eq, align 8, !range !1121, !alias.scope !1139, !noalias !1134, !noundef !25
  %i.er = ptrtoint ptr %.val9.i.i to i64
  %i.es = and i64 %i.er, 1
  %i.et = sub nsw i64 0, %i.es
  %i.eu = getelementptr i8, ptr %.val9.i.i, i64 %i.et ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eu) ]
  %i.ev = load ptr, ptr %i.eu, align 8, !noalias !1134, !nonnull !25, !noundef !25
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ex = load i64, ptr %i.ew, align 8, !noalias !1134, !noundef !25 ; 2 uses
  %spec.store.select.i.i15.i.i = call i64 @llvm.umin.i64(i64 %i.dz, i64 %i.ex)
  %i.ey = call i32 @memcmp(ptr nonnull %i.dx, ptr nonnull %i.ev, i64 %spec.store.select.i.i15.i.i), !noalias !1134 ; 2 uses
  %i.ez = sext i32 %i.ey to i64
  %i.fa = icmp eq i32 %i.ey, 0
  %i.fb = sub i64 %i.dz, %i.ex
  %spec.select.i.i16.i.i = select i1 %i.fa, i64 %i.fb, i64 %i.ez ; 2 uses
  %i.fc = icmp eq i64 %spec.select.i.i16.i.i, 0
  %13 = icmp samesign ult i8 %.val12.i.i, %.val10.i.i
  %14 = icmp slt i64 %spec.select.i.i16.i.i, 0
  %spec.select.i17.i.i = select i1 %i.fc, i1 %13, i1 %14
  br i1 %spec.select.i17.i.i, label %bb.o, label %._crit_edge

._crit_edge:                                      ; preds = %bb.o, %.lr.ph, %bb.n
  %.sroa.5.0.i.i.lcssa = phi ptr [ %i.do, %bb.n ], [ %.sroa.0.0.i33.i29, %bb.o ], [ %.sroa.5.0.i.i28, %.lr.ph ] ; 3 uses
  %.sroa.0.0.i33.lcssa.i = phi ptr [ %i.a, %bb.n ], [ %i.a, %bb.o ], [ %.sroa.0.0.i33.i29, %.lr.ph ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i33.lcssa.i, ptr noundef nonnull align 8 dereferenceable(16) %i.dn, i64 16, i1 false), !alias.scope !1137
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -16
  store ptr %.val11.i.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !1139, !noalias !1140
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -8
  store i8 %.val12.i.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !1139, !noalias !1140
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(7) %i.em, i64 7, i1 false), !alias.scope !1137
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB8_SB18_16sort_unstable_byNCNvMs0_B1a_NtB1a_17ProcMacrosBuilder6insert0E0EB1c_.exit.i

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB8_SB18_16sort_unstable_byNCNvMs0_B1a_NtB1a_17ProcMacrosBuilder6insert0E0EB1c_.exit.i: ; preds = %._crit_edge, %.lr.ph.i
  %i.fd = add nuw i64 %.sroa.05.08.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.fd, %i.d
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB8_SB1s_16sort_unstable_byNCNvMs0_B1u_NtB1u_17ProcMacrosBuilder6insert0E0EB1w_.exit: ; preds = %bb.a, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort18small_sort_generalNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB1f_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 4 captures(none) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [192 x i8], align 4               ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1163)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1166)
  %i.b = icmp samesign ult i64 %1, 2
  br i1 %i.b, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB1s_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ugt i64 %1, 32
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i64 %1, 1                           ; 12 uses
  %i.e = icmp samesign ugt i64 %1, 15
  br i1 %i.e, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = icmp samesign ugt i64 %1, 7
  br i1 %i.f, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %1 ; 2 uses
  call fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort12sort8_stableNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB19_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand(ptr noundef nonnull align 4 %0, ptr noundef nonnull align 4 %i.a, ptr noundef %i.g)
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.d
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  call fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort12sort8_stableNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB19_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand(ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j)
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val8.i.i = load i32, ptr %i.k, align 4, !alias.scope !1163, !noalias !1166, !noundef !25
  %.val9.i.i = load i32, ptr %0, align 4, !alias.scope !1163, !noalias !1166, !noundef !25
  %i.l = icmp ult i32 %.val8.i.i, %.val9.i.i      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val6.i.i = load i32, ptr %i.m, align 4, !alias.scope !1163, !noalias !1166, !noundef !25
  %.val7.i.i = load i32, ptr %i.n, align 4, !alias.scope !1163, !noalias !1166, !noundef !25
  %i.o = icmp ult i32 %.val6.i.i, %.val7.i.i      ; 2 uses
  %i.p = zext i1 %i.l to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.p ; 2 uses
  %i.r = xor i1 %i.l, true
  %i.s = zext i1 %i.r to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.s ; 3 uses
  %i.u = select i1 %i.o, i64 3, i64 2
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.u ; 3 uses
  %i.w = select i1 %i.o, i64 2, i64 3
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.w ; 2 uses
  %.val4.i.i = load i32, ptr %i.v, align 4, !alias.scope !1163, !noalias !1166, !noundef !25 ; 2 uses
  %.val5.i.i = load i32, ptr %i.q, align 4, !alias.scope !1163, !noalias !1166, !noundef !25 ; 2 uses
  %i.y = icmp ult i32 %.val4.i.i, %.val5.i.i      ; 2 uses
  %.val2.i.i = load i32, ptr %i.x, align 4, !alias.scope !1163, !noalias !1166, !noundef !25 ; 2 uses
  %.val3.i.i = load i32, ptr %i.t, align 4, !alias.scope !1163, !noalias !1166, !noundef !25 ; 2 uses
  %i.z = icmp ult i32 %.val2.i.i, %.val3.i.i      ; 2 uses
  %i.aa = select i1 %i.z, ptr %i.v, ptr %i.t, !unpredictable !25
  %i.ab = select i1 %i.y, ptr %i.q, ptr %i.aa, !unpredictable !25
  %i.ac = select i1 %i.y, ptr %i.t, ptr %i.v, !unpredictable !25
  %i.ad = select i1 %i.z, ptr %i.x, ptr %i.ac, !unpredictable !25
  %.val.i.i = load i32, ptr %i.ad, align 4, !alias.scope !1163, !noalias !1166, !noundef !25 ; 2 uses
  %.val1.i.i = load i32, ptr %i.ab, align 4, !alias.scope !1163, !noalias !1166, !noundef !25 ; 2 uses
  %i.ae = tail call i32 @llvm.umin.i32(i32 %.val4.i.i, i32 %.val5.i.i)
  store i32 %i.ae, ptr %i.a, align 4, !alias.scope !1166, !noalias !1163
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ag = tail call i32 @llvm.umin.i32(i32 %.val.i.i, i32 %.val1.i.i)
  store i32 %i.ag, ptr %i.af, align 4, !alias.scope !1166, !noalias !1163
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ai = tail call i32 @llvm.umax.i32(i32 %.val.i.i, i32 %.val1.i.i)
  store i32 %i.ai, ptr %i.ah, align 4, !alias.scope !1166, !noalias !1163
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.ak = tail call i32 @llvm.umax.i32(i32 %.val2.i.i, i32 %.val3.i.i)
  store i32 %i.ak, ptr %i.aj, align 4, !alias.scope !1166, !noalias !1163
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.d ; 8 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.d ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %.val8.i30.i = load i32, ptr %i.an, align 4, !alias.scope !1163, !noalias !1166, !noundef !25
  %.val9.i31.i = load i32, ptr %i.al, align 4, !alias.scope !1163, !noalias !1166, !noundef !25
  %i.ao = icmp ult i32 %.val8.i30.i, %.val9.i31.i ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.val6.i32.i = load i32, ptr %i.ap, align 4, !alias.scope !1163, !noalias !1166, !noundef !25
  %.val7.i33.i = load i32, ptr %i.aq, align 4, !alias.scope !1163, !noalias !1166, !noundef !25
  %i.ar = icmp ult i32 %.val6.i32.i, %.val7.i33.i ; 2 uses
  %i.as = zext i1 %i.ao to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.as ; 2 uses
  %i.au = xor i1 %i.ao, true
  %i.av = zext i1 %i.au to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.av ; 3 uses
  %i.ax = select i1 %i.ar, i64 3, i64 2
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.ax ; 3 uses
  %i.az = select i1 %i.ar, i64 2, i64 3
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.az ; 2 uses
  %.val4.i34.i = load i32, ptr %i.ay, align 4, !alias.scope !1163, !noalias !1166, !noundef !25 ; 2 uses
  %.val5.i35.i = load i32, ptr %i.at, align 4, !alias.scope !1163, !noalias !1166, !noundef !25 ; 2 uses
  %i.bb = icmp ult i32 %.val4.i34.i, %.val5.i35.i ; 2 uses
  %.val2.i36.i = load i32, ptr %i.ba, align 4, !alias.scope !1163, !noalias !1166, !noundef !25 ; 2 uses
  %.val3.i37.i = load i32, ptr %i.aw, align 4, !alias.scope !1163, !noalias !1166, !noundef !25 ; 2 uses
  %i.bc = icmp ult i32 %.val2.i36.i, %.val3.i37.i ; 2 uses
  %i.bd = select i1 %i.bc, ptr %i.ay, ptr %i.aw, !unpredictable !25
  %i.be = select i1 %i.bb, ptr %i.at, ptr %i.bd, !unpredictable !25
  %i.bf = select i1 %i.bb, ptr %i.aw, ptr %i.ay, !unpredictable !25
  %i.bg = select i1 %i.bc, ptr %i.ba, ptr %i.bf, !unpredictable !25
  %.val.i38.i = load i32, ptr %i.bg, align 4, !alias.scope !1163, !noalias !1166, !noundef !25 ; 2 uses
  %.val1.i39.i = load i32, ptr %i.be, align 4, !alias.scope !1163, !noalias !1166, !noundef !25 ; 2 uses
  %i.bh = tail call i32 @llvm.umin.i32(i32 %.val4.i34.i, i32 %.val5.i35.i)
  store i32 %i.bh, ptr %i.am, align 4, !alias.scope !1166, !noalias !1163
  %i.bi = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.bj = tail call i32 @llvm.umin.i32(i32 %.val.i38.i, i32 %.val1.i39.i)
  store i32 %i.bj, ptr %i.bi, align 4, !alias.scope !1166, !noalias !1163
  %i.bk = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.bl = tail call i32 @llvm.umax.i32(i32 %.val.i38.i, i32 %.val1.i39.i)
  store i32 %i.bl, ptr %i.bk, align 4, !alias.scope !1166, !noalias !1163
  %i.bm = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.bn = tail call i32 @llvm.umax.i32(i32 %.val2.i36.i, i32 %.val3.i37.i)
  store i32 %i.bn, ptr %i.bm, align 4, !alias.scope !1166, !noalias !1163
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.bo = load i32, ptr %0, align 4, !alias.scope !1163, !noalias !1166
  store i32 %i.bo, ptr %i.a, align 4, !alias.scope !1166, !noalias !1163
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.d
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.d
  %i.br = load i32, ptr %i.bp, align 4, !alias.scope !1163, !noalias !1166
  store i32 %i.br, ptr %i.bq, align 4, !alias.scope !1166, !noalias !1163
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.sroa.0.0.i = phi i64 [ 8, %bb.f ], [ 4, %bb.g ], [ 1, %bb.h ] ; 4 uses
  %i.bs = sub nsw i64 %1, %i.d                    ; 2 uses
  %i.bt = icmp samesign ult i64 %.sroa.0.0.i, %i.d
  br i1 %i.bt, label %.lr.ph.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB18_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand.exit.i, %bb.i
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.d
  %i.bv = getelementptr [4 x i8], ptr %i.a, i64 %i.d ; 6 uses
  %i.bw = icmp ult i64 %.sroa.0.0.i, %i.bs
  br i1 %i.bw, label %.lr.ph.1.i, label %.loopexit.1.i

.lr.ph.1.i:                                       ; preds = %.loopexit.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB18_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand.exit.1.i
  %.sroa.05.08.1.i = phi i64 [ %i.cg, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB18_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand.exit.1.i ], [ %.sroa.0.0.i, %.loopexit.i ] ; 4 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %.sroa.05.08.1.i
  %.idx37 = shl nuw nsw i64 %.sroa.05.08.1.i, 2
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx37 ; 3 uses
  %i.bz = load i32, ptr %i.bx, align 4, !alias.scope !1163, !noalias !1166 ; 4 uses
  store i32 %i.bz, ptr %i.by, align 4, !alias.scope !1166, !noalias !1163
  %i.ca = getelementptr inbounds i8, ptr %i.by, i64 -4 ; 2 uses
  %.val10.i.1.i = load i32, ptr %i.ca, align 4, !alias.scope !1166, !noalias !1163, !noundef !25 ; 2 uses
  %i.cb = icmp ult i32 %i.bz, %.val10.i.1.i
  br i1 %i.cb, label %.preheader.1.i.preheader, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB18_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand.exit.1.i

.preheader.1.i.preheader:                         ; preds = %.lr.ph.1.i
  store i32 %.val10.i.1.i, ptr %i.by, align 4, !alias.scope !1166, !noalias !1163
  %i.cc = icmp eq i64 %.sroa.05.08.1.i, 1
  br i1 %i.cc, label %._crit_edge34, label %.lr.ph33

.preheader.1.i:                                   ; preds = %.lr.ph33
  store i32 %.val8.i48.1.i, ptr %.sroa.0.0.i47.1.i32, align 4, !alias.scope !1166, !noalias !1163
  %i.cd = icmp eq ptr %i.ce, %i.bv
  br i1 %i.cd, label %._crit_edge34, label %.lr.ph33

.lr.ph33:                                         ; preds = %.preheader.1.i.preheader, %.preheader.1.i
  %.sroa.0.0.i47.1.i32 = phi ptr [ %i.ce, %.preheader.1.i ], [ %i.ca, %.preheader.1.i.preheader ] ; 3 uses
  %i.ce = getelementptr inbounds i8, ptr %.sroa.0.0.i47.1.i32, i64 -4 ; 3 uses
  %.val8.i48.1.i = load i32, ptr %i.ce, align 4, !alias.scope !1166, !noalias !1163, !noundef !25 ; 2 uses
  %i.cf = icmp ult i32 %i.bz, %.val8.i48.1.i
  br i1 %i.cf, label %.preheader.1.i, label %._crit_edge34

._crit_edge34:                                    ; preds = %.preheader.1.i, %.lr.ph33, %.preheader.1.i.preheader
  %.sroa.0.0.i47.lcssa.1.i = phi ptr [ %i.bv, %.preheader.1.i.preheader ], [ %i.bv, %.preheader.1.i ], [ %.sroa.0.0.i47.1.i32, %.lr.ph33 ]
  store i32 %i.bz, ptr %.sroa.0.0.i47.lcssa.1.i, align 4, !alias.scope !1166, !noalias !1168
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort18small_sort_networkNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB1f_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand:bb.a

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.trap()
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.02.0, i64 %.sroa.8.0
  %.not4.i = icmp samesign eq i64 %.sroa.01.0, %.sroa.8.0
  br i1 %.not4.i, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB1m_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.k
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.02.0, i64 %.sroa.01.0
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB18_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand.exit.i, %.lr.ph.preheader.i
  %.sroa.0.05.i = phi ptr [ %i.fw, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB18_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand.exit.i ], [ %i.fp, %.lr.ph.preheader.i ] ; 4 uses
  %i.fq = getelementptr inbounds i8, ptr %.sroa.0.05.i, i64 -4 ; 3 uses
  %.val9.i.i = load i32, ptr %.sroa.0.05.i, align 4, !alias.scope !1197, !noundef !25 ; 3 uses
  %.val10.i.i = load i32, ptr %i.fq, align 4, !alias.scope !1197, !noundef !25 ; 2 uses
  %i.fr = icmp ult i32 %.val9.i.i, %.val10.i.i
  br i1 %i.fr, label %.preheader.i.preheader, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB18_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand.exit.i

.preheader.i.preheader:                           ; preds = %.lr.ph.i
  store i32 %.val10.i.i, ptr %.sroa.0.05.i, align 4, !alias.scope !1197
  %i.fs = icmp eq ptr %i.fq, %.sroa.02.0
  br i1 %i.fs, label %._crit_edge, label %.lr.ph

.preheader.i:                                     ; preds = %.lr.ph
  store i32 %.val8.i.i, ptr %.sroa.0.0.i.i42, align 4, !alias.scope !1197
  %i.ft = icmp eq ptr %i.fu, %.sroa.02.0
  br i1 %i.ft, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i.preheader, %.preheader.i
  %.sroa.0.0.i.i42 = phi ptr [ %i.fu, %.preheader.i ], [ %i.fq, %.preheader.i.preheader ] ; 3 uses
  %i.fu = getelementptr inbounds i8, ptr %.sroa.0.0.i.i42, i64 -4 ; 3 uses
  %.val8.i.i = load i32, ptr %i.fu, align 4, !alias.scope !1197, !noundef !25 ; 2 uses
  %i.fv = icmp ult i32 %.val9.i.i, %.val8.i.i
  br i1 %i.fv, label %.preheader.i, label %._crit_edge

._crit_edge:                                      ; preds = %.preheader.i, %.lr.ph, %.preheader.i.preheader
  %.sroa.0.0.i.lcssa.i = phi ptr [ %.sroa.02.0, %.preheader.i.preheader ], [ %.sroa.02.0, %.preheader.i ], [ %.sroa.0.0.i.i42, %.lr.ph ]
  store i32 %.val9.i.i, ptr %.sroa.0.0.i.lcssa.i, align 4, !alias.scope !1197, !noalias !1200
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB18_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand.exit.i

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB18_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand.exit.i: ; preds = %._crit_edge, %.lr.ph.i
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.fw, %i.fo
  br i1 %.not.i, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB1m_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand.exit, label %.lr.ph.i

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB1m_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand.exit: ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB18_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand.exit.i, %bb.k
  br i1 %i.e, label %.sink.split, label %bb.l

bb.l:                                             ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB1m_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand.exit
  %.not = icmp eq ptr %.sroa.02.0, %0
  br i1 %.not, label %bb.e, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1205)
  %i.fx = add nsw i64 %1, -1                      ; 2 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fx
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fx
  %i.ga = getelementptr i8, ptr %i.f, i64 -4
  br label %.lr.ph.i23

._crit_edge.i:                                    ; preds = %.lr.ph.i23
  %i.gb = getelementptr i8, ptr %i.gs, i64 4      ; 2 uses
  %i.gc = getelementptr i8, ptr %i.gr, i64 4
  %i.gd = and i64 %1, 1
  %i.ge = icmp eq i64 %i.gd, 0
  br i1 %i.ge, label %bb.o, label %bb.n

.lr.ph.i23:                                       ; preds = %.lr.ph.i23, %bb.m
  %.sroa.0.014.i = phi ptr [ %i.gn, %.lr.ph.i23 ], [ %i.a, %bb.m ] ; 2 uses
  %.sroa.04.013.i = phi i64 [ %i.gf, %.lr.ph.i23 ], [ 0, %bb.m ]
  %.sroa.06.012.i = phi ptr [ %i.gm, %.lr.ph.i23 ], [ %0, %bb.m ] ; 2 uses
  %.sroa.011.011.i = phi ptr [ %i.gk, %.lr.ph.i23 ], [ %i.f, %bb.m ] ; 2 uses
  %.sroa.015.010.i = phi ptr [ %i.gs, %.lr.ph.i23 ], [ %i.ga, %bb.m ] ; 2 uses
  %.sroa.017.09.i = phi ptr [ %i.gr, %.lr.ph.i23 ], [ %i.fz, %bb.m ] ; 2 uses
  %.sroa.019.08.i = phi ptr [ %i.gt, %.lr.ph.i23 ], [ %i.fy, %bb.m ] ; 2 uses
  %i.gf = add nuw nsw i64 %.sroa.04.013.i, 1      ; 2 uses
  %.sroa.011.0.val.i = load i32, ptr %.sroa.011.011.i, align 4, !alias.scope !1205, !noundef !25 ; 2 uses
  %.sroa.06.0.val.i = load i32, ptr %.sroa.06.012.i, align 4, !alias.scope !1205, !noundef !25 ; 2 uses
  %i.gg = icmp ult i32 %.sroa.011.0.val.i, %.sroa.06.0.val.i ; 2 uses
  %i.gh = xor i1 %i.gg, true
  %i.gi = tail call i32 @llvm.umin.i32(i32 %.sroa.011.0.val.i, i32 %.sroa.06.0.val.i)
  store i32 %i.gi, ptr %.sroa.0.014.i, align 4, !noalias !1208
  %i.gj = zext i1 %i.gg to i64
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.011.011.i, i64 %i.gj ; 4 uses
  %i.gl = zext i1 %i.gh to i64
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.06.012.i, i64 %i.gl ; 5 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.0.014.i, i64 4 ; 2 uses
  %.sroa.017.0.val.i = load i32, ptr %.sroa.017.09.i, align 4, !alias.scope !1205, !noundef !25 ; 2 uses
  %.sroa.015.0.val.i = load i32, ptr %.sroa.015.010.i, align 4, !alias.scope !1205, !noundef !25 ; 2 uses
  %i.go = icmp ult i32 %.sroa.017.0.val.i, %.sroa.015.0.val.i ; 2 uses
  %i.gp = xor i1 %i.go, true
  %i.gq = tail call i32 @llvm.umax.i32(i32 %.sroa.017.0.val.i, i32 %.sroa.015.0.val.i)
  store i32 %i.gq, ptr %.sroa.019.08.i, align 4, !noalias !1212
  %.neg.i.i = sext i1 %i.gp to i64
  %i.gr = getelementptr [4 x i8], ptr %.sroa.017.09.i, i64 %.neg.i.i ; 2 uses
  %.neg13.i.i = sext i1 %i.go to i64
  %i.gs = getelementptr [4 x i8], ptr %.sroa.015.010.i, i64 %.neg13.i.i ; 2 uses
  %i.gt = getelementptr inbounds i8, ptr %.sroa.019.08.i, i64 -4
  %exitcond.not.i = icmp eq i64 %i.gf, %i.d
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i23

bb.n:                                             ; preds = %._crit_edge.i
  %i.gu = icmp ult ptr %i.gm, %i.gb               ; 3 uses
  %.sroa.06.0..sroa.011.0.i = select i1 %i.gu, ptr %i.gm, ptr %i.gk
  %i.gv = load i32, ptr %.sroa.06.0..sroa.011.0.i, align 4, !alias.scope !1205
  store i32 %i.gv, ptr %i.gn, align 4, !noalias !1205
  %i.gw = zext i1 %i.gu to i64
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %i.gw
  %i.gy = xor i1 %i.gu, true
  %i.gz = zext i1 %i.gy to i64
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %i.gz
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.i
  %.sroa.011.1.i = phi ptr [ %i.gk, %._crit_edge.i ], [ %i.ha, %bb.n ]
  %.sroa.06.1.i = phi ptr [ %i.gm, %._crit_edge.i ], [ %i.gx, %bb.n ]
  %i.hb = icmp ne ptr %.sroa.06.1.i, %i.gb
  %i.hc = icmp ne ptr %.sroa.011.1.i, %i.gc
  %or.cond.i = select i1 %i.hb, i1 true, i1 %i.hc, !prof !1133
  br i1 %or.cond.i, label %bb.p, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB1g_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand.exit, !prof !1133

bb.p:                                             ; preds = %bb.o
  tail call void @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #37, !noalias !1205
  unreachable

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB1g_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand.exit: ; preds = %bb.o
  %i.hd = shl nuw nsw i64 %1, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %0, ptr nonnull align 4 %i.a, i64 %i.hd, i1 false)
  br label %.sink.split

.sink.split:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB1m_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand.exit, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB1g_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB8_SB1m_16sort_unstable_byNCNvMs0_B1o_NtB1o_17ProcMacrosBuilder6insert0E0EB1q_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 288230376151711744) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i = alloca [16 x i8], align 8          ; 4 uses
  %.sroa.6.i = alloca [7 x i8], align 1           ; 4 uses
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %1
  %.not4 = icmp samesign eq i64 %2, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB8_SB18_16sort_unstable_byNCNvMs0_B1a_NtB1a_17ProcMacrosBuilder6insert0E0EB1c_.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB8_SB18_16sort_unstable_byNCNvMs0_B1a_NtB1a_17ProcMacrosBuilder6insert0E0EB1c_.exit
  %.sroa.0.05 = phi ptr [ %i.aq, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB8_SB18_16sort_unstable_byNCNvMs0_B1a_NtB1a_17ProcMacrosBuilder6insert0E0EB1c_.exit ], [ %i.c, %.lr.ph.preheader ] ; 11 uses
  %i.d = getelementptr i8, ptr %.sroa.0.05, i64 16
  %.val11.i = load ptr, ptr %i.d, align 8, !nonnull !25, !noundef !25 ; 3 uses
  %i.e = getelementptr i8, ptr %.sroa.0.05, i64 24
  %.val12.i = load i8, ptr %i.e, align 8, !range !1121, !noundef !25 ; 3 uses
  %i.f = getelementptr i8, ptr %.sroa.0.05, i64 -16
  %.val13.i = load ptr, ptr %i.f, align 8, !nonnull !25, !noundef !25 ; 2 uses
  %i.g = getelementptr i8, ptr %.sroa.0.05, i64 -8
  %.val14.i = load i8, ptr %i.g, align 8, !range !1121, !noundef !25
  %i.h = ptrtoint ptr %.val11.i to i64
  %i.i = and i64 %i.h, 1
  %i.j = sub nsw i64 0, %i.i
  %i.k = getelementptr i8, ptr %.val11.i, i64 %i.j ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !25, !noundef !25 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !25 ; 4 uses
  %i.o = ptrtoint ptr %.val13.i to i64
  %i.p = and i64 %i.o, 1
  %i.q = sub nsw i64 0, %i.p
  %i.r = getelementptr i8, ptr %.val13.i, i64 %i.q ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !25, !noundef !25
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load i64, ptr %i.t, align 8, !noundef !25 ; 2 uses
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.u)
  %i.v = tail call i32 @memcmp(ptr nonnull %i.l, ptr nonnull %i.s, i64 %spec.store.select.i.i.i) ; 2 uses
  %i.w = sext i32 %i.v to i64
  %i.x = icmp eq i32 %i.v, 0
  %i.y = sub i64 %i.n, %i.u
  %spec.select.i.i.i = select i1 %i.x, i64 %i.y, i64 %i.w ; 2 uses
  %i.z = icmp eq i64 %spec.select.i.i.i, 0
  %4 = icmp samesign ult i8 %.val12.i, %.val14.i
  %5 = icmp slt i64 %spec.select.i.i.i, 0
  %spec.select.i.i = select i1 %i.z, i1 %4, i1 %5
  br i1 %spec.select.i.i, label %bb.d, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB8_SB18_16sort_unstable_byNCNvMs0_B1a_NtB1a_17ProcMacrosBuilder6insert0E0EB1c_.exit

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.05, i64 16, i1 false)
  %.sroa.614.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.614.0..sroa_idx.i, i64 7, i1 false)
  %.sroa.0.0.i8 = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -32 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.05, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i8, i64 32, i1 false)
  %i.aa = icmp eq ptr %.sroa.0.0.i8, %0
  br i1 %i.aa, label %._crit_edge13, label %.lr.ph12

bb.e:                                             ; preds = %.lr.ph12
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.0.0.i10, i64 -32 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i10, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i, i64 32, i1 false)
  %i.ab = icmp eq ptr %.sroa.0.0.i, %0
  br i1 %i.ab, label %._crit_edge13, label %.lr.ph12

.lr.ph12:                                         ; preds = %bb.d, %bb.e
  %.sroa.0.0.i10 = phi ptr [ %.sroa.0.0.i, %bb.e ], [ %.sroa.0.0.i8, %bb.d ] ; 5 uses
  %.sroa.5.0.i9 = phi ptr [ %.sroa.0.0.i10, %bb.e ], [ %.sroa.0.05, %bb.d ] ; 3 uses
  %i.ac = getelementptr i8, ptr %.sroa.5.0.i9, i64 -48
  %.val9.i = load ptr, ptr %i.ac, align 8, !nonnull !25, !noundef !25 ; 2 uses
  %i.ad = getelementptr i8, ptr %.sroa.5.0.i9, i64 -40
  %.val10.i = load i8, ptr %i.ad, align 8, !range !1121, !noundef !25
  %i.ae = ptrtoint ptr %.val9.i to i64
  %i.af = and i64 %i.ae, 1
  %i.ag = sub nsw i64 0, %i.af
  %i.ah = getelementptr i8, ptr %.val9.i, i64 %i.ag ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ah) ]
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !25, !noundef !25
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !25 ; 2 uses
  %spec.store.select.i.i15.i = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.ak)
  %i.al = tail call i32 @memcmp(ptr nonnull %i.l, ptr nonnull %i.ai, i64 %spec.store.select.i.i15.i) ; 2 uses
  %i.am = sext i32 %i.al to i64
  %i.an = icmp eq i32 %i.al, 0
  %i.ao = sub i64 %i.n, %i.ak
  %spec.select.i.i16.i = select i1 %i.an, i64 %i.ao, i64 %i.am ; 2 uses
  %i.ap = icmp eq i64 %spec.select.i.i16.i, 0
  %6 = icmp samesign ult i8 %.val12.i, %.val10.i
  %7 = icmp slt i64 %spec.select.i.i16.i, 0
  %spec.select.i17.i = select i1 %i.ap, i1 %6, i1 %7
  br i1 %spec.select.i17.i, label %bb.e, label %._crit_edge13

._crit_edge13:                                    ; preds = %bb.e, %.lr.ph12, %bb.d
  %.sroa.5.0.i.lcssa = phi ptr [ %.sroa.0.05, %bb.d ], [ %.sroa.0.0.i10, %bb.e ], [ %.sroa.5.0.i9, %.lr.ph12 ] ; 3 uses
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.0.0.i10, %.lr.ph12 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.lcssa, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, i64 16, i1 false), !noalias !1216
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa, i64 -16
  store ptr %.val11.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !1216
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa, i64 -8
  store i8 %.val12.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !1216
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa, i64 -7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.i, i64 7, i1 false), !noalias !1216
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB8_SB18_16sort_unstable_byNCNvMs0_B1a_NtB1a_17ProcMacrosBuilder6insert0E0EB1c_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB8_SB18_16sort_unstable_byNCNvMs0_B1a_NtB1a_17ProcMacrosBuilder6insert0E0EB1c_.exit: ; preds = %.lr.ph, %._crit_edge13
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.aq, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB1m_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 4 captures(address) %0, i64 noundef range(i64 0, 2305843009213693952) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readnone captures(none) %3) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1
  %.not4 = icmp samesign eq i64 %2, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB18_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB18_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand.exit
  %.sroa.0.05 = phi ptr [ %i.j, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB18_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand.exit ], [ %i.c, %.lr.ph.preheader ] ; 4 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -4 ; 3 uses
  %.val9.i = load i32, ptr %.sroa.0.05, align 4, !noundef !25 ; 3 uses
  %.val10.i = load i32, ptr %i.d, align 4, !noundef !25 ; 2 uses
  %i.e = icmp ult i32 %.val9.i, %.val10.i
  br i1 %i.e, label %.preheader.preheader, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB18_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand.exit

.preheader.preheader:                             ; preds = %.lr.ph
  store i32 %.val10.i, ptr %.sroa.0.05, align 4
  %i.f = icmp eq ptr %i.d, %0
  br i1 %i.f, label %._crit_edge10, label %.lr.ph9

.preheader:                                       ; preds = %.lr.ph9
  store i32 %.val8.i, ptr %.sroa.0.0.i8, align 4
  %i.g = icmp eq ptr %i.h, %0
  br i1 %i.g, label %._crit_edge10, label %.lr.ph9

.lr.ph9:                                          ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.i8 = phi ptr [ %i.h, %.preheader ], [ %i.d, %.preheader.preheader ] ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %.sroa.0.0.i8, i64 -4 ; 3 uses
  %.val8.i = load i32, ptr %i.h, align 4, !noundef !25 ; 2 uses
  %i.i = icmp ult i32 %.val9.i, %.val8.i
  br i1 %i.i, label %.preheader, label %._crit_edge10

._crit_edge10:                                    ; preds = %.preheader, %.lr.ph9, %.preheader.preheader
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %.preheader.preheader ], [ %0, %.preheader ], [ %.sroa.0.0.i8, %.lr.ph9 ]
  store i32 %.val9.i, ptr %.sroa.0.0.i.lcssa, align 4, !noalias !1221
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB18_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort11insert_tailNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB18_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand.exit: ; preds = %.lr.ph, %._crit_edge10
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.j, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort8unstable8heapsort8heapsortNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB8_SB15_16sort_unstable_byNCNvMs0_B17_NtB17_17ProcMacrosBuilder6insert0E0EB19_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = lshr i64 %1, 1
  %i.b = add nuw nsw i64 %i.a, %1                 ; 2 uses
  %.not24 = icmp eq i64 %i.b, 0
  br i1 %.not24, label %._crit_edge, label %.lr.ph26

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort8unstable8heapsort9sift_downNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB8_SB16_16sort_unstable_byNCNvMs0_B18_NtB18_17ProcMacrosBuilder6insert0E0EB1a_.exit, %bb.a
  ret void

.lr.ph26:                                         ; preds = %bb.a, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort8unstable8heapsort9sift_downNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB8_SB16_16sort_unstable_byNCNvMs0_B18_NtB18_17ProcMacrosBuilder6insert0E0EB1a_.exit
  %.sroa.2.025 = phi i64 [ %i.c, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort8unstable8heapsort9sift_downNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB8_SB16_16sort_unstable_byNCNvMs0_B18_NtB18_17ProcMacrosBuilder6insert0E0EB1a_.exit ], [ %i.b, %bb.a ]
  %i.c = add nsw i64 %.sroa.2.025, -1             ; 6 uses
  %.not9 = icmp ult i64 %i.c, %1
  br i1 %.not9, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph26
  %i.d = sub nuw nsw i64 %i.c, %1
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph26
  tail call void @_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacro14swap_uncheckedBy_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, i64 noundef 0, i64 noundef %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.04.0 = phi i64 [ %i.d, %bb.b ], [ 0, %bb.c ] ; 3 uses
  %..i = tail call noundef range(i64 0, 2305843009213693952) i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %1, i64 %i.c) ; 4 uses
  %i.e = icmp ule i64 %.sroa.04.0, %..i
  tail call void @llvm.assume(i1 %i.e)
  %i.f = shl nuw nsw i64 %.sroa.04.0, 1           ; 2 uses
  %i.g = or disjoint i64 %i.f, 1                  ; 2 uses
  %.not.i21 = icmp samesign ult i64 %i.g, %..i
  br i1 %.not.i21, label %.lr.ph, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort8unstable8heapsort9sift_downNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB8_SB16_16sort_unstable_byNCNvMs0_B18_NtB18_17ProcMacrosBuilder6insert0E0EB1a_.exit

.lr.ph:                                           ; preds = %bb.d, %bb.g
  %i.h = phi i64 [ %i.bm, %bb.g ], [ %i.g, %bb.d ] ; 3 uses
  %i.i = phi i64 [ %i.bl, %bb.g ], [ %i.f, %bb.d ]
  %.sroa.0.0.i22 = phi i64 [ %.sroa.04.0.i, %bb.g ], [ %.sroa.04.0, %bb.d ]
  %i.j = add nuw nsw i64 %i.i, 2                  ; 2 uses
  %i.k = icmp samesign ult i64 %i.j, %..i
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.h ; 2 uses
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.j ; 2 uses
  %i.n = getelementptr i8, ptr %i.l, i64 16
  %.val = load ptr, ptr %i.n, align 8, !nonnull !25, !noundef !25 ; 2 uses
  %i.o = getelementptr i8, ptr %i.l, i64 24
  %.val11 = load i8, ptr %i.o, align 8, !range !1121, !noundef !25
  %i.p = getelementptr i8, ptr %i.m, i64 16
  %.val12 = load ptr, ptr %i.p, align 8, !nonnull !25, !noundef !25 ; 2 uses
  %i.q = getelementptr i8, ptr %i.m, i64 24
  %.val13 = load i8, ptr %i.q, align 8, !range !1121, !noundef !25
  %i.r = ptrtoint ptr %.val to i64
  %i.s = and i64 %i.r, 1
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr i8, ptr %.val, i64 %i.t    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !25, !noundef !25
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load i64, ptr %i.w, align 8, !noundef !25 ; 2 uses
  %i.y = ptrtoint ptr %.val12 to i64
  %i.z = and i64 %i.y, 1
  %i.aa = sub nsw i64 0, %i.z
  %i.ab = getelementptr i8, ptr %.val12, i64 %i.aa ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ab) ]
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !25, !noundef !25
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !25 ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.x, i64 %i.ae)
  %i.af = tail call i32 @memcmp(ptr nonnull %i.v, ptr nonnull %i.ac, i64 %spec.store.select.i.i) ; 2 uses
  %i.ag = sext i32 %i.af to i64
  %i.ah = icmp eq i32 %i.af, 0
  %i.ai = sub i64 %i.x, %i.ae
  %spec.select.i.i = select i1 %i.ah, i64 %i.ai, i64 %i.ag ; 2 uses
  %i.aj = icmp eq i64 %spec.select.i.i, 0
  %3 = icmp samesign ult i8 %.val11, %.val13
  %4 = icmp slt i64 %spec.select.i.i, 0
  %spec.select.i = select i1 %i.aj, i1 %3, i1 %4
  %i.ak = zext i1 %spec.select.i to i64
  %i.al = add nuw nsw i64 %i.h, %i.ak
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %.sroa.04.0.i = phi i64 [ %i.al, %bb.e ], [ %i.h, %.lr.ph ] ; 3 uses
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.0.0.i22 ; 3 uses
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.04.0.i ; 3 uses
  %i.ao = getelementptr i8, ptr %i.am, i64 16
  %.val14 = load ptr, ptr %i.ao, align 8, !nonnull !25, !noundef !25 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.am, i64 24
  %.val15 = load i8, ptr %i.ap, align 8, !range !1121, !noundef !25
  %i.aq = getelementptr i8, ptr %i.an, i64 16
  %.val16 = load ptr, ptr %i.aq, align 8, !nonnull !25, !noundef !25 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.an, i64 24
  %.val17 = load i8, ptr %i.ar, align 8, !range !1121, !noundef !25
  %i.as = ptrtoint ptr %.val14 to i64
  %i.at = and i64 %i.as, 1
  %i.au = sub nsw i64 0, %i.at
  %i.av = getelementptr i8, ptr %.val14, i64 %i.au ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.av) ]
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !25, !noundef !25
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !noundef !25 ; 2 uses
  %i.az = ptrtoint ptr %.val16 to i64
  %i.ba = and i64 %i.az, 1
  %i.bb = sub nsw i64 0, %i.ba
  %i.bc = getelementptr i8, ptr %.val16, i64 %i.bb ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bc) ]
  %i.bd = load ptr, ptr %i.bc, align 8, !nonnull !25, !noundef !25
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !noundef !25 ; 2 uses
  %spec.store.select.i.i18 = tail call i64 @llvm.umin.i64(i64 %i.ay, i64 %i.bf)
  %i.bg = tail call i32 @memcmp(ptr nonnull %i.aw, ptr nonnull %i.bd, i64 %spec.store.select.i.i18) ; 2 uses
  %i.bh = sext i32 %i.bg to i64
  %i.bi = icmp eq i32 %i.bg, 0
  %i.bj = sub i64 %i.ay, %i.bf
  %spec.select.i.i19 = select i1 %i.bi, i64 %i.bj, i64 %i.bh ; 2 uses
  %i.bk = icmp eq i64 %spec.select.i.i19, 0
  %5 = icmp samesign ult i8 %.val15, %.val17
  %6 = icmp slt i64 %spec.select.i.i19, 0
  %spec.select.i20 = select i1 %i.bk, i1 %5, i1 %6
  br i1 %spec.select.i20, label %bb.g, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort8unstable8heapsort9sift_downNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB8_SB16_16sort_unstable_byNCNvMs0_B18_NtB18_17ProcMacrosBuilder6insert0E0EB1a_.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_RINvNvNtCshzWfHUSfYae_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs33K2ylI4knu_10hir_expand(ptr noundef nonnull %i.am, ptr noundef nonnull %i.an, i64 noundef 4)
  %i.bl = shl nuw nsw i64 %.sroa.04.0.i, 1        ; 2 uses
  %i.bm = or disjoint i64 %i.bl, 1                ; 2 uses
  %.not.i = icmp samesign ult i64 %i.bm, %..i
  br i1 %.not.i, label %.lr.ph, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort8unstable8heapsort9sift_downNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB8_SB16_16sort_unstable_byNCNvMs0_B18_NtB18_17ProcMacrosBuilder6insert0E0EB1a_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort8unstable8heapsort9sift_downNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB8_SB16_16sort_unstable_byNCNvMs0_B18_NtB18_17ProcMacrosBuilder6insert0E0EB1a_.exit: ; preds = %bb.f, %bb.g, %bb.d
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph26
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort8unstable8heapsort8heapsortNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB15_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = lshr i64 %1, 1
  %i.b = add nuw nsw i64 %i.a, %1                 ; 2 uses
  %.not17 = icmp eq i64 %i.b, 0
  br i1 %.not17, label %._crit_edge, label %.lr.ph19

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort8unstable8heapsort9sift_downNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB16_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand.exit, %bb.a
  ret void

.lr.ph19:                                         ; preds = %bb.a, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort8unstable8heapsort9sift_downNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB16_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand.exit
  %.sroa.2.018 = phi i64 [ %i.c, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort8unstable8heapsort9sift_downNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB16_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand.exit ], [ %i.b, %bb.a ]
  %i.c = add nsw i64 %.sroa.2.018, -1             ; 6 uses
  %.not9 = icmp ult i64 %i.c, %1
  br i1 %.not9, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph19
  %i.d = sub nuw nsw i64 %i.c, %1
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph19
  tail call void @_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndex14swap_uncheckedCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef %1, i64 noundef 0, i64 noundef %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.04.0 = phi i64 [ %i.d, %bb.b ], [ 0, %bb.c ] ; 3 uses
  %..i = tail call noundef range(i64 0, 2305843009213693952) i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %1, i64 %i.c) ; 4 uses
  %i.e = icmp ule i64 %.sroa.04.0, %..i
  tail call void @llvm.assume(i1 %i.e)
  %i.f = shl nuw nsw i64 %.sroa.04.0, 1           ; 2 uses
  %i.g = or disjoint i64 %i.f, 1                  ; 2 uses
  %.not.i14 = icmp samesign ult i64 %i.g, %..i
  br i1 %.not.i14, label %.lr.ph, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort8unstable8heapsort9sift_downNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB16_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand.exit

.lr.ph:                                           ; preds = %bb.d, %bb.g
  %i.h = phi i64 [ %i.u, %bb.g ], [ %i.g, %bb.d ] ; 3 uses
  %i.i = phi i64 [ %i.t, %bb.g ], [ %i.f, %bb.d ]
  %.sroa.0.0.i15 = phi i64 [ %.sroa.04.0.i, %bb.g ], [ %.sroa.04.0, %bb.d ]
  %i.j = add nuw nsw i64 %i.i, 2                  ; 2 uses
  %i.k = icmp samesign ult i64 %i.j, %..i
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.h
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.j
  %.val = load i32, ptr %i.l, align 4, !noundef !25
  %.val11 = load i32, ptr %i.m, align 4, !noundef !25
  %i.n = icmp ult i32 %.val, %.val11
  %i.o = zext i1 %i.n to i64
  %i.p = add nuw nsw i64 %i.h, %i.o
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %.sroa.04.0.i = phi i64 [ %i.p, %bb.e ], [ %i.h, %.lr.ph ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.0.0.i15 ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.04.0.i ; 2 uses
  %.val12 = load i32, ptr %i.q, align 4, !noundef !25 ; 2 uses
  %.val13 = load i32, ptr %i.r, align 4, !noundef !25 ; 2 uses
  %i.s = icmp ult i32 %.val12, %.val13
  br i1 %i.s, label %bb.g, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort8unstable8heapsort9sift_downNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB16_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand.exit

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1229)
  store i32 %.val13, ptr %i.q, align 4, !alias.scope !1226, !noalias !1229
  store i32 %.val12, ptr %i.r, align 4, !alias.scope !1229, !noalias !1226
  %i.t = shl nuw nsw i64 %.sroa.04.0.i, 1         ; 2 uses
  %i.u = or disjoint i64 %i.t, 1                  ; 2 uses
  %.not.i = icmp samesign ult i64 %i.u, %..i
  br i1 %.not.i, label %.lr.ph, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort8unstable8heapsort9sift_downNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB16_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort8unstable8heapsort9sift_downNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB16_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand.exit: ; preds = %bb.f, %bb.g, %bb.d
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph19
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RINvNvXs6_CsbdtVtHYmo6x_8thin_vecINtB8_7ThinVecpENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop18drop_non_singletonNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdEB1R_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !alias.scope !1231, !nonnull !25, !noundef !25 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !25 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.d, ptr %i.f, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 2, ptr %i.g, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge.i = phi i8 [ 0, %bb.b ], [ 1, %bb.c ]
  store i8 %storemerge.i, ptr %i.a, align 8
  %i.h = call noundef i64 @_RNvXs_CsbdtVtHYmo6x_8thin_vecINtNtCshzWfHUSfYae_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.a) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = add i64 %i.h, -2305843009213693952
  %i.j = icmp ult i64 %i.i, -4611686018427387904
  br i1 %i.j, label %bb.f, label %bb.e, !prof !4

bb.e:                                             ; preds = %bb.d
  %i.k = shl nsw i64 %i.h, 2
  %i.l = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.k, i64 16) ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 1
  br i1 %i.m, label %bb.g, label %_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdEBF_.exit, !prof !4

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #31
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #31
  unreachable

_RINvCsbdtVtHYmo6x_8thin_vec10alloc_sizeNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdEBF_.exit: ; preds = %bb.e
  %i.n = extractvalue { i64, i1 } %i.l, 0
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.n, i64 noundef 8) #36
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RINvNvXs6_CsbdtVtHYmo6x_8thin_vecINtB8_7ThinVecpENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop18drop_non_singletonNtNtCs4dcH4YgJDq_2tt7storage10TopSubtreeECs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !alias.scope !1234, !nonnull !25, !noundef !25 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.b, align 8, !noundef !25 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCs4dcH4YgJDq_2tt7storage10TopSubtreeECs33K2ylI4knu_10hir_expand.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCs4dcH4YgJDq_2tt7storage10TopSubtreeECs33K2ylI4knu_10hir_expand.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i2 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [40 x i8], ptr %i.c, i64 %.sroa.0.0.i2
  %i.h = add nuw nsw i64 %.sroa.0.0.i2, 1         ; 4 uses
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt7storage10TopSubtreeECs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef readonly align 8 dereferenceable(40) %i.g)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph4
  %i.i = add i64 %.sroa.0.1.i3, 1                 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %._crit_edge, label %.lr.ph4

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %._crit_edge, label %.lr.ph4

.lr.ph4:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i3 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [40 x i8], ptr %i.c, i64 %.sroa.0.1.i3
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt7storage10TopSubtreeECs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef readonly align 8 dereferenceable(40) %i.m) #34
          to label %bb.c unwind label %bb.e

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %.lr.ph4
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35, !noalias !1237
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCs4dcH4YgJDq_2tt7storage10TopSubtreeECs33K2ylI4knu_10hir_expand.exit: ; preds = %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noundef !25 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCs4dcH4YgJDq_2tt7storage10TopSubtreeECs33K2ylI4knu_10hir_expand.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.p, ptr %i.r, align 8
  br label %bb.h

end_hunk_1
