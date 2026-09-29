Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_def-69be49bbc58c11b8.hir_def.d5a59ee3d62324f7-cgu.08?download=true
inline.NumInlined: 3532
inline.NumDeleted: 1668
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_RNvMsa_NtCsjsNuU4yXw23_3fst3rawINtB5_15StreamWithStateRNtNtB7_15inner_automaton3StrE3newCsileJQcQObtj_7hir_def:bb.a
bb.cb:                                            ; preds = %bb.bp
  %i.tx = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.i, %bb.cb
  %eh.lpad-body = phi { ptr, i32 } [ %i.tx, %bb.cb ], [ %.pn44.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsjsNuU4yXw23_3fst3raw15StreamWithStateRNtNtBG_15inner_automaton3StrEECsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 dereferenceable(128) %i.l) #44
          to label %.critedge unwind label %bb.cc

_RNvMsa_NtCsjsNuU4yXw23_3fst3rawINtB5_15StreamWithStateRNtNtB7_15inner_automaton3StrE8seek_minCsileJQcQObtj_7hir_def.exit: ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %i.l, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  ret void

bb.cc:                                            ; preds = %bb.cf, %bb.ce, %.body
  %i.ty = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #46
  unreachable

bb.cd:                                            ; preds = %bb.c
  unreachable

bb.ce:                                            ; preds = %bb.a, %bb.c
  %i.tz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsjsNuU4yXw23_3fst3raw5BoundECsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 dereferenceable(32) %4) #44
          to label %bb.cf unwind label %bb.cc

.critedge:                                        ; preds = %.body, %bb.cf
  %.pn11 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.tz, %bb.cf ]
  resume { ptr, i32 } %.pn11

bb.cf:                                            ; preds = %bb.ce
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsjsNuU4yXw23_3fst3raw5BoundECsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 dereferenceable(32) %3) #44
          to label %.critedge unwind label %bb.cc
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEj4_E21reserve_one_uncheckedB1g_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !4239, !noalias !4240, !noundef !5 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 4
  %i.e = load ptr, ptr %0, align 8, !alias.scope !4239, !noalias !4240, !nonnull !5 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !4239, !noalias !4240 ; 3 uses
  %.sink10.i = select i1 %i.d, i64 %i.g, i64 %i.c ; 5 uses
  %i.h = icmp eq i64 %.sink10.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink10.i, 0
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.k = lshr i64 -1, %i.j
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 4 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4241)
  %i.n = icmp ult i64 %i.c, 5                     ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 2 uses
  %.not.i = icmp ult i64 %i.m, %.sink10.i
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #43, !noalias !4241
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = icmp ult i64 %.sroa.02.0, 4
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not42.i = icmp eq i64 %i.c, %i.m
  br i1 %.not42.i, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.p = shl nuw nsw i64 %i.m, 2                  ; 3 uses
  %or.cond.i = icmp ult i64 %.sroa.02.0, 2305843009213693951
  br i1 %or.cond.i, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEEB1b_.exit.i, label %bb.p, !prof !45

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEEB1b_.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEEB1b_.exit.i
  %i.q = icmp ult i64 %i.c, 2305843009213693952
  br i1 %i.q, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEEB1b_.exit44.i, label %bb.p, !prof !45

bb.j:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEEB1b_.exit.i
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !4241
  %i.r = tail call noundef align 4 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef 4) #48, !noalias !4241 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.o, label %bb.l

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEEB1b_.exit44.i: ; preds = %bb.i
  %i.t = shl nuw nsw i64 %.sink.i.i, 2
  %i.u = tail call noundef align 4 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.t, i64 noundef 4, i64 noundef %i.p) #48, !noalias !4241 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEEB1b_.exit44.i
  %.sroa.030.0.i = phi ptr [ %i.r, %bb.l ], [ %i.u, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEEB1b_.exit44.i ]
  store ptr %.sroa.030.0.i, ptr %0, align 8, !alias.scope !4241
  store i64 %.sink10.i, ptr %i.f, align 8, !alias.scope !4241
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !4241
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit

bb.l:                                             ; preds = %bb.j
  %i.w = shl nuw nsw i64 %i.c, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.r, ptr nonnull align 8 dereferenceable(24) %0, i64 %i.w, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.x = shl nuw nsw i64 %i.g, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(24) %0, ptr nonnull align 4 %i.e, i64 %i.x, i1 false)
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !4241
  %or.cond.i.i = icmp ult i64 %i.c, 2305843009213693952
  br i1 %or.cond.i.i, label %_RINvCsjpcu9PwIgok_8smallvec10deallocateINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEEB19_.exit.i, label %bb.n, !prof !45

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4242
  store i64 0, ptr %i.a, align 8, !noalias !4242
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #43, !noalias !4242
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10deallocateINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEEB19_.exit.i: ; preds = %bb.m
  %i.y = shl nuw nsw i64 %.sink.i.i, 2
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.y, i64 noundef 4) #48, !noalias !4241
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit

bb.o:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEEB1b_.exit44.i, %bb.j
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 4, i64 noundef %i.p) #42
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #43
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit: ; preds = %_RINvCsjpcu9PwIgok_8smallvec10deallocateINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEEB19_.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #43
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEj4_E13shrink_to_fitB2w_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.d = icmp ugt i64 %i.c, 4
  br i1 %i.d, label %bb.b, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !alias.scope !4248, !noalias !4249, !nonnull !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !4248, !noalias !4249 ; 5 uses
  %i.h = icmp ult i64 %i.g, 5
  br i1 %i.h, label %bb.g, label %bb.c

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit: ; preds = %bb.d, %_RINvCsjpcu9PwIgok_8smallvec10deallocateINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEB2p_.exit, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.b
  %i.i = icmp ugt i64 %i.c, %i.g
  br i1 %i.i, label %bb.d, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit

bb.d:                                             ; preds = %bb.c
  %i.j = tail call fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEj4_E8try_growB2w_(ptr noalias nofree noundef align 8 dereferenceable(56) %0, i64 noundef %i.g) ; 2 uses
  %i.k = extractvalue { i64, i64 } %i.j, 0        ; 2 uses
  switch i64 %i.k, label %bb.e [
    i64 -1, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit
    i64 0, label %bb.f
  ], !prof !4

