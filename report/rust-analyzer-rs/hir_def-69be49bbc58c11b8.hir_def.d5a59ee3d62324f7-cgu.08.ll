Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_def-69be49bbc58c11b8.hir_def.d5a59ee3d62324f7-cgu.08?download=true
inline.NumInlined: 3532
inline.NumDeleted: 1668
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsileJQcQObtj_7hir_def10item_scope21DeriveMacroInvocationj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBM_:bb.a
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsileJQcQObtj_7hir_def10item_scope21DeriveMacroInvocationEEB1c_.exit: ; preds = %bb.f
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsileJQcQObtj_7hir_def10item_scope21DeriveMacroInvocationENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCsileJQcQObtj_7hir_def10item_scope21DeriveMacroInvocationEBG_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCsileJQcQObtj_7hir_def10item_scope21DeriveMacroInvocationEBG_.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtB4_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEB2G_.exit.i.i.i.i, %.lr.ph.i, %bb.b, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsileJQcQObtj_7hir_def10item_scope21DeriveMacroInvocationEEB1c_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsileJQcQObtj_7hir_def5attrs7DocAtomj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBM_(ptr noalias nofree noundef align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 5 uses
  %i.d = icmp ugt i64 %i.c, 1
  br i1 %i.d, label %bb.e, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCsileJQcQObtj_7hir_def5attrs7DocAtomEBG_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.preheader
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def5attrs7DocAtomEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCsileJQcQObtj_7hir_def5attrs7DocAtomEBG_.exit unwind label %bb.c

bb.b:                                             ; preds = %.lr.ph4
  %i.f = add nuw nsw i64 %.sroa.0.1.i3, 1         ; 2 uses
  %i.g = icmp eq i64 %i.f, %i.c
  br i1 %i.g, label %common.resume, label %.lr.ph4

bb.c:                                             ; preds = %.lr.ph
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = icmp eq i64 %i.c, 1
  br i1 %i.i, label %common.resume, label %.lr.ph4

.lr.ph4:                                          ; preds = %bb.c, %bb.b
  %.sroa.0.1.i3 = phi i64 [ %i.f, %bb.b ], [ 1, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.0.1.i3
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def5attrs7DocAtomEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.j) #44
          to label %bb.b unwind label %bb.d

common.resume:                                    ; preds = %bb.b, %bb.c, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.f ], [ %i.h, %bb.c ], [ %i.h, %bb.b ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %.lr.ph4
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #46
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.l, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.n, ptr %i.p, align 8
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsileJQcQObtj_7hir_def5attrs7DocAtomENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsileJQcQObtj_7hir_def5attrs7DocAtomEEB1c_.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsileJQcQObtj_7hir_def5attrs7DocAtomENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsileJQcQObtj_7hir_def5attrs7DocAtomEEB1c_.exit: ; preds = %bb.e
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsileJQcQObtj_7hir_def5attrs7DocAtomENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCsileJQcQObtj_7hir_def5attrs7DocAtomEBG_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCsileJQcQObtj_7hir_def5attrs7DocAtomEBG_.exit: ; preds = %.preheader.preheader, %.lr.ph, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsileJQcQObtj_7hir_def5attrs7DocAtomEEB1c_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsileJQcQObtj_7hir_def8resolver8ScopeDefj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBM_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = load i64, ptr %0, align 8, !noundef !5   ; 2 uses
  %i.c = icmp ugt i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.b, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.g, ptr %i.i, align 8
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsileJQcQObtj_7hir_def8resolver8ScopeDefENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsileJQcQObtj_7hir_def8resolver8ScopeDefEEB1c_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsileJQcQObtj_7hir_def8resolver8ScopeDefENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCsileJQcQObtj_7hir_def8resolver8ScopeDefEEB1j_.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCsileJQcQObtj_7hir_def8resolver8ScopeDefEEB1j_.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.j

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsileJQcQObtj_7hir_def8resolver8ScopeDefEEB1c_.exit: ; preds = %bb.b
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsileJQcQObtj_7hir_def8resolver8ScopeDefENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsileJQcQObtj_7hir_def8resolver8ScopeDefEEB1c_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecATNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBL_4AttrEj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = load i64, ptr %0, align 8, !noundef !5   ; 3 uses
  %i.c = icmp ugt i64 %i.b, 1
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5301)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBF_4AttrEECsileJQcQObtj_7hir_def.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5302)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load ptr, ptr %i.e, align 8, !alias.scope !5303, !nonnull !5, !noundef !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 48 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !noalias !5303, !noundef !5
  %i.h = add i32 %i.g, -1                         ; 2 uses
  store i32 %i.h, ptr %i.f, align 4, !noalias !5303
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10UnsafeMetaECsileJQcQObtj_7hir_def.exit.sink.split.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaECsileJQcQObtj_7hir_def.exit.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10UnsafeMetaECsileJQcQObtj_7hir_def.exit.sink.split.i.i.i: ; preds = %.lr.ph.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val1.i.i) #45
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaECsileJQcQObtj_7hir_def.exit.i.i unwind label %bb.c, !noalias !5303

bb.c:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10UnsafeMetaECsileJQcQObtj_7hir_def.exit.sink.split.i.i.i
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val3.i.i = load ptr, ptr %i.k, align 8, !alias.scope !5303, !nonnull !5, !noundef !5 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val3.i.i, i64 48 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !noalias !5303, !noundef !5
  %i.n = add i32 %i.m, -1                         ; 2 uses
  store i32 %i.n, ptr %i.l, align 4, !noalias !5303
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %common.resume

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val3.i.i) #45
          to label %common.resume unwind label %bb.f, !noalias !5303

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaECsileJQcQObtj_7hir_def.exit.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10UnsafeMetaECsileJQcQObtj_7hir_def.exit.sink.split.i.i.i, %.lr.ph.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i.i = load ptr, ptr %i.p, align 8, !alias.scope !5303, !nonnull !5, !noundef !5 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 48 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !noalias !5303, !noundef !5
  %i.s = add i32 %i.r, -1                         ; 2 uses
  store i32 %i.s, ptr %i.q, align 4, !noalias !5303
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBF_4AttrEECsileJQcQObtj_7hir_def.exit

