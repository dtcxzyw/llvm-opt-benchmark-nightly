Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_db-6375deef0079f440.ide_db.4a77f52129cf6f1d-cgu.13?download=true
inline.NumInlined: 2178
inline.NumDeleted: 786
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs42xZ1oUXfIG_8smol_str7SmolStrEECs6oosyzwIepl_6ide_db:bb.a
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtCs42xZ1oUXfIG_8smol_str7SmolStrEECs6oosyzwIepl_6ide_db.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs42xZ1oUXfIG_8smol_str7SmolStrENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtCs42xZ1oUXfIG_8smol_str7SmolStrEECs6oosyzwIepl_6ide_db.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir5ParamEECs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCs8Xq8PKFYOms_3hir5ParamENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs8Xq8PKFYOms_3hir5ParamENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtCs8Xq8PKFYOms_3hir5ParamEECs6oosyzwIepl_6ide_db.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs8Xq8PKFYOms_3hir5ParamENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtCs8Xq8PKFYOms_3hir5ParamEECs6oosyzwIepl_6ide_db.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentEECs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentEECs6oosyzwIepl_6ide_db.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentEECs6oosyzwIepl_6ide_db.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrEECs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrEECs6oosyzwIepl_6ide_db.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrEECs6oosyzwIepl_6ide_db.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeEECs6oosyzwIepl_6ide_db.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEmEEECs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEmEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEmEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecTINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEmEEECs6oosyzwIepl_6ide_db.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEmEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecTINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEmEEECs6oosyzwIepl_6ide_db.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs6oosyzwIepl_6ide_db(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !align !15, !noundef !4 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !4 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  invoke void %i.c(ptr noundef nonnull %i.d)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !9, !invariant.load !4 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RNvXs8_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxDNtNtCshzWfHUSfYae_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val2 = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !16, !invariant.load !4
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef range(i64 1, -9223372036854775808) %i.f, i64 noundef range(i64 1, 536870913) %i.i) #26
  br label %_RNvXs8_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxDNtNtCshzWfHUSfYae_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db.exit

_RNvXs8_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxDNtNtCshzWfHUSfYae_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !9, !invariant.load !4 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNvXs8_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxDNtNtCshzWfHUSfYae_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !16, !invariant.load !4
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef range(i64 1, -9223372036854775808) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #26
  br label %_RNvXs8_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxDNtNtCshzWfHUSfYae_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db.exit4

_RNvXs8_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxDNtNtCshzWfHUSfYae_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.j
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCscFGNKo4Sl5v_9itertools10next_array12ArrayBuilderINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefEKj2_EECs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !173)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !174, !noundef !4 ; 6 uses
  %i.c = icmp ult i64 %i.b, 3
  br i1 %i.c, label %_RNvXs_NtCscFGNKo4Sl5v_9itertools10next_arrayINtB4_12ArrayBuilderINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefEKj2_EINtNtB15_7convert5AsMutSB10_E6as_mutCs6oosyzwIepl_6ide_db.exit.i, label %bb.b, !prof !175

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.b, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #37, !noalias !174
  unreachable