bb.e:                                             ; preds = %bb.d
  %i.l = extractvalue { i64, i64 } %i.j, 1
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.k, i64 noundef %i.l) #42
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #43
  unreachable

bb.g:                                             ; preds = %bb.b
  %i.m = mul nuw nsw i64 %i.g, 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 4 %i.e, i64 %i.m, i1 false)
  %i.n = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.o = mul i64 %i.n, 12                         ; 2 uses
  %or.cond.i = icmp ult i64 %i.n, 768614336404564651
  br i1 %or.cond.i, label %_RINvCsjpcu9PwIgok_8smallvec10deallocateINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEB2p_.exit, label %bb.h, !prof !45

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4250
  store i64 0, ptr %i.a, align 8, !noalias !4250
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %i.p, align 8, !noalias !4250
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #43, !noalias !4250
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10deallocateINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEB2p_.exit: ; preds = %bb.g
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.o, i64 noundef 4) #48
  store i64 %i.g, ptr %i.b, align 8
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEj4_E21reserve_one_uncheckedB2w_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %0) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !4254, !noalias !4255, !noundef !5 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !4254, !noalias !4255
  %.sink10.i = select i1 %i.c, i64 %i.e, i64 %i.b ; 3 uses
  %i.f = icmp eq i64 %.sink10.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink10.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEj4_E8try_growB2w_(ptr noalias nofree noundef align 8 dereferenceable(56) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit
    i64 0, label %bb.e
  ], !prof !4

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #42
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #43
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #43
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEj4_E8try_growB2w_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 8 uses
  %i.d = icmp ult i64 %i.c, 5                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 4
  %i.f = load ptr, ptr %0, align 8, !alias.scope !4261, !noalias !4262, !nonnull !5 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #43
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 5
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not43 = icmp eq i64 %i.c, %1
  br i1 %.not43, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.j = mul i64 %1, 12                           ; 5 uses
  %or.cond = icmp ult i64 %1, 768614336404564651
  br i1 %or.cond, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEB2r_.exit, label %bb.m, !prof !45

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEB2r_.exit: ; preds = %bb.f
  br i1 %i.d, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEB2r_.exit
  %i.k = mul i64 %.sink.i, 12                     ; 2 uses
  %or.cond62 = icmp ult i64 %i.c, 768614336404564651
  br i1 %or.cond62, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEB2r_.exit45, label %bb.m, !prof !45

bb.h:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEB2r_.exit
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48
  %i.l = tail call noundef align 4 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 4) #48 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.m, label %bb.j

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEB2r_.exit45: ; preds = %bb.g
  %i.n = tail call noundef align 4 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.k, i64 noundef 4, i64 noundef %i.j) #48 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEB2r_.exit45, %bb.j
  %.sroa.030.0 = phi ptr [ %i.l, %bb.j ], [ %i.n, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEB2r_.exit45 ]
  store ptr %.sroa.030.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.p = mul nuw nsw i64 %i.c, 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.l, ptr nonnull align 8 %0, i64 %i.p, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.q = mul nuw nsw i64 %.val, 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 4 %i.f, i64 %i.q, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %i.r = mul i64 %.sink.i, 12                     ; 2 uses
  %or.cond.i = icmp ult i64 %i.c, 768614336404564651
  br i1 %or.cond.i, label %_RINvCsjpcu9PwIgok_8smallvec10deallocateINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEB2p_.exit, label %bb.l, !prof !45

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4263
  store i64 0, ptr %i.a, align 8, !noalias !4263
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.r, ptr %i.s, align 8, !noalias !4263
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #43, !noalias !4263
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10deallocateINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEB2p_.exit: ; preds = %bb.k
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.r, i64 noundef 4) #48
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEB2r_.exit45, %bb.h, %_RINvCsjpcu9PwIgok_8smallvec10deallocateINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEB2p_.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsjpcu9PwIgok_8smallvec10deallocateINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEB2p_.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.j, %bb.h ], [ undef, %bb.e ], [ %i.j, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEB2r_.exit45 ], [ %i.k, %bb.g ], [ %i.j, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsjpcu9PwIgok_8smallvec10deallocateINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEB2p_.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 4, %bb.h ], [ -1, %bb.e ], [ 4, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayINtNtCshzWfHUSfYae_4core6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEB2r_.exit45 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtCsileJQcQObtj_7hir_def7MacroIdj2_E21reserve_one_uncheckedBK_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !alias.scope !4271, !noalias !4272, !noundef !5 ; 7 uses
  %i.c = icmp ugt i64 %i.b, 2                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !4271, !noalias !4272, !nonnull !5 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !4271, !noalias !4272
  %.sink10.i = select i1 %i.c, i64 %i.g, i64 %i.b ; 3 uses
  %i.h = icmp eq i64 %.sink10.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink10.i, 0
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.k = lshr i64 -1, %i.j
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 4 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4273)
  %i.n = icmp ult i64 %i.b, 3                     ; 2 uses
  %.sink9.idx.i.i = select i1 %i.c, i64 16, i64 0
  %.sink9.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9.idx.i.i
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 2) ; 2 uses
  %i.o = load i64, ptr %.sink9.i.i, align 8, !alias.scope !4273, !noundef !5 ; 5 uses
  %.not.i = icmp ult i64 %i.m, %i.o
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #43, !noalias !4273
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.p = icmp ult i64 %.sroa.02.0, 2
  br i1 %i.p, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not43.i = icmp eq i64 %i.b, %i.m
  br i1 %.not43.i, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.q = mul nuw nsw i64 %i.m, 12                 ; 3 uses
  %or.cond.i = icmp ult i64 %.sroa.02.0, 768614336404564650
  br i1 %or.cond.i, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtCsileJQcQObtj_7hir_def7MacroIdEBF_.exit.i, label %bb.p, !prof !45

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtCsileJQcQObtj_7hir_def7MacroIdEBF_.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtCsileJQcQObtj_7hir_def7MacroIdEBF_.exit.i
  %or.cond62.i = icmp ult i64 %i.b, 768614336404564651
  br i1 %or.cond62.i, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtCsileJQcQObtj_7hir_def7MacroIdEBF_.exit45.i, label %bb.p, !prof !45

