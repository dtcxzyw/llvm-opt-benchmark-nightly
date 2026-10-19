Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/just.just.5035f528a4e5d8da-cgu.0?download=true
inline.NumInlined: 1390
inline.NumDeleted: 637
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateEECs6SXwsBSuFuw_4just:bb.a
  %i.o = atomicrmw sub ptr %i.n, i64 1 release, align 8, !noalias !279
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.d, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateECs6SXwsBSuFuw_4just.exit8.i.i

bb.d:                                             ; preds = %.lr.ph12.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcShE9drop_slowCsk7w47U2izUG_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l) #31
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateECs6SXwsBSuFuw_4just.exit8.i.i unwind label %bb.e

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateECs6SXwsBSuFuw_4just.exit8.i.i: ; preds = %bb.d, %.lr.ph12.i.i
  %i.q = icmp eq i64 %i.m, %.val1
  br i1 %i.q, label %.body, label %.lr.ph12.i.i

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

.body:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateECs6SXwsBSuFuw_4just.exit8.i.i, %bb.c
  %.val4 = load i64, ptr %0, align 8, !range !12, !noundef !13 ; 2 uses
  %i.s = icmp eq i64 %.val4, 0
  br i1 %i.s, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateEECs6SXwsBSuFuw_4just.exit, label %bb.f

bb.f:                                             ; preds = %.body
  %i.t = shl nuw i64 %.val4, 4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 8) #26
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateEECs6SXwsBSuFuw_4just.exit

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateECs6SXwsBSuFuw_4just.exit.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !12, !noundef !13 ; 2 uses
  %i.u = icmp eq i64 %.val2, 0
  br i1 %i.u, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateEECs6SXwsBSuFuw_4just.exit6, label %bb.g

bb.g:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit
  %i.v = shl nuw i64 %.val2, 4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) 8) #26
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateEECs6SXwsBSuFuw_4just.exit6

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateEECs6SXwsBSuFuw_4just.exit6: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit, %bb.g
  ret void

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateEECs6SXwsBSuFuw_4just.exit: ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.j
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtNtCs2FJGJNE9lTN_12clap_builder4util2id2IdNtNtNtB1f_7builder13arg_predicate12ArgPredicateINtNtB4_6option6OptionIBC_NtNtB1W_6os_str5OsStrEEEEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !13 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !282)
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtNtCs2FJGJNE9lTN_12clap_builder4util2id2IdNtNtNtBM_7builder13arg_predicate12ArgPredicateINtNtCsj6eKBz9Db1c_4core6option6OptionIBw_NtNtB1t_6os_str5OsStrEEEENtNtNtB2e_3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtCs2FJGJNE9lTN_12clap_builder4util2id2IdNtNtNtBI_7builder13arg_predicate12ArgPredicateINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB1p_6os_str5OsStrEEEECs6SXwsBSuFuw_4just.exit.i.i
  %.sroa.0.013.i.i = phi i64 [ %i.e, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtCs2FJGJNE9lTN_12clap_builder4util2id2IdNtNtNtBI_7builder13arg_predicate12ArgPredicateINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB1p_6os_str5OsStrEEEECs6SXwsBSuFuw_4just.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [56 x i8], ptr %.val, i64 %.sroa.0.013.i.i ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.0.013.i.i, 1      ; 2 uses
  %i.f = getelementptr i8, ptr %i.d, i64 32
  %.val8.i.i = load i64, ptr %i.f, align 8, !range !16, !alias.scope !282, !noundef !13 ; 2 uses
  %i.g = icmp sgt i64 %.val8.i.i, 0
  br i1 %i.g, label %bb.b, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtCs2FJGJNE9lTN_12clap_builder4util2id2IdNtNtNtBI_7builder13arg_predicate12ArgPredicateINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB1p_6os_str5OsStrEEEECs6SXwsBSuFuw_4just.exit.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.h = getelementptr i8, ptr %i.d, i64 40
  %.val9.i.i = load ptr, ptr %i.h, align 8, !alias.scope !282, !nonnull !13, !noundef !13
  %i.i = shl nuw i64 %.val8.i.i, 4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !282
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtCs2FJGJNE9lTN_12clap_builder4util2id2IdNtNtNtBI_7builder13arg_predicate12ArgPredicateINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB1p_6os_str5OsStrEEEECs6SXwsBSuFuw_4just.exit.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtCs2FJGJNE9lTN_12clap_builder4util2id2IdNtNtNtBI_7builder13arg_predicate12ArgPredicateINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB1p_6os_str5OsStrEEEECs6SXwsBSuFuw_4just.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.j = icmp eq i64 %i.e, %.val1
  br i1 %i.j, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtNtCs2FJGJNE9lTN_12clap_builder4util2id2IdNtNtNtBM_7builder13arg_predicate12ArgPredicateINtNtCsj6eKBz9Db1c_4core6option6OptionIBw_NtNtB1t_6os_str5OsStrEEEENtNtNtB2e_3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit, label %.lr.ph.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtNtCs2FJGJNE9lTN_12clap_builder4util2id2IdNtNtNtBM_7builder13arg_predicate12ArgPredicateINtNtCsj6eKBz9Db1c_4core6option6OptionIBw_NtNtB1t_6os_str5OsStrEEEENtNtNtB2e_3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtCs2FJGJNE9lTN_12clap_builder4util2id2IdNtNtNtBI_7builder13arg_predicate12ArgPredicateINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB1p_6os_str5OsStrEEEECs6SXwsBSuFuw_4just.exit.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !12, !noundef !13 ; 2 uses
  %i.k = icmp eq i64 %.val2, 0
  br i1 %i.k, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecTNtNtNtCs2FJGJNE9lTN_12clap_builder4util2id2IdNtNtNtB1m_7builder13arg_predicate12ArgPredicateINtNtB4_6option6OptionINtNtBG_3vec3VecNtNtB23_6os_str5OsStrEEEEECs6SXwsBSuFuw_4just.exit6, label %bb.c

bb.c:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtNtCs2FJGJNE9lTN_12clap_builder4util2id2IdNtNtNtBM_7builder13arg_predicate12ArgPredicateINtNtCsj6eKBz9Db1c_4core6option6OptionIBw_NtNtB1t_6os_str5OsStrEEEENtNtNtB2e_3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit
  %i.l = mul nuw i64 %.val2, 56
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #26
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecTNtNtNtCs2FJGJNE9lTN_12clap_builder4util2id2IdNtNtNtB1m_7builder13arg_predicate12ArgPredicateINtNtB4_6option6OptionINtNtBG_3vec3VecNtNtB23_6os_str5OsStrEEEEECs6SXwsBSuFuw_4just.exit6

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecTNtNtNtCs2FJGJNE9lTN_12clap_builder4util2id2IdNtNtNtB1m_7builder13arg_predicate12ArgPredicateINtNtB4_6option6OptionINtNtBG_3vec3VecNtNtB23_6os_str5OsStrEEEEECs6SXwsBSuFuw_4just.exit6: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtNtCs2FJGJNE9lTN_12clap_builder4util2id2IdNtNtNtBM_7builder13arg_predicate12ArgPredicateINtNtCsj6eKBz9Db1c_4core6option6OptionIBw_NtNtB1t_6os_str5OsStrEEEENtNtNtB2e_3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit, %bb.c
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !12, !noundef !13 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECs6SXwsBSuFuw_4just.exit4, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !13, !noundef !13
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #26
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECs6SXwsBSuFuw_4just.exit4

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECs6SXwsBSuFuw_4just.exit4: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !13, !noundef !13 ; 3 uses
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just10expression10ExpressionECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(128) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 128, i64 noundef 8) #26
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 128, i64 noundef 8) #26
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEECs6SXwsBSuFuw_4just(ptr captures(address) %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [72 x i8], align 8                ; 14 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !327)
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 304
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !329)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !330)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !331
  %.sroa.06.0.copyload.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !331 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.06.0.copyload.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.58.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 320
  %.sroa.58.0.copyload.i.i.i.i = load i64, ptr %.sroa.58.0..sroa_idx.i.i.i.i, align 8, !alias.scope !331
  %.sroa.47.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 312
  %.sroa.47.0.copyload.i.i.i.i = load i64, ptr %.sroa.47.0..sroa_idx.i.i.i.i, align 8, !alias.scope !331 ; 2 uses
  %.sroa.414.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %.sroa.414.0..sroa_idx.i.i.i.i, align 8, !noalias !331
  %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.06.0.copyload.i.i.i.i, ptr %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !331
  %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.47.0.copyload.i.i.i.i, ptr %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !331
  %.sroa.616.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr null, ptr %.sroa.616.0..sroa_idx.i.i.i.i, align 8, !noalias !331
  %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %.sroa.06.0.copyload.i.i.i.i, ptr %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !331
  %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %.sroa.47.0.copyload.i.i.i.i, ptr %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !331
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sink31.i.i.i.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.sroa.58.0.copyload.sink.i.i.i.i = phi i64 [ %.sroa.58.0.copyload.i.i.i.i, %bb.b ], [ 0, %bb.a ]
  store i64 %.sink31.i.i.i.i, ptr %i.b, align 8, !noalias !331
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sink31.i.i.i.i, ptr %i.d, align 8, !noalias !331
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %.sroa.58.0.copyload.sink.i.i.i.i, ptr %i.e, align 8, !noalias !331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !332
  invoke fastcc void @_RNvMsz_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8IntoIterNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1b_4name4NameE10dying_nextCs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b)
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !noalias !327