_RNvXs_NtCscFGNKo4Sl5v_9itertools10next_arrayINtB4_12ArrayBuilderINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefEKj2_EINtNtB15_7convert5AsMutSB10_E6as_mutCs6oosyzwIepl_6ide_db.exit.i: ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RNvXs0_NtCscFGNKo4Sl5v_9itertools10next_arrayINtB5_12ArrayBuilderINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefEKj2_ENtNtNtB16_3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvXs_NtCscFGNKo4Sl5v_9itertools10next_arrayINtB4_12ArrayBuilderINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefEKj2_EINtNtB15_7convert5AsMutSB10_E6as_mutCs6oosyzwIepl_6ide_db.exit.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefEECs6oosyzwIepl_6ide_db.exit.i.i
  %.sroa.0.010.i.i = phi i64 [ %i.f, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefEECs6oosyzwIepl_6ide_db.exit.i.i ], [ 0, %_RNvXs_NtCscFGNKo4Sl5v_9itertools10next_arrayINtB4_12ArrayBuilderINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefEKj2_EINtNtB15_7convert5AsMutSB10_E6as_mutCs6oosyzwIepl_6ide_db.exit.i ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.010.i.i
  %i.f = add nuw nsw i64 %.sroa.0.010.i.i, 1      ; 4 uses
  %.val7.i.i = load ptr, ptr %i.e, align 8, !alias.scope !177, !noundef !4 ; 3 uses
  %i.g = icmp eq ptr %.val7.i.i, null
  br i1 %i.g, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefEECs6oosyzwIepl_6ide_db.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.val7.i.i, i64 48 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !noalias !177, !noundef !4
  %i.j = add i32 %i.i, -1                         ; 2 uses
  store i32 %i.j, ptr %i.h, align 4, !noalias !177
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefEECs6oosyzwIepl_6ide_db.exit.i.i

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val7.i.i) #34
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefEECs6oosyzwIepl_6ide_db.exit.i.i unwind label %bb.e, !noalias !177

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefEECs6oosyzwIepl_6ide_db.exit.i.i: ; preds = %bb.d, %bb.c, %.lr.ph.i.i
  %i.l = icmp eq i64 %i.f, %i.b
  br i1 %i.l, label %_RNvXs0_NtCscFGNKo4Sl5v_9itertools10next_arrayINtB5_12ArrayBuilderINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefEKj2_ENtNtNtB16_3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db.exit, label %.lr.ph.i.i

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = icmp eq i64 %i.f, %i.b
  br i1 %i.n, label %._crit_edge14.i.i, label %.lr.ph13.i.i

.lr.ph13.i.i:                                     ; preds = %bb.e, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefEECs6oosyzwIepl_6ide_db.exit9.i.i
  %.sroa.0.111.i.i = phi i64 [ %1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefEECs6oosyzwIepl_6ide_db.exit9.i.i ], [ %i.f, %bb.e ] ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.111.i.i
  %1 = add i64 %.sroa.0.111.i.i, 1                ; 2 uses
  %.val.i.i = load ptr, ptr %i.o, align 8, !alias.scope !177, !noundef !4 ; 3 uses
  %i.p = icmp eq ptr %.val.i.i, null
  br i1 %i.p, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefEECs6oosyzwIepl_6ide_db.exit9.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph13.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 48 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !noalias !177, !noundef !4
  %i.s = add i32 %i.r, -1                         ; 2 uses
  store i32 %i.s, ptr %i.q, align 4, !noalias !177
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.g, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefEECs6oosyzwIepl_6ide_db.exit9.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val.i.i) #34
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefEECs6oosyzwIepl_6ide_db.exit9.i.i unwind label %bb.h, !noalias !177

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefEECs6oosyzwIepl_6ide_db.exit9.i.i: ; preds = %bb.g, %bb.f, %.lr.ph13.i.i
  %2 = icmp eq i64 %1, %i.b
  br i1 %2, label %._crit_edge14.i.i, label %.lr.ph13.i.i

._crit_edge14.i.i:                                ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefEECs6oosyzwIepl_6ide_db.exit9.i.i, %bb.e
  resume { ptr, i32 } %i.m

bb.h:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #36, !noalias !177
  unreachable