bb.j:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtCsileJQcQObtj_7hir_def7MacroIdEBF_.exit.i
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !4273
  %i.r = tail call noundef align 4 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.q, i64 noundef 4) #48, !noalias !4273 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.o, label %bb.l

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtCsileJQcQObtj_7hir_def7MacroIdEBF_.exit45.i: ; preds = %bb.i
  %i.t = mul nuw i64 %.sink.i.i, 12
  %i.u = tail call noundef align 4 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.t, i64 noundef 4, i64 noundef %i.q) #48, !noalias !4273 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtCsileJQcQObtj_7hir_def7MacroIdEBF_.exit45.i
  %.sroa.030.0.i = phi ptr [ %i.r, %bb.l ], [ %i.u, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtCsileJQcQObtj_7hir_def7MacroIdEBF_.exit45.i ]
  store ptr %.sroa.030.0.i, ptr %i.d, align 8, !alias.scope !4273
  store i64 %i.o, ptr %i.f, align 8, !alias.scope !4273
  store i64 %i.m, ptr %0, align 8, !alias.scope !4273
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit

bb.l:                                             ; preds = %bb.j
  %i.w = mul nuw nsw i64 %i.o, 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.r, ptr nonnull align 8 %i.d, i64 %i.w, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.x = mul nuw nsw i64 %i.o, 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.d, ptr nonnull align 4 %i.e, i64 %i.x, i1 false)
  store i64 %i.o, ptr %0, align 8, !alias.scope !4273
  %i.y = mul i64 %.sink.i.i, 12                   ; 2 uses
  %or.cond.i.i = icmp ult i64 %i.b, 768614336404564651
  br i1 %or.cond.i.i, label %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtCsileJQcQObtj_7hir_def7MacroIdEBD_.exit.i, label %bb.n, !prof !45

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4274
  store i64 0, ptr %i.a, align 8, !noalias !4274
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.y, ptr %i.z, align 8, !noalias !4274
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #43, !noalias !4274
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10deallocateNtCsileJQcQObtj_7hir_def7MacroIdEBD_.exit.i: ; preds = %bb.m
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.y, i64 noundef 4) #48, !noalias !4273
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit

bb.o:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtCsileJQcQObtj_7hir_def7MacroIdEBF_.exit45.i, %bb.j
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 4, i64 noundef %i.q) #42
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #43
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit: ; preds = %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtCsileJQcQObtj_7hir_def7MacroIdEBD_.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #43
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E13shrink_to_fitCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.d = icmp ugt i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !alias.scope !4280, !noalias !4281, !nonnull !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !4280, !noalias !4281 ; 5 uses
  %i.h = icmp ult i64 %i.g, 2
  br i1 %i.h, label %bb.d, label %bb.c

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit: ; preds = %bb.f, %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def.exit, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.b
  %i.i = icmp ugt i64 %i.c, %i.g
  br i1 %i.i, label %bb.f, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit

bb.d:                                             ; preds = %bb.b
  %i.j = shl nuw nsw i64 %i.g, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.e, i64 %i.j, i1 false)
  %i.k = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %or.cond.i = icmp ult i64 %i.k, 1152921504606846976
  br i1 %or.cond.i, label %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def.exit, label %bb.e, !prof !45

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4282
  store i64 0, ptr %i.a, align 8, !noalias !4282
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #43, !noalias !4282
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def.exit: ; preds = %bb.d
  %i.l = shl nuw nsw i64 %i.k, 3
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.l, i64 noundef 8) #48
  store i64 %i.g, ptr %i.b, align 8
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit

bb.f:                                             ; preds = %bb.c
  %i.m = tail call fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E8try_growCsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %i.g) ; 2 uses
  %i.n = extractvalue { i64, i64 } %i.m, 0        ; 2 uses
  switch i64 %i.n, label %bb.g [
    i64 -1, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit
    i64 0, label %bb.h
  ], !prof !4

bb.g:                                             ; preds = %bb.f
  %i.o = extractvalue { i64, i64 } %i.m, 1
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.n, i64 noundef %i.o) #42
  unreachable

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #43
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E21reserve_one_uncheckedCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !4286, !noalias !4287, !noundef !5 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !4286, !noalias !4287
  %.sink10.i = select i1 %i.c, i64 %i.e, i64 %i.b ; 3 uses
  %i.f = icmp eq i64 %.sink10.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink10.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E8try_growCsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit
    i64 0, label %bb.e
  ], !prof !4

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #42
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #43
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #43
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E8try_growCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 8 uses
  %i.d = icmp ult i64 %i.c, 2                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 1
  %i.f = load ptr, ptr %0, align 8, !alias.scope !4293, !noalias !4294, !nonnull !5 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #43
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 2
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not48 = icmp eq i64 %i.c, %1
  br i1 %.not48, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.j = shl nuw nsw i64 %1, 3                    ; 4 uses
  %or.cond = icmp ult i64 %1, 1152921504606846976
  br i1 %or.cond, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def.exit, label %bb.m, !prof !45

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def.exit: ; preds = %bb.f
  br i1 %i.d, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def.exit
  %i.k = icmp ult i64 %i.c, 1152921504606846976
  br i1 %i.k, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def.exit50, label %bb.m, !prof !45

bb.h:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def.exit
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48
  %i.l = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 8) #48 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.m, label %bb.j

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def.exit50: ; preds = %bb.g
  %i.n = shl nuw nsw i64 %.sink.i, 3
  %i.o = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.n, i64 noundef 8, i64 noundef %i.j) #48 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def.exit50, %bb.j
  %.sroa.031.0 = phi ptr [ %i.l, %bb.j ], [ %i.o, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def.exit50 ]
  store ptr %.sroa.031.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.q = shl nuw nsw i64 %i.c, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %0, i64 %i.q, i1 false)
end_hunk_0
begin_hunk_1_@_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsileJQcQObtj_7hir_def10expr_store8ExprRootj1_E8try_growBM_:bb.a
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 8 uses
  %i.d = icmp ult i64 %i.c, 2                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 1
  %i.f = load ptr, ptr %0, align 8, !alias.scope !4337, !noalias !4338, !nonnull !5 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #43
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 2
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not42 = icmp eq i64 %i.c, %1
  br i1 %.not42, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.j = shl nuw nsw i64 %1, 4                    ; 4 uses
  %or.cond = icmp ult i64 %1, 576460752303423488
  br i1 %or.cond, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10expr_store8ExprRootEBH_.exit, label %bb.m, !prof !45

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10expr_store8ExprRootEBH_.exit: ; preds = %bb.f
  br i1 %i.d, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10expr_store8ExprRootEBH_.exit
  %i.k = icmp ult i64 %i.c, 576460752303423488
  br i1 %i.k, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10expr_store8ExprRootEBH_.exit44, label %bb.m, !prof !45