bb.e:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaECsileJQcQObtj_7hir_def.exit.i.i
  tail call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val2.i.i) #45, !noalias !5301
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBF_4AttrEECsileJQcQObtj_7hir_def.exit

bb.f:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #46, !noalias !5303
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.c, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.ab, %bb.h ], [ %i.j, %bb.c ], [ %i.j, %bb.d ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !5, !noundef !5
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load i64, ptr %i.x, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.b, ptr %i.a, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.w, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.y, ptr %i.aa, align 8
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBI_4AttrEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtB1b_4AttrEEECsileJQcQObtj_7hir_def.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBP_4AttrEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtB1b_4AttrEEECsileJQcQObtj_7hir_def.exit: ; preds = %bb.g
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBP_4AttrEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBF_4AttrEECsileJQcQObtj_7hir_def.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBF_4AttrEECsileJQcQObtj_7hir_def.exit: ; preds = %bb.e, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaECsileJQcQObtj_7hir_def.exit.i.i, %bb.b, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtB1b_4AttrEEECsileJQcQObtj_7hir_def.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecATRNtNtCsileJQcQObtj_7hir_def7nameres6DefMapNtBO_10ModuleIdLtEj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBO_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.d = icmp ugt i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.g, ptr %i.i, align 8
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTRNtNtCsileJQcQObtj_7hir_def7nameres6DefMapNtBL_10ModuleIdLtEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTRNtNtCsileJQcQObtj_7hir_def7nameres6DefMapNtB1e_10ModuleIdLtEEEB1e_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTRNtNtCsileJQcQObtj_7hir_def7nameres6DefMapNtBS_10ModuleIdLtEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecTRNtNtCsileJQcQObtj_7hir_def7nameres6DefMapNtB1l_10ModuleIdLtEEEB1l_.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecTRNtNtCsileJQcQObtj_7hir_def7nameres6DefMapNtB1l_10ModuleIdLtEEEB1l_.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.j

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTRNtNtCsileJQcQObtj_7hir_def7nameres6DefMapNtB1e_10ModuleIdLtEEEB1e_.exit: ; preds = %bb.b
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTRNtNtCsileJQcQObtj_7hir_def7nameres6DefMapNtBS_10ModuleIdLtEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTRNtNtCsileJQcQObtj_7hir_def7nameres6DefMapNtB1e_10ModuleIdLtEEEB1e_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 16, !noundef !5 ; 2 uses
  %i.d = icmp ugt i64 %i.c, 2
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 16, !nonnull !5, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.g, ptr %i.i, align 8
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecoENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecoEECsileJQcQObtj_7hir_def.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecoENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecoEECsileJQcQObtj_7hir_def.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecoEECsileJQcQObtj_7hir_def.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.j

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecoEECsileJQcQObtj_7hir_def.exit: ; preds = %bb.b
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecoENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecoEECsileJQcQObtj_7hir_def.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsy_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_ENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !5314, !noalias !5315, !noundef !5 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 1                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !5314, !noalias !5315
  %.sink10.i.i = select i1 %i.c, i64 %i.e, i64 %i.b ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !5316, !noalias !5317, !noundef !5 ; 2 uses
  %i.h = icmp ugt i64 %i.g, 1                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !5316, !noalias !5317
  %.sink10.i.i2 = select i1 %i.h, i64 %i.j, i64 %i.g
  %i.k = icmp eq i64 %.sink10.i.i, %.sink10.i.i2
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %1, align 8, !alias.scope !5316, !noalias !5317, !nonnull !5
  %.sink11.i.i1 = select i1 %i.h, ptr %i.l, ptr %1
  %i.m = load ptr, ptr %0, align 8, !alias.scope !5314, !noalias !5315, !nonnull !5
  %.sink11.i.i = select i1 %i.c, ptr %i.m, ptr %0
  %i.n = tail call noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs33K2ylI4knu_10hir_expand4name4NameINtB5_14SlicePartialEqBC_E17equal_same_lengthCsileJQcQObtj_7hir_def(ptr noundef nonnull %.sink11.i.i, ptr noundef nonnull %.sink11.i.i1, i64 noundef %.sink10.i.i)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.n, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYINtNtNtCsd9Lm8bEdjjY_5salsa5input11input_field19FieldIngredientImplNtCsileJQcQObtj_7hir_def20ExpandProcAttrMacrosENtNtB9_10ingredient10Ingredient12memory_usageB19_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree readonly align 8 captures(none) %1, ptr nofree nonnull readnone captures(none) %2, ptr noalias nofree readonly align 8 captures(none) %3) unnamed_addr #23 {
bb.a:
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYINtNtNtCsd9Lm8bEdjjY_5salsa5input11input_field19FieldIngredientImplNtCsileJQcQObtj_7hir_def20ExpandProcAttrMacrosENtNtB9_10ingredient10Ingredient31requires_reset_for_new_revisionB19_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #21 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 2305843009213693952) i64 @_RNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEbEENvYB1E_NtCs89JjGp7luZU_4stdx8TupleExt4headENtNtB7_3zip27TrustedRandomAccessNoCoerce4sizeB2d_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = ptrtoint ptr %.val1 to i64
  %i.d = ptrtoint ptr %.val to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = lshr exact i64 %i.e, 3
  ret i64 %i.f
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #24

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #25

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #26

end_hunk_0