_RNvXs0_NtCscFGNKo4Sl5v_9itertools10next_arrayINtB5_12ArrayBuilderINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefEKj2_ENtNtNtB16_3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefEECs6oosyzwIepl_6ide_db.exit.i.i, %_RNvXs_NtCscFGNKo4Sl5v_9itertools10next_arrayINtB4_12ArrayBuilderINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefEKj2_EINtNtB15_7convert5AsMutSB10_E6as_mutCs6oosyzwIepl_6ide_db.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCscFGNKo4Sl5v_9itertools11zip_longest10ZipLongestINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1w_9generated5nodes7UseTreeEB1t_EECs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val4 = load i64, ptr %0, align 8, !range !11, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val5 = load ptr, ptr %i.a, align 8            ; 3 uses
  %i.b = icmp eq i64 %.val4, 0
  %i.c = icmp eq ptr %.val5, null
  %or.cond.i.i = select i1 %i.b, i1 true, i1 %i.c
  br i1 %or.cond.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1e_9generated5nodes7UseTreeEEECs6oosyzwIepl_6ide_db.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val5, i64 48 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !noundef !4
  %i.f = add i32 %i.e, -1                         ; 2 uses
  store i32 %i.f, ptr %i.d, align 4
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1e_9generated5nodes7UseTreeEEECs6oosyzwIepl_6ide_db.exit

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val5) #34
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1e_9generated5nodes7UseTreeEEECs6oosyzwIepl_6ide_db.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2 = load i64, ptr %i.i, align 8, !range !11, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val3 = load ptr, ptr %i.j, align 8            ; 3 uses
  %i.k = icmp eq i64 %.val2, 0
  %i.l = icmp eq ptr %.val3, null
  %or.cond.i.i6 = select i1 %i.k, i1 true, i1 %i.l
  br i1 %or.cond.i.i6, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1e_9generated5nodes7UseTreeEEECs6oosyzwIepl_6ide_db.exit8, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.val3, i64 48 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !noundef !4
  %i.o = add i32 %i.n, -1                         ; 2 uses
  store i32 %i.o, ptr %i.m, align 4
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.f, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1e_9generated5nodes7UseTreeEEECs6oosyzwIepl_6ide_db.exit8

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val3) #34
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1e_9generated5nodes7UseTreeEEECs6oosyzwIepl_6ide_db.exit8 unwind label %bb.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1e_9generated5nodes7UseTreeEEECs6oosyzwIepl_6ide_db.exit: ; preds = %bb.b, %bb.a, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load i64, ptr %i.q, align 8, !range !11, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.r, align 8            ; 3 uses
  %i.s = icmp eq i64 %.val, 0
  %i.t = icmp eq ptr %.val1, null
  %or.cond.i.i9 = select i1 %i.s, i1 true, i1 %i.t
  br i1 %or.cond.i.i9, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1e_9generated5nodes7UseTreeEEECs6oosyzwIepl_6ide_db.exit10, label %bb.g

bb.g:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1e_9generated5nodes7UseTreeEEECs6oosyzwIepl_6ide_db.exit
  %i.u = getelementptr inbounds nuw i8, ptr %.val1, i64 48 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !noundef !4
  %i.w = add i32 %i.v, -1                         ; 2 uses
  store i32 %i.w, ptr %i.u, align 4
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.h, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1e_9generated5nodes7UseTreeEEECs6oosyzwIepl_6ide_db.exit10

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val1) #34
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1e_9generated5nodes7UseTreeEEECs6oosyzwIepl_6ide_db.exit10

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1e_9generated5nodes7UseTreeEEECs6oosyzwIepl_6ide_db.exit10: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1e_9generated5nodes7UseTreeEEECs6oosyzwIepl_6ide_db.exit, %bb.g, %bb.h
  ret void