.noexc.i:                                         ; preds = %bb.c
  %i.f = load ptr, ptr %i.a, align 8, !noalias !332, !noundef !13 ; 2 uses
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not5.i.i.i.i.i.i, label %.loopexit40.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc.i
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.noexc25.i, %.lr.ph.i.i.i.i.i.i
  %i.g = phi ptr [ %i.f, %.lr.ph.i.i.i.i.i.i ], [ %i.k, %.noexc25.i ]
  %.sroa.43.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !332
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = getelementptr inbounds nuw [1352 x i8], ptr %i.h, i64 %.sroa.43.0.copyload.i.i.i.i.i.i
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just9attribute9AttributeECs6SXwsBSuFuw_4just(ptr noalias nofree noundef readonly align 8 dereferenceable(1352) %i.i)
          to label %_RNvMsT_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1I_4name4NameNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i unwind label %bb.e, !noalias !332

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNvXsy_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtBK_8IntoIterpppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB2w_4name4NameNtNtBQ_5alloc6GlobalEECs6SXwsBSuFuw_4just(ptr nonnull align 8 dereferenceable(72) %i.b) #28
          to label %.body.i unwind label %bb.f, !noalias !331

_RNvMsT_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1I_4name4NameNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !332
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !332
  invoke fastcc void @_RNvMsz_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8IntoIterNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1b_4name4NameE10dying_nextCs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b)
          to label %.noexc25.i unwind label %.loopexit.split-lp.i, !noalias !327

.noexc25.i:                                       ; preds = %_RNvMsT_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1I_4name4NameNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i
  %i.k = load ptr, ptr %i.a, align 8, !noalias !332, !noundef !13 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i, label %.loopexit40.i, label %bb.d

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !332
  unreachable

.loopexit.split-lp.i:                             ; preds = %_RNvMsT_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1I_4name4NameNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i, %bb.c
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.i, %bb.e
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.j, %bb.e ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just4line4LineEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(352) %.0.val) #28
          to label %bb.g unwind label %bb.aa

.loopexit40.i:                                    ; preds = %.noexc25.i, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !331
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just4line4LineEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(352) %.0.val)
          to label %bb.i unwind label %bb.h

bb.g:                                             ; preds = %bb.h, %.body.i
  %.pn.i = phi { ptr, i32 } [ %i.n, %bb.h ], [ %eh.lpad-body.i, %.body.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just10dependency10DependencyEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.m) #28
          to label %bb.j unwind label %bb.aa

bb.h:                                             ; preds = %.loopexit40.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.i:                                             ; preds = %.loopexit40.i
  %i.o = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just10dependency10DependencyEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.o)
          to label %bb.m unwind label %bb.l

bb.j:                                             ; preds = %bb.l, %bb.g
  %.pn2.i = phi { ptr, i32 } [ %i.s, %bb.l ], [ %.pn.i, %bb.g ]
  %i.p = getelementptr inbounds nuw i8, ptr %.0.val, i64 96
  %.val15.i = load i64, ptr %i.p, align 8, !range !16, !alias.scope !327, !noundef !13 ; 2 uses
  %i.q = icmp sgt i64 %.val15.i, 0
  br i1 %i.q, label %bb.k, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit.i

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %.0.val, i64 104
  %.val16.i = load ptr, ptr %i.r, align 8, !alias.scope !327, !nonnull !13, !noundef !13
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val16.i, i64 noundef %.val15.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !333
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit.i

bb.l:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.m:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %.0.val, i64 96
  %.val.i = load i64, ptr %i.t, align 8, !range !16, !alias.scope !327, !noundef !13 ; 2 uses
  %i.u = icmp sgt i64 %.val.i, 0
  br i1 %i.u, label %bb.n, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit28.i