bb.h:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10expr_store8ExprRootEBH_.exit
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48
  %i.l = tail call noundef align 4 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 4) #48 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.m, label %bb.j

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10expr_store8ExprRootEBH_.exit44: ; preds = %bb.g
  %i.n = shl nuw nsw i64 %.sink.i, 4
  %i.o = tail call noundef align 4 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.n, i64 noundef 4, i64 noundef %i.j) #48 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10expr_store8ExprRootEBH_.exit44, %bb.j
  %.sroa.030.0 = phi ptr [ %i.l, %bb.j ], [ %i.o, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10expr_store8ExprRootEBH_.exit44 ]
  store ptr %.sroa.030.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.q = shl nuw nsw i64 %i.c, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.l, ptr nonnull align 8 %0, i64 %i.q, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.r = shl nuw nsw i64 %.val, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 4 %i.f, i64 %i.r, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %or.cond.i = icmp ult i64 %i.c, 576460752303423488
  br i1 %or.cond.i, label %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsileJQcQObtj_7hir_def10expr_store8ExprRootEBF_.exit, label %bb.l, !prof !45

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4339
  store i64 0, ptr %i.a, align 8, !noalias !4339
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #43, !noalias !4339
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsileJQcQObtj_7hir_def10expr_store8ExprRootEBF_.exit: ; preds = %bb.k
  %i.s = shl nuw nsw i64 %.sink.i, 4
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.s, i64 noundef 4) #48
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10expr_store8ExprRootEBH_.exit44, %bb.h, %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsileJQcQObtj_7hir_def10expr_store8ExprRootEBF_.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsileJQcQObtj_7hir_def10expr_store8ExprRootEBF_.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.j, %bb.h ], [ undef, %bb.e ], [ %i.j, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10expr_store8ExprRootEBH_.exit44 ], [ undef, %bb.g ], [ undef, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsileJQcQObtj_7hir_def10expr_store8ExprRootEBF_.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 4, %bb.h ], [ -1, %bb.e ], [ 4, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10expr_store8ExprRootEBH_.exit44 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoj1_E17try_reserve_exactBM_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !alias.scope !4343, !noalias !4344, !noundef !5 ; 2 uses
  %i.b = icmp ugt i64 %i.a, 1
  %.sink9.idx.i = select i1 %i.b, i64 16, i64 0
  %.sink9.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9.idx.i
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.a, i64 1)
  %i.c = load i64, ptr %.sink9.i, align 8, !noundef !5 ; 3 uses
  %i.d = sub i64 %.sink.i, %i.c
  %.not = icmp ult i64 %i.d, %1
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = add i64 %i.c, %1                         ; 2 uses
  %i.f = icmp ult i64 %i.e, %i.c
  br i1 %i.f, label %bb.d, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  %i.g = tail call fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoj1_E8try_growBM_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %i.e) ; 2 uses
  %i.h = extractvalue { i64, i64 } %i.g, 0
  %i.i = extractvalue { i64, i64 } %i.g, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.4.0 = phi i64 [ %i.i, %bb.c ], [ undef, %bb.a ], [ undef, %bb.b ]
  %.sroa.0.0 = phi i64 [ %i.h, %bb.c ], [ -1, %bb.a ], [ 0, %bb.b ]
  %i.j = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.k = insertvalue { i64, i64 } %i.j, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.k
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoj1_E21reserve_one_uncheckedBM_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #12 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !alias.scope !4348, !noalias !4349, !noundef !5 ; 2 uses
  %i.b = icmp ugt i64 %i.a, 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !4348, !noalias !4349
  %.sink10.i = select i1 %i.b, i64 %i.d, i64 %i.a ; 3 uses
  %i.e = icmp eq i64 %.sink10.i, -1
  br i1 %i.e, label %bb.f, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %.sink10.i, 0
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.h = lshr i64 -1, %i.g
  %.sroa.02.0 = select i1 %i.f, i64 0, i64 %i.h   ; 2 uses
  %i.i = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.i, label %bb.f, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  %i.j = add nuw i64 %.sroa.02.0, 1
  %i.k = tail call fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoj1_E8try_growBM_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %i.j) ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0        ; 2 uses
  switch i64 %i.l, label %bb.d [
    i64 -1, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit
    i64 0, label %bb.e
  ], !prof !4

bb.d:                                             ; preds = %bb.c
  %i.m = extractvalue { i64, i64 } %i.k, 1
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.l, i64 noundef %i.m) #42
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #43
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #43
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoj1_E8try_growBM_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !noundef !5   ; 6 uses
  %i.c = icmp ult i64 %i.b, 2                     ; 2 uses
  %i.d = icmp ugt i64 %i.b, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !4355, !noalias !4356, !nonnull !5 ; 3 uses
  %.sink9.idx.i = select i1 %i.d, i64 16, i64 0
  %.sink9.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9.idx.i
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 1) ; 2 uses
  %i.g = load i64, ptr %.sink9.i, align 8, !noundef !5 ; 5 uses
  %.not = icmp ult i64 %1, %i.g
  br i1 %.not, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #43
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %1, 2
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not43 = icmp eq i64 %i.b, %1
  br i1 %.not43, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.c, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.i = mul i64 %1, 24                           ; 5 uses
  %or.cond = icmp ult i64 %1, 384307168202282326
  br i1 %or.cond, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoEBH_.exit, label %bb.m, !prof !45

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoEBH_.exit: ; preds = %bb.f
  br i1 %i.c, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoEBH_.exit
  %i.j = mul i64 %.sink.i, 24                     ; 2 uses
  %or.cond62 = icmp ult i64 %i.b, 384307168202282326
  br i1 %or.cond62, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoEBH_.exit45, label %bb.m, !prof !45