bb.i:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1e_9generated5nodes7UseTreeEEECs6oosyzwIepl_6ide_db.exit8: ; preds = %bb.e, %bb.d, %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCscFGNKo4Sl5v_9itertools11zip_longest10ZipLongestINtNtNtNtB4_4iter7sources10successors10SuccessorsNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentNCNvMsf_NtB2m_8node_extNtB2i_4Path8segments0EB1t_EECs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val4 = load i64, ptr %0, align 8, !range !11, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val5 = load ptr, ptr %i.a, align 8            ; 3 uses
  %i.b = icmp eq i64 %.val4, 0
  %i.c = icmp eq ptr %.val5, null
  %or.cond.i.i = select i1 %i.b, i1 true, i1 %i.c
  br i1 %or.cond.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtNtBI_7sources10successors10SuccessorsNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentNCNvMsf_NtB1X_8node_extNtB1T_4Path8segments0EEECs6oosyzwIepl_6ide_db.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val5, i64 48 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !noundef !4
  %i.f = add i32 %i.e, -1                         ; 2 uses
  store i32 %i.f, ptr %i.d, align 4
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtNtBI_7sources10successors10SuccessorsNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentNCNvMsf_NtB1X_8node_extNtB1T_4Path8segments0EEECs6oosyzwIepl_6ide_db.exit

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val5) #34
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtNtBI_7sources10successors10SuccessorsNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentNCNvMsf_NtB1X_8node_extNtB1T_4Path8segments0EEECs6oosyzwIepl_6ide_db.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2 = load i64, ptr %i.i, align 8, !range !11, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3 = load ptr, ptr %i.j, align 8            ; 3 uses
  %i.k = icmp eq i64 %.val2, 0
  %i.l = icmp eq ptr %.val3, null
  %or.cond.i.i6 = select i1 %i.k, i1 true, i1 %i.l
  br i1 %or.cond.i.i6, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtNtBI_7sources10successors10SuccessorsNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentNCNvMsf_NtB1X_8node_extNtB1T_4Path8segments0EEECs6oosyzwIepl_6ide_db.exit8, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.val3, i64 48 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !noundef !4
  %i.o = add i32 %i.n, -1                         ; 2 uses
  store i32 %i.o, ptr %i.m, align 4
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.f, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtNtBI_7sources10successors10SuccessorsNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentNCNvMsf_NtB1X_8node_extNtB1T_4Path8segments0EEECs6oosyzwIepl_6ide_db.exit8

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val3) #34
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtNtBI_7sources10successors10SuccessorsNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentNCNvMsf_NtB1X_8node_extNtB1T_4Path8segments0EEECs6oosyzwIepl_6ide_db.exit8 unwind label %bb.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtNtBI_7sources10successors10SuccessorsNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentNCNvMsf_NtB1X_8node_extNtB1T_4Path8segments0EEECs6oosyzwIepl_6ide_db.exit: ; preds = %bb.b, %bb.a, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load i64, ptr %i.q, align 8, !range !11, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1 = load ptr, ptr %i.r, align 8            ; 3 uses
  %i.s = icmp eq i64 %.val, 0
  %i.t = icmp eq ptr %.val1, null
  %or.cond.i.i9 = select i1 %i.s, i1 true, i1 %i.t
  br i1 %or.cond.i.i9, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtNtBI_7sources10successors10SuccessorsNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentNCNvMsf_NtB1X_8node_extNtB1T_4Path8segments0EEECs6oosyzwIepl_6ide_db.exit10, label %bb.g

bb.g:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtNtBI_7sources10successors10SuccessorsNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentNCNvMsf_NtB1X_8node_extNtB1T_4Path8segments0EEECs6oosyzwIepl_6ide_db.exit
  %i.u = getelementptr inbounds nuw i8, ptr %.val1, i64 48 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !noundef !4
  %i.w = add i32 %i.v, -1                         ; 2 uses
  store i32 %i.w, ptr %i.u, align 4
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.h, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtNtBI_7sources10successors10SuccessorsNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentNCNvMsf_NtB1X_8node_extNtB1T_4Path8segments0EEECs6oosyzwIepl_6ide_db.exit10

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val1) #34
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtNtBI_7sources10successors10SuccessorsNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentNCNvMsf_NtB1X_8node_extNtB1T_4Path8segments0EEECs6oosyzwIepl_6ide_db.exit10

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtNtBI_7sources10successors10SuccessorsNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentNCNvMsf_NtB1X_8node_extNtB1T_4Path8segments0EEECs6oosyzwIepl_6ide_db.exit10: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtNtBI_7sources10successors10SuccessorsNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentNCNvMsf_NtB1X_8node_extNtB1T_4Path8segments0EEECs6oosyzwIepl_6ide_db.exit, %bb.g, %bb.h
  ret void

bb.i:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtNtBI_7sources10successors10SuccessorsNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentNCNvMsf_NtB1X_8node_extNtB1T_4Path8segments0EEECs6oosyzwIepl_6ide_db.exit8: ; preds = %bb.e, %bb.d, %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops5range14RangeInclusiveINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1g_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB25_11SyntaxTokenB2r_EEEECs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val5 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val5, i64 48 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !noundef !4
  %i.d = add i32 %i.c, -1                         ; 2 uses
  store i32 %i.d, ptr %i.b, align 4
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs6oosyzwIepl_6ide_db.exit.sink.split.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECs6oosyzwIepl_6ide_db.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs6oosyzwIepl_6ide_db.exit.sink.split.i: ; preds = %bb.a
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val5) #34
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECs6oosyzwIepl_6ide_db.exit unwind label %bb.b

bb.b:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs6oosyzwIepl_6ide_db.exit.sink.split.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val3 = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val3, i64 48 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !noundef !4
  %i.j = add i32 %i.i, -1                         ; 2 uses
end_hunk_0