bb.n:                                             ; preds = %bb.m
  %i.v = getelementptr inbounds nuw i8, ptr %.0.val, i64 104
  %.val14.i = load ptr, ptr %i.v, align 8, !alias.scope !327, !nonnull !13, !noundef !13
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val14.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !334
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit28.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit.i: ; preds = %bb.k, %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %.0.val, i64 48
  %.val19.i = load i64, ptr %i.w, align 8, !alias.scope !327 ; 2 uses
  %i.x = icmp eq i64 %.val19.i, 0
  br i1 %i.x, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECs6SXwsBSuFuw_4just.exit.i, label %bb.o

bb.o:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %.0.val, i64 56
  %.val20.i = load ptr, ptr %i.y, align 8, !alias.scope !327, !nonnull !13, !noundef !13
  %i.z = shl nuw i64 %.val19.i, 3
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val20.i, i64 noundef %i.z, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !327
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECs6SXwsBSuFuw_4just.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit28.i: ; preds = %bb.n, %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.val, i64 48
  %.val17.i = load i64, ptr %i.aa, align 8, !alias.scope !327 ; 2 uses
  %i.ab = icmp eq i64 %.val17.i, 0
  br i1 %i.ab, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECs6SXwsBSuFuw_4just.exit29.i, label %bb.p

bb.p:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit28.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.val, i64 56
  %.val18.i = load ptr, ptr %i.ac, align 8, !alias.scope !327, !nonnull !13, !noundef !13
  %i.ad = shl nuw i64 %.val17.i, 3
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val18.i, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !327
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECs6SXwsBSuFuw_4just.exit29.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECs6SXwsBSuFuw_4just.exit.i: ; preds = %bb.o, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.val, i64 120
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef readonly align 8 dereferenceable(32) %i.ae) #28
  %i.af = getelementptr inbounds nuw i8, ptr %.0.val, i64 72
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.af) #28
          to label %bb.t unwind label %bb.aa

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECs6SXwsBSuFuw_4just.exit29.i: ; preds = %bb.p, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit28.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.val, i64 120
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  %i.ah = load i64, ptr %i.ag, align 8, !range !16, !alias.scope !336, !noundef !13 ; 3 uses
  %i.ai = icmp eq i64 %i.ah, -1
  br i1 %i.ai, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathEECs6SXwsBSuFuw_4just.exit.i, label %bb.q

bb.q:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECs6SXwsBSuFuw_4just.exit29.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !337)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.val, i64 128
  %.val.i.i.i.i = load ptr, ptr %i.aj, align 8, !alias.scope !339, !nonnull !13, !noundef !13 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.val, i64 136
  %.val1.i.i.i.i = load i64, ptr %i.ak, align 8, !alias.scope !339, !noundef !13 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !340)
  %i.al = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.al, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i30.i

.lr.ph.i.i.i.i.i30.i:                             ; preds = %bb.q, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i
  %.sroa.0.010.i.i.i.i.i.i = phi i64 [ %i.an, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i ], [ 0, %bb.q ] ; 2 uses
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i, i64 %.sroa.0.010.i.i.i.i.i.i ; 2 uses
  %i.an = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i.i, 1 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !341)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342)
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.am, align 8, !range !12, !alias.scope !343, !noalias !339, !noundef !13 ; 2 uses
  %i.ao = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.ao, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i30.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.ap, align 8, !alias.scope !343, !noalias !339, !nonnull !13, !noundef !13
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !344
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i: ; preds = %bb.r, %.lr.ph.i.i.i.i.i30.i
  %i.aq = icmp eq i64 %i.an, %.val1.i.i.i.i
  br i1 %i.aq, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i30.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i, %bb.q
  %i.ar = icmp eq i64 %i.ah, 0
  br i1 %i.ar, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathEECs6SXwsBSuFuw_4just.exit.i, label %bb.s

bb.s:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i.i
  %i.as = mul nuw i64 %i.ah, 24
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.as, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !339
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathEECs6SXwsBSuFuw_4just.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathEECs6SXwsBSuFuw_4just.exit.i: ; preds = %bb.s, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECs6SXwsBSuFuw_4just.exit29.i
  %i.at = getelementptr inbounds nuw i8, ptr %.0.val, i64 72
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.at)
          to label %bb.v unwind label %bb.u

bb.t:                                             ; preds = %bb.u, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECs6SXwsBSuFuw_4just.exit.i
  %.pn10.i = phi { ptr, i32 } [ %i.ax, %bb.u ], [ %.pn2.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECs6SXwsBSuFuw_4just.exit.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %.0.val, i64 152
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef readonly align 8 dereferenceable(32) %i.au) #28
  %i.av = getelementptr inbounds nuw i8, ptr %.0.val, i64 256
  %.val23.i = load ptr, ptr %i.av, align 8, !alias.scope !327
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.val, i64 264
  %.val24.i = load i64, ptr %i.aw, align 8, !alias.scope !327, !noundef !13
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3set7HashSetNtNtCskXtk6F4WjxZ_4just6number6NumberEECs6SXwsBSuFuw_4just(ptr %.val23.i, i64 %.val24.i) #28, !noalias !327
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 352, i64 noundef 8) #26
  resume { ptr, i32 } %.pn10.i

bb.u:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathEECs6SXwsBSuFuw_4just.exit.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.v:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathEECs6SXwsBSuFuw_4just.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.val, i64 152
  tail call void @llvm.experimental.noalias.scope.decl(metadata !345)
  %i.az = load i64, ptr %i.ay, align 8, !range !16, !alias.scope !346, !noundef !13 ; 3 uses
  %i.ba = icmp eq i64 %i.az, -1
  br i1 %i.ba, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathEECs6SXwsBSuFuw_4just.exit39.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.val, i64 160
  %.val.i.i.i31.i = load ptr, ptr %i.bb, align 8, !alias.scope !349, !nonnull !13, !noundef !13 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.val, i64 168
  %.val1.i.i.i32.i = load i64, ptr %i.bc, align 8, !alias.scope !349, !noundef !13 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !350)
  %i.bd = icmp eq i64 %.val1.i.i.i32.i, 0
  br i1 %i.bd, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i38.i, label %.lr.ph.i.i.i.i.i33.i