bb.h:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoEBH_.exit
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48
  %i.k = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef 8) #48 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.m, label %bb.j

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoEBH_.exit45: ; preds = %bb.g
  %i.m = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.j, i64 noundef 8, i64 noundef %i.i) #48 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoEBH_.exit45, %bb.j
  %.sroa.030.0 = phi ptr [ %i.k, %bb.j ], [ %i.m, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoEBH_.exit45 ]
  store ptr %.sroa.030.0, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %1, ptr %0, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.o = mul nuw nsw i64 %i.g, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.k, ptr nonnull align 8 %i.e, i64 %i.o, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.p = mul nuw nsw i64 %i.g, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.e, ptr nonnull align 8 %i.f, i64 %i.p, i1 false)
  store i64 %i.g, ptr %0, align 8
  %i.q = mul i64 %.sink.i, 24                     ; 2 uses
  %or.cond.i = icmp ult i64 %i.b, 384307168202282326
  br i1 %or.cond.i, label %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoEBF_.exit, label %bb.l, !prof !45

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4357
  store i64 0, ptr %i.a, align 8, !noalias !4357
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.q, ptr %i.r, align 8, !noalias !4357
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #43, !noalias !4357
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoEBF_.exit: ; preds = %bb.k
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.q, i64 noundef 8) #48
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoEBH_.exit45, %bb.h, %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoEBF_.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoEBF_.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.i, %bb.h ], [ undef, %bb.e ], [ %i.i, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoEBH_.exit45 ], [ %i.j, %bb.g ], [ %i.i, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoEBF_.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 8, %bb.h ], [ -1, %bb.e ], [ 8, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10import_map10ImportInfoEBH_.exit45 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.s = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.t = insertvalue { i64, i64 } %i.s, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.t
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsileJQcQObtj_7hir_def10item_scope21DeriveMacroInvocationj1_E21reserve_one_uncheckedBM_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %0) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !alias.scope !4365, !noalias !4366, !noundef !5 ; 7 uses
  %i.c = icmp ugt i64 %i.b, 1                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !4365, !noalias !4366, !nonnull !5 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !4365, !noalias !4366
  %.sink10.i = select i1 %i.c, i64 %i.g, i64 %i.b ; 3 uses
  %i.h = icmp eq i64 %.sink10.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink10.i, 0                ; 2 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.k = lshr i64 -1, %i.j                        ; 2 uses
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 2 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4367)
  %i.n = icmp ult i64 %i.b, 2                     ; 2 uses
  %.sink9.idx.i.i = select i1 %i.c, i64 16, i64 0
  %.sink9.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9.idx.i.i
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 1) ; 2 uses
  %i.o = load i64, ptr %.sink9.i.i, align 8, !alias.scope !4367, !noundef !5 ; 5 uses
  %.not.i = icmp ult i64 %i.m, %i.o
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #43, !noalias !4367
  unreachable

bb.e:                                             ; preds = %bb.c
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not43.i = icmp eq i64 %i.b, %i.m
  br i1 %.not43.i, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.p = mul nuw nsw i64 %i.m, 72                 ; 3 uses
  %or.cond.i = icmp ult i64 %i.k, 128102389400760775
  br i1 %or.cond.i, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10item_scope21DeriveMacroInvocationEBH_.exit.i, label %bb.p, !prof !45

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10item_scope21DeriveMacroInvocationEBH_.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10item_scope21DeriveMacroInvocationEBH_.exit.i
  %or.cond62.i = icmp ult i64 %i.b, 128102389400760776
  br i1 %or.cond62.i, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10item_scope21DeriveMacroInvocationEBH_.exit45.i, label %bb.p, !prof !45

bb.j:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10item_scope21DeriveMacroInvocationEBH_.exit.i
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !4367
  %i.q = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef 8) #48, !noalias !4367 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.o, label %bb.l

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10item_scope21DeriveMacroInvocationEBH_.exit45.i: ; preds = %bb.i
  %i.s = mul nuw i64 %.sink.i.i, 72
  %i.t = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.s, i64 noundef 8, i64 noundef %i.p) #48, !noalias !4367 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10item_scope21DeriveMacroInvocationEBH_.exit45.i
  %.sroa.030.0.i = phi ptr [ %i.q, %bb.l ], [ %i.t, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10item_scope21DeriveMacroInvocationEBH_.exit45.i ]
  store ptr %.sroa.030.0.i, ptr %i.d, align 8, !alias.scope !4367
  store i64 %i.o, ptr %i.f, align 8, !alias.scope !4367
  store i64 %i.m, ptr %0, align 8, !alias.scope !4367
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit

bb.l:                                             ; preds = %bb.j
  %i.v = mul nuw nsw i64 %i.o, 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull align 8 %i.d, i64 %i.v, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.w = mul nuw nsw i64 %i.o, 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.d, ptr nonnull align 8 %i.e, i64 %i.w, i1 false)
  store i64 %i.o, ptr %0, align 8, !alias.scope !4367
  %i.x = mul i64 %.sink.i.i, 72                   ; 2 uses
  %or.cond.i.i = icmp ult i64 %i.b, 128102389400760776
  br i1 %or.cond.i.i, label %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsileJQcQObtj_7hir_def10item_scope21DeriveMacroInvocationEBF_.exit.i, label %bb.n, !prof !45

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4368
  store i64 0, ptr %i.a, align 8, !noalias !4368
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.x, ptr %i.y, align 8, !noalias !4368
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #43, !noalias !4368
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsileJQcQObtj_7hir_def10item_scope21DeriveMacroInvocationEBF_.exit.i: ; preds = %bb.m
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.x, i64 noundef 8) #48, !noalias !4367
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit

bb.o:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def10item_scope21DeriveMacroInvocationEBH_.exit45.i, %bb.j
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.p) #42
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #43
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit: ; preds = %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsileJQcQObtj_7hir_def10item_scope21DeriveMacroInvocationEBF_.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #43
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsileJQcQObtj_7hir_def5attrs7DocAtomj1_E21reserve_one_uncheckedBM_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %0) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !4376, !noalias !4377, !noundef !5 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 1
  %i.e = load ptr, ptr %0, align 8, !alias.scope !4376, !noalias !4377, !nonnull !5 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !4376, !noalias !4377 ; 3 uses
  %.sink10.i = select i1 %i.d, i64 %i.g, i64 %i.c ; 5 uses
  %i.h = icmp eq i64 %.sink10.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink10.i, 0                ; 2 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.k = lshr i64 -1, %i.j                        ; 2 uses
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 2 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4378)
  %i.n = icmp ult i64 %i.c, 2                     ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1) ; 2 uses
  %.not.i = icmp ult i64 %i.m, %.sink10.i
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #43, !noalias !4378
  unreachable