.lr.ph.i.i.i.i.i33.i:                             ; preds = %bb.w, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i37.i
  %.sroa.0.010.i.i.i.i.i34.i = phi i64 [ %i.bf, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i37.i ], [ 0, %bb.w ] ; 2 uses
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i31.i, i64 %.sroa.0.010.i.i.i.i.i34.i ; 2 uses
  %i.bf = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i34.i, 1 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !351)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !352)
  %.val.i.i.i.i.i.i.i35.i = load i64, ptr %i.be, align 8, !range !12, !alias.scope !353, !noalias !349, !noundef !13 ; 2 uses
  %i.bg = icmp eq i64 %.val.i.i.i.i.i.i.i35.i, 0
  br i1 %i.bg, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i37.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i.i.i.i33.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.val1.i.i.i.i.i.i.i36.i = load ptr, ptr %i.bh, align 8, !alias.scope !353, !noalias !349, !nonnull !13, !noundef !13
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i36.i, i64 noundef %.val.i.i.i.i.i.i.i35.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !354
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i37.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i37.i: ; preds = %bb.x, %.lr.ph.i.i.i.i.i33.i
  %i.bi = icmp eq i64 %i.bf, %.val1.i.i.i32.i
  br i1 %i.bi, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i38.i, label %.lr.ph.i.i.i.i.i33.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i38.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i37.i, %bb.w
  %i.bj = icmp eq i64 %i.az, 0
  br i1 %i.bj, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathEECs6SXwsBSuFuw_4just.exit39.i, label %bb.y

bb.y:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i38.i
end_hunk_0
begin_hunk_1_@_RNvCs6SXwsBSuFuw_4just4main:bb.a

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i75.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit71.i.i.i.i
  %.val.i.i76.i.i.i.i = load i64, ptr %i.s, align 8, !range !12, !alias.scope !3232, !noalias !3119, !noundef !13 ; 2 uses
  %i.vj = icmp eq i64 %.val.i.i76.i.i.i.i, 0
  br i1 %i.vj, label %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder7builder7commandNtB3_7Command20try_get_matches_fromNtNtCsaKJjC64KgbL_3std3env6ArgsOsNtNtNtB1s_3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCsgIMNuTmDvdf_8clap_lex7RawArgsECs6SXwsBSuFuw_4just.exit93.sink.split.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCsgIMNuTmDvdf_8clap_lex7RawArgsECs6SXwsBSuFuw_4just.exit93.sink.split.i.i.i.i: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i91.i.i.i.i, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i
  %.val.i.i76.sink.i.i.i.i = phi i64 [ %.val.i.i92.i.i.i.i, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i91.i.i.i.i ], [ %.val.i.i76.i.i.i.i, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i ]
  %.val4.i.i.sink.i.i.i.i = phi ptr [ %.val4.i.i84.i.i.i.i, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i91.i.i.i.i ], [ %.val4.i.i.i.i.i.i, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i ]
  %i.vk = mul nuw i64 %.val.i.i76.sink.i.i.i.i, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.sink.i.i.i.i, i64 noundef %i.vk, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !3237
  br label %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder7builder7commandNtB3_7Command20try_get_matches_fromNtNtCsaKJjC64KgbL_3std3env6ArgsOsNtNtNtB1s_3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i

bb.hd:                                            ; preds = %bb.fn, %bb.fl, %bb.fj, %bb.fi
  %i.vl = phi i64 [ 0, %bb.fi ], [ 1, %bb.fn ], [ 1, %bb.fl ], [ 1, %bb.fj ] ; 5 uses
  %i.vm = and i32 %.val62.i.i.i.i, 67108864
  %.not123.i.i.i.i = icmp eq i32 %i.vm, 0
  br i1 %.not123.i.i.i.i, label %bb.he, label %bb.hh

bb.he:                                            ; preds = %bb.hd
  %i.vn = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !3119, !noundef !13
  %i.vo = icmp ult i64 %i.vl, %i.vn
  br i1 %i.vo, label %bb.hg, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.vp = add nuw nsw i64 %i.vl, 1
  br label %bb.hh

bb.hg:                                            ; preds = %bb.he
  %i.vq = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !3119, !nonnull !13, !noundef !13
  %i.vr = getelementptr inbounds nuw [24 x i8], ptr %i.vq, i64 %i.vl ; 2 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 8
  %i.vt = load ptr, ptr %i.vs, align 8, !noalias !3119, !nonnull !13, !noundef !13
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vr, i64 16
  %i.vv = load i64, ptr %i.vu, align 8, !noalias !3119, !noundef !13
  %i.vw = add nuw nsw i64 %i.vl, 1                ; 4 uses
  %i.vx = invoke { ptr, i64 } @_RNvMs16_NtCsaKJjC64KgbL_3std4pathNtB6_4Path9file_name(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.vt, i64 noundef %i.vv)
          to label %bb.hi unwind label %bb.fh, !noalias !3119 ; 2 uses

bb.hh:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit83.i.i.i.i, %bb.hm, %bb.hl, %bb.hi, %bb.hf, %bb.hd
  %i.vy = phi i64 [ %i.vl, %bb.hd ], [ %i.vp, %bb.hf ], [ %i.vw, %bb.hl ], [ %i.vw, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit83.i.i.i.i ], [ %i.vw, %bb.hm ], [ %i.vw, %bb.hi ]
  invoke void @_RNvMs3_NtNtCs2FJGJNE9lTN_12clap_builder7builder7commandNtB5_7Command9__do_parse(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(760) %i.t, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s, i64 noundef %i.vy)
          to label %bb.hp unwind label %bb.fh, !noalias !3225

bb.hi:                                            ; preds = %bb.hg
  %i.vz = extractvalue { ptr, i64 } %i.vx, 0      ; 2 uses
  %.not51.i.i.i.i = icmp eq ptr %i.vz, null
  br i1 %.not51.i.i.i.i, label %bb.hh, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.wa = extractvalue { ptr, i64 } %i.vx, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !3119
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.vz, i64 noundef %i.wa)
          to label %bb.hk unwind label %bb.fh, !noalias !3119

bb.hk:                                            ; preds = %bb.hj
  %i.wb = load i64, ptr %i.q, align 8, !range !28, !noalias !3119, !noundef !13
  %i.wc = trunc nuw i64 %i.wb to i1
  br i1 %i.wc, label %bb.hl, label %bb.hm

bb.hl:                                            ; preds = %bb.hk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3119
  br label %bb.hh

bb.hm:                                            ; preds = %bb.hk
  %i.wd = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.we = load ptr, ptr %i.wd, align 8, !noalias !3119, !nonnull !13, !noundef !13
  %i.wf = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.wg = load i64, ptr %i.wf, align 8, !noalias !3119, !noundef !13 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3119
  %i.wh = getelementptr inbounds nuw i8, ptr %i.t, i64 344 ; 2 uses
  %i.wi = load i64, ptr %i.wh, align 8, !range !16, !alias.scope !3165, !noalias !3115, !noundef !13
  %.not52.i.i.i.i = icmp eq i64 %i.wi, -1
  br i1 %.not52.i.i.i.i, label %bb.hn, label %bb.hh

bb.hn:                                            ; preds = %bb.hm
  %.not.i77.i.i.i.i = icmp slt i64 %i.wg, 0
  br i1 %.not.i77.i.i.i.i, label %.invoke.i.i.i.i, label %bb.ho, !prof !29

bb.ho:                                            ; preds = %bb.hn
  %i.wj = icmp eq i64 %i.wg, 0
  br i1 %i.wj, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit83.i.i.i.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i78.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i78.i.i.i.i: ; preds = %bb.ho
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !3238
  %i.wk = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.wg, i64 noundef range(i64 1, 9) 1) #26, !noalias !3238 ; 3 uses
  %i.wl = icmp eq ptr %i.wk, null
  br i1 %i.wl, label %.invoke.i.i.i.i, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6SXwsBSuFuw_4just.exit80.thread116.i.i.i.i

.invoke.i.i.i.i:                                  ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i78.i.i.i.i, %bb.hn, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i18, %bb.fo
  %i.wm = phi i64 [ 0, %bb.fo ], [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i18 ], [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i78.i.i.i.i ], [ 0, %bb.hn ]
  %i.wn = phi i64 [ %i.ov, %bb.fo ], [ %i.ov, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i18 ], [ %i.wg, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i78.i.i.i.i ], [ %i.wg, %bb.hn ]
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.wm, i64 %i.wn) #27
          to label %.cont.i.i.i.i unwind label %bb.fh, !noalias !3119

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6SXwsBSuFuw_4just.exit80.thread116.i.i.i.i: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i78.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.wk, ptr nonnull align 1 %i.we, i64 %i.wg, i1 false), !noalias !3119
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit83.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit83.i.i.i.i: ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6SXwsBSuFuw_4just.exit80.thread116.i.i.i.i, %bb.ho
  %i.wo = phi ptr [ %i.wk, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6SXwsBSuFuw_4just.exit80.thread116.i.i.i.i ], [ inttoptr (i64 1 to ptr), %bb.ho ]
  store i64 %i.wg, ptr %i.wh, align 8, !alias.scope !3165, !noalias !3115
  %.sroa.539.0..sroa_idx40.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 352
  store ptr %i.wo, ptr %.sroa.539.0..sroa_idx40.i.i.i.i, align 8, !alias.scope !3165, !noalias !3115
  %.sroa.642.0..sroa_idx43.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 360
  store i64 %i.wg, ptr %.sroa.642.0..sroa_idx43.i.i.i.i, align 8, !alias.scope !3165, !noalias !3115
  br label %bb.hh

bb.hp:                                            ; preds = %bb.hh
  call void @llvm.experimental.noalias.scope.decl(metadata !3239)
  call void @llvm.experimental.noalias.scope.decl(metadata !3240)
  %.val4.i.i84.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !3241, !noalias !3119, !nonnull !13, !noundef !13 ; 2 uses
  %.val5.i.i85.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !3241, !noalias !3119, !noundef !13 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3242)
  %i.wp = icmp eq i64 %.val5.i.i85.i.i.i.i, 0
  br i1 %i.wp, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i91.i.i.i.i, label %.lr.ph.i.i.i.i86.i.i.i.i

.lr.ph.i.i.i.i86.i.i.i.i:                         ; preds = %bb.hp, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i90.i.i.i.i
  %.sroa.0.011.i.i.i.i87.i.i.i.i = phi i64 [ %i.wr, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i90.i.i.i.i ], [ 0, %bb.hp ] ; 2 uses
  %i.wq = getelementptr inbounds nuw [24 x i8], ptr %.val4.i.i84.i.i.i.i, i64 %.sroa.0.011.i.i.i.i87.i.i.i.i ; 2 uses
  %i.wr = add nuw nsw i64 %.sroa.0.011.i.i.i.i87.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i88.i.i.i.i = load i64, ptr %i.wq, align 8, !range !12, !alias.scope !3243, !noalias !3244, !noundef !13 ; 2 uses
  %i.ws = icmp eq i64 %.val8.i.i.i.i88.i.i.i.i, 0
  br i1 %i.ws, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i90.i.i.i.i, label %bb.hq

bb.hq:                                            ; preds = %.lr.ph.i.i.i.i86.i.i.i.i
  %i.wt = getelementptr i8, ptr %i.wq, i64 8
  %.val9.i.i.i.i89.i.i.i.i = load ptr, ptr %i.wt, align 8, !alias.scope !3242, !noalias !3244, !nonnull !13, !noundef !13
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i89.i.i.i.i, i64 noundef %.val8.i.i.i.i88.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3245
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i90.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i90.i.i.i.i: ; preds = %bb.hq, %.lr.ph.i.i.i.i86.i.i.i.i
  %i.wu = icmp eq i64 %i.wr, %.val5.i.i85.i.i.i.i
  br i1 %i.wu, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i91.i.i.i.i, label %.lr.ph.i.i.i.i86.i.i.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i91.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i90.i.i.i.i, %bb.hp
  %.val.i.i92.i.i.i.i = load i64, ptr %i.s, align 8, !range !12, !alias.scope !3241, !noalias !3119, !noundef !13 ; 2 uses
  %i.wv = icmp eq i64 %.val.i.i92.i.i.i.i, 0
  br i1 %i.wv, label %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder7builder7commandNtB3_7Command20try_get_matches_fromNtNtCsaKJjC64KgbL_3std3env6ArgsOsNtNtNtB1s_3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCsgIMNuTmDvdf_8clap_lex7RawArgsECs6SXwsBSuFuw_4just.exit93.sink.split.i.i.i.i

.body.i.i.i15:                                    ; preds = %bb.fg, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i.i.i, %bb.fe, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i46, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i40
  %eh.lpad-body.i.i.i16 = phi { ptr, i32 } [ %.pn56.i.i.i.i, %bb.fg ], [ %i.mf, %bb.fe ], [ %i.nk, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i40 ], [ %i.mf, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i46 ], [ %.pn56.i.i.i.i, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i.i.i ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(760) %i.t) #28
          to label %common.resume unwind label %bb.hr, !noalias !3246

_RINvMNtNtCs2FJGJNE9lTN_12clap_builder7builder7commandNtB3_7Command20try_get_matches_fromNtNtCsaKJjC64KgbL_3std3env6ArgsOsNtNtNtB1s_3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i91.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCsgIMNuTmDvdf_8clap_lex7RawArgsECs6SXwsBSuFuw_4just.exit93.sink.split.i.i.i.i, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !3119
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(760) %i.t), !noalias !3115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !3115
  %i.ww = load i64, ptr %i.u, align 8, !range !16, !noalias !3115, !noundef !13
  %i.wx = icmp eq i64 %i.ww, -1
  br i1 %i.wx, label %_RINvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive6Parser14try_parse_fromNtNtCsaKJjC64KgbL_3std3env6ArgsOsNtNtNtB1O_3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.thread.i, label %bb.hs

bb.hr:                                            ; preds = %.body.i.i.i15
  %i.wy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !3246
  unreachable

_RINvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive6Parser14try_parse_fromNtNtCsaKJjC64KgbL_3std3env6ArgsOsNtNtNtB1O_3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.thread.i: ; preds = %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder7builder7commandNtB3_7Command20try_get_matches_fromNtNtCsaKJjC64KgbL_3std3env6ArgsOsNtNtNtB1s_3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i
  %i.wz = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.xa = load ptr, ptr %i.wz, align 8, !noalias !3115, !nonnull !13, !align !18, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !3115
  br label %bb.in

bb.hs:                                            ; preds = %_RINvMNtNtCs2FJGJNE9lTN_12clap_builder7builder7commandNtB3_7Command20try_get_matches_fromNtNtCsaKJjC64KgbL_3std3env6ArgsOsNtNtNtB1s_3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.v, ptr noundef nonnull align 8 dereferenceable(56) %i.u, i64 56, i1 false), !noalias !3115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !3115
  invoke void @_RNvXs3_NtCskXtk6F4WjxZ_4just9argumentsNtB5_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14FromArgMatches20from_arg_matches_mut(ptr noalias nofree noundef nonnull sret([648 x i8]) align 8 captures(none) dereferenceable(648) %i.ad, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.v)
          to label %bb.hu unwind label %bb.ht, !noalias !3116

bb.ht:                                            ; preds = %bb.ii, %bb.hs
  %i.xb = landingpad { ptr, i32 }
          cleanup
  br label %.body6.i.i

.body6.i.i:                                       ; preds = %bb.ik, %.body.i3.i.i, %bb.ht
  %eh.lpad-body7.i.i = phi { ptr, i32 } [ %i.xb, %bb.ht ], [ %eh.lpad-body.i4.i.i, %.body.i3.i.i ], [ %i.xq, %bb.ik ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches10ArgMatchesECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(56) %i.v) #28
          to label %common.resume unwind label %bb.il, !noalias !3115

bb.hu:                                            ; preds = %bb.hs
  %i.xc = load i64, ptr %i.ad, align 8, !noalias !3112 ; 2 uses
  %i.xd = icmp eq i64 %i.xc, -1
  br i1 %i.xd, label %bb.hv, label %bb.iw

bb.hv:                                            ; preds = %bb.hu
  %i.xe = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.xf = load ptr, ptr %i.xe, align 8, !alias.scope !3113, !noalias !3112, !nonnull !13, !align !18, !noundef !13 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3247)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !3248
  invoke void @_RNvXs2_NtCskXtk6F4WjxZ_4just9argumentsNtB5_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7command(ptr noalias nofree noundef nonnull sret([760 x i8]) align 8 captures(address) dereferenceable(760) %i.j)
          to label %bb.hw unwind label %bb.ik, !noalias !3248

bb.hw:                                            ; preds = %bb.hv
  call void @llvm.experimental.noalias.scope.decl(metadata !3249)
  invoke void @_RNvMs3_NtNtCs2FJGJNE9lTN_12clap_builder7builder7commandNtB5_7Command11__build_self(ptr noalias nofree noundef nonnull align 8 dereferenceable(760) %i.j, i1 noundef zeroext false)
          to label %bb.hx unwind label %.thread25.i.i.i.i, !noalias !3250

bb.hx:                                            ; preds = %bb.hw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3251
  invoke void @_RNvMNtNtCs2FJGJNE9lTN_12clap_builder7builder7commandNtB2_7Command13render_usage_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(760) %i.j)
          to label %bb.hy unwind label %.thread25.i.i.i.i, !noalias !3250

bb.hy:                                            ; preds = %bb.hx
  %i.xg = load i64, ptr %i.xf, align 8, !range !14, !alias.scope !3252, !noalias !3115, !noundef !13
  %.not.i.i5.i.i = icmp eq i64 %i.xg, 2
  br i1 %.not.i.i5.i.i, label %bb.ia, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3251
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !3251
  invoke void @_RNvMs4_NtCs2FJGJNE9lTN_12clap_builder5errorNtB5_7Message6format(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.xf, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(760) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h)
          to label %bb.id unwind label %.thread25.i.i.i.i, !noalias !3115

.thread25.i.i.i.i:                                ; preds = %bb.hz, %bb.hx, %bb.hw
  %lpad.thr_comm27.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs2FJGJNE9lTN_12clap_builder5error5ErrorECs6SXwsBSuFuw_4just(ptr nonnull align 8 %i.xf) #28
          to label %.body.i3.i.i unwind label %bb.ig, !noalias !3115

bb.ia:                                            ; preds = %bb.hy
  %i.xh = invoke fastcc noundef nonnull align 8 ptr @_RNvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB2_5Error8with_cmdCs6SXwsBSuFuw_4just(ptr noalias noundef nonnull align 8 %i.xf, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(760) %i.j)
          to label %bb.ib unwind label %bb.ie, !noalias !3115 ; 0 uses

bb.ib:                                            ; preds = %bb.ia
  %.val12.i.i.i.i = load i64, ptr %i.i, align 8, !range !16, !noalias !3251, !noundef !13 ; 2 uses
  %i.xi = icmp sgt i64 %.val12.i.i.i.i, 0
  br i1 %i.xi, label %bb.ic, label %bb.ii

bb.ic:                                            ; preds = %bb.ib
  %i.xj = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.val13.i.i.i.i = load ptr, ptr %i.xj, align 8, !noalias !3251, !nonnull !13, !noundef !13
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13.i.i.i.i, i64 noundef %.val12.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3253
  br label %bb.ii

bb.id:                                            ; preds = %bb.hz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3251
  %i.xk = invoke fastcc noundef nonnull align 8 ptr @_RNvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB2_5Error8with_cmdCs6SXwsBSuFuw_4just(ptr noalias noundef nonnull align 8 %i.xf, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(760) %i.j)
          to label %bb.ii unwind label %bb.ih, !noalias !3115 ; 0 uses

bb.ie:                                            ; preds = %bb.ia
  %lpad.thr_comm.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val10.i.i.i.i = load i64, ptr %i.i, align 8, !range !16, !noalias !3251, !noundef !13 ; 2 uses
  %i.xl = icmp sgt i64 %.val10.i.i.i.i, 0
  br i1 %i.xl, label %bb.if, label %.body.i3.i.i

bb.if:                                            ; preds = %bb.ie
  %i.xm = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.val11.i.i.i.i = load ptr, ptr %i.xm, align 8, !noalias !3251, !nonnull !13, !noundef !13
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val11.i.i.i.i, i64 noundef %.val10.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3254
  br label %.body.i3.i.i

bb.ig:                                            ; preds = %.thread25.i.i.i.i
  %i.xn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !3115
  unreachable