bb.e:                                             ; preds = %bb.c
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not43.i = icmp eq i64 %i.c, %i.m
  br i1 %.not43.i, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.o = mul nuw nsw i64 %i.m, 48                 ; 3 uses
  %or.cond.i = icmp ult i64 %i.k, 192153584101141162
  br i1 %or.cond.i, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def5attrs7DocAtomEBH_.exit.i, label %bb.p, !prof !45

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def5attrs7DocAtomEBH_.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def5attrs7DocAtomEBH_.exit.i
  %or.cond62.i = icmp ult i64 %i.c, 192153584101141163
  br i1 %or.cond62.i, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def5attrs7DocAtomEBH_.exit45.i, label %bb.p, !prof !45

bb.j:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def5attrs7DocAtomEBH_.exit.i
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !4378
  %i.p = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.o, i64 noundef 8) #48, !noalias !4378 ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.o, label %bb.l

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def5attrs7DocAtomEBH_.exit45.i: ; preds = %bb.i
  %i.r = mul nuw i64 %.sink.i.i, 48
  %i.s = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.r, i64 noundef 8, i64 noundef %i.o) #48, !noalias !4378 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def5attrs7DocAtomEBH_.exit45.i
  %.sroa.030.0.i = phi ptr [ %i.p, %bb.l ], [ %i.s, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def5attrs7DocAtomEBH_.exit45.i ]
  store ptr %.sroa.030.0.i, ptr %0, align 8, !alias.scope !4378
  store i64 %.sink10.i, ptr %i.f, align 8, !alias.scope !4378
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !4378
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit

bb.l:                                             ; preds = %bb.j
  %i.u = mul nuw nsw i64 %i.c, 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr nonnull align 8 dereferenceable(56) %0, i64 %i.u, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.v = mul nuw nsw i64 %i.g, 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(56) %0, ptr nonnull align 8 %i.e, i64 %i.v, i1 false)
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !4378
  %i.w = mul i64 %.sink.i.i, 48                   ; 2 uses
  %or.cond.i.i = icmp ult i64 %i.c, 192153584101141163
  br i1 %or.cond.i.i, label %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsileJQcQObtj_7hir_def5attrs7DocAtomEBF_.exit.i, label %bb.n, !prof !45

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4379
  store i64 0, ptr %i.a, align 8, !noalias !4379
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.w, ptr %i.x, align 8, !noalias !4379
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #43, !noalias !4379
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsileJQcQObtj_7hir_def5attrs7DocAtomEBF_.exit.i: ; preds = %bb.m
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.w, i64 noundef 8) #48, !noalias !4378
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit

bb.o:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def5attrs7DocAtomEBH_.exit45.i, %bb.j
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.o) #42
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #43
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit: ; preds = %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsileJQcQObtj_7hir_def5attrs7DocAtomEBF_.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #43
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsileJQcQObtj_7hir_def8resolver8ScopeDefj1_E21reserve_one_uncheckedBM_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !alias.scope !4387, !noalias !4388, !noundef !5 ; 7 uses
  %i.c = icmp ugt i64 %i.b, 1                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !4387, !noalias !4388, !nonnull !5 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !4387, !noalias !4388
  %.sink10.i = select i1 %i.c, i64 %i.g, i64 %i.b ; 3 uses
  %i.h = icmp eq i64 %.sink10.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink10.i, 0                ; 2 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.k = lshr i64 -1, %i.j                        ; 2 uses
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 2 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4389)
  %i.n = icmp ult i64 %i.b, 2                     ; 2 uses
  %.sink9.idx.i.i = select i1 %i.c, i64 16, i64 0
  %.sink9.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9.idx.i.i
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 1) ; 2 uses
  %i.o = load i64, ptr %.sink9.i.i, align 8, !alias.scope !4389, !noundef !5 ; 5 uses
  %.not.i = icmp ult i64 %i.m, %i.o
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #43, !noalias !4389
  unreachable

bb.e:                                             ; preds = %bb.c
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not43.i = icmp eq i64 %i.b, %i.m
  br i1 %.not43.i, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.p = mul nuw nsw i64 %i.m, 20                 ; 3 uses
  %or.cond.i = icmp ult i64 %i.k, 461168601842738790
  br i1 %or.cond.i, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def8resolver8ScopeDefEBH_.exit.i, label %bb.p, !prof !45

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def8resolver8ScopeDefEBH_.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def8resolver8ScopeDefEBH_.exit.i
  %or.cond62.i = icmp ult i64 %i.b, 461168601842738791
  br i1 %or.cond62.i, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def8resolver8ScopeDefEBH_.exit45.i, label %bb.p, !prof !45

bb.j:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def8resolver8ScopeDefEBH_.exit.i
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !4389
  %i.q = tail call noundef align 4 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef 4) #48, !noalias !4389 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.o, label %bb.l

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def8resolver8ScopeDefEBH_.exit45.i: ; preds = %bb.i
  %i.s = mul nuw i64 %.sink.i.i, 20
  %i.t = tail call noundef align 4 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.s, i64 noundef 4, i64 noundef %i.p) #48, !noalias !4389 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def8resolver8ScopeDefEBH_.exit45.i
  %.sroa.030.0.i = phi ptr [ %i.q, %bb.l ], [ %i.t, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def8resolver8ScopeDefEBH_.exit45.i ]
  store ptr %.sroa.030.0.i, ptr %i.d, align 8, !alias.scope !4389
  store i64 %i.o, ptr %i.f, align 8, !alias.scope !4389
  store i64 %i.m, ptr %0, align 8, !alias.scope !4389
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit

bb.l:                                             ; preds = %bb.j
  %i.v = mul nuw nsw i64 %i.o, 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.q, ptr nonnull align 8 %i.d, i64 %i.v, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.w = mul nuw nsw i64 %i.o, 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.d, ptr nonnull align 4 %i.e, i64 %i.w, i1 false)
  store i64 %i.o, ptr %0, align 8, !alias.scope !4389
  %i.x = mul i64 %.sink.i.i, 20                   ; 2 uses
  %or.cond.i.i = icmp ult i64 %i.b, 461168601842738791
  br i1 %or.cond.i.i, label %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsileJQcQObtj_7hir_def8resolver8ScopeDefEBF_.exit.i, label %bb.n, !prof !45

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4390
  store i64 0, ptr %i.a, align 8, !noalias !4390
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.x, ptr %i.y, align 8, !noalias !4390
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #43, !noalias !4390
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsileJQcQObtj_7hir_def8resolver8ScopeDefEBF_.exit.i: ; preds = %bb.m
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.x, i64 noundef 4) #48, !noalias !4389
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit

bb.o:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsileJQcQObtj_7hir_def8resolver8ScopeDefEBH_.exit45.i, %bb.j
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 4, i64 noundef %i.p) #42
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #43
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit: ; preds = %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsileJQcQObtj_7hir_def8resolver8ScopeDefEBF_.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #43
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecATNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBL_4AttrEj1_E21reserve_one_uncheckedCsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #12 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !alias.scope !4394, !noalias !4395, !noundef !5 ; 2 uses
  %i.b = icmp ugt i64 %i.a, 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !4394, !noalias !4395
  %.sink10.i = select i1 %i.b, i64 %i.d, i64 %i.a ; 3 uses
  %i.e = icmp eq i64 %.sink10.i, -1
  br i1 %i.e, label %bb.f, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %.sink10.i, 0
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.h = lshr i64 -1, %i.g
  %.sroa.02.0 = select i1 %i.f, i64 0, i64 %i.h   ; 2 uses
  %i.i = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.i, label %bb.f, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  %i.j = add nuw i64 %.sroa.02.0, 1
  %i.k = tail call fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecATNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBL_4AttrEj1_E8try_growCsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %i.j) ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0        ; 2 uses
  switch i64 %i.l, label %bb.d [
    i64 -1, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit
    i64 0, label %bb.e
  ], !prof !4

bb.d:                                             ; preds = %bb.c
  %i.m = extractvalue { i64, i64 } %i.k, 1
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.l, i64 noundef %i.m) #42
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #43
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #43
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecATNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBL_4AttrEj1_E8try_growCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !noundef !5   ; 6 uses
  %i.c = icmp ult i64 %i.b, 2                     ; 2 uses
  %i.d = icmp ugt i64 %i.b, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !4401, !noalias !4402, !nonnull !5 ; 3 uses
  %.sink9.idx.i = select i1 %i.d, i64 16, i64 0
  %.sink9.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9.idx.i
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 1) ; 2 uses
  %i.g = load i64, ptr %.sink9.i, align 8, !noundef !5 ; 5 uses
  %.not = icmp ult i64 %1, %i.g
  br i1 %.not, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #43
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %1, 2
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not43 = icmp eq i64 %i.b, %1
  br i1 %.not43, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.c, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.i = mul i64 %1, 24                           ; 5 uses
  %or.cond = icmp ult i64 %1, 384307168202282326
  br i1 %or.cond, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBG_4AttrEECsileJQcQObtj_7hir_def.exit, label %bb.m, !prof !45

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBG_4AttrEECsileJQcQObtj_7hir_def.exit: ; preds = %bb.f
  br i1 %i.c, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBG_4AttrEECsileJQcQObtj_7hir_def.exit
  %i.j = mul i64 %.sink.i, 24                     ; 2 uses
  %or.cond62 = icmp ult i64 %i.b, 384307168202282326
  br i1 %or.cond62, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBG_4AttrEECsileJQcQObtj_7hir_def.exit45, label %bb.m, !prof !45

bb.h:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBG_4AttrEECsileJQcQObtj_7hir_def.exit
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48
  %i.k = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef 8) #48 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.m, label %bb.j

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBG_4AttrEECsileJQcQObtj_7hir_def.exit45: ; preds = %bb.g
  %i.m = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.j, i64 noundef 8, i64 noundef %i.i) #48 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBG_4AttrEECsileJQcQObtj_7hir_def.exit45, %bb.j
  %.sroa.030.0 = phi ptr [ %i.k, %bb.j ], [ %i.m, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBG_4AttrEECsileJQcQObtj_7hir_def.exit45 ]
  store ptr %.sroa.030.0, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %1, ptr %0, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.o = mul nuw nsw i64 %i.g, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.k, ptr nonnull align 8 %i.e, i64 %i.o, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.p = mul nuw nsw i64 %i.g, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.e, ptr nonnull align 8 %i.f, i64 %i.p, i1 false)
  store i64 %i.g, ptr %0, align 8
  %i.q = mul i64 %.sink.i, 24                     ; 2 uses
  %or.cond.i = icmp ult i64 %i.b, 384307168202282326
  br i1 %or.cond.i, label %_RINvCsjpcu9PwIgok_8smallvec10deallocateTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBE_4AttrEECsileJQcQObtj_7hir_def.exit, label %bb.l, !prof !45

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4403
  store i64 0, ptr %i.a, align 8, !noalias !4403
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.q, ptr %i.r, align 8, !noalias !4403
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #43, !noalias !4403
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10deallocateTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBE_4AttrEECsileJQcQObtj_7hir_def.exit: ; preds = %bb.k
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.q, i64 noundef 8) #48
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBG_4AttrEECsileJQcQObtj_7hir_def.exit45, %bb.h, %_RINvCsjpcu9PwIgok_8smallvec10deallocateTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBE_4AttrEECsileJQcQObtj_7hir_def.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsjpcu9PwIgok_8smallvec10deallocateTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBE_4AttrEECsileJQcQObtj_7hir_def.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.i, %bb.h ], [ undef, %bb.e ], [ %i.i, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBG_4AttrEECsileJQcQObtj_7hir_def.exit45 ], [ %i.j, %bb.g ], [ %i.i, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsjpcu9PwIgok_8smallvec10deallocateTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBE_4AttrEECsileJQcQObtj_7hir_def.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 8, %bb.h ], [ -1, %bb.e ], [ 8, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBG_4AttrEECsileJQcQObtj_7hir_def.exit45 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.s = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.t = insertvalue { i64, i64 } %i.s, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.t
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecATRNtNtCsileJQcQObtj_7hir_def7nameres6DefMapNtBO_10ModuleIdLtEj1_E21reserve_one_uncheckedBO_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !4411, !noalias !4412, !noundef !5 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 1
  %i.e = load ptr, ptr %0, align 8, !alias.scope !4411, !noalias !4412, !nonnull !5 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !4411, !noalias !4412 ; 3 uses
  %.sink10.i = select i1 %i.d, i64 %i.g, i64 %i.c ; 5 uses
  %i.h = icmp eq i64 %.sink10.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink10.i, 0                ; 2 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.k = lshr i64 -1, %i.j                        ; 2 uses
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 2 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4413)
  %i.n = icmp ult i64 %i.c, 2                     ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1) ; 2 uses
  %.not.i = icmp ult i64 %i.m, %.sink10.i
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #43, !noalias !4413
  unreachable