bb.ih:                                            ; preds = %bb.id
  %i.xo = landingpad { ptr, i32 }
          cleanup
  br label %.body.i3.i.i

.body.i3.i.i:                                     ; preds = %bb.ih, %bb.if, %bb.ie, %.thread25.i.i.i.i
  %eh.lpad-body.i4.i.i = phi { ptr, i32 } [ %i.xo, %bb.ih ], [ %lpad.thr_comm27.i.i.i.i, %.thread25.i.i.i.i ], [ %lpad.thr_comm.split-lp.i.i.i.i, %bb.if ], [ %lpad.thr_comm.split-lp.i.i.i.i, %bb.ie ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(760) %i.j) #28
          to label %.body6.i.i unwind label %bb.ij, !noalias !3115

bb.ii:                                            ; preds = %bb.id, %bb.ic, %bb.ib
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3251
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(760) %i.j)
          to label %_RINvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive6Parser14try_parse_fromNtNtCsaKJjC64KgbL_3std3env6ArgsOsNtNtNtB1O_3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i unwind label %bb.ht, !noalias !3115

bb.ij:                                            ; preds = %bb.ik, %.body.i3.i.i
  %i.xp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !3115
  unreachable

bb.ik:                                            ; preds = %bb.hv
  %i.xq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs2FJGJNE9lTN_12clap_builder5error5ErrorECs6SXwsBSuFuw_4just(ptr nonnull align 8 %i.xf) #28
          to label %.body6.i.i unwind label %bb.ij, !noalias !3115

bb.il:                                            ; preds = %.body6.i.i
  %i.xr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !3115
  unreachable

bb.im:                                            ; preds = %_RNvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB4_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE8completeCs6SXwsBSuFuw_4just.exit
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std3env6ArgsOsECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.az) #28, !noalias !3113
  br label %common.resume

_RINvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive6Parser14try_parse_fromNtNtCsaKJjC64KgbL_3std3env6ArgsOsNtNtNtB1O_3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i: ; preds = %bb.ii
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3248
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches10ArgMatchesECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(56) %i.v), !noalias !3115
  br label %bb.in

bb.in:                                            ; preds = %_RINvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive6Parser14try_parse_fromNtNtCsaKJjC64KgbL_3std3env6ArgsOsNtNtNtB1O_3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i, %_RINvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive6Parser14try_parse_fromNtNtCsaKJjC64KgbL_3std3env6ArgsOsNtNtNtB1O_3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.thread.i
  %i.xs = phi ptr [ %i.xa, %_RINvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive6Parser14try_parse_fromNtNtCsaKJjC64KgbL_3std3env6ArgsOsNtNtNtB1O_3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.thread.i ], [ %i.xf, %_RINvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive6Parser14try_parse_fromNtNtCsaKJjC64KgbL_3std3env6ArgsOsNtNtNtB1O_3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !3115
  call void @llvm.experimental.noalias.scope.decl(metadata !3255)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3112
  store ptr %i.xs, ptr %i.g, align 8, !noalias !3256
  %i.xt = invoke fastcc noundef ptr @_RNvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB2_5Error5printCs6SXwsBSuFuw_4just(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g)
          to label %bb.ip unwind label %bb.io, !noalias !3112 ; 4 uses

bb.io:                                            ; preds = %bb.is, %bb.in
  %i.xu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs2FJGJNE9lTN_12clap_builder5error5ErrorECs6SXwsBSuFuw_4just(ptr nonnull align 8 %i.xs) #28
          to label %common.resume unwind label %bb.iv, !noalias !3112

bb.ip:                                            ; preds = %bb.in
  %.not.i.i = icmp eq ptr %i.xt, null
  br i1 %.not.i.i, label %bb.it, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3256
  %i.xv = ptrtoint ptr %i.xt to i64               ; 2 uses
  %i.xw = and i64 %i.xv, 3
  switch i64 %i.xw, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs6SXwsBSuFuw_4just.exit.i.i
    i64 3, label %bb.ir
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs6SXwsBSuFuw_4just.exit.i.i
    i64 1, label %bb.is
  ], !prof !15

bb.ir:                                            ; preds = %bb.iq
  %i.xx = icmp ult ptr %i.xt, inttoptr (i64 188978561024 to ptr)
  %i.xy = and i64 %i.xv, 1095216660480
  %i.xz = icmp ne i64 %i.xy, 1095216660480
  call void @llvm.assume(i1 %i.xx)
  call void @llvm.assume(i1 %i.xz)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs6SXwsBSuFuw_4just.exit.i.i

bb.is:                                            ; preds = %bb.iq
  %i.ya = getelementptr i8, ptr %i.xt, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ya) ]
  %i.yb = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.ya, ptr %i.yb, align 8, !alias.scope !3257, !noalias !3256
  store i8 3, ptr %i.f, align 8, !alias.scope !3257, !noalias !3256
  invoke void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.yb)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs6SXwsBSuFuw_4just.exit.i.i unwind label %bb.io, !noalias !3112

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs6SXwsBSuFuw_4just.exit.i.i: ; preds = %bb.is, %bb.ir, %bb.iq, %bb.iq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3256
  br label %bb.it

bb.it:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs6SXwsBSuFuw_4just.exit.i.i, %bb.ip
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xs, i64 249
  %i.yd = load i8, ptr %i.yc, align 1, !range !30, !alias.scope !3255, !noalias !3112, !noundef !13
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs2FJGJNE9lTN_12clap_builder5error10ErrorInnerECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(256) %i.xs)
          to label %_RINvNtCskXtk6F4WjxZ_4just3run3runNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtBB_3env6ArgsOsECs6SXwsBSuFuw_4just.exit.thread unwind label %bb.iu, !noalias !3112

bb.iu:                                            ; preds = %bb.it
  %i.ye = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.xs, i64 noundef 256, i64 noundef 8) #26, !noalias !3112
  br label %common.resume

bb.iv:                                            ; preds = %bb.io
  %i.yf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !3112
  unreachable

_RINvNtCskXtk6F4WjxZ_4just3run3runNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtNtBB_3env6ArgsOsECs6SXwsBSuFuw_4just.exit.thread: ; preds = %bb.it
  %i.yg = and i8 %i.yd, 29
  %switch.selectcmp.i.i = icmp eq i8 %i.yg, 12
  %i.yh = select i1 %switch.selectcmp.i.i, i32 0, i32 2
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.xs, i64 noundef 256, i64 noundef 8) #26, !noalias !3112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !3112
  br label %bb.kb

bb.iw:                                            ; preds = %bb.hu
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches10ArgMatchesECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(56) %i.v), !noalias !3115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !3115
  %.sroa.429.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.429.0.copyload.pre.i = load i32, ptr %.sroa.429.0..sroa_idx.phi.trans.insert.i, align 8, !noalias !3112
  %.sroa.5.0..sroa_idx.i32 = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %.sroa.8.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(636) %.sroa.8.0..sroa_idx5.i, ptr noundef nonnull align 4 dereferenceable(636) %.sroa.5.0..sroa_idx.i32, i64 636, i1 false), !noalias !3112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !3112
  store i64 %i.xc, ptr %i.ac, align 8, !noalias !3112
  %.sroa.6.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i32 %.sroa.429.0.copyload.pre.i, ptr %.sroa.6.0..sroa_idx3.i, align 8, !noalias !3112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !3112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !3112
  call void @_RNvMNtCskXtk6F4WjxZ_4just6configNtB2_6Config14from_arguments(ptr noalias nofree noundef nonnull sret([552 x i8]) align 8 captures(none) dereferenceable(552) %i.aa, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(648) %i.ac), !noalias !3112
  %i.yi = load i64, ptr %i.aa, align 8, !range !16, !noalias !3112, !noundef !13
  %i.yj = icmp eq i64 %i.yi, -1
  br i1 %i.yj, label %.thread.i, label %bb.ix

.thread.i:                                        ; preds = %bb.iw
  %i.yk = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.472.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.472.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(64) %i.yk, i64 64, i1 false), !noalias !3112
  %i.yl = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 27, ptr %i.yl, align 8, !noalias !3112
  store i64 -1, ptr %i.ab, align 8, !noalias !3112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !3112
  br label %.thread92.i

bb.ix:                                            ; preds = %bb.iw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(552) %i.ab, ptr noundef nonnull align 8 dereferenceable(552) %i.aa, i64 552, i1 false), !noalias !3112
  %.pre.i = load i64, ptr %i.ab, align 8, !noalias !3112 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !3112
  %i.ym = icmp eq i64 %.pre.i, -1
  br i1 %i.ym, label %.thread92.i, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  call void @llvm.experimental.noalias.scope.decl(metadata !3258)
  %.sroa.475.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 440
  %.sroa.475.0.copyload.i = load i32, ptr %.sroa.475.0..sroa_idx.i, align 8, !alias.scope !3259, !noalias !3112 ; 2 uses
  %i.yn = icmp eq i32 %.sroa.475.0.copyload.i, -1
  br i1 %i.yn, label %.thread92.i, label %bb.iz

.thread92.i:                                      ; preds = %bb.iy, %bb.ix, %.thread.i
  %i.yo = phi i1 [ true, %.thread.i ], [ true, %bb.ix ], [ false, %bb.iy ]
  %.sroa.016.0.copyload153.i = phi i64 [ -1, %.thread.i ], [ -1, %bb.ix ], [ %.pre.i, %bb.iy ]
  %.sroa.6.i.4.i.4.i.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6.i, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %.sroa.6.i.4.i.4.i.4..sroa_idx, i8 0, i64 10, i1 false), !noalias !3112
  br label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultTNtNtCskXtk6F4WjxZ_4just5color5ColorNtNtBM_9verbosity9VerbosityERNtNtBM_5error5ErrorE17unwrap_or_defaultCs6SXwsBSuFuw_4just.exit.i

bb.iz:                                            ; preds = %bb.iy
  %i.yp = getelementptr inbounds nuw i8, ptr %i.ab, i64 544
  %i.yq = load i8, ptr %i.yp, align 8, !range !3260, !alias.scope !3261, !noalias !3112, !noundef !13
  %.sroa.980.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 467
  %.sroa.879.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 466
  %.sroa.879.0.copyload.i = load i8, ptr %.sroa.879.0..sroa_idx.i, align 2, !alias.scope !3259, !noalias !3112
  %.sroa.677.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 458
  %i.yr = load <2 x i32>, ptr %.sroa.677.0..sroa_idx.i, align 2, !alias.scope !3259, !noalias !3112
  %.sroa.576.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 444
  %i.ys = getelementptr inbounds nuw i8, ptr %i.ab, i64 432
  %.sroa.074.0.copyload.i = load i64, ptr %i.ys, align 8, !alias.scope !3259, !noalias !3112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(14) %.sroa.6.i, ptr noundef nonnull align 4 dereferenceable(14) %.sroa.576.0..sroa_idx.i, i64 14, i1 false), !noalias !3112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.10.i, ptr noundef nonnull align 1 dereferenceable(5) %.sroa.980.0..sroa_idx.i, i64 5, i1 false), !noalias !3112
  %i.yt = icmp eq i8 %i.yq, 0
  br label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultTNtNtCskXtk6F4WjxZ_4just5color5ColorNtNtBM_9verbosity9VerbosityERNtNtBM_5error5ErrorE17unwrap_or_defaultCs6SXwsBSuFuw_4just.exit.i

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultTNtNtCskXtk6F4WjxZ_4just5color5ColorNtNtBM_9verbosity9VerbosityERNtNtBM_5error5ErrorE17unwrap_or_defaultCs6SXwsBSuFuw_4just.exit.i: ; preds = %bb.iz, %.thread92.i
  %i.yu = phi i1 [ %i.yo, %.thread92.i ], [ false, %bb.iz ]
  %.sroa.016.0.copyload152.i = phi i64 [ %.sroa.016.0.copyload153.i, %.thread92.i ], [ %.pre.i, %bb.iz ]
  %.sroa.1057.0.i = phi i1 [ false, %.thread92.i ], [ %i.yt, %bb.iz ]
  %.sroa.9.0.i = phi i8 [ 1, %.thread92.i ], [ %.sroa.879.0.copyload.i, %bb.iz ]
  %.sroa.544.0.i = phi i32 [ 32, %.thread92.i ], [ %.sroa.475.0.copyload.i, %bb.iz ]
  %.sroa.042.0.i = phi i64 [ 4, %.thread92.i ], [ %.sroa.074.0.copyload.i, %bb.iz ]
  %i.yv = phi <2 x i32> [ splat (i32 255), %.thread92.i ], [ %i.yr, %bb.iz ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !3112
  invoke void @_RNvMNtCskXtk6F4WjxZ_4just6loaderNtB2_6Loader3new(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.z)
          to label %bb.ja unwind label %bb.jw, !noalias !3112

bb.ja:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultTNtNtCskXtk6F4WjxZ_4just5color5ColorNtNtBM_9verbosity9VerbosityERNtNtBM_5error5ErrorE17unwrap_or_defaultCs6SXwsBSuFuw_4just.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !3112
  %.sroa.618.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  br i1 %i.yu, label %bb.jb, label %bb.jc

bb.jb:                                            ; preds = %bb.ja
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.y, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.618.0..sroa_idx.i, i64 104, i1 false), !noalias !3112
end_hunk_1