bb.e:                                             ; preds = %bb.c
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not42.i = icmp eq i64 %i.c, %i.m
  br i1 %.not42.i, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.o = shl nuw nsw i64 %i.m, 4                  ; 3 uses
  %or.cond.i = icmp ult i64 %i.k, 576460752303423487
  br i1 %or.cond.i, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTRNtNtCsileJQcQObtj_7hir_def7nameres6DefMapNtBJ_10ModuleIdLtEEBJ_.exit.i, label %bb.p, !prof !45

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTRNtNtCsileJQcQObtj_7hir_def7nameres6DefMapNtBJ_10ModuleIdLtEEBJ_.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTRNtNtCsileJQcQObtj_7hir_def7nameres6DefMapNtBJ_10ModuleIdLtEEBJ_.exit.i
  %i.p = icmp ult i64 %i.c, 576460752303423488
  br i1 %i.p, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTRNtNtCsileJQcQObtj_7hir_def7nameres6DefMapNtBJ_10ModuleIdLtEEBJ_.exit44.i, label %bb.p, !prof !45

bb.j:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTRNtNtCsileJQcQObtj_7hir_def7nameres6DefMapNtBJ_10ModuleIdLtEEBJ_.exit.i
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !4413
  %i.q = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.o, i64 noundef 8) #48, !noalias !4413 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.o, label %bb.l

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTRNtNtCsileJQcQObtj_7hir_def7nameres6DefMapNtBJ_10ModuleIdLtEEBJ_.exit44.i: ; preds = %bb.i
  %i.s = shl nuw nsw i64 %.sink.i.i, 4
  %i.t = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.s, i64 noundef 8, i64 noundef %i.o) #48, !noalias !4413 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTRNtNtCsileJQcQObtj_7hir_def7nameres6DefMapNtBJ_10ModuleIdLtEEBJ_.exit44.i
  %.sroa.030.0.i = phi ptr [ %i.q, %bb.l ], [ %i.t, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTRNtNtCsileJQcQObtj_7hir_def7nameres6DefMapNtBJ_10ModuleIdLtEEBJ_.exit44.i ]
  store ptr %.sroa.030.0.i, ptr %0, align 8, !alias.scope !4413
  store i64 %.sink10.i, ptr %i.f, align 8, !alias.scope !4413
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !4413
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit

bb.l:                                             ; preds = %bb.j
  %i.v = shl nuw nsw i64 %i.c, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull align 8 dereferenceable(24) %0, i64 %i.v, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.w = shl nuw nsw i64 %i.g, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(24) %0, ptr nonnull align 8 %i.e, i64 %i.w, i1 false)
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !4413
  %or.cond.i.i = icmp ult i64 %i.c, 576460752303423488
  br i1 %or.cond.i.i, label %_RINvCsjpcu9PwIgok_8smallvec10deallocateTRNtNtCsileJQcQObtj_7hir_def7nameres6DefMapNtBH_10ModuleIdLtEEBH_.exit.i, label %bb.n, !prof !45

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4414
  store i64 0, ptr %i.a, align 8, !noalias !4414
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #43, !noalias !4414
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10deallocateTRNtNtCsileJQcQObtj_7hir_def7nameres6DefMapNtBH_10ModuleIdLtEEBH_.exit.i: ; preds = %bb.m
  %i.x = shl nuw nsw i64 %.sink.i.i, 4
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.x, i64 noundef 8) #48, !noalias !4413
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit

bb.o:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTRNtNtCsileJQcQObtj_7hir_def7nameres6DefMapNtBJ_10ModuleIdLtEEBJ_.exit44.i, %bb.j
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.o) #42
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #43
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit: ; preds = %_RINvCsjpcu9PwIgok_8smallvec10deallocateTRNtNtCsileJQcQObtj_7hir_def7nameres6DefMapNtBH_10ModuleIdLtEEBH_.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #43
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E17try_reserve_exactCsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 16 captures(none) dereferenceable(48) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 16, !alias.scope !4418, !noalias !4419, !noundef !5 ; 3 uses
  %i.c = icmp ugt i64 %i.b, 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 2)
  %.val = load i64, ptr %i.d, align 8
  %i.e = select i1 %i.c, i64 %.val, i64 %i.b      ; 3 uses
  %i.f = sub i64 %.sink.i, %i.e
  %.not = icmp ult i64 %i.f, %1
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.e, %1                         ; 2 uses
  %i.h = icmp ult i64 %i.g, %i.e
  br i1 %i.h, label %bb.d, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  %i.i = tail call fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E8try_growCsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 16 dereferenceable(48) %0, i64 noundef %i.g) ; 2 uses
  %i.j = extractvalue { i64, i64 } %i.i, 0
  %i.k = extractvalue { i64, i64 } %i.i, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.4.0 = phi i64 [ %i.k, %bb.c ], [ undef, %bb.a ], [ undef, %bb.b ]
  %.sroa.0.0 = phi i64 [ %i.j, %bb.c ], [ -1, %bb.a ], [ 0, %bb.b ]
  %i.l = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.m = insertvalue { i64, i64 } %i.l, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.m
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E21reserve_one_uncheckedCsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 16 captures(none) dereferenceable(48) %0) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 16, !alias.scope !4423, !noalias !4424, !noundef !5 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !4423, !noalias !4424
  %.sink10.i = select i1 %i.c, i64 %i.e, i64 %i.b ; 3 uses
  %i.f = icmp eq i64 %.sink10.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink10.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E8try_growCsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 16 dereferenceable(48) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsileJQcQObtj_7hir_def.exit
    i64 0, label %bb.e
  ], !prof !4

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #42
end_hunk_1
